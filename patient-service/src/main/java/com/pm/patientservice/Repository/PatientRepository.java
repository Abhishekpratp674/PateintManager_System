package com.pm.patientservice.Repository;

import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pm.patientservice.model.patient;

@Repository
public interface PatientRepository extends JpaRepository<patient, UUID> {
    boolean existsByEmail(String email);

}
