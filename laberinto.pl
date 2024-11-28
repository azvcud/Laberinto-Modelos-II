/* Laberintos */

/* Laberinto no. 1 */
camino(inicio, 2).
camino(2, 8).
camino(2, 3).
camino(8, 9).
camino(9, 3).
camino(3, 4).
camino(4, 10).
camino(10, 16).
camino(16, 22).
camino(22, 21).
camino(21, 15).
camino(15, 14).
camino(14, 13).
camino(13, 7).
camino(7, 1).
camino(14, 20).
camino(20, 26).
camino(26, 27).
camino(27, 28).
camino(28, 29).
camino(29, 23).
camino(23, 17).
camino(17, 11).
camino(11, 5).
camino(5, 6).
camino(28, 34).
camino(34, 35).
camino(35, 36).
camino(36, 30).
camino(30, 24).
camino(24, 18).
camino(18, 12).
camino(34, 33).
camino(33, 32).
camino(32, fin).
camino(32, 31).
camino(31, 25).
camino(25, 19).

/* Laberinto no. 2 */
/*
camino(inicio, 2).
camino(2, 3).
camino(3, 4).
camino(4, 8).
camino(8, 12).
camino(2, 6).
camino(6, 7).
camino(6, 5).
camino(5, 1).
camino(5, 9).
camino(9, 13).
camino(13, 14).
camino(9, 10).
camino(10, 11).
camino(11, 15).
camino(15, 16).
camino(16, fin).
*/

/*
Regla de búsqueda
-------------------------------------------------------------------------------
NOTA. La regla de búsqueda es una implementación del algoritmo DFS
(Búsqueda en profundidad). Se crea una lista que contiene los nodos
ya visitados para evitar bucles. Devolverá false si no existe camino.
*/

/* Predicado en lógica de primer orden */ 
% ∀A ∀B (conexion(A, B) ↔ (camino(A, B) ∨ camino(B, A)))

/* Conexión entre nodos bidireccional */
conexion(A, B) :- camino(A, B).
conexion(A, B) :- camino(B, A).


/* Predicado en lógica de primer orden */ 
% ∀A ∀B ∃C ((camino(A, C) ∧ (C ≠ B) ∧ (¬member(C, Visitados))) → ruta(C, B, Ruta, [C|Visitados]))

/* Algoritmo principal */
ruta(A, B, [A|Ruta], Visitados) :- 
    conexion(A, C),                     % Ramificar los caminos posibles hasta B
    C \= B,                             % C no debe ser B
    \+ member(C, Visitados),            % C no debe haber sido visitado antes
    ruta(C, B, Ruta, [C|Visitados]).    % Llamada recursiva

/* Caso en que la ruta desde A a B sea directa */
ruta(A, B, [A, B], Visitados) :- 
    conexion(A, B),
    \+ member(B, Visitados).

/* Regla para la impresión completa de la lista */
imprimir_ruta(Lista) :- write('Ruta = '), write(Lista), nl.

/* Regla para consultar si el laberinto es solucionable */
esSolucionable(A, B) :- ruta(A, B, Ruta, [A]), imprimir_ruta(Ruta).
