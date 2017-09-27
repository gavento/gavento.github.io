---
layout: page
title: Studentské projekty
---
# Studentské práce a projekty

Vedu ročníkové projekty i diplomové práce na různá, většinou aplikovaná témata. U témat mě krom dobré myšlenky velmi zajímá
motivace a potencionální impakt (aby to mohlo být k něčemu užitečné) i hmatatelný výstup (ať už je jím sepsaný
důkaz či zveřejněný program či knihovna).

Tvorba tématu je společný proces: pro některá témata mám i konkrétní zadání, jiná přinesete vy sami a dotvoříme je spolu do zadání práce.
Projděte si též [seznam otázek k zamyšlení](#k-zamysleni).

Některé projekty je možné podpořit stipendiem či částečným úvazkem (podle aktuální grantové situace).
Pro ujasnění: odměna je za práci na navazujícím vědeckém článku či kontinuální práci na výsledném software,
není možné a etické odměňovat za samotnou diplomovou práci.
 
## Témata

Seznam témat, která mě nejvíce zajímají a ve kterých vím o vhodných problémech.
Obtížnost je takřka vždy volitelná a najít se často dá jak zajímavý ročníkový projekt, tak magisterská diplomka či téma pro PhD.

### Bioinformatika a genomické algoritmy

Rychlé algoritmy a programy pro práci s DNA sekvencemi.
Grafové vlastnosti [De Bruijn grafů](https://en.wikipedia.org/wiki/De_Bruijn_graph) DNA sekvencí,
[VG](https://github.com/vgteam/vg) (projekt reprezentující genom jako graf),
aproximace vzdálenosti v genomových grafech,
rozšíření [PBWT](https://alimanfoo.github.io/2016/06/21/understanding-pbwt.html),
[Eagle]() a jiné metody pro rychlé fázování dat (založené často na PBWT),
dotazovací (query) nástroj a jazyk pro genomická data (VCF/BCF).

### Teorie her

Framework a jazyk k modelování deskových her,
umělé inteligence k deskovým hrám s neúplnou informací,
simulování hráčů s omezenou racionalitou (škálování inteligence AI),
použití (i nedokonalé) umělé inteligence pro testování a vývoj prototypů deskových her
(například [First Snow](https://boardgamegeek.com/boardgame/225235/first-snow)
a další prototypy ve spolupráci s mým známým, jejich designérem).

*Kombinatorická teorie her* je naopak čistě matematická oblast. Otevřené otázky o
průzkumných (exploration games) a pronásledovacích (cop & robber, pursuit games) hrách na grafech,
speciálně pro různé třídy grafů.

### Rain scheduler

*Rain* je paralelizační framework a scheduler pro superpočítače založený na grafu závislostí úkolů, nástupce
[HuperLoom](https://code.it4i.cz/ADAS/loom), aktuálně ve vývoji.
Velmi zásadní komponentou takovho systému plánovač, u kterého je možné kombinovat statistické metody
(jako belief propagation a odhadování spotřeby zdrojů) a machine learning (učení z předchozích běhů).

### Rust

[Rust](https://www.rust-lang.org/en-US/) je moderní systémový jazyk (podobně jako C a C++) se zajímavými vlastnostmi a abstrakcemi
bez zpomalení programu, a se zárukami ohledně paměťové i vláknové bezpečnosti. A též s velmi aktivní komunitou. Sám ho též používám.
Většina témat se ale hodí i pro C, C++ a případně Python.

Algoritmy pro Rust: "grafový" relační framework (knihovna pro vytváření in-memory objektů se safe pointry na další objekty a obecně relacemi),
streamování a journal updatů takových objektů. PBWT datové struktury, suffixové stromy a další algoritmické knihovny.

Rust kompilátor a základní knihovny jsou zajímavou příležitostí pro to [přispět](https://www.rustaceans.org/findwork)
do žijícího a rostoucího projektu, a to včetně vntřností kompilátoru. Je snadné najít něco na úrovni RP.
Ty pokročilejší vyžaují hlubší porozumnění, ale zas jsou o to zajímavější, jako například
[rozšiřování typového systému](https://paper.dropbox.com/doc/Trait-system-LCgNlSbM5cPOyEyWdoqzW).

### Odolné (resilient) datové struktury a kódování

Datovou strukturu (graf, vektor čísel, etc.) je možné do paměti či na disk uložit mnoha způsoby. Je zajímavé najít taková kódování,
kde malé narušení uložených dat jen málo změní "význam" zakódované struktury. (Např. v grafech 1 bit-flip úplně zničí seznam sousedů, ale změní
jednu hranu v matici sousednosti.) V této otázce nejde o vývoj samoopravných kódů, i když je možné je použít jako bloky.
Viz třeba [Resilient Dictionaries](https://dl.acm.org/citation.cfm?doid=1644015.1644016)
[(PDF)](http://people.idsia.ch/~grandoni/Pubblicazioni/FGI09talg.pdf).

Low Density Parity Check (LDPC) kódy jsou založeny na řídkých závislostech mezi daty a kontrolními bity.
Více efektivní jsou ale pro větší kódované bloky, a ty se standardně dekódují celé. Pomocí belief-propagation by
šlo *lokálně* (pohledem na malé okolí testovaného bitu) otestovat jeho správnost i jej lokálně dekódovat a opravit.
Lokální LDPC tester a dekodér a jeho benchmark.


## <a name='k-zamysleni'></a>K zamyšlení

Než přijdete, zkuste se zamyslet nad tím, co od práce čekáte a co jí chcete dát. Například zkuste něco z otázek:

* Co si představujete, že bude hlavní náplní vaší činnosti na práci? (Např.: učení se nových věcí, vymýšlení konstrukcí, vět a důkazů, programování a testování, sepisování a podrobný výklad, praktické počítačové experimenty, ...)
* Co z toho nejvíc umíte? Co z toho vás nejvíc baví?
* Jaké předměty nebo témata vás nejvíc zatím bavily? Co z toho se chcete více naučit?
* Kolik budete mít na práci času? Jak k termínu odevzdání, tak v průběhu kvůli rozvrhu a dalším aktivitám. Jak vám jde plánování vlastního času?
* Hledáte spíš problém, který bude krásně čístý a abstraktní (a odtržený od reality), nebo spíše něco "aplikovanějšího" (a tím zas méně jasně zadaného a možná hůře uchopitelného)?
* Pokud budete chtít v práci programovat, jaké jazyky a nástroje umíte používat a které vás zajímají?
* Pokud budete chtít v práci programovat, má být výsledek spíš program (jako aplikace), nebo nějaká data či závěry z něj získaná? Máte radši vyladěné algoritmy, nebo hrubou sílu a velká data?
* Zvládnete číst odborné články či knihy v angličtině? Mohli nebo chtěli byste psát práci anglicky?
* U ročníkového projektu - chcete pokračovat Bc. prací, nebo je to samostatný malý projektík?
* Co je podle vás a pro vás největší pokrok vědy za posledních 20 let? A co matematiky? A informatiky?

{::comment}
## Předchozí a aktuální práce

* [Bc 2015] Veronika Slívová: Cops and robber game on directed complete graphs. Kombinatorická hra (podobná deskové hře Fantom staré Prahy) o pronásledování lupičů na orientovaných grafech a její teoretické vlastnosti.

* [Bc 2015] Anna Chejnovská: Optimisation using graph searching on special graph classes. Algoritmy na pokrývání grafů cestami na co-comparability grafech, inspirace viz [PDF].

* [RP 2015] Štěpán Šimsa: Framework Contest24 pro soutěže typu Challenge24 Sada knihoven a nástrojů pro usnadnění týmových soutěží v programování jako je Challenge24.

* [RP 2015] Petra Kaštánková: Online implementace karetních her typu Mariáš Online (a open-source) implementace pro hry typu Mariáš [Wikipedia] připravený pro implementaci umělé inteligence (rozšířeno na Bc. práci s Pavlem Veselým).

* [RP 2010] Roman Smrž: Transparentní odkládání dat pro Haskell a Happstack Perzistentní ukládání dat v Haskelu a speciálně ve frameworku Happstack, rozšíření Happstacku o líné načítání částí databáze z disku v rámci runtime Haskellu.
{:/comment}
