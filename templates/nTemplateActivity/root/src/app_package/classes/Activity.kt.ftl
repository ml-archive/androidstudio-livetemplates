package ${escapeKotlinIdentifiers(packageName)}.${mvvmPackageName}

import android.os.Bundle
import javax.inject.Inject

class ${activityClass} : BaseActivity() {
    private lateinit var viewModel: ${viewModelClass}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.${layoutName})

        viewModel = bindViewModel()
    }

}
