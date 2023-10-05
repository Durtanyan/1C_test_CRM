﻿#language: ru

@tree

Функционал: Тестирование функционала конструктора номенклатуры

Как Тестировщик я хочу
иметь сценарий тестирования конструктора номенклатуры
чтобы иметь возможность протестировать номенклатуру на ошибки  


Сценарий: Я тестирую номенклатуру

	И Я подключаюсь к базе CRM
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы клиентов'
	Тогда открылось окно 'Заказы клиентов'
	И в таблице "Список" я активизирую поле с именем "СписокНомер"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ клиента 0000-000004 от *'
	И я нажимаю на кнопку с именем 'ПодменюЗаполнитьСмТакже_2'

	И я выполняю код встроенного языка
	"""bsl
		ПараметрКЭД_3 = Новый Массив;
		ПараметрКЭД_3.Добавить("250");
		ПараметрКЭД_3.Добавить("260");
		ПараметрКЭД_3.Добавить("650");
		// ПараметрКЭД_3.Добавить("320");
		// ПараметрКЭД_3.Добавить("800");
		// ПараметрКЭД_3.Добавить("420");

		ПараметрКЭД_4 = Новый Массив;
		ПараметрКЭД_4.Добавить("290");
		ПараметрКЭД_4.Добавить("300");
		ПараметрКЭД_4.Добавить("700");
		// ПараметрКЭД_4.Добавить("220");
		// ПараметрКЭД_4.Добавить("800");
		// ПараметрКЭД_4.Добавить("400");

		ПараметрКЭД_5 = Новый Массив;
		ПараметрКЭД_5.Добавить("2*Ф");
		ПараметрКЭД_5.Добавить("1*Ф");

		Контекст.Вставить("ПараметрКЭД_3", ПараметрКЭД_3);
		Контекст.Вставить("ПараметрКЭД_4", ПараметрКЭД_4);
		Контекст.Вставить("ПараметрКЭД_5", ПараметрКЭД_5);
	"""
	И я запоминаю количество строк таблицы "ТЧ_СписокНомеклатуры" как "КоличествоСтрок"	
	Если 'Контекст.ПараметрКЭД_3.Количество() = Контекст.ПараметрКЭД_4.Количество()' тогда
		И для каждого значения "Парам_1" из массива "$ПараметрКЭД_3$"
			И для каждого значения "Парам_2" из массива "$ПараметрКЭД_4$"
				И для каждого значения "Парам_3" из массива "$ПараметрКЭД_5$"

					И в поле с именем 'ПараметрКЭД_3' я ввожу текст '$Парам_1$'
					И в поле с именем 'ПараметрКЭД_4' я ввожу текст '$Парам_2$'
					И в поле с именем 'ПараметрКЭД_5' я ввожу текст '$Парам_3$'
					Если 'Контекст.КоличествоСтрок = 0' тогда
						И я нажимаю на кнопку с именем 'СформироватьСтроку'
						И я нажимаю на кнопку с именем 'ПолучитьЦену'
						И я устанавливаю флаг с именем 'РежимРедактирования'
					Если 'Контекст.КоличествоСтрок = 1' тогда
						И я нажимаю на кнопку 'Редактирование строки'	
						// И Пауза 1
						И я нажимаю на кнопку с именем 'ПолучитьЦену'			
					// И Пауза 1
					
		И я закрываю TestClient "crm_test"