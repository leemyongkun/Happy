package org.happy.poor.gallery.dao;

import java.util.ArrayList;

import org.happy.poor.gallery.model.GalleryInfoVo;

public interface IGalleryDao {
	ArrayList<GalleryInfoVo>  list(int limit , int offset);
}
