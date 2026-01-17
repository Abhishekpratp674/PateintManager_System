package com.pm.patientservice.service;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.patientservice.PatientServiceApplication;
import com.pm.patientservice.Repository.PatientRepository;
import com.pm.patientservice.controller.PatientController;
import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResposnceDTO;
import com.pm.patientservice.exception.EmailAlreadyExistException;
import com.pm.patientservice.exception.PatientNotFoundException;
import com.pm.patientservice.mapper.PatientMapper;
import com.pm.patientservice.model.patient;

@Service
public class patientService {

	 private final PatientRepository patientRepository;

	    @Autowired
	    public patientService(PatientRepository patientRepository) {
	        this.patientRepository = patientRepository;
	    }

	public List<PatientResposnceDTO> getPatient() {
		List<patient> patients = patientRepository.findAll();
		List<PatientResposnceDTO> patientResposnceDTOs = patients.stream().map(patient -> PatientMapper.toDto(patient))
				.toList();

		return patientResposnceDTOs;
	}

	public PatientResposnceDTO createPatient(PatientRequestDTO patientRequestDTO) {

		// email existence check
		if (patientRepository.existsByEmail(patientRequestDTO.getEmail())) {
			throw new EmailAlreadyExistException("Email already exist" + patientRequestDTO.getEmail());
		}
		patient newPatient = patientRepository.save(PatientMapper.toModel(patientRequestDTO));

		return PatientMapper.toDto(newPatient);
	}

	public PatientResposnceDTO updatePatient(UUID id, PatientRequestDTO patientRequestDTO) {

		patient patient = patientRepository.findById(id)
				.orElseThrow(() -> new PatientNotFoundException("patient not found having the this id :" + id));

		if (patientRepository.existsByEmail(patientRequestDTO.getEmail())) {
			throw new EmailAlreadyExistException("Email already exist" + patientRequestDTO.getEmail());
		}
		patient.setName(patientRequestDTO.getName());
		patient.setAddress(patientRequestDTO.getAddress());
		patient.setEmail(patientRequestDTO.getEmail());
		patient.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));

		patient updatePatient = patientRepository.save(patient);
		return PatientMapper.toDto(updatePatient);
	}

}
