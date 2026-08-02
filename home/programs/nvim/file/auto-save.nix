{
  programs.nixvim.plugins.auto-save = {
    enable = true;

    settings = {
      enabled = true;
      execution_message = {
        message.__raw = ''"AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")'';
        cleaning_interval = 1250;
      };
      trigger_events = {
        immediate_save = [ "BufLeave" "FocusLost" ];
        defer_save = [ "InsertLeave" "TextChanged" ];
        cancel_defer = [ "InsertEnter" ];
      };
      debounce_delay = 1000;
    };
  };
}
