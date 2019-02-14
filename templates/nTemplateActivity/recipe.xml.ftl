<?xml version="1.0"?>
<recipe>
    <#include "activity_layout_recipe.xml.ftl" />

    <merge from="src/app_package/xml/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="src/app_package/classes/Activity.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvvmPackageName}/${activityClass}.kt" />
      
    <instantiate from="src/app_package/classes/Builder.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvvmPackageName}/${builderName}.kt" />
      
    <instantiate from="src/app_package/classes/ViewModel.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvvmPackageName}/${viewModelClass}.kt" />
      
</recipe>
