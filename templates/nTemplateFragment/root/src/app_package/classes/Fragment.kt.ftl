package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import dk.nodes.arch.presentation.base.BaseFragment
import javax.inject.Inject

class ${className} : BaseFragment(), ${contractName}.${viewClass} {
    @Inject
    lateinit var presenter: ${presenterClass}

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater?.inflate(R.layout.${layoutName}, container, false)
    }

    override fun onViewCreated(view: View?, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        
        presenter.onViewCreated(this, lifecycle)
    }
    
    override fun setupTranslations() {
        //Add your nStack Translations here
    }
    override fun injectDependencies() {
<#if shouldGenerateDagger>
        val appComponent = (activity.application as App).appComponent

        Dagger${componentClass}.builder()
                .appComponent(appComponent)
                .${moduleClass?uncap_first}(${moduleClass}())
                .build()
                .inject(this)
</#if>
    }
}
