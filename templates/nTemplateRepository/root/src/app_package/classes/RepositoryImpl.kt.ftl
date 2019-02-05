package ${escapeKotlinIdentifiers(packageName)}.${repositoryName?lower_case}

import dk.nodes.template.domain.repositories.RepositoryException

class ${repositoryClass}Impl: ${repositoryClass} {

    @Throws(RepositoryException::class)
    override suspend fun get${repositoryType}(cached: Boolean): List<${repositoryType}> {

        // Your code here

        throw(RepositoryException(400, ""))
    }

    override suspend fun update${repositoryType}() {
        //TODO your code
    }

    override suspend fun delete${repositoryType}() {
        //TODO your code
    }

    override suspend fun add${repositoryType}(${repositoryType?lower_case}List: List<${repositoryType}>) {
        //TODO your code
    }

}
