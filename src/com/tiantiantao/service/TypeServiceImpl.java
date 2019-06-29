package com.tiantiantao.service;

import com.tiantiantao.mapper.TypeMapper;
import com.tiantiantao.pojo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    TypeMapper typeMapper;

    @Override
    public void addType(Type type) {

    }
}
