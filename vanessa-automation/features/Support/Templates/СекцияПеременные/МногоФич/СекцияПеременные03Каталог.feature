﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@tree
@IgnoreOnCIMainBuild




Функциональность: СекцияПеременные03Каталог
 

Переменные:

	Перем1_3 = 
	"""
	ЧастьСтроки1
	ЧастьСтроки2
	ЧастьСтроки3
	"""

	Перем2_3 = 'ЗначениеПеременной2'

	| 'Имя'                  | 'Представление'  | 'Тип'        | 'Вид'         | 'UID'                              | 'Выражение'     |
	| 'ГлавныйКонтрагент1_3' | 'ООО Моя Фирма1' | 'Справочник' | 'Справочник1' | '829afcaa1434287a11e57e506d3c08bc' | '{Строка(1+1)}' |

	* СписокКонтрагентов1_3
		| 'Имя'                  | 'Представление'  | 'Тип'        | 'Вид'         | 'UID'                              | 'Выражение'      |
		| 'ГлавныйКонтрагент2_3' | 'ООО Моя Фирма2' | 'Справочник' | 'Справочник1' | '829afcaa1434287a11e57e506d3c08bc' | '{Строка(2+2)}'  |
		| 'ГлавныйКонтрагент3_3' | 'ООО Моя Фирма3' | 'Справочник' | 'Справочник1' | '1\n2\n3'                          | '{!Строка(2+2)}' |

	Импорт "СекцияПеременныеИмпортКаталог.feature"

Сценарий: СекцияПеременные03Каталог
	И Я запоминаю значение выражения '{Перем2_3}' в переменную "ИмяПеременной1_3"
	И я вывожу значение переменной "ИмяПеременной1_3"

	И Я запоминаю значение выражения '{Перем1Импорт_импорт}' в переменную "ИмяПеременной1Импорт_3"
	И я вывожу значение переменной "ИмяПеременной1Импорт_3"

	И Я запоминаю значение выражения '{СписокКонтрагентов1Импорт_импорт.ГлавныйКонтрагент22_импорт.Представление}' в переменную "СписокКонтрагентов1Импорт_3"
	И я вывожу значение переменной "СписокКонтрагентов1Импорт_3"

