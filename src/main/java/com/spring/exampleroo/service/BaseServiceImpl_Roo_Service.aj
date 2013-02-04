// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.spring.exampleroo.service;

import com.spring.exampleroo.domain.Base;
import com.spring.exampleroo.repository.BaseRepository;
import com.spring.exampleroo.service.BaseServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BaseServiceImpl_Roo_Service {
    
    declare @type: BaseServiceImpl: @Service;
    
    declare @type: BaseServiceImpl: @Transactional;
    
    @Autowired
    BaseRepository BaseServiceImpl.baseRepository;
    
    public long BaseServiceImpl.countAllBases() {
        return baseRepository.count();
    }
    
    public void BaseServiceImpl.deleteBase(Base base) {
        baseRepository.delete(base);
    }
    
    public Base BaseServiceImpl.findBase(Long id) {
        return baseRepository.findOne(id);
    }
    
    public List<Base> BaseServiceImpl.findAllBases() {
        return baseRepository.findAll();
    }
    
    public List<Base> BaseServiceImpl.findBaseEntries(int firstResult, int maxResults) {
        return baseRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void BaseServiceImpl.saveBase(Base base) {
        baseRepository.save(base);
    }
    
    public Base BaseServiceImpl.updateBase(Base base) {
        return baseRepository.save(base);
    }
    
}
