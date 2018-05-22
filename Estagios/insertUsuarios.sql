
--inicializar os usuários
insert into usuarios (login,senha,data_cadastro,ativo) values('um_coordenador',AES_ENCRYPT('12345', 'seedmuitosegura(ou variavel)'), NOW(), 1);
insert into usuarios (login,senha,data_cadastro,ativo) values('um_gestor',AES_ENCRYPT('12345', 'seedmuitosegura(ou variavel)'), NOW(), 1);
insert into usuarios (login,senha,data_cadastro,ativo) values('um_aluno',AES_ENCRYPT('12345', 'seedmuitosegura(ou variavel)'), NOW(), 1);
insert into usuarios (login,senha,data_cadastro,ativo) values('um_administrador',AES_ENCRYPT('12345', 'seedmuitosegura(ou variavel)'), NOW(), 1);
insert into usuarios (login,senha,data_cadastro,ativo) values('um_administrador_coordenador',AES_ENCRYPT('12345', 'seedmuitosegura(ou variavel)'), NOW(), 1);
--criar os perfis
insert into perfis (nome) values ("Administrador");
insert into perfis (nome) values ("Aluno");
insert into perfis (nome) values ("Empresa");
insert into perfis (nome) values ("Coordenador");
--atribuir perfis aos usuários
insert into usuario_perfis (id_usuario,nome_perfil) values (1,"Coordenador");
insert into usuario_perfis (id_usuario,nome_perfil) values (2,"Empresa");
insert into usuario_perfis (id_usuario,nome_perfil) values (3,"Aluno");
insert into usuario_perfis (id_usuario,nome_perfil) values (4,"Administrador");
insert into usuario_perfis (id_usuario,nome_perfil) values (5,"Administrador");
insert into usuario_perfis (id_usuario,nome_perfil) values (5,"Coordenador");
--Criar funcionalidades
insert into funcionalidades (descricao) values ("Cadastrar Aluno");
insert into funcionalidades (descricao) values ("Cadastrar Usuários");
insert into funcionalidades (descricao) values ("Editar Perfis do Usuário");
insert into funcionalidades (descricao) values ("Importar Alunos de Arquivo Excel");
insert into funcionalidades (descricao) values ("Registrar Estágio");
insert into funcionalidades (descricao) values ("Avaliar Estágio");
insert into funcionalidades (descricao) values ("Mostrar Alunos com pendências de estágio");
insert into funcionalidades (descricao) values ("Divulgar Vaga de Estágio");
insert into funcionalidades (descricao) values ("Enviar Avaliação do Gestor de Estágio");
insert into funcionalidades (descricao) values ("Solicitar Registro de Estágio");
insert into funcionalidades (descricao) values ("Preencher Plano de Estágio");
insert into funcionalidades (descricao) values ("Enviar Relatório de Estágio");
insert into funcionalidades (descricao) values ("Histórico do Estágio");
insert into funcionalidades (descricao) values ("Histórico da Empresa");
--criar perfil funcionalidades
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(1,"Administrador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(2,"Administrador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(3,"Administrador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(4,"Administrador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(5,"Coordenador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(6,"Coordenador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(7,"Coordenador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(13,"Coordenador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(14,"Coordenador");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(8,"Empresa");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(9,"Empresa");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(10,"Empresa");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(11,"Empresa");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(9,"Aluno");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(10,"Aluno");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(11,"Aluno");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(12,"Aluno");
insert into perfil_funcionalidades (id_funcionalidade, nome_perfil) values(13,"Aluno");


