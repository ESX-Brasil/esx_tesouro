ESX = nil
local requestedtreasure = {}
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_tesouro:found')
AddEventHandler('esx_tesouro:found', function(name)
	local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local identifier = xPlayer.getIdentifier()
  local playerName = xPlayer.getName()

	--Insira o jogador e o nome da caixa encontrada no banco de dados
  --Para se certificar de que o jogador não pode abri-lo novamente
  MySQL.Async.execute(
    'INSERT INTO tesouro (identifier, tesouronome) VALUES (@identifier, @name)',
    {
      ['@identifier'] = identifier,
      ['@name']   = name,
    }
  )

  --Excluir quaisquer caixas encontradas anteriormente
  for i=1, #requestedtreasure, 1 do
    requestedtreasure[i]=nil
  end

  --Configurar o conteúdo da nova caixa
  for k,v in pairs(Config.Tesouro) do
    if v.Name == name then
      table.insert(requestedtreasure, {
        name = v.Name,
        money = v.Money,
        items = v.Items,
        weapons = v.Weapons,
      })
    end
  end

  --Deve acontecer apenas uma vez, mas você nunca sabe :D
  for i=1, #requestedtreasure, 1 do
    --Dar dinheiro
    if requestedtreasure[i].money ~= 0 then
      if Config.IsMoneyDirtyMoney then
        xPlayer.addAccountMoney('black_money', requestedtreasure[i].money)
      else
        xPlayer.addMoney(tonumber(requestedtreasure[i].money))
      end
    end
    --Dar itens
    for f,j in pairs(requestedtreasure[i].items) do
      xPlayer.addInventoryItem(j.Name, j.Amount)
    end
    --Dar armas
    for f,j in pairs(requestedtreasure[i].weapons) do
      xPlayer.addWeapon(j.Name,j.Ammo)
    end

    --Imprimir no console que abriu o que
    print('ESX Tesouro: '..playerName..' acabou de abrir '..requestedtreasure[i].name)
  end

  --Acionar a função de verificação do cliente para tornar a caixa aberta inacessível ao player que a abriu ou para outras pessoas
  if Config.OnePersonOpen then
    TriggerClientEvent('esx_tesouro:checkcheck', -1) --Verifique para todos
  else
    TriggerClientEvent('esx_tesouro:checkcheck', source) --Verifique a fonte
  end
end)

ESX.RegisterServerCallback('esx_tesouro:isTaken',function(source, cb, name)
	local xPlayer = ESX.GetPlayerFromId(source)
  local identifier = xPlayer.getIdentifier()
  local isTaken = 0

  --Pesquise no banco de dados se o jogador já abriu a caixa
  --Isso é chamado pelo cliente para cada caixa
  if Config.OnePersonOpen then
    MySQL.Async.fetchAll(
    'SELECT tesouronome FROM tesouro WHERE tesouronome = @name',
    {
      ['@identifier'] = identifier,
      ['@name'] = name
    },

    function(result)
      isTakenResult(result)
    end)
  else
    MySQL.Async.fetchAll(
    'SELECT tesouronome FROM tesouro WHERE identifier = @identifier AND tesouronome = @name',
    {
      ['@identifier'] = identifier,
      ['@name'] = name
    },

    function(result)
      isTakenResult(result)
    end)
  end

  function isTakenResult(result)
      for i=1, #result, 1 do
        if name == result[i].tesouronome then
          isTaken = 1
        end
      end
    cb(isTaken)
  end
end)
