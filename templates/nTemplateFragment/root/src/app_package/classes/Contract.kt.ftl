package ${escapeKotlinIdentifiers(packageName)}.${mvpPackageName}

import android.support.annotation.UiThread
import dk.nodes.arch.presentation.base.BasePresenter
import dk.nodes.arch.presentation.base.BaseView

interface ${contractName} {

    @UiThread
    interface ${viewClass}: BaseView{
    }

    interface ${presenterClass}: BasePresenter<${viewClass}>{
    }

}