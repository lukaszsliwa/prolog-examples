% Lukasz Sliwa
% lukasz.sliwa@gmail.com
%
% Gra w wojne.
%
% Gracze wybieraja kolejne karty, nie widza ich (karty sa odwrocone).
%

wojna([A|AX], [B|BX]) :-
  A < B,
  append(BX, [A], BXR),
  append(BXR, [B], BXRR),
  write('A: '), writeln(AX),
  write('B: '), writeln(BXRR),
  wojna(AX, BXRR).

wojna([A|AX], [B|BX]) :-
  A > B,
  append(AX, [B], AXR),
  append(AXR, [A], AXRR),
  write('A: '), writeln(AXRR),
  write('B: '), writeln(BX),
  wojna(AXRR, BX).

czas_wojny([A|AX], [B|BX], A1, B1, S) :- A < B, append(BX, [A], B111), append(B111, [B], B11), append(B11, S, B1), A1 = AX.
czas_wojny([A|AX], [B|BX], A1, B1, S) :- A > B, append(AX, [B], A111), append(A111, [A], A11), append(A11, S, A1), B1 = BX.
czas_wojny([A|AX], [B|BX], A1, B1, S) :-
  A = B,
  append(S, [A,B], S2),
  czas_wojny(AX, BX, A1, B1, S2).
czas_wojny([], [], A1, B1, S) :- write('Remis, obaj gracze nie maja kart, stos zawiera: '), writeln(S), A1 = [], B1 = [].
czas_wojny(AX, [], A1, B1, _) :- A1 = AX, B1 = [].
czas_wojny([], BX, A1, B1, _) :- B1 = BX, A1 = [].

wojna([A|AX], [B|BX]) :-
  A = B,
  append([A], [B], STOS),
  czas_wojny(AX, BX, A1, B1, STOS),
  write('A: '), writeln(A1),
  write('B: '), writeln(B1),
  wojna(A1, B1).

wojna([], []):- write('Obaj gracze nie maja kart.'), true.
wojna([], _) :- write('Wygral gracz B'), true.
wojna(_, []) :- write('Wygral gracz A'), true.

