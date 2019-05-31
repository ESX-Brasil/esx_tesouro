Config              = {}
Config.DrawDistance = 100.0
Config.IsMoneyDirtyMoney = false --Se for true, o dinheiro que você recebe das caixas de tesouro será dado em dinheiro sujo. Se for falso, o jogador receberá dinheiro em espécie normal.
Config.ContainerModel = "prop_box_wood05a" --Modelo de caixa.
Config.ShowBlips = false --Se for true, caixas aparecem no mapa.
Config.OnePersonOpen = false --Se for true, uma caixa que já foi aberta não pode ser aberta novamente por ninguém (1 uso). Se falso, o engradado pode ser aberto uma vez por todos (1 uso / pessoa).
Config.MarkerCircle = 1 --Tipo de marcador. Defina como 1 se quiser que o marcador seja visível ou a -1, se você quiser invisível

Config.Tesouro = {
	Treasure1 = {
		Name = "Caixa de Importação", --Cada caixa deve ter um nome exclusivo
		Pos = {x = 3511.36, y = 2538.47, z = 7.53}, --Posição no mapa
		Size = {x = 3.0, y = 3.0, z = 1.0}, --Tamanho do marcador (mesmo que seja invisível)
		Color = {r = 204, g = 204, b = 0}, --Cor do criador
		Type = Config.MarkerCircle, --Tipo de marcador. definido acima
		Money = 5000, --Dinheiro dado
		Items = { --Matriz de itens dados
			Item1 = { --Item
				Name = 'weed', --Nome do item (certifique-se de usar o nome do banco de dados)
				Amount = 180, --Quantos deste item você quer dar
			},
		},
		Weapons = { --Array de armas dadas
			Weapon1 = { --Arma
				Name = 'WEAPON_PISTOL50', --O nome da arma (pode ser encontrado em es_extended/config.weapons.lua)
				Ammo = 80, --Quantidade de munição
			},
		},
	},
	--Se você não quer que a caixa dê itens ou armas, apenas deixe a matriz Itens e Armas vazia
	--Se você não quer que a caixa dê dinheiro, defina o dinheiro para 0, NÃO ENTRE EM NEGATIVO
	--Veja os exemplos abaixo

	Treasure2 = {
		Name = "Caixa de Produtos Eletricos",
		Pos = {x = 3299.19, y = 5202.89, z = 17.17},
		Size = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type = Config.MarkerCircle,
		Money = 5000,
		Items = {
		},
		Weapons = {
			Weapon1 = {
				Name = 'WEAPON_FLAREGUN',
				Ammo = 10,
			},
		},
	},

	Treasure3 = {
		Name = "Caixa de Ferramentas",
		Pos = {x = 1443.29, y = 6333.99, z = 22.89},
		Size = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type = Config.MarkerCircle,
		Money = 7500,
		Items = {
		},
		Weapons = {
			Weapon1 = {
				Name = 'WEAPON_HATCHET',
				Ammo = 1,
			},
		},
	},

	Treasure4 = {
		Name = "Caixa de madeiras",
		Pos = {x = -575.88, y = 5953.77, z = 21.89},
		Size = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type = Config.MarkerCircle,
		Money = 0,
		Items = {
		},
		Weapons = {
			Weapon1 = {
				Name = 'WEAPON_COMBATPDW',
				Ammo = 180,
			},
		},
	},

	Treasure5 = {
		Name = "Caixa do Exercito",
		Pos = {x = -767.10, y = 4335.09, z = 147.21},
		Size = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type = Config.MarkerCircle,
		Money = 12500,
		Items = {
		},
		Weapons = {
			Weapon1 = {
				Name = 'WEAPON_PISTOL50',
				Ammo = 180,
			},
		},
	},

	Treasure6 = {
		Name = "Caixa do trabalhador do armazém",
		Pos = {x = 246.25, y = 370.13, z = 104.80},
		Size = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type = Config.MarkerCircle,
		Money = 0,
		Items = {
			Item1 = {
				Name = 'weed',
				Amount = 180,
			},
		},
		Weapons = {
		},
	},

	Treasure7 = {
		Name = "Caixa de barco",
		Pos = {x = 1235.09, y = -2918.19, z = 28.75},
		Size = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type = Config.MarkerCircle,
		Money = 0,
		Items = {
		},
		Weapons = {
			Weapon1 = {
				Name = 'WEAPON_MICROSMG',
				Ammo = 120,
			},
		},
	},

	Treasure8 = {
		Name = "Caixote do Distribuidor de Erva Daninha",
		Pos = {x = -1165.29, y = -1566.74, z = 3.51},
		Size = {x = 3.0, y = 3.0, z = 1.0},
		Color = {r = 204, g = 204, b = 0},
		Type = Config.MarkerCircle,
		Money = 0,
		Items = {
			Item1 = {
				Name = 'weed',
				Amount = 180,
			},
		},
		Weapons = {
		},
	},
}
