# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@tree
@IgnoreOnCIMainBuild




Функциональность: ДляПроверкиЦиклов05
 

Сценарий: ДляПроверкиЦиклов05
	И Я запоминаю значение выражения '0' в переменную "Тест1"
	И Я запоминаю значение выражения '0' в переменную "Тест2"

	И я делаю 3 раз
		И Я запоминаю значение выражения '$Тест1$ + 1' в переменную "Тест1"
		И я вывожу значение переменной "Тест1"

		И я делаю 2 раз
				И Я запоминаю значение выражения '$Тест2$ + 1' в переменную "Тест2"
				И я вывожу значение переменной "Тест2"
				
		И Я запоминаю значение выражения '22222222' в переменную "ИмяПеременной"
