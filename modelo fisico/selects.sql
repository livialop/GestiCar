-- Select's

-- Peças mais utilizadas
SELECT *
FROM tb_peca
WHERE pec_ods_id IN (
    SELECT pec_ods_id
    FROM tb_peca
    GROUP BY pec_ods_id
    HAVING COUNT(*) > 1
)
ORDER BY pec_ods_id;

-- Clientes com maior gasto
SELECT cli.cli_nome, ods.ods_valor_total 
FROM tb_cliente cli
INNER JOIN tb_ordem_servico ods
	ON ods.ods_cli_id = cli.cli_id
ORDER BY ods.ods_valor_total DESC;

-- Serviços mais executados
SELECT *
FROM tb_servico
WHERE ser_ods_id IN (
    SELECT pec_ods_id
    FROM tb_peca
    GROUP BY pec_ods_id
    HAVING COUNT(*) > 1
)
ORDER BY ser_ods_id;

-- Tempo médio por ordem de serviço
SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(ser_tempo_execucao))) AS media_servico
FROM tb_servico;
-- Pesquisei como fazer pois não sabia como pegar o tempo médio:
-- A função sec_to_time retorna os segundos em forma do type time, a função avg calcula a média aritmetica e a função sec_to_time retorna o valor para segundos.

-- Veículos mais atendidos por marca;
SELECT vei.vei_placa, mar.mar_nome 
FROM tb_veiculo vei
INNER JOIN tb_marca_veiculo mar
	ON mar.mar_id = vei.vei_mar_id
WHERE vei.vei_mar_id IN (
	SELECT vei.vei_mar_id FROM tb_veiculo vei
    GROUP BY vei.vei_mar_id 
    HAVING COUNT(*) > 1
)
ORDER BY vei.vei_mar_id ASC;

-- Estoque atual de peças por tipo
SELECT est.est_quantidade, tpe.tpe_nome, forn.for_nome FROM tb_estoque est
INNER JOIN tb_peca pec
	ON pec.pec_id = est.est_pec_id
INNER JOIN tb_tipo_peca tpe
	ON tpe.tpe_id = pec.pec_tpe_id
INNER JOIN tb_fornecedor_peca fpe
	ON fpe.fpe_id = est.est_fpe_id
INNER JOIN tb_fornecedor forn
	ON forn.for_id = fpe.fpe_for_id;

-- Ordens de serviço com retrabalho
SELECT * FROM tb_ordem_servico
WHERE ods_retrabalho is True;

-- Ordens de serviço com nome do cliente e dados do veículo
SELECT ods.ods_id, ods.ods_valor_total, cli.cli_nome, mar.mar_nome, mov.mov_nome FROM tb_ordem_servico ods
INNER JOIN tb_cliente cli
	ON cli.cli_id = ods.ods_cli_id
INNER JOIN tb_veiculo vei
	ON vei.vei_id = ods.ods_vei_id
INNER JOIN tb_marca_veiculo mar
	ON mar.mar_id = vei.vei_mar_id
INNER JOIN tb_modelo_veiculo mov
	ON mov.mov_id = vei.vei_mov_id;

-- Peças utilizadas por serviço, com quantidade e custo;
SELECT ser.ser_id, ser.ser_valor, ods.ods_id
FROM tb_servico ser
INNER JOIN tb_ordem_servico ods
	ON ods.ods_id = ser.ser_ods_id;

-- Serviços realizados em veículos de determinada marca;
SELECT ods.ods_id, mar.mar_nome FROM tb_ordem_servico ods
INNER JOIN tb_veiculo vei
	ON vei.vei_id = ods.ods_vei_id
INNER JOIN tb_marca_veiculo mar
	ON mar.mar_id = vei.vei_mar_id
WHERE mar.mar_nome = 'corolla';

-- Clientes com maior gasto detalhado por ordem de serviço;
SELECT cli.cli_nome, cli.cli_cpf, ods.ods_data_abertura, ods.ods_data_conclusao, ods.ods_observacoes, ods.ods_valor_total 
FROM tb_ordem_servico ods
INNER JOIN tb_cliente cli
	ON cli.cli_id = ods.ods_id;

-- Listar veículos com todos os serviços realizados e mecânicos envolvidos;
SELECT vei.vei_placa, mec.mec_nome, ods.ods_id
FROM tb_ordem_servico ods
INNER JOIN tb_veiculo vei
	ON vei.vei_id = ods.ods_vei_id
INNER JOIN tb_mecanico mec
	ON mec.mec_id = ods.ods_mec_id;

-- Estoque de peças com fornecedores (por tipo de serviço).
SELECT forn.for_nome, est.est_quantidade, tpe.tpe_nome, ods.ods_id
FROM tb_fornecedor forn
INNER JOIN tb_fornecedor_peca fpe
	ON fpe.fpe_for_id = forn.for_id
INNER JOIN tb_estoque est
	ON est.est_fpe_id = fpe.fpe_id
INNER JOIN tb_peca pec
	ON pec.pec_id = est.est_pec_id
INNER JOIN tb_tipo_peca tpe
	ON tpe.tpe_id = pec.pec_tpe_id
INNER JOIN tb_ordem_servico ods
	ON ods.ods_id = pec.pec_ods_id;