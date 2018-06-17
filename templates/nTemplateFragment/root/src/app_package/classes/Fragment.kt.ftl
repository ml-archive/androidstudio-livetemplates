package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import javax.inject.Inject

class ${className} : BaseFragment(), ${contractName}.View {
    @Inject
    lateinit var presenter: ${contractName}.Presenter

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${layoutName}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        
        presenter.onViewCreated(this, lifecycle)
    }
    
    override fun injectDependencies() {
    }
}
