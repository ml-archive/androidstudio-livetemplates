<?xml version="1.0"?>
<recipe>

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${className}.kt" />
      
    <instantiate from="src/app_package/classes/Contract.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${contractName}.kt" />
      
    <instantiate from="src/app_package/classes/Presenter.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${presenterClass}.kt" />

    <#if shouldGenerateDagger
        <instantiate from="src/app_package/classes/Component.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${componentClass}.kt" />

        <instantiate from="src/app_package/classes/Module.kt.ftl"
            to="${escapeXmlAttribute(srcOut)}/${mvpPackageName}/${moduleClass}.kt" />
    </#if>
</recipe>
