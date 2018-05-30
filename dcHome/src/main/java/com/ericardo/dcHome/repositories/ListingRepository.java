package com.ericardo.dcHome.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ericardo.dcHome.models.Listing;

@Repository
public interface ListingRepository extends CrudRepository<Listing, Long> {
	public List<Listing> findByAddress(String address);
}
