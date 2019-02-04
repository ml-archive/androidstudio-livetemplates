package ${escapeKotlinIdentifiers(packageName)}.${vmvsName?lower_case}

import dk.nodes.template.util.Event

data class ${vsClass}(
        val data: Any = Any(),
        val errorMessage: Event<String>? = null,
        val isLoading: Boolean = false
)
