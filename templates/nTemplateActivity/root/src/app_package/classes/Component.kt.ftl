package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import dagger.Component
import dk.nodes.arch.domain.injection.scopes.ActivityScope

@ActivityScope
@Component(dependencies = arrayOf(AppComponent::class), modules = arrayOf(${moduleClass}::class))
interface ${componentClass} {
    fun inject(activity: ${activityClass})
}
