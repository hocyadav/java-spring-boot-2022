package io.hari.zerooneentity.entity.attribute_converter;

import io.hari.zerooneentity.entity.attribute.QueAnswers;
import io.hari.zerooneentity.entity.utility.EntityUtility;
import lombok.SneakyThrows;

import javax.persistence.AttributeConverter;

public class QueAnswersAttributeConverter implements AttributeConverter<QueAnswers, String> {
    @SneakyThrows
    @Override
    public String convertToDatabaseColumn(QueAnswers attribute) {
        return EntityUtility.objectMapper.writeValueAsString(attribute);
    }

    @SneakyThrows
    @Override
    public QueAnswers convertToEntityAttribute(String dbData) {
        return EntityUtility.objectMapper.readValue(dbData, QueAnswers.class);
    }
}
