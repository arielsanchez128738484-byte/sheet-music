\version "2.24.0"

\header {
  title = "The Endless Loop"
  subtitle = "Psychological Thriller Narrative"
  composer = "AI Collaborator"
}

global = {
  \key e \minor
  \time 4/4
}

% --- INSTRUMENTO 1: VIOLÍN PRINCIPAL ---
violin = \relative c'' {
  \global
  % 0:00 - 1:00 | 1ª Muerte: Estado de Sorpresa (15 Compases) - PROTAGONISTA
  \tempo "Lento, Limpio y Emotivo" 4 = 60
  b4.( c8 b2) | a4.( b8 a2) | g4. fis8 e2 | fis4.( g8 fis2) |
  b4.( d8 e2) | fis4.( g8 fis2) | g4.( fis8 e2) | d4.( e8 d2) |
  b4.( c8 b2) | a4.( b8 a2) | g4. fis8 e2 | fis4.( g8 fis2) |
  b4.( d8 e2) | fis4.( g8 fis2) | e1 |
  \break
  
  % 1:00 - 1:30 | 2ª Muerte: Desconexión y Negación (8 Compases)
  \tempo "Fade Down - Eco Tenue"
  b4..(_\markup { \italic "segundo plano, lejano" } c16 b2) | a4..( b16 a2) |
  g4.. fis16 e2 | fis1 |
  b4..( c16 b2) | a4..( b16 a2) |
  g4.. fis16 e2 | fis2 r |
  \break
  
  % 1:30 - 2:15 | 3ª Muerte: El Crossfade y el Miedo Real (11 Compases)
  R1*11_\markup { \italic "Violín completamente mudo" } |
  \break
  
  % 2:15 - 3:15 | Muertes Sucesivas: Búsqueda Desesperada (32 Compases en Accelerando)
  R1*32 | 
  \break
  
  % 3:15 - 3:40 | Descenso a la Locura: El Violín Regresa Ultra Agresivo (20 Compases Exactos)
  \tempo "Agresivo, Desesperado y Caótico" 4 = 150
  
  % Compases del 1 al 4 (Bloque rítmico simétrico)
  bes16->\fff e dis e bes e dis e b' a g fis e dis e fis |
  g16 fis g a b a b c dis c dis e fis e dis c |
  e16 fis g a b a g fis e16 fis g a b a g fis |
  b8-> a-> g-> fis-> e2-> |
  
  % Compases del 5 al 8 (Bloque rítmico simétrico)
  bes16-> e dis e bes e dis e b' a g fis e dis e fis |
  g16 fis g a b a b c dis c dis e fis e dis c |
  e16 fis g a b a g fis e16 fis g a b a g fis |
  b8-> a-> g-> fis-> e2-> |
  
  % Compases del 9 al 12 (Bloque rítmico simétrico)
  bes16-> e dis e bes e dis e b' a g fis e dis e fis |
  g16 fis g a b a b c dis c dis e fis e dis c |
  e16 fis g a b a g fis e16 fis g a b a g fis |
  b8-> a-> g-> fis-> e2-> |
  
  % Compases del 13 al 16 (Bloque rítmico simétrico)
  bes16-> e dis e bes e dis e b' a g fis e dis e fis |
  g16 fis g a b a b c dis c dis e fis e dis c |
  e16 fis g a b a g fis e16 fis g a b a g fis |
  b8-> a-> g-> fis-> e2-> |
  
  % Compases del 17 al 20 (Cierre de la sección corregido nota por nota)
  e16 dis e fis g fis g a b2-> |
  e16 dis e fis g fis g a b2-> |
  e16 dis e fis g fis g a b2-> |
  e1->\fff |
  \break
  
  % 3:40 - 3:45 | La Ruptura del Bucle (1 Compás de Vacío)
  \tempo "Corte Abrupto - Sin Reverb"
  R1_\markup { \italic "5 segundos de vacío total" } |
  \break
  
  % 3:45 - 4:00 | Outro: Fin del Ciclo (4 Compases)
  \tempo "Suave y Trágico" 4 = 55
  b4.( c8 b2) | a4.( b8 a2) | g4.( fis8 e2_\markup { \italic "Fade out definitivo" }) | r1 \bar "|."
}

% --- INSTRUMENTO 2: PIANO ELÉCTRICO ---
electricPiano = \relative c' {
  \global
  % 0:00 - 1:00 (15 Compases)
  \repeat unfold 2 {
    <e g b>1 | <c e a>1 | <b dis fis>1 | <e g b>1 |
    <e g b>1 | <c e a>1 | <b dis fis>1 |
  }
  <e g b>1 |
  
  % 1:00 - 1:30 (8 Compases)
  \repeat unfold 2 {
    <e g b>1_\markup { \italic "con Tremolo/Phaser" } | <c e a>1 | <b dis fis>1 | <e g b>1 |
  }
  
  % 1:30 - 2:15 (11 Compases)
  \repeat unfold 2 {
    <g b>1_\markup { \italic "Fondo armónico estático" } | <e a>1 | <dis fis>1 | <g b>1 | <e a>1 |
  }
  <dis fis>1 |
  
  % 2:15 - 3:15 (32 Compases)
  \tempo \markup { \italic "Accelerando Progresivo" }
  \repeat unfold 8 {
    <g b>1 | <e a>1 | <dis fis>1 | <g b>1 |
  }
  
  % 3:15 - 3:40 (20 Compases)
  \repeat unfold 5 {
    <g b>1 | <e a>1 | <dis fis>1 | <g b>1 |
  }
  
  % 3:40 - 3:45
  R1 |
  
  % 3:45 - 4:00
  R1*4 |
}

% --- INSTRUMENTO 3: BAJO ELÉCTRICO ---
electricBass = \relative c {
  \global
  \clef bass
  % 0:00 - 1:00
  R1*15 |
  
  % 1:00 - 1:30
  R1*8 |
  
  % 1:30 - 2:15 | 3ª Muerte: EL BAJO TOMA EL CONTROL SOLISTA
  e4.\fff_\markup { \italic "Bajo Solista - Línea Melódica de Dark Jazz" } g8 b4 a8 g | fis4. a8 c4 b8 a | g4 fis e dis | e2. r4 |
  c'4. b8 a4 g | fis4. e8 dis4 b | e4. g8 b4 a8 g | fis4. a8 c4 b8 a |
  g4 fis e dis | e1 | c'2 b4 fis |
  
  % 2:15 - 3:15 | Muertes Sucesivas: Riffs pesados, rítmicos y protagónicos
  \repeat unfold 4 {
    e8->\fff e16 e e8-> g fis-> fis16 fis fis8-> a | g8-> g16 g g8-> b a8-> fis16 fis g8-> fis |
    e8-> e16 e e8-> g fis-> fis16 fis fis8-> a | g8-> fis e dis e2-> |
  }
  
  % 3:15 - 3:40 | Transición Crucial (Cae al fondo denso)
  e1_\markup { \italic "Cae al fondo como zumbido subsónico" }\fff | c1 | b1 | e1 |
  \repeat unfold 4 {
    e1 | c1 | b1 | e1 |
  }
  
  % 3:40 - 3:45
  R1 |
  
  % 3:45 - 4:00
  R1*4 |
}

% --- INSTRUMENTO 4: BATERÍA ---
drumAtmosphere = \drummode {
  \global
  % 0:00 - 1:00 (15 Compases)
  \repeat unfold 15 { sn4. sn8 sn2 | }
  
  % 1:00 - 1:30 (8 Compases)
  \repeat unfold 8 { sn4. sn8 sn2 | }
  
  % 1:30 - 2:15 (11 Compases)
  \repeat unfold 11 { sn4. sn8 sn2 | }
  
  % 2:15 - 3:15 (32 Compases)
  \repeat unfold 32 { hh16 hh hh hh hh8 hh hh16 hh hh hh hh8 hh | }
  
  % 3:15 - 3:40 (20 Compases)
  \repeat unfold 20 { hh16 hh hh hh hh hh hh hh hh hh hh hh hh hh hh hh | }
  
  % 3:40 - 3:45
  R1 |
  
  % 3:45 - 4:00
  R1*4 |
}

% --- CONFIGURACIÓN DE LA PARTITURA ---
\score {
  <<
    \new Staff \with { instrumentName = #"Violín" } \violin
    \new Staff \with { instrumentName = #"Piano Eléctrico" } \electricPiano
    \new Staff \with { instrumentName = #"Bajo Eléctrico" } \electricBass
    \new DrumStaff \with { instrumentName = #"Batería" } \drumAtmosphere
  >>
  \layout { }
  \midi { }
}






