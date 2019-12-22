package com.cicoding.service.impl;

import com.cicoding.bean.Dept;
import com.cicoding.bean.Patient;
import com.cicoding.bean.ShiroUser;
import com.cicoding.constant.Constant;
import com.cicoding.dao.DeptMapper;
import com.cicoding.dao.PatientMapper;
import com.cicoding.dao.UserMapper;
import com.cicoding.service.DeptService;
import com.cicoding.service.PatientService;
import com.cicoding.utils.JqgridUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientServiceImpl implements PatientService {

    @Autowired
    private PatientMapper mapper;
    @Autowired
    private JqgridUtil jqgridUtil;

    @Override
    public String getAllPatientJson(int page , int count) {
        List<Patient> all = mapper.selectList(null);
        int toIndex = count * page;
        if (all.size() < toIndex) {
            toIndex = all.size();
        }
        List<Patient> list = all.subList(count * (page - 1), toIndex);
        return jqgridUtil.getJson(list, page + "", all.size() , count);
    }

    @Override
    public String patientListForUserAdd() {
        List<Patient> list = mapper.selectList(null);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).getId() + ":" + list.get(i).getName() + ";" +list.get(i).getAge() + ";" +list.get(i).getAvator() + ";" +list.get(i).getIll() + ";");
        }
        return sb.substring(0, sb.length()-1);
    }

    @Override
    public String addPatient(String patientName,Integer age, String avator, String ill) {
    	Patient temp = new Patient();
        temp.setName(patientName);
        temp.setAge(age);
        temp.setAvator(avator);
        temp.setIll(ill);
        Patient patient = mapper.selectOne(temp);
        if (patient != null) {
            return Constant.ERROR_ADD_DEPT_ALREADY_EXISTS;
        }
        patient = new Patient();
        patient.setName(patientName);
        patient.setAge(age);
        patient.setAvator(avator);
        patient.setIll(ill);
        int result = mapper.insert(patient);
        return result+"";
    }

    @Override
    public String modifyPatient(String id, String patientName, Integer age, String avator, String ill) {
        Patient patient = new Patient();
        patient.setId(Integer.parseInt(id));
        patient.setName(patientName);
        patient.setAge(age);
        patient.setAvator(avator);
        patient.setIll(ill);
        int result = mapper.updateById(patient);
        return result+"";
    }

    @Override
    public String deletePatient(String id) {
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
	public List<Patient> getAllPatient() {
		return mapper.selectList(null);
	}
}
