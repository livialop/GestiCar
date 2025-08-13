insert into tb_cliente (cli_nome, cli_data_cadastro, cli_cpf) values
('joão silva', '2025-01-10', '111.111.111-11'),
('maria oliveira', '2025-02-05', '222.222.222-22'),
('carlos santos', '2025-03-01', '333.333.333-33'),
('ana costa', '2025-02-15', '444.444.444-44'),
('pedro lima', '2025-01-25', '555.555.555-55'),
('lucas pereira', '2025-03-03', '666.666.666-66'),
('mariana souza', '2025-02-20', '777.777.777-77'),
('felipe almeida', '2025-01-30', '888.888.888-88'),
('juliana rodrigues', '2025-03-06', '999.999.999-99'),
('ricardo mendes', '2025-03-08', '000.000.000-00');

insert into tb_emails_cliente (ema_email, ema_cli_id) values
('joao@email.com', 1),
('maria@email.com', 2),
('carlos@email.com', 3),
('ana@email.com', 4),
('pedro@email.com', 5),
('lucas@email.com', 6),
('mariana@email.com', 7),
('felipe@email.com', 8),
('juliana@email.com', 9),
('ricardo@email.com', 10);

insert into tb_telefones_cliente (tel_telefone, tel_cli_id) values
('84988888888', 1),
('84977777777', 2),
('84966666666', 3),
('84955555555', 4),
('84944444444', 5),
('84933333333', 6),
('84922222222', 7),
('84911111111', 8),
('84900000000', 9),
('84999999998', 10);

insert into tb_enderecos_cliente (end_bairro, end_rua, end_complemento, end_cli_id) values
('centro', 'rua a', 'casa 1', 1),
('bela vista', 'rua b', 'apto 101', 2),
('boa esperança', 'rua c', 'casa 12', 3),
('nova cidade', 'rua d', null, 4),
('alto da boa vista', 'rua e', 'casa 20', 5),
('jardim américa', 'rua f', 'bloco 2', 6),
('lagoa nova', 'rua g', null, 7),
('planalto', 'rua h', 'casa 5', 8),
('rosas', 'rua i', 'apto 302', 9),
('petrópolis', 'rua j', 'casa 18', 10);

insert into tb_mecanico (mec_nome, mec_cpf, mec_data_contratacao) values
('roberto andrade', '101.101.101-10', '2025-01-05'),
('lucas martins', '202.202.202-20', '2025-02-10'),
('fernanda souza', '303.303.303-30', '2025-01-15'),
('gustavo ferreira', '404.404.404-40', '2025-02-20'),
('paulo henrique', '505.505.505-50', '2025-03-01');

insert into tb_especialidades_mecanico (esp_nome, esp_mec_id) values
('motor de carro', 1),
('motor de moto', 2),
('suspensão', 3),
('freios', 1),
('elétrica', 2),
('injeção eletrônica', 4),
('ar-condicionado', 5);

insert into tb_tipo_veiculo (tve_nome) values
('carro'),
('moto'),
('caminhão');

insert into tb_modelo_veiculo (mov_nome) values
('fiat'),
('volkswagen'),
('honda'),
('yamaha'),
('ford'),
('chevrolet');

insert into tb_marca_veiculo (mar_nome) values
('corolla'),
('gol'),
('civic'),
('factor 150'),
('focus'),
('onix');

insert into tb_cor_veiculo (cor_nome) values
('preto'),
('prata'),
('azul'),
('vermelho'),
('branco');

insert into tb_veiculo (vei_placa, vei_ano, vei_mar_id, vei_cor_id, vei_cli_id, vei_tve_id, vei_mov_id) values
('abc-1234', '2020-01-01', 1, 1, 1, 1, 1),
('def-5678', '2019-01-01', 2, 2, 2, 1, 2),
('ghi-9101', '2021-01-01', 3, 3, 3, 1, 3),
('jkl-1121', '2022-01-01', 4, 4, 4, 2, 4),
('mno-3141', '2018-01-01', 2, 1, 5, 1, 2),
('pqr-5161', '2023-01-01', 5, 5, 6, 1, 5),
('stu-7181', '2020-01-01', 6, 3, 7, 1, 6),
('vwx-9202', '2021-01-01', 1, 2, 8, 2, 1),
('yza-1222', '2019-01-01', 3, 4, 9, 1, 3),
('bcd-3242', '2022-01-01', 4, 5, 10, 2, 4);

insert into tb_tipo_peca (tpe_nome) values
('filtro de óleo'),
('pastilha de freio'),
('amortecedor'),
('vela de ignição'),
('correia dentada');

insert into tb_ordem_servico (ods_valor_total, ods_data_abertura, ods_data_conclusao, ods_observacoes, ods_retrabalho, ods_status, ods_vei_id, ods_cli_id, ods_mec_id) values
(500.00, '2025-03-01', '2025-03-05', 'troca de óleo e filtro', 0, 1, 1, 1, 1),
(1200.00, '2025-03-02', '2025-03-10', 'troca de freios e suspensão', 0, 1, 2, 2, 2),
(300.00, '2025-03-05', '2025-03-06', 'troca de velas', 0, 1, 3, 3, 3),
(800.00, '2025-03-07', '2025-03-12', 'troca de amortecedores', 1, 0, 4, 4, 1),
(1500.00, '2025-03-08', '2025-03-15', 'revisão geral', 0, 1, 5, 5, 2),
(900.00, '2025-03-09', '2025-03-16', 'troca de correia dentada', 0, 1, 6, 6, 4),
(450.00, '2025-03-10', '2025-03-13', 'alinhamento e balanceamento', 0, 1, 7, 7, 5),
(1100.00, '2025-03-11', '2025-03-17', 'troca de pastilhas', 0, 1, 8, 8, 1),
(1300.00, '2025-03-12', '2025-03-19', 'serviço elétrico', 0, 1, 9, 9, 2),
(2000.00, '2025-03-13', '2025-03-20', 'reforma completa', 0, 1, 10, 10, 3);

insert into tb_servico (ser_valor, ser_tempo_execucao, ser_descricao, ser_ods_id) values
(150.00, '02:00:00', 'troca de óleo', 1),
(350.00, '04:00:00', 'troca de freios', 2),
(100.00, '01:00:00', 'troca de velas', 3),
(500.00, '05:00:00', 'troca de amortecedores', 4),
(1000.00, '08:00:00', 'revisão completa', 5),
(400.00, '03:00:00', 'troca de correia dentada', 6),
(200.00, '02:00:00', 'alinhamento e balanceamento', 7),
(350.00, '03:00:00', 'troca de pastilhas', 8),
(600.00, '06:00:00', 'reparo elétrico', 9),
(1500.00, '09:00:00', 'reforma completa', 10);

insert into tb_servico_peca (sep_ser_id) values
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

insert into tb_peca (pec_preco, pec_descricao, pec_tpe_id, pec_ods_id, pec_sep_id) values
(50.00, 'filtro de óleo sintético', 1, 1, 1),
(200.00, 'pastilha de freio dianteira', 2, 2, 2),
(80.00, 'vela ngk', 4, 3, 3),
(400.00, 'amortecedor dianteiro', 3, 4, 4),
(700.00, 'kit revisão', 1, 5, 5),
(300.00, 'correia dentada original', 5, 6, 6),
(150.00, 'kit alinhamento', 2, 7, 7),
(220.00, 'pastilha de freio traseira', 2, 8, 8),
(500.00, 'alternador', 4, 9, 9),
(1000.00, 'kit reforma', 1, 10, 10);

insert into tb_fornecedor (for_cnpj, for_nome) values
('12.345.678/0001-11', 'auto peças brasil'),
('23.456.789/0001-22', 'mec parts'),
('34.567.890/0001-33', 'peças & cia'),
('45.678.901/0001-44', 'super peças'),
('56.789.012/0001-55', 'mundo das peças');

insert into tb_email_fornecedor (emf_email, emf_for_id) values
('contato@autobrasil.com', 1),
('suporte@mecparts.com', 2),
('vendas@pecasecia.com', 3),
('contato@superpecas.com', 4),
('vendas@mundodaspecas.com', 5);

insert into tb_endereco_fornecedor (enf_bairro, enf_rua, enf_complemento, enf_for_id) values
('centro', 'rua alfa', null, 1),
('industrial', 'rua beta', 'galpão 5', 2),
('comercial', 'rua gama', 'loja 2', 3),
('centro', 'rua delta', 'box 8', 4),
('nova esperança', 'rua epsilon', null, 5);

insert into tb_telefone_fornecedor (tef_telefone, tef_for_id) values
('84999999999', 1),
('84988887777', 2),
('84977776666', 3),
('84966665555', 4),
('84955554444', 5);

insert into tb_fornecedor_peca (fpe_for_id) values
(1),(2),(3),(4),(5),(1),(2),(3),(4),(5);

insert into tb_estoque (est_quantidade, est_pec_id, est_fpe_id) values
(100, 1, 1),
(50, 2, 2),
(200, 3, 3),
(80, 4, 4),
(40, 5, 5),
(120, 6, 6),
(90, 7, 7),
(70, 8, 8),
(60, 9, 9),
(30, 10, 10);