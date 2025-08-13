-- Peça mais utilizada
select pec.pec_id, count(*) as total_usos
from tb_peca pec
group by pec.pec_id
having total_usos > 1
order by total_usos desc;

-- Cliente com maior gasto
select cli.cli_nome, sum(ods.ods_valor_total) as total_gasto
from tb_cliente cli
inner join tb_ordem_servico ods on ods.ods_cli_id = cli.cli_id
group by cli.cli_nome
order by total_gasto desc;

-- Serviço mais executado
select ser.ser_id, ser.ser_descricao, count(*) as vezes_executado
from tb_ordem_servico ods
inner join tb_servico ser on ser.ser_id = ods.ods_ser_id
group by ser.ser_id, ser.ser_descricao
order by vezes_executado desc;

-- Tempo médio por ordem de serviço
select sec_to_time(avg(time_to_sec(ser_tempo_execucao))) as media_tempo_execucao
from tb_servico;

-- Veículos mais atendidos por marca
select mar.mar_nome, count(*) as total_veiculos
from tb_veiculo vei
inner join tb_marca_veiculo mar on mar.mar_id = vei.vei_mar_id
group by mar.mar_nome
having total_veiculos > 1
order by total_veiculos desc;

-- Estoque atual de peças por tipo
select est.est_quantidade, tpe.tpe_nome, forn.for_nome
from tb_peca pec
inner join tb_estoque est on est.est_id = pec.pec_est_id
inner join tb_tipo_peca tpe on tpe.tpe_id = pec.pec_tpe_id
inner join tb_fornecedor_peca fpe on fpe.fpe_est_id = est.est_id
inner join tb_fornecedor forn on forn.for_id = fpe.fpe_for_id;

-- Ordens de serviço com retrabalho
select * from tb_ordem_servico
where ods_retrabalho = true;

-- Ordens de serviço com cliente e dados do veículo
select ods.ods_id, ods.ods_valor_total, cli.cli_nome, mar.mar_nome, mov.mov_nome
from tb_ordem_servico ods
inner join tb_cliente cli on cli.cli_id = ods.ods_cli_id
inner join tb_veiculo vei on vei.vei_id = ods.ods_vei_id
inner join tb_marca_veiculo mar on mar.mar_id = vei.vei_mar_id
inner join tb_modelo_veiculo mov on mov.mov_id = vei.vei_mov_id;

-- . Peças por serviço (com quantidade e custo)
select ser.ser_id, ser.ser_valor, count(pec.pec_id) as qtd_pecas, sum(pec.pec_preco) as total_pecas
from tb_peca pec
inner join tb_ordem_servico ods on ods.ods_id = pec.pec_ods_id
inner join tb_servico ser on ser.ser_id = ods.ods_ser_id
group by ser.ser_id, ser.ser_valor;

-- Serviços realizados em veículos de uma marca
select ods.ods_id, mar.mar_nome
from tb_ordem_servico ods
inner join tb_veiculo vei on vei.vei_id = ods.ods_vei_id
inner join tb_marca_veiculo mar on mar.mar_id = vei.vei_mar_id
where mar.mar_nome = 'corolla';

-- Clientes com maior gasto detalhado por ordem
select cli.cli_nome, cli.cli_cpf, ods.ods_data_abertura, ods.ods_data_conclusao, ods.ods_observacoes, ods.ods_valor_total 
from tb_ordem_servico ods
inner join tb_cliente cli on cli.cli_id = ods.ods_cli_id
order by ods.ods_valor_total desc;

-- Listar veículos com todos os serviços e mecânicos
select vei.vei_placa, mec.mec_nome, ods.ods_id
from tb_ordem_servico ods
inner join tb_veiculo vei on vei.vei_id = ods.ods_vei_id
inner join tb_mecanico mec on mec.mec_id = ods.ods_mec_id;

-- Estoque de peças com fornecedores (por tipo de serviço)
select forn.for_nome, est.est_quantidade, tpe.tpe_nome, ser.ser_descricao
from tb_peca pec
inner join tb_estoque est on est.est_id = pec.pec_est_id
inner join tb_tipo_peca tpe on tpe.tpe_id = pec.pec_tpe_id
inner join tb_fornecedor_peca fpe on fpe.fpe_est_id = est.est_id
inner join tb_fornecedor forn on forn.for_id = fpe.fpe_for_id
inner join tb_ordem_servico ods on ods.ods_id = pec.pec_ods_id
inner join tb_servico ser on ser.ser_id = ods.ods_ser_id;
