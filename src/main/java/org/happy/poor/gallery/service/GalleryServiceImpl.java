package org.happy.poor.gallery.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.happy.poor.gallery.dao.IGalleryDao;
import org.happy.poor.gallery.model.GalleryInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GalleryServiceImpl implements IGalleryService{
	@Autowired	IGalleryDao galleryImpl;
	
	@Override
	public HashMap<String,Object>  list(int limit, int offset) {
		ArrayList<GalleryInfoVo> galleryInfoVo = galleryImpl.list(limit, offset);
		
		HashMap<String,Integer> offsetMap = new HashMap<String,Integer>();
		offsetMap.put("limit", limit);
		offsetMap.put("offset", offset);
		
		HashMap<String,Object> result = new HashMap<String,Object>();
		result.put("offsetLimit", offsetMap);
		result.put("data", galleryInfoVo);
		
		return result;
	}

}
