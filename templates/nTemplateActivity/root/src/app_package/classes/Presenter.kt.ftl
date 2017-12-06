package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import android.arch.lifecycle.Lifecycle
import dk.nodes.arch.presentation.base.BasePresenterImpl
import javax.inject.Inject

class ${presenterClass} @Inject constructor() : BasePresenterImpl<${contractName}.${viewClass}>(), ${contractName}.${presenterClass} {
    override fun onViewCreated(view: ${contractName}.${viewClass}, lifecycle: Lifecycle) {
        super.onViewCreated(view, lifecycle)
    }
}
