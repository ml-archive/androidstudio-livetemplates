package ${escapeKotlinIdentifiers(packageName)}.${vmvsName}

import dk.nodes.template.util.Event

data class ${vsClass}(
        val posts: List<Any> = emptyList(),
        val errorMessage: Event<String>? = null,
        val isLoading: Boolean = false
)
