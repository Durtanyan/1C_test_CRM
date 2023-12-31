﻿# language: ru

Функциональность: Демонстрация особенностей передачи переменных в шаги, которые вычисляют выражение.

Сценарий: Демонстрация особенностей передачи переменных в шаги, которые вычисляют выражение.
	* Создание переменных
		И я запоминаю строку "Стр1" в переменную "МояПеременная1"
		И я запоминаю строку "Стр2" в переменную "МояПеременная2"

	* Использование переменной в выражении используя символы $
		И Я запоминаю значение выражения '"$МояПеременная1$" + "$МояПеременная2$"' в переменную "ПеременнаяТипаСтрока"

	* Использование переменной в выражении используя Контекст (для глобальных переменных КонтекстСохраняемый)
		И Я запоминаю значение выражения 'Контекст.МояПеременная1 + Контекст.МояПеременная2' в переменную "ПеременнаяТипаСтрока"
	
	* Использование переменной в шагах выполняющих фрагмент кода на встроенном языке
		И я выполняю код встроенного языка
		"""bsl
			Сообщить("ЗначениеСуммыДвухПеременных1=" + "$МояПеременная1$" + "$МояПеременная2$");
			Сообщить("ЗначениеСуммыДвухПеременных2=" + Контекст.МояПеременная1 + Контекст.МояПеременная2);
		"""
		
