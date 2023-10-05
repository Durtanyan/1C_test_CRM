# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Проверка получения табилчного документ

	Как Разработчик я хочу
	Чтобы я мог получить табличный документ во всех случаях
	Для того чтобы я мог проверить его значение



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда я удаляю все элементы Справочника "Справочник3"
	Когда я создаю fixtures по макету "Макет"
	

Сценарий: Проверка значения табличного документа когда макет недоступен
	Когда В панели разделов я выбираю "Основная"
	И в панели функций я выбираю "Справочник3"
	Тогда открылось окно "Справочник3"
	И я нажимаю на кнопку "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И я устанавливаю флаг "Сделать макет недоступным"
	И я нажимаю на кнопку "Сформировать отчет"
	Затем Я задаю параметры чтения области макета "R1C1:R10C10"
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'       | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тестовый Элемент 1' | 'Нет'              | '*'            | ''                          | '1,2'           |
		| 'Тестовый Элемент 2' | 'Нет'              | '*'            | ''                          | '1,2'           |



	
Сценарий: Проверка значения табличного документа когда макет доступен
	Когда В панели разделов я выбираю "Основная"
	И в панели функций я выбираю "Справочник3"
	Тогда открылось окно "Справочник3"
	И я нажимаю на кнопку "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И я снимаю флаг "Сделать макет недоступным"
	И я нажимаю на кнопку "Сформировать отчет"
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'       | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тестовый Элемент 1' | 'Нет'              | '*'            | ''                          | '1,2'           |
		| 'Тестовый Элемент 2' | 'Нет'              | '*'            | ''                          | '1,2'           |