# WARNING: these seeds assume you have edited the devise config to allow for single letter passwords
#
# 
# uses this dictionary to generate random tags

users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", wallet: 400, cart: [1, 2, 3], password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", wallet: 400, cart: [6, 4], password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", wallet: 400, cart: [7], password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", wallet: 400, cart: [7], password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", wallet: 400, cart: [7], password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", wallet: 400, cart: [7], password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", wallet: 400, cart: [7], password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", wallet: 400, cart: [7], password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", wallet: 400, cart: [7], password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", wallet: 400, cart: [7], password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", wallet: 400, cart: [7], password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Llama", wallet: 400, cart: [7], password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", wallet: 400, cart: [7], password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", wallet: 400, cart: [7], password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", wallet: 400, cart: [7], password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", wallet: 400, cart: [7], password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", wallet: 400, cart: [7], password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", wallet: 400, cart: [7], password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", wallet: 400, cart: [7], password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", wallet: 400, cart: [7], password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", wallet: 400, cart: [7], password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", wallet: 400, cart: [7], password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", wallet: 400, cart: [7], password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xerox", wallet: 400, cart: [7], password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", wallet: 400, cart: [7], password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", wallet: 400, cart: [7], password: "z", password_confirmation: "z"},
  ]
)

#carts = Cart.create
  #[ {user_id: 1, item_id: 1}])
items = Item.create(
  [
    { filename: "m1.jpg", price: 99.99, name: "ASUS 1000x", owner_id: 2, on_sale: false, item_type: "motherboard", purchased: 8, stock: 10, specs: "AM3+ socket with 970 chipset for AMD FX processors, Dual USB 3.1 Type A ports and M.2 (PCIe 2.0 x4) for ultra-speedy data transfers" },
    { filename: "m2.jpg", price: 120, name: "ASUS Saber 5.1", owner_id: 3, on_sale: false, item_type: "motherboard", purchased: 10, stock: 10, specs: ["Dual Intelligent Processors 3 - New DIGI+ Power Control, with DRAM and CPU Power, and SMART DIGI+ Key" ] },
    { filename: "m3.jpg", price: 85,  name: "ASUS Saber 6.1", owner_id: 4, on_sale: false, item_type: "motherboard", purchased: 11, stock: 10, specs: ["Dual Intelligent Processors 5 with 5-Way Optimization", "USB 3.1 Boost"] },
    { filename: "m4.jpg", price: 90, name: "ASUS saber 7.1", owner_id: 2, on_sale: false, item_type: "motherboard", purchased: 10, stock: 2, specs: ["LGA1151 socket for 6th Gen Intel Core Desktop Processors", "USB 3.1 Type A/C & M.2: Ready for the next-gen devices and storage"] },
    { filename: "m5.jpg", price: 112, name: "intel crapHeap", owner_id: 1, on_sale: false, item_type: "motherboard", purchased: 2, stock: 10, specs: ["can run doom"] },
    { filename: "m6.jpg", price: 115, name: "msi DragonRed", owner_id: 3, on_sale: false, item_type: "motherboard", purchased: 5, stock: 10, specs: ["Memory: 2x DDR4-2133 MHz Slots, Dual Channel, Max Capacity of 32GB", "Slots: 1x PCI-Express 3.0 x16 Slot, 2x PCI-Express 3.0 x1 Slots, SATA: 6x SATA3 Ports"] },
    { filename: "m7.jpg", price: 95, name: "msi Dragon 2.0", owner_id: 1, on_sale: false, item_type: "motherboard", purchased: 3, stock: 10, specs: ["Socket LGA 1150, Supports DDR3-3300(OC) Memory, M.2 + USB 3.0 + SATA 6Gb/s"] },
	{ filename: "m8.jpg", price: 100, name: "nVidia g2k", owner_id: 3, on_sale: false, item_type: "motherboard", purchased: 9, stock: 10, specs: ["3 PCI-E x16 3.0 (16x single card, 8x+8x dual card or 8x+4x+4x triple card) and 4 PCI-E x1", "Supports 4th and 5th Gen Intel Core / Pentium / Celeron processors for LGA 1150 socket"] }, 
	{ filename: "g1.jpg", price: 99.99, name: "XFX 100", owner_id: 1, on_sale: false, item_type: "graphics card", purchased: 4, stock: 10, specs: ["AM3+ socket with 970 chipset for AMD FX processors", "Dual USB 3.1 Type A ports and M.2 (PCIe 2.0 x4) for ultra-speedy data transfers" ] },
    { filename: "g2.jpg", price: 120, name: "msi R7 370", owner_id: 2, on_sale: false, item_type: "graphics card", purchased: 15, stock: 10, specs: "Dual Intelligent Processors 3 - New DIGI+ Power Control, with DRAM and CPU Power, and SMART DIGI+ Key" },
    { filename: "g3.jpg", price: 85,  name: "msi Tiny Thing", owner_id: 1, on_sale: false, item_type: "graphics card", purchased: 3, stock: 10, specs: ["can run doom"] },
    { filename: "g4.jpg", price: 90, name: "GigaByte GTX 980ti", owner_id: 4, on_sale: false, item_type: "graphics card", purchased: 10, stock: 10, specs: ["LGA1151 socket for 6th Gen Intel Core Desktop Processors", "USB 3.1 Type A/C & M.2: Ready for the next-gen devices and storage"] },
    { filename: "g5.jpg", price: 112, name: "ASUS amd 7850", owner_id: 1, on_sale: false, item_type: "graphics card", purchased: 2, stock: 10, specs: ["can run doom"] },
    { filename: "g6.jpg", price: 115, name: "Amd Firepro S9100", owner_id: 12, on_sale: false, item_type: "graphics card", purchased: 9, stock: 10, specs: ["Memory: 2x DDR4-2133 MHz Slots, Dual Channel, Max Capacity of 32GB", "Slots: 1x PCI-Express 3.0 x16 Slot, 2x PCI-Express 3.0 x1 Slots, SATA: 6x SATA3 Ports"] },
    { filename: "g7.jpg", price: 95, name: "EVGA GTX 980ti", owner_id: 4, on_sale: false, item_type: "graphics card", purchased: 3, stock: 10, specs: ["Socket LGA 1150, Supports DDR3-3300(OC) Memory, M.2 + USB 3.0 + SATA 6Gb/s"] },
	{ filename: "g8.jpg", price: 100, name: "AMD FirePro W8100", owner_id: 2, on_sale: false, item_type: "graphics card", purchased: 12, stock: 10, specs: ["3 PCI-E x16 3.0 (16x single card, 8x+8x dual card or 8x+4x+4x triple card) and 4 PCI-E x1", "Supports 4th and 5th Gen Intel Core / Pentium / Celeron processors for LGA 1150 socket"] }
  ]
)


 
