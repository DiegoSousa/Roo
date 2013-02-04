package com.spring.exampleroo.repository;

import com.spring.exampleroo.domain.Base;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Base.class)
public interface BaseRepository {
}
