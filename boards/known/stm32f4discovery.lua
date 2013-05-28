-- STM32F4DISCOVERY build configuration

return {
  cpu = 'stm32f407vg',
  components = {
    sercon = { uart = 2, speed = 115200 },
    romfs = true,
    shell = true,
    term = { lines = 25, cols = 80 },
    linenoise = { shell_lines = 10, lua_lines = 50 },
    rpc = { uart = 2, speed = 115200 },
    adc = { buf_size = 2 },
    xmodem = true,
    cints = true, 
    luaints = true
  },
  config = {
    egc = { mode = "alloc" },
    vtmr = { num = 4, freq = 10 },
    ram = { internal_rams = 2 }
  },
  modules = {
    generic = { 'all', "-i2c", "-net" },
    platform = 'all',
  },
}

