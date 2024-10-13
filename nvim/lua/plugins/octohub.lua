return {
  "2KAbhishek/octohub.nvim",
  config = function()
    require("octohub").setup({
      contrib_icons = { '', '', '', '', '', '', '' }, -- Icons for different contribution levels
      projects_dir = '~/Projects/',     -- Directory where repositories are cloned
      per_user_dir = true,              -- Create a directory for each user
      sort_repos_by = '',               -- Sort repositories by various parameters
      repo_type = '',                   -- Type of repositories to display
      max_contributions = 50,           -- Max number of contributions per day to use for icon selection
      top_lang_count = 5,               -- Number of top languages to display in stats
      event_count = 5,                  -- Number of activity events to show
      window_width = 90,                -- Width in percentage of the window to display stats
      window_height = 60,               -- Height in percentage of the window to display stats
      show_recent_activity = true,      -- Show recent activity in the stats window
      show_contributions = true,        -- Show contributions in the stats window
      show_repo_stats = true,           -- Show repository stats in the stats window
      repo_cache_timeout = 3600 * 24,         -- Time in seconds to cache repositories
      username_cache_timeout = 3600 * 24 * 7, -- Time in seconds to cache username
      events_cache_timeout = 60 * 30,         -- Cache timeout for activity events (30 minutes)
      contributions_cache_timeout = 3600 * 4, -- Cache timeout for contributions data (4 hours)
      user_cache_timeout = 3600 * 24 * 7,     -- Cache timeout for user data (7 days)
      add_default_keybindings = true,         -- Add default keybindings for the plugin
  })
  end,
  dependencies = {
    "2kabhishek/utils.nvim",
    "nvim-lua/plenary.nvim"
  }
}
