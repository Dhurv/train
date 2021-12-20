package com.team3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.team3.model.Train;

@org.springframework.stereotype.Repository
public interface Repository extends JpaRepository<Train, Integer> {

}
