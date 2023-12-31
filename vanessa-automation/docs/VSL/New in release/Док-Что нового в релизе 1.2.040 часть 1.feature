﻿# language: ru
# encoding: utf-8
#parent ua:
@UA17_что_нового_в_версии
#parent uf:
@UF6_текстовые_и_видео_инструкции

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.040

 
//Контекст:
	//Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.040



	Дано видеовставка картинки 'ЛогоДляПервогоКадра' 'Привет! Я - Ванесса. В этом видео я расскажу, об основных изменениях в моём новом релизе: 1.2.040.'
	
	
	#[autodoc.ignorestep]	Расширение VAExtension, которое позволяет: #1194
	
	*Давайте пройдёмся по файлу истории и посмотрим, что там нового.
		Дано я нажимаю хоткей "r" "win"
		И Пауза 1
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		И я нажимаю сочетание клавиш "Ctrl+W"
		И Пауза 0.1
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\Changelog.md"
		И я нажимаю ENTER
		И Пауза 2
		Дано я нажимаю хоткей "home" "ctrl"
		//Затем клик на картинку "OpenPreviewVSCode"
		И Пауза 1
		//И я нажимаю сочетание клавиш "Ctrl+K"
		И Пауза 1
		//И я нажимаю сочетание клавиш "V"
		И Пауза 3
		//И я нажимаю сочетание клавиш "Ctrl+W"
		//Затем клик на картинку "ЗакрытьФайлChangelog"
		И Пауза 5
//		Попытка
//			Затем клик на картинку "ЗакрытьПустойФайлVSCode"
//		Исключение
		//Затем клик на картинку "ТекстИстория"
		И я снимаю флаг настройки Vanessa Automation "ПоказыватьОкноОстановкиВыполненияСценария"
		
		

		
	* В этом релизе очень много изменений, поэтому я расскажу только об основных.
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 0.1
		И прокрутка текста редактора вниз для инструкции
		И Пауза 4


		
	
	#[autodoc.ignorestep]	
	И пауза 2
	
	
	//Новые возможности	
	
	И видеовставка 'Интерактивная справка'
	* Теперь в Vanessa Automation есть 140 интерактивных уроков.
		Дано поиск строки в редакторе через буфер обмена 'Интерактивная справка. Часть 3. #1686'
	Дано текст диктора "Обязательно посмотрите эти уроки. В них много полезной информации."
	Дано текст диктора "Уроки также доступны в формате видео на ютуб, а также в формате PDF и Markdown."

	И видеовставка 'Поиск расхождений при сравнении строк'
	* Теперь ванесса умеет искать шаблон сравнения двух строк и выводить его в тексте ошибки.
		Дано поиск строки в редакторе через буфер обмена 'При сравнении значений полей, заголовков окон будет происходить попытка получить шаблон строки для сравнения. #1708'
	Дано текст диктора "Это позволяет при возникновении ошибки в сценарии понять как лучше исправить проблему."

 
	И видеовставка 'Автоинструкции'
	* Текстовые инструкции были серьёзно доработаны.
		Дано поиск строки в редакторе через буфер обмена 'Поддержка в текстовых автоинструкциях групп шагов как один шаг #1791'
	Дано текст диктора "Теперь в текстовых инструкциях можно использовать группы шагов также как это происходило в видео инструкциях."


	И видеовставка 'Редактор сценариев'
	* Появилась возможность в редакторе сценариев отображать картинки.
		Дано поиск строки в редакторе через буфер обмена 'Отображение в редакторе картинок #1790 Спасибо @lintest'
	Дано текст диктора "Это позволит сделать сценарии более наглядными."
	И видеовставка "Спасибо Денису Кандр^ашину за эту доработку!"


	И видеовставка 'Автоинструкции'
	* Появилась возможность при создании текстовых инструкций использовать стили CSS.
		Дано поиск строки в редакторе через буфер обмена 'Возможность добавлять стили CSS в HTML инструкции #1782 Спасибо @ViktorErmakov'
	И видеовставка "Спасибо Виктору Ермакову за эту доработку!"



	Дано текст диктора "Ещё были исправлены ошибки и сделано много других полезных доработок."
	И видеовставка "Подробности, как обычно, можно найти в файле Changelog.MD"
	
	И видеовставка "@lintest, @vikad, @DitriXNew, @lo0p3r \n @alkoleft, @hamulyak, @azheval, @atyutyakin \n @akademik1986, @pila86, @CryptKat, @artkor83 \n @1cgh, @PashaMak, @astrizhachuk, @mors1eska \n @ViktorErmakov, @demoninfernal, @Vovchik45 \n @chEEzys, @BarinovIN, @Severnity, @Lelushka \n @cinex-ru, @atyz2013, @vdykov, @evg-e \n @BelovaElena80, @AUrvantsev, @KSidelnikov \n " "Также спасибо всем контрибьютерам, которые участвовали в выпуске данного релиза"
								
	Дано текст диктора "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					