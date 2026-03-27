✅ Caso 1 — Construyendo Modelo Conceptual

**************************************************************
⭐ Paso 1: Identificar ENTIDADES

Leemos el caso y buscamos los sustantivos importantes.

Personas → sí
Empresas → sí
Trabajos / cargos → sí

👉 Entonces las entidades son:

✅ Trabajador
✅ Empresa
✅ Cargo

**************************************************************
⭐ Paso 2: Definir ATRIBUTOS
📦 Entidad: Trabajador
DNI (podemos asumirlo)
Nombre
Apellido
📦 Entidad: Empresa
RUC
NombreEmpresa

Ejemplos del caso:

Luz del Sur
Telefónica
Plaza Vea
📦 Entidad: Cargo
CodigoCargo
NombreCargo

Ejemplos:

Supervisor
Contadora
Almacenero

****************************************************************
⭐ Paso 3: Identificar RELACIONES (VERBOS)

Del caso:

👉 Trabajador trabaja en Empresa
👉 Trabajador tiene Cargo

✅ Cardinalidad (muy probable en examen)

✔ Una empresa tiene muchos trabajadores → 1 : N

✔ Un cargo puede tener muchos trabajadores → 1 : N

✔ Un trabajador tiene un cargo → 1 : 1

✅ DER Conceptual (dibujado simple)

TRABAJADOR
---------
Nombre
Apellido
        trabaja en
           N
TRABAJADOR -------- 1 EMPRESA

        tiene
           N
TRABAJADOR -------- 1 CARGO

*****************************************************************
⭐ Cómo pensar rápido este tipo de ejercicios (TRUCO)

Siempre pregúntate:

👉 ¿Quién? → entidad
👉 ¿Dónde? → entidad
👉 ¿Qué hace? → relación

Aquí:

Quién → Alberto, Laura, Juan → Trabajador
Dónde → Empresas
Qué hace → Trabaja