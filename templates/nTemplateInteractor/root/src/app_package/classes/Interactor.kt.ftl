package ${escapeKotlinIdentifiers(packageName)}

import dk.nodes.template.domain.interactors.BaseAsyncInteractor
import dk.nodes.template.domain.models.Result
import dk.nodes.template.domain.repositories.RepositoryException
import javax.inject.Inject

class ${interactorClass} @Inject constructor(): BaseAsyncInteractor<Result<${interactorResultType}>> {

    override suspend fun run(): Result<${interactorResultType}> {
        return try {
            Result.Success(TODO())
        } catch (e: RepositoryException) {
            Result.Error(e)
        }
    }

}
