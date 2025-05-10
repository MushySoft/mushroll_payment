.PHONY: all lint typecheck test check

# 🔍 Линтер Ruff
lint:
	ruff check .

# 📐 Проверка типов
typecheck:
	mypy .

# 🧪 Тесты
test:
	pytest --maxfail=1 --disable-warnings

# ✅ Всё вместе
check: lint typecheck test
