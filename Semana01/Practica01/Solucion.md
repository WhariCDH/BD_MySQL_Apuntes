✅ 1. Concepto de Base de Datos y SGBD
***********************************************************************************************
📌 Base de Datos

Es un conjunto organizado de información relacionada, que se almacena para poder consultarla, modificarla y gestionarla fácilmente.

👉 Ejemplo: datos de clientes, productos, facturas.

📌 SGBD (Sistema de Gestión de Base de Datos)

Es un software que permite crear, administrar y usar una base de datos.

👉 Permite:

Guardar datos
Consultar datos
Modificar datos
Eliminar datos

Ejemplo: MySQL, SQL Server.

************************************************************************************************
✅ 2. Principal objetivo de los SGBD

El objetivo principal es:

⭐ Organizar y controlar el acceso a los datos de forma segura, eficiente y rápida.

Esto significa:

✔ Evitar pérdida de información
✔ Permitir acceso a varios usuarios
✔ Reducir duplicidad de datos
✔ Mejorar consultas
✔ Mantener integridad de datos

************************************************************************************************
✅ 3. Mencionar 10 entidades y atributos

1️⃣ Cliente
DNI
Nombre
Dirección
Teléfono

2️⃣ Producto
Código
Nombre
Precio
Stock

3️⃣ Factura
Código
Fecha
Total

4️⃣ Empleado
DNI
Nombre
Cargo
Sueldo

5️⃣ Curso
Código
Nombre
Créditos

6️⃣ Alumno
Código
Nombre
Carrera

7️⃣ Proveedor
RUC
Nombre
Dirección

8️⃣ Pedido
Código
Fecha
Estado

9️⃣ Vehículo
Placa
Marca
Modelo

🔟 Hospital
Código
Nombre
Dirección

************************************************************************************************
✅ 4. Caso Hospital — Entidades y Atributos (LO MÁS IMPORTANTE)

Este ejercicio es clave porque es análisis DER real.

📌 Entidad: Equipo

Atributos:

CódigoEquipo
NombreJefe
PeriodicidadGuardia

Relación:
👉 Un equipo tiene muchos médicos
👉 Un médico pertenece a un equipo

📌 Entidad: Médico

Atributos:

DNIMedico
Nombre
Especialidad
Categoría
CódigoEquipo (FK)
📌 Entidad: Paciente

Atributos:

DNIPaciente
Nombre
Edad
Sexo
Ocupación
📌 Relación IMPORTANTE: Atención

(Porque muchos médicos atienden muchos pacientes)

Atributos:

DNIMedico (FK)
DNIPaciente (FK)
TiempoAtención
Diagnóstico
Tratamiento

👉 Esta es una tabla intermedia (relación muchos a muchos)

📌 Entidad: MedioDiagnóstico

Atributos:

CódigoMedio
Descripción
CostoUnidad
📌 Relación: UsoMedioDiagnóstico

(Porque muchos médicos usan muchos medios)

Atributos:

DNIMedico (FK)
CódigoMedio (FK)
CantidadVecesOrdenado
⭐ RESUMEN ULTRA IMPORTANTE (para examen)

👉 Entidades principales:

Equipo
Médico
Paciente
MedioDiagnóstico

👉 Relaciones importantes:

Atención (Médico ↔ Paciente)
UsoMedioDiagnóstico (Médico ↔ Medio)

👉 Regla clave:

Muchos a muchos → se convierte en tabla intermedia con atributos propios