-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Stř 25. úno 2026, 23:34
-- Verze serveru: 8.0.44
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `biomaturita`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `image_areas`
--

CREATE TABLE `image_areas` (
  `id` bigint UNSIGNED NOT NULL,
  `obrazek_id` int NOT NULL,
  `nazev` varchar(500) NOT NULL,
  `x` int NOT NULL,
  `y` int NOT NULL,
  `vyska` int NOT NULL,
  `sirka` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `image_areas`
--

INSERT INTO `image_areas` (`id`, `obrazek_id`, `nazev`, `x`, `y`, `vyska`, `sirka`) VALUES
(1111, 111, 'Slinivka břišní ', 500, 910, 60, 60),
(1117, 117, 'Hltan', 565, 415, 35, 40),
(2111, 111, 'Apendix/Slepé střevo ', 240, 1710, 60, 60),
(2117, 117, 'Plicní váček', 1175, 715, 35, 35),
(3111, 111, 'Žaludek', 820, 695, 70, 70),
(3117, 117, 'Průduška', 630, 745, 40, 40),
(4111, 111, 'Tenké střevo', 725, 1330, 70, 70),
(4117, 117, 'Dutina nosní', 390, 225, 40, 40),
(5111, 111, 'Tlusté střevo', 440, 1095, 65, 65),
(5117, 117, 'Bránice', 400, 1050, 40, 40),
(6111, 111, 'Játra', 225, 545, 55, 55),
(6117, 117, 'Průdušinka', 450, 805, 30, 30),
(7111, 111, 'Konečník', 500, 1845, 50, 50),
(7117, 117, 'Dutina ústní', 380, 310, 25, 25),
(8111, 111, 'Žlučník', 220, 845, 60, 60),
(8117, 117, 'Průdušnice', 575, 615, 35, 35);

-- --------------------------------------------------------

--
-- Struktura tabulky `odpovedi`
--

CREATE TABLE `odpovedi` (
  `id` bigint UNSIGNED NOT NULL,
  `otazka_id` int NOT NULL,
  `text_odpovedi` text NOT NULL,
  `pravdivost` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `odpovedi`
--

INSERT INTO `odpovedi` (`id`, `otazka_id`, `text_odpovedi`, `pravdivost`) VALUES
(1111, 111, 'Průchodnou trávicí trubici', 0),
(1117, 117, 'Myokard', 0),
(1211, 211, 'Spongocoel', 0),
(1217, 217, 'Atrioventrikulární uzlík', 0),
(1311, 311, 'Mandibula', 0),
(1317, 317, 'Plicní tepna', 0),
(1411, 411, 'Trávicí enzym', 0),
(1417, 417, 'Tepny vedou krev do srdce', 0),
(1511, 511, 'Mají čtyřdílný žaludek', 0),
(1517, 517, 'V průduškách', 0),
(1611, 611, 'Dýchací orgán', 0),
(1617, 617, 'Stah komor', 0),
(1711, 711, 'Produkce enzymů', 0),
(1717, 717, 'Transport kyslíku', 0),
(1811, 811, 'Kousací', 0),
(1817, 817, 'Slezina', 0),
(1911, 911, 'Bachor', 0),
(1917, 917, 'Objem vzduchu při klidovém dýchání', 0),
(2111, 111, 'Neprůchodnou láčku s jedním otvorem', 1),
(2117, 117, 'Epikard', 0),
(2211, 211, 'Osculum', 1),
(2217, 217, 'Sinoatriální uzlík', 1),
(2311, 311, 'Radula', 1),
(2317, 317, 'Horní dutá žíla', 0),
(2411, 411, 'Vnitřní záhyb střeva zvětšující povrch', 1),
(2417, 417, 'Žíly mají silnější svalovinu', 0),
(2511, 511, 'Mají spirální střevo', 0),
(2517, 517, 'V plicních sklípcích', 1),
(2611, 611, 'Žvýkací aparát ježovek', 1),
(2617, 617, 'Relaxace srdce a plnění krví', 1),
(2711, 711, 'Zvětšení plochy sliznice', 1),
(2717, 717, 'Udržování osmotického tlaku', 0),
(2811, 811, 'Lízací', 0),
(2817, 817, 'Brzlík', 1),
(2911, 911, 'Čepec', 0),
(2917, 917, 'Zbytkový vzduch po výdechu', 0),
(3111, 111, 'Složený žaludek', 0),
(3117, 117, 'Endokard', 1),
(3211, 211, 'Choanocyt', 0),
(3217, 217, 'Hissův svazek', 0),
(3311, 311, 'Labium', 0),
(3317, 317, 'Aorta', 1),
(3411, 411, 'Jedový zub', 0),
(3417, 417, 'Tepny vedou krev ze srdce', 1),
(3511, 511, 'Mimotělním trávením', 1),
(3517, 517, 'V průdušnici', 0),
(3611, 611, 'Jedový aparát hadů', 0),
(3617, 617, 'Uzavření chlopní', 0),
(3711, 711, 'Emulgace tuků', 0),
(3717, 717, 'Podíl na srážení krve', 1),
(3811, 811, 'Bodavě sací', 1),
(3817, 817, 'Mandle', 0),
(3911, 911, 'Kniha', 0),
(3917, 917, 'Maximální objem vydechnutý po maximálním nádechu', 1),
(4111, 111, 'Spirální střevo', 0),
(4117, 117, 'Perikard', 0),
(4211, 211, 'Mezoglea', 0),
(4217, 217, 'Purkyňova vlákna', 0),
(4311, 311, 'Tyflosol', 0),
(4317, 317, 'Plicní žíla', 0),
(4411, 411, 'Slinivko-jaterní žláza', 0),
(4417, 417, 'Žíly vedou vždy odkysličenou krev', 0),
(4511, 511, 'Pomocí raduly', 0),
(4517, 517, 'V pohrudnici', 0),
(4611, 611, 'Trávicí žláza měkkýšů', 0),
(4617, 617, 'Zvýšení krevního tlaku', 0),
(4711, 711, 'Neutralizace kyseliny', 0),
(4717, 717, 'Imunitní obrana', 0),
(4811, 811, 'Sací', 0),
(4817, 817, 'Játra', 0),
(4911, 911, 'Slez', 1),
(4917, 917, 'Množství kyslíku v krvi', 0),
(10108, 108, 'Z celulózy', 0),
(10208, 208, 'Mitochondrie bakterie', 0),
(10308, 308, 'Gram pozitivní mají dvě membrány', 0),
(10408, 408, 'Replikační vidlička', 0),
(10508, 508, 'Pohyb bakterie', 0),
(10608, 608, 'Rozmnožování dělením', 0),
(10708, 708, 'Fotosyntézou', 0),
(10808, 808, 'Obalený virus má fosfolipidovou membránu', 1),
(10908, 908, 'Virová kapsida', 0),
(11008, 1008, 'Archea mají peptidoglykanovou stěnu', 0),
(11011, 1011, 'Žluč', 0),
(11017, 1017, 'Chřipka', 0),
(20108, 108, 'Z peptidoglykanu', 1),
(20208, 208, 'Místo v buňce obsahující chromozom', 1),
(20308, 308, 'Gram negativní mají tlustou buněčnou stěnu', 0),
(20408, 408, 'Mimochromozomální DNA nesoucí často rezistenci', 1),
(20508, 508, 'Produkce enzymů', 0),
(20608, 608, 'Přechod do klidového stadia pro přežití nepříznivých podmínek', 1),
(20708, 708, 'Oxidací anorganických látek', 1),
(20808, 808, 'Neobalený virus má membránu z hostitele', 0),
(20908, 908, 'Virová DNA zabudovaná do genomu hostitele', 1),
(21008, 1008, 'Archea mají etherové vazby v membráně', 1),
(21011, 1011, 'Pepsin', 0),
(21017, 1017, 'Tuberkulóza', 1),
(30108, 108, 'Z chitinu', 0),
(30208, 208, 'Zásobní váček', 0),
(30308, 308, 'Gram negativní mají dvě membrány a tenkou buněčnou stěnu', 1),
(30408, 408, 'Bakteriální bičík', 0),
(30508, 508, 'Horizontální přenos genetické informace', 1),
(30608, 608, 'Mutace DNA', 0),
(30708, 708, 'Kvašením cukrů', 0),
(30808, 808, 'Obalený virus nemá kapsidu', 0),
(30908, 908, 'Replikační počátek bakterie', 0),
(31008, 1008, 'Archea nemají ribozomy', 0),
(31011, 1011, 'Střevní šťáva', 1),
(31017, 1017, 'Zápal plic', 0),
(40108, 108, 'Z lipidů', 0),
(40208, 208, 'Ribozomální podjednotka', 0),
(40308, 308, 'Gram pozitivní se barví červeně', 0),
(40408, 408, 'Virová kapsida', 0),
(40508, 508, 'Tvorba spor', 0),
(40608, 608, 'Tvorba plazmidu', 0),
(40708, 708, 'Parazitismem', 0),
(40808, 808, 'Neobalený virus má spikeproteiny', 0),
(40908, 908, 'Plazmid', 0),
(41008, 1008, 'Archea jsou eukaryota', 0),
(41011, 1011, 'Ptyalin', 0),
(41017, 1017, 'Ateroskleróza', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `otazky`
--

CREATE TABLE `otazky` (
  `id` bigint UNSIGNED NOT NULL,
  `tema_id` int NOT NULL,
  `text_otazky` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `otazky`
--

INSERT INTO `otazky` (`id`, `tema_id`, `text_otazky`) VALUES
(108, 8, 'Z čeho je tvořena buněčná stěna bakterií?'),
(111, 11, 'Jaký typ trávicí soustavy mají žahavci?'),
(117, 17, 'Která vrstva srdeční stěny tvoří chlopně?'),
(208, 8, 'Co je nukleoid u bakterií?'),
(211, 11, 'Jak se nazývá vyvrhovací otvor u hub (Porifera)?'),
(217, 17, 'Kde vzniká primární vzruch řídící srdeční činnost?'),,
(308, 8, 'Jaký je rozdíl mezi Gram pozitivními a Gram negativními bakteriemi?'),
(311, 11, 'Jaký orgán slouží měkkýšům ke strouhání potravy?'),
(317, 17, 'Která céva odvádí okysličenou krev z levé komory?'),
(408, 8, 'Co je plazmid?'),
(411, 11, 'Co je tyflosol u kroužkovců?'),
(417, 17, 'Jaký je hlavní rozdíl mezi tepnami a žilami?'),
(508, 8, 'K čemu slouží sex pilus?'),
(511, 11, 'Jak pavouci tráví potravu?'),
(517, 17, 'Kde probíhá výměna plynů v plicích?'),
(608, 8, 'Co je sporulace?'),
(611, 11, 'Co je Aristotelova lucerna?'),
(617, 17, 'Co je diastola?'),
(708, 8, 'Jak získávají energii chemolitotrofní bakterie?'),
(711, 11, 'Jakou funkci má spirální řasa ve střevě paryb?'),
(717, 17, 'Jaká je funkce fibrinogenu?'),
(808, 8, 'Jaký je rozdíl mezi obaleným a neobaleným virem?'),
(811, 11, 'Jaké ústní ústrojí má komár?'),
(817, 17, 'Který orgán školí T-lymfocyty?'),
(908, 8, 'Co je provirus?'),
(911, 11, 'Která část žaludku přežvýkavců je nejpodobnější žaludku člověka?'),
(917, 17, 'Co je vitální kapacita plic?'),
(1008, 8, 'Jaký je hlavní rozdíl mezi archea a bakteriemi v membráně?'),
(1011, 11, 'Co neutralizuje tráveninu v dvanáctníku?'),
(1017, 17, 'Jaké onemocnění je způsobeno Mycobacterium tuberculosis?');

-- --------------------------------------------------------

--
-- Struktura tabulky `pexeso`
--

CREATE TABLE `pexeso` (
  `id` bigint UNSIGNED NOT NULL,
  `tema_id` int NOT NULL,
  `text_karty_1` text NOT NULL,
  `text_karty_2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `pexeso`
--

INSERT INTO `pexeso` (`id`, `tema_id`, `text_karty_1`, `text_karty_2`) VALUES
(108, 8, 'Peptidoglykan', 'Základní stavební složka buněčné stěny bakterií'),
(111, 11, 'Choanocyt', 'Límečková buňka hub zajišťující příjem potravy pomocí bičíku'),
(117, 17, 'Myokard', 'Srdeční svalovina'),
(208, 8, 'Nukleoid', 'Oblast v bakteriální buňce obsahující chromozom'),
(211, 11, 'Osculum', 'Vyvrhovací otvor u hub'),
(217, 17, 'Endokard', 'Vnitřní vrstva srdeční stěny tvořící chlopně'),
(308, 8, 'Plazmid', 'Mimochromozomální DNA často nesoucí geny rezistence'),
(311, 11, 'Gastrovaskulární dutina', 'Láčka s jedním otvorem sloužící k trávení i rozvodu živin'),
(317, 17, 'Sinoatriální uzlík', 'Primární centrum srdeční automacie'),
(408, 8, 'Sex pilus', 'Struktura umožňující bakteriální konjugaci'),
(411, 11, 'Protonefridie', 'Vylučovací orgán ploštěnců s plaménkovými buňkami'),
(417, 17, 'Aorta', 'Největší tepna vedoucí krev z levé komory'),
(508, 8, 'Sporulace', 'Tvorba spory při nepříznivých podmínkách'),
(511, 11, 'Tyflosol', 'Vnitřní záhyb střeva kroužkovců zvětšující jeho povrch'),
(517, 17, 'Kapilára', 'Nejmenší céva umožňující výměnu látek'),
(608, 8, 'Gram pozitivní bakterie', 'Mají tlustou buněčnou stěnu a barví se fialově'),
(611, 11, 'Radula', 'Chitinová páska se zoubky u měkkýšů ke strouhání potravy'),
(617, 17, 'Diastola', 'Fáze relaxace srdce a plnění krví'),
(708, 8, 'Gram negativní bakterie', 'Mají dvě membrány a barví se červeně'),
(711, 11, 'Hepatopankreas', 'Slinivko-jaterní žláza měkkýšů a korýšů'),
(717, 17, 'Fibrinogen', 'Plazmatická bílkovina podílející se na srážení krve'),
(808, 8, 'Virion', 'Jedna kompletní virová částice'),
(811, 11, 'Mimotělní trávení', 'Trávení mimo tělo pomocí vypuštěných trávicích šťáv'),
(817, 17, 'Brzlík', 'Orgán zajišťující dozrávání T-lymfocytů'),
(908, 8, 'Kapsida', 'Bílkovinný obal viru tvořený kapsomerami'),
(911, 11, 'Aristotelova lucerna', 'Žvýkací aparát ježovek tvořený pěti zuby'),
(917, 17, 'Vitální kapacita plic', 'Maximální objem vzduchu vydechnutý po maximálním nádechu'),
(1008, 8, 'Provirus', 'Virová DNA začleněná do genomu hostitele'),
(1011, 11, 'Spirální řasa', 'Záhyb ve střevě paryb zvětšující plochu pro vstřebávání'),
(1017, 17, 'Pohrudnice', 'Blána vystýlající vnitřní stranu hrudníku'),
(1108, 8, 'Retrovirus', 'RNA virus využívající reverzní transkriptázu'),
(1111, 11, 'Endostyl', 'Řada rýh v hltanu pláštěnců produkující sliz'),
(1117, 17, 'Poplicnice', 'Blána pokrývající povrch plic'),
(1208, 8, 'Archea', 'Prokaryota s etherovými vazbami v membráně'),
(1211, 11, 'Slez', 'Čtvrtá část žaludku přežvýkavců s kyselým prostředím'),
(1217, 17, 'Ateroskleróza', 'Ukládání cholesterolu do cévní stěny vedoucí k jejímu zúžení');

-- --------------------------------------------------------

--
-- Struktura tabulky `poznavacka`
--

CREATE TABLE `poznavacka` (
  `id` bigint UNSIGNED NOT NULL,
  `tema_id` int NOT NULL,
  `obrazek_path` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `poznavacka`
--

INSERT INTO `poznavacka` (`id`, `tema_id`, `obrazek_path`) VALUES
(111, 11, 'images/ts.jpg'),
(117, 17, 'images/ds.png'),

-- --------------------------------------------------------

--
-- Struktura tabulky `tema`
--

CREATE TABLE `tema` (
  `id` bigint UNSIGNED NOT NULL,
  `nazev` varchar(500) NOT NULL,
  `obsah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Vypisuji data pro tabulku `tema`
--

INSERT INTO `tema` (`id`, `nazev`, `obsah`) VALUES
(8, 'Protaryota a viry', 'BAKTERIE\r\n- buněčná stěna – z peptidoglykanu, životně důležitá, enzym lysozym – rozkládá b.s. (slzy)\r\n- cytoplazmatická membrána – z fosfolipidů\r\n- cytoplazma – tekutina cytosol\r\n- kapsula – chrání před fagocytózou, na b.s., z proteinů nebo sycharidů\r\n- cytoskelet – není úplný, mají analogy aktinu a tubulinu – vytvářejí vláknité struktury, ovlivňují růst a dělení buňky\r\n- cyklický chromozom – připojen 1 místem na c.m. = replikační počátek = ori, nukleoid = místo v bakterii, kde se nachází chromozom, není to šroubovice\r\n- prokaryotní bičík – rotační, zasazen do cytoplazmy (bazální aparát), není z cytoskeletu (tvrdá struktura), složen z flagelinů (bílkoviny)\r\n- fimbrie – z bílkovin, umožňují pohyb, adhezi a vytvoření biofilmu\r\n- prokaryotní ribozomy – velká a malá podjednotka (protein a rRNA), translace bílkovin při proteosyntéze, menší než eukaryotní\r\n- sex pilus – neumožňuje pohyb, pouze adhezi k ostatní bakteriím (horizontální přenos genetické informace – plazmidu = bakteriální konjugace)\r\n- plazmidy – mohou ale nemusí, mimochromozomální DNA – nese geny, které často poskytují rezistenci vůči antibiotikům\r\n\r\nGRAMOVO BARVENÍ – obarvení na modro -> odbarvení -> přidání červené – G- (červená), G+ (fialová)\r\nGram pozitivní \r\n- bakterie s tlustou buněčnou stěnou a pod ní je cytoplazmatická membrána\r\n- obarví se lehce do modrofialova\r\nGram negativní \r\n– bakterie s tenkou buněčnou stěnou, ale dvěma membránami – cytoplazmatická a vnější nad b.s. (také fosfolipidová dvojvrstva)\r\n- obarví se červeně \r\n\r\nTvary: \r\n-> Koky (kulaté – stafylokok, streptokok)\r\n-> Tyčinkovité (bacil – streptobacil )\r\n-> Spirocheta, vláknitá, vibrilo, pučící…\r\n- Rozmnožování – v replikačním počátku započne replikace -> na obě strany kruhové DNA se rozběhnou replikační vidličky -> vznik identické DNA -> mateřská buňka se zaškrtí za vzniku 2 dceřiných buněk\r\n- Často dochází k mutacím kvůli chybovosti DNA polymerázy při replikaci -> mutace (většina negativních)\r\n- Sporulace – přechod do stadia spory (pro přežití v těžkých podmínkách), zastaví se metabolismus a rozmnožování – zhuštění cytoplazmy, vytvoření cortexu (další membrány), DNA se zreplikuje ale buňka se nerozdělí, pustí vodu – při vhodných podmínkách se zase změní zpět\r\n\r\nDělení bakterií:\r\nFototrofní \r\n- zdroj E = sluneční světlo\r\n- zdroj C – fotoautotrofové- fixace, fotoheterotrofové – z org. sloučenin\r\n- sinice, bakterie s bakteriochlorofylem\r\nLitotrofní \r\n- zdroj E = anorganické sloučeniny\r\n- litoheterotrofní, litoautotrofní (podle zdroje C)\r\nChemolitotrofní \r\n- získávání energie oxidací (rozkladem) anorganických látek\r\n- sirné bakterie\r\nChemoorganotrofní \r\n- získávání energie oxidací organických látek\r\n- kvašením -anaerobní (mléčné/alkoholové)\r\n- anaerobní dýchání – vezmou O2 z anorg. l. a oxidují org. l. (bahenní bakterie)\r\n- aerobní – O2 ze vzduchu oxiduje organické látky\r\n\r\nTypy bakterií : sirné, vazači dusíku, sinice, bahenní, rozkladači methanu, symbiotické …\r\nHlízkové - vážou vzdušný dusík v buňce ale anaerobní prostředí – mají symbiotické bakterie\r\n\r\nBakteriální flóra – bakterie ve střevech - komenzálismus (E-coli, Laktobacillus, Clostridie …)\r\n\r\nBAKTERIÁLNÍ CHOROBY\r\nPřes trávicí soustavu:\r\n- Cholera – vibrium cholere, přes vodu, průjmové onemocnění\r\n- Salmonelóza – Salmonella, přes vodu, průjmy, křeče, horečka, zvracení\r\n- Úplavice – Schigella, průjmové onemocnění\r\n- Klostridiová infekce – Clostridium, přítomna ve střevech běžně, přemnožení -> infekce, vylučuje butulotoxin -> může dojít k paralýze dýchacích svalů\r\n\r\nPřes dýchací soustavu:\r\n- Černý kašel – toxiny Bordetelly, horní cesty dýchací \r\n- Streptokoková angína/spála – přes kapénky, kontaktem, vyrážka, bolest v krku, vysoce nakažlivé\r\n- Tuberkulóza – Mycobakterium tuberculosis, vzduchem, rozpad plicní tkáně, nové kmeny napadají kostní dřeň\r\n- Stafylokoková infekce – záněty kůže, odolný vůči antibiotikům\r\n\r\n- Tetanus – Clostridium tetani (vylučuje toxiin), přes zranění (přes spory), strnutí šíje, křeče dýchacích svalů, anatoxin – očkovací látka se sníženou toxicitou\r\n\r\nPřes pohlavní styk:\r\n- Syfilida – Treponema, vřed na pohlavním ústrojí -> napadení tkání\r\n- Kapavka – Gonorea, zánět pohlavních orgánů, hnisavý výtok\r\n\r\n- Mor – Yersinia pestis, blecha morová, nateklé uzliny, černý hnis\r\n- Borelioza – Borrelia, klíšťata, může napadnout i nervový systém\r\n\r\nAntibiotika \r\n- Alexander Fleming – penicilin\r\n- nadužívání -> rezistence\r\n\r\nVIRY\r\n- nebuněčné organismy/částice\r\n- nemají metabolismus a vykazují známky života (rozmnožování) pouze v hostitelské buňce, nevykazují známky pohybu\r\n- obalené a neobalené viry\r\n- virion = 1 virová částice\r\n- kapsida – bílkovinný obal složený z kapsomer (1 bílkovina), stálé uspořádání\r\n- fosfolipidová membrána – u obalených virů, na ní bývají často glykoproteiny nebo zbytky cytoplazmatické membrány z hostitelské buňky\r\n- spikeproteiny (glykoproteiny) a zbytky cytoplazmatické membrány slouží ke snazšímu proniknutí do hostitelské buňky\r\n- nukleová kyselina\r\n\r\nŽivotní cyklus:\r\npřichycení (díky povrchovým molekulám - specifické)\r\n-> průnik (fúze membrán nebo endocytóza – donucení buňky k fagocytóze)\r\n-> svlékání (rozpad kapsidy, uvolnění nukleové kys.)\r\n-> replikace (podle nukleové kyseliny)\r\n-> zrání (vyrobení kapsidy)\r\n-> uvolnění (obalené – pučení –> obalení membránou, neobalené – h.b. praskne)\r\n\r\nDĚLENÍ VIRŮ:\r\nDNA viry: \r\n- klasická transkripce a translace\r\n- dsDNA \r\n–> bakteriofágy\r\n-> herpes viry: papillomavirus -> rakovina děložního čípku\r\n-> poxviry ->pravé neštovice,\r\n-> EB -> infekční mononukleóza)\r\n- ss DNA - parvoviry)\r\n\r\nRNA viry: \r\n- + RNA – syntéza proteinů kapsidy, vytvoří si RNA polymerázu (s pomocí hostitelské buňky) -> přepíšou se do – a zpět do +\r\n- ssRNA+ - pikornaviry – dětská obrna – kapénková infekce, napadá CNS, hepatitida A\r\n- retroviry – reverzní transkriptáza -> DNA -> vložení do genomu hostitele (provirus) -> dělí se s virem (HIV)\r\n-RNA – nejsou schopni si vytvořit RNA polymerázu -> musí ji mít s sebou, přepis do + -> syntéza proteinů kapsidy a RNA replikázy (vezmou si ji pak s sebou) -> - \r\n- ssRNA- (spalničky, příušnice – zduření žláz, chřipka)\r\n\r\nPRIONY = infekční bílkovina (2 konformace – 1 dobrá, 2. špatná), CJD – degenerace mozku\r\n\r\nBakteriofágy\r\n- 2 cykli: lysogenní (virulentní) a lytický (temperovaný)\r\n- Lytický – injikuje DNA -> množení -> naplnění bakterie-> prasknutí bakterie\r\n- Lysogenní – injekce, DNA se zabuduje do genomu ->profág (latentní) -> hostitelská buňka se dělí s profágem -> profág se vytrhne -> lytický cyklus\r\n\r\nHIV \r\n- pohlavní choroba\r\n- způsobuje onemocnění AIDS\r\n- napadá imunitní systém (Th lymfocyty)\r\n- léčba – Antonín Holí - potlačení příznaků, prodlužuje dožití\r\nPravé neštovice \r\n– poxvirus, horečky, vyrážka -> selhání oběhové soustavy\r\n- Karel Raška – eradikoval je\r\n\r\nARCHEA\r\nPřežijí v extrémních podmínkách (Mrtvé moře, pH 0…)\r\nJednobuněčná prokaryota\r\n- cytoplazmatická membrána – fosfolipidová s etherovými vazbami, izopren, jednovrstevná\r\n- b.s. – pseudoglykanová\r\n- S vrstva – bílkoviny zanořené do membrány\r\n- archeální bičík – rotuje, bez flagelinu\r\n- ribozomy – jiné sekvence rRNA\r\n- na DNA více replikačních počátků\r\n- mají introny a exony – dále pak jen u eukaryotních buněk\r\n'),
(11, 'Fylogeneze trávicí soustavy', 'Funkce:\r\n- Příjem živin\r\n- Mechanické a chemické zpracování potravy\r\n- Vstřebávání živin\r\n- Vylučování\r\n\r\nTypy trávicí soustavy:\r\n1) Trávicí dutina – diblastica – neprůchodná trávicí soustava – pouze 1 otvor na vylučování i přijímání potravy, případně vyvrhovací otvor\r\n2) Trávicí trubice – triblastica - průchodná trávicí soustava – ústní otvor a řitní otvor\r\n\r\nBEZOBRATLÍ\r\nPORIFERA (ŽIVOČIŠNÉ HOUBY)\r\n- Choanocyty = límečkové buňky – vystýlají vnitřní dutinu (spongocoel)\r\n                                                         -bičík – přihání drobnou potravu\r\n                                                         - cytoplazmatický límeček ji fagocytuje\r\n- Stěna spongocoelu je zvrásněná – zvětšení povrchu, systém komůrek a kanálků\r\n- Mezoglea – roznáší živiny a zplodiny po těle\r\n- Osculum = vyvrhovací otvor – vede z vnitřní dutiny\r\n- Choanocyty jsou uspořádány několika způsoby: askon, sykon a leukon\r\n\r\nŽAHAVCI\r\n- Z entodermu vzniká trávicí soustava s jedním otvorem = láčka\r\n- Láčka = gastrovaskulární soustava (trávení a rozvod živin) – dutina s jedním otvorem, která slouží jak k přijímání, tak vylučování\r\n- Uvnitř láčky jsou fagocytující buňky, buňky vylučující trávicí enzymy\r\n\r\nPLOŠTĚNCI\r\n- Neprůchodná trávicí soustava\r\n- Často vychlípený svalnatý hltan\r\n- Jednoduché nebo větvené střevo – gastrovaskulární dutina – trávení, rozvod živin\r\n- U některých je ústní otvor na břišní straně (ploštěnky)\r\n- U některých nebyla vyvinuta vůbec (tasemnice) - příjem živin celým tělem\r\n- Vylučování – protonefridie s plaménkovou buňkou – rozvětvené kanálky\r\n\r\nKROUŽKOVCI\r\n- Trubicovitá, průchodná trávicí soustava\r\n- Ústní otvor na druhém článku\r\n- Hltan, svalnatý žvýkací žaludek, žláznatý žaludek, střevo, řitní otvor\r\n- Potrava trávena trávicími enzymy\r\n- Tyflosol – vnitřní záhyb střeva – zvětšují povrch\r\n\r\nMĚKKÝŠI\r\n- První s plně průchozí trávicí soustavou\r\n- Trubicová\r\n- Ústní otvor – radula = „jazyk“ – páska z chitinu pokryta zoubky –> strouhání potravy\r\n- Hltan, jícen žaludek\r\n- Hepatopankreas – slinivko-jaterní žláza\r\n- Řitní otvor – na okraji útrobního vaku\r\n- Hlemýžď – produkce celulázy z hepatopankreatu – štěpí celulózu\r\n- Hlavonožci – ústa vystužena rohovinou – tvar zobáku -> porcování potravy\r\n                     -vyústění jedových žláz do ústního otvoru\r\n\r\nČLENOVCI\r\n- Rozlišená trávicí trubice\r\n- Vyvinuté trávicí žlázy\r\n- Kolem ústního otvoru vždy přeměněné končetiny -> ústní ústrojí\r\n- Slinné žlázy – u suchozemských, příjem suché potravy\r\nPavouci\r\n- Úzký jícen -> mimotělní trávení – do kořisti vpustí trávicí šťávy, čekají až se rozloží a pozřou ji\r\nKorýši\r\n- Zpracování potravy nejdříve kusadly (mandibuly) a dvěma páry čelistí (maxily)\r\n- Příustní nožky\r\n- Hepatopankreas\r\nHmyz\r\n- Druhý pár maxil se přeměňuje na spodní pysk = labium\r\n- Makadlo – článkovitý přívěsek na čelistech (2 páry makadel)\r\n- Labrum = horní pysk (výběžek hlavy)\r\n- Jeden pár kusadel (mandibul)\r\n- Ústní ústrojí:\r\n       - Kousací – vývojově původní, nejrozšířenější, kusadla a čelisti (kobylky, brouci, švábi, vosy, housenky…)\r\n       - Sací – umožňuje sání nektaru (motýli, mouchy,…)\r\n       - Lízací – (včela, čmelák)\r\n       - Bodavě sací – sání šťáv z těl jiných živočichů/rostlin (komár, veš, blecha, ploštice,..)\r\n- Nemají hepatopankreas – místo něj mají sekretující buňky ve střevě\r\n- Střevo mají s výběžky – zvětšení plochy\r\n- Žvýkací žaludek často\r\n\r\nOSTNOKOŽCI\r\n- Ústní otvor na břišní straně těla a řitní na svrchní\r\n- Kolem trávicí trubice je prstenec\r\n- Z trávicí trubice vybíhají výběžky do těla\r\nJežovky\r\n- Aristotelova lucerna – žvýkací aparát – 5 dlátových zubů, které ovládají svaly \r\n- Hvězdice\r\n- Vychlípený žaludek\r\n- Mimotělní trávení\r\n- Řitní otvor na svrchní straně\r\nHadice\r\n- Abulakrální soustava – rozvod živin – neprůchodná!!\r\n\r\nSTRUNATCI\r\nPLÁŠTĚNCI\r\n- Hltan upraven k filtrování vody\r\n- Neprůchozí trávicí soustava\r\n- Ústní otvor, hltan, střevo, vyvrhovací otvor\r\n- Hltan je obalen žaberním vakem\r\n- Endostyl – řada rýh v hltanu -> produkce slizu\r\nBEZLEBEČNÍ\r\n- U ústního otvoru hmatová tykadla\r\n- Výřivý orgán v ústní dutině -> usměrnění potravy do hltanu\r\n- Jaterní vaky + střevo\r\n- Řitní otvor\r\nOBRATLOVCI\r\n- Čelisti spojené s lebkou\r\n- Průchozí trávicí soustava – trávicí trubice se dvěma otvory + orgány\r\n- U vodních obratlovců je hltan perforován žaberními štěrbinami\r\n\r\nParyby\r\n- Ústa, hltan, jícen, žaludek, střevo, řitní otvor - kloaka + slinivka břišní a játra se žlučníkem\r\n- Ostré zuby v několika řadách – neustále dorůstají, ze skloviny a dentinu\r\n- Tlusté střevo – se spirální řasou – zvětšuje plochu sliznice\r\n                         -ústí do něj slinivka a játra\r\n- Játra – funkce hydrostatického orgánu – plynový měchýř, nadnášení + vyrovnávání tlaku\r\n\r\nPaprskoploutví\r\n- Ústa, hltan, jícen, žaludek, střevo, řitní otvor + játra se žlučníkem a slinivka břišní\r\n- Ústa odpovídají způsobu života:\r\n- Svrchní – získávání potravy u hladiny vody\r\n- Koncová – dravé ryby\r\n- Spodní – sbírají potravu u dna\r\n- Neustálá výměna zubů, vznikají na čelistech, patře, žaberních obloucích\r\n- Cedění vody, polykání potravy\r\n- Perforovaný hltan\r\n- Vychlípenina jícnu -> plynový měchýř – hydrostatika – vyrovnávání tlaku + vznášení\r\n- Býložravci – dlouhé střevo, dravci – vyvinutý žaludek\r\n- Jeseter – střevo se spirální řasou, ostatní se slepými výběžky\r\n\r\nObojživelníci\r\n- Ústa, hltan, jícen, žaludek, střevo, kloaka + játra se žlučníkem a slinivka\r\n- Masožravci \r\n- Slinné žlázy, ozubené čelisti (ropucha zuby nemá)\r\n- Silný jazyk – vymršťovací a lepkavý\r\n- Polykání u žab – podílejí se oční bulvy – zatlačují potravu so hltanu\r\n- Vyvinutější střevo\r\n\r\nPlazi\r\n- Ústní dutina, hltan, jícen, žaludek, střevo, kloaka + játra se žlučníkem (velká) a slinivka\r\n- Masožravci (kromě želv a leguánů)\r\n- Homodontní chrup – všechny zuby stejné (výjimka – želvy – rohovinový zobák)\r\n- Slinné žlázy, u některých i jedové\r\n- Poslední část střeva dobře vyvinutá – vstřebávání vody in\r\n- Kloaka\r\n- Hadi – typy chrupu: - aglyphní – velké, bez jedu (škrtiči)\r\n                                    -opistoglyphní – malé zuby, v zadní části ústní dutiny je jedový zub – \r\n                                                                  trávicí enzymy\r\n                                    -solenoglyphní – málé zuby, jeden výklopný jedový zub vpředu (zmije)\r\n- Vyvinutý jazyk – vystřelovací -> chytání potravy (chameleon)\r\n- Šupinatí – rozeklaný jazyk – chemoreceptor (Jacobsonův orgán?)\r\n- Sekundární tvrdé patro – oddělena nosní a ústní dutina \r\n- Roztažitelný hltan a jícen -> pozření potravy – hadi\r\n- Želvy (býložravci) – slepé střevo\r\n- Pojídání písku -> lepší trávení\r\n\r\nPtáci\r\n- Nemají zuby \r\n- Čelisti -> zobák s ramfotékou (rohovina)\r\n- Jícen může být rozšířen ve vole (u semenožravých ptáků) – krmení mláďat (zásobárna, změkčení a natrávení potravy)\r\n- Žaludek rozdělený:\r\n- Žláznatý – chemické trávení\r\n- Svalnatý – mechanické trávení\r\n- Tenké střevo, slepá střeva, tlusté střevo (krátké)\r\n- Býložravci – ve slepém střevu mají symbiotické bakterie – trávení celulózy\r\n\r\nSavci:\r\n- Ústní otvor – tvrdé patro, heterodontní chrup, jazyk \r\n- Chrup:\r\n     Řezáky- štípání\r\n     Špičáky – trhání\r\n     Třenové zuby – kleště\r\n     Stoličky – rozmělnění potravy\r\n- Zub – sklovina, dentin (zubovina), dřeň, cement\r\n- Diastema – mezera mezi zuby\r\n- Slinné žlázy – 3 páry -> zvlhčení potravy, trávení polysacharidů – enzym ptyalin\r\n- Hltan – posun potravy\r\n              společná část dýchací a trávicí soustavy\r\n              3 části: nosohltanová, ústní část, hrtanová část\r\n- Jícen – svalová trubce – na začátku je příčně pruhovaná svalovina, dále k žaludku hladká\r\n- Žaludek – části: česlo – ústí jícnu do žaludku\r\n                             Klenba \r\n                             Tělo \r\n                             Vrátník – zúžená část, která vede do dvanáctníku\r\n                -nízké pH – kyselina chlorovodíková \r\n                - mucin – chrání sliznici před nízkým pH\r\n                -trávicí enzymy – pepsinogen -> díky pH na pepsin -> štěpí bílkoviny\r\n- Přežvýkavci žaludek – části: bachor – mikrobiální fermentace - předžaludek\r\n                                                  Čepec – mikrobiální trávení - předžaludek\r\n                                                  Kniha – zahuštění a drcení potravy\r\n                                                  Slez – nejpodobnější našemu žaludku, nízké pH\r\n                                     -rozdělen kvůli trávení rostlinné potravy\r\n- Střevo – trávení a vstřebávání živin \r\n             -rozděleno na tenké a tlusté\r\n             Tenké střevo – navazuje na žaludek \r\n                                     -má 3 části: dvanáctník, lačník a kyčelník\r\n                                     - dvanáctník – vtéká tam pankreatická šťáva (štěpení hlavně bílkovin a \r\n                                                               sacharidů) a žluč (emulgace tuků)\r\n                                                             -střevní šťáva – neutralizuje tráveninu\r\n                                     -lačník – peristalatické pohyby, klky – absorpce živin\r\n                                     - kyčelník – absorpce živin, přechází ve slepé střevo\r\n            Tlusté střevo – vstřebávání vody a elektrolytů, zahuštění -> stolice\r\n                                    -části: slepé střevo s červovitým výběžkem\r\n                                                Tračník (vzestupný, příčný, sestupný, esovitý)\r\n                                                Konečník \r\n- Střevo přežvýkavců – delší, zvětšené slepé střevo'),
(17, 'Oběhová a dýchací soustava člověka', 'OBĚHOVÁ SOUSTAVA\r\n- Vzniká z mezodermu\r\n- Tvořena srdcem a cévami\r\n\r\nFunkce:\r\n- Transport – dýchací plyny, živiny, odpadní látky metabolismu, hormony\r\n- Termoregulace – ohřátí krve v játrech -> do periferií těla\r\n- Udržuje homeostázi\r\n- Správná funkce kopulačních orgánů\r\n\r\nSRDCE\r\nDutý sval uložený v dutině hrudní \r\nZe srdeční svaloviny\r\nProtáhlé buňky s jedním jádrem a výběžky, které pomáhají předávat signál\r\nSvalovina mnohem mohutnější na levé straně (rozvod do těla), mohutnější na komorách než síních\r\nNení ovladatelná vůlí\r\n\r\nSrdeční stěna:\r\nEndokard – vnitřní vazivová výstélka dutin, tvoří chlopně\r\nMyokard – srdeční svalovina – mohutnější na levé straně\r\nEpikard – vnější vazivová vrstva\r\nPerikard – vnější vazivový obal\r\n\r\nStavba srdce:\r\n- Pravá část – odkysličená krev\r\n- Levá část okysličená krev\r\n- Horní, dolní dutá žíla\r\n- Pravá síň, levá síň\r\n- Pravá komora, levá komora\r\n- Plicní tepny, plicní žíly\r\n- Aorta\r\nChlopně: \r\n- cípaté \r\n–> trojcípá – mezi pravou síní a komorou\r\n-> dvojcípá – mezi levou síní a komorou\r\n- poloměsíčité \r\n-> chlopně plicnicového kmene\r\n-> chlopně aorty\r\n- brání zpětnému toku krve\r\n- nachází se i v žílách – napomáhají správnému toku krve, pomáhají krvi téct směrem nahoru – proti gravitaci\r\nŘízení srdce\r\n- Vlastní centrum automacie\r\n-> Primární - Sinoatriální uzlík (SA uzel)– v pravé stěně pravé síně místo v srdci, kde pravidelně vzniká elektrický signál\r\n-> Sekundární – Atrioventrikulární uzlík (AV uzel)– na rozhraní pravé síně a komor\r\n-> Hissův svazek – převádí vzruch ze síní do komor (Atrioventrikulární svazek)\r\n-> Tawarova raménka – rozdělení Hissova svazku na pravé a levé T. raménko – vedou do pravé a levé komory\r\n-> Purkyňova vlákna – rozvádí vzruch do mykokardu, kde si ho předávají buňky s výběžky\r\nDále je činnost ovlivňována hormony :\r\n- Adrenalin – zvyšuje srdeční činnost\r\n- Noradrenalin\r\n- Hormony ze štítné žlázy – thyroxin a trijodtyronin\r\n\r\nA vegetativními nervy\r\n- Sympatikus – urychluje\r\n- Parasympatikus – utlumuje\r\n\r\nSrdeční stah\r\n-> Podráždění SA uzlíku\r\n-> Systola síní a zaplnění komor krví\r\n-> Přestávka\r\n-> Přenos podráždění z pravé síně do komor\r\n-> Stah komor\r\n-> Krev je vytlačena do tepen\r\n-> Relaxace (diastola) – síně se plní krví\r\n- Průměrně 75 tepů za minutu\r\n- 1 stah – 70 – 100 ml krve\r\n- Systola 0,3 s\r\n- Diastola 0,5 s\r\n\r\nCÉVY\r\nTepny = arteria\r\n- Vede krev ze srdce (v plicním oběhu odkysličenou, v tělním okysličenou)\r\n- Silná vrstva hladké svaloviny (krev je rozváděna pod větším tlakem)\r\n- Vazivo\r\n- Výstélka\r\n\r\nŽíly = vena\r\n- Vedou krev do srdce (v plicním oběhu okysličenou, v tělní odkysličenou)\r\n- Tenčí vrstva svaloviny\r\n- Vazivo\r\n- Výstélka\r\n\r\nVlásečnice = kapiláry\r\n- Malé\r\n- 1 vrstva vazivových buněk\r\n- Přes její stěny přechází všechny typy látek (i leukocyty například = diapedéza)\r\n\r\nAorta\r\n- Tepna \r\n- Skládá se z: aortálního oblouku, hrudní a břišní aorta\r\n- Aortální oblouk – vychází z něj – hlavopažní kmen (-> pravá tepna podklíčková, pravá společná krkavice), levá společná krkavice, levá tepna podklíčková\r\n- Hrudní aorta – část sestupné aorty\r\n- Břišní aorta – sestupná aorta pod bránicí – vychází z ní žaludeční tepny, tepny sleziny, jaterní tepna, ledvinné tepny, dole se větví na kyčelní tepny\r\n\r\nPLICNÍ OBĚH\r\n- Malý oběh\r\n- Krev ze srdce do plic a zpět\r\n-> Z pravé komory jde odkysličená krev do pravé a levé plicní tepny\r\n-> Do plic\r\n-> Okysličení krve\r\n-> 4 plicními žílami se vrací krev do srdce, konkrétně do levé síně\r\nTĚLNÍ OBĚH\r\n- Velký oběh\r\n- Krev ze srdce do celého těla\r\n-> Okysličená krev je z levé komory vypuzena do aorty\r\n-> Z aorty pak vedou tepny, které se postupně větví na tepénky až na vlásečnice\r\n-> Krev se pomocí vlásečnice odkysličí (předávají kyslík orgánům, tkáním…)\r\n-> Odkysličená krev se pak vede pomocí žil z pět do srdce\r\n-> Žíly z horní části těla se sbíhají do horní duté žíly\r\n-> Žíly z dolní části těla se sbíhají do dolní duté žíly \r\n-> Horní a dolní dutá žíla pak ústí do pravé síně\r\n\r\n- Několik dalších oběhů je součástí tělního oběhu:\r\n-> Jaterní (vrátnicový) – shromažďuje krev z trávicí soustavy do jater -> dolní dutá žíla\r\n-> Ledvinný – aorta -> ledviny -> dolní dutá žíla\r\n-> Horní/ dolní systémový oběh – mozek a paže /dolní končetiny\r\n-> Srdeční – srdce musí být vyživováno – pomocí věnčitých (koronárních) tepen\r\n\r\nProudění krve\r\n- Proudění krve podporováno i kosterní svalstvem – svalová pumpa – kontrakce kosterní svaloviny napomáhá k návratu krve do srdce\r\n\r\nKrevní tlak \r\n- V žílách téměř nulový\r\n- V tepnách vysoký\r\n- Při systole – tlak stoupne\r\n- Při diastole – tlak klesne\r\n- Tlakový spád – hnací síla krevního oběhu\r\n-> Nízký krevní tlak – horší průtok krve -> horší zásobení -> např. mozku – mdloby\r\n-> Vysoký krevní tlak – vyčerpání srdce\r\n- Regulace kardiovaskulárním centrem v prodloužené míše\r\nKrev\r\nSložení:\r\n- Krevní plazma \r\n-> 90% vody, bílkoviny (albuminy, globuliny, fibrinogeny)\r\n-> albuminy – udržují stály osm. tlak, transportují látky jako hem, kovy, mastné kyseliny… , zdroj aminokyselin\r\n-> globuliny – transportní funkce\r\n-> fibrinogen – podíl na koagulaci krve\r\n-> zajišťuje přenos glukózy \r\n- Erytrocyty – krevní barvivo hemoglobin – přenos dýchacích plynů\r\n- Leukocyty – imunita\r\n- Trombocyty – krevní destičky – zástava krvácení a srážení krve\r\n\r\nLYMFATICKÝ SYSTÉM:\r\n- Transport živin a obranných složek organismu\r\n- Lymfa, lymfatické cévy, lymfatická tkáň (uzliny, slezina, mandle, brzlík) \r\n\r\nLymfatické cévy:\r\n- Odvádí z tkání tkáňový mok, který přefiltrují a vrací do krve\r\n- Tkáňový mok \r\n-> tekutina vyplňující prostor mezi buňkami \r\n-> vzniká filtrací krevní plazmy přes stěnu kapilár (složení téměř totožné s krevní plazmou) \r\n-> přenáší O2 ke tkáním a transportuje odpadní látky\r\n-Lymfa = míza \r\n-> přeměna tkáňového moku\r\n-> sbírána lymfatickými kapilárami šíří se do lymfatických uzlin\r\n\r\nLymfatické uzliny\r\n- Vstupují do nich lymfatické cévy\r\n- Poblíž velkých tepen\r\n- Filtrují lymfu\r\n\r\nSlezina\r\n- Dochází zde k degradaci erytrocytů\r\n- Tvorbě lymfocytů v bílé pulpě\r\n- Tvorba protilátek a imunokompetentních buněk\r\n- Zásobárna krve\r\n\r\nMandle\r\n- Koncentrovaná lymfatická tkáň\r\n- Kontaktní místa s antigeny – přijímání potravy, respirace\r\n\r\nBrzlík\r\n- Zajištění imunokompetence a školení T lymfocytů, aby správně fungovali\r\n\r\n- Proudění lymfy zajišťováno – stahy kosterního svalstva a hladké svaloviny, peristaltikou střev, dýchacími pohyby, činností srdce\r\n- Častá cesta pro metastáze nádorových buněk\r\n\r\nCHOROBY\r\n- Arterioskleróza – kornatění tepen – ztráta elasticity, tvrdnutí\r\n-> Ateroskleróza -  na stěnách cév se začne osazovat například cholesterol -> snížení průtoku krve – špatné zásobení kyslíkem případně může dojít k úplnému ucpání cévy\r\n-> Akutní infarkt myokardu, cévní mozková příhoda\r\n-> Vysoký krevní tlak\r\n-> Varixy – křečové žíly – zeslabené povrchové žíly dolních končetin, které se vakovitě rozšiřují\r\n-> Aneurysma – tepenná výduť – změna ve struktuře stěny cévy – poranění ateroskleróza\r\n\r\n\r\nDÝCHACÍ SOSUTAVA\r\n- Vzniká z entodermu\r\nFunkce:\r\n- Výměna dýchacích plynů\r\n- Řeč\r\n- Imunita – lymfatická tkáň – mandle\r\n- Odstraňování odpadních látek (CO2)\r\n- Termoregulace\r\n- Ohřívání vzduchu\r\nHorní cesty dýchací:\r\n- Nosní dutina \r\n- Ústní dutina\r\n- Hltan \r\n- Hrtan\r\nDolní cesty dýchací\r\n- Průdušnice\r\n- Průdušky\r\n- Plíce\r\nNosní dutina\r\n- Zevní nos, vlastní dutina nosní, vedlejší dutiny nosní\r\n- Předehřátí vzduchu\r\n- Zachycuje prachové částice, produkuje hlen\r\n- Nosní mandle – imunitní funkce\r\n- Čichový epitel\r\n- Rozdělena na dvě poloviny přepážkou, od dutiny ústní oddělena tvrdým patrem\r\n- Vlastní dutina nosní ústí do nosohltanu\r\n- 3 skořepy nosní – horní, střední, spodní\r\n\r\n- Vedlejší dutiny nosní \r\n-> čelní, dutina kosti čichové, dutina kosti klínové, dutina horní čelisti\r\n-> ohřívají vzduch, vyrovnávají tlak, slouží k artikulaci\r\n\r\nNosohltan\r\n- Ústí do něj Eustachova trubice\r\n- Nosohltanové mandle\r\nHltan\r\n- Orgán trávicí i dýchací soustavy\r\n- Rozděluje se na jícen a hrtan\r\nHrtan\r\n- Tvořen převážně chrupavkami\r\n- Začíná hrtanovou příklopkou – epiglottis – chrání před vniknutím potravy do dýchacích cest\r\n- Štítná chrupavka\r\n- Prstencová chrupavka\r\n- Hlasivkové chrupavky\r\n- Uloženy hlasivky\r\nPrůdušnice\r\n- Přední část vystužena průdušnicovými chrupavkami\r\n- Zadní část je vazivová\r\n- Dělí se na krční část a hrudní část\r\n- Uložena před jícnem\r\n- Velké množství hlenových žláz, řasinkový epitel – posouvají hlen směrem od plic\r\n- Větví se na průdušky\r\nPrůdušky\r\n- Pravá a levá \r\n- Levá je delší, pravá je tlustší\r\n- Chrupavčité trubice, které se zanořují do plic\r\n- Větví se na průdušinky\r\nPlíce\r\n- Pravá a levá\r\n- Pravá – 3 laloky\r\n- Levá – 2 laloky\r\n- Na povrchu plic – poplicnice – blána\r\n- Na vnitřní straně hrudníku – pohrudnice\r\n- Mezi poplicnicí a pohrudnicí je dutina – vytváří se tam podtlak, který roztahuje plíce\r\n- Silně prokrvené\r\n- Průdušinky –> postupně mizí řasinkový epitel\r\n- Plicní váčky –> složeny z plicních sklípků\r\n- Plicní sklípky \r\n–> probíhá na nich výměna plynů realizována difúzí\r\n-> obklopeny hustou sítí kapilár\r\n-> stěny sklípků tvořeny respiračním epitelem, který přiléhá na kapiláry\r\n\r\nŘízení dýchání\r\n- Prodloužená mícha – centrum neuvědomělého dýchání\r\n- Koncový mozek – centrum uvědomělého dýchání\r\n\r\nPlicní ventilace\r\n- Nádech a výdech\r\n- Vnitřní – výměna plynů mezi krví a tkáněmi\r\n- Vnější – difúze plynů mezi krví a plícemi\r\n\r\n- Nádech\r\n-> Vzduch je nasáván do plic pomocí tlakového spádu, který je vytvořen pomocí dýchacích svalů – bránice a mezižeberní svaly\r\n-> Bránice klesá, hrudník se zvedá\r\n-> Plíce se zaplňují vzduchem\r\n-> Aktivní děj\r\n\r\n- Výdech\r\n-> Pasivní děj, ale může být i aktivní\r\n-> Dochází k vypuzení vzduchu z plic\r\n-> Relaxace dýchacích svalů\r\n\r\n- Vdechovaný vzduch: 21% O2, 79% N2, 0,03% CO2\r\n- Vydechovaný vzduch: 16% O2, 79% N2, 4% CO2\r\n- Vitální kapacita plic – maximální objem vzduchu, který vydechneme po maximálním nádechu (ženy – 2,5 -3,5 litru, muži 3,5 – 4,5 litru)\r\n- Zbytkový vzduch – co zbyde v plicích po max. výdechu (0,5 litru)\r\n- Klidový výdech – 300 – 500 ml\r\n- Klidová dechová frekvence – 12/13  x za minutu\r\n- Kyslíkový dluh – svaly pracují při intenzivním fyzickém výkonu na kyslíkový dluh – redukují pyruvát na kyselinu mléčnou, po ukončení fyzické aktivity přetrvává zvýšené dýchání\r\n\r\nSpirometrie\r\n- Lékařská metoda – využití spirometru\r\n- Měří plicní ventilaci – nádech, výdech, objem plic\r\n- Zaznamenání do grafu závislosti plicního objemu na čase\r\n\r\nONEMOCNĚNÍ\r\nChřipka \r\n- virové onemocnění\r\n- šíření kapénkami\r\n- často mutuje -> každoročně nové očkování\r\n- horečky, bolesti hlavy, kloubů, kašel\r\nZápal plic \r\n- plicní sklípky se plní hlenem \r\n- infekční onemocnění\r\n- nejčastěji bakteriálního původu, ale může být i virové\r\nTuberkulóza \r\n– způsobuje bakterie Mykobakterium tuberculosis\r\n- bakterie proniká do plicní tkáně –> hnisání, kašel s krví\r\n'),

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `image_areas`
--
ALTER TABLE `image_areas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexy pro tabulku `odpovedi`
--
ALTER TABLE `odpovedi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idx_answers_question` (`otazka_id`);

--
-- Indexy pro tabulku `otazky`
--
ALTER TABLE `otazky`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idx_questions_topic` (`tema_id`);

--
-- Indexy pro tabulku `pexeso`
--
ALTER TABLE `pexeso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idx_memory_topic` (`tema_id`);

--
-- Indexy pro tabulku `poznavacka`
--
ALTER TABLE `poznavacka`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `idx_images_topic` (`tema_id`);

--
-- Indexy pro tabulku `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `image_areas`
--
ALTER TABLE `image_areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8118;

--
-- AUTO_INCREMENT pro tabulku `odpovedi`
--
ALTER TABLE `odpovedi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41018;

--
-- AUTO_INCREMENT pro tabulku `otazky`
--
ALTER TABLE `otazky`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- AUTO_INCREMENT pro tabulku `pexeso`
--
ALTER TABLE `pexeso`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1218;

--
-- AUTO_INCREMENT pro tabulku `poznavacka`
--
ALTER TABLE `poznavacka`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT pro tabulku `tema`
--
ALTER TABLE `tema`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
