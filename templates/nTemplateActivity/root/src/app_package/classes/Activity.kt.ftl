package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import android.os.Bundle
import ${applicationPackage}.R
import ${applicationPackage}.App
import dk.nodes.arch.presentation.base.BaseActivity
import javax.inject.Inject

class ${activityClass} : BaseActivity<${contractName}.${viewClass}>(), ${contractName}.${viewClass} {
    @Inject
    lateinit var presenter: ${presenterClass}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})

        presenter.onViewAttached(this, lifecycle)
    }

    override fun setupTranslations() {
        //Add your nStack Translations here
    }

    override fun injectDependencies() {
        val appComponent = (application as App).appComponent

        Dagger${componentClass}.builder()
                .appComponent(appComponent)
                .${moduleClass?uncap_first}(${moduleClass}())
                .build()
                .inject(this)
    }
}
