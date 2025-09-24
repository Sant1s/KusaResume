# 🚀 Быстрый старт

## Установка и настройка

### 1. Клонирование репозитория
```bash
git clone <your-repo-url>
cd KusaResume
```

### 2. Установка зависимостей
```bash
# Автоматическая установка для вашей ОС
make install-deps

# Или минимальная установка
make install-minimal

# Проверка установки
make check-deps
```

### 3. Первая компиляция
```bash
# Компиляция всех версий
make all

# Или только основной версии
make resume.pdf
```

## Основные команды

### Установка и настройка
- `make install-deps` - Установить все зависимости
- `make install-minimal` - Минимальная установка
- `make check-deps` - Проверить зависимости
- `make setup` - Полная настройка

### Компиляция
- `make all` - Все версии резюме
- `make resume.pdf` - Основная версия
- `make resume_faang.pdf` - FAANG версия
- `make resume_english.pdf` - Английская версия
- `make quick` - Быстрая компиляция
- `make ci` - Для CI/CD

### Утилиты
- `make lint` - Проверка синтаксиса
- `make package` - Создание архива
- `make info` - Информация о системе
- `make watch` - Автоматическая компиляция

### Очистка
- `make clean` - Временные файлы
- `make distclean` - Все сгенерированные файлы

## Редактирование резюме

1. Откройте нужный `.tex` файл
2. Отредактируйте информацию
3. Запустите `make all` для компиляции
4. Проверьте результат в PDF файлах

## Поддерживаемые ОС

- **macOS**: Homebrew + MacTeX
- **Ubuntu/Debian**: apt-get + texlive-full
- **CentOS/RHEL**: yum + texlive-scheme-full
- **Fedora**: dnf + texlive-scheme-full
- **Arch Linux**: pacman + texlive-most

## Troubleshooting

### XeLaTeX не найден
```bash
make install-deps
# или
make install-minimal
```

### Ошибки компиляции
```bash
make lint  # Проверить синтаксис
make clean # Очистить временные файлы
```

### Проблемы с шрифтами
```bash
# Обновить пакеты LaTeX
sudo tlmgr update --self
sudo tlmgr install fontspec
```

## CI/CD

Проект настроен для автоматической сборки в GitHub Actions:
- Автоматическая компиляция при push
- Создание артефактов с PDF файлами
- Проверка синтаксиса LaTeX

## Структура проекта

```
KusaResume/
├── resume.tex              # Основное резюме
├── resume_faang.tex         # FAANG версия
├── resume_english.tex       # Английская версия
├── resume_styles.sty        # Стили
├── Makefile                 # Автоматизация
├── .gitignore              # Git исключения
└── .github/workflows/      # CI/CD
```
