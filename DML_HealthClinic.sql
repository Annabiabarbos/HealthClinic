--DML Data Manipulation Language 

USE HealthClinic_Manha

--Inserir os datos na tabela

INSERT INTO TiposDeUsuario (TituloTipoDeUsuario)
VALUES ('Administrador'),('Medico'), ('Paciente')

INSERT INTO Clinica (CNPJ, Endereco,NomeFantasia )
VALUES ('12345678901234','Rua Niteroi 180' , 'BelaSaude')

INSERT INTO Especialidade (Area)
VALUES ('Cardiologia')

INSERT INTO Comentario (Feedback)
VALUES ('Excelente clínica, bons medicos e atendentes atenciosos')

INSERT INTO Usuario (IdTipoDeUsuario,NomeCompleto,Email,Senha,DataNascimento)
VALUES (1,'jose','josesilva@gmail.com', 'josejose', '2023-05-20')

INSERT INTO  Paciente (IdUsuario, CPF,Endereco,Telefone )
VALUES (6,'32339352150','Rua das Rosas 190', '40028922')

INSERT INTO Medico (IdClinica, IdUsuario, IdEspecialidade,CRM,Contato)
VALUES (1,6,1,'123456','5511999999999')

INSERT INTO Consulta ( IdComentario,IdPaciente,IdMedico,Diagnostico, DataEHora)
VALUES (1,4,1,'A paciente que relatou dores abdominais e foi constatado apendicite','2023-08-05 00:00')

SELECT *FROM Comentario
SELECT *FROM Paciente
SELECT*FROM Medico
