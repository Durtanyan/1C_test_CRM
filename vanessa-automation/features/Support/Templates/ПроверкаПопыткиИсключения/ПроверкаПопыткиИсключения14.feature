﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты
@tree

@IgnoreOnCIMainBuild

Функциональность: ПроверкаПопыткиИсключения14

Сценарий: ПроверкаПопыткиИсключения14
	*Попытка 1

		Попытка
				Если "Число(kkk) = 1" Тогда
					И Я запоминаю в переменную "Test1" значение "01"
		Исключение
		
				И Я запоминаю значение выражения '1' в переменную "ИмяПеременной"
				
				
	*Попытка 2

		Попытка
		
				И я вывожу значение переменной "Test2"
		
		Исключение
				И Я запоминаю значение выражения '2' в переменную "ИмяПеременной"
