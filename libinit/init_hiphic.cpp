#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

void property_override(char const prop[], char const value[]) {
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);

    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}


/* Only for CN variant */
void vendor_load_properties() {
    property_override("ro.build.fingerprint", "motorola/hiphic_cn/hiphic:12/T1SC33.52-8-6/63d55-35c24:user/release-keys");
    property_override("ro.product.brand", "motorola");
    property_override("ro.product.device", "hiphic");
    property_override("ro.product.model", "XT2201-2");
}
