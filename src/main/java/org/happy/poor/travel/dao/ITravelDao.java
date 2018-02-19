package org.happy.poor.travel.dao;

import java.util.ArrayList;

import org.happy.poor.travel.model.TravelInfoVo;

public interface ITravelDao {
	ArrayList<TravelInfoVo> list(int offset, int limit);
}
