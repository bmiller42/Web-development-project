# WARNING: these seeds assume you have edited the devise config to allow for single letter passwords
#
# 
# uses this dictionary to generate random tags

users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", wallet: 400, cart: [1, 3], wishlist: [4, 5, 6], password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", wallet: 400, cart: [6, 4], wishlist: [ 8, 10], password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", wallet: 400, cart: [7], wishlist: [6], password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", wallet: 400, cart: [7], wishlist: [6], password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", wallet: 400, cart: [7], wishlist: [6], password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", wallet: 400, cart: [7], wishlist: [6], password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", wallet: 400, cart: [7], wishlist: [6], password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", wallet: 400, cart: [7], wishlist: [46], password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", wallet: 400, cart: [7], wishlist: [6], password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", wallet: 400, cart: [7], wishlist: [6], password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", wallet: 400, cart: [7], wishlist: [6], password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Llama", wallet: 400, cart: [7], wishlist: [6], password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", wallet: 400, cart: [7], wishlist: [6], password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", wallet: 400, cart: [7], wishlist: [6], password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", wallet: 400, cart: [7], wishlist: [6], password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", wallet: 400, cart: [7], wishlist: [6], password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", wallet: 400, cart: [7], wishlist: [6], password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", wallet: 400, cart: [7], wishlist: [6], password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", wallet: 400, cart: [7], wishlist: [6], password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", wallet: 400, cart: [7], wishlist: [6], password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", wallet: 400, cart: [7], wishlist: [6], password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", wallet: 400, cart: [7], wishlist: [6], password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", wallet: 400, cart: [7], wishlist: [6], password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xerox", wallet: 400, cart: [7], wishlist: [6], password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", wallet: 400, cart: [7], wishlist: [6], password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", wallet: 400, cart: [7], wishlist: [6], password: "z", password_confirmation: "z"}
  ]
)

#carts = Cart.create
  #[ {user_id: 1, item_id: 1}])
items = Item.create(
  [
    { filename: "m1.jpg", price: 99.99, name: "ASUS 1000x", owner_id: 2, on_sale: false, item_type: "motherboard", purchased: 8, stock: 2, specs: "AM3+ socket with 970 chipset for AMD FX processors, Dual USB 3.1 Type A ports and M.2 (PCIe 2.0 x4) for ultra-speedy data transfers" },
    { filename: "m2.jpg", price: 120, name: "ASUS Saber 5.1", owner_id: 3, on_sale: false, item_type: "motherboard", purchased: 10, stock: 10, specs: "Dual Intelligent Processors 3, New DIGI+ Power Control, with DRAM and CPU Power, and SMART DIGI+ Key" },
    { filename: "m3.jpg", price: 85,  name: "ASUS Saber 6.1", owner_id: 4, on_sale: false, item_type: "motherboard", purchased: 11, stock: 10, specs: "Dual Intelligent Processors 5 with 5-Way Optimization, USB 3.1 Boost" },
    { filename: "m4.jpg", price: 90, name: "ASUS saber 7.1", owner_id: 2, on_sale: true, item_type: "motherboard", purchased: 10, stock: 2, specs: "LGA1151 socket for 6th Gen Intel Core Desktop Processors, USB 3.1 Type A/C & M.2: Ready for the next-gen devices and storage" },
    { filename: "m5.jpg", price: 112, name: "intel crapHeap", owner_id: 20, on_sale: false, item_type: "motherboard", purchased: 2, stock: 10, specs: "can run doom" },
    { filename: "m6.jpg", price: 115, name: "msi DragonRed", owner_id: 3, on_sale: true, item_type: "motherboard", purchased: 5, stock: 10, specs: "Memory: 2x DDR4-2133 MHz Slots, Dual Channel, Max Capacity of 32GB, Slots: 1x PCI-Express 3.0 x16 Slot, 2x PCI-Express 3.0 x1 Slots, SATA: 6x SATA3 Ports" },
    { filename: "m7.jpg", price: 95, name: "msi Dragon 2.0", owner_id: 1, on_sale: false, item_type: "motherboard", purchased: 3, stock: 10, specs: "Socket LGA 1150, Supports DDR3-3300(OC) Memory, M.2 + USB 3.0 + SATA 6Gb/s" },
	{ filename: "m8.jpg", price: 100, name: "nVidia g2k", owner_id: 3, on_sale: false, item_type: "motherboard", purchased: 9, stock: 10, specs: "3 PCI-E x16 3.0 (16x single card, 8x+8x dual card or 8x+4x+4x triple card) and 4 PCI-E x1, Supports 4th and 5th Gen Intel Core / Pentium / Celeron processors for LGA 1150 socket" }, 
	{ filename: "g1.jpg", price: 99.99, name: "XFX 100", owner_id: 1, on_sale: true, item_type: "graphics card", purchased: 4, stock: 10, specs: "AM3+ socket with 970 chipset for AMD FX processors, Dual USB 3.1 Type A ports and M.2 (PCIe 2.0 x4) for ultra-speedy data transfers"  },
    { filename: "g2.jpg", price: 120, name: "msi R7 370", owner_id: 17, on_sale: false, item_type: "graphics card", purchased: 15, stock: 10, specs: "Dual Intelligent Processors 3 - New DIGI+ Power Control, with DRAM and CPU Power, and SMART DIGI+ Key" },
    { filename: "g3.jpg", price: 85,  name: "msi Tiny Thing", owner_id: 10, on_sale: false, item_type: "graphics card", purchased: 3, stock: 10, specs: "can run doom" },
    { filename: "g4.jpg", price: 90, name: "GigaByte GTX 980ti", owner_id: 4, on_sale: false, item_type: "graphics card", purchased: 10, stock: 10, specs: "LGA1151 socket for 6th Gen Intel Core Desktop Processors, USB 3.1 Type A/C & M.2: Ready for the next-gen devices and storage" },
    { filename: "g5.jpg", price: 112, name: "ASUS amd 7850", owner_id: 1, on_sale: true, item_type: "graphics card", purchased: 2, stock: 10, specs: "can run doom" },
    { filename: "g6.jpg", price: 115, name: "Amd Firepro S9100", owner_id: 12, on_sale: false, item_type: "graphics card", purchased: 9, stock: 10, specs: "Memory: 2x DDR4-2133 MHz Slots, Dual Channel, Max Capacity of 32GB, Slots: 1x PCI-Express 3.0 x16 Slot, 2x PCI-Express 3.0 x1 Slots, SATA: 6x SATA3 Ports" },
    { filename: "g7.jpg", price: 95, name: "EVGA GTX 980ti", owner_id: 4, on_sale: false, item_type: "graphics card", purchased: 3, stock: 10, specs: "Socket LGA 1150, Supports DDR3-3300(OC) Memory, M.2 + USB 3.0 + SATA 6Gb/s" },
	{ filename: "g8.jpg", price: 100, name: "AMD FirePro W8100", owner_id: 7, on_sale: false, item_type: "graphics card", purchased: 12, stock: 10, specs: "3 PCI-E x16 3.0 (16x single card, 8x+8x dual card or 8x+4x+4x triple card) and 4 PCI-E x1, Supports 4th and 5th Gen Intel Core / Pentium / Celeron processors for LGA 1150 socket" },
	{ filename: "s1.jpg", price: 150, name: "Samsung 850 EVO", owner_id: 1, on_sale: false, item_type: "solid_state_drive", purchased: 4, stock: 10, specs: "500Gb storage, Up to 540MB/s and 520MB/s Respectively,and Random Read/Write IOPS Performance : Up to 98K and 90K Respectively"  },
    { filename: "s2.jpg", price: 70, name: "Crucial BX200 240GB", owner_id: 2, on_sale: false, item_type: "solid_state_drive", purchased: 15, stock: 10, specs: "Sequential reads/writes up to 540 / 490 MB/s on all file types and random reads/writes up to 66k / 78k IOPS" },
    { filename: "s3.jpg", price: 60,  name: "PNY CS1311 240GB", owner_id: 1, on_sale: true, item_type: "solid_state_drive", purchased: 3, stock: 10, specs: "Exceptional performance offering up to 550 MB/s seq. read and 520 MB/s seq. write speeds" },
    { filename: "s4.jpg", price: 70, name: "SanDisk SSD 240GB", owner_id: 8, on_sale: false, item_type: "solid_state_drive", purchased: 10, stock: 10, specs: "Sequential Read (up to) 520MB/s, Sequential Write (up to) 350MB/s" },
    { filename: "s5.jpg", price: 70, name: "Kingston Digital 240GB", owner_id: 1, on_sale: false, item_type: "solid_state_drive", purchased: 2, stock: 10, specs: "V300 SATA 3 2.5 (7mm height) with Adapter, Interface : SATA Rev. 3.0 (6Gb/s) - with backwards compatibility to SATA Rev. 2.0" },
    { filename: "s6.jpg", price: 140, name: "Crucial MX200 500GB", owner_id: 12, on_sale: false, item_type: "solid_state_drive", purchased: 9, stock: 10, specs: "Sequential reads/writes up to 555 / 500 MB/s on all file types, Random reads/writes up to 100k / 87k IOPS on all file types Up to 5x more endurance and over 2x more energy efficient than a typical client SSD" },
    { filename: "s7.jpg", price: 130, name: "Seagate 4TB SSHD", owner_id: 4, on_sale: false, item_type: "solid_state_drive", purchased: 3, stock: 10, specs: "5x faster than Desktop HDD and more capacity than SSD, 64MB Cache with 8GB NAND Flash for more speed, cost efficient" },
	{ filename: "s8.jpg", price: 100, name: "Silicon Power S55 120GB", owner_id: 2, on_sale: false, item_type: "solid_state_drive", purchased: 12, stock: 10, specs: "Read up to 520 MB/s, Write up to 370 MB/s by CDM, 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks" },
	{ filename: "c1.jpg", price: 150, name: "FX-6300 6-Core", owner_id: 11, on_sale: false, item_type: "cpu", purchased: 4, stock: 10, specs: "Frequency: 3.5/4.1GHZ, Cache: 6/8MB L2/L3, Socket Type: AM3+"  },
    { filename: "c2.jpg", price: 70, name: "I7-6700K 4.00 GHz", owner_id: 2, on_sale: false, item_type: "cpu", purchased: 15, stock: 10, specs: "LGA 1151, Unlocked Processor. DDR4 & DDR3L Support" },
    { filename: "c3.jpg", price: 60,  name: "Intel Core i5-4460", owner_id: 22, on_sale: true, item_type: "cpu", purchased: 3, stock: 10, specs: "Compatible with Z87 and Z97 motherboards. Z87 motherboard users may need to apply a BIOS update for compatibility." },
    { filename: "c4.jpg", price: 70, name: "FX-8320", owner_id: 4, on_sale: false, item_type: "cpu", purchased: 10, stock: 10, specs: "Frequency: 3.5/4.0GHZ Base/Overdrive, Cores: 8, Socket Type: AM3+" },
    { filename: "c5.jpg", price: 70, name: "AMD A4-7300 APU", owner_id: 1, on_sale: false, item_type: "cpu", purchased: 2, stock: 10, specs: "4000Mhz, 65W, FM2" }
  ]
)


 
