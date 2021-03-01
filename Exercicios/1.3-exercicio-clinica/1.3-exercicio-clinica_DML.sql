--comandos DML Data Manipulation Language

use Clinica;

insert into Clinicas (idClinica, RazaoSocial, CNPJ, Endereco)
values				 (1, 'MeuPimpao', 234987234, 'Av.Clinica 123');

insert into TiposPets (idTipoPet, Descricao)
values				  (1, 'Cachorro')
					 ,(2, 'Gato');

insert into Racas (idRaca, Descricao, idTipoPet)
values			  (1, 'Poodle', 1)
				  ,(2, 'Labrador', 1)
				  ,(3, 'SRD', 1)
				  ,(4, 'Siames', 2);

insert into Donos (idDono, Nomes)
values			  (1, 'Paulo')
				 ,(2, 'Odirlei');

insert into Veterinarios (idVeterinario, Nome, CRMV, idClinica)
values					 (1, 'Saulo', 45678, 1)
						,(2, 'Caique', 43278, 1);

insert into Pets (idPet, Nome, DataNascimento, idRaca, idDono)
values			 (1, 'Junior', '10/10/2018', 1, 1)
				,(2, 'Loli', '18/05/2017', 4, 1)
				,(3, 'Sammy', '16/06/2016', 1, 2);

insert into Atendimentos (idAtendimento, Descricao, DataAtendimento, idVeterinario, idPet)
values					 (1, 'Restam 10 dias de vida kkk', '22/01/2019', 1, 1)
						,(2, 'O paciente esta ok', '21/01/2019', 2, 2)
						,(3, 'O paciente esta ok', '22/01/2019', 2, 1);

