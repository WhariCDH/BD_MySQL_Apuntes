✅ Semana 3 — Transformación del Modelo E-R al Modelo Lógico

*************************************************************************************
⭐ ¿Qué significa transformar?

Significa:

👉 Convertir el Diagrama Entidad-Relación (dibujos)
👉 En tablas reales con PK y FK

Es decir:

📦 Entidades → Tablas
⚪ Atributos → Campos
🔗 Relaciones → Llaves Foráneas

⭐ 1. Regla más importante
✅ Cada ENTIDAD se convierte en una TABLA

Ejemplo conceptual:

Entidad Cliente

Nombre
DNI
Dirección

Modelo lógico:

CLIENTE
--------
DNI (PK)
Nombre
Direccion

****************************************************************************************
⭐ 2. Atributos → Campos

Todos los atributos pasan a ser columnas.

👉 El atributo identificador será la PK (Primary Key)

****************************************************************************************
⭐ 3. Relación 1 : N (MUY EXAMEN)

👉 La llave foránea va en el lado N

Ejemplo:

Empresa 1 —— N Empleado

Modelo lógico:

EMPRESA
---------
CodigoEmpresa (PK)
Nombre

EMPLEADO
---------
CodigoEmpleado (PK)
Nombre
CodigoEmpresa (FK)

⭐ El FK va en EMPLEADO porque es el lado muchos.

**************************************************************************************
⭐ 4. Relación N : M (ULTRA IMPORTANTE)

👉 Se crea una tabla intermedia

Ejemplo:

Alumno N —— M Curso

Modelo lógico:

ALUMNO
-------
CodigoAlumno (PK)

CURSO
-------
CodigoCurso (PK)

ALUMNO_CURSO
-------------
CodigoAlumno (PK)(FK)
CodigoCurso (PK)(FK)

*************************************************************************************
⭐ 5. Relación 1 : 1

👉 El FK puede ir en cualquiera
(normalmente en la entidad opcional)

************************************************************************************
⭐ 6. Atributos de la relación

Si una relación tiene atributos →
👉 esos atributos van en la tabla intermedia

Ejemplo:

Médico N —— M Paciente
TiempoAtención

Entonces:

ATENCION
---------
DNIMedico (PK)(FK)
DNIPaciente (PK)(FK)
TiempoAtencion

***********************************************************************************
⭐ IDEA MÁS IMPORTANTE DE TODA LA SEMANA 3

👉 Modelar no termina en el DER.

El DER sirve para:

⭐ Construir las TABLAS reales del sistema.

**********************************************************************************
🔥 RESUMEN ULTRA CORTO PARA MEMORIZAR
Entidad → Tabla
Atributo → Campo
1:N → FK en el lado N
N:M → Tabla intermedia
Atributo de relación → va en tabla intermedia