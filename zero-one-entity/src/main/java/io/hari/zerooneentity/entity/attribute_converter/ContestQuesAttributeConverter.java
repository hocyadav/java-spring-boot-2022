package io.hari.zerooneentity.entity.attribute_converter;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.hari.zerooneentity.entity.attribute.ContestQues;
import lombok.SneakyThrows;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class ContestQuesAttributeConverter implements AttributeConverter<ContestQues, String> {
    @SneakyThrows
    @Override
    public String convertToDatabaseColumn(ContestQues attribute) {
        return new ObjectMapper().writeValueAsString(attribute);
    }

    @SneakyThrows
    @Override
    public ContestQues convertToEntityAttribute(String dbData) {
        return new ObjectMapper().readValue(dbData, ContestQues.class);
    }
}
