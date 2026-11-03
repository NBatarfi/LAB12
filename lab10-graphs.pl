edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Taif', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Makkah', 'Riyadh').
edge('Riyadh', 'Dammam').
edge('Dammam', 'Riyadh').
edge('Dammam', 'Al-Qatif').
edge('Al-Qatif', 'Madinah').
edge('Al-Qatif', 'Dammam').

travel(Start, End, Path) :-
    travel_helper(Start, End, [Start], Path).

 travel_helper(End, End, Visited, Visited).

travel_helper(Start, End, Visited, Path) :-
    edge(Start, Next),
    \+ member(Next, Visited), 
    travel_helper(Next, End, [Next | Visited], Path_Reversed),
    reverse(Path_Reversed, Path).
