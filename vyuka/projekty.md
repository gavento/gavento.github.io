---
layout: page
title: Studentské práce a projekty
---

Vedu ročníkové projekty i diplomové práce na různá aplikovaná témata; krom dobré myšlenky mě zajímá i poteciální impakt a výstup.

* ToC seed
{:toc}

[//]: # Některé projekty je možné podpořit stipendiem či částečným úvazkem (podle aktuální grantové situace). Pro ujasnění: odměna je za práci na navazujícím vědeckém článku či kontinuální práci na výsledném software, není možné a etické odměňovat za samotnou diplomovou práci.

## Témata

Tvorba tématu je společný proces; : pro některá témata mám i konkrétní zadání, jiná přinesete vy sami a dotvoříme je spolu do zadání práce. Projděte si též [seznam otázek k zamyšlení](#k-zamy%C5%A1len%C3%AD).

Obtížnost je takřka vždy volitelná a najít se často dá jak zajímavý ročníkový projekt, tak bakalářská či diplomová práce.

### Distribuované výpočty

#### Superrychlý adaptivní messaging framework

Navrhnout a naimplementovat minimalistický ale superrychlý messaging framework, který efektivně využije možnosti komunikačního média, ať je to TCP/IP, UDP, InfiniBand či sdílená paměť (na stejném stroji).

Paralelní výpočty a programy superpočítačích často komunikují pomocí [MPI](https://en.wikipedia.org/wiki/Message_Passing_Interface) či novějšího [GPI-2](https://en.wikipedia.org/wiki/Global_Address_Space_Programming_Interface)), microservices v cloudu pomocí různých RPC ([gRPC](https://grpc.io/), ...) či zpráv ([ZeroMQ](https://en.wikipedia.org/wiki/ZeroMQ), [AMPQ](https://en.wikipedia.org/wiki/Advanced_Message_Queuing_Protocol)). MPI a GPI-2 je super rychlé, ale existují jen na superpočítačích a jsou komplexní. RPC a message brokery jsou těžkopádné a pomalé. Ne každý systém umí pro komunikaci využít sdílenou paměť. 

Cíl je vytvořit knihovnu, která umožní asynchronně posílat zprávy (jen point-to-point) mezi programy na rychlé síti a využije k tomu optimální médium: sdílenou paměť na stejném stroji, GPI-2 tam, kde je InfiniBandsíť, UDP/IP či TCP/IP tam, kde není, nejlépe [zero-copy](https://lwn.net/Articles/726917/). Při chybě spojení korektně hlásit, ale bez zotavení. Na formátu obsahu zpráv nezáleží, ale smysl by dávaly například [FlatBuffers](https://google.github.io/flatbuffers/). Mělo by nad tím jít postavit jednoduché a rychlé RPC (totifikace a request-response, ne nutně integrace do event-loops). Implementace v C, [Rust](https://www.rust-lang.org/en-US/)u či C++ a volitelně pak s wrappery v Pythonu či jiném jazyce, opensource. Je třeba nastudovat a rozmyslet vlastnosti existujících řešení; má smysl udělat i jen část z toho.

#### Rain scheduler

[*Rain*](https://github.com/substantic/rain/) je paralelizační framework a scheduler pro task-based programming (pro velké, často vědecké výpočetní pipelines na superpočítačích) založený na grafu závislostí úkolů. Viz též dokumentace na [RtD](http://rain.readthedocs.io/en/latest/).

Velmi zásadní komponentou takového systému je plánovač, který velmi efektivně rozvrhne malé pipelines se známými parametry jednotlivých tasků, a přitom uspokojivě a rychle rozvrhne i obří pipelines bez známých parametrů. Existuje jednoduchý heuristický scheduler a je tak na čem stavět. Nejlepší cesta se zdá být iterativní belief propagation s jednoduchým učením se spotřeby úkolů.

Cílem je navrhnout a naprogramovat scheduler jako komponentu pro Rain a otestovat jej na různých typech pipeline. Implementace v [Rust](https://www.rust-lang.org/en-US/)u, opensource.

### Bioinformatika a genomické algoritmy

#### Variační grafy

Genetická rozmanitost druhu se tradičně zachycuje výčtem genetických variant, relativně nový přístup jsou variační grafy, jako například v relativně novém prokejtu [VG](https://github.com/vgteam/vg), obecněji též [De Bruijn grafy](https://en.wikipedia.org/wiki/De_Bruijn_graph) DNA sekvencí. Ve všech případech jde o obrovské grafy (řádově $$10^6 - 10^9$$ vrcholů).

Nabízí se konkrétní otázky:

* Prozkoumat různé grafové parametry této třídy. Empirické prozkoumávání reálných dat s navazující otázkou:
* Jaké algoritmy na takových grfech mohou být efektivní? Například odhady vzdálenosti a konektivity by zrychlyli existující algoritmy.
* Jak takové grafy vizualizovat? Návrh a implementace vizualizační knihovny vydá na samostatný projet a též by našel okamžité využití.
* Najít generativní model pro takové grafy, popsat základní statistické vlastnosti a srovnat jej s reálnými grafy (pomocí parametrů).
* [PBWT](https://alimanfoo.github.io/2016/06/21/understanding-pbwt.html) je základ mnoha algoritmů pro rychlé matchování genetických dat a existuje rozšíření na grafová data, viz [[1]](https://almob.biomedcentral.com/articles/10.1186/s13015-017-0109-9) a [[2]](https://www.sciencedirect.com/science/article/pii/S0304397517305285?via%3Dihub). Implementace a testování těchto datových struktur.

#### Dotazovací nástroj a jazyk pro genomická data

Existují nástroje, které nad jednotlivými genetickými sekvencemi či celými databázemi umí zodpovídat různé typy dotazů, ale nejsou systematické a často jde o command-line nástroje se spoustou parametrů. Dotaz například může být "výskyty sekvence X po kterých následuje sekvence Y nebo Z do vzdálenosti 200 a před kterými není bezprostředně sekvence W".

Cílem je navrhnout dotazovací jazyk a naprogramovat nástroj pro dotazování nad genetickými sekvencemi (uloženými například ve VCF/BCF souborech či vlastním formátu). Primárním cílem *není* optimalizovat dotazy pomocí přepisování dotazů či indexů (jako to dělají SQL databáze). Naopak cílem je především elegantní a strukturovaný jazyk, který se bude dobře používat. Implementace v C, Rustu či C++ (algoritmy mohou být v zásadě lineární scan dat, ale i tak dosti rychlý), nejlépe s jednoduchým online rozhraním (to není hlavní součást, ale program by měl běžet i jako server).

### Rust

[Rust](https://www.rust-lang.org/en-US/) je moderní systémový jazyk (podobně jako C a C++) se spoustou dobře navržených a přitom efektivních vlastností a efektivními abstrakcemi, se zárukami ohledně paměťové i paralelizační bezpečnosti (více např. viz [zde](http://www.oreilly.com/programming/free/files/why-rust.pdf)). Má velmi aktivní a vstřícnou komunitu, sám ho též používám.

#### Rust compiler development

Rust kompilátor a základní knihovny jsou zajímavou příležitostí pro to [přispět](https://www.rustaceans.org/findwork) do žijícího a rostoucího projektu, a to včetně vntřností kompilátoru. Je snadné najít něco na úrovni jednoho RP ale najdou se i zajímavější a hlubší témata jako například [rozšiřování typového systému](https://paper.dropbox.com/doc/Trait-system-LCgNlSbM5cPOyEyWdoqzW), [specializace pro generika](https://github.com/rust-lang/rfcs/blob/master/text/1210-impl-specialization.md) nebo [experimenty s GC](https://manishearth.github.io/blog/2016/08/18/gc-support-in-rust-api-design/). Nalezení tématu je na vás.

Informace k vývoji kompilátoru lze najít například na webu [Rust forge](https://forge.rust-lang.org/), vzniká též ale i [online guide](https://rust-lang-nursery.github.io/rustc-guide/) [[github]](https://github.com/rust-lang-nursery/rustc-guide/). Neoficiální rustdoc pro kompilátor najdete [zde](https://manishearth.github.io/rust-internals-docs/rustc/).

#### X v Rustu

Pokud máte rádi Rust a chtěli byste v něm naimplementovat nějaký svůj oblíbený algoritmus, datovou strukturu či jinou knihovnu, je možné to vzít jako RP. Některá témata se hodí i pro bakalářku či diplomku, ale měl by v nich být jako výrazný prvek elegantní a netriviální design, superefektivita či řešení technického problému. Výsledek musí být publikován jako kvalitní (i když třeba minimalistické) opensource projekt -- toto nemá smysl dělat "do šuplíku".

Například: "Grafový" relační framework (knihovna pro vytváření in-memory objektů se safe pointery na další objekty a obecně relacemi),
streamování a journal updatů takových objektů. PBWT datové struktury, suffixové stromy a další algoritmické knihovny. Implementace RPC a serializačních formátů. Zero-copy interface s kernelem (síť a )

### Teorie her

#### Umělá inteligence pro návrh deskových her

I nedokonalá umělá inteligence může hodně říct o kvalitě a hratelnosti deskové hry a to může dost pomoct s návrhem a testováním takové hry. Cílem je použít techniky algoritmické teorie her (ať už shannonovské hry či reinforcement learning) pro play-testing jednodušších deskových her a například odvodit, které tahy či karty jsou příliš silné či naopak málo hratelné. Můj známý Tomáš Uhlíř vyvýjí několik her, dobře analyzovatelná i vylepšitelná by byla například [First Snow](https://boardgamegeek.com/boardgame/225235/first-snow), ale jsou i další.

#### Framework pro specifikaci a ladění deskových her

Framework a jazyk k modelování deskových her. Cíl je umět snadno popsat stav, možné tahy a přechody (ať jako blackbox či v rámci popisného jazyka), specifikovat informaci známou různým hráčům a v neposlední řadě popsat strukturu informace pro základní vizualizaci stavu hry. Cílem by v první fázi měl být nástroj, kde můžete snadno popsat existující či navrhovanou hru a nějak omezeně ji hrát. (Cílem není mít herní server pro veřejnost, ale nástroj pro testování hry a ladění AI.)

Druhá část je po přepsání několika her do tohoto prostředí použít umělou inteligenci a nechat ji opakovaně hrát, a poté studovat statistiky her a co z nich plyne (například podmíněnou pravděpodobnost toho, že hráč vyhrál, když použil kartu X). Umělá inteligence bude buď speciální pro danou hru (kde se hodí), obecný reinforcement learning (plně existující software) či techniky jako [DeepStack](http://science.sciencemag.org/content/356/6337/508) (poslední je hlubší téma a je možné spolupracovat s autory článu z MFF a FELu).

### Resilient computation

#### Odolné datové struktury

Datovou strukturu (graf, vektor čísel, etc.) je možné do paměti či na disk uložit mnoha způsoby. Je zajímavé najít taková kódování, kde malé narušení uložených dat jen málo změní "význam" zakódované struktury. (Např. v grafech 1 bit-flip úplně zničí seznam sousedů, ale změní jednu hranu v matici sousednosti.) V této otázce nejde o vývoj samoopravných kódů, i když je možné je použít jako bloky. Viz třeba [Resilient Dictionaries](https://dl.acm.org/citation.cfm?doid=1644015.1644016)
[(PDF)](http://people.idsia.ch/~grandoni/Pubblicazioni/FGI09talg.pdf).

#### Paritní kódy pro distribuované úložiště

Cílem je analyzovat a implementovat konkrétní rodinu kódů pro velká distribuovaná úložiště, a to jak celkovou odolnost, tak schopnost průběžně opravovat neustálé výpadky a měnit typ kódování (a odolnosti) u jednotlivých souborů. Toto je aktivní projekt s ETH a bližší popis je TODO.

#### Lokální dekódování LDPC kódů

Low Density Parity Check ([LDPC](https://www.ics.uci.edu/~welling/teaching/ICS279/LPCD.pdf)) kódy jsou založeny na řídkých závislostech mezi daty a kontrolními bity. Více efektivní jsou ale pro větší kódované bloky, a ty se standardně dekódují celé. Pomocí belief-propagation je možné *lokálně* (pohledem na malé okolí testovaného bitu) otestovat jeho správnost i jej lokálně dekódovat a opravit. Cílem je tedy lokální LDPC tester a dekodér a jeho benchmark. Plikace jednodušších lokálních dekodérů v distribuovaných úložištích například [zde](https://arxiv.org/abs/1710.05615).

## K zamyšlení

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

## Předchozí a aktuální práce

* [Mgr 2017] Anastasia Lebedava: Enhancing panel-based genome phasing with read-based information. Rozšiřování algoritmů pro genetické fázování založených na PBWT pomocí readů.

* [Bc 2015] Veronika Slívová: Cops and robber game on directed complete graphs. Kombinatorická hra (podobná deskové hře Fantom staré Prahy) o pronásledování lupičů na orientovaných grafech a její teoretické vlastnosti.

* [Bc 2015] Anna Chejnovská: Optimisation using graph searching on special graph classes. Algoritmy na pokrývání grafů cestami na co-comparability grafech.

* [RP 2015] Štěpán Šimsa: Framework Contest24 pro soutěže typu Challenge24 Sada knihoven a nástrojů pro usnadnění týmových soutěží v programování jako je Challenge24.

* [RP 2015] Petra Kaštánková: Online implementace karetních her typu Mariáš Online (a open-source) implementace pro hry typu Mariáš [Wikipedia] připravený pro implementaci umělé inteligence (rozšířeno na Bc. práci s Pavlem Veselým).

* [RP 2010] Roman Smrž: Transparentní odkládání dat pro Haskell a Happstack Perzistentní ukládání dat v Haskelu a speciálně ve frameworku Happstack, rozšíření Happstacku o líné načítání částí databáze z disku v rámci runtime Haskellu.
