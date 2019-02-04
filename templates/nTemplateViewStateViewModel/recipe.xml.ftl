<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/classes/ViewModel.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${vmvsName}/${vmClass}.kt"/>

    <instantiate from="src/app_package/classes/ViewState.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${vmvsName}/${vsClass}.kt"/>

</recipe>
