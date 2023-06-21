local status_ok, hints = pcall(require, "inlay-hints")
if not status_ok then
  return
end

hints.setup()


