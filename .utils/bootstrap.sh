mkdir -p lib/config/routes
mkdir    lib/config/theme
mkdir -p lib/core/constants
touch    lib/core/constants/constants.dart
mkdir    lib/core/resources
mkdir    lib/core/usecases
mkdir    lib/core/util

mkdir -p lib/features/$1/data/data_sources/remote
mkdir    lib/features/$1/data/data_sources/local
mkdir    lib/features/$1/data/models
mkdir    lib/features/$1/data/repository

mkdir -p lib/features/$1/domain/entities
mkdir    lib/features/$1/domain/repository
mkdir    lib/features/$1/domain/usecases

mkdir -p lib/features/$1/presentation/bloc
mkdir    lib/features/$1/presentation/pages
mkdir    lib/features/$1/presentation/widgets

mkdir -p assets/fonts
mkdir    assets/images

tree ./lib
