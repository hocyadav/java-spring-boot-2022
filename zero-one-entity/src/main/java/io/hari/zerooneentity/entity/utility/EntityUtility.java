package io.hari.zerooneentity.entity.utility;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.experimental.UtilityClass;

@UtilityClass
public class EntityUtility {
    public ObjectMapper objectMapper = new ObjectMapper();
}
