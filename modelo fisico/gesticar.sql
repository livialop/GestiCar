-- drop database GestiCar;

create database GestiCar;

use GestiCar;

-- Tabelas para clientes
create table tb_cliente (
	cli_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	cli_nome VARCHAR(120) NOT NULL,
    cli_data_cadastro DATE DEFAULT '2025-01-01',
	cli_cpf VARCHAR(20)
);

create table tb_emails_cliente (
	ema_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ema_email VARCHAR(200) NOT NULL,
    ema_cli_id INT NOT NULL,
    FOREIGN KEY (ema_cli_id) REFERENCES tb_cliente(cli_id)
);

create table tb_telefones_cliente (
	tel_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tel_telefone VARCHAR(120) NOT NULL,
    tel_cli_id INT NOT NULL,
    FOREIGN KEY (tel_cli_id) REFERENCES tb_cliente(cli_id)
);

create table tb_enderecos_cliente (
	end_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    end_bairro VARCHAR(120) NOT NULL,
    end_rua VARCHAR(120) NOT NULL,
    end_complemento VARCHAR(200),
    end_cli_id INT NOT NULL,
    FOREIGN KEY (end_cli_id) REFERENCES tb_cliente(cli_id)
);

--

-- Tabelas de mecânico
create table tb_mecanico (
	mec_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mec_nome VARCHAR(120),
    mec_cpf VARCHAR(15) NOT NULL,
    mec_data_contratacao DATE DEFAULT '2025-01-01'
);

create table tb_especialidades_mecanico (
	esp_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    esp_nome VARCHAR(200), -- Especializado em motor de moto, de carro, etc.
	esp_mec_id INT NOT NULL,
    FOREIGN KEY (esp_mec_id) REFERENCES tb_mecanico(mec_id)
);

-- 

-- Tabelas de veículo
create table tb_tipo_veiculo (
	tve_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tve_nome VARCHAR(50) -- Carro, moto, etc
);

create table tb_modelo_veiculo (
	mov_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mov_nome VARCHAR(50) -- Fiat, Wolkswagen, etc
);

create table tb_marca_veiculo (
	mar_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mar_nome VARCHAR(50) -- Corolla, Gol, etc
);

create table tb_cor_veiculo (
	cor_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cor_nome VARCHAR(50) -- Azul, Preto, Amarelo, etc
);

create table tb_veiculo (
	vei_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    vei_placa VARCHAR(20),
    vei_ano DATE DEFAULT '2025-01-01',
    vei_mar_id INT NOT NULL,
    vei_cor_id INT NOT NULL,
    vei_cli_id INT NOT NULL,
    vei_tve_id INT NOT NULL,
    vei_mov_id INT NOT NULL,
    FOREIGN KEY (vei_cli_id) REFERENCES tb_cliente(cli_id),
    FOREIGN KEY (vei_mar_id) REFERENCES tb_marca_veiculo(mar_id),
    FOREIGN KEY (vei_cor_id) REFERENCES tb_cor_veiculo(cor_id),
    FOREIGN KEY (vei_tve_id) REFERENCES tb_tipo_veiculo(tve_id),
    FOREIGN KEY (vei_mov_id) REFERENCES tb_modelo_veiculo(mov_id)
);

--

-- Tabelas de serviço
create table tb_tipo_peca (
	tpe_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tpe_nome VARCHAR(120)
);

create table tb_servico (
	ser_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ser_valor DECIMAL(18),
    ser_tempo_execucao TIME,
    ser_descricao VARCHAR(500)
);

create table tb_ordem_servico (
	ods_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ods_valor_total DECIMAL(18),
    ods_data_abertura DATE DEFAULT '2025-01-01',
    ods_data_conclusao DATE DEFAULT '2025-01-01',
    ods_observacoes VARCHAR(1000),
    ods_retrabalho BOOLEAN,
    ods_status BOOLEAN,
	ods_ser_id INT NOT NULL,
    ods_vei_id INT NOT NULL,
    ods_cli_id INT NOT NULL,
    ods_mec_id INT NOT NULL,
    FOREIGN KEY (ods_mec_id) REFERENCES tb_mecanico(mec_id),
    FOREIGN KEY (ods_cli_id) REFERENCES tb_cliente(cli_id),
    FOREIGN KEY (ods_vei_id) REFERENCES tb_veiculo(vei_id),
	FOREIGN KEY (ods_ser_id) REFERENCES tb_servico(ser_id)
);

create table tb_peca (
	pec_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pec_preco DECIMAL(18),
    pec_descricao VARCHAR(200),
    pec_tpe_id INT NOT NULL,
    pec_ods_id INT NOT NULL,
	pec_est_id INT NOT NULL,
	FOREIGN KEY (pec_est_id) REFERENCES tb_estoque(est_id),
    FOREIGN KEY (pec_ods_id) REFERENCES tb_ordem_servico(ods_id),
    FOREIGN KEY (pec_tpe_id) REFERENCES tb_tipo_peca(tpe_id)
);

create table tb_servico_peca (
	sep_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    sep_ser_id INT NOT NULL,
	sep_pec_id INT NOT NULL,
	FOREIGN KEY (sep_pec_id) REFERENCES tb_peca(pec_id)
);	

--

-- Tabelas de estoque e fornecedor
create table tb_fornecedor (
	for_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    for_cnpj VARCHAR(20) NOT NULL,
    for_nome VARCHAR(100) NOT NULL
);

create table tb_fornecedor_peca (
	fpe_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fpe_for_id INT NOT NULL,
	fpe_est_id INT NOT NULL,
	FOREIGN KEY (fpe_est_id) REFERENCES tb_estoque(est_id),
    FOREIGN KEY (fpe_for_id) REFERENCES tb_fornecedor(for_id)
);

create table tb_estoque (
	est_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    est_quantidade INT NOT NULL
);

create table tb_email_fornecedor (
	emf_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    emf_email VARCHAR(200),
    emf_for_id INT,
    FOREIGN KEY (emf_for_id) REFERENCES tb_fornecedor(for_id)
);

create table tb_endereco_fornecedor (
	enf_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    enf_bairro VARCHAR(120) NOT NULL,
    enf_rua VARCHAR(120) NOT NULL,
    enf_complemento VARCHAR(200),
    enf_for_id INT NOT NULL,
    FOREIGN KEY (enf_for_id) REFERENCES tb_fornecedor(for_id)
);

create table tb_telefone_fornecedor (
	tef_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tef_telefone VARCHAR(120),
    tef_for_id INT NOT NULL,
    FOREIGN KEY (tef_for_id) REFERENCES tb_fornecedor(for_id)
);
