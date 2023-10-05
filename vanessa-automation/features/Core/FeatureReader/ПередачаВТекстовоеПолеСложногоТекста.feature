# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA52_Работать_с_UI_прочее

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839





Функционал: Передача в текстовое поле сложного текста

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Передача в текстовое поле сложного текста
	Дано В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в поле с именем 'Наименование' я ввожу текст '111'
	И я перехожу к закладке с именем "ГруппаТД"
	И в поле с именем 'РеквизитТекстовыйДокумент' я ввожу текст
			|'\|\'Парам1\'\|\'Парам2\'\|'|
			|'\|\'Парам3\'\|\'Парам4\'\|'|
	И пауза 1
	Тогда элемент формы с именем "РеквизитТекстовыйДокумент" стал равен 
		|'\|\'Парам1\'\|\'Парам2\'\|'|
		|'\|\'Парам3\'\|\'Парам4\'\|'|
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Справочник1 (создание) *' в течение 20 секунд
	
	//И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	//И я жду закрытия окна 'Справочник1 (создание)' в течение 20 секунд
	
	