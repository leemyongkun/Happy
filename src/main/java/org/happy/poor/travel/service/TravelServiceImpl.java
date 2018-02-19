package org.happy.poor.travel.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.happy.poor.config.AppEnvConfig;
import org.happy.poor.travel.dao.ITravelDao;
import org.happy.poor.travel.model.TravelInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TravelServiceImpl implements ITravelService{
	
	@Autowired	ITravelDao travelImpl;
	@Autowired	AppEnvConfig appEnvConfig;
	
	@Override
	public HashMap<String,Object>  list(int offset, int limit){
		
		ArrayList<TravelInfoVo> travelInfoVo = travelImpl.list(offset, limit);
		
		int size = travelInfoVo.size();
		
		for(int i=0;i<size;i++){
			List<String> imageList = splitImage(travelInfoVo.get(i).getImage()) ;
			travelInfoVo.get(i).setImages( imageList);
			travelInfoVo.get(i).setImagesCount(imageList.size());
		}
		
		HashMap<String,Integer> offsetMap = new HashMap<String,Integer>();
		offsetMap.put("limit", limit);
		offsetMap.put("offset", offset);
		
		HashMap<String,Object> result = new HashMap<String,Object>();
		result.put("offsetLimit", offsetMap);
		result.put("data", travelInfoVo);
		
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
