﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@IgnoreOnCIMainBuild
@tree
@ExportScenarios

Функционал: Экспортные сценарии один


Сценарий: Я вызываю подсценарий один с параметрами "Парам01" "Парам02"

	И Я запоминаю значение выражения '1' в переменную "Парам01"
	И Я запоминаю значение выражения '1' в переменную "Парам02"
	И Я вызываю подсценарий два с параметрами "Парам01" "Парам02"


Сценарий: Этот сценарий принимает одну таблицу Gherkin

	И для каждой строки таблицы я выполняю
		|'Колонка1'|'Колонка2'|
		|'Значение1'|'Значение2'|
		|'Значение3'|'Значение4'|
		
		И я вывожу значение переменной "Колонка1"
		И я вывожу значение переменной "Колонка2"



Сценарий: Этот сценарий принимает четыре таблицы Gherkin

	И для каждой строки таблицы я выполняю
		|'Колонка1'|'Колонка2'|
		|'Значение1'|'Значение2'|
		|'Значение3'|'Значение4'|
		
		И я вывожу значение переменной "Колонка1"
		И я вывожу значение переменной "Колонка2"

	И для каждой строки таблицы я выполняю
		|'Колонка3'|'Колонка4'|
		|'Значение1'|'Значение2'|
		|'Значение3'|'Значение4'|
		
		И я вывожу значение переменной "Колонка3"
		И я вывожу значение переменной "Колонка4"

	И для каждой строки таблицы я выполняю
		|'Колонка5'|'Колонка6'|
		|'Значение1'|'Значение2'|
		|'Значение3'|'Значение4'|
		
		И я вывожу значение переменной "Колонка5"
		И я вывожу значение переменной "Колонка6"

	И для каждой строки таблицы я выполняю
		|'Колонка7'|'Колонка8'|
		|'Значение1'|'Значение2'|
		|'Значение3'|'Значение4'|
		
		И я вывожу значение переменной "Колонка7"
		И я вывожу значение переменной "Колонка8"


Сценарий: Передача числового параметра экспорт 100
	И пауза 100