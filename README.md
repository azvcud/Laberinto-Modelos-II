# Laberintos en Prolog

Universidad Distrital Francisco José de Caldas  
Proyecto Curricular de Ingeniería de Sistemas

**Asignatura:** Modelos de Programación II  
**Profesor:** Alejandro Paolo Daza Corredor

---

## Integrantes

- Amir Zoleyt Vanegas Cárdenas - 20211020015 <br> azvanegasc@udistrital.edu.co
- Esteban Alejandro Villalba Delgadillo - 20212020064 <br> eavillalbad@udistrital.edu.co
- Samuel Antonio Sanchez Peña - 20212020151 <br> samasanchezp@udistrital.edu.co

### Descripción del proyecto

Este programa en Prolog almacena en una base de conocimientos los caminos de laberintos, de modo que es posible consultar si dicho
laberinto es solucionable o no.

## Objetivo principal

El objetivo principal de este programa es codificar una solución para verificar si un laberinto es solucionable o no, aplicando 
los conceptos de Programación Lógica y la algoritmia necesaria para la solución de dichos problemas.

### Aspectos fundamentales

1. **Laberintos**:
   - La construcción de los laberintos está definida por hechos llamados caminos.
   - Los caminos se constituyen como aristas en sí mismos, y su contenido son los nodos (Números) del laberinto.
   
2. **Algoritmo**:
   - La determinación de si un laberinto es solucionable o no, depende de la regla ruta.
   - La regla ruta es una implementación del Algoritmo de búsqueda profunda en Programación Lógica.
   - Se incluye una lista de nodos visitados al algoritmo, para evitar bucles.
---

## Aspectos del código

### Algoritmo de búsqueda profunda
Hola

### Reglas
Las siguientes reglas fundamentales del programa están escritas como predicado en lógica de primer orden:
    - Conexión bidireccional de los nodos del laberinto.
    $$
    \forall A \forall B (\text{conexion}(A,B) \leftrightarrow (\text{camino}(A,B) \lor \text{camino}(B,A)))
    $$

    - Algoritmo de búsqueda profunda.
    $$
    \forall A \forall B \exists C \left( \left( \text{camino}(A, C) \land (C \neq B) \land \neg \text{member}(C, \text{Visitados}) \right) \rightarrow \text{ruta}(C, B, \text{Ruta}, [C|\text{Visitados}]) \right)
    $$

### Uso

Para poder hacer uso de la verificación, se recomienda primero modificar el archivo **

- Quienes son los hijos de juan?
    ```prolog
    ?- hijo(X, juan).
    X = maria ;
    X = pedro.
- Quien es el abuelo de Andres?
    ```prolog
    ?- hijo(X, juan).
    X = maria ;
    X = pedro.
- Quienes son los hermanos de luis?
    ```prolog
    ?- hijo(X, juan).
    X = maria ;
    X = pedro.
- Cuales son todos los familiares de Pedro?
    ```prolog
    ?- hijo(X, juan).
    X = maria ;
    X = pedro.
## Instrucciones de Uso

Sigue estos pasos para usar el programa en Prolog:

### 1. Instalar SWI-Prolog
Asegúrate de tener SWI-Prolog instalado en tu sistema. Puedes descargarlo desde su [sitio oficial](https://www.swi-prolog.org/).

### 2. Cargar el Programa
   ```prolog
   ?- swipl familia.pl