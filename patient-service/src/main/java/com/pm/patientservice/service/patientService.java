package com.pm.patientservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.patientservice.PatientServiceApplication;
import com.pm.patientservice.Repository.PatientRepository;
import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResposnceDTO;
import com.pm.patientservice.mapper.PatientMapper;
import com.pm.patientservice.model.patient;

@Service
public class patientService {

	private final PatientServiceApplication patientServiceApplication;

	@Autowired
	private PatientRepository patientRepository;

	patientService(PatientServiceApplication patientServiceApplication) {
		this.patientServiceApplication = patientServiceApplication;
	}

	public List<PatientResposnceDTO> getPatient() {
		List<patient> patients = patientRepository.findAll();
		List<PatientResposnceDTO> patientResposnceDTOs = patients.stream().map(patient -> PatientMapper.toDto(patient))
				.toList();

		return patientResposnceDTOs;
	}

	public PatientResposnceDTO createPatient(PatientRequestDTO patientRequestDTO) {
		patient newPatient = patientRepository.save(PatientMapper.toModel(patientRequestDTO));

		return PatientMapper.toDto(newPatient);
	}
}
