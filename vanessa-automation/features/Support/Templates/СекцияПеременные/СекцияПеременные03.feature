﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@tree
@IgnoreOnCIMainBuild




Функциональность: СекцияПеременные03
 

Переменные:

	Перем1 = 
	"""
	ЧастьСтроки1
	ЧастьСтроки2
	ЧастьСтроки3
	"""

	Перем2 = 'ЗначениеПеременной2'

	| 'Имя'                | 'Представление'  | 'Тип'        | 'Вид'         | 'UID'                              | 'Выражение'     |
	| 'ГлавныйКонтрагент1' | 'ООО Моя Фирма1' | 'Справочник' | 'Справочник1' | '829afcaa1434287a11e57e506d3c08bc' | '{Строка(1+1)}' |

	* СписокКонтрагентов1
		| 'Имя'                | 'Представление'  | 'Тип'        | 'Вид'         | 'UID'                              | 'Выражение'      |
		| 'ГлавныйКонтрагент2' | 'ООО Моя Фирма2' | 'Справочник' | 'Справочник1' | '829afcaa1434287a11e57e506d3c08bc' | '{Строка(2+2)}'  |
		| 'ГлавныйКонтрагент3' | 'ООО Моя Фирма3' | 'Справочник' | 'Справочник1' | '1\n2\n3'                          | '{!Строка(2+2)}' |

	Импорт "СекцияПеременныеИмпорт.feature"

Сценарий: СекцияПеременные03
	И Я запоминаю значение выражения '{Перем2}' в переменную "ИмяПеременной1"
	И я вывожу значение переменной "ИмяПеременной1"

	И Я запоминаю значение выражения '{Перем1Импорт}' в переменную "ИмяПеременной1Импорт"
	И я вывожу значение переменной "ИмяПеременной1Импорт"

	И Я запоминаю значение выражения '{СписокКонтрагентов1Импорт.ГлавныйКонтрагент22.Представление}' в переменную "СписокКонтрагентов1Импорт"
	И я вывожу значение переменной "СписокКонтрагентов1Импорт"

