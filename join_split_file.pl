% napisać dwa predykaty split2 i join2 rozdzielajacy i łączący co drugi znak z pliku do dwoch plikow

split2(File) :-
  open(File, read, FileIn),
  open('Part1', write, File1In),
  open('Part2', write, File2In),
  get_char(Char, FileIn),
  process(Char, FileIn, File1In, File2In, true),
  close(File2In),
  close(File1In),
  close(FileIn).

process(end_of_file, _, _, _, _) :- !.
process(Char, In, In1, In2, true) :-
  put_char(In1, Char),
  get_char(In, Char2),
  process(Char2, In, In1, In2, false).

process(Char, In, In1, In2, false) :-
  put_char(In2, Char),
  get_char(In, Char2),
  process(Char2, In, In1, In2, true).


join2(File1, File2, File3) :-
  open(File1, write, FileIn),
  open(File2, read, File1In),
  open(File3, read, File2In),
  get_char(File1In, Char1),
  get_char(File2In, Char2),
  process2(Char1, Char2, FileIn, File1In, File2In),
  close(File2In),
  close(File1In),
  close(FileIn).

process2(end_of_file, _, _, _, _) :- !.
process2(_, end_of_file, _, _, _) :- !.

process2(Char1, Char2, In, In1, In2) :-
  put_char(In, Char1),
  put_char(In, Char2),
  get_char(In1, Char1a),
  get_char(In2, Char2a),
  process2(Char1a, Char2a, In, In1, In2).


