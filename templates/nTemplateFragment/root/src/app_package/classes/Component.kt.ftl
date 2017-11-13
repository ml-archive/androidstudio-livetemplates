package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import dagger.Component
import dk.nodes.arch.domain.injection.scopes.FragmentScope
import ${applicationPackage}.domain.injection.components.AppComponent

@FragmentScope
@Component(dependencies = arrayOf(AppComponent::class), modules = arrayOf(${moduleClass}::class))
interface ${componentClass} {
    fun inject(fragment: ${className})
}
