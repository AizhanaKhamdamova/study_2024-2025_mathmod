#!/bin/bash

# Проверка на наличие аргумента
if [ -z "$1" ]; then
  echo "❌ Укажи новый тег (пример: ./release.sh v13.0.0)"
  exit 1
fi

NEW_TAG="$1"

# Получение предыдущего тега (по времени создания)
PREV_TAG=$(git tag --sort=-creatordate | grep -v "$NEW_TAG" | head -n 1)

# Проверка, найден ли предыдущий тег
if [ -z "$PREV_TAG" ]; then
  echo "❌ Не удалось найти предыдущий тег"
  exit 1
fi

# Определение ссылки на репозиторий
REPO_URL=$(git config --get remote.origin.url | sed -E 's/^(git@|https:\/\/)([^:\/]+)[:\/]([^\/]+)\/(.*)(\.git)?$/https:\/\/\2\/\3\/\4/')

# Генерация описания
NOTES="Релиз лабораторной работы ${NEW_TAG#v}

Full Changelog: [${PREV_TAG}...${NEW_TAG}](${REPO_URL}/compare/${PREV_TAG}...${NEW_TAG})"

# Собираем список файлов (можно фильтровать при необходимости)
FILES=$(find . -type f \( -name "*.zip" -o -name "*.html" -o -name "*.md" -o -name "*.pdf" -o -name "*.docx" \))

# Создание релиза
gh release create "$NEW_TAG" \
  --title "Release $NEW_TAG" \
  --notes "$NOTES" \
  $FILES
