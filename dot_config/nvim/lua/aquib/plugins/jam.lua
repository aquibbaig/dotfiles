return {
  "bautistaaa/jam.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  cmd = { "Jam" },
  opts = {
    providers = {
      spotify = {
        client_id = vim.env.SPOTIFY_CLIENT_ID,
      },
    },
  },
}
