package com.cicoding.service;

import com.cicoding.bean.Dept;
import com.cicoding.bean.Patient;

import java.util.List;

public interface PatientService {
    public String getAllPatientJson(int page, int count);
    String patientListForUserAdd();
    String addPatient(String patientName,Integer age,String avator, String ill);
    String modifyPatient(String id, String patientName, Integer age, String avator, String ill);
    String deletePatient(String id);
    List<Patient> getAllPatient();
}
