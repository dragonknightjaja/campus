package com.cicoding.service;

import com.cicoding.bean.Score;

import java.util.List;

public interface ScoreService {
    public String getAllMedicineJson(int page, int count);
    String medicineListForUserAdd();
    String addMedicine(String name, Integer number, String manufacturer);
    String modifyMedicine(String id, String name, Integer price, String manufacturer);
    String deleteMedicine(String id);
    List<Score> getAllMedicine();
}
