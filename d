<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Optik & Auge — Lernseite 9. Klasse</title>
<style>
:root{
  --tinte:#11162B;
  --tinte-weich:#3B4468;
  --papier:#F7F8FB;
  --karte:#FFFFFF;
  --linie:#DCE0EC;
  --rot:#D93A3A;
  --orange:#E2711D;
  --gelb:#A8780A;
  --gruen:#2E9E5B;
  --blau:#2F6BD8;
  --violett:#6C4BD1;
  --ok:#1F8A55;
  --fehl:#C32F2F;
  --radius:14px;
}
*{box-sizing:border-box}
html,body{margin:0;padding:0}
body{
  background:var(--papier);
  color:var(--tinte);
  font-family:"Inter",system-ui,-apple-system,"Segoe UI",Roboto,Helvetica,Arial,sans-serif;
  font-size:17px;
  line-height:1.55;
  -webkit-font-smoothing:antialiased;
}
h1,h2,h3{letter-spacing:-0.02em;line-height:1.15;margin:0}
h1{font-size:2.1rem;font-weight:750}
h2{font-size:1.4rem;font-weight:700;margin-bottom:.5rem}
h3{font-size:1.05rem;font-weight:700}
p{margin:.5rem 0}
button{font:inherit;cursor:pointer}
.wrap{max-width:1080px;margin:0 auto;padding:0 18px}

/* ---------- Kopf ---------- */
header{
  background:var(--tinte);
  color:#EEF1FA;
  padding:26px 0 0;
  border-bottom:6px solid transparent;
  border-image:linear-gradient(90deg,var(--rot),var(--orange),var(--gelb),var(--gruen),var(--blau),var(--violett)) 1;
}
.kopfzeile{display:flex;flex-wrap:wrap;gap:18px;align-items:flex-end;justify-content:space-between}
header h1{color:#fff}
header .unter{color:#A9B2D4;margin:.3rem 0 0;font-size:.95rem}
.zaehler{
  background:rgba(255,255,255,.07);border:1px solid rgba(255,255,255,.16);
  border-radius:var(--radius);padding:10px 14px;font-size:.9rem;color:#C9D0EA;min-width:190px
}
.zaehler b{color:#fff;font-size:1.35rem;display:block;line-height:1.1}
nav{display:flex;gap:4px;margin-top:20px;overflow-x:auto;padding-bottom:0}
nav button{
  background:none;border:0;color:#A9B2D4;padding:11px 15px;border-radius:10px 10px 0 0;
  font-weight:600;white-space:nowrap
}
nav button:hover{color:#fff}
nav button[aria-selected="true"]{background:var(--papier);color:var(--tinte)}

/* ---------- Allgemein ---------- */
main{padding:26px 0 80px}
.panel{display:none}
.panel.aktiv{display:block}
.karte{background:var(--karte);border:1px solid var(--linie);border-radius:var(--radius);padding:18px 20px;margin:14px 0}
.hinweis{color:var(--tinte-weich);font-size:.94rem}
.leiste{display:flex;flex-wrap:wrap;gap:8px;align-items:center;margin:14px 0}
.chip{
  border:1px solid var(--linie);background:#fff;border-radius:999px;padding:6px 13px;
  font-size:.88rem;font-weight:600;color:var(--tinte-weich)
}
.chip[aria-pressed="true"]{background:var(--tinte);color:#fff;border-color:var(--tinte)}
.knopf{
  background:var(--tinte);color:#fff;border:0;border-radius:10px;padding:10px 18px;font-weight:650
}
.knopf.leer{background:#fff;color:var(--tinte);border:1px solid var(--linie)}
.knopf:disabled{opacity:.4;cursor:default}
:focus-visible{outline:3px solid var(--blau);outline-offset:2px}

/* ---------- Theorie ---------- */
.themenliste{display:grid;grid-template-columns:repeat(auto-fill,minmax(250px,1fr));gap:12px}
.thema{
  background:var(--karte);border:1px solid var(--linie);border-left:5px solid var(--f);
  border-radius:10px;padding:14px 16px;text-align:left;width:100%
}
.thema:hover{border-color:var(--f)}
.thema .nr{font-size:.8rem;color:var(--tinte-weich);font-weight:600}
.thema .ti{display:block;font-weight:700;margin-top:2px}
.theorieblock{border-left:5px solid var(--f);padding-left:16px;margin:22px 0}
.theorieblock ul{margin:.4rem 0 .4rem 1.1rem;padding:0}
.theorieblock li{margin:.25rem 0}
.merksatz{background:#EEF2FF;border:1px solid #D3DCFA;border-radius:10px;padding:10px 14px;margin:10px 0;font-weight:600}
.formel{font-variant-numeric:tabular-nums;background:#F2F4FA;border-radius:8px;padding:2px 7px;font-weight:650}

/* ---------- Linsen-Simulator ---------- */
.sim{background:var(--tinte);border-radius:var(--radius);padding:16px;color:#E7EBF8}
.sim svg{width:100%;height:auto;display:block;background:#0D1122;border-radius:10px}
.regler{display:grid;grid-template-columns:repeat(auto-fit,minmax(190px,1fr));gap:14px;margin-top:12px}
.regler label{font-size:.87rem;color:#AEB7D8;display:block}
.regler input{width:100%}
.simwerte{display:flex;gap:18px;flex-wrap:wrap;margin-top:10px;font-variant-numeric:tabular-nums;font-size:.95rem}
.simwerte span{color:#AEB7D8}
.simwerte b{color:#fff}

/* ---------- Karteikarten ---------- */
.flip{perspective:1200px;margin:16px 0}
.flipinner{position:relative;min-height:230px;transition:transform .5s;transform-style:preserve-3d;cursor:pointer}
.flip.um .flipinner{transform:rotateY(180deg)}
.seite{
  position:absolute;inset:0;backface-visibility:hidden;border-radius:var(--radius);
  border:1px solid var(--linie);background:#fff;padding:26px;display:flex;align-items:center;
  justify-content:center;text-align:center
}
.seite.hinten{transform:rotateY(180deg);background:var(--tinte);color:#fff;border-color:var(--tinte);text-align:left}
.seite .fr{font-size:1.25rem;font-weight:700}
.seite.hinten div{font-size:1rem;line-height:1.6}

/* ---------- Aufgaben ---------- */
.frage{background:var(--karte);border:1px solid var(--linie);border-radius:var(--radius);padding:18px 20px;margin:16px 0}
.fkopf{display:flex;justify-content:space-between;gap:12px;align-items:baseline;margin-bottom:8px}
.fmarke{font-size:.78rem;font-weight:700;color:#fff;background:var(--f,var(--tinte));padding:3px 9px;border-radius:999px;white-space:nowrap}
.ftext{font-weight:650;font-size:1.06rem}
.optionen{display:grid;gap:8px;margin-top:12px}
.opt{
  text-align:left;background:#fff;border:1px solid var(--linie);border-radius:10px;padding:11px 14px;
  display:flex;gap:10px;align-items:flex-start
}
.opt:hover:not(:disabled){border-color:var(--tinte)}
.opt .bx{width:22px;height:22px;border:1px solid var(--linie);border-radius:6px;flex:none;
  display:grid;place-items:center;font-size:.8rem;font-weight:700;color:var(--tinte-weich)}
.opt.richtig{border-color:var(--ok);background:#EDF8F1}
.opt.richtig .bx{background:var(--ok);color:#fff;border-color:var(--ok)}
.opt.falsch{border-color:var(--fehl);background:#FCEFEF}
.opt.falsch .bx{background:var(--fehl);color:#fff;border-color:var(--fehl)}
input[type=text],input[type=number],select{
  font:inherit;padding:9px 12px;border:1px solid var(--linie);border-radius:9px;background:#fff;min-width:120px
}
input.richtig{border-color:var(--ok);background:#EDF8F1}
input.falsch{border-color:var(--fehl);background:#FCEFEF}
.luecke{display:inline-block;margin:3px 4px}
.rueck{margin-top:12px;border-radius:10px;padding:11px 14px;font-size:.96rem}
.rueck.gut{background:#EDF8F1;border:1px solid #BCE3CD}
.rueck.schlecht{background:#FCEFEF;border:1px solid #F0C9C9}
.rueck.neutral{background:#F2F4FA;border:1px solid var(--linie)}
.paare{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.paare button{text-align:left;background:#fff;border:1px solid var(--linie);border-radius:9px;padding:10px 12px;font-size:.95rem}
.paare button[aria-pressed="true"]{border-color:var(--blau);background:#EDF2FE}
.paare button.gepaart{border-color:var(--ok);background:#EDF8F1;color:var(--tinte-weich)}
.paare button:disabled{cursor:default}

/* ---------- Auge beschriften ---------- */
.augeraster{display:grid;grid-template-columns:1.15fr .85fr;gap:18px;align-items:start}
.augeraster svg{width:100%;height:auto;background:#fff;border-radius:10px;border:1px solid var(--linie)}
.augefelder{display:grid;gap:8px}
.augefeld{display:flex;gap:9px;align-items:center}
.augefeld .num{width:26px;height:26px;border-radius:50%;background:var(--tinte);color:#fff;display:grid;place-items:center;font-size:.85rem;font-weight:700;flex:none}
.augefeld select{flex:1;min-width:0}

/* ---------- Prüfung ---------- */
.fortschritt{height:8px;background:var(--linie);border-radius:99px;overflow:hidden;margin:10px 0 18px}
.fortschritt i{display:block;height:100%;background:var(--tinte);width:0;transition:width .3s}
.ergebnis{text-align:center;padding:26px}
.ergebnis .gross{font-size:3.4rem;font-weight:750;line-height:1;font-variant-numeric:tabular-nums}
.bilanz{display:grid;gap:6px;max-width:420px;margin:18px auto 0;text-align:left}
.bilanz div{display:flex;justify-content:space-between;border-bottom:1px dashed var(--linie);padding:5px 0;font-size:.94rem}

/* ---------- Plan ---------- */
.plan{display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:14px}
.plan ol{margin:.4rem 0 0 1.1rem;padding:0}
.plan li{margin:.35rem 0}
.korrektur{border-left:5px solid var(--rot);padding-left:16px;margin:18px 0}
.korrektur .falschsatz{color:var(--fehl);font-weight:600}
.korrektur .richtigsatz{color:var(--ok);font-weight:600}


/* ---------- Theoriebild, einfache Erklärung, Versuche ---------- */
.theoriebild{background:#fff;border:1px solid var(--linie);border-radius:12px;padding:12px;margin:14px 0}
.theoriebild svg{width:100%;height:auto;display:block;max-height:320px}
.einfach{background:#FFF8E8;border:1px solid #F0E0B8;border-radius:12px;padding:12px 16px;margin:14px 0}
.einfach p{margin:.35rem 0 0}
.einfachtitel{font-size:.78rem;font-weight:750;letter-spacing:.06em;text-transform:uppercase;color:#8A6A12}
.theorieblock h3{margin-top:18px}
.versuchmat{background:#F2F4FA;border-radius:9px;padding:9px 13px;font-size:.95rem}
.versuchschritte{margin:.5rem 0 .9rem 1.2rem;padding:0}
.versuchschritte li{margin:.3rem 0}

.begriffe{display:flex;flex-wrap:wrap;gap:7px;margin:8px 0}
.begriff{display:flex;align-items:center;gap:6px;border-radius:999px;padding:5px 12px;font-size:.9rem;font-weight:600;border:1px solid var(--linie)}
.begriff.da{background:#EDF8F1;border-color:#BCE3CD;color:#1F6E47}
.begriff.fehlt{background:#FCF4F4;border-color:#F0C9C9;color:#A33}
.begriff .haken{font-weight:800}

@media (max-width:720px){
  body{font-size:16px}
  h1{font-size:1.6rem}
  .augeraster{grid-template-columns:1fr}
  .paare{grid-template-columns:1fr}
  .kopfzeile{align-items:flex-start}
}
@media (prefers-reduced-motion:reduce){
  *{transition:none!important}
}
</style>
</head>
<body>
<header>
  <div class="wrap">
    <div class="kopfzeile">
      <div>
        <h1>Optik &amp; das Auge</h1>
        <p class="unter">Alles für den NT-Test, 9. Klasse — Theorie, Karteikarten, Übungen, Probetest</p>
      </div>
      <div class="zaehler">
        <b id="quote">0 %</b>
        <span id="quotetext">noch keine Aufgabe gelöst</span>
      </div>
    </div>
    <nav id="nav" role="tablist">
      <button role="tab" data-ziel="theorie" aria-selected="true">Theorie</button>
      <button role="tab" data-ziel="karten" aria-selected="false">Karteikarten</button>
      <button role="tab" data-ziel="ueben" aria-selected="false">Üben</button>
      <button role="tab" data-ziel="pruefung" aria-selected="false">Probetest</button>
      <button role="tab" data-ziel="korrekturen" aria-selected="false">Korrekturen</button>
      <button role="tab" data-ziel="plan" aria-selected="false">2-Tage-Plan</button>
    </nav>
  </div>
</header>

<main class="wrap">

  <section class="panel aktiv" id="p-theorie">
    <div class="sim">
      <h2 style="color:#fff">Sammellinse selber ausprobieren</h2>
      <p style="color:#AEB7D8;margin-top:0">Schieb den Gegenstand und die Brennweite. Die drei Hauptstrahlen werden automatisch konstruiert — genau so musst du es im Test von Hand zeichnen.</p>
      <svg id="linsensvg" viewBox="0 0 720 340" role="img" aria-label="Strahlenkonstruktion an einer Sammellinse"></svg>
      <div class="regler">
        <label>Gegenstandsweite g = <b id="gwert">10</b> cm
          <input type="range" id="g" min="1" max="16" step="0.5" value="10"></label>
        <label>Brennweite f = <b id="fwert">4</b> cm
          <input type="range" id="f" min="1.5" max="7" step="0.5" value="4"></label>
        <label>Gegenstandsgrösse G = <b id="Gwert">3</b> cm
          <input type="range" id="G" min="1" max="5" step="0.5" value="3"></label>
      </div>
      <div class="simwerte">
        <div><span>Bildweite b:</span> <b id="bwert">—</b></div>
        <div><span>Bildgrösse B:</span> <b id="Bwert">—</b></div>
        <div><span>Bild:</span> <b id="bildart">—</b></div>
      </div>
    </div>

    <p class="hinweis">Wähle ein Thema. Alles ist schon korrigiert — die Fehler aus deinen Notizen stehen im Reiter «Korrekturen».</p>
    <div class="themenliste" id="themenliste"></div>
    <div id="theorietext"></div>
  </section>

  <section class="panel" id="p-karten">
    <h2>Karteikarten</h2>
    <p class="hinweis">Karte antippen zum Umdrehen. Sag danach ehrlich, ob du es wusstest — die Karten, die du nicht konntest, kommen nochmal.</p>
    <div class="leiste" id="kartenfilter"></div>
    <div class="flip" id="flip">
      <div class="flipinner" id="flipinner">
        <div class="seite"><div class="fr" id="kfrage"></div></div>
        <div class="seite hinten"><div id="kantwort"></div></div>
      </div>
    </div>
    <div class="leiste">
      <button class="knopf leer" id="kdrehen">Umdrehen</button>
      <button class="knopf leer" id="knein">Wusste ich nicht</button>
      <button class="knopf" id="kja">Wusste ich</button>
      <span class="hinweis" id="kstand"></span>
    </div>
  </section>

  <section class="panel" id="p-ueben">
    <h2>Üben</h2>
    <p class="hinweis">Filtere nach Thema oder übe alles gemischt. Nach jeder Antwort bekommst du die Erklärung.</p>
    <div class="leiste" id="uebenfilter"></div>
    <div class="leiste" id="artfilter"></div>
    <div id="uebenliste"></div>
  </section>

  <section class="panel" id="p-pruefung">
    <h2>Probetest</h2>
    <p class="hinweis" id="pinfo">20 zufällige Aufgaben aus allen Themen, gemischt wie im echten Test. Erst am Schluss gibt es die Auswertung.</p>
    <div class="leiste"><button class="knopf" id="pstart">Probetest starten</button></div>
    <div class="fortschritt" id="pbalken" hidden><i></i></div>
    <div id="pinhalt"></div>
  </section>

  <section class="panel" id="p-korrekturen">
    <h2>Das stimmt in deinen Notizen nicht ganz</h2>
    <p class="hinweis">Sechs Stellen habe ich korrigiert, dazu ein paar Sachen, die in den Notizen fehlen und im Test drankommen können.</p>
    <div id="korrekturliste"></div>
  </section>

  <section class="panel" id="p-plan">
    <h2>Zwei Tage, ein Plan</h2>
    <p class="hinweis">Ungefähr 2 × 3 Stunden. Wichtig: nicht nur lesen — nach jedem Block sofort die Aufgaben zum Thema lösen.</p>
    <div class="plan" id="planliste"></div>
  </section>

</main>
<script>
/* ====================== DATEN ====================== */
const THEMEN = [
  {id:'licht',      nr:1,  titel:'Lichtquellen & Ausbreitung', farbe:'var(--rot)'},
  {id:'schatten',   nr:2,  titel:'Schatten',                    farbe:'var(--orange)'},
  {id:'reflexion',  nr:3,  titel:'Reflexion & Spiegel',         farbe:'var(--gelb)'},
  {id:'brechung',   nr:4,  titel:'Brechung',                    farbe:'var(--gruen)'},
  {id:'linsen',     nr:5,  titel:'Linsen',                      farbe:'var(--blau)'},
  {id:'bild',       nr:6,  titel:'Bildkonstruktion',            farbe:'var(--violett)'},
  {id:'lochkamera', nr:7,  titel:'Lochkamera',                  farbe:'var(--rot)'},
  {id:'auge',       nr:8,  titel:'Bau des Auges',               farbe:'var(--orange)'},
  {id:'netzhaut',   nr:9,  titel:'Sehen & Akkommodation',       farbe:'var(--gruen)'},
  {id:'fehler',     nr:10, titel:'Augenfehler & Dioptrien',     farbe:'var(--blau)'},
  {id:'farben',     nr:11, titel:'Farben & Farbmischung',       farbe:'var(--violett)'},
  {id:'farbsehen',  nr:12, titel:'Farbensehen & Farbenblindheit',farbe:'var(--rot)'},
  {id:'raum',       nr:13, titel:'Räumliches Sehen',            farbe:'var(--gruen)'}
];

const THEORIE = {
licht:{
  punkte:[
    '<b>Selbstleuchtende Körper</b> erzeugen eigenes Licht: Sonne, Kerze, Lampe, Glühwürmchen.',
    '<b>Beleuchtete Körper</b> leuchten nicht selbst, sie werfen Licht zurück: Mond, Tisch, Buch, du selbst.',
    'In einem <b>homogenen Medium</b> (überall gleich, z.B. nur Luft) breitet sich Licht <b>geradlinig</b> aus. Genau deshalb gibt es Schatten und deshalb funktioniert die Lochkamera.',
    'Licht braucht kein Material — es kommt auch durch das Vakuum des Weltalls.',
    'Lichtgeschwindigkeit im Vakuum: rund <span class="formel">300 000 km/s</span> (genau 299 792 km/s).'
  ],
  merk:'Selbstleuchtend = macht Licht. Beleuchtet = wirft Licht zurück.'
},
schatten:{
  punkte:[
    '<b>Kernschatten:</b> dorthin kommt von der Lichtquelle gar kein Licht.',
    '<b>Halbschatten:</b> dorthin kommt nur ein Teil des Lichts. Er entsteht nur, wenn die Lichtquelle ausgedehnt ist (gross) oder wenn es mehrere Lichtquellen gibt.',
    'Eine punktförmige Lichtquelle macht nur einen Kernschatten mit scharfem Rand.',
    'Die Form und Grösse des Schattens hängt ab von: Lichtquelle, Gegenstand und Schirm (Abstand!).',
    'Je näher der Gegenstand an der Lichtquelle steht, desto grösser wird sein Schatten.'
  ],
  merk:'Schatten gibt es nur, weil Licht geradeaus geht.'
},
reflexion:{
  punkte:[
    '<b>Reflexion:</b> Licht wird an einer Oberfläche zurückgeworfen.',
    'Das <b>Reflexionsgesetz</b>: <span class="formel">Einfallswinkel = Reflexionswinkel</span>.',
    'Wichtig: Beide Winkel werden <b>zum Lot</b> gemessen (die Senkrechte auf der Oberfläche), nicht zur Oberfläche.',
    'In eine Zeichnung gehören immer: einfallender Strahl, Lot, Einfallswinkel, Reflexionswinkel, reflektierter Strahl.',
    'Bild am <b>ebenen Spiegel</b>: gleich gross, aufrecht, seitenverkehrt, scheinbar gleich weit hinter dem Spiegel wie der Gegenstand davor — und <b>virtuell</b> (man kann es nicht auf einem Schirm auffangen).'
  ],
  merk:'Winkel immer zum Lot messen. Spiegelbild = virtuell.'
},
brechung:{
  punkte:[
    '<b>Brechung:</b> Licht geht von einem Stoff in einen anderen über und ändert dabei seine Richtung (z.B. Luft → Wasser, Luft → Glas).',
    'Grund: Im anderen Medium ist die Lichtgeschwindigkeit anders.',
    '<b>Zum Lot hin</b> gebrochen: Übergang in ein optisch <b>dichteres</b> Medium (Luft → Wasser).',
    '<b>Vom Lot weg</b> gebrochen: Übergang in ein optisch <b>dünneres</b> Medium (Wasser → Luft).',
    'Trifft der Strahl <b>senkrecht</b> auf die Grenzfläche (Einfallswinkel 0° zum Lot), wird er gar nicht gebrochen — er geht einfach geradeaus weiter.',
    'Beispiel: Der Strohhalm im Wasserglas sieht geknickt aus. Der Fisch im Teich scheint weiter oben zu sein, als er ist.'
  ],
  merk:'Dichter = zum Lot hin. Dünner = vom Lot weg.'
},
linsen:{
  punkte:[
    'Merkmale einer optischen Linse: sie ist <b>durchsichtig</b> und ihre Oberflächen sind <b>gewölbt</b> (gekrümmt).',
    '<b>Sammellinse (konvex):</b> in der Mitte <b>dicker</b> als am Rand. Sie bündelt parallel einfallende Strahlen in einem Punkt — dem <b>Brennpunkt F</b>. Dieser ist <b>reell</b>.',
    '<b>Zerstreuungslinse (konkav):</b> in der Mitte <b>dünner</b> als am Rand. Parallele Strahlen laufen danach auseinander. Verlängert man sie in Gedanken nach hinten, treffen sie sich im <b>virtuellen Brennpunkt</b>.',
    'Der Abstand zwischen Linsenmitte und Brennpunkt heisst <b>Brennweite f</b>.',
    'Gebrochen wird zweimal: beim Eintritt und beim Austritt aus der Linse. In der Zeichnung tut man so, als geschähe alles an der Linsenebene.',
    'Merkhilfe zur Form: <b>Sammellinse aussen dünn, innen dick</b> — <b>Zerstreuungslinse innen dünn, aussen dick</b>.'
  ],
  merk:'Der Brennpunkt ist nicht der Ort, wo das Bild scharf ist! Er ist nur der Punkt, in dem parallele Strahlen gebündelt werden.'
},
bild:{
  punkte:[
    'Die drei <b>Hauptstrahlen</b> an der Sammellinse: <b>Parallelstrahl</b> (läuft parallel zur optischen Achse hin und geht danach durch F), <b>Mittelpunktstrahl</b> (geht ungebrochen durch die Linsenmitte), <b>Brennpunktstrahl</b> (geht durch F vor der Linse und läuft danach parallel).',
    'Wo sich zwei dieser Strahlen schneiden, liegt der <b>Bildpunkt</b>. Zwei Strahlen reichen, der dritte ist die Kontrolle.',
    'Gegenstand <b>weiter weg als 2f</b>: Bild verkleinert, umgekehrt, reell.',
    'Gegenstand <b>genau bei 2f</b>: Bild gleich gross, umgekehrt, reell.',
    'Gegenstand <b>zwischen f und 2f</b>: Bild vergrössert, umgekehrt, reell.',
    'Gegenstand <b>näher als f</b>: Bild vergrössert, aufrecht, <b>virtuell</b> — das ist die Lupe.',
    'Rechnen (falls verlangt): <span class="formel">1/f = 1/g + 1/b</span> und <span class="formel">B/G = b/g</span>.'
  ],
  merk:'Reell = kann man auf einem Schirm auffangen. Virtuell = nur scheinbar, nicht auffangbar.'
},
lochkamera:{
  punkte:[
    'Von jedem Punkt der Kerzenflamme geht Licht geradlinig in alle Richtungen. Nur ein schmales Bündel kommt durch das Loch — deshalb entsteht auf dem Schirm ein Bild.',
    'Eigenschaften des Bildes: <b>umgekehrt, seitenverkehrt, reell</b> (es ist auf dem Schirm sichtbar), meistens verkleinert.',
    'Grösseres Loch: das Bild wird <b>heller</b>, aber <b>unschärfer</b> (jeder Gegenstandspunkt wird zu einem kleinen Fleck).',
    'Je näher die Kerze am Loch steht, desto <b>grösser</b> das Bild. Je grösser die Kerze, desto grösser das Bild. Je weiter der Schirm vom Loch weg ist, desto grösser das Bild.',
    'Ein grösserer Schirm ändert an der Bildgrösse <b>nichts</b> — es ist einfach mehr Platz drumherum.'
  ],
  merk:'Bild oben/unten und links/rechts vertauscht — genau wie auf deiner Netzhaut.'
},
auge:{
  punkte:[
    '<b>Hornhaut:</b> durchsichtige Vorderseite. Schützt das Auge und bricht das Licht am stärksten.',
    '<b>Regenbogenhaut (Iris):</b> der farbige Ring. Sie regelt, wie viel Licht hineinkommt.',
    '<b>Pupille:</b> das schwarze Loch in der Iris — die Öffnung, durch die das Licht eintritt.',
    '<b>Linse:</b> bricht das Licht zusätzlich und kann ihre Form ändern (Akkommodation).',
    '<b>Glaskörper:</b> gallertartige Masse, hält das Auge in Form.',
    '<b>Netzhaut:</b> hier entsteht das Bild. Sie enthält die Sinneszellen (Stäbchen und Zapfen).',
    '<b>Sehnerv:</b> leitet die Erregung zum Gehirn.',
    '<b>Aderhaut:</b> versorgt das Auge mit Nährstoffen und Sauerstoff. <b>Lederhaut:</b> weisse äussere Hülle, Schutz und Stabilität.',
    '<b>Blinder Fleck:</b> Austrittsstelle des Sehnervs, dort gibt es keine Sinneszellen. <b>Gelber Fleck:</b> Stelle des schärfsten Sehens.'
  ],
  merk:'Weg des Lichts: Hornhaut → Pupille → Linse → Glaskörper → Netzhaut → Sehnerv → Gehirn.'
},
netzhaut:{
  punkte:[
    'Die Linse wirkt wie eine Sammellinse. Auf der Netzhaut entsteht ein Bild, das <b>verkleinert, umgekehrt und seitenverkehrt</b> ist — und reell.',
    'Das <b>Gehirn</b> dreht das Bild wieder «richtig» und verarbeitet die Informationen.',
    '<b>Akkommodation:</b> Der Ringmuskel verändert die Wölbung der Linse, damit Gegenstände in verschiedenen Entfernungen scharf abgebildet werden. Nah = Linse stärker gewölbt (dicker). Fern = Linse flacher.',
    '<b>Zapfen:</b> für Farben, brauchen viel Licht, sitzen vor allem im gelben Fleck. <b>Stäbchen:</b> nur hell/dunkel, aber sehr lichtempfindlich — deshalb sehen wir in der Dämmerung kaum Farben.',
    'Konstruktion auf der Netzhaut: Parallelstrahl und Mittelpunktstrahl von der Flammenspitze aus zeichnen, Schnittpunkt = Bildpunkt auf der Netzhaut.'
  ],
  merk:'Auge scharf stellen heisst Akkommodation — die Linse ändert die Form, nicht ihren Ort.'
},
fehler:{
  punkte:[
    '<b>Kurzsichtigkeit:</b> Augapfel zu lang (oder Linse bricht zu stark). Das Bild entfernter Gegenstände entsteht <b>vor</b> der Netzhaut → in der Ferne unscharf. Korrektur: <b>Zerstreuungslinse</b>.',
    '<b>Weitsichtigkeit:</b> Augapfel zu kurz. Das Bild naher Gegenstände entsteht (rechnerisch) <b>hinter</b> der Netzhaut → in der Nähe unscharf. Korrektur: <b>Sammellinse</b>.',
    '<b>Alterssichtigkeit:</b> Die Linse verliert mit den Jahren ihre Elastizität und kann sich nicht mehr stark genug wölben. Nahes wird unscharf. Korrektur: <b>Sammellinse</b> (Lesebrille).',
    '<b>Brechkraft</b> in Dioptrien (dpt) = Kehrwert der Brennweite in Metern: <span class="formel">D = 1 / f</span>. Beispiel: f = 0,5 m → D = 2 dpt.',
    'Sammellinsen haben eine <b>positive</b> Brechkraft (+2 dpt), Zerstreuungslinsen eine <b>negative</b> (−2 dpt).',
    'Frau Meier (65) liest die Zeitung mit ausgestreckten Armen besser: Ihre Linse kann sich nicht mehr genug wölben. Ist der Text weiter weg, reicht die Wölbung wieder — das Bild wird schärfer, aber kleiner.'
  ],
  merk:'Kurzsichtig = zu langes Auge = Zerstreuungslinse. Weitsichtig = zu kurzes Auge = Sammellinse.'
},
farben:{
  punkte:[
    'Weisses Licht besteht aus vielen Farben. Ein <b>Prisma</b> zerlegt es in die Spektralfarben, weil die Farben unterschiedlich stark gebrochen werden (Violett am stärksten, Rot am schwächsten).',
    'Reihenfolge im Spektrum: rot, orange, gelb, grün, blau, violett.',
    '<b>Additive Farbmischung</b> (Licht, z.B. Bildschirm): Rot + Grün + Blau = <b>Weiss</b>.',
    '<b>Subtraktive Farbmischung</b> (Farbe, z.B. Drucker): Cyan + Magenta + Gelb = <b>Schwarz</b>.',
    'Warum ist ein Blatt grün? Es <b>absorbiert</b> (schluckt) alle Farben ausser Grün und <b>reflektiert</b> Grün. Im Herbst reflektiert es Rot und Gelb.',
    'Ein Gegenstand ist weiss, wenn er alles reflektiert, und schwarz, wenn er fast alles absorbiert. Absorbiertes Licht wird zu <b>Wärme</b> — deshalb wird ein schwarzes T-Shirt in der Sonne heisser.',
    'Beleuchtest du ein rotes Auto nur mit grünem Licht, sieht es schwarz aus: Es kann kein Rot reflektieren, weil keins da ist.'
  ],
  merk:'Die Farbe, die du siehst, ist die Farbe, die zurückgeworfen wird.'
},
farbsehen:{
  punkte:[
    'Auf der Netzhaut gibt es drei Zapfentypen: für <b>Rot-</b>, <b>Grün-</b> und <b>Blautöne</b>.',
    'Die Zapfen nehmen Licht unterschiedlicher Wellenlängen wahr, das <b>Gehirn</b> setzt daraus die Farbe zusammen.',
    'Fehlt ein Zapfentyp oder arbeitet er schlecht, sind bestimmte Farben schwer zu unterscheiden.',
    'Am häufigsten ist die <b>Rot-Grün-Sehschwäche</b> — Rot und Grün sehen dann ähnlich aus. Sie ist erblich und betrifft viel mehr Jungen als Mädchen.',
    'Sehr selten arbeiten alle drei Zapfentypen kaum oder gar nicht (Achromatopsie). Dann sieht man die Welt fast nur in Grautönen.'
  ],
  merk:'Zapfen = Farbe, Stäbchen = hell/dunkel.'
},
raum:{
  punkte:[
    'Die beiden Augen stehen ein Stück auseinander und sehen deshalb <b>leicht verschiedene Bilder</b>.',
    'Das Gehirn vergleicht diesen Unterschied und berechnet daraus die Tiefe — so entsteht räumliches Sehen.',
    'Je <b>näher</b> ein Gegenstand ist, desto <b>grösser</b> ist der Unterschied zwischen den beiden Bildern.',
    'Mit nur einem Auge schätzt man Entfernungen schlechter — man hat dann nur noch Hilfsmittel wie Grösse, Verdeckung und Schatten.',
    'Das Auge kann nicht gleichzeitig auf zwei verschieden nahe Objekte scharf stellen. Fixierst du das eine, siehst du das andere doppelt oder verschwommen.'
  ],
  merk:'Zwei Augen, zwei leicht verschiedene Bilder — das Gehirn macht daraus Tiefe.'
}
};

const KORREKTUREN = [
  {th:'linsen', falsch:'«Die Zerstreuungslinse besitzt keinen Brennpunkt.»',
   richtig:'Sie hat einen <b>virtuellen</b> Brennpunkt.',
   text:'Die Strahlen laufen nach der Linse auseinander. Verlängert man sie in Gedanken rückwärts, treffen sie sich doch in einem Punkt. Der ist nur nicht reell — man kann dort nichts auffangen. Weiter unten in deinen Notizen steht es schon richtig, oben widerspricht es sich.'},
  {th:'brechung', falsch:'«Wenn er genau 90° hat, wird er nicht gebrochen.»',
   richtig:'Nicht gebrochen wird der Strahl, wenn der <b>Einfallswinkel zum Lot 0°</b> beträgt.',
   text:'Das ist dasselbe wie 90° zur Oberfläche — aber im Test wird zum Lot gemessen, und da steht dann 0°. Schreib es lieber so: «Trifft der Strahl senkrecht auf die Grenzfläche, geht er ungebrochen weiter.»'},
  {th:'raum', falsch:'«Berechnen des durchschnittlichen Bildeinbruchs zwischen linkem und rechtem Auge.»',
   richtig:'Das Gehirn vergleicht den <b>Unterschied zwischen den beiden Bildern</b>.',
   text:'«Bildeinbruch» gibt es nicht. Der Fachbegriff wäre Querdisparation, aber «Unterschied der beiden Netzhautbilder» reicht völlig. Der zweite Teil deines Satzes stimmt: je näher, desto grösser der Unterschied.'},
  {th:'fehler', falsch:'«Weitsichtigkeit: Augapfel zu kurz, unscharfes Bild auf der Netzhaut.»',
   richtig:'Das Bild entstünde <b>hinter</b> der Netzhaut, darum ist es auf der Netzhaut unscharf.',
   text:'Die Ursache stimmt. Aber für die volle Punktzahl musst du sagen, <i>wo</i> das Bild entsteht — bei Kurzsichtigkeit davor, bei Weitsichtigkeit dahinter.'},
  {th:'auge', falsch:'«Die Linse bündelt das Licht.»',
   richtig:'Den grössten Teil der Brechung macht die <b>Hornhaut</b>, die Linse stellt fein scharf.',
   text:'Nicht falsch, aber unvollständig. Die Linse ist das verstellbare Teil (Akkommodation) — die eigentliche Sammelarbeit leistet die Hornhaut.'},
  {th:'bild', falsch:'Konstruktion mit g = 7 cm und f = 3 cm, abgelesen b = 5 cm.',
   richtig:'Rechnerisch sind es <b>b = 5,25 cm</b>.',
   text:'1/b = 1/3 − 1/7 = 4/21, also b = 5,25 cm. Deine Zeichnung war also gut — beim Ablesen darf man etwa einen halben Zentimeter danebenliegen.'},
  {th:'farbsehen', falsch:'Fehlt in den Notizen: die <b>Stäbchen</b>.',
   richtig:'Zapfen = Farbe, Stäbchen = hell/dunkel.',
   text:'Du hast nur die Zapfen notiert. Eine typische Testfrage ist «Warum siehst du in der Dämmerung kaum Farben?» — Antwort: weil dann fast nur die lichtempfindlicheren Stäbchen arbeiten, und die sehen keine Farben.'},
  {th:'auge', falsch:'Fehlt in den Notizen: <b>blinder Fleck</b> und <b>gelber Fleck</b>.',
   richtig:'Blinder Fleck = Austrittsstelle des Sehnervs ohne Sinneszellen. Gelber Fleck = schärfstes Sehen.',
   text:'Im Praktikumsblatt beginnt die Stunde genau mit dem Versuch zum blinden Fleck — das kommt mit hoher Wahrscheinlichkeit im Test vor.'}
];

const PLAN = [
  {tag:'Tag 1 — Licht und Linsen', dauer:'ca. 3 Stunden', punkte:[
    'Theorie 1–4 lesen (Licht, Schatten, Reflexion, Brechung) — 30 min. Danach sofort die Übungen zu diesen vier Themen.',
    'Theorie 5–6 (Linsen, Bildkonstruktion) — das ist der schwerste Teil, nimm dir 45 min.',
    'Am Simulator oben mit g und f spielen, bis du voraussagen kannst, ob das Bild grösser oder kleiner wird.',
    'Drei Konstruktionen von Hand auf Papier zeichnen: g > 2f, g zwischen f und 2f, g < f. Lineal benutzen.',
    'Lochkamera (Thema 7) durchlesen und das Lückenblatt AB 15.13 lösen.',
    'Zum Schluss: Karteikarten Themen 1–7 einmal komplett durch.'
  ]},
  {tag:'Tag 2 — Auge und Farben', dauer:'ca. 3 Stunden', punkte:[
    'Theorie 8–9 (Bau des Auges, Sehen) — 30 min. Danach die Beschriftungs-Aufgabe so lange, bis alle 8 Teile ohne Nachdenken sitzen.',
    'Zuordnung Struktur → Funktion üben, das ist eine sichere Testfrage.',
    'Theorie 10 (Augenfehler, Dioptrien) — die drei Fehler als Tabelle auf ein Blatt schreiben: Ursache / wo entsteht das Bild / welche Linse korrigiert.',
    'Zwei Dioptrien-Aufgaben rechnen, damit die Formel D = 1/f sitzt.',
    'Theorie 11–13 (Farben, Farbenblindheit, räumliches Sehen) — 30 min, danach die Übungen.',
    'Probetest machen. Alles, was falsch war, in der Theorie nachlesen und den Test nochmal starten.'
  ]},
  {tag:'Am Morgen des Tests', dauer:'20 Minuten', punkte:[
    'Nur die Merksätze und den Reiter «Korrekturen» durchlesen.',
    'Einmal die Karteikarten der Themen, die du gestern nicht konntest.',
    'Nichts Neues mehr anfangen — das bringt jetzt nichts mehr.'
  ]}
];

const KARTEN = [
 {th:'licht', f:'Was ist der Unterschied zwischen selbstleuchtenden und beleuchteten Körpern?', a:'Selbstleuchtend: erzeugt eigenes Licht (Sonne, Kerze, Lampe). Beleuchtet: wirft Licht zurück (Mond, Tisch, Buch).'},
 {th:'licht', f:'Wie schnell ist Licht im Vakuum?', a:'Rund 300 000 km/s.'},
 {th:'licht', f:'Wie breitet sich Licht in einem homogenen Medium aus?', a:'Geradlinig. Deshalb gibt es Schatten und deshalb funktioniert die Lochkamera.'},
 {th:'schatten', f:'Kernschatten oder Halbschatten — was ist der Unterschied?', a:'Kernschatten: gar kein Licht der Lichtquelle kommt hin. Halbschatten: nur ein Teil des Lichts kommt hin.'},
 {th:'schatten', f:'Wann entsteht ein Halbschatten?', a:'Nur bei einer ausgedehnten Lichtquelle oder bei mehreren Lichtquellen. Eine punktförmige Quelle macht nur Kernschatten.'},
 {th:'reflexion', f:'Wie lautet das Reflexionsgesetz?', a:'Einfallswinkel = Reflexionswinkel. Beide werden zum Lot gemessen, nicht zur Oberfläche.'},
 {th:'reflexion', f:'Nenne vier Eigenschaften des Bildes im ebenen Spiegel.', a:'Gleich gross, aufrecht, seitenverkehrt, virtuell — und scheinbar gleich weit hinter dem Spiegel wie der Gegenstand davor.'},
 {th:'reflexion', f:'Was heisst «virtuelles Bild»?', a:'Ein Bild, das man nicht auf einem Schirm auffangen kann. Es scheint nur da zu sein.'},
 {th:'brechung', f:'Warum wird Licht beim Übergang in ein anderes Medium gebrochen?', a:'Weil sich die Lichtgeschwindigkeit ändert. Dadurch ändert der Strahl seine Richtung.'},
 {th:'brechung', f:'Luft → Wasser: wohin wird gebrochen?', a:'Zum Lot hin (optisch dichteres Medium). Umgekehrt, Wasser → Luft: vom Lot weg.'},
 {th:'brechung', f:'Wann wird ein Lichtstrahl beim Übergang nicht gebrochen?', a:'Wenn er senkrecht auf die Grenzfläche trifft, also mit Einfallswinkel 0° zum Lot.'},
 {th:'linsen', f:'Woran erkennst du eine Sammellinse?', a:'Sie ist in der Mitte dicker als am Rand. Sie bündelt parallele Strahlen im Brennpunkt.'},
 {th:'linsen', f:'Woran erkennst du eine Zerstreuungslinse?', a:'Sie ist in der Mitte dünner als am Rand. Parallele Strahlen laufen danach auseinander.'},
 {th:'linsen', f:'Hat eine Zerstreuungslinse einen Brennpunkt?', a:'Ja, aber einen virtuellen: die auseinanderlaufenden Strahlen rückwärts verlängert treffen sich in einem Punkt.'},
 {th:'linsen', f:'Was ist die Brennweite?', a:'Der Abstand zwischen der Linse und dem Brennpunkt. Formelzeichen f.'},
 {th:'linsen', f:'Zwei Merkmale jeder optischen Linse?', a:'Sie ist durchsichtig und ihre Oberfläche ist gewölbt.'},
 {th:'bild', f:'Nenne die drei Hauptstrahlen.', a:'Parallelstrahl (danach durch F), Mittelpunktstrahl (ungebrochen durch die Mitte), Brennpunktstrahl (danach parallel).'},
 {th:'bild', f:'Gegenstand weiter weg als die doppelte Brennweite — wie ist das Bild?', a:'Verkleinert, umgekehrt, reell.'},
 {th:'bild', f:'Gegenstand näher an der Linse als die Brennweite — wie ist das Bild?', a:'Vergrössert, aufrecht, virtuell. Das ist der Lupenfall.'},
 {th:'bild', f:'Ist der Brennpunkt der Ort, an dem das Bild scharf ist?', a:'Nein. Im Brennpunkt werden nur parallel einfallende Strahlen gebündelt. Das Bild liegt in der Bildweite b.'},
 {th:'lochkamera', f:'Wie ist das Bild in der Lochkamera?', a:'Umgekehrt, seitenverkehrt und reell — meistens verkleinert.'},
 {th:'lochkamera', f:'Was passiert, wenn das Loch grösser wird?', a:'Das Bild wird heller, aber unschärfer.'},
 {th:'lochkamera', f:'Wie wird das Bild in der Lochkamera grösser?', a:'Kerze näher ans Loch, Kerze selbst grösser, oder Schirm weiter weg vom Loch.'},
 {th:'auge', f:'Welchen Weg nimmt das Licht durch das Auge?', a:'Hornhaut → Pupille → Linse → Glaskörper → Netzhaut → Sehnerv → Gehirn.'},
 {th:'auge', f:'Welche Funktion hat die Iris (Regenbogenhaut)?', a:'Sie regelt den Lichteinfall, indem sie die Pupille grösser oder kleiner macht.'},
 {th:'auge', f:'Welche Funktion hat die Netzhaut?', a:'Dort entsteht das Bild. Sie enthält die Sinneszellen (Stäbchen und Zapfen).'},
 {th:'auge', f:'Welche Funktion haben Lederhaut und Aderhaut?', a:'Lederhaut: Schutz und Stabilität (die weisse Hülle). Aderhaut: Versorgung mit Nährstoffen und Sauerstoff.'},
 {th:'auge', f:'Was ist der blinde Fleck?', a:'Die Austrittsstelle des Sehnervs. Dort gibt es keine Sinneszellen, also sieht man dort nichts.'},
 {th:'auge', f:'Was ist der gelbe Fleck?', a:'Die Stelle des schärfsten Sehens auf der Netzhaut, dicht mit Zapfen besetzt.'},
 {th:'netzhaut', f:'Wie ist das Bild auf der Netzhaut?', a:'Verkleinert, umgekehrt, seitenverkehrt und reell. Das Gehirn dreht es wieder richtig.'},
 {th:'netzhaut', f:'Was ist Akkommodation?', a:'Die Linse verändert ihre Wölbung, damit Gegenstände in verschiedenen Entfernungen scharf abgebildet werden.'},
 {th:'netzhaut', f:'Nah oder fern — wie ist die Linse gewölbt?', a:'Nah: stärker gewölbt (dicker). Fern: flacher.'},
 {th:'netzhaut', f:'Stäbchen oder Zapfen?', a:'Zapfen sehen Farben, brauchen aber viel Licht. Stäbchen sehen nur hell/dunkel, sind dafür sehr lichtempfindlich.'},
 {th:'fehler', f:'Kurzsichtigkeit: Ursache und Korrektur?', a:'Augapfel zu lang, Bild entsteht vor der Netzhaut. Korrektur mit einer Zerstreuungslinse.'},
 {th:'fehler', f:'Weitsichtigkeit: Ursache und Korrektur?', a:'Augapfel zu kurz, Bild entstünde hinter der Netzhaut. Korrektur mit einer Sammellinse.'},
 {th:'fehler', f:'Alterssichtigkeit: Ursache und Korrektur?', a:'Die Linse verliert ihre Elastizität und wölbt sich zu wenig. Korrektur mit einer Sammellinse (Lesebrille).'},
 {th:'fehler', f:'Wie berechnet man die Brechkraft?', a:'D = 1 / f, mit f in Metern. Die Einheit ist Dioptrie (dpt).'},
 {th:'farben', f:'Additive Farbmischung — welche Grundfarben, welches Ergebnis?', a:'Rot + Grün + Blau ergibt Weiss. Gilt für Licht, z.B. Bildschirme.'},
 {th:'farben', f:'Subtraktive Farbmischung — welche Grundfarben, welches Ergebnis?', a:'Cyan + Magenta + Gelb ergibt Schwarz. Gilt für Farbstoffe, z.B. Drucker.'},
 {th:'farben', f:'Warum ist ein Blatt im Sommer grün?', a:'Es absorbiert alle anderen Farben des Sonnenlichts und reflektiert nur Grün.'},
 {th:'farben', f:'Warum werden dunkle Gegenstände in der Sonne wärmer?', a:'Sie absorbieren fast das ganze Licht. Die aufgenommene Energie wird in Wärme umgewandelt. Helle reflektieren das meiste.'},
 {th:'farben', f:'Was macht ein Prisma mit weissem Licht?', a:'Es zerlegt es in die Spektralfarben, weil die Farben unterschiedlich stark gebrochen werden.'},
 {th:'farbsehen', f:'Welche drei Zapfentypen gibt es?', a:'Zapfen für Rot-, Grün- und Blautöne. Das Gehirn setzt daraus alle Farben zusammen.'},
 {th:'farbsehen', f:'Welche Farbsehschwäche ist am häufigsten?', a:'Die Rot-Grün-Sehschwäche. Rot und Grün sehen dann ähnlich aus.'},
 {th:'raum', f:'Wie entsteht räumliches Sehen?', a:'Die beiden Augen sehen leicht verschiedene Bilder. Das Gehirn vergleicht den Unterschied und berechnet daraus die Tiefe.'},
 {th:'raum', f:'Je näher ein Gegenstand ist, desto …?', a:'… grösser ist der Unterschied zwischen dem linken und dem rechten Netzhautbild.'}
];

const AUGENTEILE = ['Hornhaut','Regenbogenhaut (Iris)','Pupille','Linse','Glaskörper','Netzhaut','Aderhaut','Lederhaut','Sehnerv'];
const AUGELOESUNG = ['Hornhaut','Regenbogenhaut (Iris)','Linse','Pupille','Glaskörper','Netzhaut','Lederhaut','Sehnerv'];

const FRAGEN = [
 /* ---- Licht ---- */
 {t:'mc', th:'licht', f:'Welcher dieser Körper ist selbstleuchtend?', o:['Der Mond','Eine Kerzenflamme','Ein weisses Blatt Papier','Ein Spiegel'], r:1,
  e:'Nur die Kerzenflamme erzeugt eigenes Licht. Mond, Papier und Spiegel werfen Licht zurück, sie sind beleuchtete Körper.'},
 {t:'fill', th:'licht', f:'Licht breitet sich in einem ___ Medium ___ aus.', l:[['homogenen','homogen'],['geradlinig','gerade','geradeaus']],
  e:'Homogen heisst: das Medium ist überall gleich, zum Beispiel nur Luft. Dann geht das Licht geradeaus.'},
 {t:'calc', th:'licht', f:'Wie schnell breitet sich Licht im Vakuum ungefähr aus? (in km/s)', r:300000, tol:10000, einheit:'km/s',
  e:'Rund 300 000 km/s, genau 299 792 km/s. Im Test reicht die gerundete Zahl.'},
 {t:'tf', th:'licht', f:'Ein beleuchteter Körper erzeugt eigenes Licht.', r:false,
  e:'Nein — er reflektiert nur Licht, das von einer anderen Quelle kommt.'},
 {t:'mc', th:'licht', f:'Warum können wir den Mond am Nachthimmel sehen?', o:['Er erzeugt eigenes Licht','Er reflektiert das Licht der Sonne','Er glüht wegen seiner Hitze','Er reflektiert das Licht der Erde'], r:1,
  e:'Der Mond ist ein beleuchteter Körper: er wirft Sonnenlicht zurück.'},

 /* ---- Schatten ---- */
 {t:'mc', th:'schatten', f:'Was gilt für den Kernschatten?', o:['Dort kommt nur ein Teil des Lichts hin','Dort kommt gar kein Licht der Lichtquelle hin','Dort ist das Licht nur schwächer','Dort wird das Licht gebrochen'], r:1,
  e:'Kernschatten = null Licht von der Quelle. Halbschatten = nur ein Teil.'},
 {t:'mc', th:'schatten', f:'Wann entsteht überhaupt ein Halbschatten?', o:['Immer, bei jeder Lichtquelle','Nur bei einer punktförmigen Lichtquelle','Nur bei einer ausgedehnten Lichtquelle oder mehreren Lichtquellen','Nur bei Sonnenlicht'], r:2,
  e:'Eine punktförmige Quelle erzeugt nur einen Kernschatten mit scharfem Rand. Erst eine grosse Lichtquelle (oder mehrere) macht einen Halbschatten.'},
 {t:'tf', th:'schatten', f:'Je näher der Gegenstand an der Lichtquelle steht, desto grösser wird sein Schatten.', r:true,
  e:'Richtig — die Strahlen laufen auseinander, deshalb wird der Schatten grösser, je näher der Gegenstand an der Quelle ist.'},
 {t:'fill', th:'schatten', f:'Die Form und Grösse eines Schattens hängt ab von der ___, vom Gegenstand und vom ___.', l:[['lichtquelle'],['schirm']],
  e:'Lichtquelle, Gegenstand und Schirm — vor allem ihre Abstände zueinander.'},

 /* ---- Reflexion ---- */
 {t:'fill', th:'reflexion', f:'Beim Reflexionsgesetz gilt: Einfallswinkel = ___.', l:[['reflexionswinkel']],
  e:'Und beide Winkel misst man zum Lot.'},
 {t:'mc', th:'reflexion', f:'Zu welcher Linie misst man Einfalls- und Reflexionswinkel?', o:['Zur Spiegeloberfläche','Zum Lot (der Senkrechten auf der Oberfläche)','Zum einfallenden Strahl','Zum Boden'], r:1,
  e:'Immer zum Lot. Ein häufiger Fehler ist, zur Oberfläche zu messen — dann sind alle Winkel falsch.'},
 {t:'calc', th:'reflexion', f:'Ein Lichtstrahl trifft unter 20° zur Spiegeloberfläche auf einen ebenen Spiegel. Wie gross ist der Reflexionswinkel (zum Lot gemessen)?', r:70, tol:0, einheit:'°',
  e:'20° zur Oberfläche heisst 70° zum Lot (90° − 20°). Und der Reflexionswinkel ist genauso gross: 70°.'},
 {t:'mc', th:'reflexion', f:'Welche Aussage über das Bild im ebenen Spiegel ist FALSCH?', o:['Es ist gleich gross wie der Gegenstand','Es ist seitenverkehrt','Man kann es auf einem Schirm auffangen','Es scheint gleich weit hinter dem Spiegel zu liegen'], r:2,
  e:'Das Spiegelbild ist virtuell — auffangen kann man nur reelle Bilder, zum Beispiel das Bild einer Sammellinse auf einem Schirm.'},
 {t:'tf', th:'reflexion', f:'Das Spiegelbild steht auf dem Kopf.', r:false,
  e:'Nein, es ist aufrecht — aber seitenverkehrt (links und rechts vertauscht).'},

 /* ---- Brechung ---- */
 {t:'fill', th:'brechung', f:'Beim Übergang in ein optisch dichteres Medium wird der Strahl zum ___ hin gebrochen, beim Übergang in ein optisch dünneres Medium vom Lot ___.', l:[['lot'],['weg']],
  e:'Dichter = zum Lot hin (Luft → Wasser). Dünner = vom Lot weg (Wasser → Luft).'},
 {t:'mc', th:'brechung', f:'Wann wird ein Lichtstrahl an einer Grenzfläche NICHT gebrochen?', o:['Wenn er flach auftrifft','Wenn er senkrecht auf die Fläche trifft (0° zum Lot)','Wenn er aus Wasser kommt','Er wird immer gebrochen'], r:1,
  e:'Senkrecht heisst: Einfallswinkel 0° zum Lot. Dann geht der Strahl einfach geradeaus weiter. (In deinen Notizen steht «90°» — das ist der Winkel zur Oberfläche, gemessen wird aber zum Lot.)'},
 {t:'tf', th:'brechung', f:'Beim Übergang von einem Medium in ein anderes kann sich die Lichtgeschwindigkeit ändern.', r:true,
  e:'Genau das ist der Grund für die Brechung: andere Geschwindigkeit, andere Richtung.'},
 {t:'open', th:'brechung', f:'Erkläre, warum ein Strohhalm im Wasserglas geknickt aussieht.',
  m:'Das Licht vom unteren Teil des Strohhalms geht von Wasser in Luft über und wird dabei vom Lot weg gebrochen. Unser Gehirn nimmt aber an, dass Licht immer geradeaus kommt, und verlängert die Strahlen gerade zurück. Deshalb sehen wir den unteren Teil versetzt — der Halm wirkt geknickt.'},
 {t:'mc', th:'brechung', f:'Du siehst einen Fisch im Teich. Wo ist er wirklich?', o:['Genau dort, wo du ihn siehst','Tiefer, als er dir erscheint','Höher, als er dir erscheint','Weiter links'], r:1,
  e:'Durch die Brechung an der Wasseroberfläche erscheint der Fisch höher, als er ist. In Wirklichkeit ist er tiefer.'},

 /* ---- Linsen ---- */
 {t:'mc', th:'linsen', f:'Woran erkennst du eine Sammellinse an ihrer Form?', o:['Sie ist in der Mitte dünner als am Rand','Sie ist in der Mitte dicker als am Rand','Sie ist überall gleich dick','Sie ist flach'], r:1,
  e:'Sammellinse: aussen dünn, innen dick. Zerstreuungslinse: innen dünn, aussen dick.'},
 {t:'fill', th:'linsen', f:'Die Zerstreuungslinse ist in der Mitte ___ als am Rand. Die Sammellinse ist in der Mitte ___ als am Rand.', l:[['dünner','duenner'],['dicker']],
  e:'Genau umgekehrt — das ist eine Standard-Lückenaufgabe aus dem Arbeitsblatt.'},
 {t:'tf', th:'linsen', f:'Eine Zerstreuungslinse hat überhaupt keinen Brennpunkt.', r:false,
  e:'Sie hat einen virtuellen Brennpunkt: verlängert man die auseinanderlaufenden Strahlen rückwärts, treffen sie sich dort. In deinen Notizen steht es an einer Stelle falsch.'},
 {t:'fill', th:'linsen', f:'Der Abstand zwischen der Linse und dem Brennpunkt heisst ___.', l:[['brennweite']],
  e:'Brennweite, Formelzeichen f. Ihr Kehrwert ist die Brechkraft in Dioptrien.'},
 {t:'mc', th:'linsen', f:'Nenne zwei Merkmale, die jede optische Linse hat.', o:['Sie ist durchsichtig und gewölbt','Sie ist farbig und flach','Sie ist dick und schwer','Sie ist verspiegelt und rund'], r:0,
  e:'Durchsichtig (sonst kommt kein Licht durch) und gewölbt (sonst wird nichts gebrochen).'},
 {t:'match', th:'linsen', f:'Ordne zu: Was passiert mit parallelen Lichtstrahlen?',
  p:[['Sammellinse','treffen sich hinter der Linse im Brennpunkt'],['Zerstreuungslinse','laufen auseinander, virtueller Brennpunkt'],['Ebener Spiegel','werden im gleichen Winkel zurückgeworfen'],['Planparallele Glasplatte','laufen versetzt, aber parallel weiter']],
  e:'Die Sammellinse bündelt, die Zerstreuungslinse streut. Beim Spiegel gilt Einfallswinkel = Reflexionswinkel.'},

 /* ---- Bildkonstruktion ---- */
 {t:'fill', th:'bild', f:'Die drei Hauptstrahlen heissen ___, ___ und ___.', l:[['parallelstrahl'],['mittelpunktstrahl'],['brennpunktstrahl']],
  e:'Parallelstrahl (danach durch F), Mittelpunktstrahl (ungebrochen), Brennpunktstrahl (danach parallel). Zwei davon genügen zum Konstruieren.'},
 {t:'mc', th:'bild', f:'Ein Gegenstand steht weiter von der Sammellinse entfernt als die doppelte Brennweite. Wie ist das Bild?', o:['Vergrössert, aufrecht, virtuell','Verkleinert, umgekehrt, reell','Gleich gross, aufrecht, reell','Es entsteht kein Bild'], r:1,
  e:'Weiter als 2f → verkleinert, umgekehrt, reell. Das ist der Fall bei einer Fotokamera und beim Auge.'},
 {t:'mc', th:'bild', f:'Der Gegenstand steht näher an der Linse als die Brennweite. Wie ist das Bild?', o:['Verkleinert, umgekehrt, reell','Vergrössert, aufrecht, virtuell','Gleich gross, umgekehrt, virtuell','Verkleinert, aufrecht, reell'], r:1,
  e:'Das ist der Lupenfall: vergrössert, aufrecht, virtuell — auffangen kann man dieses Bild nicht.'},
 {t:'calc', th:'bild', f:'Eine Sammellinse hat f = 4 cm. Ein Gegenstand steht g = 10 cm vor der Linse. Wie gross ist die Bildweite b? (in cm)', r:6.67, tol:0.4, einheit:'cm',
  e:'1/b = 1/f − 1/g = 1/4 − 1/10 = 0,15 → b = 6,67 cm. Konstruiert man es, liest man etwa 6,5–7 cm ab.'},
 {t:'calc', th:'bild', f:'Gleiche Linse (f = 4 cm, g = 10 cm, b = 6,67 cm). Der Gegenstand ist 3 cm hoch. Wie gross ist das Bild? (in cm)', r:2, tol:0.25, einheit:'cm',
  e:'B / G = b / g, also B = 3 cm · 6,67 / 10 = 2 cm. Das Bild ist kleiner als der Gegenstand — passt zu g > 2f.'},
 {t:'calc', th:'bild', f:'Aus deinem Heft: f = 3 cm, g = 7 cm. Wie gross ist b wirklich? (in cm)', r:5.25, tol:0.3, einheit:'cm',
  e:'1/b = 1/3 − 1/7 = 4/21 → b = 5,25 cm. Du hattest 5 cm abgelesen, das ist für eine Zeichnung völlig okay.'},
 {t:'tf', th:'bild', f:'Im Brennpunkt entsteht immer ein scharfes Bild des Gegenstands.', r:false,
  e:'Nein. Im Brennpunkt werden nur Strahlen gebündelt, die parallel zur optischen Achse einfallen. Das Bild liegt in der Bildweite b, und die ist fast immer grösser als f.'},
 {t:'open', th:'bild', f:'Beschreibe in Stichworten, wie du das Bild einer Kerze an einer Sammellinse konstruierst.',
  m:'1) Optische Achse zeichnen, Linsenebene senkrecht dazu. 2) Brennpunkte F auf beiden Seiten im Abstand f einzeichnen. 3) Gegenstand (Kerze) im Abstand g auf die Achse stellen. 4) Von der Flammenspitze den Parallelstrahl zur Linse und von dort durch F auf der anderen Seite. 5) Von der Flammenspitze den Mittelpunktstrahl ungebrochen durch die Linsenmitte. 6) Der Schnittpunkt der beiden Strahlen ist der Bildpunkt. 7) Vom Bildpunkt senkrecht zur Achse — das ist das Bild. Der Brennpunktstrahl dient als Kontrolle.'},

 /* ---- Lochkamera ---- */
 {t:'mc', th:'lochkamera', f:'Welche Eigenschaften hat das Bild auf dem Schirm der Lochkamera?', o:['Aufrecht und virtuell','Umgekehrt, seitenverkehrt und reell','Aufrecht und seitenrichtig','Umgekehrt, aber virtuell'], r:1,
  e:'Weil Licht geradlinig durch das Loch läuft, landet oben unten und links rechts. Das Bild ist reell — es ist ja auf dem Schirm zu sehen.'},
 {t:'mc', th:'lochkamera', f:'Das Loch der Lochblende wird grösser gemacht. Was passiert?', o:['Heller und schärfer','Dunkler und schärfer','Heller, aber unschärfer','Nichts ändert sich'], r:2,
  e:'Mehr Licht kommt durch (heller), aber jeder Gegenstandspunkt wird zu einem kleinen Fleck statt zu einem Punkt (unschärfer).'},
 {t:'fill', th:'lochkamera', f:'Je näher die Kerze am Loch steht, desto ___ wird das Bild. Je weiter der Schirm vom Loch entfernt ist, desto ___ wird das Bild.', l:[['grösser','groesser','größer'],['grösser','groesser','größer']],
  e:'Beides macht das Bild grösser. Merke: kurzer Abstand Kerze–Loch, langer Abstand Loch–Schirm = grosses Bild.'},
 {t:'tf', th:'lochkamera', f:'Wird die Fläche des Schirms verdoppelt, wird auch das Bild doppelt so gross.', r:false,
  e:'Nein — das Bild bleibt genau gleich gross, es ist nur mehr leerer Schirm drumherum.'},
 {t:'open', th:'lochkamera', f:'Warum entsteht in der Lochkamera überhaupt ein Bild?',
  m:'Von jedem Punkt der Kerzenflamme geht Licht geradlinig in alle Richtungen. Durch das kleine Loch kommt von jedem dieser Punkte nur ein ganz schmales Strahlenbündel, und dieses trifft auf eine bestimmte Stelle des Schirms. So wird jeder Punkt der Flamme auf genau einen Punkt des Schirms abgebildet — zusammen ergibt das ein Bild, allerdings über Kreuz und damit umgekehrt.'},

 /* ---- Auge ---- */
 {t:'eye', th:'auge', f:'Beschrifte den Schnitt durch das Auge.',
  e:'Das ist genau die Aufgabe aus AB 15.14 und aus dem Praktikum. Diese acht Teile solltest du blind können.'},
 {t:'match', th:'auge', f:'Ordne jedem Bestandteil des Auges seine Funktion zu.',
  p:[['Hornhaut','Schutz und stärkste Lichtbrechung'],['Regenbogenhaut (Iris)','Regulation des Lichteinfalls'],['Linse','Scharfstellen durch Änderung der Wölbung'],['Netzhaut','Hier entsteht das Bild, enthält die Sinneszellen'],['Sehnerv','Leitet die Erregung zum Gehirn'],['Aderhaut','Versorgung mit Nährstoffen und Sauerstoff'],['Lederhaut','Schutz und Stabilisierung des Augapfels'],['Glaskörper','Hält das Auge in Form']],
  e:'Diese Tabelle ist im Praktikumsblatt absichtlich durcheinandergebracht — sie ist eine sehr wahrscheinliche Testaufgabe.'},
 {t:'mc', th:'auge', f:'Was ist der blinde Fleck?', o:['Die Stelle des schärfsten Sehens','Die Austrittsstelle des Sehnervs ohne Sinneszellen','Ein Loch in der Iris','Eine Trübung der Linse'], r:1,
  e:'Beim Versuch mit der Versuchskarte verschwindet das Quadrat genau dann, wenn sein Bild auf den blinden Fleck fällt.'},
 {t:'mc', th:'auge', f:'Welcher Teil des Auges bricht das Licht am stärksten?', o:['Die Linse','Die Hornhaut','Der Glaskörper','Die Pupille'], r:1,
  e:'Die Hornhaut leistet den grössten Teil der Brechung. Die Linse ist das verstellbare Feintuning.'},
 {t:'fill', th:'auge', f:'Die Stelle des schärfsten Sehens auf der Netzhaut heisst ___ Fleck.', l:[['gelber','gelbe','gelb']],
  e:'Der gelbe Fleck ist dicht mit Zapfen besetzt. Der blinde Fleck dagegen hat gar keine Sinneszellen.'},
 {t:'fill', th:'auge', f:'Der Weg des Lichts: ___ → Pupille → ___ → Glaskörper → ___.', l:[['hornhaut'],['linse'],['netzhaut']],
  e:'Hornhaut → Pupille → Linse → Glaskörper → Netzhaut. Danach geht es über den Sehnerv ins Gehirn.'},
 {t:'tf', th:'auge', f:'Der Glaskörper gibt dem Augapfel seine Form.', r:true,
  e:'Richtig. Beim Präparieren merkt man das: nimmt man ihn heraus, fällt das Auge zusammen.'},

 /* ---- Netzhaut / Sehen ---- */
 {t:'mc', th:'netzhaut', f:'Wie ist das Bild, das auf der Netzhaut entsteht?', o:['Vergrössert, aufrecht, virtuell','Verkleinert, umgekehrt, reell','Gleich gross, aufrecht, reell','Verkleinert, aufrecht, virtuell'], r:1,
  e:'Verkleinert, umgekehrt (und seitenverkehrt) und reell. Dass wir die Welt trotzdem richtig herum sehen, macht das Gehirn.'},
 {t:'fill', th:'netzhaut', f:'Die Anpassung der Linse an verschiedene Entfernungen heisst ___.', l:[['akkommodation']],
  e:'Der Ringmuskel verändert dabei die Wölbung der Linse.'},
 {t:'mc', th:'netzhaut', f:'Du schaust von einem fernen Berg auf ein Buch in deiner Hand. Was passiert mit der Linse?', o:['Sie wird flacher','Sie wird stärker gewölbt','Sie wandert nach vorne','Sie bleibt gleich'], r:1,
  e:'Nah = stärker gewölbt (dicker), damit stärker gebrochen wird. Fern = flacher.'},
 {t:'tf', th:'netzhaut', f:'Die Stäbchen der Netzhaut sind für das Farbensehen zuständig.', r:false,
  e:'Nein, das sind die Zapfen. Die Stäbchen sehen nur hell/dunkel, sind dafür aber sehr lichtempfindlich.'},
 {t:'mc', th:'netzhaut', f:'Warum siehst du in der Dämmerung kaum noch Farben?', o:['Die Pupille ist zu klein','Die Linse wird flacher','Für die Zapfen ist es zu dunkel, es arbeiten fast nur die Stäbchen','Der Sehnerv arbeitet langsamer'], r:2,
  e:'Zapfen brauchen viel Licht. Bei wenig Licht übernehmen die Stäbchen — und die kennen keine Farben.'},
 {t:'open', th:'netzhaut', f:'Beschreibe, was mit den Lichtstrahlen in unseren Augen passiert. Verwende Hornhaut, Linse, Glaskörper und Netzhaut.',
  m:'Das Licht trifft zuerst auf die Hornhaut und wird dort schon stark gebrochen. Durch die Pupille gelangt es zur Linse, die es zusätzlich bricht und je nach Entfernung unterschiedlich stark wölbt. Danach durchquert es den Glaskörper und trifft auf die Netzhaut. Dort entsteht ein verkleinertes, umgekehrtes und seitenverkehrtes Bild. Die Sinneszellen wandeln das Licht in Erregungen um, die über den Sehnerv ins Gehirn geleitet werden.'},

 /* ---- Augenfehler ---- */
 {t:'match', th:'fehler', f:'Ordne jedem Augenfehler die Ursache zu.',
  p:[['Kurzsichtigkeit','Augapfel zu lang — Bild entsteht vor der Netzhaut'],['Weitsichtigkeit','Augapfel zu kurz — Bild entstünde hinter der Netzhaut'],['Alterssichtigkeit','Linse verliert ihre Elastizität']],
  e:'Kurz = lang (vor der Netzhaut), Weit = kurz (hinter der Netzhaut). Klingt verdreht, ist aber so.'},
 {t:'mc', th:'fehler', f:'Womit korrigiert man Kurzsichtigkeit?', o:['Mit einer Sammellinse','Mit einer Zerstreuungslinse','Mit einem Spiegel','Mit einem Prisma'], r:1,
  e:'Die Zerstreuungslinse lässt die Strahlen erst auseinanderlaufen, so wandert das Bild nach hinten auf die Netzhaut.'},
 {t:'mc', th:'fehler', f:'Womit korrigiert man Weitsichtigkeit und Alterssichtigkeit?', o:['Mit einer Zerstreuungslinse','Mit einer Sammellinse','Gar nicht','Mit einer Lochblende'], r:1,
  e:'Beide Male fehlt Brechkraft, also hilft eine Sammellinse.'},
 {t:'fill', th:'fehler', f:'Bei Kurzsichtigkeit ist der Augapfel zu ___ und das Bild entsteht ___ der Netzhaut.', l:[['lang'],['vor']],
  e:'Deshalb ist alles in der Ferne unscharf, in der Nähe aber scharf.'},
 {t:'calc', th:'fehler', f:'Berechne die Brechkraft einer Linse mit der Brennweite 0,012 m (= 12 mm). (in dpt)', r:83.3, tol:1.5, einheit:'dpt',
  e:'D = 1/f = 1 / 0,012 m = 83,3 dpt. Das ist ungefähr die Brechkraft des ganzen Auges.'},
 {t:'calc', th:'fehler', f:'Eine Lesebrille hat eine Brennweite von 0,5 m. Wie gross ist ihre Brechkraft? (in dpt)', r:2, tol:0.1, einheit:'dpt',
  e:'D = 1 / 0,5 m = 2 dpt. Weil es eine Sammellinse ist, schreibt man +2 dpt.'},
 {t:'open', th:'fehler', f:'Frau Meier (65) kann die Zeitung besser lesen, wenn sie sie weit weghält. Erkläre warum.',
  m:'Mit dem Alter verliert die Linse ihre Elastizität. Sie kann sich nicht mehr stark genug wölben, um nahe Gegenstände scharf auf die Netzhaut abzubilden. Hält Frau Meier die Zeitung weiter weg, muss die Linse weniger stark gewölbt werden — ihre restliche Wölbungsfähigkeit reicht dann aus und das Bild wird schärfer. Dafür wird es kleiner, weil der Gegenstand weiter weg ist.'},
 {t:'tf', th:'fehler', f:'Eine Zerstreuungslinse hat eine negative Brechkraft.', r:true,
  e:'Ja: Sammellinse +, Zerstreuungslinse −. Eine Brille mit −3 dpt gehört also einem kurzsichtigen Menschen.'},

 /* ---- Farben ---- */
 {t:'fill', th:'farben', f:'Additive Farbmischung: ___ + ___ + ___ ergibt Weiss.', l:[['rot'],['grün','gruen','grun'],['blau']],
  e:'Rot, Grün, Blau — die Grundfarben des Lichts (RGB). So funktioniert dein Bildschirm.'},
 {t:'mc', th:'farben', f:'Was ergibt die subtraktive Mischung von Cyan, Magenta und Gelb?', o:['Weiss','Schwarz','Grau','Rot'], r:1,
  e:'Bei Farbstoffen wird immer mehr Licht weggenommen (subtrahiert), am Ende bleibt Schwarz.'},
 {t:'mc', th:'farben', f:'Warum zerlegt ein Prisma weisses Licht in Farben?', o:['Weil es das Licht reflektiert','Weil die Farben unterschiedlich stark gebrochen werden','Weil es die Farben absorbiert','Weil das Glas farbig ist'], r:1,
  e:'Violett wird am stärksten gebrochen, Rot am schwächsten. Deshalb fächert sich das weisse Licht auf.'},
 {t:'mc', th:'farben', f:'Ein grünes Blatt im Frühling — was passiert mit dem Sonnenlicht?', o:['Grün wird absorbiert, der Rest reflektiert','Grün wird reflektiert, der Rest absorbiert','Alles wird reflektiert','Alles wird absorbiert'], r:1,
  e:'Du siehst immer die Farbe, die zurückgeworfen wird. Im Herbst reflektiert das Blatt Rot und Gelb.'},
 {t:'open', th:'farben', f:'Erkläre, warum dunkle Objekte in der Sonne wärmer werden als helle.',
  m:'Dunkle Objekte absorbieren fast das gesamte auftreffende Licht, helle Objekte reflektieren den grössten Teil davon. Absorbiertes Licht bedeutet aufgenommene Energie, und diese Energie wird in Wärme umgewandelt. Deshalb heizt sich ein schwarzes T-Shirt in der Sonne stärker auf als ein weisses.'},
 {t:'tf', th:'farben', f:'Ein rotes Auto sieht in einem Raum mit reinem grünem Licht schwarz aus.', r:true,
  e:'Es könnte nur Rot reflektieren, aber es ist kein rotes Licht da. Das Grün absorbiert es — also kommt nichts zurück und wir sehen Schwarz.'},
 {t:'fill', th:'farben', f:'Die Spektralfarben in der richtigen Reihenfolge: rot, ___, gelb, ___, blau, violett.', l:[['orange'],['grün','gruen','grun']],
  e:'Rot, Orange, Gelb, Grün, Blau, Violett — die Regenbogenreihenfolge.'},

 /* ---- Farbensehen ---- */
 {t:'mc', th:'farbsehen', f:'Für welche Farben gibt es Zapfen im Auge?', o:['Rot, Gelb, Blau','Rot, Grün, Blau','Cyan, Magenta, Gelb','Für alle Farben je einen Typ'], r:1,
  e:'Drei Typen: Rot-, Grün- und Blauzapfen. Das Gehirn setzt daraus alle anderen Farben zusammen.'},
 {t:'mc', th:'farbsehen', f:'Welche Farbsehschwäche ist am häufigsten?', o:['Blau-Gelb-Schwäche','Rot-Grün-Schwäche','Totale Farbenblindheit','Grün-Blau-Schwäche'], r:1,
  e:'Bei der Rot-Grün-Schwäche sehen Rot und Grün ähnlich aus. Sie ist erblich und betrifft vor allem Jungen.'},
 {t:'tf', th:'farbsehen', f:'Wenn alle drei Zapfentypen kaum arbeiten, sieht die Person die Welt fast nur in Grautönen.', r:true,
  e:'Das ist die echte Farbenblindheit (Achromatopsie) und sehr selten.'},
 {t:'fill', th:'farbsehen', f:'Die ___ sind für das Farbensehen zuständig, die ___ für Hell und Dunkel.', l:[['zapfen'],['stäbchen','staebchen','stabchen']],
  e:'Zapfen = Farbe (viel Licht nötig), Stäbchen = hell/dunkel (sehr lichtempfindlich).'},

 /* ---- Räumliches Sehen ---- */
 {t:'mc', th:'raum', f:'Wie entsteht räumliches Sehen?', o:['Weil jedes Auge doppelt so scharf sieht','Weil beide Augen leicht verschiedene Bilder liefern und das Gehirn den Unterschied auswertet','Weil sich die Linse zweimal wölbt','Weil der Sehnerv zwei Signale schickt'], r:1,
  e:'Die Augen stehen einige Zentimeter auseinander und sehen deshalb nicht genau dasselbe. Aus diesem Unterschied berechnet das Gehirn die Tiefe.'},
 {t:'tf', th:'raum', f:'Je näher ein Gegenstand ist, desto grösser ist der Unterschied zwischen dem linken und dem rechten Netzhautbild.', r:true,
  e:'Richtig. Bei sehr weit entfernten Gegenständen sind beide Bilder fast gleich — deshalb schätzt man grosse Entfernungen schlechter.'},
 {t:'open', th:'raum', f:'Warum kannst du mit nur einem offenen Auge Entfernungen schlechter schätzen?',
  m:'Mit einem Auge fehlt der Vergleich zwischen zwei leicht verschiedenen Bildern, aus dem das Gehirn sonst die Tiefe berechnet. Man kann sich dann nur noch auf Hilfsmittel verlassen: Wie gross erscheint ein bekannter Gegenstand, was verdeckt was, wie fallen Schatten, wie bewegen sich Dinge beim Kopfdrehen.'},
 {t:'mc', th:'raum', f:'Warum kannst du zwei unterschiedlich weit entfernte Gegenstände nicht gleichzeitig scharf sehen?', o:['Die Netzhaut ist zu klein','Die Linse kann sich nur auf eine Entfernung einstellen','Der Sehnerv kann nur ein Bild leiten','Die Pupille ist zu klein'], r:1,
  e:'Die Akkommodation gilt immer für eine Entfernung. Fixierst du das Nahe, wird das Ferne unscharf oder doppelt — und umgekehrt.'}
];

/* ====================== EINFACH ERKLÄRT ====================== */
const EINFACH = {
licht:'Stell dir Licht wie einen unsichtbaren Faden vor, der von der Lampe wegläuft — immer schnurgerade, nie um die Ecke. Manche Dinge machen den Faden selbst (Sonne, Lampe, Kerze). Alle anderen werfen ihn nur zurück, so wie ein Ball von der Wand abprallt. Deshalb kannst du ein Buch im stockdunklen Zimmer nicht sehen: Es hat nichts, was es zurückwerfen könnte.',
schatten:'Ein Schatten ist einfach die Stelle, wo dein Körper dem Licht den Weg versperrt. Weil Licht nicht um die Ecke gehen kann, bleibt dahinter ein dunkler Fleck. Ist die Lampe gross, kommt an den Rand noch ein bisschen Licht von der Seite — das ist der hellere Halbschatten. In der Mitte kommt gar nichts an, das ist der Kernschatten.',
reflexion:'Licht prallt vom Spiegel ab wie ein Ball vom Boden: genauso schräg, wie es ankommt, fliegt es wieder weg. Das Bild im Spiegel sieht aus, als stünde es hinter der Wand — ist es aber nicht. Deshalb kannst du dahinter kein Papier hinhalten und das Bild einfangen.',
brechung:'Stell dir einen Einkaufswagen vor, der schräg von Asphalt in Sand fährt. Das eine Rad wird früher gebremst als das andere, also zieht der Wagen zur Seite. Genau das macht Licht, wenn es schräg von Luft in Wasser geht — es wird langsamer und knickt ab. Deshalb sieht der Strohhalm im Glas geknickt aus.',
linsen:'Eine Sammellinse ist wie ein Trichter für Licht: Alles, was vorne breit ankommt, wird hinten in einem Punkt zusammengeführt. Die Zerstreuungslinse macht das Gegenteil, sie fächert das Licht auf. Merk dir die Form: Sammellinse hat einen dicken Bauch, Zerstreuungslinse eine dünne Taille.',
bild:'Von jedem Punkt der Kerze fliegen Strahlen in alle Richtungen los. Die Linse sortiert sie: Alle Strahlen, die von der Flammenspitze kommen, treffen sich hinter der Linse wieder in einem einzigen Punkt. Beim Zeichnen musst du nur zwei davon verfolgen, weil zwei Linien schon reichen, um den Treffpunkt zu finden.',
lochkamera:'Das Loch lässt von jedem Punkt der Kerze nur einen einzigen dünnen Strahl durch. Der von oben zeigt nach unten, der von unten nach oben — sie kreuzen sich im Loch. Deshalb steht das Bild auf dem Kopf. Machst du das Loch grösser, kommen mehr Strahlen durch: heller, aber verschmiert.',
auge:'Dein Auge ist im Grunde eine Kamera aus Wasser. Vorne die Hornhaut als Fensterscheibe, die schon kräftig bündelt. Dahinter die Iris als Blende, die auf- und zugeht. Dann die Linse zum Scharfstellen, und ganz hinten die Netzhaut als Bildschirm, von dem ein Kabel — der Sehnerv — ins Gehirn führt.',
netzhaut:'Das Bild hinten in deinem Auge steht in Wirklichkeit auf dem Kopf und ist winzig. Dass du die Welt trotzdem richtig herum siehst, macht dein Gehirn, ganz automatisch. Und wenn du von der Ferne auf dein Handy schaust, wird deine Linse dicker — das machst du tausendmal am Tag, ohne es zu merken.',
fehler:'Das Bild muss genau auf der Netzhaut landen, nicht davor und nicht dahinter. Ist der Augapfel etwas zu lang, landet es zu früh, also davor — das ist Kurzsichtigkeit, in der Ferne wird alles matschig. Ist er zu kurz, würde es erst hinter der Netzhaut scharf werden. Die Brille schiebt das Bild einfach an die richtige Stelle.',
farben:'Weisses Licht ist kein «Nichts», sondern alle Farben auf einmal. Ein Prisma oder ein Regentropfen fächert sie auf, weil jede Farbe ein bisschen anders stark abknickt. Und ein Pulli ist rot, weil er alle anderen Farben schluckt und nur das Rot zurückwirft — die Farbe, die du siehst, ist immer die Farbe, die der Gegenstand nicht wollte.',
farbsehen:'In deiner Netzhaut sitzen drei Sorten Farbdetektoren: einer für Rot, einer für Grün, einer für Blau. Aus ihren drei Meldungen mischt dein Gehirn jede Farbe zusammen, so wie ein Bildschirm es mit drei Lämpchen macht. Fehlt eine Sorte, fallen bestimmte Farben zusammen — bei der Rot-Grün-Schwäche sehen eine reife und eine unreife Tomate fast gleich aus.',
raum:'Halt dir mal abwechselnd ein Auge zu: Dein Daumen springt hin und her. Deine Augen sehen also nicht dasselbe, sondern die Welt aus zwei leicht verschiedenen Blickwinkeln. Aus diesem kleinen Unterschied rechnet dein Gehirn aus, wie weit etwas weg ist. Je näher etwas ist, desto grösser der Sprung.'
};

/* ====================== ZEICHNUNGEN ====================== */
const BILDER = {
licht:`<svg viewBox="0 0 360 170"><circle cx="52" cy="66" r="24" fill="#FFD166" stroke="#A8780A" stroke-width="2"/>
<g stroke="#A8780A" stroke-width="2">${[0,45,90,135,180,225,270,315].map(a=>{const r=a*Math.PI/180;return `<line x1="${52+28*Math.cos(r)}" y1="${66+28*Math.sin(r)}" x2="${52+37*Math.cos(r)}" y2="${66+37*Math.sin(r)}"/>`}).join('')}</g>
<text x="52" y="128" font-size="13" text-anchor="middle" fill="#11162B" font-weight="700">selbstleuchtend</text>
<text x="52" y="145" font-size="12" text-anchor="middle" fill="#3B4468">macht eigenes Licht</text>
<g stroke="#E2711D" stroke-width="2"><line x1="95" y1="56" x2="225" y2="52"/><line x1="95" y1="66" x2="225" y2="70"/><line x1="95" y1="76" x2="225" y2="88"/></g>
<polygon points="225,52 216,48 217,56" fill="#E2711D"/><polygon points="225,70 216,67 216,75" fill="#E2711D"/><polygon points="225,88 217,83 215,91" fill="#E2711D"/>
<rect x="228" y="42" width="58" height="60" rx="4" fill="#EEF2FF" stroke="#11162B" stroke-width="2"/><line x1="257" y1="42" x2="257" y2="102" stroke="#11162B" stroke-width="2"/>
<text x="257" y="128" font-size="13" text-anchor="middle" fill="#11162B" font-weight="700">beleuchtet</text>
<text x="257" y="145" font-size="12" text-anchor="middle" fill="#3B4468">wirft Licht zurück</text></svg>`,

schatten:`<svg viewBox="0 0 360 170"><rect x="18" y="52" width="16" height="56" rx="4" fill="#FFD166" stroke="#A8780A" stroke-width="2"/>
<text x="26" y="130" font-size="12" text-anchor="middle" fill="#3B4468">Lampe</text>
<circle cx="150" cy="80" r="26" fill="#11162B"/>
<rect x="300" y="8" width="12" height="150" fill="#DCE0EC"/>
<polygon points="34,52 150,54 150,106 34,108" fill="none"/>
<polygon points="150,54 300,30 300,130 150,106" fill="#11162B" opacity=".85"/>
<polygon points="150,54 300,14 300,30" fill="#3B4468" opacity=".35"/>
<polygon points="150,106 300,146 300,130" fill="#3B4468" opacity=".35"/>
<text x="330" y="78" font-size="12" fill="#11162B" font-weight="700" transform="rotate(90,330,78)">Kernschatten</text>
<text x="238" y="152" font-size="12" fill="#3B4468">Halbschatten</text></svg>`,

reflexion:`<svg viewBox="0 0 360 170"><line x1="40" y1="120" x2="320" y2="120" stroke="#11162B" stroke-width="3"/>
<g stroke="#11162B" stroke-width="1" opacity=".5">${[0,1,2,3,4,5,6,7,8,9,10,11].map(i=>`<line x1="${44+i*24}" y1="120" x2="${36+i*24}" y2="132"/>`).join('')}</g>
<line x1="180" y1="24" x2="180" y2="132" stroke="#3B4468" stroke-width="1.5" stroke-dasharray="6 5"/>
<text x="188" y="34" font-size="12" fill="#3B4468">Lot</text>
<line x1="70" y1="36" x2="180" y2="120" stroke="#D93A3A" stroke-width="2.5"/><polygon points="180,120 168,110 163,120" fill="#D93A3A"/>
<line x1="180" y1="120" x2="290" y2="36" stroke="#2F6BD8" stroke-width="2.5"/><polygon points="290,36 278,40 284,48" fill="#2F6BD8"/>
<path d="M 180 76 A 44 44 0 0 0 152 92" fill="none" stroke="#D93A3A" stroke-width="1.5"/>
<path d="M 208 92 A 44 44 0 0 0 180 76" fill="none" stroke="#2F6BD8" stroke-width="1.5"/>
<text x="146" y="76" font-size="14" fill="#D93A3A" font-weight="700">α</text><text x="204" y="76" font-size="14" fill="#2F6BD8" font-weight="700">β</text>
<text x="180" y="158" font-size="13" text-anchor="middle" fill="#11162B" font-weight="700">α = β  (beide zum Lot gemessen)</text></svg>`,

brechung:`<svg viewBox="0 0 360 170"><rect x="20" y="20" width="320" height="60" fill="#F4F7FF"/><rect x="20" y="80" width="320" height="70" fill="#D9E8FF"/>
<line x1="20" y1="80" x2="340" y2="80" stroke="#2F6BD8" stroke-width="2.5"/>
<text x="34" y="42" font-size="13" fill="#3B4468" font-weight="700">Luft</text><text x="34" y="106" font-size="13" fill="#2F6BD8" font-weight="700">Wasser (dichter)</text>
<line x1="180" y1="14" x2="180" y2="150" stroke="#3B4468" stroke-width="1.5" stroke-dasharray="6 5"/><text x="188" y="26" font-size="12" fill="#3B4468">Lot</text>
<line x1="90" y1="24" x2="180" y2="80" stroke="#D93A3A" stroke-width="2.5"/><polygon points="180,80 168,72 163,82" fill="#D93A3A"/>
<line x1="180" y1="80" x2="222" y2="150" stroke="#D93A3A" stroke-width="2.5"/>
<line x1="180" y1="80" x2="252" y2="146" stroke="#B9C2DC" stroke-width="1.6" stroke-dasharray="5 5"/>
<text x="256" y="144" font-size="11" fill="#8A93B2">ohne Brechung</text>
<text x="196" y="128" font-size="12" fill="#D93A3A" font-weight="700">zum Lot hin</text></svg>`,

linsen:`<svg viewBox="0 0 360 180"><g><line x1="8" y1="60" x2="164" y2="60" stroke="#3B4468" stroke-dasharray="5 5"/>
<path d="M 78 14 Q 98 60 78 106 Q 58 60 78 14" fill="rgba(47,107,216,.18)" stroke="#2F6BD8" stroke-width="2"/>
<g stroke="#D93A3A" stroke-width="2"><line x1="12" y1="28" x2="78" y2="28"/><line x1="12" y1="60" x2="78" y2="60"/><line x1="12" y1="92" x2="78" y2="92"/>
<line x1="78" y1="28" x2="132" y2="60"/><line x1="78" y1="60" x2="132" y2="60"/><line x1="78" y1="92" x2="132" y2="60"/><line x1="132" y1="60" x2="164" y2="78"/><line x1="132" y1="60" x2="164" y2="42"/></g>
<line x1="126" y1="54" x2="138" y2="66" stroke="#A8780A" stroke-width="2"/><line x1="126" y1="66" x2="138" y2="54" stroke="#A8780A" stroke-width="2"/>
<text x="132" y="86" font-size="12" fill="#A8780A" font-weight="700" text-anchor="middle">F</text>
<text x="86" y="130" font-size="13" text-anchor="middle" fill="#11162B" font-weight="700">Sammellinse</text><text x="86" y="148" font-size="12" text-anchor="middle" fill="#3B4468">bündelt: echter Brennpunkt</text></g>
<g transform="translate(186,0)"><line x1="8" y1="60" x2="164" y2="60" stroke="#3B4468" stroke-dasharray="5 5"/>
<path d="M 74 14 L 88 14 Q 74 60 88 106 L 74 106 Q 88 60 74 14" fill="rgba(108,75,209,.18)" stroke="#6C4BD1" stroke-width="2"/>
<g stroke="#D93A3A" stroke-width="2"><line x1="12" y1="28" x2="78" y2="28"/><line x1="12" y1="60" x2="78" y2="60"/><line x1="12" y1="92" x2="78" y2="92"/>
<line x1="84" y1="28" x2="150" y2="8"/><line x1="84" y1="60" x2="150" y2="60"/><line x1="84" y1="92" x2="150" y2="112"/></g>
<g stroke="#B9C2DC" stroke-width="1.6" stroke-dasharray="5 5"><line x1="84" y1="28" x2="40" y2="42"/><line x1="84" y1="92" x2="40" y2="78"/></g>
<line x1="34" y1="54" x2="46" y2="66" stroke="#A8780A" stroke-width="2"/><line x1="34" y1="66" x2="46" y2="54" stroke="#A8780A" stroke-width="2"/>
<text x="40" y="86" font-size="12" fill="#A8780A" font-weight="700" text-anchor="middle">F</text>
<text x="86" y="130" font-size="13" text-anchor="middle" fill="#11162B" font-weight="700">Zerstreuungslinse</text><text x="86" y="148" font-size="12" text-anchor="middle" fill="#3B4468">streut: virtueller Brennpunkt</text></g></svg>`,

bild:`<svg viewBox="0 0 360 180"><line x1="10" y1="98" x2="350" y2="98" stroke="#3B4468" stroke-dasharray="5 5"/>
<path d="M 150 30 Q 172 98 150 166 Q 128 98 150 30" fill="rgba(47,107,216,.15)" stroke="#2F6BD8" stroke-width="2"/>
<line x1="60" y1="98" x2="60" y2="50" stroke="#2E9E5B" stroke-width="3"/><polygon points="60,50 55,58 65,58" fill="#2E9E5B"/>
<text x="46" y="116" font-size="12" fill="#2E9E5B" font-weight="700">G</text>
<line x1="60" y1="50" x2="150" y2="50" stroke="#D93A3A" stroke-width="2"/><line x1="150" y1="50" x2="290" y2="146" stroke="#D93A3A" stroke-width="2"/>
<line x1="60" y1="50" x2="290" y2="146" stroke="#2F6BD8" stroke-width="2" opacity=".8"/>
<line x1="234" y1="92" x2="246" y2="104" stroke="#A8780A" stroke-width="2"/><line x1="234" y1="104" x2="246" y2="92" stroke="#A8780A" stroke-width="2"/><text x="240" y="88" font-size="12" fill="#A8780A" font-weight="700" text-anchor="middle">F'</text>
<line x1="54" y1="92" x2="66" y2="104" stroke="#A8780A" stroke-width="2"/><line x1="54" y1="104" x2="66" y2="92" stroke="#A8780A" stroke-width="2"/><text x="60" y="88" font-size="12" fill="#A8780A" font-weight="700" text-anchor="middle">F</text>
<line x1="290" y1="98" x2="290" y2="146" stroke="#A8780A" stroke-width="3"/><polygon points="290,146 285,138 295,138" fill="#A8780A"/>
<text x="300" y="130" font-size="12" fill="#A8780A" font-weight="700">B</text>
<text x="96" y="32" font-size="11" fill="#D93A3A">Parallelstrahl</text><text x="96" y="76" font-size="11" fill="#2F6BD8">Mittelpunktstrahl</text>
<text x="180" y="176" font-size="12" fill="#3B4468">Bild: umgekehrt, verkleinert, reell</text></svg>`,

lochkamera:`<svg viewBox="0 0 360 170"><rect x="120" y="24" width="200" height="120" rx="6" fill="#F4F7FF" stroke="#11162B" stroke-width="2"/>
<line x1="300" y1="24" x2="300" y2="144" stroke="#11162B" stroke-width="3"/><text x="310" y="90" font-size="11" fill="#3B4468" transform="rotate(90,310,90)">Schirm</text>
<circle cx="120" cy="84" r="4" fill="#11162B"/><text x="96" y="150" font-size="12" fill="#3B4468">Loch</text>
<line x1="60" y1="46" x2="60" y2="102" stroke="#E2711D" stroke-width="3"/><polygon points="60,46 55,54 65,54" fill="#FFD166" stroke="#E2711D"/>
<line x1="60" y1="48" x2="300" y2="122" stroke="#E2711D" stroke-width="1.8"/>
<line x1="60" y1="102" x2="300" y2="52" stroke="#E2711D" stroke-width="1.8"/>
<line x1="300" y1="52" x2="300" y2="122" stroke="#E2711D" stroke-width="4"/>
<text x="20" y="130" font-size="12" fill="#E2711D" font-weight="700">Kerze</text>
<text x="150" y="164" font-size="12" fill="#3B4468">Die Strahlen kreuzen sich im Loch → Bild steht kopf</text></svg>`,

auge:'',

netzhaut:`<svg viewBox="0 0 360 180"><circle cx="230" cy="90" r="70" fill="#fff" stroke="#11162B" stroke-width="2.5"/>
<circle cx="230" cy="90" r="60" fill="#F4F7FF" stroke="#2F6BD8" stroke-width="2.5"/>
<path d="M 172 56 Q 146 90 172 124" fill="rgba(143,180,255,.2)" stroke="#2F6BD8" stroke-width="2.5"/>
<ellipse cx="196" cy="90" rx="12" ry="30" fill="rgba(255,209,102,.4)" stroke="#A8780A" stroke-width="2.5"/>
<line x1="40" y1="90" x2="40" y2="40" stroke="#2E9E5B" stroke-width="3"/><polygon points="40,40 35,48 45,48" fill="#2E9E5B"/>
<line x1="40" y1="42" x2="288" y2="112" stroke="#D93A3A" stroke-width="1.6"/>
<line x1="40" y1="88" x2="288" y2="70" stroke="#D93A3A" stroke-width="1.6"/>
<line x1="288" y1="70" x2="288" y2="112" stroke="#A8780A" stroke-width="4"/>
<polygon points="288,112 283,104 293,104" fill="#A8780A"/>
<text x="40" y="160" font-size="12" fill="#2E9E5B" font-weight="700">Gegenstand</text>
<text x="196" y="172" font-size="12" fill="#3B4468">auf der Netzhaut: klein und auf dem Kopf</text></svg>`,

fehler:`<svg viewBox="0 0 360 180">${[['normal',60,'#2E9E5B',0],['kurzsichtig',180,'#D93A3A',-16],['weitsichtig',300,'#2F6BD8',16]].map(([t,cx,c,off])=>`
<g><ellipse cx="${cx}" cy="70" rx="${off===16?38:(off===-16?50:44)}" ry="44" fill="#fff" stroke="#11162B" stroke-width="2"/>
<path d="M ${cx-(off===16?38:(off===-16?50:44))} 50 Q ${cx-(off===16?50:(off===-16?62:56))} 70 ${cx-(off===16?38:(off===-16?50:44))} 90" fill="none" stroke="#2F6BD8" stroke-width="2"/>
<g stroke="#D93A3A" stroke-width="1.8"><line x1="${cx-60}" y1="52" x2="${cx+(off===16?38:(off===-16?26:42))}" y2="70"/><line x1="${cx-60}" y1="88" x2="${cx+(off===16?38:(off===-16?26:42))}" y2="70"/></g>
<circle cx="${cx+(off===16?38:(off===-16?26:42))}" cy="70" r="4" fill="#A8780A"/>
<text x="${cx}" y="132" font-size="13" text-anchor="middle" fill="${c}" font-weight="700">${t}</text>
<text x="${cx}" y="150" font-size="11" text-anchor="middle" fill="#3B4468">${t==='normal'?'Bild auf der Netzhaut':(t==='kurzsichtig'?'Bild davor':'Bild dahinter')}</text>
<text x="${cx}" y="166" font-size="11" text-anchor="middle" fill="#3B4468">${t==='normal'?'—':(t==='kurzsichtig'?'Zerstreuungslinse':'Sammellinse')}</text></g>`).join('')}</svg>`,

farben:`<svg viewBox="0 0 360 180"><line x1="10" y1="60" x2="96" y2="60" stroke="#11162B" stroke-width="3"/>
<text x="14" y="50" font-size="12" fill="#3B4468">weisses Licht</text>
<polygon points="128,20 168,96 88,96" fill="rgba(143,180,255,.25)" stroke="#2F6BD8" stroke-width="2"/>
<g stroke-width="3">${['#D93A3A','#E2711D','#E0B000','#2E9E5B','#2F6BD8','#6C4BD1'].map((c,i)=>`<line x1="150" y1="62" x2="235" y2="${30+i*14}" stroke="${c}"/>`).join('')}</g>
<text x="244" y="40" font-size="11" fill="#D93A3A">rot</text><text x="244" y="54" font-size="11" fill="#E2711D">orange</text><text x="244" y="68" font-size="11" fill="#A8780A">gelb</text>
<text x="244" y="82" font-size="11" fill="#2E9E5B">grün</text><text x="244" y="96" font-size="11" fill="#2F6BD8">blau</text><text x="244" y="110" font-size="11" fill="#6C4BD1">violett</text>
<g opacity=".75"><circle cx="60" cy="140" r="26" fill="#D93A3A"/><circle cx="88" cy="140" r="26" fill="#2E9E5B"/><circle cx="74" cy="118" r="26" fill="#2F6BD8"/></g>
<text x="124" y="146" font-size="12" fill="#11162B" font-weight="700">Rot + Grün + Blau = Weiss</text></svg>`,

farbsehen:`<svg viewBox="0 0 360 170">${[['Rot-Zapfen','#D93A3A',40],['Grün-Zapfen','#2E9E5B',130],['Blau-Zapfen','#2F6BD8',220]].map(([t,c,x])=>`
<path d="M ${x} 100 L ${x+22} 100 L ${x+15} 34 Q ${x+11} 24 ${x+7} 34 Z" fill="${c}" opacity=".8" stroke="${c}" stroke-width="2"/>
<text x="${x+11}" y="122" font-size="11" text-anchor="middle" fill="#3B4468">${t}</text>`).join('')}
<text x="140" y="150" font-size="12" text-anchor="middle" fill="#11162B" font-weight="700">drei Sorten → das Gehirn mischt daraus alle Farben</text>
<g transform="translate(296,30)"><rect width="46" height="70" rx="6" fill="#8A93B2"/><text x="23" y="42" font-size="11" text-anchor="middle" fill="#fff">nur</text><text x="23" y="56" font-size="11" text-anchor="middle" fill="#fff">grau</text>
<text x="23" y="92" font-size="10" text-anchor="middle" fill="#3B4468">alle drei fehlen</text></g></svg>`,

raum:`<svg viewBox="0 0 360 170"><ellipse cx="60" cy="50" rx="22" ry="14" fill="#fff" stroke="#11162B" stroke-width="2"/><circle cx="60" cy="50" r="6" fill="#11162B"/>
<ellipse cx="60" cy="120" rx="22" ry="14" fill="#fff" stroke="#11162B" stroke-width="2"/><circle cx="60" cy="120" r="6" fill="#11162B"/>
<text x="18" y="34" font-size="11" fill="#3B4468">links</text><text x="18" y="148" font-size="11" fill="#3B4468">rechts</text>
<line x1="82" y1="50" x2="232" y2="80" stroke="#D93A3A" stroke-width="2"/><line x1="82" y1="120" x2="232" y2="92" stroke="#2F6BD8" stroke-width="2"/>
<rect x="232" y="66" width="26" height="40" rx="4" fill="#2E9E5B"/>
<text x="268" y="90" font-size="12" fill="#11162B" font-weight="700">naher Gegenstand</text>
<text x="268" y="108" font-size="11" fill="#3B4468">grosser Unterschied</text>
<line x1="82" y1="52" x2="330" y2="30" stroke="#D93A3A" stroke-width="1" opacity=".5"/><line x1="82" y1="118" x2="330" y2="34" stroke="#2F6BD8" stroke-width="1" opacity=".5"/>
<circle cx="334" cy="32" r="6" fill="#8A93B2"/><text x="252" y="20" font-size="11" fill="#8A93B2">ferner Gegenstand: fast gleich</text></svg>`
};

/* ====================== MEHR AUFGABEN ====================== */
const MEHR = [
 /* --- Licht --- */
 {t:'versuch', th:'licht', f:'Versuch: Sieht man einen Lichtstrahl?',
  mat:'Taschenlampe oder Handylampe, dunkles Zimmer, ein Blatt Papier.',
  schritte:['Mach das Zimmer dunkel und leuchte quer durch den Raum.','Schau von der Seite: Siehst du den Strahl in der Luft?','Halte jetzt das Blatt Papier in den Strahl.'],
  m:'In sauberer Luft siehst du den Strahl von der Seite nicht — Licht ist nur sichtbar, wenn es in dein Auge fällt. Erst wenn Staub, Nebel oder das Papier im Weg sind, wird Licht zu dir zurückgeworfen und du siehst den Weg oder einen hellen Fleck. Genau das meint «beleuchteter Körper».'},
 {t:'mc', th:'licht', f:'Warum siehst du dein Buch in einem völlig dunklen Zimmer nicht?', o:['Weil deine Augen kaputt sind','Weil kein Licht da ist, das das Buch zurückwerfen könnte','Weil das Buch zu dunkel ist','Weil die Pupille zu klein ist'], r:1,
  e:'Das Buch ist ein beleuchteter Körper. Ohne Lichtquelle hat es nichts, was es in dein Auge zurückwerfen könnte.'},
 {t:'tf', th:'licht', f:'Licht braucht ein Material, um sich ausbreiten zu können.', r:false,
  e:'Nein. Licht kommt auch durch das leere Vakuum des Weltalls — sonst würde uns die Sonne nie erreichen. Schall dagegen braucht ein Material.'},
 {t:'open', th:'licht', f:'Nenne je zwei selbstleuchtende und zwei beleuchtete Körper und erkläre den Unterschied.',
  m:'Selbstleuchtend sind zum Beispiel die Sonne und eine Kerzenflamme — sie erzeugen ihr Licht selbst. Beleuchtet sind zum Beispiel der Mond und ein Buch — sie erzeugen kein eigenes Licht, sondern werfen das Licht anderer Quellen zurück. Wir sehen beleuchtete Körper also nur, solange eine Lichtquelle da ist.'},

 /* --- Schatten --- */
 {t:'versuch', th:'schatten', f:'Versuch: Schatten grösser und kleiner machen',
  mat:'Taschenlampe, deine Hand, eine helle Wand.',
  schritte:['Leuchte mit der Lampe auf die Wand und halte deine Hand dazwischen.','Schieb die Hand ganz nah an die Lampe.','Schieb sie dann ganz nah an die Wand.'],
  m:'Nah an der Lampe wird der Schatten riesig, nah an der Wand wird er klein und scharf. Grund: Die Lichtstrahlen laufen von der Lampe aus auseinander. Je weiter vorne die Hand steht, desto mehr Strahlen fängt sie ab und desto grösser ist der dunkle Bereich auf der Wand.'},
 {t:'versuch', th:'schatten', f:'Versuch: Zwei Schatten aus einem Gegenstand',
  mat:'Zwei Lampen (z.B. Handylampe und Taschenlampe), ein Stift, eine helle Wand.',
  schritte:['Stell beide Lampen nebeneinander auf und leuchte auf die Wand.','Halte den Stift dazwischen.','Zähle die Schatten und achte darauf, wo es ganz dunkel und wo es nur halbdunkel ist.'],
  m:'Du siehst zwei Schatten, die sich überlappen. Wo sich beide überschneiden, kommt von keiner Lampe Licht an — das ist der Kernschatten. Die helleren Bereiche daneben bekommen noch Licht von je einer Lampe — das ist der Halbschatten. Genau so entsteht der Halbschatten auch bei einer einzelnen grossen Lampe.'},
 {t:'mc', th:'schatten', f:'Bei einer Sonnenfinsternis — wer steht in der Mitte?', o:['Die Erde zwischen Sonne und Mond','Der Mond zwischen Sonne und Erde','Die Sonne zwischen Erde und Mond','Alle drei nebeneinander'], r:1,
  e:'Der Mond schiebt sich vor die Sonne und wirft seinen Schatten auf die Erde. Wer im Kernschatten steht, sieht eine totale Finsternis, wer im Halbschatten steht, nur eine teilweise.'},
 {t:'tf', th:'schatten', f:'Eine punktförmige Lichtquelle erzeugt einen Halbschatten.', r:false,
  e:'Nein, nur einen Kernschatten mit scharfem Rand. Für einen Halbschatten braucht es eine ausgedehnte oder mehrere Lichtquellen.'},

 /* --- Reflexion --- */
 {t:'versuch', th:'reflexion', f:'Versuch: Schrift im Spiegel',
  mat:'Ein Spiegel und ein beschriebenes Blatt Papier.',
  schritte:['Halte das Blatt vor den Spiegel und versuche, den Text im Spiegel zu lesen.','Schreib deinen Namen so auf, dass er im Spiegel richtig aussieht.','Prüfe nach.'],
  m:'Im Spiegel ist alles seitenverkehrt: links und rechts sind vertauscht, oben und unten aber nicht. Das Bild ist gleich gross, aufrecht und scheint gleich weit hinter dem Spiegel zu liegen, wie dein Blatt davor steht. Auffangen kann man es nicht — es ist virtuell.'},
 {t:'mc', th:'reflexion', f:'Warum kannst du dich in einer rauen Wand nicht spiegeln, in einer Fensterscheibe aber schon?', o:['Die Wand verschluckt alles Licht','An der rauen Oberfläche wird das Licht in alle Richtungen gestreut','Die Wand ist zu dick','Die Scheibe erzeugt eigenes Licht'], r:1,
  e:'Das Reflexionsgesetz gilt auch an der Wand — aber jede winzige Unebenheit wirft das Licht in eine andere Richtung. Dadurch geht die Ordnung verloren und es entsteht kein Bild.'},
 {t:'fill', th:'reflexion', f:'Das Bild im ebenen Spiegel ist ___ gross wie der Gegenstand, es steht ___ und ist seitenverkehrt.', l:[['gleich'],['aufrecht']],
  e:'Dazu kommt: es ist virtuell und scheint gleich weit hinter dem Spiegel zu liegen.'},
 {t:'calc', th:'reflexion', f:'Ein Lichtstrahl trifft genau senkrecht auf einen Spiegel. Wie gross ist der Reflexionswinkel?', r:0, tol:0, einheit:'°',
  e:'Der Einfallswinkel zum Lot ist 0°, also ist auch der Reflexionswinkel 0°. Der Strahl kommt auf demselben Weg zurück.'},

 /* --- Brechung --- */
 {t:'versuch', th:'brechung', f:'Versuch: Die Münze taucht auf',
  mat:'Eine undurchsichtige Tasse, eine Münze, Wasser.',
  schritte:['Leg die Münze in die Tasse und geh so weit zurück, bis sie gerade hinter dem Rand verschwindet.','Bleib genau so stehen und lass jemanden langsam Wasser eingiessen.','Beobachte, was mit der Münze passiert.'],
  m:'Die Münze taucht auf, ohne dass sich etwas bewegt hat. Das Licht von der Münze wird beim Austritt aus dem Wasser vom Lot weg gebrochen und knickt dadurch über den Tassenrand in dein Auge. Dein Gehirn verlängert die Strahlen gerade zurück — deshalb erscheint die Münze höher, als sie liegt.'},
 {t:'mc', th:'brechung', f:'Ein Lichtstrahl geht schräg von Wasser in Luft über. Wohin wird er gebrochen?', o:['Zum Lot hin','Vom Lot weg','Gar nicht','Er kommt zurück'], r:1,
  e:'Luft ist optisch dünner als Wasser, also vom Lot weg. Umgekehrt (Luft → Wasser) wäre es zum Lot hin.'},
 {t:'tf', th:'brechung', f:'Beim Brechen ändert das Licht seine Farbe.', r:false,
  e:'Nein, nur seine Richtung und seine Geschwindigkeit. Verschiedene Farben werden aber unterschiedlich stark gebrochen — deshalb fächert ein Prisma weisses Licht auf.'},
 {t:'open', th:'brechung', f:'Warum sieht ein Schwimmbecken flacher aus, als es wirklich ist?',
  m:'Das Licht vom Beckenboden wird beim Übergang von Wasser in Luft vom Lot weg gebrochen. Unser Gehirn geht aber davon aus, dass Licht immer geradeaus kommt, und verlängert die Strahlen gerade nach unten. Der Treffpunkt dieser gedachten Verlängerungen liegt höher als der echte Boden — deshalb wirkt das Becken flacher. Genau deshalb sind Sprünge ins unbekannte Wasser gefährlich.'},

 /* --- Linsen --- */
 {t:'versuch', th:'linsen', f:'Versuch: Der Wassertropfen als Lupe',
  mat:'Ein Tropfen Wasser, eine durchsichtige Klarsichthülle oder Frischhaltefolie, eine Zeitung.',
  schritte:['Leg die Folie über die Zeitung.','Setz vorsichtig einen dicken Wassertropfen darauf.','Schau von oben durch den Tropfen auf die Buchstaben.'],
  m:'Die Buchstaben erscheinen grösser. Der Tropfen ist in der Mitte dicker als am Rand und damit eine echte Sammellinse. Weil die Zeitung näher als die Brennweite liegt, siehst du ein vergrössertes, aufrechtes und virtuelles Bild — den Lupenfall.'},
 {t:'mc', th:'linsen', f:'Eine Linse ist in der Mitte 6 mm dick und am Rand 1 mm. Was für eine Linse ist das?', o:['Eine Zerstreuungslinse','Eine Sammellinse','Ein Spiegel','Ein Prisma'], r:1,
  e:'In der Mitte dicker als am Rand = Sammellinse. Sie bündelt paralleles Licht im Brennpunkt.'},
 {t:'calc', th:'linsen', f:'Eine Sammellinse hat die Brechkraft 5 dpt. Wie gross ist ihre Brennweite? (in cm)', r:20, tol:0.5, einheit:'cm',
  e:'f = 1 / D = 1 / 5 = 0,2 m = 20 cm. Je stärker die Linse, desto kürzer die Brennweite.'},
 {t:'tf', th:'linsen', f:'Eine Linse muss durchsichtig sein und eine gewölbte Oberfläche haben.', r:true,
  e:'Genau das sind die zwei Merkmale, nach denen im Arbeitsblatt gefragt wird.'},

 /* --- Bildkonstruktion --- */
 {t:'versuch', th:'bild', f:'Versuch: Die Lupe als Projektor',
  mat:'Eine Lupe (oder eine Lesebrille von jemandem, der weitsichtig ist), ein weisses Blatt Papier, ein helles Fenster.',
  schritte:['Stell dich mit dem Rücken zum Fenster.','Halte die Lupe vor das Blatt und verschiebe sie langsam vor und zurück.','Achte auf den Moment, in dem ein scharfes Bild erscheint.'],
  m:'Auf dem Blatt erscheint das Fenster — klein und auf dem Kopf. Das Fenster ist viel weiter weg als die doppelte Brennweite, deshalb entsteht ein verkleinertes, umgekehrtes und reelles Bild. Reell heisst: man kann es auf einem Schirm auffangen, hier auf dem Papier.'},
 {t:'mc', th:'bild', f:'Der Gegenstand steht genau in der doppelten Brennweite (g = 2f). Wie ist das Bild?', o:['Vergrössert und aufrecht','Gleich gross und umgekehrt','Verkleinert und aufrecht','Es entsteht kein Bild'], r:1,
  e:'Bei g = 2f ist auch b = 2f, das Bild ist gleich gross, umgekehrt und reell.'},
 {t:'calc', th:'bild', f:'Eine Sammellinse mit f = 5 cm, der Gegenstand steht 15 cm davor. Wie gross ist b? (in cm)', r:7.5, tol:0.4, einheit:'cm',
  e:'1/b = 1/5 − 1/15 = 2/15 → b = 7,5 cm. Weil g grösser als 2f ist, ist das Bild verkleinert.'},
 {t:'tf', th:'bild', f:'Steht der Gegenstand näher als die Brennweite, kann man das Bild auf einem Schirm auffangen.', r:false,
  e:'Nein — dann ist das Bild virtuell. Du siehst es nur, wenn du durch die Linse schaust, wie bei einer Lupe.'},

 /* --- Lochkamera --- */
 {t:'versuch', th:'lochkamera', f:'Versuch: Lochkamera selber bauen',
  mat:'Ein Karton oder Becher, Alufolie, ein Gummi, eine Nadel, Backpapier oder Butterbrotpapier.',
  schritte:['Spann die Alufolie über die eine Öffnung und stich mit der Nadel ein winziges Loch hinein.','Spann das Backpapier über die andere Seite — das ist dein Schirm.','Halte das Loch auf ein helles Fenster oder eine Lampe und schau von hinten auf das Backpapier.'],
  m:'Auf dem Papier erscheint ein schwaches Bild, das auf dem Kopf steht und seitenverkehrt ist. Stichst du das Loch grösser, wird das Bild heller, aber unschärfer. Genau nach diesem Prinzip funktionierten die ersten Fotoapparate — und im Grunde auch dein Auge, nur mit einer Linse statt einem Loch.'},
 {t:'mc', th:'lochkamera', f:'Warum wird das Bild bei einem grösseren Loch unschärfer?', o:['Weil mehr Farben durchkommen','Weil jeder Punkt des Gegenstands als kleiner Fleck statt als Punkt abgebildet wird','Weil das Licht gebrochen wird','Weil der Schirm zittert'], r:1,
  e:'Durch ein grosses Loch kommt von jedem Gegenstandspunkt ein ganzes Bündel. Die Flecken überlappen sich und das Bild verschwimmt.'},
 {t:'open', th:'lochkamera', f:'Was haben die Lochkamera und dein Auge gemeinsam, und was ist der wichtigste Unterschied?',
  m:'Gemeinsam: In beiden fällt Licht durch eine kleine Öffnung auf eine Fläche dahinter, und in beiden entsteht ein umgekehrtes, seitenverkehrtes, reelles Bild — bei der Kamera auf dem Schirm, im Auge auf der Netzhaut. Der wichtigste Unterschied: Das Auge hat zusätzlich Hornhaut und Linse, die das Licht bündeln. Dadurch ist das Bild viel heller und schärfer, und die Linse kann durch Wölbung auf verschiedene Entfernungen scharf stellen. Die Pupille entspricht dem Loch und kann ihre Grösse verändern.'},

 /* --- Auge --- */
 {t:'versuch', th:'auge', f:'Versuch: Der blinde Fleck',
  mat:'Ein Blatt Papier und ein Stift.',
  schritte:['Mal links ein Kreuz und etwa 10 cm rechts davon einen dicken Punkt.','Halte das Blatt auf Armlänge, schliess das linke Auge und schau mit dem rechten fest auf das Kreuz.','Bewege das Blatt langsam auf dich zu und achte auf den Punkt, ohne den Blick vom Kreuz zu lösen.'],
  m:'Bei einem bestimmten Abstand verschwindet der Punkt komplett — und taucht wieder auf, wenn du weiterschiebst. In diesem Moment fällt sein Bild genau auf den blinden Fleck, die Austrittsstelle des Sehnervs. Dort gibt es keine Sinneszellen. Im Alltag merkst du das nie, weil das Gehirn die Lücke mit der Umgebung auffüllt und das zweite Auge mitschaut.'},
 {t:'versuch', th:'auge', f:'Versuch: Die Pupille bei der Arbeit',
  mat:'Ein Spiegel, ein Zimmer, das du abdunkeln kannst.',
  schritte:['Schau dir im hellen Raum deine Pupillen im Spiegel an.','Mach das Licht aus und warte eine halbe Minute.','Mach das Licht wieder an und beobachte die Pupillen sofort.'],
  m:'Im Dunkeln werden die Pupillen gross, damit möglichst viel Licht hineinkommt. Beim Einschalten ziehen sie sich sofort zusammen und schützen die Netzhaut vor zu viel Licht. Die Iris, also die Regenbogenhaut, ist der Muskel, der das macht — sie ist die Blende des Auges.'},
 {t:'mc', th:'auge', f:'Was macht die Pupille bei sehr hellem Licht?', o:['Sie wird grösser','Sie wird kleiner','Sie bleibt gleich','Sie wird farbig'], r:1,
  e:'Die Iris zieht sich zusammen und verkleinert die Pupille. So kommt weniger Licht auf die Netzhaut.'},
 {t:'fill', th:'auge', f:'Der ___ leitet die Erregung von der Netzhaut zum ___.', l:[['sehnerv'],['gehirn']],
  e:'An seiner Austrittsstelle liegt der blinde Fleck.'},

 /* --- Sehen --- */
 {t:'versuch', th:'netzhaut', f:'Versuch: Akkommodation spüren',
  mat:'Dein Zeigefinger und ein Fenster.',
  schritte:['Halte den Finger etwa 20 cm vor dein Gesicht und stell scharf auf ihn.','Achte darauf, wie der Hintergrund aussieht.','Wechsle jetzt schnell zwischen Finger und einem weit entfernten Haus hin und her.'],
  m:'Immer nur eines von beidem ist scharf, nie beides gleichzeitig. Beim Blick auf den Finger wölbt sich deine Linse stärker, beim Blick in die Ferne wird sie flacher. Das ist die Akkommodation. Wenn du oft und schnell wechselst, merkst du sogar eine leichte Anstrengung — das ist der Ringmuskel.'},
 {t:'mc', th:'netzhaut', f:'Warum siehst du beim Betreten eines dunklen Kinosaals zuerst fast nichts?', o:['Die Linse muss sich erst wölben','Die Augen müssen sich erst an das Dunkel anpassen: Pupille auf, Stäbchen aktiv','Der Sehnerv ist zu langsam','Die Netzhaut ist beschädigt'], r:1,
  e:'Die Pupille öffnet sich und die lichtempfindlichen Stäbchen brauchen einige Minuten, bis sie voll arbeiten. Deshalb siehst du nach ein paar Minuten deutlich mehr — aber kaum Farben.'},
 {t:'tf', th:'netzhaut', f:'Obwohl das Bild auf der Netzhaut auf dem Kopf steht, sehen wir die Welt richtig herum.', r:true,
  e:'Das Gehirn dreht das Bild beim Verarbeiten wieder um. Wir merken davon nichts.'},
 {t:'open', th:'netzhaut', f:'Erkläre, warum das Bild auf der Netzhaut umgekehrt und seitenverkehrt ist.',
  m:'Die Strahlen von der Spitze eines Gegenstands laufen durch die Linse schräg nach unten weiter, die von unten schräg nach oben. Sie kreuzen sich in der Linse. Deshalb landet die Spitze unten auf der Netzhaut und der Fuss oben — und aus demselben Grund links und rechts vertauscht. Genau dasselbe passiert im Loch einer Lochkamera.'},

 /* --- Augenfehler --- */
 {t:'versuch', th:'fehler', f:'Versuch: Deinen Nahpunkt bestimmen',
  mat:'Ein Buch oder Handy mit kleiner Schrift, ein Lineal.',
  schritte:['Halte den Text auf Armlänge und lies ihn.','Zieh ihn langsam näher an dein Auge, bis die Schrift unscharf wird.','Miss diesen Abstand mit dem Lineal — das ist dein Nahpunkt.'],
  m:'Bei jungen Augen liegt der Nahpunkt etwa bei 10 cm, mit 45 Jahren oft schon bei 30 cm und mit 65 bei einem Meter oder mehr. Der Grund ist die Alterssichtigkeit: Die Linse wird härter und kann sich nicht mehr stark genug wölben. Genau deshalb hält Frau Meier die Zeitung weit weg.'},
 {t:'calc', th:'fehler', f:'Eine Brille hat die Brennweite 0,25 m. Wie gross ist ihre Brechkraft? (in dpt)', r:4, tol:0.1, einheit:'dpt',
  e:'D = 1 / 0,25 m = 4 dpt.'},
 {t:'mc', th:'fehler', f:'Eine Brille ist mit −3 dpt beschriftet. Wem gehört sie?', o:['Einer kurzsichtigen Person','Einer weitsichtigen Person','Einer Person mit Alterssichtigkeit','Das kann man nicht sagen'], r:0,
  e:'Minus bedeutet Zerstreuungslinse, und die korrigiert Kurzsichtigkeit. Plus wäre eine Sammellinse für Weit- oder Alterssichtigkeit.'},
 {t:'open', th:'fehler', f:'Warum brauchen fast alle Menschen ab etwa 45 Jahren eine Lesebrille?',
  m:'Die Augenlinse verliert mit den Jahren ihre Elastizität. Sie kann sich beim Blick auf Nahes nicht mehr stark genug wölben, deshalb entsteht das Bild naher Gegenstände nicht mehr scharf auf der Netzhaut. Das nennt man Alterssichtigkeit. Eine Lesebrille mit einer Sammellinse übernimmt die fehlende Brechkraft. Das hat nichts mit Weitsichtigkeit durch einen zu kurzen Augapfel zu tun, auch wenn beide mit derselben Linsenart korrigiert werden.'},

 /* --- Farben --- */
 {t:'versuch', th:'farben', f:'Versuch: Die drei Farben in deinem Bildschirm',
  mat:'Ein Handy oder Monitor mit weissem Bild, ein Wassertropfen oder eine Lupe.',
  schritte:['Zeig auf dem Bildschirm eine weisse Fläche an (z.B. ein leeres Notizblatt).','Setz einen kleinen Wassertropfen darauf oder schau mit einer Lupe ganz nah hin.','Beschreibe, was du an der Stelle siehst, die vorher weiss war.'],
  m:'Du siehst winzige rote, grüne und blaue Streifen. Der Bildschirm hat gar kein weisses Licht — er mischt Weiss additiv aus Rot, Grün und Blau. Aus der Entfernung verschmelzen die Punkte für dein Auge zu Weiss. Genau dasselbe Prinzip wie die drei Zapfentypen in deiner Netzhaut.'},
 {t:'versuch', th:'farben', f:'Versuch: Regenbogen im Wasserglas',
  mat:'Ein Glas Wasser, ein weisses Blatt Papier, direktes Sonnenlicht oder eine starke Taschenlampe.',
  schritte:['Stell das Glas auf die Fensterbank, wo die Sonne hinkommt.','Leg das weisse Papier daneben oder darunter.','Verschieb Glas und Papier, bis auf dem Papier Farben erscheinen.'],
  m:'Auf dem Papier erscheint ein Farbband von Rot bis Violett. Das Glas mit Wasser wirkt wie ein Prisma: Beim Ein- und Austritt wird das Licht gebrochen, und jede Farbe wird unterschiedlich stark abgelenkt — Violett am stärksten, Rot am schwächsten. Weisses Licht besteht also aus allen diesen Farben.'},
 {t:'mc', th:'farben', f:'Warum sieht ein weisses T-Shirt weiss aus?', o:['Es erzeugt weisses Licht','Es reflektiert alle Farben des Lichts','Es absorbiert alle Farben','Es lässt das Licht durch'], r:1,
  e:'Weiss = alles wird zurückgeworfen. Schwarz = fast alles wird geschluckt und in Wärme verwandelt.'},
 {t:'fill', th:'farben', f:'Ein grünes Blatt ___ grünes Licht und ___ alle anderen Farben.', l:[['reflektiert','wirft zurück'],['absorbiert','schluckt']],
  e:'Die Farbe, die du siehst, ist immer die reflektierte.'},
 {t:'tf', th:'farben', f:'Schwarz ist eine der Spektralfarben des weissen Lichts.', r:false,
  e:'Nein. Das Spektrum geht von Rot bis Violett. Schwarz bedeutet, dass gar kein Licht zurückkommt.'},

 /* --- Farbensehen --- */
 {t:'versuch', th:'farbsehen', f:'Versuch: Farben in der Dämmerung',
  mat:'Ein paar verschiedenfarbige Gegenstände (Stifte, Socken, Bücher) und ein Zimmer, das du abdunkeln kannst.',
  schritte:['Leg die Gegenstände bei Licht hin und merk dir die Farben.','Dunkle das Zimmer so weit ab, dass du gerade noch die Umrisse siehst.','Warte fünf Minuten und versuche dann, die Farben zu benennen.'],
  m:'Du erkennst die Formen gut, aber die Farben kaum noch — alles wirkt gräulich. Bei wenig Licht arbeiten fast nur die Stäbchen, und die unterscheiden nur hell und dunkel. Die Zapfen, die für Farben zuständig sind, brauchen mehr Licht. Deshalb sagt man: nachts sind alle Katzen grau.'},
 {t:'mc', th:'farbsehen', f:'Warum sind von der Rot-Grün-Sehschwäche viel mehr Jungen als Mädchen betroffen?', o:['Jungen schauen mehr auf Bildschirme','Weil sie vererbt wird und Jungen dafür nur eine Anlage brauchen','Weil Jungen kleinere Augen haben','Das stimmt gar nicht'], r:1,
  e:'Die Schwäche wird über das X-Chromosom vererbt. Jungen haben nur eines davon, deshalb reicht bei ihnen eine einzige betroffene Anlage aus.'},
 {t:'tf', th:'farbsehen', f:'Menschen mit einer Rot-Grün-Sehschwäche sehen überhaupt keine Farben.', r:false,
  e:'Sie sehen Farben, können aber Rot und Grün schlecht auseinanderhalten. Gar keine Farben sieht man nur bei der sehr seltenen Achromatopsie.'},
 {t:'open', th:'farbsehen', f:'Warum können Menschen mit Rot-Grün-Schwäche trotzdem sicher an einer Ampel fahren?',
  m:'Weil die Position der Lichter immer gleich ist: Rot ist oben, Gelb in der Mitte, Grün unten. Ausserdem sind die Farbtöne heute so gewählt, dass sie sich in der Helligkeit unterscheiden. Man kann sich also an der Anordnung orientieren, auch wenn die Farben ähnlich aussehen.'},

 /* --- Räumliches Sehen --- */
 {t:'versuch', th:'raum', f:'Versuch: Der Daumensprung',
  mat:'Nur dein Daumen.',
  schritte:['Streck den Arm aus und halte den Daumen hoch, ziel damit auf einen Gegenstand weiter hinten.','Schliess abwechselnd das linke und das rechte Auge.','Mach dasselbe nochmal, aber halte den Daumen jetzt ganz nah vor dein Gesicht.'],
  m:'Der Daumen springt hin und her, und ganz nah springt er viel weiter. Jedes Auge sieht ihn vor einem anderen Hintergrund, weil die Augen einige Zentimeter auseinanderstehen. Je näher der Gegenstand, desto grösser dieser Unterschied — und genau daraus berechnet dein Gehirn die Entfernung.'},
 {t:'versuch', th:'raum', f:'Versuch: Zwei Stifte treffen',
  mat:'Zwei Stifte und jemand, der mitmacht (oder beide Hände).',
  schritte:['Halte in jede Hand einen Stift, die Arme weit auseinander.','Schliess ein Auge und versuche, die Spitzen genau aneinander zu tippen.','Wiederhole es mit beiden Augen offen.'],
  m:'Mit einem Auge triffst du meistens daneben, mit beiden Augen fast immer. Mit nur einem Auge fehlt der Vergleich zwischen zwei Bildern, aus dem das Gehirn die Tiefe berechnet. Du bist dann auf Hilfsmittel wie Grösse und Verdeckung angewiesen — und die helfen bei zwei gleichen Stiften kaum.'},
 {t:'mc', th:'raum', f:'Warum kannst du Entfernungen in der Ferne schlechter schätzen als in der Nähe?', o:['Weil die Augen müde werden','Weil die beiden Netzhautbilder dann fast gleich sind','Weil die Linse flacher wird','Weil die Pupille kleiner wird'], r:1,
  e:'Je weiter etwas weg ist, desto kleiner der Unterschied zwischen dem linken und rechten Bild. Ab einigen Metern schätzt das Gehirn vor allem über Grösse, Verdeckung und Schatten.'}
];
FRAGEN.push(...MEHR);

/* ====================== SCHREIBAUFGABEN ====================== */
const SCHREIBEN = [
 {t:'schreib', th:'licht', f:'Erkläre den Unterschied zwischen einem selbstleuchtenden und einem beleuchteten Körper. Nenne zu jedem zwei Beispiele.',
  hilfe:[['eigenes Licht','selbst Licht','erzeugt'],['reflektiert','reflektier','zurückwerfen','zurück'],['Sonne','Kerze','Lampe'],['Mond','Buch','Tisch']],
  m:'Ein selbstleuchtender Körper erzeugt sein Licht selbst, zum Beispiel die Sonne oder eine Kerze. Ein beleuchteter Körper erzeugt kein eigenes Licht, sondern reflektiert das Licht anderer Quellen, zum Beispiel der Mond oder ein Buch. Deshalb sehen wir beleuchtete Körper nur, solange eine Lichtquelle vorhanden ist — im völlig dunklen Raum bleiben sie unsichtbar.'},
 {t:'schreib', th:'schatten', f:'Erkläre, wie ein Kernschatten und ein Halbschatten entstehen. Gehe darauf ein, warum Licht überhaupt Schatten erzeugt.',
  hilfe:[['geradlinig','gerade','geradeaus'],['kein Licht','gar kein'],['ein Teil','teilweise'],['ausgedehnt','gross','mehrere']],
  m:'Licht breitet sich geradlinig aus und kann nicht um einen Gegenstand herumlaufen. Steht ein undurchsichtiger Körper im Weg, bleibt dahinter ein dunkler Bereich. Dorthin, wo von der Lichtquelle überhaupt kein Licht gelangt, entsteht der Kernschatten. Ist die Lichtquelle ausgedehnt oder gibt es mehrere Lichtquellen, kommt an den Rändern noch ein Teil des Lichts an — dort entsteht der hellere Halbschatten.'},
 {t:'schreib', th:'reflexion', f:'Beschreibe das Reflexionsgesetz. Erkläre auch, welche Linie man dabei braucht und warum man sie einzeichnet.',
  hilfe:[['Einfallswinkel'],['Reflexionswinkel'],['Lot','Normale'],['gleich','=']],
  m:'Trifft ein Lichtstrahl auf eine glatte Oberfläche, wird er zurückgeworfen. Dabei gilt: Einfallswinkel gleich Reflexionswinkel. Beide Winkel misst man nicht zur Oberfläche, sondern zum Lot — der Senkrechten, die im Auftreffpunkt auf der Oberfläche steht. Das Lot braucht man, weil die Winkelangaben sonst je nach Neigung der Fläche unterschiedlich wären. In eine Zeichnung gehören deshalb immer: einfallender Strahl, Lot, Einfallswinkel, Reflexionswinkel und reflektierter Strahl.'},
 {t:'schreib', th:'reflexion', f:'Nenne vier Eigenschaften des Bildes in einem ebenen Spiegel und erkläre, was «virtuell» bedeutet.',
  hilfe:[['gleich gross'],['aufrecht'],['seitenverkehrt'],['virtuell'],['Schirm','auffangen']],
  m:'Das Spiegelbild ist gleich gross wie der Gegenstand, es steht aufrecht, es ist seitenverkehrt und es scheint gleich weit hinter dem Spiegel zu liegen, wie der Gegenstand davor steht. Ausserdem ist es virtuell. Virtuell bedeutet, dass dort in Wirklichkeit gar kein Licht ankommt: Die Strahlen scheinen nur von hinter dem Spiegel zu kommen, weil unser Gehirn sie gerade verlängert. Deshalb kann man ein virtuelles Bild nicht auf einem Schirm auffangen.'},
 {t:'schreib', th:'brechung', f:'Erkläre, was bei der Brechung passiert und wovon die Richtung der Ablenkung abhängt. Nenne ein Alltagsbeispiel.',
  hilfe:[['Geschwindigkeit','langsamer','schneller'],['zum Lot'],['vom Lot'],['dichter'],['Strohhalm','Münze','Fisch','Becken']],
  m:'Geht Licht schräg von einem Stoff in einen anderen über, ändert es seine Richtung. Der Grund ist, dass sich seine Geschwindigkeit im neuen Medium ändert. Beim Übergang in ein optisch dichteres Medium, zum Beispiel von Luft in Wasser, wird der Strahl zum Lot hin gebrochen. Beim Übergang in ein optisch dünneres Medium wird er vom Lot weg gebrochen. Trifft er senkrecht auf, wird er gar nicht gebrochen. Ein Alltagsbeispiel ist der Strohhalm im Wasserglas, der geknickt aussieht.'},
 {t:'schreib', th:'linsen', f:'Vergleiche Sammellinse und Zerstreuungslinse: Form, Wirkung auf paralleles Licht und Art des Brennpunkts.',
  hilfe:[['Mitte dicker','dicker'],['Mitte dünner','dünner','dunner'],['bündelt','Brennpunkt'],['auseinander','streut'],['virtuell']],
  m:'Die Sammellinse ist in der Mitte dicker als am Rand. Parallel einfallendes Licht wird gebündelt und trifft sich hinter der Linse in einem Punkt, dem reellen Brennpunkt. Die Zerstreuungslinse ist in der Mitte dünner als am Rand. Bei ihr laufen parallele Strahlen nach der Linse auseinander. Verlängert man sie in Gedanken rückwärts, treffen sie sich in einem Punkt vor der Linse — das ist der virtuelle Brennpunkt. Der Abstand zwischen Linse und Brennpunkt heisst bei beiden Brennweite.'},
 {t:'schreib', th:'bild', f:'Beschreibe Schritt für Schritt, wie du das Bild eines Gegenstands an einer Sammellinse konstruierst.',
  hilfe:[['optische Achse','Achse'],['Brennpunkt','F'],['Parallelstrahl'],['Mittelpunktstrahl'],['Schnittpunkt','treffen','schneiden']],
  m:'Zuerst zeichnet man die optische Achse und senkrecht dazu die Linsenebene. Dann trägt man auf beiden Seiten im Abstand der Brennweite die Brennpunkte ein. Der Gegenstand wird im Abstand g als Pfeil auf die Achse gestellt. Von der Pfeilspitze zeichnet man den Parallelstrahl: erst parallel zur Achse bis zur Linse, dann durch den Brennpunkt auf der anderen Seite. Dazu den Mittelpunktstrahl, der ungebrochen durch die Linsenmitte läuft. Der Schnittpunkt der beiden Strahlen ist der Bildpunkt. Von dort zeichnet man senkrecht zur Achse den Bildpfeil. Der Brennpunktstrahl dient als Kontrolle.'},
 {t:'schreib', th:'bild', f:'Ein Gegenstand wird immer näher an eine Sammellinse geschoben. Beschreibe, wie sich das Bild dabei verändert.',
  hilfe:[['verkleinert','kleiner'],['vergrössert','grösser','grosser'],['umgekehrt','kopf'],['virtuell'],['Brennweite','f']],
  m:'Steht der Gegenstand weiter weg als die doppelte Brennweite, ist das Bild verkleinert, umgekehrt und reell. Genau bei der doppelten Brennweite ist es gleich gross und umgekehrt. Zwischen einfacher und doppelter Brennweite wird es vergrössert, bleibt aber umgekehrt und reell. Genau in der Brennweite entsteht kein Bild, weil die Strahlen parallel weiterlaufen. Ist der Gegenstand näher als die Brennweite, entsteht ein vergrössertes, aufrechtes und virtuelles Bild — das ist der Lupenfall.'},
 {t:'schreib', th:'lochkamera', f:'Erkläre, wie in einer Lochkamera ein Bild entsteht und warum es auf dem Kopf steht.',
  hilfe:[['geradlinig','gerade'],['Loch','Öffnung'],['kreuzen','über kreuz','schneiden'],['umgekehrt','kopf'],['Schirm']],
  m:'Von jedem Punkt des Gegenstands geht Licht geradlinig in alle Richtungen. Durch das kleine Loch kommt von jedem dieser Punkte nur ein sehr schmales Strahlenbündel, das auf eine bestimmte Stelle des Schirms trifft. So wird jeder Gegenstandspunkt auf genau einen Bildpunkt abgebildet. Die Strahlen vom oberen Rand laufen dabei schräg nach unten, die vom unteren Rand schräg nach oben — sie kreuzen sich im Loch. Deshalb steht das Bild auf dem Kopf und ist zusätzlich seitenverkehrt. Es ist reell, weil es auf dem Schirm sichtbar ist.'},
 {t:'schreib', th:'auge', f:'Beschreibe den Weg des Lichts durch das Auge und nenne bei jedem Teil kurz seine Aufgabe.',
  hilfe:[['Hornhaut'],['Pupille'],['Linse'],['Glaskörper','Glaskorper'],['Netzhaut'],['Sehnerv']],
  m:'Das Licht trifft zuerst auf die Hornhaut, die das Auge schützt und das Licht am stärksten bricht. Durch die Pupille, die Öffnung in der Regenbogenhaut, gelangt es ins Augeninnere; die Regenbogenhaut regelt dabei, wie viel Licht hineinkommt. Dann durchquert es die Linse, die durch Änderung ihrer Wölbung scharf stellt. Anschliessend geht es durch den Glaskörper, der dem Auge seine Form gibt, und trifft auf die Netzhaut, wo das Bild entsteht und die Sinneszellen sitzen. Über den Sehnerv gelangt die Erregung schliesslich ins Gehirn.'},
 {t:'schreib', th:'auge', f:'Erkläre, was der blinde Fleck ist, warum es ihn gibt und warum er im Alltag nicht stört.',
  hilfe:[['Sehnerv'],['keine Sinneszellen','keine Zellen','keine Sehzellen','ohne Sinneszellen'],['Gehirn','ergänzt','auffüllt','füllt'],['zweite Auge','anderen Auge','beide Augen']],
  m:'Der blinde Fleck ist die Stelle der Netzhaut, an der der Sehnerv das Auge verlässt. Dort liegen keine Sinneszellen, deshalb kann an dieser Stelle kein Licht wahrgenommen werden. Im Alltag merkt man davon nichts, weil das Gehirn die Lücke mit der Umgebung auffüllt und weil das zweite Auge die Stelle mit abdeckt. Sichtbar wird der blinde Fleck erst beim Versuch mit Kreuz und Punkt, bei dem man ein Auge schliesst und den Punkt bei einem bestimmten Abstand verschwinden sieht.'},
 {t:'schreib', th:'netzhaut', f:'Erkläre, was Akkommodation ist und was dabei im Auge passiert, wenn du von der Tafel auf dein Heft schaust.',
  hilfe:[['Linse'],['Wölbung','wölbt','gewölbt','dicker'],['Ringmuskel','Muskel'],['Netzhaut'],['scharf']],
  m:'Akkommodation ist die Fähigkeit des Auges, Gegenstände in verschiedenen Entfernungen scharf abzubilden. Dafür verändert die Linse ihre Wölbung, gesteuert vom Ringmuskel. Beim Blick auf die weit entfernte Tafel ist die Linse flach, weil weniger Brechung nötig ist. Schaust du auf dein nahes Heft, wölbt sie sich stärker und bricht das Licht dadurch kräftiger. So entsteht das Bild in beiden Fällen genau auf der Netzhaut und ist scharf.'},
 {t:'schreib', th:'netzhaut', f:'Erkläre den Unterschied zwischen Stäbchen und Zapfen und warum man nachts kaum Farben sieht.',
  hilfe:[['Zapfen'],['Stäbchen','stabchen'],['Farbe','Farben'],['hell','dunkel'],['lichtempfindlich','wenig Licht','viel Licht']],
  m:'Auf der Netzhaut gibt es zwei Arten von Sinneszellen. Die Zapfen sind für das Farbensehen zuständig, brauchen dafür aber viel Licht; sie sitzen vor allem im gelben Fleck. Die Stäbchen unterscheiden nur hell und dunkel, sind dafür aber sehr lichtempfindlich. Bei Dämmerung oder nachts reicht das Licht für die Zapfen nicht mehr aus, es arbeiten fast nur noch die Stäbchen. Deshalb erkennt man Umrisse noch recht gut, Farben aber kaum.'},
 {t:'schreib', th:'fehler', f:'Vergleiche Kurzsichtigkeit und Weitsichtigkeit: Ursache, wo das Bild entsteht und wie man korrigiert.',
  hilfe:[['zu lang'],['zu kurz'],['vor der Netzhaut','davor'],['hinter der Netzhaut','dahinter'],['Zerstreuungslinse'],['Sammellinse']],
  m:'Bei Kurzsichtigkeit ist der Augapfel zu lang. Das Bild entfernter Gegenstände entsteht deshalb schon vor der Netzhaut und wirkt unscharf. Korrigiert wird mit einer Zerstreuungslinse, die die Strahlen zuerst auseinanderlaufen lässt, sodass das Bild nach hinten auf die Netzhaut wandert. Bei Weitsichtigkeit ist der Augapfel zu kurz. Das Bild naher Gegenstände würde erst hinter der Netzhaut scharf werden, auf der Netzhaut ist es unscharf. Hier hilft eine Sammellinse, die zusätzliche Brechkraft liefert und das Bild nach vorne holt.'},
 {t:'schreib', th:'fehler', f:'Frau Meier ist 65 und hält die Zeitung mit ausgestreckten Armen. Erkläre den Augenfehler und die Korrektur.',
  hilfe:[['Alterssichtigkeit','Alterssichtig'],['Elastizität','elastisch','härter','hart'],['wölben','Wölbung'],['Sammellinse','Lesebrille'],['weiter weg','Entfernung']],
  m:'Frau Meier ist alterssichtig. Mit den Jahren verliert die Augenlinse ihre Elastizität und kann sich nicht mehr stark genug wölben. Für nahe Gegenstände reicht die Brechkraft deshalb nicht mehr aus und die Schrift wird unscharf. Hält sie die Zeitung weiter weg, ist weniger Wölbung nötig — ihre verbliebene Akkommodation reicht dann aus und das Bild wird scharf, allerdings kleiner. Korrigiert wird die Alterssichtigkeit mit einer Sammellinse, also einer Lesebrille, die die fehlende Brechkraft ergänzt.'},
 {t:'schreib', th:'farben', f:'Erkläre, warum ein Blatt im Sommer grün und im Herbst rot aussieht. Was passiert mit den übrigen Farben?',
  hilfe:[['weisses Licht','alle Farben','Sonnenlicht'],['reflektiert','zurückgeworfen','zurück'],['absorbiert','geschluckt','schluckt'],['grün','grun'],['rot']],
  m:'Das Sonnenlicht ist weiss und enthält alle Farben. Ein Blatt im Sommer reflektiert davon nur den grünen Anteil, alle anderen Farben werden absorbiert, also vom Blatt geschluckt. Weil nur Grün in unser Auge zurückkommt, sehen wir es grün. Im Herbst verändert sich der Farbstoff im Blatt: Jetzt werden Rot und Gelb reflektiert und die übrigen Farben absorbiert, deshalb sieht das Blatt rot oder gelb aus. Die absorbierte Energie wird in Wärme umgewandelt.'},
 {t:'schreib', th:'farben', f:'Erkläre den Unterschied zwischen additiver und subtraktiver Farbmischung mit je einem Beispiel aus dem Alltag.',
  hilfe:[['additiv'],['subtraktiv'],['Rot','Grün','Blau'],['Cyan','Magenta','Gelb'],['Weiss','weiß'],['Schwarz'],['Bildschirm','Drucker','Farbe']],
  m:'Bei der additiven Farbmischung mischt man farbiges Licht. Die Grundfarben sind Rot, Grün und Blau; zusammen ergeben sie Weiss. So funktioniert ein Bildschirm, der aus winzigen roten, grünen und blauen Punkten jede Farbe zusammensetzt. Bei der subtraktiven Farbmischung mischt man Farbstoffe, die jeweils einen Teil des Lichts wegnehmen. Die Grundfarben sind Cyan, Magenta und Gelb; zusammen ergeben sie Schwarz. So arbeitet ein Drucker oder ein Tuschkasten.'},
 {t:'schreib', th:'farbsehen', f:'Erkläre, wie wir Farben wahrnehmen und was bei einer Rot-Grün-Sehschwäche anders ist.',
  hilfe:[['drei','3'],['Zapfen'],['Wellenlänge','Wellenlängen'],['Gehirn'],['Rot','Grün'],['fehlt','funktioniert nicht','arbeitet nicht']],
  m:'In der Netzhaut gibt es drei Arten von Zapfen: für Rot-, Grün- und Blautöne. Sie nehmen Licht unterschiedlicher Wellenlängen wahr, und das Gehirn setzt aus diesen drei Meldungen die wahrgenommene Farbe zusammen. Bei einer Rot-Grün-Sehschwäche fehlt ein Zapfentyp oder er arbeitet nicht richtig. Dadurch fallen Rot- und Grüntöne für die betroffene Person sehr ähnlich aus und sind schwer zu unterscheiden. Sie sieht aber weiterhin Farben — nur bei der sehr seltenen Achromatopsie, bei der alle drei Typen ausfallen, erscheint die Welt in Grautönen.'},
 {t:'schreib', th:'raum', f:'Erkläre, wie räumliches Sehen funktioniert und warum es mit nur einem Auge schlechter klappt.',
  hilfe:[['zwei Augen','beide Augen'],['verschiedene','unterschiedlich'],['Unterschied'],['Gehirn'],['näher','nah']],
  m:'Unsere beiden Augen stehen einige Zentimeter auseinander und sehen einen Gegenstand deshalb aus leicht verschiedenen Blickwinkeln. Das Gehirn vergleicht die beiden Netzhautbilder und berechnet aus ihrem Unterschied, wie weit der Gegenstand entfernt ist. Je näher er ist, desto grösser ist dieser Unterschied. Mit nur einem Auge fehlt dieser Vergleich völlig. Man kann Entfernungen dann nur noch über Hilfsmittel wie scheinbare Grösse, Verdeckung und Schatten abschätzen, was deutlich ungenauer ist.'},
 {t:'schreib', th:'linsen', f:'Ein Mitschüler sagt: «Eine Zerstreuungslinse hat keinen Brennpunkt.» Antworte ihm und erkläre, was stimmt.',
  hilfe:[['virtuell'],['auseinander','streut'],['verlängert','rückwärts','zurück'],['Brennpunkt']],
  m:'Das stimmt so nicht. Parallel einfallende Strahlen laufen nach einer Zerstreuungslinse tatsächlich auseinander und treffen sich auf der anderen Seite nirgends. Verlängert man sie aber in Gedanken rückwärts, so schneiden sie sich in einem Punkt vor der Linse. Dieser Punkt heisst virtueller Brennpunkt. Er ist nicht reell, man kann dort also kein Licht auffangen — aber es gibt ihn, und der Abstand zur Linse ist die Brennweite.'},
 {t:'schreib', th:'bild', f:'Erkläre, warum der Brennpunkt nicht der Ort ist, an dem ein scharfes Bild entsteht.',
  hilfe:[['parallel'],['Brennpunkt'],['Bildweite','b'],['Gegenstandsweite','g','Entfernung']],
  m:'Im Brennpunkt werden nur solche Strahlen gebündelt, die parallel zur optischen Achse auf die Linse fallen. Das Licht eines echten Gegenstands fällt aber nicht parallel ein, sondern läuft von jedem Punkt aus in alle Richtungen. Deshalb entsteht das Bild nicht im Brennpunkt, sondern in der Bildweite b, und die hängt von der Gegenstandsweite g ab. Nur bei einem unendlich weit entfernten Gegenstand, zum Beispiel der Sonne, fällt das Bild praktisch mit dem Brennpunkt zusammen.'},
 {t:'schreib', th:'lochkamera', f:'Beschreibe, wie sich Helligkeit und Schärfe des Bildes verändern, wenn das Loch grösser wird — und begründe beides.',
  hilfe:[['heller'],['unschärfer','unscharf','verschwommen'],['mehr Licht','mehr Strahlen'],['Fleck','Bündel','überlappen']],
  m:'Wird das Loch grösser, kommt insgesamt mehr Licht auf den Schirm, das Bild wird also heller. Gleichzeitig kommt von jedem einzelnen Punkt des Gegenstands nicht mehr nur ein dünner Strahl durch, sondern ein ganzes Bündel. Jeder Gegenstandspunkt wird dadurch als kleiner Fleck statt als Punkt abgebildet, und diese Flecken überlappen sich. Deshalb wird das Bild unschärfer. Helligkeit und Schärfe lassen sich bei der Lochkamera also nicht gleichzeitig verbessern.'},
 {t:'schreib', th:'schatten', f:'Du willst mit einer Taschenlampe einen möglichst grossen Schatten deiner Hand an die Wand werfen. Beschreibe, wie du Lampe, Hand und Wand anordnest, und begründe.',
  hilfe:[['nah','nahe'],['Lampe'],['Wand','Schirm'],['auseinander','laufen','breiten']],
  m:'Die Hand muss möglichst nah an die Lampe und möglichst weit von der Wand entfernt sein. Der Grund: Die Lichtstrahlen laufen von der Lampe aus auseinander. Je näher die Hand an der Lampe ist, desto grösser ist der Anteil der Strahlen, den sie abfängt, und desto grösser wird der dunkle Bereich auf der Wand. Schiebt man die Hand dagegen dicht an die Wand, wird der Schatten fast so gross wie die Hand selbst, dafür aber schärfer.'},
 {t:'schreib', th:'farbsehen', f:'Eine Ampel und eine reife Tomate: Erkläre, warum beide für eine Person mit Rot-Grün-Schwäche schwierig sein können — und wie man im Alltag trotzdem zurechtkommt.',
  hilfe:[['Zapfen'],['ähnlich','verwechseln','unterscheiden'],['Position','Anordnung','oben','unten'],['Helligkeit','Form']],
  m:'Bei einer Rot-Grün-Schwäche arbeitet einer der beiden Zapfentypen für Rot beziehungsweise Grün nicht richtig. Dadurch liefern beide Farben fast dieselbe Meldung ans Gehirn und wirken sehr ähnlich: eine reife rote und eine unreife grüne Tomate sind dann kaum zu unterscheiden. Im Strassenverkehr hilft, dass die Ampelfarben immer an derselben Stelle sitzen — Rot oben, Gelb in der Mitte, Grün unten. Zusätzlich unterscheiden sich die Lichter in der Helligkeit, und bei Früchten helfen Form, Glanz und Festigkeit weiter.'}
];
FRAGEN.push(...SCHREIBEN);

/* ====================== HILFEN ====================== */
const $ = s => document.querySelector(s);
const el = (tag, klasse, text) => { const n = document.createElement(tag); if(klasse) n.className = klasse; if(text!==undefined) n.textContent = text; return n; };
const thema = id => THEMEN.find(t => t.id === id);
const mischen = a => { const b = a.slice(); for(let i=b.length-1;i>0;i--){ const j=Math.floor(Math.random()*(i+1)); const h=b[i]; b[i]=b[j]; b[j]=h; } return b; };
function norm(s){
  return (s||'').toString().toLowerCase().trim()
    .replace(/ä/g,'a').replace(/ö/g,'o').replace(/ü/g,'u').replace(/ß/g,'ss')
    .replace(/[.,;:!?'"()]/g,'').replace(/\s+/g,' ');
}
const stand = {gesamt:0, richtig:0};
function punkte(ok){
  stand.gesamt++; if(ok) stand.richtig++;
  const p = Math.round(stand.richtig / stand.gesamt * 100);
  $('#quote').textContent = p + ' %';
  $('#quotetext').textContent = stand.richtig + ' von ' + stand.gesamt + ' Aufgaben richtig';
}

/* ====================== NAVIGATION ====================== */
$('#nav').addEventListener('click', e => {
  const b = e.target.closest('button'); if(!b) return;
  document.querySelectorAll('#nav button').forEach(x => x.setAttribute('aria-selected', x===b));
  document.querySelectorAll('.panel').forEach(p => p.classList.toggle('aktiv', p.id === 'p'+'-'+b.dataset.ziel));
  window.scrollTo({top:0, behavior:'instant'});
});

/* ====================== LINSEN-SIMULATOR ====================== */
const SVGNS = 'http://www.w3.org/2000/svg';
function sEl(tag, attrs){ const n = document.createElementNS(SVGNS, tag); for(const k in attrs) n.setAttribute(k, attrs[k]); return n; }

function zeichneLinse(){
  const g = +$('#g').value, f = +$('#f').value, G = +$('#G').value;
  $('#gwert').textContent = g.toString().replace('.',',');
  $('#fwert').textContent = f.toString().replace('.',',');
  $('#Gwert').textContent = G.toString().replace('.',',');

  const svg = $('#linsensvg');
  svg.textContent = '';
  const W = 720, H = 340, achse = 210, Lx = 300, px = 20;   // 20 px = 1 cm

  svg.appendChild(sEl('line',{x1:20,y1:achse,x2:W-20,y2:achse,stroke:'#4A5680','stroke-width':1.2,'stroke-dasharray':'6 5'}));
  const be = sEl('text',{x:W-24,y:achse-9,fill:'#7A85AE','font-size':12,'text-anchor':'end'}); be.textContent='optische Achse'; svg.appendChild(be);

  // Linse
  svg.appendChild(sEl('path',{d:`M ${Lx} ${achse-120} Q ${Lx+30} ${achse} ${Lx} ${achse+120} Q ${Lx-30} ${achse} ${Lx} ${achse-120}`,
    fill:'rgba(125,170,255,.20)', stroke:'#8FB4FF','stroke-width':2}));
  svg.appendChild(sEl('line',{x1:Lx,y1:achse-130,x2:Lx,y2:achse+130,stroke:'#3B4468','stroke-width':1,'stroke-dasharray':'3 4'}));

  // Brennpunkte
  [[-1,'F'],[1,"F'"]].forEach(([s,t])=>{
    const x = Lx + s*f*px;
    svg.appendChild(sEl('line',{x1:x-6,y1:achse-6,x2:x+6,y2:achse+6,stroke:'#FFD166','stroke-width':2}));
    svg.appendChild(sEl('line',{x1:x-6,y1:achse+6,x2:x+6,y2:achse-6,stroke:'#FFD166','stroke-width':2}));
    const tx = sEl('text',{x:x,y:achse+22,fill:'#FFD166','font-size':13,'text-anchor':'middle'}); tx.textContent=t; svg.appendChild(tx);
  });

  // Gegenstand
  const Gx = Lx - g*px, Gy = achse - G*px;
  svg.appendChild(sEl('line',{x1:Gx,y1:achse,x2:Gx,y2:Gy,stroke:'#7DE2A2','stroke-width':3.5}));
  svg.appendChild(sEl('path',{d:`M ${Gx} ${Gy} l -6 6 l 6 -14 l 6 14 z`,fill:'#7DE2A2'}));

  const linie = (x1,y1,x2,y2,farbe,strich) => svg.appendChild(sEl('line',{x1,y1,x2,y2,stroke:farbe,'stroke-width':1.8,
    'stroke-dasharray': strich ? '5 5' : '', 'stroke-opacity': strich ? .6 : 1}));

  let b = null, B = null, art = '';
  if(Math.abs(g - f) < 0.05){
    art = 'kein Bild (Strahlen bleiben parallel)';
  } else {
    b = 1 / (1/f - 1/g);
    B = -G * b / g;
  }

  // Parallelstrahl: waagrecht zur Linse, dann durch F'
  linie(Gx, Gy, Lx, Gy, '#FF8A8A', false);
  // Mittelpunktstrahl
  const mSteig = (achse - Gy) / (Lx - Gx);
  linie(Gx, Gy, Lx, achse, '#8FB4FF', false);

  if(b !== null){
    const Bx = Lx + b*px, By = achse - B*px;
    // Parallelstrahl nach der Linse
    const p1 = (achse - Gy) / (f*px);           // Steigung pro px
    linie(Lx, Gy, W-20, Gy + p1*(W-20-Lx), '#FF8A8A', false);
    // Mittelpunktstrahl weiter
    linie(Lx, achse, W-20, achse + mSteig*(W-20-Lx), '#8FB4FF', false);

    if(b > 0){
      // reelles Bild
      svg.appendChild(sEl('line',{x1:Bx,y1:achse,x2:Bx,y2:By,stroke:'#FFD166','stroke-width':3.5}));
      svg.appendChild(sEl('path',{d:`M ${Bx} ${By} l -6 ${By>achse?-6:6} l 6 ${By>achse?14:-14} l 6 ${By>achse?-14:14} z`,fill:'#FFD166'}));
      art = 'reell, umgekehrt, ' + (Math.abs(B) > G ? 'vergrössert' : (Math.abs(Math.abs(B)-G)<0.05 ? 'gleich gross' : 'verkleinert'));
    } else {
      // virtuelles Bild: Strahlen rückwärts verlängern
      linie(Lx, Gy, Bx, By, '#FF8A8A', true);
      linie(Lx, achse, Bx, By, '#8FB4FF', true);
      svg.appendChild(sEl('line',{x1:Bx,y1:achse,x2:Bx,y2:By,stroke:'#FFD166','stroke-width':3.5,'stroke-dasharray':'5 4'}));
      art = 'virtuell, aufrecht, vergrössert (Lupe)';
    }
  } else {
    linie(Lx, Gy, W-20, Gy, '#FF8A8A', false);
    linie(Lx, achse, W-20, achse + mSteig*(W-20-Lx), '#8FB4FF', false);
  }

  const leg = [['#FF8A8A','Parallelstrahl'],['#8FB4FF','Mittelpunktstrahl'],['#7DE2A2','Gegenstand'],['#FFD166','Bild / Brennpunkt']];
  leg.forEach(([c,t],i)=>{
    svg.appendChild(sEl('rect',{x:24+i*168,y:18,width:11,height:11,rx:3,fill:c}));
    const tx = sEl('text',{x:41+i*168,y:28,fill:'#AEB7D8','font-size':12}); tx.textContent=t; svg.appendChild(tx);
  });

  $('#bwert').textContent = b === null ? '—' : (b>0 ? b.toFixed(1).replace('.',',')+' cm' : Math.abs(b).toFixed(1).replace('.',',')+' cm (virtuell)');
  $('#Bwert').textContent = B === null ? '—' : Math.abs(B).toFixed(1).replace('.',',')+' cm';
  $('#bildart').textContent = art;
}
['g','f','G'].forEach(id => $('#'+id).addEventListener('input', zeichneLinse));

/* ====================== AUGE-SVG ====================== */
function augeSVG(beschriftet){
  const s = sEl('svg',{viewBox:'0 0 460 350', role:'img','aria-label':'Schnitt durch das Auge'});
  const cx=250, cy=175;
  s.appendChild(sEl('circle',{cx,cy,r:122,fill:'#FFFFFF',stroke:'#11162B','stroke-width':3}));      // Lederhaut
  s.appendChild(sEl('circle',{cx,cy,r:112,fill:'none',stroke:'#C0703A','stroke-width':3}));          // Aderhaut
  s.appendChild(sEl('circle',{cx,cy,r:103,fill:'#F4F7FF',stroke:'#2F6BD8','stroke-width':3}));       // Netzhaut
  // vordere Kammer / Hornhaut
  s.appendChild(sEl('path',{d:'M 150 92 Q 96 175 150 258',fill:'rgba(143,180,255,.18)',stroke:'#2F6BD8','stroke-width':3}));
  // Iris
  s.appendChild(sEl('path',{d:'M 152 96 L 186 145',stroke:'#2E9E5B','stroke-width':7,'stroke-linecap':'round'}));
  s.appendChild(sEl('path',{d:'M 152 254 L 186 205',stroke:'#2E9E5B','stroke-width':7,'stroke-linecap':'round'}));
  // Linse
  s.appendChild(sEl('ellipse',{cx:215,cy:175,rx:19,ry:46,fill:'rgba(255,209,102,.35)',stroke:'#B5820A','stroke-width':3}));
  // Sehnerv
  s.appendChild(sEl('path',{d:'M 370 205 L 430 232',stroke:'#6C4BD1','stroke-width':12,'stroke-linecap':'round'}));
  // Glaskörper-Hinweispunkt
  s.appendChild(sEl('circle',{cx:285,cy:175,r:2.5,fill:'#3B4468'}));

  const ziele = [[123,175,52,92],[168,120,116,34],[215,131,246,34],[186,175,124,320],[292,178,292,322],[330,112,420,66],[332,262,366,320],[412,225,436,168]];
  const namen = ['Hornhaut','Regenbogenhaut','Linse','Pupille','Glaskörper','Netzhaut','Lederhaut','Sehnerv'];
  const anker = [ 'middle','middle','middle','middle','middle','middle','middle','end' ];
  ziele.forEach(([tx,ty,lx,ly],i)=>{
    s.appendChild(sEl('line',{x1:lx,y1:ly,x2:tx,y2:ty,stroke:'#3B4468','stroke-width':1.2}));
    if(beschriftet){
      const t = sEl('text',{x:lx,y:ly+5,fill:'#11162B','font-size':15,'text-anchor':anker[i],'font-weight':'700'});
      t.textContent = namen[i]; s.appendChild(t);
    } else {
      s.appendChild(sEl('circle',{cx:lx,cy:ly,r:14,fill:'#11162B'}));
      const t = sEl('text',{x:lx,y:ly+5,fill:'#fff','font-size':14,'text-anchor':'middle','font-weight':'700'});
      t.textContent = i+1; s.appendChild(t);
    }
  });
  return s;
}

/* ====================== FRAGEN-RENDERER ====================== */
function baueFrage(q, modus){
  const t = thema(q.th);
  const box = el('div','frage');
  box.style.setProperty('--f', t.farbe);
  const kopf = el('div','fkopf');
  kopf.appendChild(el('div','ftext', q.f));
  const marke = el('span','fmarke', t.titel); kopf.appendChild(marke);
  box.appendChild(kopf);

  const rueck = el('div','rueck neutral'); rueck.hidden = true;
  let gewertet = false;
  const werten = (ok, text) => {
    if(gewertet) return; gewertet = true;
    if(modus === 'ueben') punkte(ok);
    rueck.className = 'rueck ' + (ok ? 'gut' : 'schlecht');
    rueck.innerHTML = '<b>' + (ok ? 'Richtig. ' : 'Noch nicht. ') + '</b>' + (text || q.e || '');
    rueck.hidden = false;
  };
  let auswerten = () => ({ok:false, beantwortet:false});

  /* ---------- Multiple Choice & Wahr/Falsch ---------- */
  if(q.t === 'mc' || q.t === 'tf'){
    const optionen = q.t === 'tf' ? ['Stimmt','Stimmt nicht'] : q.o;
    const richtig  = q.t === 'tf' ? (q.r ? 0 : 1) : q.r;
    const feld = el('div','optionen');
    let gewaehlt = null;
    optionen.forEach((o,i)=>{
      const b = el('button','opt');
      b.type = 'button';
      const bx = el('span','bx', String.fromCharCode(65+i));
      b.appendChild(bx); b.appendChild(el('span','',o));
      b.addEventListener('click', ()=>{
        if(gewertet) return;
        gewaehlt = i;
        if(modus === 'ueben'){
          feld.querySelectorAll('.opt').forEach((x,j)=>{
            x.disabled = true;
            if(j === richtig) x.classList.add('richtig');
            else if(j === i) x.classList.add('falsch');
          });
          werten(i === richtig);
        } else {
          feld.querySelectorAll('.opt').forEach(x => x.setAttribute('aria-pressed','false'));
          b.setAttribute('aria-pressed','true');
          b.style.borderColor = 'var(--tinte)';
          feld.querySelectorAll('.opt').forEach(x => { if(x!==b) x.style.borderColor=''; });
        }
      });
      feld.appendChild(b);
    });
    box.appendChild(feld);
    auswerten = () => {
      const ok = gewaehlt === richtig;
      feld.querySelectorAll('.opt').forEach((x,j)=>{
        x.disabled = true;
        if(j === richtig) x.classList.add('richtig');
        else if(j === gewaehlt) x.classList.add('falsch');
      });
      werten(ok);
      return {ok, beantwortet: gewaehlt !== null};
    };
  }

  /* ---------- Lückentext ---------- */
  else if(q.t === 'fill'){
    const teile = q.f.split('___');
    kopf.querySelector('.ftext').textContent = 'Ergänze die Lücken.';
    const satz = el('p','');
    const felder = [];
    teile.forEach((teil,i)=>{
      satz.appendChild(document.createTextNode(teil));
      if(i < teile.length-1){
        const inp = document.createElement('input');
        inp.type = 'text'; inp.className = 'luecke'; inp.size = 13;
        inp.setAttribute('aria-label','Lücke ' + (i+1));
        felder.push(inp); satz.appendChild(inp);
      }
    });
    box.appendChild(satz);
    const pruefe = () => {
      let alle = true;
      felder.forEach((inp,i)=>{
        const ok = (q.l[i]||[]).some(a => norm(a) === norm(inp.value));
        inp.classList.add(ok ? 'richtig' : 'falsch');
        inp.disabled = true;
        if(!ok) inp.value = inp.value ? inp.value + ' → ' + q.l[i][0] : q.l[i][0];
        if(!ok) alle = false;
      });
      werten(alle);
      return {ok:alle, beantwortet: felder.some(f => f.value.trim() !== '')};
    };
    if(modus === 'ueben'){
      const b = el('button','knopf leer','Prüfen'); b.addEventListener('click', pruefe);
      box.appendChild(el('div','leiste')).appendChild(b);
    }
    auswerten = pruefe;
  }

  /* ---------- Rechnen ---------- */
  else if(q.t === 'calc'){
    const zeile = el('div','leiste');
    const inp = document.createElement('input');
    inp.type = 'text'; inp.inputMode = 'decimal'; inp.size = 10; inp.setAttribute('aria-label','Antwort');
    zeile.appendChild(inp);
    zeile.appendChild(el('span','hinweis', q.einheit || ''));
    box.appendChild(zeile);
    const pruefe = () => {
      const wert = parseFloat(inp.value.replace(',','.').replace(/[^0-9.\-]/g,''));
      const ok = !isNaN(wert) && Math.abs(wert - q.r) <= (q.tol ?? 0);
      inp.classList.add(ok ? 'richtig' : 'falsch'); inp.disabled = true;
      werten(ok, ok ? q.e : 'Richtig wäre <b>' + String(q.r).replace('.',',') + ' ' + (q.einheit||'') + '</b>. ' + (q.e||''));
      return {ok, beantwortet: inp.value.trim() !== ''};
    };
    if(modus === 'ueben'){
      const b = el('button','knopf leer','Prüfen'); b.addEventListener('click', pruefe); zeile.appendChild(b);
    }
    auswerten = pruefe;
  }

  /* ---------- Zuordnen ---------- */
  else if(q.t === 'match'){
    const links = q.p.map(p => p[0]);
    const rechts = mischen(q.p.map(p => p[1]));
    const raster = el('div','paare');
    const spalteL = el('div',''), spalteR = el('div','');
    spalteL.style.display = spalteR.style.display = 'grid';
    spalteL.style.gap = spalteR.style.gap = '8px';
    let offen = null;
    const zuordnung = {};
    const knopfL = {}, knopfR = {};
    links.forEach(t => {
      const b = el('button','',t); b.type='button'; knopfL[t]=b; spalteL.appendChild(b);
      b.addEventListener('click',()=>{
        if(gewertet || zuordnung[t]) return;
        Object.values(knopfL).forEach(x => x.setAttribute('aria-pressed','false'));
        b.setAttribute('aria-pressed','true'); offen = t;
      });
    });
    rechts.forEach(r => {
      const b = el('button','',r); b.type='button'; knopfR[r]=b; spalteR.appendChild(b);
      b.addEventListener('click',()=>{
        if(gewertet || !offen || b.classList.contains('gepaart')) return;
        zuordnung[offen] = r;
        knopfL[offen].classList.add('gepaart'); knopfL[offen].setAttribute('aria-pressed','false');
        knopfL[offen].textContent = offen + '  ↔  ' + r;
        b.classList.add('gepaart'); b.disabled = true;
        offen = null;
      });
    });
    raster.appendChild(spalteL); raster.appendChild(spalteR);
    box.appendChild(raster);
    const pruefe = () => {
      let ok = true;
      q.p.forEach(([l,r])=>{
        const b = knopfL[l];
        if(zuordnung[l] === r){ b.classList.add('richtig'); b.style.borderColor='var(--ok)'; }
        else { ok = false; b.style.borderColor='var(--fehl)'; b.style.background='#FCEFEF';
               b.textContent = l + '  ↔  ' + r; }
      });
      Object.values(knopfR).forEach(b => b.disabled = true);
      werten(ok, ok ? q.e : 'Die richtigen Paare stehen jetzt links. ' + (q.e||''));
      return {ok, beantwortet: Object.keys(zuordnung).length > 0};
    };
    const leiste = el('div','leiste');
    if(modus === 'ueben'){
      const b = el('button','knopf leer','Prüfen'); b.addEventListener('click', pruefe); leiste.appendChild(b);
      const z = el('button','knopf leer','Zurücksetzen');
      z.addEventListener('click', ()=>{ if(!gewertet) neuZeichnen(); });
      leiste.appendChild(z);
    }
    box.appendChild(leiste);
    auswerten = pruefe;
    function neuZeichnen(){ const neu = baueFrage(q, modus); box.replaceWith(neu.el); }
  }

  /* ---------- Auge beschriften ---------- */
  else if(q.t === 'eye'){
    const raster = el('div','augeraster');
    raster.appendChild(augeSVG());
    const felder = el('div','augefelder');
    const selects = [];
    AUGELOESUNG.forEach((_,i)=>{
      const z = el('div','augefeld');
      z.appendChild(el('span','num', String(i+1)));
      const s = document.createElement('select');
      s.setAttribute('aria-label','Teil ' + (i+1));
      s.appendChild(new Option('— wählen —',''));
      mischen(AUGENTEILE).forEach(t => s.appendChild(new Option(t,t)));
      selects.push(s); z.appendChild(s); felder.appendChild(z);
    });
    raster.appendChild(felder);
    box.appendChild(raster);
    const pruefe = () => {
      let treffer = 0;
      selects.forEach((s,i)=>{
        const ok = s.value === AUGELOESUNG[i];
        if(ok) treffer++;
        s.classList.add(ok ? 'richtig' : 'falsch');
        s.disabled = true;
        if(!ok){ const o = new Option(AUGELOESUNG[i] + ' (richtig)', 'x'); s.appendChild(o); s.value='x'; }
      });
      const ok = treffer === AUGELOESUNG.length;
      werten(ok, treffer + ' von ' + AUGELOESUNG.length + ' richtig. ' + (q.e||''));
      return {ok, beantwortet: true};
    };
    if(modus === 'ueben'){
      const b = el('button','knopf leer','Prüfen'); b.addEventListener('click', pruefe);
      box.appendChild(el('div','leiste')).appendChild(b);
    }
    auswerten = pruefe;
  }

  /* ---------- Schreibaufgabe ---------- */
  else if(q.t === 'schreib'){
    marke.textContent = 'Schreiben · ' + t.titel;
    marke.style.background = 'var(--violett)';
    const ta = document.createElement('textarea');
    ta.rows = 6; ta.style.width='100%'; ta.style.padding='11px'; ta.style.borderRadius='9px';
    ta.style.border='1px solid var(--linie)'; ta.style.font='inherit'; ta.style.lineHeight='1.5';
    ta.placeholder = 'Schreib deine Antwort in ganzen Sätzen — so wie du es im Test machen würdest.';
    box.appendChild(ta);
    const zaehlzeile = el('p','hinweis','0 Wörter');
    ta.addEventListener('input', ()=>{
      const n = ta.value.trim() ? ta.value.trim().split(/\s+/).length : 0;
      zaehlzeile.textContent = n + (n===1 ? ' Wort' : ' Wörter');
    });
    box.appendChild(zaehlzeile);
    const leiste = el('div','leiste');
    const pruefknopf = el('button','knopf','Antwort prüfen');
    leiste.appendChild(pruefknopf); box.appendChild(leiste);
    const pruefe = () => {
      if(gewertet) return {ok:false, beantwortet:false};
      pruefknopf.remove();
      ta.readOnly = true;
      const text = norm(ta.value);
      const liste = el('div','begriffe');
      let treffer = 0;
      q.hilfe.forEach(gruppe => {
        const da = gruppe.some(w => text.includes(norm(w)));
        if(da) treffer++;
        const z = el('div', 'begriff ' + (da ? 'da' : 'fehlt'));
        z.appendChild(el('span','haken', da ? '✓' : '✗'));
        z.appendChild(el('span','', gruppe[0]));
        liste.appendChild(z);
      });
      const kopfz = el('p','hinweis','Diese Begriffe sollten vorkommen — du hast ' + treffer + ' von ' + q.hilfe.length + ':');
      box.insertBefore(kopfz, rueck); box.insertBefore(liste, rueck);
      const loes = el('div','rueck neutral');
      loes.innerHTML = '<b>So könnte eine volle Antwort aussehen:</b><br>' + q.m;
      box.insertBefore(loes, rueck);
      const ja = el('button','knopf','Meine war gleich gut');
      const nein = el('button','knopf leer','Da fehlte einiges');
      leiste.appendChild(ja); leiste.appendChild(nein);
      ja.addEventListener('click', ()=>{ werten(true,'Dann kannst du das Thema erklären, nicht nur wiedererkennen. Genau darauf zielen die Erklärungsaufgaben im Test.'); ja.remove(); nein.remove(); });
      nein.addEventListener('click', ()=>{ werten(false,'Schreib die Musterlösung einmal von Hand ab und formuliere sie danach ohne Vorlage neu. Das ist die wirksamste Übung für Erklärungsaufgaben.'); ja.remove(); nein.remove(); });
      return {ok:false, beantwortet:true};
    };
    pruefknopf.addEventListener('click', pruefe);
    auswerten = () => ({ok:false, beantwortet:false});
  }

  /* ---------- Praktischer Versuch ---------- */
  else if(q.t === 'versuch'){
    marke.textContent = 'Versuch · ' + t.titel;
    marke.style.background = 'var(--gruen)';
    const mat = el('p','versuchmat'); mat.innerHTML = '<b>Das brauchst du:</b> ' + q.mat; box.appendChild(mat);
    const ol = document.createElement('ol'); ol.className = 'versuchschritte';
    q.schritte.forEach(s => { const li = document.createElement('li'); li.textContent = s; ol.appendChild(li); });
    box.appendChild(ol);
    const ta = document.createElement('textarea');
    ta.rows = 3; ta.style.width='100%'; ta.style.padding='10px'; ta.style.borderRadius='9px';
    ta.style.border='1px solid var(--linie)'; ta.style.font='inherit';
    ta.placeholder = 'Was beobachtest du? Erst selbst aufschreiben.';
    box.appendChild(ta);
    const leiste = el('div','leiste');
    const zeigen = el('button','knopf leer','Erklärung zeigen');
    leiste.appendChild(zeigen); box.appendChild(leiste);
    zeigen.addEventListener('click', ()=>{
      zeigen.remove();
      const loes = el('div','rueck neutral');
      loes.innerHTML = '<b>Das passiert und warum:</b><br>' + q.m;
      box.insertBefore(loes, rueck);
      const ja = el('button','knopf','Hatte ich erwartet');
      const nein = el('button','knopf leer','War neu für mich');
      leiste.appendChild(ja); leiste.appendChild(nein);
      ja.addEventListener('click', ()=>{ werten(true,'Sehr gut — dann sitzt das Prinzip.'); ja.remove(); nein.remove(); });
      nein.addEventListener('click', ()=>{ werten(false,'Kein Problem. Lies die Erklärung nochmal und schau dir die Theorie zum Thema an.'); ja.remove(); nein.remove(); });
    });
    auswerten = () => ({ok:false, beantwortet:false});
  }

  /* ---------- Offene Frage ---------- */
  else if(q.t === 'open'){
    const ta = document.createElement('textarea');
    ta.rows = 4; ta.style.width = '100%'; ta.style.padding='10px'; ta.style.borderRadius='9px';
    ta.style.border='1px solid var(--linie)'; ta.style.font='inherit';
    ta.placeholder = 'Antworte zuerst selbst — danach vergleichen.';
    box.appendChild(ta);
    const leiste = el('div','leiste');
    const zeigen = el('button','knopf leer','Musterlösung zeigen');
    leiste.appendChild(zeigen); box.appendChild(leiste);
    zeigen.addEventListener('click', ()=>{
      zeigen.remove();
      const loes = el('div','rueck neutral');
      loes.innerHTML = '<b>So könnte die Antwort aussehen:</b><br>' + q.m;
      box.insertBefore(loes, rueck);
      const ja = el('button','knopf','Hatte ich so');
      const nein = el('button','knopf leer','Hatte ich nicht');
      leiste.appendChild(ja); leiste.appendChild(nein);
      ja.addEventListener('click', ()=>{ werten(true, 'Weiter so.'); ja.remove(); nein.remove(); });
      nein.addEventListener('click', ()=>{ werten(false, 'Lies die Musterlösung nochmal und schreib sie einmal von Hand ab — das hilft mehr als nur lesen.'); ja.remove(); nein.remove(); });
    });
    auswerten = () => ({ok:false, beantwortet:false});
  }

  box.appendChild(rueck);
  return {el:box, auswerten};
}

/* ====================== THEORIE ====================== */
function baueTheorie(){
  const liste = $('#themenliste');
  THEMEN.forEach(t => {
    const b = el('button','thema');
    b.style.setProperty('--f', t.farbe);
    b.appendChild(el('span','nr','Thema ' + t.nr));
    b.appendChild(el('span','ti', t.titel));
    b.addEventListener('click', ()=> zeigeTheorie(t.id, true));
    liste.appendChild(b);
  });
  zeigeTheorie('licht');
}
function zeigeTheorie(id, scrollen){
  const t = thema(id), d = THEORIE[id], ziel = $('#theorietext');
  ziel.textContent = '';
  const block = el('div','theorieblock');
  block.style.setProperty('--f', t.farbe);
  block.appendChild(el('h2','', t.nr + '. ' + t.titel));

  const bild = el('div','theoriebild');
  if(id === 'auge'){ bild.appendChild(augeSVG(true)); }
  else { bild.innerHTML = BILDER[id] || ''; }
  if(bild.firstChild) block.appendChild(bild);

  if(EINFACH[id]){
    const e = el('div','einfach');
    e.appendChild(el('span','einfachtitel','Einfach erklärt'));
    e.appendChild(el('p','', EINFACH[id]));
    block.appendChild(e);
  }
  block.appendChild(el('h3','','Das musst du können'));
  const ul = el('ul','');
  d.punkte.forEach(p => { const li = document.createElement('li'); li.innerHTML = p; ul.appendChild(li); });
  block.appendChild(ul);
  const m = el('div','merksatz'); m.innerHTML = '★ ' + d.merk; block.appendChild(m);
  const b = el('button','knopf','Dieses Thema jetzt üben');
  b.addEventListener('click', ()=>{
    document.querySelector('#nav button[data-ziel="ueben"]').click();
    setzeUebenFilter(id);
  });
  block.appendChild(b);
  ziel.appendChild(block);
  if(scrollen && ziel.scrollIntoView) ziel.scrollIntoView({block:'start', behavior:'smooth'});
}

/* ====================== KARTEIKARTEN ====================== */
let kartenStapel = [], kartenIndex = 0, kartenFilter = 'alle';
function baueKartenFilter(){
  const leiste = $('#kartenfilter');
  const alle = el('button','chip','Alle Themen'); alle.setAttribute('aria-pressed','true');
  alle.addEventListener('click', ()=> setzeKartenFilter('alle'));
  leiste.appendChild(alle);
  THEMEN.forEach(t => {
    const c = el('button','chip', t.titel);
    c.setAttribute('aria-pressed','false');
    c.addEventListener('click', ()=> setzeKartenFilter(t.id));
    leiste.appendChild(c);
  });
  setzeKartenFilter('alle');
}
function setzeKartenFilter(id){
  kartenFilter = id;
  const knoepfe = [...$('#kartenfilter').children];
  knoepfe.forEach((b,i) => b.setAttribute('aria-pressed', String((i===0 && id==='alle') || (i>0 && THEMEN[i-1].id===id))));
  kartenStapel = mischen(KARTEN.filter(k => id==='alle' || k.th===id));
  kartenIndex = 0;
  zeigeKarte();
}
function zeigeKarte(){
  $('#flip').classList.remove('um');
  if(!kartenStapel.length){
    $('#kfrage').textContent = 'Alle Karten dieses Themas sitzen. Wähle ein anderes Thema oder starte den Stapel neu.';
    $('#kantwort').textContent = '';
    $('#kstand').textContent = '';
    return;
  }
  const k = kartenStapel[kartenIndex % kartenStapel.length];
  $('#kfrage').textContent = k.f;
  $('#kantwort').textContent = k.a;
  $('#kstand').textContent = 'Noch ' + kartenStapel.length + ' Karte' + (kartenStapel.length===1?'':'n') + ' im Stapel';
}
$('#flipinner').addEventListener('click', ()=> $('#flip').classList.toggle('um'));
$('#kdrehen').addEventListener('click', ()=> $('#flip').classList.toggle('um'));
$('#kja').addEventListener('click', ()=>{
  if(!kartenStapel.length) return;
  punkte(true);
  kartenStapel.splice(kartenIndex % kartenStapel.length, 1);
  if(kartenIndex >= kartenStapel.length) kartenIndex = 0;
  zeigeKarte();
});
$('#knein').addEventListener('click', ()=>{
  if(!kartenStapel.length) return;
  punkte(false);
  const k = kartenStapel.splice(kartenIndex % kartenStapel.length, 1)[0];
  kartenStapel.push(k);                       // kommt später nochmal
  if(kartenIndex >= kartenStapel.length) kartenIndex = 0;
  zeigeKarte();
});

/* ====================== ÜBEN ====================== */
function baueUebenFilter(){
  const leiste = $('#uebenfilter');
  const alle = el('button','chip','Alles gemischt');
  alle.addEventListener('click', ()=> setzeUebenFilter('alle'));
  leiste.appendChild(alle);
  THEMEN.forEach(t => {
    const c = el('button','chip', t.nr + '. ' + t.titel);
    c.addEventListener('click', ()=> setzeUebenFilter(t.id));
    leiste.appendChild(c);
  });
  baueArtFilter();
  setzeUebenFilter('alle');
}
const ARTEN = [
  {id:'alle',    titel:'Alle Aufgabentypen', typen:null},
  {id:'schreib', titel:'Schreibaufgaben',    typen:['schreib','open']},
  {id:'kreuz',   titel:'Ankreuzen & Lücken', typen:['mc','tf','fill','match','eye']},
  {id:'rechnen', titel:'Rechnen',            typen:['calc']},
  {id:'versuch', titel:'Versuche',           typen:['versuch']}
];
let uebenThema = 'alle', uebenArt = 'alle';
function baueArtFilter(){
  const leiste = $('#artfilter');
  ARTEN.forEach(a => {
    const c = el('button','chip', a.titel);
    c.addEventListener('click', ()=>{ uebenArt = a.id; zeichneUeben(); });
    leiste.appendChild(c);
  });
}
function setzeUebenFilter(id){ uebenThema = id; zeichneUeben(); }
function zeichneUeben(){
  [...$('#uebenfilter').children].forEach((b,i) =>
    b.setAttribute('aria-pressed', String((i===0 && uebenThema==='alle') || (i>0 && THEMEN[i-1].id===uebenThema))));
  [...$('#artfilter').children].forEach((b,i) =>
    b.setAttribute('aria-pressed', String(ARTEN[i].id === uebenArt)));
  const art = ARTEN.find(a => a.id === uebenArt);
  const ziel = $('#uebenliste'); ziel.textContent = '';
  let auswahl = uebenThema==='alle' ? mischen(FRAGEN) : FRAGEN.filter(q => q.th===uebenThema);
  if(art.typen) auswahl = auswahl.filter(q => art.typen.includes(q.t));
  ziel.appendChild(el('p','hinweis', auswahl.length + (auswahl.length===1 ? ' Aufgabe' : ' Aufgaben')));
  if(!auswahl.length) ziel.appendChild(el('p','hinweis','Zu dieser Kombination gibt es nichts — wähl ein anderes Thema oder einen anderen Typ.'));
  auswahl.forEach(q => ziel.appendChild(baueFrage(q,'ueben').el));
}

/* ====================== PROBETEST ====================== */
$('#pstart').addEventListener('click', starteTest);
function starteTest(){
  const pool = mischen(FRAGEN.filter(q => q.t !== 'open' && q.t !== 'versuch' && q.t !== 'schreib')).slice(0,20);
  const ziel = $('#pinhalt'); ziel.textContent = '';
  const balken = $('#pbalken'); balken.hidden = false; balken.querySelector('i').style.width = '0%';
  $('#pstart').textContent = 'Neu starten';
  $('#pinfo').textContent = 'Beantworte alle 20 Aufgaben und klicke dann unten auf «Test auswerten».';
  const gebaut = pool.map(q => {
    const f = baueFrage(q,'pruefung');
    ziel.appendChild(f.el);
    return f;
  });
  const leiste = el('div','leiste');
  const werten = el('button','knopf','Test auswerten');
  leiste.appendChild(werten); ziel.appendChild(leiste);
  werten.addEventListener('click', ()=>{
    werten.disabled = true;
    let richtig = 0;
    const proThema = {};
    gebaut.forEach((f,i) => {
      const r = f.auswerten();
      const th = pool[i].th;
      proThema[th] = proThema[th] || {r:0, g:0};
      proThema[th].g++; if(r.ok){ richtig++; proThema[th].r++; }
      punkte(r.ok);
    });
    balken.querySelector('i').style.width = '100%';
    const erg = el('div','karte ergebnis');
    const prozent = Math.round(richtig/gebaut.length*100);
    erg.appendChild(el('div','gross', richtig + ' / ' + gebaut.length));
    const note = prozent >= 85 ? 'Das sitzt. Schau nur noch die Fehler an.'
              : prozent >= 60 ? 'Solide Basis. Geh gezielt die schwachen Themen nochmal durch.'
              : 'Noch wacklig. Lies die Theorie der schwachen Themen und mach den Test danach nochmal.';
    erg.appendChild(el('p','hinweis', note));
    const bilanz = el('div','bilanz');
    Object.entries(proThema).sort((a,b)=> (a[1].r/a[1].g)-(b[1].r/b[1].g)).forEach(([th,v])=>{
      const z = el('div','');
      z.appendChild(el('span','', thema(th).titel));
      z.appendChild(el('b','', v.r + '/' + v.g));
      bilanz.appendChild(z);
    });
    erg.appendChild(bilanz);
    ziel.insertBefore(erg, ziel.firstChild);
    if(erg.scrollIntoView) erg.scrollIntoView({behavior:'smooth', block:'center'});
  });
  if(ziel.scrollIntoView) ziel.scrollIntoView({behavior:'smooth', block:'start'});
}

/* ====================== KORREKTUREN & PLAN ====================== */
function baueKorrekturen(){
  const ziel = $('#korrekturliste');
  KORREKTUREN.forEach(k => {
    const b = el('div','korrektur');
    b.appendChild(el('h3','', thema(k.th).titel));
    const f = el('p','falschsatz'); f.innerHTML = 'Im Heft: ' + k.falsch; b.appendChild(f);
    const r = el('p','richtigsatz'); r.innerHTML = 'Richtig: ' + k.richtig; b.appendChild(r);
    const t = el('p',''); t.innerHTML = k.text; b.appendChild(t);
    ziel.appendChild(b);
  });
}
function bauePlan(){
  const ziel = $('#planliste');
  PLAN.forEach(p => {
    const k = el('div','karte');
    k.appendChild(el('h3','', p.tag));
    k.appendChild(el('p','hinweis', p.dauer));
    const ol = document.createElement('ol');
    p.punkte.forEach(x => { const li = document.createElement('li'); li.textContent = x; ol.appendChild(li); });
    k.appendChild(ol);
    ziel.appendChild(k);
  });
}

/* ====================== START ====================== */
zeichneLinse();
baueTheorie();
baueKartenFilter();
baueUebenFilter();
baueKorrekturen();
bauePlan();
</script>
</body>
</html>
