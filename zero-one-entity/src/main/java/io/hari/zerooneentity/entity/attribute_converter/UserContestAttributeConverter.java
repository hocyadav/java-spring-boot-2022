package io.hari.zerooneentity.entity.attribute_converter;

import io.hari.zerooneentity.entity.attribute.UserContest;
import io.hari.zerooneentity.entity.utility.EntityUtility;
import lombok.SneakyThrows;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class UserContestAttributeConverter implements AttributeConverter<UserContest, String> {
    @SneakyThrows
    @Override
    public String convertToDatabaseColumn(UserContest attribute) {
        if (attribute == null) return "";
        return EntityUtility.objectMapper.writeValueAsString(attribute);
    }

    @SneakyThrows
    @Override
    public UserContest convertToEntityAttribute(String dbData) {
        if (dbData == null) return new UserContest();
        return EntityUtility.objectMapper.readValue(dbData, UserContest.class);
    }
}
