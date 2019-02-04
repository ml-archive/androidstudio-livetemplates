package ${escapeKotlinIdentifiers(packageName)}.${vmvsName}

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import dk.nodes.template.domain.models.Translation
import dk.nodes.template.presentation.base.BaseViewModel
import dk.nodes.template.util.Event
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject
import dk.nodes.template.domain.models.Result

class ${vmClass} @Inject constructor() : BaseViewModel() {

    private val _viewState = MutableLiveData<${vsClass}>()
    val viewState: LiveData<${vsClass}> = _viewState

    fun execute() = scope.launch {
        _viewState.value = ${vsClass}(isLoading = true)
        val result = withContext(Dispatchers.IO) {
            // interactor here
        }
        when (result) {
            is Result.Success -> _viewState.value = _viewState.value?.copy(
                    isLoading = false,
                    posts = result.data
            )
            is Result.Error -> _viewState.value = _viewState.value?.copy(
                    isLoading = false,
                    errorMessage = Event(Translation.error.unknownError)
            )
        }
    }

    override fun onCleared() {
        super.onCleared()
    }
}
