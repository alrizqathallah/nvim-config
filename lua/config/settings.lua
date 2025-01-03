-- Pengaturan umum
local set = vim.opt -- variabel lokal

-- Pengaturan UI
set.number = true -- Menampilkan nomor baris
set.relativenumber = true -- Menampilkan nomor relatif untuk baris
set.cursorline = true -- Menyoroti baris tempat kursor berada
set.termguicolors = true -- Mengaktifkan warna GUI
set.mouse = "a" -- Mengaktifkan mouse di semua mode

-- Pengaturan Indentasi dan Format
set.tabstop = 4 -- Ukuran tab 4 spasi
set.shiftwidth = 4 -- Indentasi otomatis 4 spasi
set.smartindent = true -- Mengaktifkan indentasi otomatis
set.expandtab = true -- Mengkonversi tab menjadi spasi
set.autoindent = true -- Mengaktifkan indentasi otomatis
set.softtabstop = 4 -- Lebar tab di mode insert

-- Pengaturan Line dan Break
set.linespace = 2 -- Jarak antar baris
set.wrap = true -- Mengaktifkan line wrapping
set.linebreak = true -- Memisahkan baris pada kata
set.breakindent = true -- Memberikan indentasi pada baris yang terpotong
set.showbreak = "-->" -- Penanda baris yang terpotong
set.textwidth = 100 -- Lebar teks maksimum per-baris

-- Pengaturan Pencarian
set.ignorecase = true -- Abaikan huruf besar dan kecil saat pencarian
set.smartcase = true -- Menggunakan case-sensitive jika ada huruf besar
set.hlsearch = true -- Sorot hasil pencarian
set.incsearch = true -- Tampilkan hasil pencarian saat mengetik
set.wrapscan = true -- Melanjutkan pencarian dari awal file jika mencapai akhir
set.showmatch = true -- Sorot pasangan tanda seperti tanda kutip dan kurung

-- Pengaturan File dan Buffer
set.backup = false -- Menonaktifkan pembuatan file backup
set.writebackup = false -- menonaktifkan backup file saat disimpan
set.swapfile = false -- Menonaktifkan pembuatan file swap
set.undofile = true -- Mengaktifkan undo pada file yang disimpan

-- Pengaturan Jendela dan Split
set.splitright = true -- Split jendela buffer ke-kanan
set.splitbelow = true -- Split jendela buffer ke-bawah
set.scrolloff = 8 -- Memberikan jarak scroll dibawah layar
set.sidescrolloff = 8 -- Memberikan jarak scroll di sisi layar

-- Pengaturan Clipboard
set.clipboard = "unnamedplus" -- Menggunakan Clipboard sistem copy/paste

-- Pengaturan Shell
set.shell = "powershell.exe" -- Menetapkan powershell sebagai shell default

-- Pengaturan Pop-up
set.pumheight = 10 -- Tinggi popup menu

-- Pengaturan Statusbar dan Tab
set.laststatus = 2 -- Selalu tampilkan status bar
set.showtabline = 2 -- Selalu tampilkan tab bar
set.smarttab = true -- Menyempurnakan penggunaan tab diawal baris
set.formatoptions = "tcq" -- Otomatis melakukan line break setalah spasi dan titik

-- Pengaturan pasangan tanda
set.matchpairs:append("<:>")
set.matchpairs:append("(:)")
set.matchpairs:append("[:]")
set.matchpairs:append("{:}")
set.matchpairs:append("':'")
set.matchpairs:append('":"')

-- Pengaturan Autosave semua file ketika berpindah buffer
set.autowriteall = true

-- Pengaturan Lain
set.hidden = true -- Memungkinkan berpindah anter buffer tanpa menyimpan
set.fileencoding = "UTF-8" -- Menetapkan file encoding sebagai UTF-8
set.history = 100 -- Menyimpan riwayat perintah
set.cmdheight = 1 -- Mengatur tinggi baris perintah
set.timeoutlen = 1000 -- Tunggu 500ms untuk kombinasi tombol
set.updatetime = 500 -- Menentukan waktu pembaruan file
set.lazyredraw = true -- Tidak menggambar ulang layar ketika makro/skrip dijalankan
set.shortmess:append("c") -- Mengurangi pesan yang muncul
set.fillchars = { eob = " " } -- Karakter pengganti untuk baris kosong di tampilan
set.showmode = true -- Menampilkan mode yang sedang aktif
set.signcolumn = "yes" -- Selalu menampilka kolom tanda

-- Pengaturan Netrw (File Explorer)
vim.g.netrw_liststyle = 3 -- Tampilkan direktori sebagai pohon file
vim.g.netrw_winsize = 35 -- Ukuran jendela file tree
vim.g.netrw_banner = 0 -- Hilangkan banner netrw
vim.g.netrw_sort_sequence = "[\\/],*" -- Menyortir file berdasarkan nama
vim.g.netrw_list_hide = "" -- Menampilkan file tersembunyi

-- Pengaturan Diagnostik
vim.diagnostic.config({
    virtual_text = true, -- Menampilkan teks diagnostik secara langsung
    signs = true, -- Menampilkan icon di signcolumn
    underline = true, -- Memberi garis bawah pada kesalahan
    update_in_insert = false, -- Jangan memperbarui saat mode insert
    severity_sort = true, -- Mengurutkan kesalahan berdasarkan tingkat keparahan
})
