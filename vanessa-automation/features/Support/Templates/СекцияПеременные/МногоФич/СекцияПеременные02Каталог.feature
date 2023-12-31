﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@tree
@IgnoreOnCIMainBuild




Функциональность: СекцияПеременные02Каталог
 

Переменные:

	Перем1_2 = 
	"""
	ЧастьСтроки1
	ЧастьСтроки2
	ЧастьСтроки3
	"""

	Перем2_2 = 'ЗначениеПеременной2'
	Перем3_2 = "ЗначениеПеременной3"
	Перем4_2 = "{Строка(1+1)}"
	Перем5_2 = "{!Строка(2+2)}"
	Перем6_2 = 'Часть1{Строка(1+1)}Часть2'
	Перем7_2 = 'Часть1\{Строка(1+1)\}Часть2'
	Перем8_2 = 'Часть1{Строка(1+1)}Часть2{Строка(2+2)}Часть3'
	Перем9_2 = 'Часть1{Строка(1+1)}'
	Перем10_2 = '{Строка(1+1)}Часть2'
	Перем11_2 = 'ЧастьСтроки $Перем2_2$'
	Перем12_2 = '{Перем4_2} и часть строки'
	Перем13_2 = '{Перем12_2} и другая часть строки'

	| 'Имя'                  | 'Представление'  | 'Тип'        | 'Вид'         | 'UID'                              | 'Выражение'     |
	| 'ГлавныйКонтрагент1_2' | 'ООО Моя Фирма1' | 'Справочник' | 'Справочник1' | '829afcaa1434287a11e57e506d3c08bc' | '{Строка(1+1)}' |

	* СписокКонтрагентов1_2
		| 'Имя'                  | 'Представление'  | 'Тип'        | 'Вид'         | 'UID'                              | 'Выражение'      |
		| 'ГлавныйКонтрагент2_2' | 'ООО Моя Фирма2' | 'Справочник' | 'Справочник1' | '829afcaa1434287a11e57e506d3c08bc' | '{Строка(2+2)}'  |
		| 'ГлавныйКонтрагент3_2' | 'ООО Моя Фирма3' | 'Справочник' | 'Справочник1' | '1\n2\n3'                          | '{!Строка(2+2)}' |


Сценарий: СекцияПеременные02Каталог
	И Я запоминаю значение выражения '{Перем2_2}' в переменную "ИмяПеременной1_2"
	И я вывожу значение переменной "ИмяПеременной1_2"

	И Я запоминаю значение выражения '{Строка(2+3)}' в переменную "ИмяПеременной2_2"
	И я вывожу значение переменной "ИмяПеременной2_2"
	
	И Я запоминаю значение выражения 'ЧастьСтроки1 {Строка(2+3)} ЧастьСтроки2' в переменную "ИмяПеременной3_2"
	И я вывожу значение переменной "ИмяПеременной3_2"
	
	И Я запоминаю значение выражения 'ЧастьСтроки1 {Перем2_2} ЧастьСтроки2' в переменную "ИмяПеременной4_2"
	И я вывожу значение переменной "ИмяПеременной4_2"

	И Я запоминаю значение выражения 'ЧастьСтроки1 {Перем13_2} ЧастьСтроки2' в переменную "ИмяПеременной5_2"
	И я вывожу значение переменной "ИмяПеременной5_2"

	И Я запоминаю значение выражения '{ГлавныйКонтрагент1_2.Представление}' в переменную "ИмяПеременной6_2"
	И я вывожу значение переменной "ИмяПеременной6_2"
	
	И Я запоминаю значение выражения '{ГлавныйКонтрагент1_2.Выражение}' в переменную "ИмяПеременной7_2"
	И я вывожу значение переменной "ИмяПеременной7_2"

	И Я запоминаю значение выражения '{СписокКонтрагентов1_2.ГлавныйКонтрагент2_2.Представление}' в переменную "ИмяПеременной8_2"
	И я вывожу значение переменной "ИмяПеременной8_2"
	
	И Я запоминаю значение выражения '{СписокКонтрагентов1_2.ГлавныйКонтрагент2_2.Выражение}' в переменную "ИмяПеременной9_2"
	И я вывожу значение переменной "ИмяПеременной9_2"
	
	И Я запоминаю значение выражения '{СписокКонтрагентов1_2.ГлавныйКонтрагент3_2.Выражение}' в переменную "ИмяПеременной10_2"
	И я вывожу значение переменной "ИмяПеременной10_2"
	
	И я запоминаю строку "Перем1_2" в переменную "ИмяПеременной11_2"
	И я вывожу значение переменной "ИмяПеременной11_2"

	И я запоминаю строку "ГлавныйКонтрагент1_2.Представление" в переменную "ИмяПеременной12_2"
	И я вывожу значение переменной "ИмяПеременной12_2"

	И я запоминаю строку "СписокКонтрагентов1_2.ГлавныйКонтрагент2_2.Представление" в переменную "ИмяПеременной13_2"
	И я вывожу значение переменной "ИмяПеременной13_2"

	И Я запоминаю значение выражения 'СписокКонтрагентов1_2.ГлавныйКонтрагент2_2.Выражение' в переменную "ИмяПеременной14_2"
	И я вывожу значение переменной "ИмяПеременной14_2"
	
