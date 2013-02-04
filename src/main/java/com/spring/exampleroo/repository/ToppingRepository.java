package com.spring.exampleroo.repository;

import com.spring.exampleroo.domain.Topping;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Topping.class)
public interface ToppingRepository {
}
