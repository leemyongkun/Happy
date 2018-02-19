package org.happy.poor.files.service;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import org.happy.poor.common.util.ContextUtil;
import org.happy.poor.common.util.FileUtil;
import org.happy.poor.common.util.SessionUtil;
import org.happy.poor.files.dao.IFilesDao;
import org.happy.poor.files.model.FileVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FilesServiceImpl implements IFilesService {
	
	@Autowired IFilesDao fileDao;
	//@Autowired AppEnvConfig appEnvConfig;
	
	
	@Override
	public void save(MultipartFile attachFile, String md5FileName) {
		
		String id = SessionUtil.getIdBySeesion();

		originalFileSave(id, attachFile, md5FileName);
		
		if(attachFile.getContentType().indexOf("image")!=-1){
			thumbnailFileSave(id, attachFile, md5FileName);
		}

	}
	
	@Override
	public boolean remove(String md5FileName) {
		
		String id = SessionUtil.getIdBySeesion();
		//String path = appEnvConfig.getImageFileUploadPath()+File.separator+id+File.separator;
		String path = "";
		FileUtil.removeByID(path, md5FileName);
		
		return true;
	}


	@Override
	public void insert(MultipartFile attachFile,String md5FileName) {
		HashMap<String,String> fileInfo = new HashMap<String,String>();
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String date = format.format(timestamp);
		
		String originalFileName = attachFile.getOriginalFilename();
		String UserID = "kkuni";//SessionUtil.getIdBySeesion();
		String fileType = attachFile.getContentType().split("/")[0];
		
		fileInfo.put("originalFileName", originalFileName);
		fileInfo.put("md5FileName", md5FileName);
		fileInfo.put("userid", UserID);
		fileInfo.put("fileType", fileType);
		fileInfo.put("title", "");
		fileInfo.put("contents", "");
		fileInfo.put("reg_date", date);
		
		fileDao.insert(fileInfo);
		
	}

	@Override
	public void delete(String  md5FileName) {
		HashMap<String,String> fileInfo = new HashMap<String,String>();
		String id = SessionUtil.getIdBySeesion();
		
		fileInfo.put("id", id);
		fileInfo.put("md5FileName", md5FileName );
		//fileDao.delete(fileInfo);
	}

	@Override
	public List<HashMap<String,Object>> selectAll() {
		
		String id = SessionUtil.getIdBySeesion();
		return fileDao.selectAll(id);
	}

	@Override
	public HashMap<String, Object> downloadFile(FileVo fileVo) {
		HashMap<String,Object> downloadFileInfo = new HashMap<String,Object>();
		String id = SessionUtil.getIdBySeesion();
		
		downloadFileInfo.put("fileVo", fileVo);
		downloadFileInfo.put("id", id);
		
		return downloadFileInfo;
	}

	
	private void originalFileSave(String id, MultipartFile attachFile, String md5FileName){
		
		String filename = attachFile.getOriginalFilename();
		
		if (!filename.equals("")) {
			try {
				// 1. FileOutputStream 사용
				// byte[] fileData = file.getBytes();
				// FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
				// output.write(fileData);

				// 2. File 사용
				//File dir = new File(appEnvConfig.getImageFileUploadPath()+File.separator+File.separator+"thumbnail");
				File dir = new File(filename);
				if(!dir.exists()){
					dir.mkdirs();
				}
				
				//File file = new File(appEnvConfig.getImageFileUploadPath() + File.separator + File.separator + md5FileName );
				//attachFile.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {

			}
		}
	}
	
	private void thumbnailFileSave(String id, MultipartFile attachFile, String md5FileName) {
		String originalFileName = attachFile.getOriginalFilename();
		String extensionName = originalFileName.substring(originalFileName.length()-3
				,originalFileName.length());
		
		int maxDim = 200;
		//String saveFile =appEnvConfig.getImageFileUploadPath() + File.separator + File.separator +"thumbnail"+ File.separator + md5FileName;
		String saveFile = "";
		//String loadFile="D:\\original.jpg";
		
		try {
			
			File save = new File(saveFile);
			
			//FileInputStream fis = new FileInputStream(loadFile);
			
			BufferedImage im = ImageIO.read(attachFile.getInputStream());
			Image inImage = new ImageIcon(attachFile.getBytes()).getImage();
			
			double scale = (double) maxDim / (double) inImage.getHeight(null);
			
			if (inImage.getWidth(null) > inImage.getHeight(null)) {
				scale = (double) maxDim / (double) inImage.getWidth(null);
			}
			
			int scaledW = (int) (scale * inImage.getWidth(null));
			int scaledH = (int) (scale * inImage.getHeight(null));
			
			BufferedImage thumb = new BufferedImage(scaledW, scaledH, BufferedImage.TYPE_INT_RGB);
			Graphics2D g2 = thumb.createGraphics();
			g2.drawImage(im, 0, 0, scaledW, scaledH, null);
		
			ImageIO.write(thumb,extensionName, save);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}



	@Override
	public Map<String, Object> getJOSNSet(Object attachFile, String fileName, String type, Boolean status) {
		
		if(type.equals("INSERT")){
			return settingJsonInsert((MultipartFile)attachFile, fileName);
		}else if(type.equals("DELETE")){
			return settingJsonDelete(fileName, status);
		}else{
			return null;
		}
	}



	private Map<String, Object> settingJsonDelete(String originalFileName, Boolean status) {
		Map<String,Object> result = new HashMap<String,Object>();
		ArrayList<Object> files = new ArrayList<Object>();
		Map<String,Boolean> item = new HashMap<String,Boolean>();
		 
		 item.put(originalFileName, status );
		 files.add(item);
		 
		 result.put("files", files);
		 return result;
	}



	private Map<String, Object> settingJsonInsert(MultipartFile attachFile, String md5FileName) {

		String id = SessionUtil.getIdBySeesion();
		
		long fileSize = 0;
		String fileName = null;
		Map<String,Object> result = new HashMap<String,Object>();
		ArrayList<Object> files = new ArrayList<Object>();
		Map<String,String> item = new HashMap<String,String>();
		 
		fileSize = attachFile.getSize();
		fileName = attachFile.getOriginalFilename();
		
		 item.put("name", fileName);
		 item.put("size", String.valueOf(fileSize));
		 item.put("url", ContextUtil.getContextPath()+"/attach/"+md5FileName);
		 item.put("thumbnailUrl",  ContextUtil.getContextPath()+"/attach/"+"thumbnail/"+md5FileName);
		 item.put("deleteUrl",  ContextUtil.getContextPath()+"/files/delete?md5FileName="+md5FileName+"&originalFileName="+fileName);
		 item.put("deleteType", "DELETE");
		 files.add(item);
		 
		 result.put("files", files);
		 
		 return result;
	}




	

}
