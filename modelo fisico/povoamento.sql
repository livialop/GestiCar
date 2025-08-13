insert into tb_cliente (cli_nome, cli_data_cadastro, cli_cpf) values
('Ana Silva', '2025-01-10', '11111111111'),
('Bruno Costa', '2025-02-11', '22222222222'),
('Carlos Souza', '2025-03-12', '33333333333'),
('Diana Lima', '2025-04-13', '44444444444'),
('Eduardo Alves', '2025-05-14', '55555555555'),
('Fabiana Rocha', '2025-06-15', '66666666666'),
('Gustavo Pinto', '2025-07-16', '77777777777'),
('Helena Dias', '2025-08-17', '88888888888'),
('Igor Martins', '2025-09-18', '99999999999'),
('Júlia Fernandes', '2025-10-19', '10101010101');

insert into tb_mecanico (mec_nome, mec_cpf, mec_data_contratacao) values
('Lucas Silva', '12345678901', '2025-01-01'),
('Marina Costa', '23456789012', '2025-02-01'),
('Pedro Lima', '34567890123', '2025-03-01'),
('Roberta Souza', '45678901234', '2025-04-01'),
('Sergio Alves', '56789012345', '2025-05-01'),
('Tatiana Rocha', '67890123456', '2025-06-01'),
('Victor Pinto', '78901234567', '2025-07-01'),
('Wagner Dias', '89012345678', '2025-08-01'),
('Xavier Martins', '90123456789', '2025-09-01'),
('Yasmin Fernandes', '01234567890', '2025-10-01');

insert into tb_tipo_veiculo (tve_nome) values
('Carro'),
('Moto'),
('Caminhão'),
('Ônibus'),
('Bicicleta'),
('Trator'),
('Van'),
('Barco'),
('Avião'),
('Patinete');

insert into tb_modelo_veiculo (mov_nome) values
('Fiat Uno'),
('Volkswagen Gol'),
('Ford Fiesta'),
('Chevrolet Onix'),
('Honda Civic'),
('Toyota Corolla'),
('Renault Sandero'),
('Hyundai HB20'),
('Jeep Renegade'),
('Nissan Versa');

insert into tb_marca_veiculo (mar_nome) values
('Fiat'),
('Volkswagen'),
('Ford'),
('Chevrolet'),
('Honda'),
('Toyota'),
('Renault'),
('Hyundai'),
('Jeep'),
('Nissan');

insert into tb_cor_veiculo (cor_nome) values
('Preto'),
('Branco'),
('Prata'),
('Cinza'),
('Azul'),
('Vermelho'),
('Verde'),
('Amarelo'),
('Laranja'),
('Roxo');

insert into tb_tipo_peca (tpe_nome) values
('Motor'),
('Freio'),
('Pneu'),
('Bateria'),
('Filtro de óleo'),
('Filtro de ar'),
('Óleo lubrificante'),
('Velas'),
('Radiador'),
('Embreagem');

insert into tb_servico (ser_valor, ser_tempo_execucao, ser_descricao) values
(100.00, '01:00:00', 'Troca de óleo'),
(200.00, '02:00:00', 'Troca de pneus'),
(150.00, '01:30:00', 'Revisão geral'),
(300.00, '03:00:00', 'Alinhamento e balanceamento'),
(250.00, '02:30:00', 'Troca de bateria'),
(180.00, '01:45:00', 'Troca de filtro de óleo'),
(220.00, '02:15:00', 'Troca de filtro de ar'),
(350.00, '03:30:00', 'Reparo no motor'),
(130.00, '01:20:00', 'Troca de velas'),
(400.00, '04:00:00', 'Reparo na embreagem');

insert into tb_estoque (est_quantidade) values
(50),
(45),
(40),
(35),
(30),
(25),
(20),
(15),
(10),
(5);

insert into tb_fornecedor (for_cnpj, for_nome) values
('11111111000101', 'Fornecedor A'),
('22222222000102', 'Fornecedor B'),
('33333333000103', 'Fornecedor C'),
('44444444000104', 'Fornecedor D'),
('55555555000105', 'Fornecedor E'),
('66666666000106', 'Fornecedor F'),
('77777777000107', 'Fornecedor G'),
('88888888000108', 'Fornecedor H'),
('99999999000109', 'Fornecedor I'),
('00000000000110', 'Fornecedor J');

insert into tb_emails_cliente (ema_email, ema_cli_id) values
('ana.silva@email.com', 1),
('bruno.costa@email.com', 2),
('carlos.souza@email.com', 3),
('diana.lima@email.com', 4),
('eduardo.alves@email.com', 5),
('fabiana.rocha@email.com', 6),
('gustavo.pinto@email.com', 7),
('helena.dias@email.com', 8),
('igor.martins@email.com', 9),
('julia.fernandes@email.com', 10);

insert into tb_telefones_cliente (tel_telefone, tel_cli_id) values
('11999990001', 1),
('11999990002', 2),
('11999990003', 3),
('11999990004', 4),
('11999990005', 5),
('11999990006', 6),
('11999990007', 7),
('11999990008', 8),
('11999990009', 9),
('11999990010', 10);

insert into tb_enderecos_cliente (end_bairro, end_rua, end_complemento, end_cli_id) values
('Centro', 'Rua A', 'Apto 101', 1),
('Jardim', 'Rua B', NULL, 2),
('Vila Nova', 'Rua C', 'Casa 2', 3),
('Bela Vista', 'Rua D', NULL, 4),
('Santa Clara', 'Rua E', 'Apto 303', 5),
('Morumbi', 'Rua F', NULL, 6),
('Pinheiros', 'Rua G', 'Casa 4', 7),
('Tatuapé', 'Rua H', NULL, 8),
('Mooca', 'Rua I', 'Apto 505', 9),
('Ipiranga', 'Rua J', 'Casa 6', 10);

insert into tb_especialidades_mecanico (esp_nome, esp_mec_id) values
('Motor de carro', 1),
('Sistema de freio', 2),
('Troca de óleo', 3),
('Suspensão', 4),
('Parte elétrica', 5),
('Transmissão', 6),
('Motor de moto', 7),
('Diagnóstico eletrônico', 8),
('Embreagem', 9),
('Ar-condicionado', 10);

insert into tb_veiculo (vei_placa, vei_ano, vei_mar_id, vei_cor_id, vei_cli_id, vei_tve_id, vei_mov_id) values
('ABC1A23', '2022-01-01', 1, 1, 1, 1, 1),
('DEF2B34', '2023-01-01', 2, 2, 2, 1, 2),
('GHI3C45', '2021-01-01', 3, 3, 3, 2, 3),
('JKL4D56', '2020-01-01', 4, 4, 4, 2, 4),
('MNO5E67', '2022-01-01', 5, 5, 5, 3, 5),
('PQR6F78', '2023-01-01', 6, 6, 6, 4, 6),
('STU7G89', '2024-01-01', 7, 7, 7, 5, 7),
('VWX8H90', '2020-01-01', 8, 8, 8, 6, 8),
('YZA9I01', '2021-01-01', 9, 9, 9, 7, 9),
('BCD0J12', '2022-01-01', 10, 10, 10, 8, 10);

insert into tb_ordem_servico (ods_valor_total, ods_data_abertura, ods_data_conclusao, ods_observacoes, ods_retrabalho, ods_status, ods_ser_id, ods_vei_id, ods_cli_id, ods_mec_id) values
(100.00, '2025-08-01', '2025-08-01', 'Troca de óleo padrão', FALSE, TRUE, 1, 1, 1, 1),
(200.00, '2025-08-02', '2025-08-02', 'Troca de pneus traseiros', FALSE, TRUE, 2, 2, 2, 2),
(150.00, '2025-08-03', '2025-08-03', 'Revisão completa', FALSE, TRUE, 3, 3, 3, 3),
(300.00, '2025-08-04', '2025-08-04', 'Alinhamento completo', FALSE, TRUE, 4, 4, 4, 4),
(250.00, '2025-08-05', '2025-08-05', 'Troca da bateria', TRUE, FALSE, 5, 5, 5, 5);

insert into tb_peca (pec_preco, pec_descricao, pec_tpe_id, pec_ods_id, pec_est_id) values
(50.00, 'Filtro de óleo básico', 5, 1, 1),
(100.00, 'Pneu 175/65R14', 3, 2, 2),
(80.00, 'Filtro de ar esportivo', 6, 3, 3),
(200.00, 'Bateria 60Ah', 4, 4, 4),
(150.00, 'Óleo lubrificante sintético', 7, 5, 5);

insert into tb_servico_peca (sep_ser_id, sep_pec_id) values
(1, 1),
(2, 2),
(3, 3),
(5, 4),
(1, 5);

insert into tb_fornecedor_peca (fpe_for_id, fpe_est_id) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

insert into tb_email_fornecedor (emf_email, emf_for_id) values
('contato@fornecedora.com', 1),
('suporte@fornecedorb.com', 2),
('vendas@fornecedorc.com', 3),
('email@fornecedord.com', 4),
('ajuda@fornecedore.com', 5);

insert into tb_endereco_fornecedor (enf_bairro, enf_rua, enf_complemento, enf_for_id) values
('Industrial', 'Av. das Indústrias', 'Galpão 1', 1),
('Comercial', 'Rua das Empresas', NULL, 2),
('Centro', 'Rua Central', 'Bloco A', 3),
('Distrito', 'Av. Principal', NULL, 4),
('Zona Norte', 'Rua Norte', 'Depósito 3', 5);

insert into tb_telefone_fornecedor (tef_telefone, tef_for_id) values
('1130001001', 1),
('1130001002', 2),
('1130001003', 3),
('1130001004', 4),
('1130001005', 5);

