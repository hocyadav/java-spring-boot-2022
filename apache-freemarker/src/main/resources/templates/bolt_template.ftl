{"vertical": "${vertical}",
"listingId": "${listingId}",
"productId": "${fsn}",
"sellerId": "${sellerId}",
"listingStatus": "${listingStatus!'INACTIVE'}",
"listingState": "${listingState!'current'}",
"datingLabel": {
<#if earliestManufacturingDate??>
    "earliest_mfg_date": ${(earliestManufacturingDate!)?c}
    <#if earliestExpiryDate??>
        ,
    </#if>
</#if>
<#if earliestExpiryDate??>
    "earliest_expiry_date": ${(earliestExpiryDate!)?c}
    <#if shelfLife??>
        ,
    </#if>
</#if>
<#if shelfLife??>
    "shelf_life": ${(shelfLife!)?c}
</#if>
},
"addressLabel": {
<#if countriesOfOrigin??>
    "country_of_origin": [
    <#list countriesOfOrigin as country>
        "${country!}"<#sep>,</#sep>
    </#list>
    ]
    <#if manufacturers??>
        ,
    </#if>
</#if>
<#if importers??>
    "importer_details": [
    <#list importers as importer>
        "${importer!}"<#sep>,</#sep>
    </#list>
    ]
    <#if manufacturers??>
        ,
    </#if>
</#if>
<#if manufacturers??>
    "manufacturer_details": [
    <#list manufacturers as manufacturer>
        "${manufacturer!}"<#sep>,</#sep>
    </#list>
    ]
    <#if packers??>
        ,
    </#if>
</#if>
<#if packers??>
    "packer_details": [
    <#list packers as packer>
        "${packer!}"<#sep>,</#sep>
    </#list>
    ]
</#if>
},
"shippingDetails": {
"procurementSLA": ${(procurementSla!0)?c}
},
"mrp": {
"amount": ${(mrp!0)?c}.0,
"currency": "INR"
},
"sellerSellingPrice": {
"amount": ${(ssp!0)?c}.0,
"currency": "INR"
},
"pricingAttributes": {
"mrp": {
"amount": ${(mrp!0)?c}.0,
"currency": "INR"
},
"local_shipping_fee_from_buyer": {
"amount": ${(localShippingFee!0)?c}.0,
"currency": "INR"
},
"national_shipping_fee_from_buyer": {
"amount": ${(nationalShippingFee!0)?c}.0,
"currency": "INR"
},
"ssp": {
"amount": ${(ssp!0)?c}.0,
"currency": "INR"
},
"zonal_shipping_fee_from_buyer": {
"amount": ${(zonalShippingFee!0)?c}.0,
"currency": "INR"
},
<#if nlc??>
    "nlc": {
    "amount": ${(nlc!)?c}.0,
    "currency": "INR"
    },
</#if>
<#if dealerPrice??>
    "dealer_price": {
    "amount": ${(dealerPrice!)?c}.0,
    "currency": "INR"
    },
</#if>
<#if minimumOperatingPrice??>
    "mop": {
    "amount": ${(minimumOperatingPrice!)?c}.0,
    "currency": "INR"
    },
</#if>
"flipkart_selling_price": {
"amount": ${(ssp!0)?c}.0,
"currency": "INR"
}
},
<#if associations??>
    "associations": ${associations!},
</#if>
"listingAttributes": {
<#if earliestManufacturingDate?has_content>
    "earliest_mfg_date": {
    "valuesList": [
    {
    "value": "${(earliestManufacturingDate!)?c}",
    "qualifier": null
    }
    ],
    "multivalued": false
    },
</#if>
<#if earliestExpiryDate??>
    "earliest_expiry_date": {
    "valuesList": [
    {
    "value": "${(earliestExpiryDate!)?c}",
    "qualifier": null
    }
    ],
    "multivalued": false
    },
</#if>
<#if shelfLife??>
    "shelf_life": {
    "valuesList": [
    {
    "value": "${(shelfLife!)?c}",
    "qualifier": null
    }
    ],
    "multivalued": false
    },
</#if>
"national_shipping_fee_from_buyer": {
"valuesList": [{
"value": "${(nationalShippingFee!0)?c}",
"qualifier": "INR"
}],
"multivalued": false
},
"mrp": {
"valuesList": [{
"value": "${(mrp!0)?c}",
"qualifier": "INR"
}],
"multivalued": false
},
"ssp": {
"valuesList": [{
"value": "${(ssp!0)?c}",
"qualifier": "INR"
}],
"multivalued": false
},
<#if nlc??>
    "nlc": {
    "valuesList": [{
    "value": "${(nlc!0)?c}",
    "qualifier": "INR"
    }],
    "multivalued": false
    },
</#if>
<#if dealerPrice??>
    "dealer_price": {
    "valuesList": [{
    "value": "${(dealerPrice!0)?c}",
    "qualifier": "INR"
    }],
    "multivalued": false
    },
</#if>
<#if minimumOperatingPrice??>
    "mop": {
    "valuesList": [{
    "value": "${(minimumOperatingPrice!0)?c}",
    "qualifier": "INR"
    }],
    "multivalued": false
    },
</#if>
"local_shipping_fee_from_buyer": {
"valuesList": [{
"value": "${(localShippingFee!0)?c}",
"qualifier": "INR"
}],
"multivalued": false
},
"zonal_shipping_fee_from_buyer": {
"valuesList": [{
"value": "${(zonalShippingFee!0)?c}",
"qualifier": "INR"
}],
"multivalued": false
},
"last_modified": {
"valuesList": [{
"value": "${(updatedAt!0)?c}",
"qualifier": null
}],
"multivalued": false
},
"flipkart_selling_price": {
"valuesList": [{
"value": "${(ssp!0)?c}",
"qualifier": "INR"
}],
"multivalued": false
},
<#if offers??>
    "offers": {
    "valuesList": [{
    "value": "${offers}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if offerText??>
    "offer_text_for_title": {
    "valuesList": [{
    "value": "${offerText}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if offersDescription??>
    "offers_description": {
    "valuesList": [{
    "value": "${offersDescription}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if offerKnowMore??>
    "offer_know_more": {
    "valuesList": [{
    "value": "${offerKnowMore}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if offerEntityType??>
    "offer_entity": {
    "valuesList": [{
    "value": {
    "type": "${offerEntityType}",
    <#if offerEntityDescription??>
    "description": "${offerEntityDescription}",
    </#if>
    "offer_value": {
    "value": ${offerEntityValue?c},
    "qualifier": "${offerEntityQualifier?c}"
    }
    },
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if importers??>
    "importer_details": {
    "valuesList": [
    <#list importers as importer>
        {
        "value": "${importer!}",
        "qualifier": null
        }<#sep>,</#sep>
    </#list>
    ],
    "multivalued": true
    },
</#if>
<#if manufacturers??>
    "manufacturer_details": {
    "valuesList": [
    <#list manufacturers as manufacturer>
        {
        "value": "${manufacturer!}",
        "qualifier": null
        }<#sep>,</#sep>
    </#list>
    ],
    "multivalued": true
    },
</#if>
<#if packers??>
    "packer_details": {
    "valuesList": [
    <#list packers as packer>
        {
        "value": "${packer!}",
        "qualifier": null
        }<#sep>,</#sep>
    </#list>
    ],
    "multivalued": true
    },
</#if>
"seller_listing_state": {
"valuesList": [{
"value": "${listingState!'current'}",
"qualifier": null
}],
"multivalued": false
},
"seller_tier_value": {
"valuesList": [{
"value": "${sellerTierValue}",
"qualifier": null
}],
"multivalued": false
},
<#if forbidShipping??>
    "forbid_shipping": {
    "valuesList": [{
    "value": "${forbidShipping!}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
"is_live": {
"valuesList": [{
"value": "true",
"qualifier": null
}],
"multivalued": false
},
"cls_id": {
"valuesList": [{
"value": "${clsId}",
"qualifier": null
}],
"multivalued": false
},
"root_context_id": {
"valuesList": [{
"value": "${rootContextId}",
"qualifier": null
}],
"multivalued": false
},
"internal_state": {
"valuesList": [{
"value": "${internalStatus!'INACTIVE'}",
"qualifier": null
}],
"multivalued": false
},
"show_mrp": {
"valuesList": [{
"value": "${(showMrp?string('yes', 'no'))!}",
"qualifier": null
}],
"multivalued": false
},
"mpc": {
"valuesList": [{
"value": "${marketplaceContext}",
"qualifier": null
}],
"multivalued": false
},
"mpd": {
"valuesList": [{
"value": "${marketplaceDomain}",
"qualifier": null
}],
"multivalued": false
},
<#if buyableCriteria??>
    "bc_origin": {
    "valuesList": [{
    "value": "${buyableCriteria.origin}",
    "qualifier": null
    }],
    "multivalued": false
    },
    "bc_grade": {
    "valuesList": [{
    "value": "${buyableCriteria.grade}",
    "qualifier": null
    }],
    "multivalued": false
    }
    <#if buyableCriteria.tenure??>
        ,"bc_tenure_start": {
        "valuesList": [{
        "value": "${buyableCriteria.tenure.start?c}",
        "qualifier": null
        }],
        "multivalued": false
        },
        "bc_tenure_end": {
        "valuesList": [{
        "value": "${buyableCriteria.tenure.end?c}",
        "qualifier": null
        }],
        "multivalued": false
        },
        "bc_tenure_unit": {
        "valuesList": [{
        "value": "${buyableCriteria.tenure.unit}",
        "qualifier": null
        }],
        "multivalued": false
        }
    </#if>
    ,
</#if>
<#if partPaymentValue?? && partPaymentQualifier??>
    "part_payment": {
    "valuesList": [{
    "value": "${partPaymentValue!}",
    "qualifier": "${partPaymentQualifier!}"
    }],
    "multivalued": false
    },
</#if>
<#if isGstSellable??>
    "is_gst_sellable": {
    "valuesList": [{
    "value": "${isGstSellable?string('yes', 'no')}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if isEmbargo??>
    "embargo": {
    "valuesList": [{
    "value": "${isEmbargo?string('true', 'false')}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if releaseDateType??>
    "release_date_type": {
    "valuesList": [{
    "value": "${release_date_type}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if releaseDate??>
    "flipkart_release_date": {
    "valuesList": [{
    "value": "${(releaseDate!0)?number_to_datetime?string('YYYY-MM-dd HH:mm')}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if procurementType??>
    "procurement_type": {
    "valuesList": [{
    "value": "${procurementType}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
"listing_id": {
"valuesList": [{
"value": "${listingId}",
"qualifier": null
}],
"multivalued": false
},
<#if isPartPaymentEnabledFlag??>
    "part_payment_enabled": {
    "valuesList": [{
    "value": "${isPartPaymentEnabledFlag?string('true', 'false')}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
"fk_release_date": {
"valuesList": [{
"value": "${(createdAt!0)?number_to_datetime?string('YYYY-MM-dd HH:mm:ss')}",
"qualifier": null
}],
"multivalued": false
},
<#if isCodAvailable??>
    "is_cod_available": {
    "valuesList": [{
    "value": "${isCodAvailable?string('true', 'false')}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if isGiftWrap??>
    "is_gift_wrap": {
    "valuesList": [{
    "value": "${isGiftWrap?string('true', 'false')}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if maxOrderQuantity??>
    "max_order_quantity_allowed": {
    "valuesList": [{
    "value": "${maxOrderQuantity?c}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if minimumOrderQuantity??>
    "minimum_order_quantity": {
    "valuesList": [{
    "value": "${minimumOrderQuantity?c}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
"listing_status": {
"valuesList": [{
"value": "${listingStatus!'INACTIVE'}",
"qualifier": null
}],
"multivalued": false
},
<#if procurementType??>
    "dispatch_service_level": {
    "valuesList": [{
    "value": "${procurementType}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if shippingDays??>
    "shipping_days": {
    "valuesList": [{
    "value": "${(shippingDays!)?c}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
<#if shippingProvider??>
    "shipping_days": {
    "valuesList": [{
    "value": "${shippingProvider}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
"sb_chat_enabled": {
"valuesList": [{
"value": "${(isSellerBuyerChatEnabled?string('yes', 'no'))!"no"}",
"qualifier": null
}],
"multivalued": false
},
<#if countriesOfOrigin??>
    "country_of_origin": {
    "valuesList": [
    <#list countriesOfOrigin as country>
        {"value": "${country!}",
        "qualifier": null}<#if country_has_next>,</#if>
    </#list>
    ],
    "multivalued": false
    },
</#if>
"sku_id": {
"valuesList": [{
"value": "${skuId}",
"qualifier": null
}],
"multivalued": false
},
"listing_tier": {
"valuesList": [{
"value": "${(listingTier!'NONE')?upper_case}",
"qualifier": null
}],
"multivalued": false
},
"service_profile": {
"valuesList": [{
<#if (serviceProfiles?size > 1)>
    "value": "FBF",
<#else>
    "value": "${serviceProfiles?first}",
</#if>
"qualifier": null
}],
"multivalued": false
},
<#if taxCodeType?? && taxCodeType ! == 'hsn'>
    "hsn": {
    "valuesList": [{
    "value": "${taxCodeValue}",
    "qualifier": null
    }],
    "multivalued": false
    },
<#else>
    "sac": {
    "valuesList": [{
    "value": "${taxCodeValue}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
"listing_version": {
"valuesList": [{
"value": "${listingVersion?c}",
"qualifier": null
}],
"multivalued": false
},
"is_independent_sellable": {
"valuesList": [{
"value": "${(isIndependentallySellable?string('true', 'false'))!"true"}",
"qualifier": null
}],
"multivalued": false
},
<#if returnPolicy??>
    "return_policy": {
    "valuesList": [{
    "value": "${returnPolicy!}",
    "qualifier": null
    }],
    "multivalued": false
    },
</#if>
"marketplace_id": {
"valuesList": [{
"value": "${marketplaceContext}"
}],
"multivalued": false
}
},
"zulu_preferred_lot": "<#if preferredLotId??>${preferredLotId!}<#else>${listingId?replace('^LST', 'LOT', 'r')}</#if>",
"lots":
<#if lots?has_content>
    ${lots}
<#else>
    {
    "<#if preferredLotId??>${preferredLotId!}<#else>${listingId?replace('^LST', 'LOT', 'r')}</#if>": {
    "id": "<#if preferredLotId??>${preferredLotId!}<#else>${listingId?replace('^LST', 'LOT', 'r')}</#if>",
    "lot_id": "${skuId}",
    "status": "ENABLED",
    "lot_preference_order": 1,
    "association_id": "${listingId}",
    "created_at": ${(createdAt!0)?c},
    "updated_at": ${(createdAt!0)?c},
    "version": ${(createdAt!0)?c},
    "packages":
    <#if packages??>
        ${packages}
    <#else>
        {
        "${listingId?replace('^LST', 'PKG', 'r')}": {
        "id": "${listingId?replace('^LST', 'PKG', 'r')}",
        "association_id": "${listingId}",
        "sku_id": "${skuId}",
        "is_fragile": false,
        "created_at": ${(createdAt!0)?c},
        "updated_at": ${(createdAt!0)?c},
        "version": ${(createdAt!0)?c}
        }
        }
    </#if>
    }
    }
</#if>
,
"packages":
<#if packages?has_content>
    ${packages}
<#else>
    {
    "${listingId?replace('^LST', 'PKG', 'r')}": {
    "id": "${listingId?replace('^LST', 'PKG', 'r')}",
    "association_id": "${listingId}",
    "sku_id": "${skuId}",
    "is_fragile": false,
    "created_at": ${(createdAt!0)?c},
    "updated_at": ${(createdAt!0)?c},
    "version": ${(createdAt!0)?c}
    }
    }
</#if>
,
"lmiAttributes": {
<#if earliestExpiryDate??>
    "earliest_expiry_date": ${(earliestExpiryDate!)?c}
</#if>
<#if earliestManufacturingDate??>
    <#if earliestExpiryDate??>,</#if>
    "earliest_mfg_date": ${(earliestManufacturingDate!)?c}
</#if>
<#if minimumOrderQuantity??>
    <#if earliestManufacturingDate?? || earliestExpiryDate??>,</#if>
    "minimum_order_quantity": ${(minimumOrderQuantity!)?c}
</#if>
<#if offerText??>
    <#if earliestManufacturingDate?? || earliestExpiryDate?? || minimumOrderQuantity??>,</#if>
    "offer_text_for_title": "${offerText}"
</#if>
},
"tax": {
<#if isGstSellable?? >
    "is_gst_sellable": "${isGstSellable?string('true', 'false')}",
</#if>
<#if taxCodeType?? && taxCodeValue??>
    "code": {
    "type": "${taxCodeType}",
    "value": "${taxCodeValue}"
    }
</#if>
},
"marketplace": {
"domain": "${marketplaceDomain}",
"context": "${marketplaceContext}"
},
"active_service_profiles": [
<#list serviceProfiles as serviceProfile>
    "${serviceProfile}"<#sep>,</#sep>
</#list>
],
"inventory_mode_configuration": {
<#list serviceProfiles as serviceProfile>
    <#if serviceProfile == "FBF">
        "FBF": {
        "dispatch_sla": 0
        }
    <#else>
        "${serviceProfile}": {
        "dispatch_sla": ${procurementSla?c}
        <#if procurementType??>
            ,"dispatch_service_level": "${procurementType}"
        </#if>
        <#if shippingProvider??>
            ,"shipping_provider": "${shippingProvider}"
        </#if>
        }
    </#if>
    <#sep>,</#sep>
</#list>
},
"seller_tier": {
"tier": "${sellerTier}",
"tier_value": ${sellerTierValue?c}
},
"tierFlag": "${(listingTier!'NOT_APPLICABLE')?upper_case}"
<#if buyableCriteria??>
    ,"buyable_criteria": {
        "grade": "${buyableCriteria.grade}",
        "origin": "${buyableCriteria.origin}"
    <#if buyableCriteria.tenure??>
        ,"tenure": {
            "unit": "${buyableCriteria.tenure.unit}",
            "start": ${buyableCriteria.tenure.start?c},
            "end": ${buyableCriteria.tenure.end?c}
        }
    </#if>
    }
</#if>
}