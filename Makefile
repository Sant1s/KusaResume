# Makefile для компиляции LaTeX резюме

# Основные файлы
MAIN_RESUME = resume.tex
FAANG_RESUME = resume_faang_simple.tex
ENGLISH_RESUME = resume_english_simple.tex
STYLES = resume_styles.sty

# Компилятор LaTeX
LATEX = xelatex
BIBTEX = bibtex

# Флаги компиляции
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error

# Цели по умолчанию
.PHONY: all clean help pdf

# Компиляция всех версий резюме
all: resume.pdf resume_faang.pdf resume_english.pdf

# Компиляция основной версии резюме
resume.pdf: $(MAIN_RESUME)
	$(LATEX) $(LATEX_FLAGS) $(MAIN_RESUME)
	$(LATEX) $(LATEX_FLAGS) $(MAIN_RESUME)

# Компиляция FAANG версии резюме
resume_faang.pdf: $(FAANG_RESUME) $(STYLES)
	$(LATEX) $(LATEX_FLAGS) $(FAANG_RESUME)
	$(LATEX) $(LATEX_FLAGS) $(FAANG_RESUME)

# Компиляция английской версии резюме
resume_english.pdf: $(ENGLISH_RESUME) $(STYLES)
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH_RESUME)
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH_RESUME)

# Компиляция только PDF файлов
pdf: all

# Очистка временных файлов
clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg

# Полная очистка (включая PDF)
distclean: clean
	rm -f *.pdf

# Показать справку
help:
	@echo "Доступные команды:"
	@echo ""
	@echo "Установка и настройка:"
	@echo "  make install-deps     - Установить все зависимости для вашей ОС"
	@echo "  make install-minimal  - Установить минимальные зависимости"
	@echo "  make check-deps       - Проверить установленные зависимости"
	@echo "  make setup           - Проверить и настроить окружение"
	@echo ""
	@echo "Компиляция резюме:"
	@echo "  make all              - Скомпилировать все версии резюме"
	@echo "  make resume.pdf       - Скомпилировать основную версию"
	@echo "  make resume_faang.pdf - Скомпилировать FAANG версию"
	@echo "  make resume_english.pdf - Скомпилировать английскую версию"
	@echo "  make quick            - Быстрая компиляция всех версий"
	@echo "  make watch            - Автоматическая компиляция при изменениях"
	@echo "  make ci               - Компиляция для CI/CD"
	@echo ""
	@echo "Утилиты:"
	@echo "  make lint             - Проверить синтаксис LaTeX файлов"
	@echo "  make package          - Создать архив с резюме"
	@echo "  make info             - Показать информацию о системе"
	@echo ""
	@echo "Очистка:"
	@echo "  make clean            - Удалить временные файлы"
	@echo "  make distclean        - Удалить все сгенерированные файлы"
	@echo ""
	@echo "Справка:"
	@echo "  make help             - Показать эту справку"

# Определение операционной системы
UNAME_S := $(shell uname -s)

# Установка зависимостей для разных ОС
install-deps:
	@echo "Установка зависимостей для $(UNAME_S)..."
ifeq ($(UNAME_S),Darwin)
	@echo "Обнаружена macOS. Установка через Homebrew..."
	@if command -v brew >/dev/null 2>&1; then \
		echo "Установка MacTeX..."; \
		brew install --cask mactex; \
		echo "Установка дополнительных пакетов..."; \
		brew install --cask basictex; \
		echo "Обновление пакетов LaTeX..."; \
		sudo tlmgr update --self; \
		sudo tlmgr install fontspec xcolor titlesec enumitem hyperref array tabularx ragged2e; \
	else \
		echo "Homebrew не найден. Установите MacTeX вручную с https://www.tug.org/mactex/"; \
	fi
else ifeq ($(UNAME_S),Linux)
	@echo "Обнаружена Linux. Установка через пакетный менеджер..."
	@if command -v apt-get >/dev/null 2>&1; then \
		echo "Установка через apt-get..."; \
		sudo apt-get update; \
		sudo apt-get install -y texlive-full texlive-fonts-recommended texlive-latex-extra; \
	elif command -v yum >/dev/null 2>&1; then \
		echo "Установка через yum..."; \
		sudo yum install -y texlive-scheme-full; \
	elif command -v dnf >/dev/null 2>&1; then \
		echo "Установка через dnf..."; \
		sudo dnf install -y texlive-scheme-full; \
	elif command -v pacman >/dev/null 2>&1; then \
		echo "Установка через pacman..."; \
		sudo pacman -S texlive-most texlive-lang; \
	else \
		echo "Пакетный менеджер не найден. Установите TeX Live вручную."; \
	fi
else
	@echo "Неподдерживаемая ОС: $(UNAME_S)"; \
	echo "Установите TeX Live вручную с https://www.tug.org/texlive/"; \
fi

# Установка минимальных зависимостей
install-minimal:
	@echo "Установка минимальных зависимостей..."
ifeq ($(UNAME_S),Darwin)
	@if command -v brew >/dev/null 2>&1; then \
		brew install --cask basictex; \
		sudo tlmgr update --self; \
		sudo tlmgr install fontspec xcolor titlesec enumitem hyperref array tabularx ragged2e; \
	fi
else ifeq ($(UNAME_S),Linux)
	@if command -v apt-get >/dev/null 2>&1; then \
		sudo apt-get update && sudo apt-get install -y texlive-latex-base texlive-fonts-recommended; \
	fi
endif

# Проверка зависимостей
check-deps:
	@echo "Проверка зависимостей..."
	@command -v xelatex >/dev/null 2>&1 || (echo "XeLaTeX не найден. Выполните 'make install-deps'." && exit 1)
	@command -v fontspec >/dev/null 2>&1 || echo "Предупреждение: пакет fontspec может быть недоступен"
	@echo "Все основные зависимости установлены."

# Проверка и установка зависимостей
setup: check-deps
	@echo "Настройка завершена."

# Быстрая компиляция (однократная)
quick:
	$(LATEX) $(LATEX_FLAGS) $(MAIN_RESUME)
	$(LATEX) $(LATEX_FLAGS) $(FAANG_RESUME)
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH_RESUME)

# Компиляция с отслеживанием изменений (требует latexmk)
watch:
	@if command -v latexmk >/dev/null 2>&1; then \
		latexmk -pvc -xelatex $(MAIN_RESUME); \
	else \
		echo "latexmk не найден. Установите его для автоматической компиляции."; \
	fi

# Компиляция для CI/CD (без интерактивного режима)
ci: check-deps
	@echo "Компиляция для CI/CD..."
	$(LATEX) -interaction=batchmode -halt-on-error $(MAIN_RESUME)
	$(LATEX) -interaction=batchmode -halt-on-error $(FAANG_RESUME)
	$(LATEX) -interaction=batchmode -halt-on-error $(ENGLISH_RESUME)
	@echo "Компиляция завершена."

# Проверка синтаксиса LaTeX файлов
lint:
	@echo "Проверка синтаксиса LaTeX файлов..."
	@for file in *.tex; do \
		echo "Проверка $$file..."; \
		$(LATEX) -interaction=batchmode -halt-on-error -draftmode "$$file" || echo "Ошибка в $$file"; \
	done
	@echo "Проверка завершена."

# Создание архива с резюме
package: all
	@echo "Создание архива с резюме..."
	@mkdir -p dist
	@cp *.pdf dist/ 2>/dev/null || true
	@tar -czf resume-package.tar.gz *.pdf *.tex *.sty Makefile README.md 2>/dev/null || true
	@echo "Архив создан: resume-package.tar.gz"

# Показать информацию о системе
info:
	@echo "Информация о системе:"
	@echo "ОС: $(UNAME_S)"
	@echo "XeLaTeX: $$(command -v xelatex 2>/dev/null || echo 'не найден')"
	@echo "LaTeXmk: $$(command -v latexmk 2>/dev/null || echo 'не найден')"
	@echo "Git: $$(command -v git 2>/dev/null || echo 'не найден')"
