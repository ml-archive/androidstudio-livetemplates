package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import android.os.Bundle
import javax.inject.Inject

class ${activityClass} : BaseActivity(), ${contractName}.${viewClass} {
    @Inject
    lateinit var presenter: ${presenterClass}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})

        presenter.onViewCreated(this, lifecycle)
    }

    override fun setupTranslations() {
        //Add your nStack Translations here
    }


    override fun injectDependencies() {
<#if shouldGenerateDagger>
        val appComponent = (application as App).appComponent

        Dagger${componentClass}.builder()
                .appComponent(appComponent)
                .${moduleClass?uncap_first}(${moduleClass}())
                .build()
                .inject(this)
</#if>
    }

}
