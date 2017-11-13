<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/classes/Interactor.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${interactorName}/${interactorClass}.kt"/>

    <instantiate from="src/app_package/classes/InteractorImpl.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${interactorName}/${interactorClass}Impl.kt"/>

</recipe>
