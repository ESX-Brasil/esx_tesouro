# esx_tesouro

## Descrição
Caixas de tesouro com saque para servidores ESX FiveM. As caixas podem conter dinheiro (sujo/limpo), armas ou itens. Suporta várias caixas e o script controla qual delas foi aberto por quem.

## Dependências
* [es_extended](https://github.com/ESX-Brasil/es_extended)
###
* Se você vai manter as caixas padrão, você precisará de esx_drugs
* [esx_drugs](https://github.com/ESX-Brasil/esx_drugs)
## Configuração
* Instale em resources/[esx]
* Importe `esx_tesouro.sql` no seu banco de dados
* Adicione a seguinte linha ao seu server.cfg
```
start esx_tesouro
```

* Se você quiser que a caixa seja aberta varias vezes, você deve definir `Config.OnePersonOpen` como` true` em `config.lua`. E `false`, cada jogador pode abrir a caixa uma vez.
* Se você não quer um círculo ao redor da caixa, você tem que configurar `Config.MarkerCircle` para` -1` em `config.lua`.
* Se você quer que as caixas der dinheiro sujo ao invés de dinheiro limpo, você tem que configurar `Config.IsMoneyDirtyMoney` para` true` em `config.lua`.
## Screenshots
### Com marcador
![screenshot](https://i.imgur.com/VcsQnDj.jpg)
##
### Sem marcador
![screenshot](https://i.imgur.com/qnE9oZF.jpg)
