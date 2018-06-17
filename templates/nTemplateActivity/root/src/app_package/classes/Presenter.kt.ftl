package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import dk.nodes.arch.presentation.base.BasePresenterImpl
import javax.inject.Inject

class ${presenterClass} @Inject constructor() : BasePresenterImpl<${contractName}.View>(), ${contractName}.Presenter {
}
