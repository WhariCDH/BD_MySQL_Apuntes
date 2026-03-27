✅ Caso 3 — Construyendo Modelo Conceptual

****************************************************************
⭐ Paso 1: Identificar ENTIDADES

Buscamos sustantivos importantes del caso:

👉 Empleado
👉 Empresa
👉 Cargo

Entonces las entidades son:

✅ Empleado
✅ Empresa
✅ Cargo

****************************************************************
⭐ Paso 2: Definir ATRIBUTOS

📦 Entidad: Empleado
Ahora tiene MÁS datos (muy importante):
-CodigoEmpleado
-Nombre
-Sexo
-EstadoCivil
Ejemplos del caso:
-Juan Carlos → Masculino → Soltero
-Larissa Moreno → Femenino → Viuda
-Juan Espinoza → Masculino → Casado
-Alfonso Rosas → Masculino → Divorciado

📦 Entidad: Empresa
-CodigoEmpresa
-NombreEmpresa
Ejemplos:
-Luz del Sur
-Telefónica
-Plaza Vea

📦 Entidad: Cargo
-odigoCargo
-NombreCargo
Ejemplos:
-Supervisor
-Contadora
-Almacenero

*************************************************************************
⭐ Paso 3: Identificar RELACIONES (VERBOS)

Del caso:

👉 Empleado trabaja en Empresa
👉 Empleado tiene Cargo

⭐ Cardinalidad (clave)

✔ Una empresa tiene muchos empleados → 1 : N

✔ Un cargo puede tener muchos empleados → 1 : N

✔ Un empleado trabaja en una sola empresa → N : 1

✔ Un empleado tiene un solo cargo → N : 1

✅ DER Conceptual (dibujado simple)
EMPRESA 1 -------- N EMPLEADO N -------- 1 CARGO

EMPRESA
-------
NombreEmpresa

EMPLEADO
--------
Nombre
Sexo
EstadoCivil

CARGO
------
NombreCargo

************************************************************************************
⭐ TRUCO DE EXAMEN MUY IMPORTANTE

Cuando veas:

👉 “es un empleado de sexo…”
👉 “estado civil…”

Eso NO es entidad → es atributo del empleado.

Muchos alumnos se equivocan y crean entidad “Sexo” o “EstadoCivil” ❌
Eso está mal en este nivel