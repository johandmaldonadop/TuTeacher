% Hechos sobre las funciones generatrices
pregunta_respuesta('¿Qué es una función generatriz?', 'Una función generatriz es...').
pregunta_respuesta('¿Cuál es el propósito de las funciones generatrices?', 'El propósito de las funciones generatrices es...').
pregunta_respuesta('¿Cómo se define la función generatriz ordinaria de una sucesión?', 'La función generatriz ordinaria de una sucesión es...').

% Reglas para preguntar y responder
preguntar :- pregunta_respuesta(Pregunta, _), writeln(Pregunta), read(Respuesta), validar_respuesta(Pregunta, Respuesta).
preguntar :- writeln('No tengo más preguntas sobre funciones generatrices.').

validar_respuesta(Pregunta, Respuesta) :- pregunta_respuesta(Pregunta, RespuestaCorrecta), validar_respuesta(Pregunta, Respuesta, RespuestaCorrecta).
validar_respuesta(_, Respuesta, Respuesta) :- writeln('¡Respuesta correcta!').
validar_respuesta(Pregunta, Respuesta, _) :- writeln('Respuesta incorrecta, intenta de nuevo.'), preguntar.

% Iniciar el tutor
iniciar :- writeln('Bienvenido al tutor sobre funciones generatrices.'), preguntar.

% Ejecutar el tutor
:- iniciar.

