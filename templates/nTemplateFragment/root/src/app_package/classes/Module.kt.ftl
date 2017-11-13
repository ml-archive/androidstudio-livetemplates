package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import dagger.Module
import dagger.Provides
import dk.nodes.arch.domain.injection.scopes.FragmentScope

@Module
class ${moduleClass} {
    @Provides
    @FragmentScope
    fun providesPresenter(): ${contractName}.${presenterClass} {
        return ${presenterClass}()
    }
}
