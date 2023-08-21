CREATE  DATABASE HealthClinic_Manha
GO 
USE HealthClinic_Manha

CREATE TABLE TiposDeUsuario
(
  IdTipoDeUsuario INT PRIMARY KEY IDENTITY,
  TituloTipoDeUsuario VARCHAR(20)
)

CREATE TABLE Clinica
(
 IdClinica INT PRIMARY KEY IDENTITY,
 CNPJ VARCHAR (20) NOT NULL,
 Endereco VARCHAR (50) NOT NULL
 )

 ALTER TABLE Clinica
 ADD NomeFantasia VARCHAR (25) NOT NULL

 CREATE TABLE Especialidade
 (
  IdEspecialidade INT PRIMARY KEY IDENTITY,
  Area VARCHAR (30)
 )

 CREATE TABLE Comentario
 (
 IdComentario INT PRIMARY KEY IDENTITY,
 Feedback VARCHAR (100)
 )

 CREATE TABLE Usuario
 (
 IdUsuario INT PRIMARY KEY IDENTITY,
 IdTipoDeUsuario INT FOREIGN KEY REFERENCES TiposDeUsuario (IdTipoDeUsuario) NOT NULL,
 NomeCompleto VARCHAR (50) NOT NULL,
 Email VARCHAR (135) NOT NULL,
 Senha VARCHAR (100) NOT NULL,
 DataNascimento VARCHAR (10) NOT NULL
 )

 CREATE TABLE Medico
 (
   IdMedico INT PRIMARY KEY IDENTITY,
   IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
   IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
   IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade),
   CRM VARCHAR (20) NOT NULL,
   Contato VARCHAR (20) NOT NULL
)


CREATE TABLE Paciente 
 (
  IdPaciente INT PRIMARY KEY IDENTITY,
  IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
  CPF VARCHAR (12) NOT NULL,
  Endereco VARCHAR (50) NOT NULL,
  Telefone VARCHAR (20) NOT NULL
 )

 CREATE TABLE Consulta 
 ( 
 IdConsulta INT PRIMARY KEY IDENTITY,
 IdComentario INT FOREIGN KEY REFERENCES Comentario (IdComentario),
 IdPaciente INT FOREIGN KEY REFERENCES Paciente (IdPaciente),
 IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),
 Diagnostico VARCHAR (100) NOT NULL,
 DataEHora VARCHAR (15) NOT NULL
 )
 
