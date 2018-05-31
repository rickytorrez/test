package com.ericardo.dcHome.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ericardo.dcHome.models.Picture;

@Repository
public interface PictureRepository extends CrudRepository<Picture, Long> {

}
