package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import dagger.Module
import dagger.Provides
import dk.nodes.arch.domain.injection.scopes.ActivityScope

@Module
class ${moduleClass} {
    @Provides
    @ActivityScope
    fun providesPresenter(): ${contractName}.${presenterClass} {
        return ${presenterClass}()
    }
}
