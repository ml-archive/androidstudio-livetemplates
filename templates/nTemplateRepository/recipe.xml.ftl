<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/classes/Repository.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${repositoryName?lower_case}/${repositoryClass}.kt"/>

    <instantiate from="src/app_package/classes/RepositoryImpl.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${repositoryName?lower_case}/${repositoryClass}Impl.kt"/>

</recipe>
