package edu.scdx.service;

import edu.scdx.dao.GoodsMapper;
import edu.scdx.dao.RecommendMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by cbw on 2017/11/11.
 */
@Service
public class RecommendServiceImpl implements RecommendService {
    @Autowired
    private RecommendMapper recommendMapper;

    public RecommendMapper getRecommendMapper() {
        return recommendMapper;
    }

    public void setRecommendMapper(RecommendMapper recommendMapper) {
        this.recommendMapper = recommendMapper;
    }

    @Override
    public int getRankByUserTel(String userTel) {
        return recommendMapper.getRankByUserTel(userTel);
    }
}
