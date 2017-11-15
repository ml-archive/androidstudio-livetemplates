<?xml version="1.0"?>
<recipe>
    <#include "activity_layout_recipe.xml.ftl" />

    <merge from="src/app_package/xml/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="src/app_package/classes/Activity.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${activityClass}.kt" />
      
    <instantiate from="src/app_package/classes/Contract.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${contractName}.kt" />
      
    <instantiate from="src/app_package/classes/Presenter.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${presenterClass}.kt" />

    <#if shouldGenerateDagger>
        <instantiate from="src/app_package/classes/Component.kt.ftl"
          to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${componentClass}.kt" />

        <instantiate from="src/app_package/classes/Module.kt.ftl"
          to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${moduleClass}.kt" />
    </#if>
</recipe>
