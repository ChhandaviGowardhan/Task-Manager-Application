package com.example.To.Do.App.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.To.Do.App.model.ToDo;

@Repository
public interface IToDoRepo extends JpaRepository<ToDo, Long>{

}
