package com.cicoding.service.impl;

import com.cicoding.bean.Score;
import com.cicoding.constant.Constant;
import com.cicoding.dao.ScoreMapper;
import com.cicoding.service.ScoreService;
import com.cicoding.utils.JqgridUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScoreServiceImpl implements ScoreService {

    @Autowired
    private ScoreMapper mapper;
    @Autowired
    private JqgridUtil jqgridUtil;

    @Override
    public String getAllMedicineJson(int page , int count) {
        List<Score> all = mapper.selectList(null);
        int toIndex = count * page;
        if (all.size() < toIndex) {
            toIndex = all.size();
        }
        List<Score> list = all.subList(count * (page - 1), toIndex);
        return jqgridUtil.getJson(list, page + "", all.size() , count);
    }

    @Override
    public String medicineListForUserAdd() {
        List<Score> list = mapper.selectList(null);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).getId() + ":" + list.get(i).getName() + ";" +list.get(i).getNumber() + ";" +list.get(i).getManufacturer() + ";");
        }
        return sb.substring(0, sb.length()-1);
    }

    @Override
    public String addMedicine(String name,Integer number, String manufacturer) {
        Score temp = new Score();
        temp.setName(name);
        temp.setNumber(number);
        temp.setManufacturer(manufacturer);
        Score score = mapper.selectOne(temp);
        if (score != null) {
            return Constant.ERROR_ADD_DEPT_ALREADY_EXISTS;
        }
        score = new Score();
        score.setName(name);
        score.setNumber(number);
        score.setManufacturer(manufacturer);
        int result = mapper.insert(score);
        return result+"";
    }

    @Override
    public String modifyMedicine(String id, String name, Integer price, String manufacturer) {
        Score score = new Score();
        score.setId(Integer.parseInt(id));
        score.setName(name);
        score.setNumber(price);
        score.setManufacturer(manufacturer);
        int result = mapper.updateById(score);
        return result+"";
    }

    @Override
    public String deleteMedicine(String id) {
        if ("1".endsWith(id)) {
            return Constant.ERROR_CAN_NOT_DELETE_DEFAULT_DEPT;
        }
//        ShiroUser updateUser = new ShiroUser();
//        updateUser.setDeptid(1);
//        updateUser.setId(Integer.parseInt(id));
////        int setUserResult = userMapper.updateByDeptidSelective(Integer.parseInt(id));
//        userMapper.updateById(updateUser);
        int result = mapper.deleteById(Integer.parseInt(id));
        return result+"";
    }

	@Override
	public List<Score> getAllMedicine() {
		return mapper.selectList(null);
	}
}
