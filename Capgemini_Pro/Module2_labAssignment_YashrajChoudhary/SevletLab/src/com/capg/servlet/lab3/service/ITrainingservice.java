package com.capg.servlet.lab3.service;

import java.util.List;

import com.capg.servlet.lab3.bean.Training;

public interface ITrainingservice {

	public List<Training> ShowTraining();
	public String UpdateTraining(int id,int seats);
}
