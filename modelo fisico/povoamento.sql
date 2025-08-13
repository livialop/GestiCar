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
