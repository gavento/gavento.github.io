---
layout: page
title: Základy kombinatoriky a teorie grafů (LS 2018)
---

Přednáška [NMIN331](https://is.cuni.cz/studium/predmety/index.php?&do=predmet&kod=NMIN331&skr=2017&fak=11320) probíhá v Pondělí 10:40 v K8, přednáší [prof. Jan Kratochvíl](https://kam.mff.cuni.cz/~honza/) a [Tomáš Gavenčiak](/). Pro představu o chystané látce viz [stránku loňské přednášky](https://kam.mff.cuni.cz/~valtr/min331.html).

Cvičení navazuje ve 12:20 tamtéž, cvičí [Martin Balko](https://kam.mff.cuni.cz/~balko/). Více viz [stránky cvičení.](https://kam.mff.cuni.cz/~balko/zktg1718/ZKTG.html)

Minulou přednášku vedl Pavel Valtr, stránka přednášky [zde](https://kam.mff.cuni.cz/~valtr/min331.html).

## Literatura

**[KzDM]** *J. Matoušek, J. Nešetřil:* Kapitoly z diskretní matematiky

**[KaG]** *T. Valla, J. Matoušek:* Kombinatorika a grafy I [[online]](https://iuuk.mff.cuni.cz/~valla/kg.html)

## Zkoušky

Zkoušky se zkládají z písemné přípravy na přiděleně téma a následné ústní části. Jsou vypsány tyto termíny:

* Úterý 5. 6. 14:00, S 226 (pracovna prof. Kratochvíla) [[SIS]](https://is.cuni.cz/studium/term_st2/index.php?do=zapsat&sub=detail&ztid=496480)
* Čtvrtek 21. 6. 9:00, S 226 (pracovna prof. Kratochvíla) [[SIS]](https://is.cuni.cz/studium/term_st2/index.php?do=zapsat&sub=detail&ztid=496481)
* Úterý 26. 6. 9:00, S 226 (pracovna prof. Kratochvíla) [[SIS]](https://is.cuni.cz/studium/term_st2/index.php?do=zapsat&sub=detail&ztid=496482)

## Probraná látka

### Přednáška 19. 2. (JK, MB)

Matice sousednosti grafu, mocniny matice sousednosti a počet sledů v grafu. Laplacián grafu a počet koster grafu pomocí determinantu Laplaciánu.

### Přednáška 26. 2. (TG, MB)

Obyčejné vyrvořující funkce a jejich aplikace. Definice vytvořujících funkcí a operací nad nimi včetně derivace, integrálu a konvoluce. Odvození vytvořujících funkcí přímou sumací, operacemi nad známými vyvořujícími funkcemi a z funkcionálních rovnic (například $$1+xf(x)=f(x)$$ pro posloupnost $$1, 1, 1, 1, ...$$). Význam konvoluce v posloupnostech. Odvození vytvřující funkce a explicitního vzorce pro Fibonacciho posloupnost.

*Zdroj:* [KzDM] Sekce 10.1 - 10.3.

### Přednáška 5. 3. (2x MB)

Pokračování o vytvořujících funkcích. Zobecněná binomická věta, počítání binárních stomů, uzávorkování a další cvičení. Viz též stránky cvičení.

*Zdroj:* [KzDM] Sekce 10.4 - 10.5.

### Přednáška 12. 3. (2x JK)

Toky v sítích: definice, řezy a elementární řezy, věta o dualitě, Ford-Fulkersonův algoritmus a důkaz korektnosti pro racionální kapacity, topologický důkaz existence maximálniho toku i pro reálné kapacity, věta o existenci celočíselného maximálního toku při celočíselných kapacitách.

Hallova věta a systémy různých reprezentantů (důkaz přes toky v sítích).
Věta o párování v bipartitiním grafu (všechny stupně jedné partity alespoň takové jako všechny stupně druhé partity implikuje perf. párování), důsledek o perf. párováních v regulárních bipartitních grafech.

*Zdroj:* [KaG] Kapitoly 2 a 4.

### Přednáška 19. 3. (2x TG)

Vcholová souvislost $$k_v(G)$$ a hranová souvislost $$k_e(G)$$ grafu, lemmata o monotonicitě při mazání hran, věta $$k_v(G)\leq k_e(G)$$.
Věty Ford-Fulkerson a Menger o vztahu hranové (resp. vrcholové) souvislosti a počtu hranově (resp. vrcholově) disjunktnich cest.
Důkaz Königovy věty o vrcholovém pokrytí v bipartitním grafu pomocí toků v síti.

*Zdroj:* [KaG] Kapitola 3.

*Cvičení:* Algoritmus Ford-Fulkerson může běžet libovolně dlouho (s vahami v $$\mathbb{Q}$$) či nekonečně douho (s vahami v $$\mathbb{R}$$, viz [Wikipedia](https://en.wikipedia.org/wiki/Ford%E2%80%93Fulkerson_algorithm#Non-terminating_example)). Doplňování latinských obdélníků na latinské čtverce. Dvojitě stochastická matice je afinní kombinací permutačních matic. Stabiní párování (stable marriage), existence a algoritmus.

### Přednáška 26. 3. (TG, MB)

Tutteho věta, Tutte-Berge formule (viz [Wikipedia](https://en.wikipedia.org/wiki/Tutte%E2%80%93Berge_formula), důkaz z Tutteho přidáním $$\text{deficiency}(G)$$ univerzálních vrcholů a nalezením perfektního párování).
Alternativní (přímý) důkaz Tutte-Berge popisuje D. West, Tutte z něj plyne přímo.
Gallai-Edmonds o struktuře maximálních párování (jen tvrzení a intuice; nebude zkoušeno).

*Zroj:* [KaG] Sekce 5.1, *D. B. West:* A short proof of the Berge–Tutte Formula and ... [[PDF]](http://www.cse.iitd.ernet.in/~naveen/courses/CSL851/galledm.pdf)

### Přednáška 2. 4. Není

Velikonoční pondělí.

### Přednáška 9. 4. (TG, MB)

Rovinné grafy: definice křivky a oblouku, nakreslení grafu oblouky a lomenými oblouky, ekvivalence existence obloukového a lomenicového nakreslení (náznak důkazu). Jordanova věta [[Wiki]](https://en.wikipedia.org/wiki/Jordan_curve_theorem) bez důkazu.

Eulerova formule (s náznakem topologického důkazu z Jordanovy věty), max. počet hran rovinného grafu (a z toho 5-degenerovanost) a rovinného grafu bez rojúhelníků. Nerovinnost $$K_{3,3}$$ a $$K_5$$ jako důsledek Eulerovy formule. Rovinnost je uzavřená na podgrafy, dělení hran a kontrakce hran. Kuratowského věta (jednodušší implikace plyne z předchozího).

Barevnost grafu, duál rovinného grafu a barevnost duálu (obarvení mapy), věta o 4 barvách (bez důkazu), věta o 5 barvách (dokázáno).

*Zdroj:* [KzDM] Kapitola 6.

### Přednáška 16. 4. (JK, MB)

Bloková struktůra grafu, ušaté lemma o vytváření 2-souvislých grafů.

*Zdroj:* [KzDM] Sekce 3.8. (neúplný)

### Přednáška 23. 4. (JK, MB)

Hamiltonovské kružnice grafu, Chvátalův uzávěr a postačující podmínky hamiltonovskosti, lízátkový graf, Smith-Thomasson věta o sudosti počtu ham. kružnic v grafech s pouze lichými stupni. 2-aproximační algoritmus pro metrický TSP.

*Zdroj:* [KG] Kapitola 6 (krom S-T a lízátkového grafu)

### Přednáška 30. 4. (2x JK)

Edmondsův algoritmus pro párování v obecných grafech: volné stříavé cesty, lemma o kontrakci "květů", Edmondsovy lesíky a následně algoritmus s důkazem správnosti (bez časové složitosti).

*Zdroj:* [KG] Sekce 5.2.

Ramseyovy věty: symetrické $$R_k(n)$$ a nesymetrické pro dvě barvy $$R(k,l)$$, odhad $$R_2(k,l) \le {k+l-2 \choose k-1}$$, odhad $$R_k(3) \le 1+k!e$$, Schurovo lemma. Ramsey pro $$p$$-tice (nebude zkoušen).

*Zdroj:* [KG] Kapitola 1, [KzDM] Kapitola 11.

### Přednáška 7. 5. (2x MB)

Dvojcvičení k přednášce 30. 4.

### Přednáška 14. 5. (TG, MB)

Úvod do vyčíslitelnosti: definice problému jako jazyka, definice rekurzivních a rekurzivně vyčíslitelných jazyků, halting problém a jeho nerozhodnutelnost. Definice výpočetních modelů: Turingův stroj a Random access machine a náznak jejich ekvivalence. Univerzální Turingův stroj. Další problémy ekvivalentní s halting problémem: dokazatelnost, Diofantické rovnice, Postův korespondenční problém.

*Zrdoj:* Skripta P. Kučery [[PDF]](http://ktiml.mff.cuni.cz/~kucerap/NTIN090/NTIN090-poznamky.pdf)

### Přednáška 21. 5. (TG, MB)

Definice tříd *P*, *NP* a *co-NP* pomocí nedeterministického Turingova stroje a pomocí existence "certifikátu" náležení do jazyka, *NP*-těžkost a *NP*-úplnost, připomenutí převodu mezi problémy (formálně jako jazyky). Zavedení základních *NP*-úplných problému: SAT, 3-SAT, $$k$$-barevnost grafu, Hamiltonovská kružnice, obchodní cestující, největší klika a nezávislá množina. Kontrast s podobnými problémy, které jsou v *P* (prvočíselnost, 2-barevnost). Důkaz Cook-Levinovy věty (*SAT* je NP-úplný problém) převodem výpočtu Turingova stroje s certifikátem na formuli popisující jeho výpočet.

Na cvičení byly přiklady dalších převodů. Na zkoušce bude očekávána znalost alespoň jednoho netriviálního převodu mezi *NP*-úplnými problémy.

*Zdroj:* Skripta Úvod do složitosti a NP-úplnosti V. Majerecha [[online]](http://ktiml.mff.cuni.cz/~maj/skripta.html)