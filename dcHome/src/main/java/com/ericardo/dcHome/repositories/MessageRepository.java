package com.ericardo.dcHome.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ericardo.dcHome.models.Message;

@Repository
public interface MessageRepository extends CrudRepository<Message, Long> {

}
