package com.pm.patientservice.mapper;

import java.time.LocalDate;

import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResposnceDTO;
import com.pm.patientservice.model.patient;

//this class is use to take care of the conversion that we are trying to
//do to convert dto type to patient type

public class PatientMapper {

	public static PatientResposnceDTO toDto(patient patient) {
		PatientResposnceDTO patientDTO = new PatientResposnceDTO();
		patientDTO.setId(patient.getid().toString());
		patientDTO.setName(patient.getName());
		patientDTO.setAddress(patient.getAddress());
		patientDTO.setEmail(patient.getEmail());
		patientDTO.setDateOfBirth(patient.getDateOfBirth().toString());

		return patientDTO;

	}

	public static patient toModel(PatientRequestDTO patientRequestDTO) {
		patient patient = new patient();
		patient.setName(patientRequestDTO.getName());
		patient.setAddress(patientRequestDTO.getAddress());
		patient.setEmail(patientRequestDTO.getEmail());
		patient.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));
		patient.setRegisteredDate(LocalDate.parse(patientRequestDTO.getRegisteredDate()));
		
		return patient;
	}
}
