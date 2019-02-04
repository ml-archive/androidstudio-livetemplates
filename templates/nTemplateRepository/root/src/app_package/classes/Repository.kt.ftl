package ${escapeKotlinIdentifiers(packageName)}.${repositoryName?lower_case}

interface ${repositoryClass} {
    suspend fun get${repositoryType}(cached: Boolean = false): List<${repositoryType}>
    suspend fun update${repositoryType}()
    suspend fun delete${repositoryType}()
    suspend fun add${repositoryType}(${repositoryType?lower_case}List: List<${repositoryType}>)
}
