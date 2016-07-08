# WARNING: these seeds assume you have edited the devise config to allow for single letter passwords
#
# 
# uses this dictionary to generate random tags

users = User.create(
  [
    { email: 'a@a.com', name: "Mr. Aardvark", password: "a", password_confirmation: "a"},
    { email: 'b@b.com', name: "Mr. Bear", password: "b", password_confirmation: "b"},
    { email: 'c@c.com', name: "Mr. Cat", password: "c", password_confirmation: "c"},
    { email: 'd@d.com', name: "Mr. Dog", password: "d", password_confirmation: "d"},
    { email: 'e@e.com', name: "Mr. Elephant", password: "e", password_confirmation: "e"},
    { email: 'f@f.com', name: "Mr. Fox", password: "f", password_confirmation: "f"},
    { email: 'g@g.com', name: "Mr. Gopher", password: "g", password_confirmation: "g"},
    { email: 'h@h.com', name: "Mr. Horse", password: "h", password_confirmation: "h"},
    { email: 'i@i.com', name: "Mr. Iguana", password: "i", password_confirmation: "i"},
    { email: 'j@j.com', name: "Mr. Jackrabbit", password: "j", password_confirmation: "j"},
    { email: 'k@k.com', name: "Mr. Kangaroo", password: "k", password_confirmation: "k"},
    { email: 'l@l.com', name: "Mr. Llama", password: "l", password_confirmation: "l"},
    { email: 'm@m.com', name: "Mr. Mouse", password: "m", password_confirmation: "m"},
    { email: 'n@n.com', name: "Mr. Numbat", password: "n", password_confirmation: "n"},
    { email: 'o@o.com', name: "Mr. Opossum", password: "o", password_confirmation: "o"},
    { email: 'p@p.com', name: "Mr. Peacock", password: "p", password_confirmation: "p"},
    { email: 'q@q.com', name: "Mr. Quail", password: "q", password_confirmation: "q"},
    { email: 'r@r.com', name: "Mr. Rabbit", password: "r", password_confirmation: "r"},
    { email: 's@s.com', name: "Mr. Snake", password: "s", password_confirmation: "s"},
    { email: 't@t.com', name: "Mr. Tiger", password: "t", password_confirmation: "t"},
    { email: 'u@u.com', name: "Mr. Urial", password: "u", password_confirmation: "u"},
    { email: 'v@v.com', name: "Mr. Vulture", password: "v", password_confirmation: "v"},
    { email: 'w@w.com', name: "Mr. Wombat", password: "w", password_confirmation: "w"},
    { email: 'x@x.com', name: "Mr. Xerox", password: "x", password_confirmation: "x"},
    { email: 'y@y.com', name: "Mr. Yak", password: "y", password_confirmation: "y"},
    { email: 'z@z.com', name: "Mr. Zebra", password: "z", password_confirmation: "z"},
  ]
)

items = Item.create(
  [
    { filename: "m1.jpg", price: 99.99, name: "ASUS 1000x", purchased: 8, stock: 10, specs: ["AM3+ socket with 970 chipset for AMD FX processors", "Dual USB 3.1 Type A ports and M.2 (PCIe 2.0 x4) for ultra-speedy data transfers" ] },
    { filename: "m2.jpg", price: 120, name: "ASUS Saber 5.1", purchased: 10, stock: 10, specs: ["Dual Intelligent Processors 3 - New DIGI+ Power Control, with DRAM and CPU Power, and SMART DIGI+ Key" ] },
    { filename: "m3.jpg", price: 85,  name: "ASUS Saber 6.1", purchased: 11, stock: 10, specs: ["Dual Intelligent Processors 5 with 5-Way Optimization", "USB 3.1 Boost"] },
    { filename: "m4.jpg", price: 90, name: "ASUS saber 7.1", purchased: 10, stock: 2, specs: ["LGA1151 socket for 6th Gen Intel Core Desktop Processors", "USB 3.1 Type A/C & M.2: Ready for the next-gen devices and storage"] },
    { filename: "m5.jpg", price: 112, name: "intel crapHeap", purchased: 2, stock: 10, specs: ["can run doom"] },
    { filename: "m6.jpg", price: 115, name: "msi DragonRed", purchased: 5, stock: 10, specs: ["Memory: 2x DDR4-2133 MHz Slots, Dual Channel, Max Capacity of 32GB", "Slots: 1x PCI-Express 3.0 x16 Slot, 2x PCI-Express 3.0 x1 Slots, SATA: 6x SATA3 Ports"] },
    { filename: "m7.jpg", price: 95, name: "msi Dragon 2.0", purchased: 3, stock: 10, specs: ["Socket LGA 1150, Supports DDR3-3300(OC) Memory, M.2 + USB 3.0 + SATA 6Gb/s"] },
	{ filename: "m8.jpg", price: 100, name: "nVidia g2k", purchased: 9, stock: 10, specs: ["3 PCI-E x16 3.0 (16x single card, 8x+8x dual card or 8x+4x+4x triple card) and 4 PCI-E x1", "Supports 4th and 5th Gen Intel Core / Pentium / Celeron processors for LGA 1150 socket"] }, 
	{ filename: "g1.jpg", price: 99.99, name: "XFX 100", purchased: 4, stock: 10, specs: ["AM3+ socket with 970 chipset for AMD FX processors", "Dual USB 3.1 Type A ports and M.2 (PCIe 2.0 x4) for ultra-speedy data transfers" ] },
    { filename: "g2.jpg", price: 120, name: "ASUS Saber 5.1", purchased: 15, stock: 10, specs: ["Dual Intelligent Processors 3 - New DIGI+ Power Control, with DRAM and CPU Power, and SMART DIGI+ Key" ] },
    { filename: "g3.jpg", price: 85,  name: "msi Tinytot", purchased: 3, stock: 10, specs: ["can run doom"] },
    { filename: "g4.jpg", price: 90, name: "ASUS saber 7.1", purchased: 10, stock: 10, specs: ["LGA1151 socket for 6th Gen Intel Core Desktop Processors", "USB 3.1 Type A/C & M.2: Ready for the next-gen devices and storage"] },
    { filename: "g5.jpg", price: 112, name: "intel crapHeap", purchased: 2, stock: 10, specs: ["can run doom"] },
    { filename: "g6.jpg", price: 115, name: "msi DragonRed", purchased: 9, stock: 10, specs: ["Memory: 2x DDR4-2133 MHz Slots, Dual Channel, Max Capacity of 32GB", "Slots: 1x PCI-Express 3.0 x16 Slot, 2x PCI-Express 3.0 x1 Slots, SATA: 6x SATA3 Ports"] },
    { filename: "g7.jpg", price: 95, name: "msi Dragon 2.0", purchased: 3, stock: 10, specs: ["Socket LGA 1150, Supports DDR3-3300(OC) Memory, M.2 + USB 3.0 + SATA 6Gb/s"] },
	{ filename: "g8.jpg", price: 100, name: "nVidia g2k", purchased: 12, stock: 10, specs: ["3 PCI-E x16 3.0 (16x single card, 8x+8x dual card or 8x+4x+4x triple card) and 4 PCI-E x1", "Supports 4th and 5th Gen Intel Core / Pentium / Celeron processors for LGA 1150 socket"] }
  ]
)


 
