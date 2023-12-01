
-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "Afogado"
local description = "Um Zumbi aquático."
local emoji = "🔱"
local sound = "Glub,Glub,Glub"
local favoriteTime = "Noturno"
local drop = "Carne Podre - Tridente - Concha de Náutilo"

-- Atributos
local attackAttribute = 3
local defenseAttribute = 0
local lifeAttribute = 20
local speedAttribute = 7
local inteligenceAttribute = 3
local versao = 1.13
-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto

local function attackprogessbar(hit)
    local full_emj ="💥"
    local empty_emj =""
    local result = ""
    for i = 1, 10, 1 do
        if i <= hit then
            result = result .. full_emj
        else
            result = result .. empty_emj
        end
    end
    return result
end

local function defenseprogessbar(hit)
    local full_emj ="🛡️"
    local empty_emj =""
    local result = ""
    for i = 1, 10, 1 do
        if i <= hit then
            result = result .. full_emj
        else
            result = result .. empty_emj
        end
    end
    return result
end

local function lifeprogessbar(life)
    local fullheart ="🧡"
    local emptyheart ="🤍"
    local result = ""
    for i = 1, 10, 1 do
        if i <= life then
            result = result .. fullheart
        else
            result = result .. emptyheart
        end
    end
    return result
end

local function inteligenceProgressBar(attribute)
    local fullChar = "🧠"
    local emptyChar = ""

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

local function speedProgressBar(attribute)
    local fullChar = "💨"
    local emptyChar = ""

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
print("===================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Item: " .. drop)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("| Versão Adicionada: " .. versao)

print("| ")
print("| Atributos")
print("|    Ataque:       " .. attackprogessbar(attackAttribute))
print("|    Defesa:       " .. defenseprogessbar(defenseAttribute))
print("|    Vida:         " .. lifeprogessbar(lifeAttribute))
print("|    Velocidade:   " .. speedProgressBar(speedAttribute))
print("|    Inteligência: " .. inteligenceProgressBar(inteligenceAttribute))
print("| ")
print("===================================================")