if (!hasInterface) exitWith {};
waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Aktualizacje serwera"];
player createDiarySubject ["Mandaty","Mandaty"];


/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Aktualizacje Serwera",
				"
					4 lipca 2016
					
					Dodano:
					Briefing na mapie
					
					Zmieniono:
					Nerf broni oraz wyposazenia Policji
					Wylaczono deszcz oraz zmiany pogody
					Zwiekszono wirtualny ekwipunek Policji oraz EMT
					Dodano parametry do niektorych obiektow na mapie
					
					Usunieto:
					Lawki z mapy - zostala tylko jedna przed bankiem
					
				"
		]
	];
	
	player createDiaryRecord ["Mandaty",
		[
			"Mandaty", 
				"
					 Wyciaganie broni w miejscu publicznym - $25,000 + konfiskata
					 Lekkomyslna jazda - $10,000 + odholowanie
					 Agresywna jazda - $8,000
					 Przekraczanie predkosci - $5,000
					 Zaklocanie spokoju - $8,000
					 Nieustapienie pierwszenstwa pojazdom uprzywilejowanym - $15,000
					 Niezatrzymanie sie przy znaku stop - $5,000
					 Prowadzenie pojazdu bez prawa jazdy - $25,000 + odholowanie
					 Nieustapienie pierwszenstwa - $4,500
					 Przejazd na czerwonym swietle - $4,500
					 Jazda bez odpowiednich swiatel - $6,000
					 Przebywanie w miejscu przestepstwa - $5,000
					 Ukrywanie tozsamosci - $2,500 + prace spoleczne + przeszukanie
				"
		]
	];
	
