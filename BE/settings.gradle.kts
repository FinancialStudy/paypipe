plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "1.0.0"
}

rootProject.name = "paypipe"

include(
    "merchant-server",
    "pg-server",
    "card-server",
    "libs:observability",
    "e2e-test",
)
