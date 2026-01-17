	package com.pm.patientservice.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResposnceDTO;
import com.pm.patientservice.service.patientService;

import jakarta.validation.Valid;
import jakarta.validation.groups.Default;

@RestController
@RequestMapping("/patients")
public class PatientController {

	@Autowired
	private patientService patientService;

	@GetMapping
	public ResponseEntity<List<PatientResposnceDTO>> getpatients() {
		List<PatientResposnceDTO> patients = patientService.getPatient();

		return ResponseEntity.ok().body(patients);
	}

	
	//here valid annotation will cross check the properties of the patientRequestDTO
	@PostMapping	
	public ResponseEntity<PatientResposnceDTO> createPatient
	(@Valid @RequestBody PatientRequestDTO patientRequestDTO) 
	
	{
		PatientResposnceDTO patientResposnceDTO = patientService.createPatient(patientRequestDTO);

		return ResponseEntity.ok(patientResposnceDTO);
	}
	@PutMapping("/{id}")
	public ResponseEntity<PatientResposnceDTO> updatePatient(@PathVariable UUID id,
			@Validated({Default.class})
			@RequestBody PatientRequestDTO patientRequestDTO){
		PatientResposnceDTO patientResposnceDTO = patientService.updatePatient(id, patientRequestDTO);
		
		return ResponseEntity.ok().body(patientResposnceDTO);
	}
}