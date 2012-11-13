// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package games.web.control;

import games.model.dummy.Dummy;
import games.web.control.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Dummy, String> ApplicationConversionServiceFactoryBean.getDummyToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<games.model.dummy.Dummy, java.lang.String>() {
            public String convert(Dummy dummy) {
                return new StringBuilder().append(dummy.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Dummy> ApplicationConversionServiceFactoryBean.getIdToDummyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, games.model.dummy.Dummy>() {
            public games.model.dummy.Dummy convert(java.lang.Long id) {
                return Dummy.findDummy(id);
            }
        };
    }
    
    public Converter<String, Dummy> ApplicationConversionServiceFactoryBean.getStringToDummyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, games.model.dummy.Dummy>() {
            public games.model.dummy.Dummy convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Dummy.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getDummyToStringConverter());
        registry.addConverter(getIdToDummyConverter());
        registry.addConverter(getStringToDummyConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}