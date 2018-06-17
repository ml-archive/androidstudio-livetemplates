package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import android.os.Bundle
import javax.inject.Inject

class ${activityClass} : BaseActivity(), ${contractName}.View {
    @Inject
    lateinit var presenter: ${contractName}.Presenter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})

        presenter.onViewCreated(this, lifecycle)
    }

    override fun setupTranslations() {
        //Add your nStack Translations here
    }

    override fun injectDependencies() {
    }

}
