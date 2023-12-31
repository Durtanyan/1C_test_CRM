﻿# language: ru

@lessons

Функционал: Интерактивная справка. Запись событий выполнения сценариев в файл.

Сценарий: Запись событий выполнения сценариев в файл

	* Привет! В этом уроке я расскажу тебе про запись событий сессии тестирования. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Эти настройки находятся тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЛогТекст' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Настройки записи событий сессии тестирования" UI Automation
			| 'Имя'                                        |
			| 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' |
	
	* Данный флаг включает запись событий в файл или консоль.
		И я делаю подсветку нескольких элементов VA с их заголовком "Включение записи событий" UI Automation
			| 'Имя'                                        |
			| 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' UI Automation
		И Пауза 1
	* Информация о событиях выполнения тестов может быть использована внешней системой, которая запускает сессию тестирования в Vanessa Automation.
	* Если флаг установлен, то будут записываться такие события как начало выполнения сценария и возникновения ошибки.
		И я делаю подсветку нескольких элементов VA с их заголовком "Включение записи событий" UI Automation
			| 'Имя'                                        |
			| 'ДелатьЛогВыполненияСценариевВТекстовыйФайл' |
		
	* Данный флаг определяет будет ли происходить запись событий в консоль
		И я делаю подсветку нескольких элементов VA с их заголовком "Запись в консоль" UI Automation
			| 'Имя'                 |
			| 'ВыводитьЛогВКонсоль' |

	* Этот флаг определяет нужно ли записывать событие выполнения каждого шага
		И я делаю подсветку нескольких элементов VA с их заголовком "Запись события выполнения шага" UI Automation
			| 'Имя'                         |
			| 'ВыводитьВЛогВыполнениеШагов' |

	* Данный флаг определяет нужно ли записывать дополнительную информацию по статистике выполнения тестов.
		И я делаю подсветку нескольких элементов VA с их заголовком "Запись дополнителной информации" UI Automation
			| 'Имя'                             |
			| 'ПодробныйЛогВыполненияСценариев' |

	* В этом поле нужно указать путь к файлу, в который будет происходить запись лога.
		И я делаю подсветку нескольких элементов VA с их заголовком "Имя файла лога" UI Automation
			| 'Имя'                            |
			| 'ИмяФайлаЛогВыполненияСценариев' |

	* Если данное поле оставить пустым, то запись данных в файл происходить не будет. При этом вывод данных в консоль будет работать.
		И я делаю подсветку нескольких элементов VA с их заголовком "Имя файла лога" UI Automation
			| 'Имя'                            |
			| 'ИмяФайлаЛогВыполненияСценариев' |

	* На этом всё, переходи к следующему уроку интерактивной справки.
