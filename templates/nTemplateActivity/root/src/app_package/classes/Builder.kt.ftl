package ${escapeKotlinIdentifiers(packageName)}.${mvvmPackageName}

import androidx.lifecycle.ViewModel
import dagger.Binds
import dagger.Module
import dagger.android.ContributesAndroidInjector
import dagger.multibindings.IntoMap

@Module
internal abstract class ${builderName} {

    @Binds
    @IntoMap
    @ViewModelKey(${viewModelClass}::class)
    abstract fun bind${viewModelClass}(viewModel: ${viewModelClass}): ViewModel

    @ContributesAndroidInjector
    internal abstract fun activity(): ${activityClass}
    
}