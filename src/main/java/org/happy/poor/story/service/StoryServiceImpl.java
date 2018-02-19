package org.happy.poor.story.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.happy.poor.config.AppEnvConfig;
import org.happy.poor.story.dao.IStoryDao;
import org.happy.poor.story.model.StoryInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoryServiceImpl implements IStoryService{
	
	@Autowired	IStoryDao storyImpl;
	@Autowired	AppEnvConfig appEnvConfig;
	
	@Override
	public HashMap<String,Object> list(int offset, int limit) {
		
		ArrayList<StoryInfoVo> storyInfoVo = storyImpl.list(offset, limit);
		
		int size = storyInfoVo.size();
		
		for(int i=0;i<size;i++){
			List<String> imageList = splitImage(storyInfoVo.get(i).getImage()) ;
			storyInfoVo.get(i).setImages( imageList);
			storyInfoVo.get(i).setImagesCount(imageList.size());
		}
		
		HashMap<String,Integer> offsetMap = new HashMap<String,Integer>();
		offsetMap.put("limit", limit);
		offsetMap.put("offset", offset);
		
		HashMap<String,Object> result = new HashMap<String,Object>();
		result.put("offsetLimit", offsetMap);
		result.put("data", storyInfoVo);
		
		return result;
		
	}
	
	private List<String> splitImage(String strImage){
		if(strImage == null) return new ArrayList<String>();
		
		String [] splitImage = strImage.split(",");
		
		List<String> images = new ArrayList<String>();
		
		for(int i=0;i<splitImage.length;i++){
			if(!splitImage[i].equals("")) images.add(splitImage[i]);
		}
		return images;
	}
	
}
