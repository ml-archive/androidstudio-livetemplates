<?xml version="1.0"?>
<recipe>

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvvmPackageName}/${className}.kt" />
      
    <instantiate from="src/app_package/classes/Contract.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvvmPackageName}/${contractName}.kt" />
      
    <instantiate from="src/app_package/classes/Presenter.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${mvvmPackageName}/${presenterClass}.kt" />
      
</recipe>
