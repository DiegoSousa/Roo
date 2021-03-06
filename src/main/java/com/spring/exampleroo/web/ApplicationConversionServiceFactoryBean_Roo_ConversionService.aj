// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.spring.exampleroo.web;

import com.spring.exampleroo.domain.Base;
import com.spring.exampleroo.domain.Pizza;
import com.spring.exampleroo.domain.Topping;
import com.spring.exampleroo.service.BaseService;
import com.spring.exampleroo.service.ToppingService;
import com.spring.exampleroo.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    BaseService ApplicationConversionServiceFactoryBean.baseService;
    
    @Autowired
    ToppingService ApplicationConversionServiceFactoryBean.toppingService;
    
    public Converter<Base, String> ApplicationConversionServiceFactoryBean.getBaseToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.spring.exampleroo.domain.Base, java.lang.String>() {
            public String convert(Base base) {
                return new StringBuilder().append(base.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Base> ApplicationConversionServiceFactoryBean.getIdToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.spring.exampleroo.domain.Base>() {
            public com.spring.exampleroo.domain.Base convert(java.lang.Long id) {
                return baseService.findBase(id);
            }
        };
    }
    
    public Converter<String, Base> ApplicationConversionServiceFactoryBean.getStringToBaseConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.spring.exampleroo.domain.Base>() {
            public com.spring.exampleroo.domain.Base convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Base.class);
            }
        };
    }
    
    public Converter<Pizza, String> ApplicationConversionServiceFactoryBean.getPizzaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.spring.exampleroo.domain.Pizza, java.lang.String>() {
            public String convert(Pizza pizza) {
                return new StringBuilder().append(pizza.getName()).append(' ').append(pizza.getPrice()).toString();
            }
        };
    }
    
    public Converter<String, Pizza> ApplicationConversionServiceFactoryBean.getStringToPizzaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.spring.exampleroo.domain.Pizza>() {
            public com.spring.exampleroo.domain.Pizza convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pizza.class);
            }
        };
    }
    
    public Converter<Topping, String> ApplicationConversionServiceFactoryBean.getToppingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.spring.exampleroo.domain.Topping, java.lang.String>() {
            public String convert(Topping topping) {
                return new StringBuilder().append(topping.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Topping> ApplicationConversionServiceFactoryBean.getIdToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.spring.exampleroo.domain.Topping>() {
            public com.spring.exampleroo.domain.Topping convert(java.lang.Long id) {
                return toppingService.findTopping(id);
            }
        };
    }
    
    public Converter<String, Topping> ApplicationConversionServiceFactoryBean.getStringToToppingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.spring.exampleroo.domain.Topping>() {
            public com.spring.exampleroo.domain.Topping convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Topping.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getBaseToStringConverter());
        registry.addConverter(getIdToBaseConverter());
        registry.addConverter(getStringToBaseConverter());
        registry.addConverter(getPizzaToStringConverter());
        registry.addConverter(getStringToPizzaConverter());
        registry.addConverter(getToppingToStringConverter());
        registry.addConverter(getIdToToppingConverter());
        registry.addConverter(getStringToToppingConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
