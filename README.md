# Sistema de Gestión de Medicamentos para Empresa Distribuidora

Este proyecto es un sistema de logística para la compra, almacenamiento y venta de medicamentos. Implementa una arquitectura basada en microservicios con un frontend en Angular.

---

## **Índice**
- [Sistema de Gestión de Medicamentos para Empresa Distribuidora](#sistema-de-gestión-de-medicamentos-para-empresa-distribuidora)
  - [**Índice**](#índice)
  - [**Descripción del Proyecto**](#descripción-del-proyecto)
  - [**Tecnologías Utilizadas**](#tecnologías-utilizadas)
  - [**Microservicios**](#microservicios)
    - [**Microservicios en Spring Boot**](#microservicios-en-spring-boot)
    - [**Microservicios en Node.js**](#microservicios-en-nodejs)
  - [**Instrucciones de Ejecución**](#instrucciones-de-ejecución)
  - [**Video de Demostración**](#video-de-demostración)

---

## **Descripción del Proyecto**
Este sistema permite gestionar el flujo completo de medicamentos:
- **Compra** de medicamentos a proveedores.
- **Almacenamiento** en el inventario.
- **Venta por lotes** a clientes como hospitales y empresas.

**Nota:** El proyecto usaba Azure para el despliegue, pero actualmente no está activo debido a la expiración de la licencia gratuita.

---

## **Tecnologías Utilizadas**
- **Backend**: Spring Boot 3, Node.js
- **Frontend**: Angular 17, Angular Material
- **Base de Datos**: SQL Server
- **Autenticación**: OAuth2 + JWT
- **Despliegue**: Anteriormente en Azure

---

## **Microservicios**
### **Microservicios en Spring Boot**
- **service-auth-server**: Autenticación y generación de tokens.
- **service-cotizacion**: Maneja cotizaciones en PDF.
- **service-doc-compra**: Administra órdenes y solicitudes de compra.
- **service-empleado**: Gestión de datos de empleados.
- **service-gateway**: Gateway para la comunicación entre servicios.
- **service-product**: Administra productos y lotes.
- **service-proveedor**: Gestión de proveedores.

### **Microservicios en Node.js**
- **service-clientes**: Gestión de clientes.
- **service-facturas**: Manejo de facturas de venta y compra.
- **service-pedidos**: Controla los pedidos hacia los clientes.

---

## **Instrucciones de Ejecución**
1. **Prerrequisitos**:
   - JDK 17+
   - Node.js 18+
   - SQL Server configurado
   - Angular CLI 17

2. **Backend**:
   - Ejecutar los microservicios Spring Boot desde IntelliJ.
   - En los servicios Node.js:
     ```bash
     npm install
     node index.js
     ```

3. **Frontend**:
   ```bash
   cd frontend/angular-web
   npm install
   ng serve --open


## **Video de Demostración**
Puedes ver la demostración del sistema en el siguiente enlace:  
[Ver video de demostración](https://unmsmmail-my.sharepoint.com/:v:/g/personal/carlos_espinoza23_unmsm_edu_pe/EVVBBoGTIY9Pq8yRBDcBzBkB71-z9MlMVYhYp9qtdfGsig?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=yISCyr)