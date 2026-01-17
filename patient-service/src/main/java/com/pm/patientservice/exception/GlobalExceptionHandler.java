package com.pm.patientservice.exception;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

	public static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<Map<String, String>> handleValidationException(MethodArgumentNotValidException ex) {
		Map<String, String> errors = new HashMap<>();

		// for the alert error messages
		ex.getBindingResult().getFieldErrors()
				.forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));

		return ResponseEntity.badRequest().body(errors);
	}

	@ExceptionHandler(EmailAlreadyExistException.class)
	public ResponseEntity<Map<String, String>> handleEmailAlreadyExistException(EmailAlreadyExistException ex) {
		log.warn("email already exist{}",ex.getMessage());
		
		Map<String, String> errors = new HashMap<>();
		// for the alert error messages
		errors.put("message", "Email already exists");

		return ResponseEntity.badRequest().body(errors);
	}

	@ExceptionHandler(PatientNotFoundException.class)
	public ResponseEntity<Map<String, String>> handlePatientNotFoundException(PatientNotFoundException ex) {
		log.warn("patient not found{}",ex.getMessage());
		
		Map<String, String> errors = new HashMap<>();
		// for the alert error messages
		errors.put("message", "patient not found");

		return ResponseEntity.badRequest().body(errors);
	}
}
