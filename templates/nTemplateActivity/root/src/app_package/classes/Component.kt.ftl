package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import dagger.Component
import dk.nodes.arch.domain.injection.scopes.ActivityScope
import ${applicationPackage}.domain.injection.components.AppComponent

@ActivityScope
@Component(dependencies = arrayOf(AppComponent::class), modules = arrayOf(${moduleClass}::class))
interface ${componentClass} {
    fun inject(activity: ${activityClass})
}
