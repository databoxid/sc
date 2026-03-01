local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- ============================================
-- DATABASE KBBI DIPISAH PER HURUF
-- ============================================
local DB = {
   ["a"] = {
  "a","aba","abad","abadi","abadiah","abah","abai","abaikan","abaka","abakus",
  "abal","abang","abangan","abar","abdi","abdikasi","abdomen","abduksi","abduktor",
  "abece","aberrasi","abet","abid","abidin","abjad","ablasi","ablepsia","abnormal",
  "abnormalitas","aborsi","abortif","abrasi","abrek","abreviasi","absah","absen",
  "absensi","abses","absis","absolut","absolutisme","absolutisasi","absorpsi",
  "absorptif","abstain","abstinensi","abstrak","abstraksi","absurd","abu","abuan",
  "abuh","abuk","abulia","abur","abus","abuse","acak","acakan","acap","acar",
  "acara","acau","aceng","aci","acik","acakkan","acuan","acu","acuh","acung",
  "adab","adakala","adaptasi","adaptif","adegan","adem","adi","adib","adik",
  "adikara","adil","adinda","administrasi","administrator","admiral","adopsi",
  "adrenalin","adres","adu","aduan","aduk","adukan","adun","advokat","advokasi",
  "aerasi","aerob","aerobik","aerodinamis","aerodinamika","aerofon","aerogram",
  "afdal","afeksi","afektif","afiliatif","afiliasi","afinitas","afirmasi",
  "aforisme","afotik","afsun","agama","agamais","agamawi","agen","agenda",
  "agak","agar","agih","agihan","agitatif","agitasi","agitator","agresi",
  "agresif","agresivitas","agrologi","agronomi","agrowisata","agung","agustus",
  "ahad","ahimsa","ahkam","ahli","ahlul","ahmak","ahmar","ahwal","ai","air",
  "aja","ajab","ajar","ajek","ajeng","aji","ajudan","akad","akal","akan",
  "akar","akbar","akibat","akidah","akik","aklamasi","aklimasi","aklimatisasi",
  "akrab","akreditasi","akresi","aksi","aksara","aksarawan","aksioma","aktif",
  "aktivasi","aktivis","aktivitas","aktor","aktual","aktualisasi","aku",
  "akumulasi","akuntabel","akuntansi","akuntan","akur","akurasi","akurat","akut",
  "ala","alamat","alami","alamiah","alamiahkan","alam","alangkah","alat",
  "alergi","alergen","alias","alibi","alih","alihfungsi","alihmedia","alihstatus",
  "alkali","alkalinitas","alkohol","alkoholisme","almarhum","almari","alokasi",
  "alot","alpa","altar","alternatif","alternasi","altruisme","alur","aman",
  "amanah","amat","amatir","ambigu","ambiguitas","ambisi","ambisius","ambivalen",
  "amblas","ambruk","ambulans","ambur","amfibi","amfiteater","amil","amina",
  "amonia","amoral","amorf","amortisasi","ampuh","ampun","amuk","anak","anakan",
  "analisis","analis","analitik","analogi","anarki","anarkis","anasir","ancam",
  "ancaman","andal","andalan","andam","andil","aneh","aneka","anemia","anemometer",
  "anergi","anfibi","ang","angka","angkasa","angkat","angkatan","angkut",
  "anjak","anjing","anjuran","anjur","anomali","anonim","antagonis","antara",
  "antariksa","antena","antologi","antonim","anugerah","anut","anyar","anyam",
  "api","apik","aplikasi","apresiasi","april","arah","arak","aransemen","arca",
  "arsenal","arsip","arsitek","arsitektur","arti","artifisial","artikulasi",
  "artistik","arus","asam","asap","asas","asasi","aset","asing","asli",
  "aspek","aspirasi","asrama","asri","asuh","asuhan","asumsi","asyik",
  "atap","aturan","atur","audio","audit","auditor","aula","autentik",
  "autobiografi","autodidak","autonomi","autosugesti","awal","awan",
  "awas","awet","ayah","ayat","ayem","ayo","azab","azan","azimat"
  },
  ["b"] = {
  "b", "ba", "bab", "baba", "babak", "babakan", "babal", "babat", "babi", "babirusa",
"babu", "babut", "bacaan", "baca", "bacok", "bacokan", "bacul", "badai", "badak",
"badam", "badan", "badani", "badaniah", "badar", "badik", "badui", "badung",
"bafta", "bagai", "bagaikan", "bagaimana", "bagan", "bagasi", "baginda", "bagur",
"bagus", "bah", "bahagia", "bahak", "bahala", "baham", "bahan", "bahana", "bahari",
"bahasa", "bahas", "bahasan", "bahaya", "bahu", "baik", "baikan", "baja", "bajak",
"bajakan", "baji", "bajik", "baju", "bak", "baka", "bakal", "bakala", "bakar",
"bakaran", "bakat", "bakhil", "baki", "bakmi", "bako", "bakpia", "bakso", "baku",
"bakul", "bal", "bala", "balad", "balai", "balak", "balam", "balap", "balasan",
"balas", "balau", "balbal", "balda", "balet", "bali", "balig", "balik", "balikan",
"balita", "balok", "balon", "balung", "balur", "baluran", "bambu", "bambung",
"ban", "bana", "banal", "banat", "banci", "bancian", "bancuh", "banda", "bandana",
"bandar", "bandel", "bandeng", "banding", "bandingan", "bandit", "bandrol",
"bang", "banga", "bangau", "bangga", "bangkai", "bangkalan", "bangkit", "bangkitan",
"bangku", "bangkrut", "bangsa", "bangsal", "banjir", "banjiri", "banjiran",
"bantal", "bantalan", "bantah", "bantahan", "banting", "bantingan", "bantu",
"bantuan", "banyak", "bapak", "bar", "bara", "barak", "barang", "barat",
"barbar", "bareng", "baring", "barisan", "baris", "barometer", "barter", "baru",
"barusan", "basah", "basahan", "basi", "basis", "basmi", "batas", "batasi",
"batin", "batok", "batu", "batuk", "bau", "baur", "bauran", "bawa", "bawaan",
"bawah", "bayang", "bayangan", "bayar", "bayaran", "bebal", "beban", "bebas",
"bebek", "beda", "bedah", "bedakan", "bedil", "begah", "begini", "begitu",
"bekal", "bekas", "beku", "bel", "bela", "belah", "belahan", "belajar",
"belakang", "belanja", "belas", "belati", "belenggu", "beliau", "beli",
"belian", "belit", "belokan", "belok", "beludru", "belukar", "belum",
"benang", "benar", "benarkan", "benda", "bendera", "bendahara", "bendung",
"bengal", "bengkel", "bengkak", "benih", "bentuk", "bentukan", "ber",
"berang", "berani", "beras", "berat", "beres", "beri", "berita", "berkah",
"bersih", "besar", "besaran", "besi", "betah", "betina", "beton",
"biadab", "biak", "biang", "biar", "biara", "biaya", "bibir", "bicara",
"bidan", "bidang", "bijak", "bijaksana", "biji", "bikin", "bila",
"bilah", "bilang", "bilangan", "bilas", "bilik", "bimbang", "bimbing",
"binar", "bintang", "bisa", "bisik", "bisnis", "bisu", "bit", "bius",
"bocah", "bocor", "bodoh", "bohong", "bola", "boleh", "bom", "bongkar",
"bonus", "bor", "borang", "boraks", "boring", "boros", "bos", "botak",
"botol", "boya", "buah", "buang", "buat", "buatan", "buaya", "bubar",
"bubuk", "bubur", "buci", "budak", "budaya", "budi", "bugar", "bujang",
"bujuk", "buka", "bukaan", "bukti", "bulan", "bulanan", "bulat", "bulu",
"bumi", "bun", "bunda", "bundar", "bung", "bunga", "bungkus", "bunuh",
"buntal", "buntut", "bupati", "buram", "buruh", "buruk", "bus", "busuk",
"buta", "butik", "butir", "butuh", "buyar", "bablas", "babon", "babtisan",
"bacem", "bacin", "badal", "badam", "badar", "badik", "badminton",
"badui", "bagak", "bagelen", "baginda", "bagor", "bagur", "bahadur", 
"bahana", "bahari", "bahtera", "bahwasanya", "baiat", "bain", "bait", 
"baitul", "bajigur", "bakara", "bakarat", "bakteri", "bakteriologi", "bakti", 
"baktikan", "balada", "balairung", "balalaika", "balam", "balela", "balistik", 
"balistika", "balung", "baluran", "bambang", "bamban", "banal", "banat", "banci", 
"bancian", "bandana", "bandar", "banderol", "bandit", "bangat", "bangir", "bangsal", 
"banjar", "banjiran", "bantah", "bantahan", "banting", "bantuan", "banyak", "banyan", 
"barak", "barang", "barat", "barbar", "barbiturat", "barikade", "barisan", "barista", 
"barometer", "baron", "barter", "basal", "basmi", "bastion", "batako", "batang", "batasan", 
"baterai", "batik", "batimetri", "batiniah", "batok", "batu", "bauksit", "baur", "bawel", 
"bayang", "bayaran", "bebal", "bebas", "bedah", "bedil", "beduk", "bekal", "bekas", 
"beku", "belacu", "belah", "belajar", "belakang", "belanga", "belati", "belenggu", "belia", 
"beliau", "belikat", "beling", "belit", "belok", "belukar", "belut", "benalu", "benang", 
"benar", "bencana", "bencah", "benci", "bendahara", "bendera", "bendul", "bengal", "bengkel", 
"bengkulu", "benih", "bensin", "bentala", "bentang", "benteng", "bentuk", "berahi", "beranda", 
"berang", "berani", "berat", "bercak", "berdikari", "berduka", "bereaksi", "beres", "beri", 
"berita", "berkah", "berkat", "berlian", "bernas", "bersih", "bersua", "bersurat", "besar", 
"besek", "besi", "bestari", "beta", "betah", "betina", "beton", "biadab", "biak", "biang", 
"biara", "biarawan", "bias", "biasa", "biasan", "biaya", "bibir", "bicara", "bidang", "bidadari", 
"bidik", "bijak", "biji", "bikin", "bila", "bilah", "bilang", "bilas", "bilik", "bimbang", "bimbing", 
"binar", "bintang", "biografi", "biola", "biologi", "biometrik", "biosfer", "biota", "birahi", "birama", "biru", 
"bisa", "bisik", "bisnis", "bisu", "bitumen", "bivalvia", "bocah", "bocor", "bodoh", "boikot", "bola", "boleh", 
"bolong", "bom", "bongkah", "bongkar", "bonus", "boraks", "boreal", "borjuasi", "boros", "bosan", "botani", 
"botol", "brankas", "breksi", "brigade", "brilian", "brosur", "buah", "buana", "buang", "buat", "buatan", 
"buaya", "bubar", "bubuk", "bubur", "budak", "budaya", "budi", "bugar", "bujang", "bujuk", "buka", "bukti", 
"bulan", "bulanan", "bulat", "bulu", "bumi", "bung", "bunga", "bungkus", "bunyi", "bunuh", "buntal", "buntut", 
"bupati", "buram", "buruh", "buruk", "busana", "busuk", "buta", "butik", "butir", "butuh", "buyar"
},

  ["c"] = {
  "ca","caba","cabal","cabai","cabak","cabang","cabar","cabarik","cabau","cabe",
"caber","cabi","cabik","cabir","cabut","cabul","cacah","cacap","cacar","cacat",
"caci","cacian","cacing","cacingan","cadang","cadangan","cadar","cadas","cadik",
"caduk","cafe","cagak","cahaya","cair","cairan","cak","cakap","cakar","cakil",
"cakra","cakram","cakrawala","cakrik","cakup","cakur","calai","calak","calo",
"calit","calon","caluk","calung","camak","camar","camau","cambai","cambang",
"cambuk","campak","campin","campur","campuraduk","canai","canang","cancar",
"cancut","canda","candaian","candar","candi","candiwara","candu","candung",
"cang","cangah","cangap","cangcang","cangga","canggah","canggih","cangkir",
"cangklong","cangkok","cangkring","cangku","cangkuk","cangkul","cangkup",
"cangok","cantik","canting","cap","capah","capai","capak","capar","caping",
"capit","caplok","caplokan","capuk","cara","carah","carang","cari","caring",
"carik","carta","carut","cas","catu","catur","catut","caus","cawat","cebak",
"ceban","cebis","cebong","cebur","cecak","cecar","cecek","cecekan","cecep",
"cecer","ceceran","cedal","cedera","cedok","cegah","cegak","cekah","cekak",
"cekal","cekam","cekau","cekcok","cekik","cekit","cekung","cela","celah",
"celaka","celana","celap","celar","celas","celat","celekit","celeng",
"celingak","celis","celomok","celor","celup","celuk","cema","cemar","cemas",
"cembung","cemburu","cemeti","cemoh","cemooh","cempaka","cempedak",
"cemplang","cemplung","cempung","cemu","cencang","cencaru","cendana",
"cendekia","cendol","cenderung","cengap","cengeng","cengkeram","cengkerik",
"cengkih","cengkung","cengut","cepat","ceper","cepol","cerabut","ceracau",
"cerai","ceramah","ceranggah","ceranggai","cerdas","cerdik","ceria","cericit",
"cerih","cerita","ceriwis","cerna","ceroboh","cerpelai","ceruk","cerucuk",
"cerutu","cetak","cetar","cetok","cetos","cetus","cewek","ciap","cicah",
"cicak","cicip","cicir","cicil","cidera","ciduk","cigak","cik","cikal",
"cikap","cikgu","cikik","cikar","cikrak","cilik","cimeng","cincang","cincau",
"cincin","cindai","cingak","cingkrang","cinta","cipta","ciprat","ciri",
"cirit","cis","citarasa","cium","ciut","cobek","coblos","coblosan","cocok",
"cocol","cocor","codak","codet","cogah","cokelar","cokelat","cokar","colak",
"colok","comel","condet","condong","congkak","contoh","copak","copet","corak",
"corek","coreng","coret","corong","corot","cotet","cowek","cowok","cua",
"cuaca","cuai","cual","cuang","cuap","cuat","cubit","cuci","cucuh","cucuk",
"cucu","cucur","cudang","cuil","cuka","cukil","cukong","cukup","cula",
"culik","culun","cuma","cumbu","cumbuan","cumi","cundang","cungap","cungkil",
"cupu","cura","curah","curam","curang","curat","curi","curiga","curna","cuwil",
  },
  ["d"] = {
  "da","daba","dabak","dabal","dabat","dabih","dabik","dabing","dabir","dabit",
"dabung","dabus","dacin","dada","dadah","dadaisme","dadak","dadal","dadap","dadar",
"dadih","dadu","dadung","daeng","daerah","daerahisme","dafnah","daftar","daftari","daga",
"dagang","dagangan","dagagi","dage","dagel","dagelan","daging","dagu","dah","dahaga",
"dahagi","dahak","daham","dahan","dahar","dahi","dahiat","dahsyat","dahulu","dai",
"daidan","daidanco","daif","daigaku","daim","daiman","daing","daitia","dajal","daka",
"dakah","dakar","dakaik","dakaki","daking","dakocan","dakron","daksa","daksina","daku",
"dakwa","dakwah","dalal","dalalah","dalalat","dalam","daleman","dalfin","dalil","daliman",
"daling","daltonisme","dalu","daluang","dalung","dam","damai","damak","damal","damar",
"damas","damat","damba","dambin","dambir","dambung","damen","damik","damir","damotin",
"dampak","damper","dampik","damping","dampit","damprat","dampung","dan","dana","danau",
"danawa","danda","dandan","dandanan","dandang","dandi","dang","dangau","dangkal","dangkap",
"dangking","dangkung","dangkur","dangut","dansa","dansui","danta","danu","danur","danyang",
"dap","dapar","dapat","dapunta","dapur","dar","dara","darab","darah","daras",
"darat","daratan","darau","dari","daripada","darigama","darji","darma","darmawisata","daro",
"darpana","daru","darun","darunu","darurat","darusalam","darwis","das","dasar","dasasila",
"dasatitah","dasawarsa","dasbor","dasi","dasis","daster","dasun","datang","datar","dataran",
"datu","datuk","datum","datung","dauk","daulat","daun","daunmuda","daur","dawai",
"dawan","dawat","dawet","daya","dayah","dayak","dayang","dayu","dayung","dayus",
"debah","debak","debar","debat","debet","debi","debil","debit","debitur","debris",
"debu","debug","debuk","debum","debun","debung","debur","debus","debut","decak",
"decap","deceh","decing","decit","decu","decuk","decur","decut","dedah","dedai",
"dedak","dedalu","dedap","dedar","dedas","dedau","dedek","dedel","dedemit","dedes",
"dedikasi","deduksi","deduktif","defek","defensi","defensif","defile","definisi","definitif","deflasi",
"defleksi","deformasi","defresi","defter","degam","degan","degap","degar","degen","degenerasi",
"degil","deging","degradasi","degresi","deguk","degum","degung","degup","deh","deham",
"dehem","dehidrasi","dehumanisasi","deideologisasi","deifikasi","deiksis","deisopropyl","deisme","dek","dekade",
"dekadensi","dekadentisme","dekagram","dekaliter","dekam","dekameter","dekan","dekantasi","dekap","dekapoda",
"dekar","dekat","deklarasi","deklaratif","deklinasi","deklinometer","dekode","dekoder","dekolonisasi","dekomposisi",
"dekompresi","dekontekstualisasi","dekor","dekorasi","dekoratif","dekorator","dekosistem","dekret","deksel","dekstrin",
"dekstrosa","deksura","deku","dekunci","dekup","dekur","dekut","delah","delamak","delan",
"delapan","delas","delat","delegasi","delegat","delegatife","deleter","delik","delikan","delikat",
"delikuensi","delima","delman","delong","delusi","delusif","demabrasi","demagog","demagogi","demah",
"demam","deman","demang","demarkasi","demen","demes","demi","demik","demikian","demiliterisasi",
"demineralisasi","demisioner","demobilisasi","demofobia","demograf","demografi","demografis","demokrasi","demokrat","demokratis",
"demokratisasi","demon","demones","demonstran","demonstrasi","demonstratif","demonstrativitas","demoralisasi","demosi","dempak",
"dempam","demper","dempis","dempit","demplon","dempok","dempul","dempung","demung","dena",
"denah","denai","denak","denasionalisasi","denaturasi","denda","dendam","dendang","dendeng","dendi",
"denervasi","dengak","dengan","dengar","dengih","denging","dengking","dengkur","dengkurkan","dengkuron",
"dengkus","dengu","dengung","dengus","dengut","denim","denok","denominal","denominasi","denotasi",
"denotatif","densitas","densitometer","densitometri","densitometris","dentam","dentang","dentat","dentin","dentum",
"dentung","denudasi","denuklir","depa","depalatalisasi","depan","depang","deparpolisasi","departemen","dependen",
"dependensi","depertemen","depersonalisasi","depersonifikasi","depigmentasi","depilasi","depit","deplon","deplesi","deplu",
"depo","depolarisasi","depolimerisasi","deponir","deportasi","deposit","deposito","depot","depresi","depresiasi",
"depresiometer","depresor","deprok","depu","depun","depus","deputasi","deputi","dera","derajat",
"derak","deram","deran","derana","derang","derap","deras","derat","derau","derawa",
"derebar","deregulasi","derelict","deres","deret","deretan","derik","deril","deris","derit",
"derita","deritaku","derivasi","derivat","derivatif","derji","derma","dermaga","derman","dermatitis",
"dermatolog","dermatologi","dermis","deru","deruji","deruk","derum","derun","derung","derup",
"derus","derut","desa","desah","desain","desainer","desak","desakan","desalinasi","desar",
"desas-desus","desau","desember","desentralisasi","desepsionis","deserse","desertasi","desertir","desibel","desidua",
"desigram","desih","desik","desikan","desikel","desiku","desiliter","desimal","desimeter","desinfektan",
"desinfeksi","desing","desir","desis","desit","deskripsi","deskriptif","deskuamasi","desmonem","desmoplasia",
"desmoplasis","desonansi","desorpsi","destar","destinasi","destruksi","destruktif","desuk","desur","desus",
"desut","detail","detak","detal","detang","detar","detas","detasemen","detasering","detasir",
"deteksi","detektif","detektor","detenida","detensi","detente","detergen","deteriorasi","determinan","determinasi",
"determinisme","detik","detoksifikasi","detonasi","detonator","detritus","detrusor","deuterium","deuterokanonika","deuteronomium",
"devansasi","deviasi","devosi","dewadaru","dewala","dewan","dewasa","dewata","dewi","di",
"dia","diabet","diabetes","diabetik","diabolik","diadema","diadohi","diafon","diaforetik","diafragma",
"diagnosa","diagnosis","diagnostik","diagometer","diagonal","diagram","diaken","diakon","diakonia","diakonat",
"diakritik","diaktinis","dialek","dialektika","dialektis","dialektologi","dialing","dialisis","dialog","dialogis",
"diam","diamagnetik","diameter","diametral","diamorf","dian","diang","diapositif","diaprit","diare",
"diaspora","diastase","diastol","diatas","diaterman","diatermi","diatermik","diatom","diatonik","diatonis",
"diatribe","dibaca","didaktik","didaktis","didalam","didih","didik","didis","didong","dielektrik",
"diensefalon","diesnatalis","diet","dietetik","dietisien","difabel","diferensial","diferensiasi","difluens","difraksi",
"difteri","diftong","difusi","digdaya","digresi","diksi","diktat","diktator","dikte","diktum",
"dilasi","dilema","dilematis","diler","dilereng","diletan","diluvium","dimensi","dimer","diminutif",
"dimisioner","dinamis","dinamisme","dinamit","dinamo","dinamometer","dinas","dinasti","dinding","dingin",
"dini","dinihari","dinosaurus","dioda","dioksida","dioksin","dioptri","diorama","diorit","dioses",
"diploma","diplomat","diplomasi","diplomatik","diploid","diponegoro","diprosopus","diraja","direktur","direktorat",
"direktori","direktif","dirgahayu","dirgantara","dirigen","diris","disain","disaster","disastro","disel",
"disenjata","disentri","disertasi","disfonia","disfungsi","disharmoni","disinfektan","disinformasi","disintegrasi","disiplin",
"disjungtif","diskad","diskanti","disket","diskiat","diskira","disko","diskoid","diskon","diskontinu",
"diskontinuitas","diskonto","diskordans","diskorp","diskotek","diskredit","diskret","diskresi","diskriminasi","diskriminatif",
"diskualifikasi","diskursif","diskus","diskusi","dislalia","disleksia","dislokasi","disman","dismembrasio","disolusi",
"disorganisasi","disorientasi","disparitas","dispensasi","dispenser","dispepsia","dispersi","display","disposisi","disposotif",
"disproposi","disproposional","distal","distansi","distensi","distikon","distilasi","distilator","distingtif","distingsi",
"distoma","distorsi","distribusi","distributor","distrik","disuasi","disuria","dito","diuretika","diurnal",
"diva","divans","diven","divergen","divergensi","diversifikasi","diversitas","divestasi","dividen","divisi",
"doa","dobel","dobrak","dodekagon","dodekahedron","dodo","dodok","dodol","dodong","dodor",
"dodot","dogel","doger","dogma","dogmatik","dogmatis","dogmatisme","dogol","dogong","dohok",
"dohot","dok","dokar","doket","dokoh","dokar","doktor","doktoranda","doktorandus","doktrin",
"doktriner","dokumen","dokumentasi","dokumenter","dol","dolan","dolar","doldrum","dolfin","dolmen",
"dolok","domestik","domestikasi","dominan","dominasi","domine","domingo","dominion","domino","domisili",
"dompet","domplang","dompleng","dompol","donasi","donat","donatur","doncang","donder","dondok",
"dongak","dongapan","dongbret","dongeng","dongkak","dongkel","dongkok","dongkol","dongkor","dongkrak",
"dongpan","dongson","doni","donor","donto","dop","doping","dopol","dor","dorang",
"dorbi","dormansi","dorna","dorong","dorongan","dorsal","dorsopalatal","dorsal","dosis","dosir",
"dosting","dot","dowel","dower","doyak","doyan","doyang","doyong","draf","drastis",
"drel","drenase","dribel","drif","dril","drip","dropsi","drum","drumben","duane",
"duat","duba","dubalang","dubas","dubelir","dubila","dubing","dubius","dubuk","dubur",
"duda","dudu","duduk","duduki","dudul","dudur","dudus","duel","duet","duga",
"dugaan","dugal","dugas","dugang","dugas","duha","duhai","duhe","duhu","duilah",
"duit","duka","dukacita","dukan","dukana","dukat","duktulus","duktus","duku","dukun",
"dukung","dukungan","dula","dulag","dulang","dulang-dulang","duli","dulu","dulur","dum",
"dumai","dumdum","dumi","dumping","dumung","dunah","dunak","dunam","dungu","dunia",
"duniawi","duodenum","dupa","dupleks","duplikasi","duplikat","duplikator","duplisitas","dur","dura",
"durasi","durat","duratif","duren","dureng","durhaka","duri","durian","durias","durja",
"durjana","durjaisa","durma","durna","dursila","duru","dus","dusin","duta","duwet",
"duyun","duyung","dwi","dwibahasa","dwidarma","dwifungsi","dwiguna","dwiminggu","dwimuka","dwiwarna",
"dyah",
  },
  ["e"] = {
  "ebam","eban","ebat","ebi","ebis","ebit","eboni","ebonit","ebrok","ebulisi",
"ece","ecek","ecer","eceran","eco","edafik","edafologi","edan","edar","edaran",
"edema","eden","edisi","edit","editor","editorial","edukasi","edukatif","efek","efektif",
"efektivitas","efelis","efendi","efisien","efisiensi","efloresensi","efusi","egah","egaliter","egalitarianisme",
"egat","ego","egois","egoisme","egoistis","egol","egomania","egosentris","egosentrisme","egran",
"egret","eja","ejaan","ejakulasi","ejan","ejawantah","ejek","ejekan","ajektif","ejektif",
"ejektor","ekabahasa","ekad","ekamatra","ekang","ekaristi","ekatantri","ekbalium","ekdisis","ekeh",
"ekimosis","ekiofit","eklektik","eklektis","eklektisme","eklesia","ekliptika","ekliptis","eklok","ekologi",
"ekologis","ekonom","ekonomi","ekonomis","ekoprasasti","ekosistem","ekosfer","ekotipe","ekran","ekrin",
"eks","eksak","eksakta","eksaltasi","eksaminasi","eksaminator","eksantem","eksat","ekseget","eksegesi",
"eksekusi","eksekutif","eksekutor","eksem","eksemplar","eksenterasi","eksentrik","eksepsi","ekseptional","eksergonik",
"eksersi","ekshibisi","ekshibisionis","ekshumasi","eksikator","eksil","eksistensi","eksistensial","eksistensialisme","eksit",
"eksitasi","eksitus","ekskavasi","ekskavator","eksklusif","eksklusivisme","ekskomunikasi","ekskresi","ekskursi","ekskursif",
"eksonim","eksorsisme","eksosfer","eksostosis","eksotermik","eksotik","eksotis","eksotisme","ekspansi","ekspansif",
"ekspatriat","ekspedisi","ekspeditur","ekspektasi","ekspektoran","eksperimen","eksperimental","ekspirasi","eksplan","eksplikasi",
"eksplisit","eksploit","eksploitasi","eksploitir","eksplorasi","eksploratif","eksplorator","eksplosi","eksplosif","ekspat",
"ekspo","eksponen","eksponensial","ekspor","eksportir","ekspos","ekspose","eksposisi","ekspresi","ekspresif",
"ekspresionisme","ekspresivitas","ekspres","ekstase","ekstensi","ekstensif","ekstensifikasi","ekstensor","eksterior","ekstern",
"eksternal","eksterminasi","eksternat","ekstra","ekstradisi","ekstrak","ekstraksi","ekstraktor","ekstrakurikuler","ekstralinguistik",
"ekstramarital","ekstranei","ekstrapolasi","ekstrasensor","ekstraterestrial","ekstrateritorial","ekstravaganza","ekstraversi","ekstravert","ekstrem",
"ekstremis","ekstrinsik","ekstropi","ekstrospeksi","ekstual","eksudat","eksudasi","ektoderm","ektohormon","ektoparasit",
"ektoplasma","ektotermik","ektoterm","ekuador","ekuinoks","ekuivalen","ekuivalensi","ekuitas","ekumene","ekumenis",
"ekumenisme","ela","elaborasi","elak","elan","elastis","elastisitas","elastomer","elatif","elegan",
"elegansi","elegi","elektif","elektorat","elektret","elektrik","elektrifikasi","elektro","elektrode","elektrodinamika",
"elektroensefalogram","elektroforesis","elektrokardiogram","elektrokimia","elektrolisis","elektrolit","elektromagnet","elektromagnetik","elektrometalurgi","elektromotif",
"elektron","elektronik","elektronika","elektronis","elektropatologi","elektroskop","elektrostatis","elektroteknik","elementer","elemen",
"elevasi","elevator","elips","elipsis","elipsoid","elipsometer","elipsometri","elistik","elit","elite",
"elitis","elitisme","elok","elokuensi","elon","elpiji","eltor","elu","eluan","eluen",
"elusi","elusif","elutriasi","eluviasi","eluvium","email","emansipasi","emansipatif","emaran","emas",
"amat","emau","embah","embak","embal","embalase","embalau","emban","embang","embar",
"embara","embarau","embargo","embarkasi","embaro","embas","embat","embel","ember","embih",
"embik","emblem","embok","ebol","embon","embos","embrio","embriogenesis","embriologi","embrional",
"embuai","embuh","embun","embung","embur","embut","emendasi","emerald","emeritus","emetik",
"emetofobia","emigran","emigrasi","eminen","eminensi","emir","emirat","emisari","emisi","emitans",
"emiten","emol","emolumen","emong","emosi","emosional","emosionalisme","emotif","empal","empang",
"empas","empat","empati","empedal","empedu","empek","empela","empelak","empelam","empelas",
"empenit","empet","empiema","empik","emping","empiri","empiris","empirisme","emplasemen","emplek",
"employe","empo","empoh","empok","emporium","empos","empot","empu","empuk","empul",
"empulur","empunya","emrat","emulsi","emulsifikasi","emut","enak","enam","enamel","enap",
"enartrosis","enas","enau","encal","encang","enceh","encek","encel","encer","encik",
"encim","encit","encok","encot","endak","endal","endap","endapan","endas","endasan",
"endemi","endemis","endermik","endilau","endoderm","endofit","endogami","endogen","endokrin","endokrinologi",
"endometrium","endemi","endong","endoskop","endoskopi","endosperma","endotel","endoterm","endotermik","endotoxin",
"enduro","endus","endut","enek","eneng","energetik","energi","energik","enes","enget",
"enggak","enggan","enggang","engget","enggil","engkah","engkak","engkan","engkang","engkau",
"engko","engkong","engku","engsel","enigma","enjak","enjal","enjelai","enjin","enjiner",
"enjot","enjut","enkapsulasi","enklave","enklitik","enkode","enkripsi","enkulturasi","enom","ensambel",
"ensefalitis","ensefalogram","ensiklik","ensiklopedia","ensiklopedis","ensopor","entah","entak","entalpi","entang",
"entar","entas","enteng","entitas","entogen","entomolog","entomologi","entot","entrak","entre",
"entrepreneur","entri","entropi","enukleasi","enumerasi","enuresis","envoi","enyah","enyak","enzim",
"enzimatis","enzimologi","eon","eosen","eosin","epak","epek","epentesis","epi","epidemi",
"epidemiologi","epidermis","epidural","epifit","epifora","epiglotis","epigon","epigraf","epigrafi","epigram",
"epik","epikotil","epikureisme","epilepsi","epileptik","epilog","episentrum","episiklik","episikloid","episiskop",
"episode","episodik","epistemologi","epistola","epitaf","epitet","epithelium","eponim","epos","epsilon",
"era","eradikasi","eram","erang","erat","erata","erbis","ercis","ereh","ereksi",
"erektor","ereng","erepsin","eret","eretan","erg","ergasiofobia","ergatif","ergonomi","ergonomis",
"ergosterol","ergot","ergoterapi","erik","ering","eritema","eritroblast","eritrosit","erong","erosi",
"erot","erotik","erotis","erotisisme","erotisme","erpah","erpak","erusi","es","esa",
"esai","esais","esak","eselon","esens","esensi","esensial","eskadron","eskalasi","eskalator",
"eskapade","eskapisme","eskas","eskatologi","eskrim","eskudo","esofagus","esok","esoteris","estafet",
"estetik","estetika","estetis","estimasi","estrogen","estrus","estuarin","estuari","etik","etika",
"etiket","etika","etil","etilena","etimologi","etimologis","etina","etinis","etnik","etnis",
"etnograf","etnografi","etnolinguistik","etnolog","etnologi","etnomusikologi","etnopolitik","etos","etrosa","eudaemonisme",
"eufemisme","eufoni","eufonia","euforia","euforium","eugenetika","eukaliptus","eukariot","eulogi","euploid",
"euro","eurtop","eutanasia","eutrofikasi","evakuasi","evaluasi","evangeli","evangelis","evaporasi","evaporator",
"evapotranspirasi","evasif","eversi","evict","evidensi","evisi","evokasi","evokatif","evolusi","evolusioner",
"ewuh","eyang","eyek",
  },
  ["f"] = {
  "fa","faal","fabel","fadihat","fadil","fadiat","fado","fadzil","fafa","fagosit","fagositosis",
"fagot","faham","fais","fajar","fakih","fakir","fakta","faktual","faktur","fakultas",
"fakultatif","falah","falaj","falak","falakiah","falsafah","famili","familier","familisme",
"fana","fanatik","fanatisme","fantasi","fantastis","fantom","faraj","farak","fardu",
"farik","farisi","farit","farma","farmakolog","farmakologi","farmakope","farmasi","farsakh",
"fasad","fasakh","fase","faset","fasid","fasih","fasilitas","fasilitator","fasis",
"fasisme","fatanah","fatihah","fatsun","fatur","fatwa","fauna","favorit","febrifuga",
"februari","federal","federalisme","federasi","fefahat","fekundasi","fekunditas","felon",
"felspar","feminin","feminisme","fenit","fenol","fenomena","fenomenal","fenomenologi",
"fenotipe","feodal","feodalisme","feri","fermentasi","fermium","feromagnetik","feromon",
"fertilitas","fertilizer","feses","festival","fetis","fetor","fetus","fiadat","fiat",
"fibi","fidiah","figur","figuran","figuratif","fikh","fiksi","fiktif","filamen",
"filantrop","filantropi","filateli","filatelis","filamen","filder","fili","filial",
"filibuster","film","filmis","filolog","filologi","filosof","filosofis","filsafat",
"falsafah","filter","filtrasi","finansial","finis","finish","finit","firaun",
"firdaus","firkah","firasat","firman","fisi","fisibel","fisibilitas","fisik",
"fisika","fisikawan","fisiognomi","fisiolog","fisiologi","fisioterapi","fiskal",
"fiting","fitofag","fitogeografi","fitokimia","fitologi","fitoplankton","fitososiologi",
"fitoterapi","fitrah","fitri","fitnah","fiting","flat","flegma","flegmatis","fleksibel",
"fleksibilitas","fleksi","flamboyan","flanel","flat","flet","flora","floret","flotasi",
"flu","fluida","fluktuasi","fluktuatif","fluor","fluoresensi","fobia","fokus",
"fokuser","foli","folikel","folio","folklor","font","fon","fonem","fonetik",
"fonologi","fonon","fora","foramen","formal","formalin","formalitas","forman",
"formasi","format","formatif","formatur","formula","formulasi","formulir","fornikasi",
"forsir","fortifikasi","forum","fosfat","fosfina","fosfor","fosforesensi","fosil",
"foto","fotogenik","fotografer","fotografi","fotografis","fotokopi","fotolisis","fotometer",
"fotometri","foton","fotosintesis","fotosfer","foya","fragmen","fragmentaris","fragmentasi",
"fraksi","fraksinasi","fraktur","frambusia","fransium","frasa","fraseologi","frater",
"fraternitas","freatik","fregat","fremitus","frekuensi","frekuentatif","fresko","friksi",
"front","frontal","fruktosa","frustrasi","fundamental","fundamentalis","fundamentalisme","funder",
"fungi","fungsional","fungsionalisme","fungsionaris","fungsi","fungisida","furnitur",
"furqan","fusi","futur","futuristik","futurisme",
  },
  ["g"] = {
  "ga","gabah","gabai","gabak","gabardine","gabas","gabir","gablock","gabor","gabung",
"gabungan","gabus","gada","gadai","gadaian","gadang","gading","gadis","gado","gadolinit",
"gadolinium","gadon","gaduh","gadung","gaet","gafatar","gaflat","gafur","gagah","gagak",
"gagal","gagang","gagap","gagas","gagasan","gagat","gagau","gagu","gah","gaham",
"gahari","gaharu","gait","gajah","gajak","gajelas","gajet","gaji","gajih","gajul",
"gajut","gala","galaba","galagasi","galaksi","galaktometer","galaktosa","galan","galang","galangan",
"galar","galat","galau","galbani","galbanum","galeri","galgal","galib","galih","galing",
"galir","galium","galon","galop","galos","galur","gam","gamal","gamalisasi","gamam",
"gaman","gamang","gamat","gambang","gambar","gambas","gambir","gambit","gamblang","gambolo",
"gambus","gambutan","gamet","gametofit","gametogenesis","gamis","gamit","gamma","gampar","gampang",
"gampar","gamuh","gana","ganal","ganang","ganar","ganas","gancu","ganda","gandapura",
"gandar","gandaria","gandarusa","gandasturi","gandawari","gandem","ganden","gandeng","gandes","gandi",
"gandik","gandin","ganding","gandok","gandola","gandos","gandrung","gandu","gandul","gandum",
"gandung","ganesa","gang","ganggu","gangguan","gangsa","gangsal","gangsar","gangsi","gangsir",
"ganih","ganit","ganja","ganjak","ganjal","ganjar","ganjaran","ganjat","ganjil","ganju",
"ganjur","ganoid","gantal","gantar","ganteng","ganti","gantih","gantilan","ganting","gantung",
"gantungan","ganyah","ganyang","ganyar","ganyet","ganyong","gaok","gap","gapah","gapai",
"gapari","gapit","gaple","gaplek","gaplok","gapura","gar","gara","garam","garami",
"garangan","garansi","garap","garapan","garau","garba","garbarata","gardan","gardu","garebeg",
"garem","gareset","garfu","gari","garib","garindin","garis","garit","garnis","garnit",
"garnitur","garong","garpu","garu","garud","garuda","garuk","garung","garut","gas",
"gasab","gasal","gasang","gasir","gasing","gasket","gasolin","gasometer","gaster","gastritis",
"gastroenterologi","gastronomi","gastrula","gata","gatah","gatari","gatek","gatot","gatra","gatuk",
"gaul","gaun","gaung","gaut","gawai","gawang","gawar","gawat","gawe","gawir",
"gaya","gayal","gayang","gayatri","gayau","gayet","gayuh","gayuk","gayun","gayung",
"gayut","geba","gebal","gebang","gebar","geber","geblek","geblog","geblok","gebos",
"gebrak","gebu","gebuh","gebuk","gebug","gebyar","gebyok","gecar","gecek","gecer",
"gecul","gedabah","gedabik","gedandeng","gedebak","gedebog","gedebuk","gedebung","gedek","gedembal",
"gedeng","gedepung","geder","gedung","gedodor","gedong","gedubang","geduk","gedung","gegaf",
"gegah","gegana","gegap","gegar","gegas","gegat","gegau","gegep","geger","gegetun",
"geiser","gejala","gejale","gejek","gejlig","gejos","gejuju","gel","gela","gelabah",
"geladak","geladeri","geladi","gelagah","gelagapan","gelagar","gelagat","gelak","gelam","gelama",
"gelamat","gelambir","gelandang","gelandangan","gelang","gelanggang","gelantang","gelanting","gelantung","gelap",
"gelar","gelas","gelasak","gelatatik","gelatin","gelatuk","gelayangan","gelayar","gelayut","gelebah",
"gelebak","gelebat","geleber","gelebuk","geledah","geledah","geledak","geledar","geledas","gelegak",
"gelegar","gelegata","gelek","gelekak","gelekek","gelembung","gelembur","gelendong","gelentang","gelenting",
"gelepai","gelepar","gelepur","geler","gelese","geletak","geletar","geletik","geletis","geletuk",
"geli","geliang","geliat","gelicik","geligi","geligir","geligit","gelimang","gelimir","gelimun",
"gelincir","gelincuh","gelinding","gelinggam","gelingsir","gelintang","gelintar","gelintir","gelip","gelisah",
"gelisik","gelitik","gelo","gelobak","gelodar","gelojoh","gelombang","gelompar","geloneng","gelonggong",
"gelongsor","gelonjor","gelontor","gelopak","gelora","gelosok","gelosor","gelotak","geluduk","geluga",
"gelugur","gelugut","geluh","geluk","gelulur","gelumat","gelung","gelup","gelupas","gelupur",
"gelut","gema","gemah","gemak","gemal","geman","gemang","gemap","gemar","gemas",
"gemati","gematria","gemawan","gembak","gembala","gembar-gembor","gembel","gembira","gembleng","gemblik",
"gemblo","gembok","gembol","gembong","gembor","gembos","gembot","gembul","gembung","gembur",
"gembus","gembut","gemelentam","gementam","gemercik","gemerincing","gemerlap","gemertak","gemertik","gemerting",
"gemerutuk","gemerutut","gemeti","gemertuk","gemilang","gemilap","geming","gemini","gemirang","gemisitas",
"gempa","gempar","gempal","gempar","gempil","gempita","gempur","gemuk","gemul","gemulai",
"gemulung","gemuruh","gen","genah","genang","genap","gencar","gencat","gencet","gencir",
"gendak","gendala","gendam","gendang","gendeng","gender","gendere","genderang","genderuwo","gendis",
"gendon","gendong","gendu","gendut","genealogi","generalis","generalisasi","generasi","generatif","generator",
"generik","genetik","genetika","geng","genggam","genggaman","genggang","gengsi","genial","genis",
"genit","genital","genitivus","genius","genjang","genjer","genjik","genjrang","genjring","genosida",
"genotipe","genre","genta","gentar","gentas","gentat","gentayang","genteng","gentian","genting",
"gentis","gentong","gentu","gentur","genu","genufleksi","genus","geobotani","geodesi","geofisika",
"geofisikawan","geografi","geografis","geohidrologi","geokimia","geolog","geologi","geologis","geomansi","geometri",
"geometris","geomorfologi","geopolitik","geosentris","geosfer","geostatika","geoteknik","geotermal","gepari","gepeng",
"gepira","geplak","gepok","geprak","gepuk","gera","gerabah","gerabak","gerabang","geradi",
"geragap","geragas","geragot","gerah","geraham","gerai","gerak","geram","geraman","geranat",
"gerang","gerangan","geranggang","geranggang","gerapai","geras","gerat","gerau","gerawan","gerbak",
"gerbang","gerbong","gerda","gerdam","gerdan","gerdek","gerdil","gerdong","gereba","gerebak",
"gerebek","gerecek","geredel","geredep","gereh","gereja","gerejani","gerek","gerem","geremo",
"gerendel","gerendeng","gerenik","gerenis","gerenjeng","gerentam","gerentang","gerepes","gerepot","geresek",
"geret","geretak","geretang","gergaji","gergajul","gergala","gergaman","gergasi","gerha","gerhana",
"geriak","geriap","geridip","geridit","gerigi","gerigik","gerigis","gerih","gerik","gerilya",
"gerilyawan","gerim","gerimis","gerincing","gerinda","gering","geringging","geringsing","gerinit","gerinjam",
"gerinting","gerinyau","gerip","geripir","gerisik","gerit","gerita","geritik","gerius","gerlip",
"germo","germon","germut","gerobak","gerobok","gerogol","gerogot","gerohok","gerojok","gerombol",
"gerombolan","gerombong","geronjong","gerontologi","geropes","geropyok","geros","gerosok","gerotak","gerowot",
"geru","gerubuk","gerugul","gerugut","geruh","geruit","geruk","gerulung","gerumit","gerumuk",
"gerumus","gerun","gerundang","gerung","gerunggung","gerupuk","gerupus","gerus","gerut","gerutu",
"gesa","gesek","gesel","geser","gesit","gesper","geta","getah","getar","getas",
"getek","getem","geter","getik","getil","geting","getir","getis","getok","getol",
"getu","getuk","getun","geulis","gewang","gia","giat","gibah","gibas","giblet",
"gibtuh","gicu","gidik","gigahertz","gigameter","gigantisme","gigawatt","gigi","gigih","gigil",
"gigir","gigit","gila","gilang","gilap","gilas","gili","gilik","giling","gilir",
"giliran","gim","gimnasium","gimnastik","gimpang","gin","gina","ginang","gincu","ginding",
"ginekolog","ginekologi","ginggi","gingival","gingsir","gingsul","ginjal","ginjean","ginseng","gips",
"gir","girah","girang","giras","giri","girik","giring","giris","giro","giroskop",
"gisik","gisil","gita","gitar","gitaris","gitok","giur","giwang","gizaya","gizi",
"gladiator","glamor","glans","glaukoma","global","globalisasi","globulin","globus","glomelurus","glondongan",
"glosarium","glotis","glukosa","gluten","gliserin","goa","gobak","gobang","gobek","gobet",
"gocoh","goda","godaan","godam","godeg","godek","godog","godokan","godot","gocek",
"goel","gojek","gojlok","gokar","gol","golak","golakan","golbi","golek","goleng",
"goler","golet","golf","golok","golong","golongan","golput","gom","gombang","gombas",
"gombong","gombrang","gombroh","gombyok","gompal","gompeng","gompiok","gonad","gonceh","goncang",
"goncangan","gonceh","gondang","gondok","gondol","gondola","gondolo","gondrong","gondosuli","gong",
"gonggo","gonggong","goni","gonit","gonium","gonjang","gonjing","gonjok","gonjol","gonjong",
"gonore","gontai","gontok","gonzalo","gopoh","gopok","gorap","goreng","gorengan","gores",
"goresan","goret","gorila","goroh","gorok","gorong","gorong-gorong","gorset","gosip","gosok",
"gosokan","gosong","gosting","got","gotik","gotong","gotong-royong","gotra","gotri","gotrok",
"gowes","goyah","goyang","goyangan","grad","gradah","gradasi","graden","gradual","graf",
"grafem","grafik","grafika","grafis","grafit","grafologi","gram","gramatika","gramatikal","gramofon",
"granat","granit","granula","granulosit","grasi","grasia","gratifikasi","gratis","gravel","gravitasi",
"gregorius","gremet","grenadel","grenjeng","gres","grif","grilya","gringsing","grio","griyase",
"grobak","grogol","grombolan","gros","grosir","grup","gu","gua","guam","gual",
"guano","guar","guat","gubal","gubah","gubahan","gubal","guber","gubernur","gubernuran",
"gubit","gubuk","guci","gudang","gudangan","gudeg","gudek","gudet","gudi","gudig",
"gudik","gues","gugat","gugatan","guguh","guguk","gugul","gugup","gugur","guguran",
"gugus","gugusan","guit","gula","gulai","gulali","gulambai","gulana","gulang","gulat",
"gulet","guli","guliga","guling","gulir","gulita","gulma","gulung","gulungan","gum",
"guma","gumal","gumala","gumam","gumbang","gumbar","gumbira","gumboro","gumbot","gumuk",
"gumul","gumum","gun","guna","gunawan","guncang","guncangan","gunci","gundah","gundal",
"gundala","gundar","gundul","gung","gunggung","gunit","gunjang","gunjing","gunting","guntung",
"guntur","gunung","gunungan","gup","gupernur","gurab","gurah","gurami","gurat","guratan",
"gurau","gurauan","gurdan","gurdia","gurem","gurih","gurinda","gurindam","gurita","gurit",
"guru","guruh","gurul","gurun","gurur","gus","gusar","gusel","gusi","gusti",
"gusul","gusur","gusuran","gutgut","gutik","gutuk","guun",
  },
  ["h"] = {
  "ha","habah","habai","habak","habanera","habat","habibi","habib","habis","habitat",
"habituasi","habitus","habluk","hablung","habluk","habuan","habuk","habung","had","hadam",
"hadapi","hadas","hadat","hadiah","hadir","hadirat","hadirin","hadis","hadit","hadj",
"hadrah","hadramaut","hadron","hafal","hafalan","hafiz","hafnium","hai","haid","haik",
"haikal","haiku","hail","hairan","haiwan","hajah","hajar","hajat","haji","hajim",
"hajis","hajun","hak","hakikat","hakiki","hakim","hakis","hakul","hal","hala",
"halal","halaman","halang","halangan","halau","halba","halban","halbe","halesia","halfa",
"halia","halilintar","halimbubu","halimun","halitosis","halkah","halma","halo","haloba","halogen",
"halon","halos","halpa","halte","haluan","halur","halusinasi","halus","halusinogen","halwa",
"ham","hama","hamal","hambalang","hambat","hambatan","hambur","hamburan","hamdu","hamil",
"hampa","hampar","hamparan","hampas","hampir","hampir-hampir","hamud","hamun","hamzah","hana",
"hancur","handai","handal","handam","handasah","handuk","hang","hangat","hanggar","hangit",
"hangus","hanif","hantam","hantar","hantaman","hantu","hanya","hanyat","hanyir","hanyut",
"hap","hapal","hapak","haplografi","haploid","hapus","hapusan","hara","harab","harak",
"harakah","harakat","harakiri","haram","harap","harapan","hardik","hardikan","harem","harga",
"hargah","hari","harian","haribaan","harimau","haris","harit","harkat","harmoni","harmonika",
"harmonis","harmonisasi","harta","hartawan","haru","harum","harus","has","hasab","hasad",
"hasai","hasan","hasar","hasat","hasib","hasil","hasrat","hasta","hastaria","hasud",
"hasut","hasutan","hati","hatif","hatiku","hatul","hatung","haus","hawa","hawari",
"hayat","hayatiku","hayatullah","hayo","hayun","hebat","hebi","heboh","heksagon","heksameter",
"heksana","heksapoda","hektar","hektogram","hektoliter","hela","helah","helai","helat","helat",
"helimetri","heliofita","heliograf","heliogram","helikopter","heliosentris","heliosis","heliostat","heliotrop","helium",
"helm","helmin","helminthologi","helo","hemat","hematit","hematologi","hematom","hembus","hembusan",
"hempas","hempasan","hendak","hendaknya","hening","henry","hentak","hentakan","henti","hentian",
"hepar","heparin","hepatitis","hepatologi","hepta","heptagon","heptana","herak","heraldo","herba",
"herbarium","herbisida","herbivor","herdik","heregistrasi","heretik","hering","heris","hermafrodit","hernia",
"hero","heroin","heroisme","herpes","hertat","hertz","herut","hesperidium","heterodin","heterofit",
"heterogen","heterogenitas","heterograf","heteronim","heteronom","heteronomi","heteroseksual","heterosfer","heterotrof","hewan",
"hewani","hias","hiasan","hibah","hibat","hibernasi","hibur","hiburan","hidang","hidangan",
"hidayat","hidra","hidradenitis","hidran","hidrant","hidrasi","hidraulik","hidrazid","hidrazin","hidrid",
"hidrida","hidro","hidrofilik","hidrofobia","hidrofon","hidrofit","hidrogen","hidrograf","hidrografi","hidrogram",
"hidrokarbon","hidroksida","hidroksil","hidrolase","hidrolika","hidrolis","hidrologi","hidrolisis","hidrometeoro","hidrometer",
"hidrometri","hidronim","hidropati","hidroponik","hidrops","hidrosfer","hidrostatis","hidroterapi","hidrotropisme","hidu",
"hidung","hidup","hidupan","hiena","hierarki","hierarkis","hieroglif","higiena","higienis","higrometer",
"higroskopis","higrostat","hih","hijab","hijaiyah","hijau","hijrah","hikayat","hikmah","hila",
"hilal","hilang","hilangan","hilir","himan","himat","himen","hime","himpun","himpunan",
"hina","hinanya","hincit","hindar","hindari","hindi","hindu","hinduisme","hingar","hingga",
"hinggap","hinjal","hinterland","hiosiamin","hipabisa","hiper","hiperaktif","hiperamnesia","hiperbola","hiperbolis",
"hiperemia","hipergami","hiperglikemia","hiperkinesis","hiperkorek","hipermetropia","hiperon","hiperparasit","hiperplasia","hiperseksual",
"hipersten","hipertensi","hipertermi","hipertonik","hipertrofi","hipervitaminosis","hipnosis","hipnotis","hipnotisme","hipo",
"hipodermis","hipofisis","hipofosfit","hipoglikemia","hipogonadisme","hipokondria","hipokorisme","hipokrisi","hipokrit","hiponim",
"hipoplankton","hipopion","hipopotasemia","hipoplankton","hiposentrum","hiposis","hipostasis","hipostatik","hipotaksis","hipotek",
"hipotenusa","hipotermia","hipotesis","hipotesis","hipotetik","hipotetis","hipotonik","hipovitaminosis","hippie","hipui",
"hirap","hirau","hirauk","hiruk","hiruk-pikuk","hirup","hisab","hisak","hisar","hisit",
"histeris","histeresis","histeri","histeroid","histidina","histogeni","histologi","histon","historis","historisitas",
"historiografi","hit","hitam","hitung","hitungan","hiu","hiwan","hizib","hoaks","hobi",
"hobo","hodograf","hodometer","hoi","hokah","hoki","holisme","holistik","holmium","holobastik",
"holofit","holokrin","holosen","homala","homali","homeostatis","homeopati","homer","homiletik","homili",
"hominid","homofon","homograf","homogen","homogenitas","homogami","homograf","homoioterm","homolog","homologi",
"homonim","homorgan","homoseksual","homosfer","homotip","honda","hongeroede","honor","honorer","honorifik",
"honorarium","hop","hopyes","horak","hordeum","horizontal","hormon","hormonal","hormat","hormati",
"hornor","horor","horoskop","hortikultura","hortatori","hosana","hospis","hospital","hospitalitas","hostel",
"hostes","hosti","hot","hotel","hotdog","hoyo","hu","hubaya-hubaya","hubung","hubungan",
"huda","hud-hud","hufaz","hujah","hujan","hujat","hujung","hukah","hukum","hukuman",
"hula-hula","hulu","hulubalang","huma","human","humaniora","humanis","humanisme","humanistik","humanitas",
"humaniter","humanoid","humas","humat","humbas","humektan","humerus","humid","humiditas","humifikasi",
"humin","humor","humoris","humoristis","humus","hun","huni","hunian","hunus","huria",
"huruf","huru-hara","hurustama","husen","husnulkhatimah","hutan","hutangan","hutang","huvet","huwi",
"huyung","hygiene",
  },
  ["i"] = {
  "ia","iambus","ianat","ibadat","ibadah","ibadurahman","iban","ibarat","ibayung","ibi",
"ibuk","ibukota","ibunda","ibunya","ibus","icek","icak","icip","icu","id",
"ida","idah","idaman","idap","idapan","idar","idarah","idari","idat","ide",
"ideal","idealis","idealisasi","idealisme","idealistis","ideler","identifikasi","identitas","identik","ideofon",
"ideograf","ideografi","ideogram","ideolog","ideologi","ideologis","ides","idiosinkrasi","idiot","idiom",
"idiomatik","idiomatika","idiometrik","idiosinkretik","idola","idolatria","iduladha","idulfitri","ifadah","iffah","ifit","iflas","ifrad","ifrit","iftar","iftitah",
"iga","igal","igama","igau","igauan","iglo","ignisi","ih","ihdad","ihlas",
"ihram","ihsan","ihsas","ihtifal","ihtimal","ihtiram","ihtisar","ihtisab","ihtisyam","ihwal",
"ijab","ijabat","ijazah","ijil","ijma","ijmal","ijo","ijok","ijtihad","ijtimak",
"ikan","ikat","ikatan","ikhtiar","ikhtilaf","ikhtilal","ikhtisar","ikhtisab","ikhlas","ikhwan",
"ikon","ikonis","ikonografi","ikonoklasme","iklan","iklim","iklimatologi","ikm","ikra","ikrab",
"ikram","ikrar","iktibar","iktifaf","iktikad","iktikaf","iktisab","ikut","ikutan","ilafi",
"ilah","ilahi","ilahiah","ilahiyat","ilai","ilak","ilalang","ilam","ilar","ilas",
"ilat","ilegal","ilegalitas","ileum","iler","iles","ilet","ilfi","ilham","ili",
"iling","ilir","ilmiah","ilmu","ilmuwan","ilusi","ilusif","ilustrasi","ilustrator","ilustratif",
"imaji","imajiner","imajinasi","imajinatif","imak","imam","imamat","iman","imans","imanen",
"imanensi","imansulasi","imarah","imbas","imbasan","imbat","imbau","imbauan","imbibisi","imbit",
"imbu","imbuh","imbuhan","imigran","imigrasi","imkan","imla","imlak","imlek","immaterial",
"imobilisasi","imoral","imortalitas","imparsial","imparsialitas","impas","impase","impatens","impatiens","impedansi",
"impelementasi","imperatif","imperfeksi","imperia","imperialisme","imperium","impersonal","impersonalitas","impetigo","impetus",
"impian","impit","impitan","implamasi","implementasi","implikasi","implisit","implosif","impor","importir",
"importasi","impoten","impotensi","impregnasi","impresariat","impresi","impresif","impresionisme","improvisasi","impul",
"impuls","impulsif","imun","imunisasi","imunitas","imunologi","imunosupresif","imunoterapi","inabsensia","inadekuat",
"inah","inai","inaj","inang","inap","inapan","inartikulasi","inaugurasi","inayah","inbox",
"incar","incaran","incek","inci","incit","incut","inda","indah","indahnya","indang",
"indap","indas","indeks","inden","independen","independensi","indera","inderasula","inderia","indik",
"indikasi","indikator","induktif","induk","induksi","induktansi","induktor","indung","indus","industri",
"industrialis","industrialisasi","inelastis","inersia","infan","infantantri","infantile","infantilisme","infark","infeksi",
"infeksius","inferior","inferioritas","inferensi","infernal","infertilitas","infiks","infiltrasi","infiltrat","infinitif",
"infinitas","infirmari","inflamasi","inflasi","inflatoar","infleksi","influenza","info","informal","informalin",
"informan","informasi","informatif","informatika","infra","inframerah","infrasonik","infrastruktur","infus","ingat",
"ingatan","ingau","inggu","inggris","inggu","ingin","inginkan","ingkar","ingon","ingus",
"inhalasi","inheren","inhibisi","inhibitor","ini","injeksi","injektor","injil","injili","injit",
"injak","injakan","inkarnasi","inkas","inkaso","inklinasi","inklinometer","inklusif","inkognito","inkompeten",
"inkompetensi","inkomplit","inkonsekuen","inkonsistensi","inkonstitusional","inkontinensia","inkonvensional","inkoporasi","inkorporasi","inkubasi",
"inkubator","inkuisisi","inkulpa","inkulturasi","inlander","inlet","inlinisasi","inofensif","inovasi","inovatif",
"inovator","input","insaf","insan","insang","insani","insanul","insas","insentif","insersi",
"inses","insiden","insidental","insinerasi","insinerator","insinuasi","insinyur","insisus","insomnia","inspeksi",
"inspektorat","inspektur","inspirasi","inspiratif","instabilitas","instalasi","instalatur","instan","instansi","instingtif",
"insting","institusi","institut","institusional","instruksi","instruksional","instruktif","instruktur","instrumen","instrumental",
"instrumentasi","insubordinasi","insfeksi","insulasi","insulatif","insulator","insulin","insulinde","insuloid","insyaallah",
"intai","intaian","intan","inteks","intelegensi","intelek","intelektual","intelektualisasi","intelektualisme","intel",
"intelijen","intens","intensif","intensifikasi","intensitas","inter","interaksi","interaktif","interdiksi","interes",
"interfaks","interfase","interferensi","interferometer","interglasi","interim","interior","interjeksi","interkom","interkoneksi",
"interkontinental","interkultural","interlinear","interlokal","interlokusi","interlokutor","interlude","interludium","intermediat","intermeso",
"intermisi","intern","internal","internalisasi","internasional","internat","internir","internis","internun","interogasi",
"interogatif","interogator","interpelasi","interpolasi","interpretasi","interprete","interpreter","interpsikih","interupsi","intervansi",
"intervel","intervensi","interviu","intestin","intim","intimidasi","inti","intikad","intil","intip",
"intipan","intisari","intoksikasi","intoleran","intoleransi","intonasi","intrakranial","intramuskular","intransitif","intraselular",
"intrastruktur","intravena","intrepid","intrik","intrinsik","intro","introduksi","introjeksi","introspeksi","introvert",
"intrus","intrusi","intrusif","intuisi","intuitif","invaginasi","invalid","invasi","invasif","invensi",
"inventaris","inventarisasi","inventif","inventor","inventori","inversi","invertebrata","investigasi","investigator","investasi",
"investor","invitasi","invitro","invois","invokasi","involusi","inyik","ion","ionisasi","ionosfer",
"ipa","ipis","iprit","iptek","ipuh","ipuk","ipukan","iqra","ira","iradat",
"iram","irama","iras","irasional","irasionalitas","irdat","irealitas","ireligius","iren","ireng",
"iri","irian","irigasi","irigator","irik","iring","iringan","iris","irisan","irit",
"iritabel","iritabilitas","iritasi","ironi","ironis","isabat","isad","isagoge","isak","isakan",
"isap","isapan","isat","isbat","isensi","isi","isian","isin","isim","isip",
"isitra","iskemia","islah","islam","islami","islamiah","islamisme","islamologi","islandia","isobar",
"isobath","isofase","isofon","isoglos","isogon","isogoni","isogami","isohyet","isokaloris","isokor",
"isokromatik","isokronis","isolasi","isolatif","isolator","isoleks","isomer","isometrik","isomorf","isonomi",
"isopoda","isopsia","isosilabik","isoterm","isotop","isotropik","isra","israk","israf","istal",
"istana","istanggi","istarah","istbat","isteri","isthmus","istiadat","istianah","istiarah","istibra",
"istidanah","istidraj","istifa","istighfar","istighosah","istiglal","istihsan","istijabah","istijlal","istikamah",
"istikharah","istiklal","istikmal","istilah","istimal","istimewa","istinbat","istinja","istirahat","isya",
"isyarat","isytiak","itaf","itali","itik","itil","itinerari","itlak","itmam","itrah",
"itu","itunya","iud","iuran","iwad","iyuran",
  },
  ["j"] = {
"ja","jabal","jabang","jabar","jabariah","jabat","jabatan","jabir","jablai","jabon",
"jabot","jabung","jadah","jadam","jadel","jadi","jadian","jadwal","jaga","jagabaya",
"jagad","jagadraya","jagal","jagalan","jagamaya","jagat","jagatraya","jago","jagokan",
"jagung","jagung-jagung","jagur","jahanam","jahar","jaharu","jahat","jahid","jahil","jahiliyah",
"jahit","jahitan","jahul","jaiz","jaja","jajahan","jajak","jajakan","jajal","jajan",
"jajanan","jajar","jajaran","jajat","jajur","jaka","jakal","jakas","jakat","jaket",
"jaksa","jaksawan","jakun","jala","jalad","jalak","jalal","jalan","jalanan","jalang",
"jalar","jalaran","jalasutra","jali","jalibut","jalil","jalinan","jalin","jalinan","jalir",
"jalit","jalma","jalu","jalur","jaluran","jam","jamah","jamahan","jamak","jamal",
"jaman","jamang","jambak","jambakan","jamban","jambar","jambat","jambatan","jambe","jamber",
"jambi","jambiah","jambret","jambu","jambul","jambulan","jambur","jamhur","jamiah","jamid",
"jamin","jaminan","jamir","jamis","jamu","jamuan","jamur","janabah","janat","janda",
"jandi","jandit","janela","janet","jangak","jangan","jangar","jangat","janggal","janggang",
"janggut","jangka","jangkah","jangkai","jangkar","jangkaun","jangkauan","jangki","jangkih","jangking",
"jangkit","jangkrik","jangkung","jangla","janibi","janik","janin","janjang","janji","janjian",
"jannat","jannatul","jantera","jantol","jantung","jantur","janubi","janur","jap","japa",
"japar","japin","japit","japu","jara","jarab","jarah","jarahan","jarak","jaram",
"jaran","jarang","jaras","jari","jarian","jaring","jaringan","jarit","jarkom","jaru",
"jarum","jaruman","jarwa","jas","jasa","jasadi","jasad","jasadi","jasmani","jasmaniah",
"jasirah","jasmani","jati","jatilan","jatuh","jauh","jauhari","jauza","java","jawa",
"jawab","jawaban","jawat","jawatan","jawi","jawil","jaya","jayau","jaz","jazad",
"jazam","jazirah","jebah","jebai","jebak","jebakan","jebang","jebat","jeblok","jebol",
"jebolan","jebot","jebuh","jebuk","jebul","jebung","jebur","jeda","jedar","jedot",
"jegal","jegalan","jegar","jeger","jegil","jegir","jegluk","jegog","jegrak","jehab",
"jejak","jejaka","jejal","jejamu","jejap","jejaring","jejuri","jekas","jeket","jeksi",
"jela","jelabat","jeladan","jeladeri","jelajah","jelajahan","jelak","jelalat","jelamprang","jelan",
"jelanak","jelang","jelantah","jelapak","jelapang","jelar","jelas","jelata","jelatang","jelatik",
"jelatuk","jelau","jelebah","jelebak","jelebat","jelebuk","jeleh","jelek","jelempah","jelenat",
"jelengar","jelepak","jelepat","jelepok","jeletot","jeli","jelih","jelimet","jeling","jelir",
"jelis","jelit","jelita","jelma","jelmaan","jelmu","jelojoh","jelujur","jeluk","jelum",
"jelung","jeluntung","jelur","jelus","jelut","jelutung","jemaah","jemaat","jemah","jemala",
"jemari","jemawa","jemba","jembak","jembatan","jembel","jembiah","jemblem","jembut","jemeki",
"jemerlang","jemerlap","jemerut","jemparing","jempol","jempolan","jempot","jemput","jemputan","jemu",
"jemuas","jemuju","jemur","jemuran","jenak","jenaka","jenang","jenat","jenawi","jenazah",
"jendala","jendel","jendela","jendol","jendul","jenela","jeneng","jengah","jengat","jengek",
"jenggel","jengger","jengget","jengglong","jenggot","jenggut","jengit","jengkal","jengkang","jengkeng",
"jengker","jengkerik","jengket","jengking","jengkit","jengkol","jengkot","jenguk","jengul","jenis",
"jenjang","jenjeng","jentaka","jentayu","jentera","jentik","jentit","jentu","jenun","jenus",
"jepah","jepit","jepitan","jepon","jeprat","jepret","jepretan","jepun","jeput","jera",
"jerab","jerabah","jerabai","jeradak","jeragap","jeragat","jerah","jerahak","jerahap","jeram",
"jerambah","jerambai","jerambang","jeran","jerang","jerangau","jerangkang","jerap","jerat","jeratan",
"jerau","jeraus","jerawat","jerawatan","jerbak","jerba","jerbung","jeruji","jeruk","jerum",
"jerumat","jerumbun","jerumbung","jerumun","jerumus","jerung","jerungkuh","jerungking","jerungkup","jerun",
"jerunuk","jerupih","jerut","jeruju","jet","jetis","jetis","jewer","jeweran","jiarah",
"jib","jiban","jibat","jibilah","jibti","jicap","jidar","jidat","jidor","jidu",
"jigang","jigat","jigong","jigrak","jihan","jihad","jihat","jijik","jijit","jika",
"jikalau","jilat","jilatan","jilbab","jilid","jilidan","jim","jimak","jimat","jin",
"jinak","jinakan","jinayah","jindang","jingau","jingga","jinggap","jingglong","jinggo","jingkat",
"jingkrak","jingkring","jinjang","jinjing","jinjit","jins","jintan","jip","jipang","jiplak",
"jiplakan","jir","jiran","jirat","jirian","jirus","jisim","jitak","jitakan","jitok",
"jitu","jiwa","jiwani","jiwar","jiwat","jiwatman","joang","job","joblos","jobo",
"jodoh","jodohkan","jodong","jogar","joged","joget","jogging","joglo","johan","johar",
"joki","jok","jolak","joli","jolok","jolokan","jolor","jomantara","jombang","jomblo",
"jompo","jonget","jongga","jonggang","jongit","jongkang","jongkah","jongkang","jongki","jongkok",
"jongkokan","jongko","jongor","jontor","joran","joreng","jori","jorok","jorong","jos",
"jotos","jotosan","jua","juadah","juak","jual","jualan","juang","juara","jubah",
"jubel","jubin","jublak","jublek","jubli","jubung","judek","judes","judi","judikatif",
"judisial","judo","judul","juek","juga","jugala","jugul","juih","juita","jujat",
"jujit","juju","jujuh","jujul","jujur","jujuran","jujut","jukut","julang","julat",
"julek","juli","juling","julir","julukan","juluk","julukan","julung","julur","jumantara",
"jumat","jumbai","jumbil","jumbo","jumbuh","jumjumah","jumlah","jumrah","jumpai","jumpa",
"jumpalit","jumpul","jumput","jumputan","jumud","junam","jundai","jung","jungat","jungkal",
"jungkal","jungkat","jungkir","jungkir-balik","jungkit","jungkol","jungkur","jungut","junjung","junjungan",
"junta","juntai","juntay","junub","junun","jupel","jupri","jura","jurah","jurai",
"juragan","jurang","juri","jurik","juring","juris","jurnal","jurnalis","jurnalistik","juru",
"jurus","jurusan","justifikasi","justir","justru","juta","jutawan","jute","juti","jutul",
"juvelin","juwita","juz",
  },
  ["k"] = {
 "ka","kaabah","kabak","kabal","kabam","kaban","kabar","kabaret","kabat","kabau",
"kabel","kabir","kabisat","kabit","kaboi","kabrio","kabsah","kabuk","kabuki","kabul",
"kabun","kabung","kabur","kabus","kabut","kaca","kacah","kacak","kacamata","kacang",
"kacapiring","kacar","kacau","kacek","kacer","kaci","kacip","kacir","kaco","kacu",
"kacuk","kacung","kada","kadah","kadai","kadaka","kadal","kadam","kadangkala","kadarnya",
"kadas","kadaster","kadet","kadhal","kadi","kadim","kadir","kadit","kado","kadru",
"kadung","kadut","kafaah","kafan","kafe","kafein","kafilah","kafir","kaftan","kagak",
"kaget","kagok","kagum","kah","kahaf","kahar","kahat","kahin","kahrab","kahwa",
"kahwin","kaidah","kaifiat","kail","kain","kaing","kaipang","kais","kaisar","kait",
"kaja","kajai","kajang","kaji","kak","kaka","kakaktua","kakanda","kakap","kakar",
"kakas","kakawat","kakek","kaki","kakiku","kakodil","kakofoni","kakografi","kakok","kakos",
"kaktus","kaku","kakum","kakus","kala","kalabaka","kalah","kalai","kalajengking","kalaka",
"kalam","kalamdan","kalamin","kalamisani","kalamkani","kalana","kalander","kalang","kalangan","kalap",
"kalar","kalas","kalat","kalau","kalaza","kalbu","kaldera","kaldu","kaleidoskop","kalender",
"kaleng","kali","kalian","kaliber","kalibrasi","kalid","kaligraf","kaligrafi","kalikausar","kalimat",
"kalimantang","kalimanyar","kalimatullah","kalimaya","kaling","kalio","kalis","kalkari","kalkulasi","kalkulator",
"kalkulus","kalkun","kalo","kalomel","kalong","kalor","kalori","kalorimeter","kalorimetri","kaloris",
"kalowat","kalsedon","kalsiferol","kalsifikasi","kalsit","kalsium","kalu","kalui","kalumet","kalung",
"kalupan","kalus","kalut","kama","kamal","kamar","kamariah","kamas","kamat","kamba",
"kamban","kambang","kambang","kambar","kambas","kambeh","kambeli","kamber","kambi","kambing",
"kambit","kambium","kambuh","kambus","kambut","kameko","kamelia","kameleon","kamera","kamerad",
"kameramen","kamis","kamisol","kamit","kamka","kamojang","kamomil","kamper","kampes","kampiun",
"kamplengan","kampret","kampung","kampus","kampu","kamu","kamuflase","kamus","kan","kana",
"kanabel","kanabis","kanada","kanal","kanalisasi","kanan","kanang","kancah","kancap","kancil",
"kancing","kancung","kanda","kandang","kandar","kandas","kandela","kandel","kandidat","kandil",
"kandis","kandul","kandung","kandungan","kandut","kane","kanebos","kanibal","kanibalisme","kanigara",
"kanjang","kanjar","kanji","kanker","kanon","kanonik","kanonisasi","kanonir","kans","kancut",
"kanta","kantar","kantata","kantilever","kantin","kantong","kantor","kantung","kantup","kanun",
"kanvas","kanyut","kaok","kaolin","kaon","kaos","kap","kapa","kapah","kapai",
"kapak","kapal","kapan","kapang","kapar","kaparat","kapas","kapasitas","kapasitor","kapat",
"kapel","kaper","kapi","kapilaritas","kapiler","kapiran","kapis","kapit","kapital","kapitalisasi",
"kapitalisme","kapitan","kapitol","kapitulasi","kapitulum","kaplares","kaplok","kapok","kaporit","kaposi",
"kapotaksis","kappa","kaprah","kapri","kaprifikasi","kaprilat","kaprit","kaproas","kapsul","kapten",
"kapu","kapuk","kapulaga","kapung","kapur","kapuranto","kapurung","kara","karabin","karakter",
"karakterisasi","karakteristik","karam","karambol","karamel","karamina","karantina","karap","karas","karat",
"karate","karatid","karau","karavan","karawat","karba","karbat","karbid","karbida","karbohidrat",
"karbol","karbon","karbonado","karbonat","karbonisasi","karbonit","karbonium","karburasi","karburator","karcis",
"kardamunggu","kardan","kardas","kardeks","kardia","kardiak","kardigan","kardinal","kardiograf","kardiogram",
"kardiolog","kardiologi","kardium","kardus","karela","karem","karet","kargo","karib","karibu",
"karid","karier","karih","karikatur","karikaturis","karil","karim","karimah","karina","karis",
"karisma","karismatik","karitas","karites","karkas","karkun","karma","karman","karmina","karminatif",
"karnaval","karnivor","karo","karoseri","karoten","karotida","karotis","karpa","karpet","karpus",
"karsa","karsinogen","karsinogenik","karsinoma","karsologi","karst","karta","kartel","kartika","kartilago",
"kartograf","kartografi","kartogram","karton","kartonase","kartoteh","kartu","kartun","kartunis","karun",
"karung","karunia","karunianya","karunyat","karur","karus","karusel","karut","karya","karyawan",
"karyawati","karyasastra","karyawisata","kas","kasa","kasab","kasad","kasah","kasai","kasak-kusuk",
"kasam","kasar","kasasi","kasat","kasau","kasdu","kasein","kasek","kasemat","kasemek",
"kasep","kaset","kasia","kasid","kasidah","kasih","kasihan","kasim","kasino","kasip",
"kasir","kasirat","kasiterit","kaskade","kaskaya","kaskus","kasmaran","kasmut","kasni","kaso",
"kaspe","kasrah","kasregister","kassa","kasta","kastanyet","kasteel","kastel","kastrasi","kastroli",
"kasturi","kasuari","kasui","kasuit","kasultanan","kasuma","kasumat","kasur","kasus","kasut",
"kaswah","kata","katabolisme","katadrom","katafalk","katafora","katakana","katalis","katalisator","katalisasi",
"katalog","katamaran","katarsis","katartik","katatonia","kate","kategis","kategori","kategorial","kategoris",
"kategorisasi","katekese","kateketik","katekismus","katekumen","katel","kater","katering","kateter","katetometer",
"kati","katib","katibin","katifa","katik","katil","katimumul","kation","katir","katistiwa",
"katoda","katolik","katrol","katuk","katul","katulistiwa","katung","katup","katvander","kau",
"kaul","kaum","kauman","kausa","kausal","kausalitas","kaustik","kaustisitas","kaut","kawah",
"kawak","kawal","kawalan","kawan","kawasan","kawat","kawi","kawih","kawin","kawista",
"kawit","kawula","kawung","kaya","kayak","kayal","kayan","kayang","kayas","kayat",
"kayu","kayuh","kayun","kayup","kayut","ke","keamanan","kebabal","kebabal","kebacut",
"kebah","kebaji","kebal","kebalan","kebam","kebas","kebat","kebaya","kebayan","kebat",
"kebek","kebiri","kebit","kebon","kebos","kebrak","kebun","kebur","kebut","kecak",
"kecam","kecaman","kecambah","kecamuk","kecantol","kecap","kecapi","kece","kecek","kecele",
"keceng","kecepek","kecepet","kecepirit","kecewa","keciap","kecik","kecil","kecimpung","kecit",
"kecoak","kecoh","kecombrang","kecong","kecu","kecuali","kecubung","kecup","kecut","kedada",
"kedah","kedai","kedal","kedaluwarsa","kedam","kedang","kedangkai","kedap","kedar","kedasih",
"kedaton","kedau","kedaya","kedayan","kedebik","kedebuk","kedek","kedekut","kedelai","kedemat",
"kedempel","kedemplon","kedeng","kedengkeng","kedentam","kedep","keder","kedera","kedewasaan","kedi",
"kedidi","kedik","kedikit","kedip","kediri","kedok","kedokteran","kedondong","kedongdong","kedu",
"kedua","keduduk","kedudukan","keduk","kedul","kedung","kedunya","kedur","kedut","keek",
"keeng","kefilah","kegir","kegiatan","kehadiran","kehai","kehakiman","kehal","keham","kehendak",
"kehi","keinginan","kejab","kejam","kejam","kejang","kejap","kejar","kejaran","kejat",
"kejaya","kejeblos","kejek","kejer","keji","kejip","kejora","keju","kejur","kejutan",
"kek","keka","kekah","kekal","kekam","kekandi","kekang","kekapas","kekar","kekas",
"kekat","kekau","kekawin","kekeb","kekek","kekel","kekem","kekenyalan","keker","kekit",
"kekok","kel","kela","kelab","kelabang","kelabu","keladak","keladi","kelah","kelahi",
"kelai","kelak","kelakar","kelalang","kelam","kelambir","kelambu","kelamin","kelana","kelang",
"kelangkan","kelantang","kelap","kelapa","kelar","kelas","kelasa","kelasi","kelat","kelati",
"kelatru","kelau","kelayan","kelayap","kelayu","kelayu","kelaziman","kelebat","kelebu","keledai",
"keledang","keledar","kelek","kelekatu","kelelap","kelelawar","keleleh","kelelot","kelemai","kelemayar",
"kelembahang","kelembak","kelembuai","kelembung","kelembu","kelemis","kelemlem","kelempai","kelemping","kelemumur",
"kelendara","kelenjar","kelentang","kelenteng","kelentit","kelentung","kelenyit","kelepai","kelepat","kelepek",
"keleper","kelepik","kelepik","kelepur","keler","kelereng","kelese","kelesot","keletak","keletar",
"keletik","keletis","keletuk","keli","kelian","keliat","kelibang","kelibat","kelicik","kelid",
"keligir","kelih","kelik","keliki","kelikir","keliling","kelim","kelima","kelimun","kelinci",
"kelincir","keling","kelingking","kelining","kelip","kelir","keliru","kelis","kelit","keliti",
"kelitik","kelitir","kelitut","keliwat","kelobot","kelocok","kelodan","kelofon","keloh","kelojoh",
"kelola","kelompok","kelon","kelon","keloncho","keloneng","kelonet","kelong","kelongkong","kelongsong",
"kelontong","kelonyo","kelopak","kelopok","kelor","kelos","kelosok","kelotak","keloyak","keloyor",
"kelu","keluai","keluak","keluan","keluar","keluarga","keluarbiasaan","keluargaku","kelub","kelubung",
"keluh","keluhan","kelui","keluk","kelulu","kelulut","kelumit","kelumpuk","kelun","keluna",
"kelung","kelupas","kelupur","kelur","keluron","keluru","kelus","kelut","kelutum","kema",
"kemah","kemal","kemala","keman","kemana","kemang","kemangi","kemantin","kemarau","kemaren",
"kemari","kemarin","kemas","kemasan","kemaslahatan","kemat","kemaya","kemayu","kembal","kembali",
"kemban","kembang","kembar","kembara","kembat","kemis","kemiri","kemiskinan","kemoceng","kempis",
"kemudi","kemudian","kemul","kemung","kemuning","kemur","kemut","kena","kenal","kenalan",
"kenan","kenang","kenangan","kenanga","kenapa","kenap","kenari","kenas","kencana","kencang",
"kenceh","kenceng","kencing","kencit","kencur","kendak","kendala","kendang","kendara","kendaraan",
"kendat","kendati","kenderi","kendi","kendil","kendit","kendo","kendong","kenduri","kendur",
"kenek","keneker","kenem","keneng","kenes","keng","kengkeng","kenidai","kenikir","kening",
"kenit","keniwari","keno","kenop","kental","kentang","kentar","kentas","kentit","kentong",
"kentung","kentut","kenung","kenur","kenya","kenyal","kenyam","kenyang","kenyat","kenyit",
"kenyot","kenyut","keok","keong","kep","kepa","kepada","kepah","kepai","kepak",
"kepal","kepala","kepam","kepan","kepang","kepar","keparat","kepas","kepaya","kepe",
"kepek","kepel","kepeng","keper","keperancak","keperasi","keperat","keperut","kepet","kepeting",
"kepi","kepialu","kepiat","kepicu","kepil","kepincut","keping","kepingin","kepinis","kepiran",
"kepis","kepit","kepiting","keponakan","kepot","keprak","keprek","kepret","kepuh","kepuk",
"kepul","kepulauan","kepung","kepura","kepurun","keputren","kera","kerabat","kerabang","kerabik",
"kerabu","keracunan","keradak","kerah","kerai","kerajang","kerak","kerakal","kerakap","keram",
"kerama","keramat","kerambit","kerambil","keramboia","kerame","keramik","keramikus","keramin","kerampang",
"keran","kerancang","keranda","kerangas","kerangga","kerangka","kerangkai","kerangkeng","kerani","keranjang",
"keranji","kerantai","keranti","kerantung","kerap","kerapai","kerapak","kerapu","kerapus","keras",
"kerasa","kerasak","kerat","keratan","keratau","keratin","keratitis","keraton","keratun","kerawai",
"kerawak","kerawang","kerawat","kerawit","kerayap","kerayat","kerayung","kerbat","kerbau","kerbek",
"kerbih","kerbil","kerbo","kerbuk","kerbung","kercap","kercit","kercut","kerdak","kerdam",
"kerdan","kerdas","kerdil","kerdom","kerdus","kere","kerebok","kerecek","keredak","keredep",
"keredok","keredong","kerek","kereket","kerekot","kerela","kerem","keremat","keremi","keremot",
"keren","kerenceng","kereneng","kereng","kerengga","kerengkam","kerengkeng","kerengkiang","kerentam","kerentang",
"kerepes","kerepot","kerese","keresek","kereseng","keresik","keresot","keret","kereta","keretak",
"keretang","keretapi","keretek","keretot","keretut","kerezeki","keri","keria","keriah","keriak",
"keriap","kericau","keridit","keridit","kerig","kerih","kerik","kerikil","kerikit","kerill",
"kerim","kerimut","kerincing","kerinda","kerinduan","keringsing","kerinjam","kerinting","kerinyau","kerip",
"keripik","keripir","keripit","keris","kerisi","kerisik","kerisut","kerit","keritik","keriting",
"keritot","keritut","keriuk","keriut","kerivau","kerja","kerjang","kerjap","kerkah","kerkak",
"kerkap","kerkas","kerkau","kerkel","kerki","kerkup","kerlap","kerlip","kerma","kermak",
"kermanici","kermi","kermit","kermut","kernai","kernat","kernefi","kerneli","kernes","kernet",
"kernu","kernyau","kernyit","kernyut","kero","kerobak","kerobek","kerobok","keroco","kerodok",
"kerodot","kerogen","kerogol","keroh","kerok","kerokan","kerokot","kerombol","kerombolan","kerombong",
"keromotor","keronchong","keroncho","keroncor","kerong","kerongkongan","keronjong","kerontang","keropak","keropas",
"keropek","keropes","keropok","keropos","keropyok","keros","kerosak","kerosek","kerosene","kerosok",
"kerosong","kerot","kerotak","kerotek","kerotot","keroyok","keroyokan","kerpai","kerpak","kerpas",
"kerpuj","kerpuk","kersai","kersak","kersang","kersani","kersen","kersik","kersip","kersuk",
"kerta","kertah","kertak","kertam","kertas","kertau","kertuk","kertus","keru","kerubub",
"kerubun","kerubung","kerubut","kerucut","kerudal","keruh","keruit","keruk","kerukut","kerul",
"kerulut","kerumit","kerumun","kerumus","kerun","kerung","kerunggung","kerunting","kerup","kerupuk",
"kerusi","kerut","kerutak","kerutu","keruyuk","kes","kesa","kesah","kesal","kesambet",
"kesambi","kesan","kesana","kesandung","kesang","kesasar","kesat","kesatria","kesayangan","kesedak",
"kesek","kesel","kesleo","kesokan","kesrakat","kesturi","kesu","kesuh","kesuma","kesumat",
"kesup","kesur","kesut","keta","ketai","ketak","ketal","ketam","ketan","ketang",
"ketap","ketapang","ketar","ketat","ketaton","ketawa","ketaya","ketayap","ketek","ketel",
"ketemu","ketenangan","keteng","keterangan","ketet","keti","ketiak","ketial","ketian","ketiap",
"ketiban","keticuh","ketiduran","ketik","ketika","ketil","ketimun","ketimung","ketindih","keting",
"ketip","ketipu","ketir","ketis","ketitir","ketok","ketola","keton","ketong","ketoprak",
"ketoprak","ketos","ketu","ketua","ketuai","ketuk","ketul","ketularan","ketumbar","ketombe",
"keton","ketoprak","ketu","ketua","ketuai","ketuk","ketul","ketularan","ketumbar","ketumbi",
"ketumbit","ketumbu","ketumbukan","ketun","ketung","ketupat","ketur","ketus","kewa","kewan",
"kewalahan","kewenangan","kewes","kewu","kewung","khalifah","khamir","khatulistiwa","khawatir","khazanah",
"khianat","khidmat","khilaf","khitan","khotbah","khusus","kia","kiah","kiai","kiak",
"kial","kiam","kiamat","kiambang","kian","kianda","kiang","kianit","kiap","kias",
"kiasan","kiat","kibar","kibas","kiblat","kicau","kicep","kidal","kidang","kidul",
"kidung","kikir","kikis","kikir","kikuk","kila","kilah","kilai","kilam","kilang",
"kilap","kilar","kilas","kilat","kilat-kilat","kilau","kili","kilik","kilir","kilo",
"kilogram","kiloliter","kilometer","kilovolt","kilowat","kilu","kilun","kim","kimah","kimar",
"kimba","kimbang","kimbul","kimbut","kimia","kimiawi","kimlo","kimo","kimono","kimpul",
"kimput","kin","kina","kinandang","kinang","kinanti","kinanti","kinasih","kincah","kincau",
"kincing","kincir","kincit","kinda","kindut","kinematika","kinerja","kinestesia","kinestetik","kinetik",
"kinetis","king","kingkang","kingking","kingkong","kini","kinine","kinjeng","kinyong","kios",
"kip","kipa","kipai","kipal","kipang","kiparat","kipas","kiper","kiprah","kir",
"kira","kirai","kiramat","kirana","kirap","kiras","kirau","kirbat","kiri","kirim",
"kiriman","kiris","kiru","kisa","kisah","kisahan","kisar","kisaran","kisas","kisat",
"kisi","kisik","kisis","kista","kisut","kit","kita","kitab","kitabullah","kitang",
"kitar","kitara","kitaran","kitas","kitik","kitin","kitir","kitiran","kitsch","kiu",
"kiuk","kiut","kiwa","kiwari","kiwi","klem","klenik","klise","kloning","klor","klorida",
"kloroform","klorofil","klorokuin","kloset","kloter","klub","knop","koa","koala","koalisi",
"kobak","kobal","kobalt","kobar","kobaran","kobas","kobek","koboi","kobok","kobokan",
"kobra","kocak","kocek","kocok","kocokan","koda","kode","kodein","kodifikasi","kodikologi",
"kodok","kodrat","koefisien","koeksistensi","koenzim","koersi","koersif","kohesi","kohesif","kohir",
"kohabitasi","kohort","koil","koin","koinsiden","koit","koitus","kojang","kojar","kojek",
"kojol","kojot","kok","koka","kokain","kokang","kokas","koki","kokila","kokoh",
"kokok","kokon","kokop","kokos","kokot","koks","koksa","koktail","kokus","kol",
"kola","kolaborasi","kolaborator","kolak","kolam","kolang-kaling","kolaps","kolase","kolateral","kolat",
"kolega","koleksi","kolektif","kolektivitas","kolektor","kolekting","kolera","kolesterol","kolese","kolesom",
"kolesterol","koli","kolibri","kolik","kolintang","kolir","kolm","kolofon","koloid","kolokium",
"kolom","kolon","kolonel","koloni","kolonial","kolonialis","kolonialisme","kolonis","kolonisasi","kolonit",
"kolonofon","kolor","kolos","kolosal","kolostomi","kolostrum","kolot","kolumnis","koma","komal",
"komandan","komanditier","komando","komandur","komat-kamit","kombinasi","kombo","kombor","komedi","komedian",
"komendur","komentar","komentator","komersial","komersialisasi","komersil","komidi","komik","komikus","komis",
"komisariat","komisaris","komisi","komisioner","komit","komite","komitmen","komoditas","komodo","komodor",
"kompak","kompaktibilitas","kompanyon","komparasi","komparatif","komparator","kompas","kompatibel","kompatriot","kompe",
"kompedium","kompendium","kompensasi","kompeten","kompetensi","kompetisi","kompetitif","kompetitor","kompilasi","kompilator",
"komplain","kompleks","kompleksitas","komplemen","komplementer","komplet","komplikasi","komplikasi","komplikatif","komplot",
"komplotan","komponen","komponis","kompor","kompos","komposit","komposisi","komposita","komposter","kompot",
"kompres","kompresi","kompresor","kompromi","kompsisi","komputer","komputerisasi","kompulsi","kompulsif","komun",
"komunal","komunalistik","komunalitas","komune","komuni","komunikan","komunikasi","komunikatif","komunikator","komunike",
"komunio","komunis","komunisme","komunitas","komutatif","komuter","konan","konangan","konang","koncek",
"konceh","konsep","konsepsi","konseptor","konseptual","konser","konservasi","konservatif","konservator","konservatrium",
"konsesi","konsesif","konsiderans","konsiderasi","konsinyasi","konsisten","konsistensi","konsistori","konsol","konsolasi",
"konsolidasi","konsolider","konsolidasikan","konsonan","konsorsium","konspirasi","konspiratif","konspirator","konstabel","konstanta",
"konstatasi","konstater","konstipasi","konstitusi","konstitusional","konstitutif","konstriksi","konstriktor","konstruksi","konstruktif",
"konstruktor","konsul","konsulat","konsultasi","konsultan","konsultatif","konsumabel","konsumen","konsumsi","konsumtif",
"kontak","kontaminasi","kontan","kontas","kontemporer","konten","kontener","kontes","kontestan","kontekstual",
"kontestasi","kontinental","kontingen","kontinuitas","kontinu","kontinum","kontol","kontra","kontrabanda","kontrabas",
"kontradiksi","kontradiktif","kontraindikasi","kontrakan","kontraksi","kontraktor","kontrak","kontralto","kontrapung","kontras",
"kontrasepsi","kontraseptif","kontravensi","kontribusi","kontributor","kontrol","kontrolir","kontrolir","kontroversial","kontroversi",
"kontur","konveksi","konveksitas","konvensional","konvergensi","konvergen","konversasi","konversi","konverter","konvoi",
"konvokasi","konvulsan","konvulsif","konyak","konyol","konyon","konyungsi","konyungtiva","konyungtur","kooperasi",
"kooperatif","kooperator","kooptasi","koordinasi","koordinat","koordinator","kop","kopa","kopah","kopak",
"kopal","kopano","kopar","kopas","kopek","kopel","kopeling","koper","koperasi","kopet",
"kopi","kopiah","kopilot","koplo","kopok","kopong","kopor","kopra","kopral","kopro",
"koprol","kopula","kopulatif","kopung","kopur","kopyok","kopyor","kor","kora","korak",
"koral","koran","korban","korden","kored","korek","koreksi","korektif","korektor","korelasi",
"korelatif","korem","koreng","koreograf","koreografi","koreografer","kores","korespondensi","koresponden","koret",
"koridor","koris","korma","kormus","kornea","korner","kornet","korneto","kornik","kornu",
"korografi","korok","korona","koroner","korong","korosi","korosif","korporasi","korporatif","korporat",
"korps","korpus","korpuskel","korsase","korset","korsleting","korsleting","korso","korta","korteks",
"kortison","kortografi","korum","korun","korung","korup","korupsi","koruptif","koruptor","korus",
"korvet","kos","kosa","kosakata","kosar","kosber","kosek","kosen","koset","kosmetik",
"kosmetika","kosmetolog","kosmetologi","kosmetologis","kosmis","kosmogoni","kosmografi","kosmolog","kosmologi","kosmonaut",
"kosmopolit","kosmopolitan","kosmos","kosmosfer","kosok","kosong","koson","kostel","kostim","kostum",
"kota","kotah","kotai","kotak","kotak-kotak","kotak-katik","kotak-ketik","kotapraja","kotek","koteng",
"koterek","kotertak","kotex","koti","kotika","kotil","kotiledon","kotilot","koting","koting",
"kotinga","kotok","kotor","kotoran","kover","kowak","kowan","kowar","kowek","kowel",
"kowera","koyak","koyam","koyan","koyok","kran","kreatif","kreativitas","kreator","kredit",
"kreditur","krem","kremasi","krematorium","kreol","kreosot","kribo","krida","kriminal","kriminalitas",
"kriminologi","kripik","krisis","kristal","kristalografi","kristen","kristiani","kritik","kritikus","kritis",
"kritisi","kriya","krobak","krobokan","kromatografi","kromit","kromium","kromo","kromogen","kromosom",
"kronik","kronis","kronologi","kronologis","kronometer","kroser","kroscek","kru","kruk","krupuk",
"krusial","ku","kua","kuadran","kuadrat","kuadriliun","kuadrisep","kuadrul","kuah","kuai",
"kuak","kuakan","kuala","kualas","kuali","kualifikasi","kualitas","kualitatif","kuang","kuantitas",
"kuantitatif","kuantum","kuar","kuark","kuartal","kuarter","kuartet","kuarto","kuarts","kuartsa",
"kuartil","kuas","kuasa","kuasai","kuasanya","kuasi","kuat","kuaternari","kubah","kubak",
"kubang","kubangan","kubas","kubik","kubis","kubisme","kubit","kubra","kubu","kubur",
"kuburan","kubus","kucai","kucak","kucam","kucek","kucica","kucil","kucin","kucing",
"kucir","kucit","kucur","kucuran","kuda","kudapan","kudeta","kudi","kudis","kudok",
"kudrat","kudung","kudus","kueni","kuerisetin","kuersitron","kuetiau","kufur","kui","kuil",
"kuis","kuit","kuitansi","kuiz","kujang","kujur","kujut","kuku","kukuh","kukukan",
"kukur","kukus","kukusan","kul","kula","kulah","kulai","kulak","kulalat","kulam",
"kulambi","kulan","kulat","kuldi","kuli","kuliah","kulimat","kuliner","kulir","kulit",
"kulkas","kulman","kulminasi","kulon","kulot","kultivasi","kultivar","kultur","kultural","kultus",
"kulub","kuluk","kulum","kulup","kulur","kulut","kum","kuma","kumai","kumal",
"kuman","kumandang","kumandang","kumat","kumbah","kumbang","kumbar","kumbara","kumbik","kumbuh",
"kumis","kumit","kumpai","kumpal","kumpar","kumparan","kumpi","kumplit","kumpul","kumpulan",
"kumpul-kumpul","kumur","kumus","kumut","kunani","kunang","kunang-kunang","kunas","kuncah","kuncen",
"kunci","kuncir","kuncung","kuncup","kunda","kundan","kundang","kundi","kundur","kung",
"kungfu","kungkum","kungkung","kungkungan","kuning","kuningan","kunir","kunjit","kunjung","kunjungan",
"kuno","kunyuk","kunyanyikan","kunyah","kunyahan","kunyam","kunyang","kunyat","kunyit","kunyuk",
"kuorum","kuota","kuotasi","kup","kupa","kupak","kupang","kupar","kupas","kupasan",
"kupat-kapit","kupe","kuper","kuping","kupir","kupluk","kupon","kuproy","kupro","kupt","kura",
"kura-kura","kurai","kurang","kurangan","kurap","kurari","kuras","kurasa","kurasi","kuratif",
"kurator","kuratorium","kurau","kurban","kurbel","kurcaci","kurdistan","kuren","kuret","kuretase",
"kuria","kurigram","kurik","kurikulum","kuring","kuriositas","kurir","kurium","kuro","kurs",
"kursi","kursif","kursor","kursus","kurtosis","kurun","kurung","kurungan","kurus","kurut",
"kusa","kusam","kusat","kusau","kusen","kusik","kusir","kusta","kusu","kusuk",
"kusum","kusuma","kusus","kusut","kut","kuta","kutang","kutat","kuteks","kuteri",
"kuti","kutik","kutikan","kutil","kutilang","kutin","kutip","kutipan","kuto","kutub",
"kutukan","kutung","kutut","kuud","kuwait","kuwu","kuya","kuyang","kuyup","kwartet",
"kwartir","kwartir","kwasiorkor","kweni","kwetiau","kwitansi",
  },
  ["l"] = {
  "la","laba","laba-laba","labah","labak","labang","labas","label","laberang","labial",
"labil","labilitas","labium","labirin","labirintitis","laboran","laboratorium","laboris","labrak","labrakan",
"labrum","labu","labuh","labuhan","labun","labur","laburan","labut","lacak","lacakan",
"lacer","lacur","lacut","lada","ladah","ladak","ladam","ladan","ladang","ladangan",
"laden","ladeni","ladi","ladin","lading","ladu","ladung","lafal","lafalkan","laga",
"lagak","lagam","lagan","lagang","lagap","lagas","lagat","lagi","lagian","lago",
"lagon","lagu","laguan","laguh","laguna","laguri","lagut","lah","laha","lahab",
"lahad","lahak","lahan","lahang","lahap","lahapan","lahar","lahat","lahir","lahiran",
"lahiriah","lahu","lai","laici","laif","laik","lailat","lain","lainan","lais",
"laja","lajak","lajan","lajar","lajak","lajat","lajeh","lajur","lajuran","lak",
"laka","lakab","lakak","lakan","lakar","lakat","laknat","lakon","lakonan","lakonkan",
"lakri","lakrimasi","laksa","laksamana","laksamana","laksana","laksananya","laksatif","laksi","laksmi",
"lakson","laktase","laktasi","laktat","laktogen","laktometer","laktosa","laku","lakuan","lakum",
"lakuna","lakun","lakur","lala","lalah","lalai","lalaian","lalak","lalam","lalang",
"lalap","lalapan","lalar","lalas","lalat","lalat-lalat","lalau","lale","laler","lali",
"lalim","lalu","laluan","lalulintas","lama","laman","lamang","lamar","lamaran","lamas",
"lambai","lambaian","lambak","lamban","lambang","lambangan","lambar","lambas","lambat","lambatan",
"lambau","lambe","lambo","lambok","lambor","lambuk","lambung","lambungan","lambur","lamduk",
"lamin","lamina","laminasi","lampai","lampam","lampan","lampang","lampar","lampas","lampau",
"lampauan","lampeni","lampes","lampias","lampik","lampin","lampir","lampiran","lampis","lampit",
"lampok","lampon","lampor","lampu","lampung","lampus","lamun","lamunan","lamur","lamus",
"lamut","lanang","lanar","lanas","lanau","lanca","lancang","lancangan","lancar","lancaran",
"lancia","lancing","lancip","lanco","lancong","lancongan","lancur","lancuran","lancut","landa",
"landaan","landai","landaian","landak","landap","landas","landasan","landau","landbung","landir",
"landis","landrat","landu","landuk","landung","landur","landut","lang","langah","langak",
"langam","langau","langbow","langca","langendrian","langgai","langgam","langgan","langganan","langgar",
"langgaran","langgas","langgeng","langgengkan","langguk","langgung","langgut","langi","langir","langis",
"langit","langit-langit","langka","langkah","langkahan","langkai","langkan","langkap","langkas","langkat",
"langkau","langking","langkong","langkuas","langkup","langlang","langlai","langlang","langlung","langsa",
"langsar","langsat","langse","langsi","langsing","langsir","langsuir","langsung","langsungan","langsur",
"langut","laning","lanja","lanjak","lanjan","lanjang","lanjar","lanjaran","lanjat","lanji",
"lanju","lanjur","lanjuran","lanjut","lanjutan","lanon","lanolin","lansat","lanset","lansir",
"lansi","lansir","lanskap","lantah","lantai","lantak","lantakan","lantam","lantan","lantang",
"lantar","lantaran","lantas","lantasan","lantera","lantik","lantikan","lantin","lanting","lantip",
"lantun","lantunan","lantung","lantur","lanturan","lantut","lanun","lanut","lanyah","lanyak",
"lanyau","lanyat","laocu","laos","lap","lapa","lapah","lapak","lapakan","lapal",
"lapang","lapangan","lapar","laparan","lapas","lapel","lapis","lapisan","lapislazuli","lapo",
"lapok","lapor","laporan","lapuk","lapun","lapun","lar","lara","larah","larai",
"laraian","larak","laram","laran","larang","larangan","larap","laras","larasan","larat",
"larau","lari","larian","larik","larikan","laris","laron","larpa","laru","larung",
"larut","larutan","larutkan","las","lasa","lasah","lasak","lasat","laser","lasit",
"laskar","laso","lasu","lasuh","lasun","lasur","lat","lata","latah","latak",
"latam","latar","lataran","latas","lateks","laten","latensi","laterit","latif","latifah",
"latih","latihan","latis","latisan","latitudo","latma","latosol","latu","latuh","latuk",
"latung","latur","lau","lauk","laun","laung","laungan","laup","laur","laut",
"lautan","lawah","lawak","lawakan","lawan","lawanan","lawang","lawar","lawas","lawat",
"lawatan","lawazimah","lawe","lawi","lawina","lawon","layah","layak","layan","layanan",
"layang","layangan","layap","layar","layaran","layas","layat","layatan","layon","layu",
"layuh","layuk","layung","layur","layuran","layut","lazada","lazat","lazim","lazimkan",
"lazuardi","lebah","lebai","lebak","lebam","leban","lebang","lebap","lebar","lebaran",
"lebas","lebat","leber","lebih","lebihan","lebon","lebu","lebung","lebur","leburan",
"lecah","lecak","lecap","lecat","leceh","lecehkan","lecek","lecer","lecet","lecit",
"leco","lecok","lecut","lecutan","ledah","ledak","ledakan","ledas","ledek","ledeng",
"ledre","leduk","ledung","lega","legal","legalisasi","legalitas","legalitas","legam","legan",
"legap","legar","legasi","legat","legatif","legator","legenda","legendaris","legen","leger",
"legetan","legit","legitimasi","legitimasikan","legitimum","legium","lego","legok","legong","legu",
"legum","legunder","legung","leha","lehar","leher","leka","lekah","lekam","lekang",
"lekap","lekar","lekas","lekat","lekatan","lekeh","leket","lekit","leko","lekok",
"lekon","leksikal","leksikograf","leksikografi","leksikologi","leksikon","leksis","lektar","lektatur","lektor",
"lektur","leku","lekuk","lekukan","lekum","lekun","lekung","lela","lelah","lelai",
"lelak","lelaki","lelan","lelang","lelangan","lelap","lelar","lelas","lelat","lelatu",
"lele","leleh","lelehan","lelehkan","lelep","leler","leleran","lelewa","lelewan","leleyan",
"leli","lelo","leluang","leluasa","leluasanya","lelucon","leluhur","lelung","leluri","lelut",
"lem","lema","lemah","lemak","lemang","lemari","lemas","lemau","lembab","lembaga",
"lembah","lembak","lembang","lembar","lembaran","lembat","lembayung","lembek","lembel","lember",
"lembesir","lembidang","lembing","lembo","lemboh","lembora","lembu","lembung","lembur","lemburan",
"lembusir","lembut","lemes","lempai","lempam","lempang","lempar","lemparan","lempari","lempas",
"lempeni","lempit","lempok","lempong","lempoyang","lempuh","lempuk","lempung","lempur","lemu",
"lemudaya","lemuru","lemusir","lemut","lena","lenan","lencana","lencing","lencit","lenco",
"lencong","lencun","lenda","lendat","lendir","lendo","lendot","lendu","lendung","lendung",
"lendut","lengah","lengai","lengak","lengan","lengang","lengangan","lengap","lengar","lengas",
"lengat","lenggak","lenggana","lenggang","lenggang","lenggara","lenggayani","lengghat","lenggok","lenggokan",
"lenggor","lenggut","lengit","lengka","lengkai","lengkak","lengkang","lengkap","lengkapan","lengkara",
"lengkas","lengkat","lengkayan","lengker","lengket","lengkiang","lengking","lengkingan","lengkok","lengkong",
"lengkuas","lengkung","lengkungan","lengkur","lenglong","lengna","lengong","lengos","lengser","lenguh",
"lengung","lening","lenis","lenit","lenitrifikasi","lenja","lenjang","lenjar","lenjaran","lenjet",
"lenjing","lenong","lensa","lenso","lentaka","lentam","lentang","lentar","lentera","lentetik",
"lentik","lenting","lentok","lentong","lentor","lento","lentuk","lentum","lentung","lentur",
"lenturan","lenung","lenyap","lenyapnya","lenyapnya","lenyar","lenyap","leo","leot","lepa",
"lepah","lepak","lepang","lepan","lepap","lepas","lepasan","lepat","lepau","lepek",
"leper","lepet","lepi","lepra","leproseri","leptosira","lepu","lepuh","lepuk","lepur",
"lerah","lerai","leraian","lerak","lerang","lerap","lereng","lerengan","leret","leretan",
"lerik","lerok","lerot","les","lesa","lesah","lesak","lesan","lesap","lesat",
"lesau","lesbi","lesbian","lesbianisme","lesehan","leser","leset","lesi","lesir","lesit",
"lesitan","lesmana","lesmono","leson","lesot","lespang","lestari","lestarikan","lestung","lesu",
"lesung","lesut","leta","letah","letak","letakan","letal","letang","letargi","leteh",
"leter","lethargi","letih","letik","letis","letnan","leto","leto","letok","letoi",
"letos","letraset","letuk","letum","letung","letup","letupan","letur","letus","letusan",
"leukemia","leukosit","leukositosis","leukoderma","leukopenia","leukoplas","leukore","level","lever","leveransir",
"levitasi","levulosa","lewa","lewah","lewan","lewar","lewat","lewatan","lex","lezat",
"lezatnya","li","lia","liabilitas","liak","lian","liana","liang","liangan","liar",
"liarnya","lias","liat","libas","libasan","libat","libatkan","libel","liberal","liberalisasi",
"liberalisme","liberasi","liberator","liberia","libertas","liberti","liberosis","libidinalis","libido","libra",
"librari","librasi","libretis","libretto","libur","liburan","licak","licau","licek","licik",
"licin","licit","lid","lidah","lidah-lidah","lidas","lidi","lift","lifter","liga",
"ligamen","ligan","ligas","ligasi","ligas","ligat","ligatur","lignin","lignit","lignoselulosa",
"lihai","lihainya","lihar","lihat","lihatan","lik","lika","likantropi","likas","likasan",
"likat","likatnya","likir","liku","likuan","likuid","likuidasi","likuiditas","likur","likut",
"lila","lilah","lilai","lilak","lilang","lilau","lili","lilin","lilit","lilitan",
"lilla","lillah","lim","lima","liman","limang","limar","limas","limau","limbah",
"limbai","limbak","limban","limbang","limbangan","limbar","limbas","limbat","limbing","limbo",
"limbuk","limbung","limbur","limfa","limfatik","limfadenitis","limfosit","limit","limitasi","limnologi",
"limonase","limonit","limosin","limpa","limpah","limpahan","limpai","limpapas","limpas","limpasa",
"limpat","limpe","limpit","limpoh","limpua","limpung","limun","limun","limuran","limut",
"lin","lina","linang","linangan","linau","lincah","lincahnya","lincak","lincat","lince",
"lincir","lincun","lincung","lincut","linda","lindaka","lindang","lindap","lindas","lindasan",
"lindat","lindis","lindol","lindu","lindung","lindungan","lindungis","line","linear",
"linearitas","linen","ling","lingah","lingar","lingat","lingga","linggam","linggayoni","linggi",
"linggis","lingkap","lingkar","lingkaran","lingkas","lingkasan","lingking","lingkis","lingkup","lingkungan",
"linglung","lingsir","lingsiran","linimen","lining","linoleat","linoleum","linotip","lintah","lintang",
"lintangan","lintap","lintar","lintas","lintasan","lintat","lintib","linting","lintis","lintuh",
"linu","linuh","linyak","linyar","lio","liong","liontin","lipa","lipai","lipan",
"lipas","lipase","lipat","lipatan","lipatganda","lipid","lipit","liplap","lipoid","lipoma",
"lipoprotein","lipstik","lipu","lipur","lipura","liput","liputan","lir","lira","lirah",
"lirik","lirikan","liris","liru","lis","lisa","lisah","lisah","lisan","lisani",
"lisensi","lisina","lisol","lisosom","list","listah","listerek","listplang","listrik","listrikan",
"lisus","lisut","litah","litak","litani","liter","literasi","literat","literatur","litium",
"litografi","litoklas","litologi","litoral","litosfer","litotes","litu","liturgi","liturgis","liu",
"liuk","liukan","liung","liut","liwan","liwat","liwet","lo","loak","loakan",
"loba","lobak","loban","lober","lobi","lobis","lobus","locak","locek","loco",
"locok","locokan","locot","lodan","lodeh","lodoh","lodok","lodong","lodong","loga",
"logam","logaritma","logat","logia","logika","logis","logisitas","logistik","logogram","logograf",
"logografi","logogram","lohor","lohu","loi","lojak","lojan","loji","lok","loka",
"lokakarya","lokal","lokalisasi","lokalitas","lokan","lokanta","lokap","lokasi","lokatif","lokator",
"lokek","loket","loki","lokio","loklok","lokman","lokomasi","lokomobil","lokomotif","lokos",
"loksun","loktong","lokusi","lokut","lolak","lolan","loloh","lolohkan","lolos","lolosan",
"lomba","lomban","lombok","lomot","lompat","lompatan","lompong","lompok","loncat","loncatan",
"lonceh","loncer","loncing","lonco","loncos","loncot","londang","londe","londoh","londong",
"long","longan","longat","longdrasi","longgar","longgarkan","longggok","longgokan","longgor","longis",
"longitude","longkang","longkong","longlong","longo","longok","longong","longsor","longsoran","longsuis",
"lonjak","lonjakan","lonjong","lonjor","lontar","lontaran","lonte","lontok","lontong","lontor",
"lonyah","lonyai","lonyak","lop","lopa","lopak","lopak-lopak","lope","lopek","loper",
"lopis","lopis","lopor","lor","lorah","loran","lorat","lorber","loreng","lori",
"lorong","lorot","lorotan","los","lose","losen","losi","losin","losmen","losmen",
"loso","losoh","losokan","losong","lot","lota","lotak","lotar","lotas","lotek",
"loteng","lotere","loti","lotik","lotis","loto","lotong","lotot","lotre","lotrong",
"lotus","low","lowak","lowangkan","lowas","lowat","lowe","lowoh","lowok","lowong",
"lowongan","loya","loyal","loyalis","loyalitas","loyang","loyong","loyor","lu","lua",
"luah","luahan","luak","lual","luang","luangan","luap","luapan","luar","luaran",
"luar-biasa","luas","luasan","luat","luban","lubang","lubangan","lubuk","lubur","lucu",
"lucunya","lucunkan","lucup","lucut","lucutan","ludah","ludahan","ludas","ludes","luding",
"ludu","ludruk","luh","luha","luhak","luhur","luhurkan","lui","luik","luji",
"luk","luka","lukah","lukas","lukat","lukeh","lukis","lukisan","luku","lukuh",
"lukum","lukun","lukut","luli","lulu","luluk","lulum","lulur","lulus","lulusan",
"lulut","lum","lumai","lumalar","lumang","lumar","lumas","lumasan","lumat","lumatan",
"lumayan","lumban","lumbar","lumber","lumbung","lumbu","lumer","lumi","luminans","luminansi",
"luminesensi","luminisensi","luminositas","luminoskop","lumir","lumpai","lumpat","lumpuh","lumpuhkan","lumpuk",
"lumpung","lumpur","lumpuran","lumrah","lumsir","lumsum","lumur","lumuran","lumus","lumut",
"lumutan","lun","luna","lunak","lunakkan","lunas","lunasan","lunasin","lunau","luncas",
"luncat","luncit","luncu","luncur","luncuran","luncung","lunda","lundang","lundas","lundu",
"lundung","lung","lungguh","lungguhan","lungkang","lungkum","lunglai","lunglung","lungo","lungsar",
"lungse","lungsen","lungsin","lungsor","lungun","lunjak","lunjur","lunta","lunta-lunta","luntang",
"luntang-lanting","luntur","lunturan","lunyah","lunyau","lup","lupa","lupat","lupi","lupis",
"luplap","lupu","lupuh","lupuk","lupung","lupus","lura","lurah","lurahan","lurik",
"luru","luruh","lurukan","lurus","luruskan","lurut","lurutan","lus","lusa","lusin",
"lusinan","luslus","lusuh","lut","luti","lutut","luwak","luwar","luwas","luwing",
"luyak","luyut",
  },
  ["m"] = {
  "ma","maab","maaf","maam","maamum","maani","maasik","mabak","mabar","mabat",
"mabet","mabuh","mabuk","mabuk-mabukan","mabung","mabur","mabut","maca","macah","macak",
"macam","macaman","macan","macanan","macat","mace","maced","macek","macem","macer",
"maceh","macet","macis","maco","macu","macul","mada","madah","madali","madam",
"madani","madar","madat","madat-madat","madi","madia","madidihang","madik","madinah","madit",
"madu","madukara","madun","madunya","madunya","madur","madura","madya","madyatama","maesobi",
"maestro","mafia","mafhum","mafi","mafit","mafsadat","mag","maga","magadi","magang",
"magel","magersari","magis","magister","magistrat","magma","magnesium","magnet","magnetik","magnetis",
"magnetisme","magnetit","magneto","magnetometer","magneton","magnetosfer","magnitudo","magnolya","magrib","magrur",
"magun","magung","maha","mahabah","mahadewa","mahadewi","mahadika","mahaduta","mahaguru","mahahak",
"mahakuasa","mahal","mahalan","mahameru","mahamulia","mahamuni","mahang","mahaparana","mahapatih","mahaputra",
"mahar","maharaja","maharani","mahardika","maharis","maharishi","mahasiswa","mahasiswi","mahasuci","mahatma",
"mahia","mahir","mahirat","mahisa","mahkamah","mahkota","mahmudah","mahoni","mahpar","mahram",
"mahsul","mahtab","mahung","mahup","mahwu","mai","maia","maiat","maib","maidah",
"maido","maiing","main","mainan","mait","maja","majah","majak","majalah","majal",
"majalis","majam","majan","majasi","majedub","majelis","majemuk","majene","majer","majesi",
"majet","majetik","maji","majid","majik","majikan","majir","majis","majit","maju",
"majuj","majun","majung","majunya","majunya","mak","maka","makabre","makad","makadam",
"makadas","makae","makah","makaid","makan","makanan","makani","maka","makanya","makam",
"makan","makan-makan","makar","makara","makaroni","makas","makasar","makat","makcik","makda",
"makdan","make","makelar","maket","makhdum","makhluq","makhlus","makhmal","maki","makian",
"makimat","makin","makis","makit","maklat","maklum","maklumat","maklun","makna","maknanya",
"maknawi","maknet","maknuh","mako","makos","makrab","makramat","makrifat","makrodari","makro",
"makrobisme","makroekonomi","makrofag","makrofotografi","makrohistori","makrokosmos","makrolat","makromolekul","makron","makrosit",
"makruh","makruf","maksi","maksiat","maksila","maksim","maksimal","maksimalisasi","maksimum","maksum",
"maksud","maksudnya","maksum","maksur","makta","maktab","maktub","makul","makula","makulat",
"makultur","makun","makur","makut","makuta","makwa","mal","mala","malah","malahan",
"malaikat","malam","malaman","malan","malang","malap","malapetaka","malar","malari","malaria",
"malas","malau","maleman","maligai","malih","maliki","malim","maling","malis","malu",
"malunya","malunya","malur","malut","malwa","mama","mamah","mamahan","mamai","mamak",
"mamanda","mamang","mamat","mambang","mambo","mambu","mambruk","mame","mami","mamil",
"mamlakat","mamo","mamografi","mamologi","mampat","mampir","mampis","mampu","mampunya","mampus",
"mamu","mamun","mamut","man","mana","manakala","manakan","manajemen","manajer","manajerial",
"manasik","manasuka","manat","manau","mancanegara","mancawarna","manci","mancing","mancung","mancur",
"mancuran","manda","mandala","mandam","mandat","mandataris","mandau","mandek","mandi","mandian",
"mandibel","mandiri","mandirinya","mandir","mandis","mando","mandolin","mandor","mandraguna","mandril",
"mandul","mandulnya","mandum","mandur","maneken","manfaat","manga","mangan","mangar","mangau",
"mangga","manggar","manggis","manggit","manggulan","manggung","manggus","mangi","mangir","mangkah",
"mangkak","mangkas","mangkat","mangkel","mangkir","mangkubumi","mangkuk","mangkung","mangkur","mangku",
"manglingi","manglung","mangmung","mangsa","mangsi","mangun","mani","maniam","manic","manik",
"manik-manik","manikam","manila","maning","manipulasi","manipulatif","manipulator","manis","manisan","manisnya",
"manisnya","manit","manivesto","manja","manjakan","manjang","manjapada","manjer","manji","manjur",
"manjurnya","manol","manometer","manon","manor","manset","mansi","mansukh","manta","mantan",
"mantap","mantapkan","mantar","mantara","mantas","mantel","mantera","manti","mantik","mantiki",
"mantis","mantisa","manto","mantra","mantram","mantri","mantu","mantun","manu","manual",
"manufaktur","manuk","manula","manunggal","manusia","manusiawi","manusiamu","manusiat","manuskrip","manut",
"manya","manyan","manyar","manya","manyat","manyu","map","mapan","mapannya","mapas",
"mapel","mar","mara","marabahaya","marah","marah-marah","marahan","marahni","marak","marakas",
"maral","maram","maran","marang","marangan","maranta","marap","maras","marat","maraton",
"marawis","marbabu","marbel","marbot","marcel","mardan","mare","marem","maret","marga",
"margarin","margasatwa","marghrib","margin","marginal","marginalisasi","mari","mariah","marika","marimba",
"marina","marinir","marinyo","maris","marit","maritim","maritofon","marjan","marka","markas",
"markis","markisa","markonis","marmer","marmot","marna","maro","maron","maros","mars",
"marsekal","marsipan","marsise","marsul","martabak","martabat","martabur","martandang","martil","martini",
"martir","maru","marung","marut","marus","marut","marwah","marwas","mas","masa",
"masad","masai","masak","masakan","masakan","masalah","masalahnya","masallah","masam","masan",
"masangan","masap","masarakat","masase","masat","masdar","masehi","masekit","maser","maserat",
"maserasi","masif","masih","masin","masing","masing-masing","masinis","masip","masitah","masjid",
"masjum","maskapai","maskara","maskat","masker","masket","maskon","maskulin","maskulinitas","maskumambang",
"maslahat","maslow","masmudar","masna","maso","masohi","masokisme","masokistis","mason","masoret",
"maspira","masra","masri","masruk","massa","massal","masseh","master","masteri","mastigasi",
"mastik","mastitis","mastodon","mastoid","mastoiditis","masturbasi","masuk","masukan","masuknya","masul",
"masum","masung","masur","masut","mata","mata-mata","matahari","matador","matali","matan",
"matang","matangan","matanya","matar","matat","matematika","matematikus","matematikal","matematis","materi",
"material","materialis","materialisme","materialistik","materialitas","maternitas","mati","matian","matinya","matinya",
"matine","matra","matras","matres","matriarkal","matriarkat","matriks","matrikulasi","matrimoni","matris",
"matrona","matros","matsnawi","mattu","matuju","matun","matur","maturitas","matus","mau",
"mauduk","mauizah","maukuf","maula","maulana","maulhayat","maulid","maulud","maun","maung",
"maunya","mauquf","maur","maut","maunya","maunya","mawa","mawadah","mawar","mawas",
"mawasdiri","mawat","mawin","mawon","mawu","mawur","maxi","may","maya","mayam",
"mayang","mayangan","mayapada","mayar","mayas","mayat","mayatnya","mayit","mayo","mayones",
"mayor","mayoritas","mayos","mayung","mazas","mazbah","mazhab","mazkur","mazluk","mazmaz",
"mazmur","mazmumah","mazul","meander","mebel","medali","medalion","medan","medar","medas",
"medebat","media","median","mediasi","mediator","medic","medik","medikasi","medikolegal","medikus",
"medina","medis","meditasi","meditatif","medium","medok","medula","medusa","medusi","medut",
"mega","megafon","megah","megahnya","megah-megah","megak","megal-megol","megalitik","megalitikum","megalomania",
"megalopolis","megameter","megang","megantara","megat","megaton","megavolt","megawatt","meger","meget",
"mei","meises","meja","mejam","mejan","mejelis","mejen","mek","mekanik","mekanika",
"mekanis","mekanisasi","mekanisme","mekanisistis","mekar","mekarnya","mekik","mekis","meko","mekonium",
"mekos","mel","mela","melabuh","melah","melaka","melambung","melamin","melaminasi","melampaui",
"melanitis","melankoli","melankolis","melanin","melanisme","melanit","melanoma","melanosit","melantun","melar",
"melas","melat","melati","melayu","mele","meleh","melek","melempem","meleng","melengak",
"melengit","melesat","meleset","meleter","meli","melia","melinjo","melis","melit","melo",
"melodi","melodik","melodios","melodis","melodrama","melodramatik","melok","melon","melongo","melonjak",
"melotot","melu","meluk","melulu","melulu","melum","melun","melur","melut","mem",
"memar","memat","memba","membaca","membahagiakan","membakar","membam","membangun","membe","member",
"membran","memento","memetik","memfari","memo","memoir","memorabilia","memorandum","memori","memorial",
"mempan","mempelai","mempelas","memper","mempis","mempis","mempunyai","mempuru","memudar","memur",
"mena","menak","menalu","menang","menangis","menara","menat","mencak","mencak-mencak","mencari",
"menceh","mencelat","mencit","mencla-mencle","menclok","mencok","mencos","mencot","menda","mendak",
"mendali","mendalun","mendam","mendapa","mendaring","mendat","mendel","mendiang","mendikai","mending",
"mendira","mendoan","mendong","mendora","mendorat","mendu","mendung","mendut","mene","meneng",
"menengah","mener","mengeh","menges","mengga","menggeh-menggeh","mengger","menggi","menggot","mengkah",
"mengkal","mengkap","mengkel","mengkidu","mengking","mengkirai","mengkirap","mengkuang","mengkudu","mengkung",
"mengkung","mengon","mengor","mengot","mengu","menhir","meni","menidai","menika","menikah",
"mening","meninges","meningitis","meningoensefalit","menir","menis","meniskus","menit","menitah","menjangan",
"menjapa","menjelma","menjelman","menjelujur","menjila","menjur","menjuru","menkan","menkeu","menko",
"menlu","menon","menopause","mens","mensrea","menstruasi","mensual","menta","mentah","mental",
"mentala","mentang","mentang-mentang","mentara","mentas","mentaus","mentega","mentek","menteng","menter",
"mentera","menteri","menteril","mentertawakan","mentigi","mentika","mentiko","mentil","mentimun","mentis",
"mentit","mentol","mentolo","menton","mentontok","mentop","mentor","mentora","mentos","mentul",
"mentul","mentung","mentur","menu","menuai","menulis","menung","menunggu","menur","menurut",
"menurun","menurunnya","menyanyi","menye-menye","menyuk","meong","mepet","mera","merah","merah-merah",
"merahmati","merahomi","merak","merakan","merak-merak","meram","merambung","meran","merana","merang",
"meranggang","meranggi","merangkok","merangu","meranti","merat","merata","merawal","merayakan","merayu",
"merbah","merbau","merbot","merbul","merca","mercapada","mercon","mercubu","mercu","mercusuar",
"merdadu","merdeka","merdekakan","merdesa","merdu","merdunya","merdun","merdui","mere","merek",
"mereka","merekan","merem","merembah","meret","meret","merga","mergan","merger","mergut",
"meriam","meriah","meriahnya","meriam","meridien","meridian","meridional","merih","merik","merikan",
"merina","mering","meringis","meringis","merintang","merintis","meris","merit","merkah","merkuri",
"merkurium","merkuro","merlilin","merlow","merpati","merpauh","merpisang","merpu","merput","merserasi",
"mersi","mertamu","mertua","meru","meruah","meruak","merual","meruap","meruapi","meruat",
"merubut","merudah","merujuk","merukan","merukun","merul","merumit","merumus","merun","merungguh",
"merunggu","merungut","meruniah","merunut","merusa","merusuk","merut","meruyup","mes","mesa",
"mesal","mesan","mesara","mesat","mesem","mesera","mesigit","mesik","mesin","mesina",
"mesinketik","mesiu","meski","meskipun","meskof","mesmerisme","meso","mesoderm","mesofit","mesofit",
"mesofil","mesokarp","mesolitikum","mesometeorologi","mesomorf","meson","mesopause","mesosfer","mesosfer","mesotermik",
"mesozoikum","mesra","mesraan","mesta","mesti","mestika","mestinya","mesu","mesui","mesum",
"mesumnya","mesura","mesut","meta","metabolisme","metabolit","metabolisme","metafase","metafisik","metafisika",
"metafora","metaforis","metafosfat","metagenesis","metah","metai","metak","metakarpal","metakognisi","metal",
"metalinguistik","metalis","metalisasi","metalografi","metaloid","metalurgi","metamorf","metamorfosis","metana","metanol",
"metantesis","metaplasma","metasenter","metastasis","metatarsal","metatesis","metatetik","metatonik","metawari","metazuikum",
"metel","mete","metek","meteng","meteo","meteor","meteorit","meteorogram","meteorograf","meteorologi",
"meteorologis","meter","meterai","meteran","methol","metil","metilasi","metode","metodik","metodik",
"metodis","metodologi","metonimia","metonimik","metopon","metra","metres","metrik","metris","metro",
"metrologi","metronom","metropolis","metropolitan","metroragia","metua","meunasah","mewah","mewahnya","mewah-mewah",
"mewak","mewar","mewek","meweh","mezanin","mezosopran","mi","mia","miak","mialgia",
"miana","miang","miap","miar","mias","miasma","midak","midar","midas","midi",
"midik","midis","midon","miduk","midur","migrain","migran","migrasi","migren","mihrab",
"mihun","mijil","mika","mikad","mikat","mikir","mikologi","mikologi","mikoflora","mikoprotein",
"mikoriza","mikro","mikrob","mikrobiolog","mikrobiologi","mikrobisida","mikrobus","mikrocek","mikrodari","mikroekonomi",
"mikroelektronik","mikroevolusi","mikrofarad","mikrofilm","mikrofis","mikrofon","mikrofotografi","mikrograf","mikrografi","mikrogram",
"mikrohistori","mikroinstruksi","mikrokernal","mikroklima","mikrokosmos","mikrolat","mikrolit","mikromania","mikrometeorologi","mikrometer",
"mikrometri","mikron","mikroorganisme","mikropaleontolog","mikropaleontologi","mikropengolah","mikropipet","mikroprosesor","mikrosit","mikroskop",
"mikroskopis","mikrotom","mikroton","mikrovili","mikrowat","mikser","mil","mila","milad","mili",
"miliar","miliarder","miliampere","milibar","miligram","milik","milikan","miliknya","miliku","milimeter",
"milimikron","milimol","milineal","milisi","militan","militansi","militer","militisme","milivolt","milu",
"milyar","milyun","mim","mimai","miman","mimang","mimbar","mimesis","mimetic","mimik",
"mimikri","mimis","mimit","mimosa","mimpang","mimpi","mimpian","mimpis","mimpun","mimur",
"min","mina","minat","minatan","minatku","minatnya","minatnya","minau","minda","mindah",
"mindai","mindalak","mindel","mindi","mindik","minding","mindo","mindu","mineral","mineralisasi",
"mineralogi","minggat","minggir","minggu","mingguan","minhaj","mini","miniatur","minibus","minikar",
"minim","minimal","minimalisasi","minuman","minum","minum-minuman","minumnya","minus","minut","minuta",
"minyak","minyakan","mion","mioma","miop","miopia","miosis","miosit","miositosis","mipis",
"mipit","mira","mirah","mirai","mirat","miratullah","miri","mirif","mirig","mirik",
"miring","miringkan","miris","mirisnya","miristikin","mirisnya","mirit","miru","mirun","mis",
"misa","misai","misal","misalnya","misal","misan","misat","misi","misil","misionaris",
"misit","miskal","miskin","miskinnya","miskram","mislai","miso","misofobia","misoginis","misogini",
"mispel","misra","mister","misteri","misterius","mistik","mistis","mistisisme","mistra","mistar",
"misuari","misuh","misul","misut","mit","mita","mitai","mitali","mitasi","mite",
"mitigasi","mitra","mitraliur","mitis","mito","mitogen","mitologi","mitologis","mitosis","mitra",
"mitranya","miu","miur","miwon","miza","mizan","mizul","mo","moa","moat",
"mobi","mobil","mobilitas","mobilisasi","mobilisir","mobi","mobrok","mocok","mod","moda",
"modal","modalan","modalitas","mode","model","moderat","moderasi","moderator","modern","modernisasi",
"modernisme","modernitas","modestia","modifikas","modifikasi","modifikator","modis","modiste","modul","modular",
"modulasi","modulator","modul","modus","mof","mofet","mofeta","moga","moga-moga","mogok",
"moha","mohair","mohon","mohonan","mohor","mohun","mohur","moi","mojang","moke",
"moksa","moksh","mol","mola","molar","molaritas","molas","molase","molek","molekul",
"molekular","moler","moles","molestasi","moli","molibden","molibdenum","moloku","molo","molor",
"molos","momen","momenopaus","momentum","momi","momo","momok","momol","momon","momon",
"monad","monarki","monarkisme","monas","monasit","monat","moncor","mondar-mandir","monde","mondo",
"mondok","mondokan","mondoknya","monel","moneter","mong","monggo","monggol","monggor","mongko",
"mongkor","mongkrong","mongol","mongolisme","monisme","monit","monitor","mono","monobasik","monofagi",
"monofobia","monofon","monofonik","monogami","monogram","monograf","monografi","monogram","monogini","monokel",
"monokini","monoklin","monoklorida","monokotil","monokultur","monokrom","monokromatik","monokromatis","monolay","monolayar",
"monolit","monolitik","monolog","monomania","monomer","monometalism","monometalik","mononukleosis","monopoli","monopolis",
"monopoli","monopsoni","monorel","monosakarida","monoseluler","monosikel","monosilabel","monosodium","monoteisme","monoteistis",
"monotipe","monoton","monoksida","monoseluler","monospermi","monsoon","monster","monstruositas","monstruis","montase",
"montok","montoknya","montor","monumen","monumental","monyet","monyong","monyor","monyos","mora",
"moral","moralis","moralitas","moralisme","morat-marit","moratorium","morbiditas","mordan","more","morel",
"morena","mores","morf","morfem","morfemis","morfemik","morfina","morfem","morfofonem","morfofonemik",
"morfogenese","morfogenesis","morfologi","morfologis","morfin","mori","moribund","morion","mormon","moro",
"morong","moron","morong","moros","morotai","morsel","mortadel","mortalis","mortalitas","mortalku",
"mortir","mosa","mosaik","mose","mosh","mosi","mosit","moske","moskito","mossa",
"mota","motel","motif","motivasi","motivasi","motivator","moto","motor","motorik","motorisasi",
"motoris","motto","mowa","moyang","moyangmu","mu","mua","muafakat","muai","muakan",
"mual","mualaf","mualim","muamalat","muanas","muara","muat","muatan","muazam","muazin",
"muba","mubadalah","mubadir","mubah","mubalig","mubaligah","mubazir","mubun","muda","mudah",
"mudahan","mudahan-mudahan","mudahnya","mudahkan","mudahnya","mudat","mudi","mudigah","mudik","mudin",
"mudra","mudun","muezzin","mufakat","mufarik","mufasir","mufti","mug","muger","muhabah",
"muhajir","muhajirin","muhal","muhalil","muhammadiyah","muharab","muharram","muhibah","muhib","muhid",
"muhit","muhyi","muhur","mui","muibat","muit","mujahid","mujahidah","mujarabat","mujarab",
"mujarad","mujari","mujasamah","mujizat","mujur","mujurnya","mujurs","muka","mukaddas","mukadimah",
"mukah","mukalaf","mukalis","mukam","mukanya","mukaram","mukarnas","mukat","mukena","muki",
"mukim","mukimin","mukis","mukjizat","mukmin","mukminat","muko","mukosa","mukositis","muktamar",
"muktamat","mukti","muku","mukun","mukus","mula","mulai","mulanya","mulanya","mulas",
"mulat","mulazamah","mule","mules","muli","mulia","muliakan","mulianya","muliawan","mulik",
"mulim","mulsa","multi","multibahasa","multidimensional","multidimensi","multifaset","multifungsi","multiguna","multijutawan",
"multikultural","multikulturalisme","multilateral","multimedia","multimiliarder","multimilioner","multinasional","multipel","multiplex","multiplikasi",
"multiplikator","multirasial","multiseluler","multitalenta","multitasking","multivitamin","muluk","mulur","mulus","mulusnya",
"mulut","mulyat","mulyanya","muman","mumbang","mumbul","mumbung","mumi","mumifikasi","mumu",
"mumpuni","mumpung","mumpul","mumuk","mumul","mumur","mumut","munajat","munajid","munakarat",
"munakahat","munas","munasabah","munasik","muncang","muncat","muncrat","muncul","munculnya","muncung",
"muncung","muncung-muncung","munda","mundam","mundar-mandir","mundu","mundur","mundurnya","mung","munggah",
"munggi","munggil","munggur","mungkin","mungkinnya","mungkir","mungkur","mungkus","mungsi","mungu",
"mungut","munib","munif","munisipal","munisi","munjung","munkar","munsyi","muntah","muntahan",
"muntaha","muntah-muntah","muntat","muntok","muntung","muntu","muqaddam","muqaddam","muqim","mur",
"mura","murad","murah","murahan","murahnya","murahnya","murai","murakab","murakabi","muram",
"muramnya","murang","muras","murat","murbai","murba","murbaut","murd","murdan","murer",
"mures","murgi","muri","murid","muridnya","muring","muris","murit","murka","murni",
"murnikan","murninya","mursal","mursalin","mursyid","murtad","murung","murus","muruah","murun",
"murup","murus","mus","musa","musabab","musabaqah","musafir","musang","musara","musat",
"museologi","museum","mushaf","mushala","musibah","musik","musikal","musikalisasi","musikan","musikolog",
"musikologi","musikus","musim","musiman","musir","musis","musisi","muskil","muslihat","muslim",
"muslimat","muslimin","musna","musnah","musnahkan","musola","muson","muson","mustahak","mustahil",
"mustajab","mustaka","mustakim","mustami","mustang","mustar","mustika","musu","musuh",
"musuhan","musuhmu","musyawarah","musyawarat","musykil","musyrik","musyrikin","musyrif","musytari","mut",
"muta","mutabar","mutah","mutakhir","mutalaah","mutalak","mutan","mutasi","mutat","mutawif",
"mutela","mutia","mutiara","mutih","mutilasi","mutlak","mutlaknya","mutu","mutunya","mutung",
"muu","muwafat","muwahid","muwakkil","muwarah","muwari","muwir","muza","muzah","muzaki",
"muzakarah","muzamil","muzium","muzu",
  },
  ["n"] = {
  "na","nabi","nabiah","nabu","nacho","nada","nadanya","nadar","nadi","nadir",
"nadis","nadit","nadu","nadul","nafas","nafi","nafiri","nafkah","nafsi","nafsu",
"nafsunya","naftalena","naftol","naga","naganya","nagam","nagari","nagasari","nah","nahak",
"nahas","nahi","nahu","nahu","nai","naif","naik","naikan","naiknya","naiknya",
"naim","nain","nais","najat","najis","nak","naka","nakal","nakalnya","nakas",
"nakoda","naktah","nal","nala","nalam","nalar","nalarnya","nali","nalih","nalis",
"nalo","nalu","nalun","nam","nama","namanya","namaku","namamu","naman","namanya",
"namat","namnam","nampak","nampaknya","nampan","namu","namun","namun-namun","nan","nana",
"nanah","nanahan","nanap","nanar","nanas","nanda","nandi","nandung","nang","nangka",
"nangkring","nangui","nani","nanis","nano","nanogram","nanometer","nanosekon","nanoteknologi","nanti",
"nantian","nantikan","nantinya","nantinya","nanung","nanut","nap","napa","napal","napas",
"napasan","napek","napet","napi","napit","napsu","napu","napuh","nur","nara",
"narapidana","narasumber","narasi","naratif","naratologi","narcis","narkolepsi","narkomania","narkose","narkotba",
"narkotik","narkotika","narkotisme","narpati","narsisisme","narsistik","narsisme","narsistis","naru","nas",
"nasab","nasabah","nasal","nasalisasi","nasan","nasar","nasat","nasehat","nasek","nasgor",
"nasi","nasib","nasibnya","nasional","nasionalis","nasionalisme","nasionalitas","nasion","nasit","naskah",
"nasmak","naso","nasofaring","nasofaringitis","nasolabia","naspa","naspu","nasrani","nasti","nastik",
"nasu","nasur","nat","nata","natal","natalitas","natar","natas","nativisme","nativitas",
"natrium","natrolit","natura","natural","naturalisasi","naturalis","naturalisme","naturalistik","naturi","natus",
"nau","naung","naungan","naupak","nautik","nautika","nautilus","navigasi","navigasi","navigabel",
"navigasi","navis","nawa","nawaitu","nawak","nawan","nawang","nawu","nawung","nayaka",
"nayam","nayan","nayap","nayau","nayu","nayun","nazam","nazar","nazat","nazir",
"nazir","neala","nebula","nebulisator","nebulizer","nebula","necis","nefoskop","negasi","negatif",
"negatifnya","negativisme","negeri","negeriku","negerinya","negosi","negosiasi","negosiator","negram","negrid",
"negritoid","negro","negroid","negu","nek","neka","nekad","nekat","nekel","neko-neko",
"nekrolog","nekrologi","nekromansi","nekropolis","nekropsi","nekrosis","neksus","nektar","nektarin","nekton",
"nelayan","nelayanmu","nem","nematoda","nematologi","nemu","nenas","nenda","nenek","nenekku",
"nenen","neneng","nener","nenes","neng","nenung","neo","neofit","neofobia","neogetik",
"neoklasik","neoklasisisme","neolitik","neolitikum","neologisme","neon","neonal","neonatus","neontologi","neoplasma",
"neoplatonisme","neoprena","neoterik","neotenik","neotip","neozoikum","nepotisme","neptunium","neptunus","neraka",
"neraka","nerit","neritik","neritoid","neroli","neron","neru","neraca","neraka","neraka",
"nerit","neritik","neritoid","neroli","neron","neru","neraca","neraka","nes","nesan",
"net","neter","neto","netra","netral","netralisasi","netralitas","netralisir","netron","netu",
"neurasid","neurastenia","neuritik","neuritis","neurobiologi","neurofisiologi","neuroglia","neurolog","neurologi","neurologis",
"neuroma","neuron","neuropati","neuropsikiatri","neuropsikologi","neurosis","neuston","neutret","neutrino","neutron",
"newton","ney","ng","ngabalin","ngabuburit","ngaco","ngada-ngada","ngadu","ngakak","ngalau",
"ngambek","ngamen","ngantuk","ngarai","ngasuh","ngebut","ngeden","ngeri","ngeri-ngeri","ngeri-ngeri",
"ngiler","ngilu","ngit-ngit","ngoceh","ngok-ngok","ngoyo","ngung-ngung","ni","nia","niat",
"niatan","niatnya","niatku","nibung","nica","nicer","nici","nidera","nidi","nidul",
"nifas","nifak","nih","nihil","nihilisme","nihilis","nihnya","nik","nika","nikah",
"nikahan","nikel","nikit","nikmat","nikmatnya","nikmat","nikotin","niktasi","niktifobi","niktifobia",
"nikto","niktografi","niktonasti","niktopelagia","nila","nilai","nilainya","nilam","nilar","nilas",
"nilau","nili","nils","nilu","nim","nimat","nimbat","nimfa","nimis","nimpang",
"nimpu","nimum","nina","ninabobo","nina-bobokan","ninas","nincak","nindak","ninding","ning",
"ningrat","nini","ninik","ninit","ninjau","ninja","ninta","nipas","nipah","nipis",
"nir","nira","nirai","niram","niran","niras","nirat","nirbaya","nirbi","nirda",
"nirdaya","nirganda","nirguna","nirhayati","nirih","nirim","niring","nirka","nirlaba","nirmala",
"nirmana","nirmanusia","nirnyawa","nirpada","nirrasa","nirrupa","nirsa","nirsatu","nirsatria","nirsuara",
"nirtangan","niruk","nirung","nirut","nirvana","nirwana","nis","nisa","nisab","nisan",
"nisanya","nisap","nisat","nisbi","nisca","niscaya","nisir","niskala","niskram","nisman",
"nispa","nista","nistan","nistanya","nistagmus","nistik","nisu","nisung","nisut","nit",
"nitit","nitra","nitrat","nitrasi","nitrifikasi","nitril","nitrit","nitro","nitrobenzena","nitrofil",
"nitrogen","nitrogliserin","nitroselulosa","niur","niva","nivet","niwah","niyat","niyaw","nizam",
"no","nobat","nobel","nobile","noblitas","nobun","nocer","noda","nodanya","nodul",
"nodulus","noer","noet","noetik","nofobia","noga","noh","noja","nok","nokas",
"noket","nokia","noktah","noktunal","nokturnal","nokturno","nol","noli","nom","noma",
"nomad","nomaden","nomenklatur","nomer","nominal","nominalisme","nominasi","nominatif","nominator","nomine",
"nomogram","nomografi","nomologi","nomor","nomos","non","nona","nonaktif","nonalkohol","noname",
"nonblok","nonce","noncom","nonderajat","none","nonek","nonenol","nonetis","nonfiksi","nonfisik",
"nong","nongkrong","nonhistori","noni","nonindustri","nonintervensi","nonius","nonkapitalis","nonkomersial","nonkomunikan",
"nonkomunis","nonkonvensional","nonkooperasi","nonkooperatif","nonlinear","nonlogam","nonmilitan","nonmiliter","nonmoral","nonmuslim",
"nonok","nonol","nonon","nonpemerintah","nonpribumi","nonproduktif","nonprofesional","nonprofit","nonprotein","nonreguler",
"nonresiden","nonsens","nonstandar","nonsimbolik","nonsistematik","nontani","nonteknis","nonverbal","nonvisual","noo",
"noosfer","nop","nopember","norak","noraknya","norit","norma","normanya","normal","normalitas",
"normalisasi","normatif","norobi","nusa","nosandra","nose","nosel","nosofobia","nosogeni","nosologi",
"nostalgia","nostalgik","not","nota","notabene","notaris","notasi","noter","notifikasi","notis",
"noto","notok","notula","notulan","notulasi","notulen","notulensi","novasi","novel","novelet",
"novelis","novena","november","novis","novokain","nu","nuansa","nuansanya","nuari","nubah",
"nubat","nubi","nubuat","nudas","nudik","nudis","nudisme","nufus","nugraha","nujum",
"nukat","nuker","nukil","nukilan","nukleolus","nukleon","nukleotida","nukleus","nuklir","nuksani",
"nul","nula","nuli","nulis","nult","num","numat","numbat","numeral","numerasi",
"numerik","numeris","numerologi","numismatik","numu","nun","nunang","nung","nunggal","nunggu",
"nunjak","nunjam","nunsius","nunung","nur","nurani","nuraninya","nurbaya","nurdin","nuri",
"nuriah","nuriah","nurnia","nursani","nurul","nurut","nusa","nusantara","nusantaraku","nusyuz",
"nut","nutasi","nutfa","nutfah","nutrien","nutrisi","nutrisionis","nutu","nutul","nutun",
"nuwuh","nyah","nyai","nyak","nyala","nyalakan","nyalannya","nyalang","nyali","nyalinya",
"nyaman","nyamannya","nyaman-nyaman","nyambung","nyamuk","nyamur","nyana","nyanyi","nyanyian","nyanyuk",
"nyap-nyap","nyaring","nyaringnya","nyaris","nyata","nyatakan","nyatanya","nyatuh","nyawa","nyawanya",
"nyedar","nyenyak","nyenyak-nyenyak","nyenyai","nyenyat","nyenyeh","nyenyeri","nyeri","nyerinya","nyiru",
"nyiur","nyolo","nyoman","nyong","nyonya","nyonye","nyonya-nyonya","nyonyeh","nyureng","nyut-nyut",
  },
  ["o"] = {
"o","oase","oasis","obah","obahan","obak","obal","obangan","obar","obat",
"obatan","obati","obat-obatan","obatku","obatmu","obatnya","obeng","oberek","obero","obesitas",
"obituari","objek","objekan","objeknya","objektif","objektifitas","objektivisme","objektivitas","oblak","oblang",
"oblak","oble","oblong","oboe","obok","obok-obok","obor","oboran","obos","obrak-abrik",
"obral","obralan","obras","obrol","obrolan","obrus","obsan","obsebsi","obsesi","obsidian",
"obsolesens","obsolit","obstetri","obstruksi","obstruksi","obstruktif","obsur","obung","obur","obut",
"oca","oceh","ocehan","ocet","oci","oco","octa","oda","odah","odak",
"odal","odalan","odang","odanya","odar","odas","ode","odeh","odek","odel",
"odem","oder","odes","odet","odete","odit","oditur","oditurat","odo","odoh",
"odok","odol","odometer","odong-odong","odoran","odoriferus","odorimetri","odot","odur","odut",
"oenari","oer","oes","oet","ofa","ofal","ofat","ofensif","ofer","oferta",
"ofis","ofisial","ofisialisasi","ofisiel","ofset","ofset","ofsetnya","oftalmolog","oftalmologi","oftalmoskop",
"ofuk","oga","ogah","ogah-ogahan","ogak","ogak-ogak","ogam","ogan","ogang","ogar",
"ogas","ogat","ogeh","ogel","ogit","ogoh","ogoh-ogoh","ogok","ogok-ogokan","ogol",
"ogok","ogom","ogon","ogor","ogos","ogot","ogr","ogre","ohe","oho",
"oi","oikumenis","oikumene","oiler","oit","oja","ojad","ojak","ojan","ojat",
"oje","ojek","ojokan","ojo","ojok","ojol","ojos","ojot","oka","okah",
"okak","okal","okapi","okar","okas","okat","oke","okey","okir","okit",
"oklok","oklokrasi","oknum","okokan","oko","okol","okon","okos","okot","okra",
"okre","okros","oksa","oksalat","oksid","oksida","oksidasi","oksidator","oksigen","oksigenasi",
"oksigenisme","oksimeter","oksimoron","oksipital","okta","oktad","oktaf","oktagona","oktagon","oktahedron",
"oktal","oktan","oktana","oktanet","oktant","oktari","oktat","oktet","okto","oktober",
"oktagon","oktogen","oktogen","okto","oktokonus","oktonari","oktopus","oktose","okto","oktroi",
"oktu","okular","okulasi","okulis","okultisme","okultis","okupansi","okupasi","ol","ola",
"olah","olahan","olahraga","olah-ragawan","olahragawati","olahraga","olahraga","olak","olakan","olam",
"olan","olanda","olang","olang-aling","olanya","olar","olas","olat","old","ole",
"oleh","oleh-oleh","oleh-olehnya","olek","olem","olender","olen","oleng","oleng-oleng","oleografi",
"oleometer","oleonat","oleoresin","oleovitamin","oles","olesan","olesi","olet","oli","olif",
"olifant","oligo","oligofrenia","oligoklas","oligomer","oligopoli","oligopolistik","oligopsomi","oligosena","oligarki",
"oligarkis","oligo","oligosakarida","oligospermia","olim","olimpiade","olimpik","olin","olinet","olip",
"olis","olit","olo","oloh","olok","olokan","olok-olok","olon","olong","olop",
"olor","olos","olot","olu","oma","omah","omai","omak","omal","oman",
"omang","omang-omang","omar","omas","omat","ombal","ombang","ombang-ambing","omber","ombi",
"ombik","ombin","ombir","ombo","ombok","ombon","ombor","ombos","ombot","ombre",
"ombu","ombun","ombur","ombus","ombut","omega","omegaskop","omelet","omen","omer",
"omet","omi","omic","omikron","omil","omin","omir","omis","omit","omne",
"omni","omnibus","omnivora","omong","omongan","omong-omong","omong-kosong","ompa","ompak","ompak-ompak",
"ompang","ompang-ompang","ompang-ompang","ompas","ompe","ompel","omper","ompi","ompol","ompong",
"ompot","omprap","omprung","ompu","ompun","ompus","omsla","omslah","omstak","omsteken",
"omtel","omtik","omtrans","omu","omun","omut","ona","onah","onak","onam",
"onan","onani","onani","onap","onar","onaran","oncat","once","onceh","oncek",
"oncen","oncer","onci","oncit","onco","oncok","oncom","oncong","oncor","onda",
"ondah","ondak","ondang","onde","onde-onde","ondel-ondel","onder","onderdil","onderok","onderstel",
"onderuit","ondes","ondi","ondik","ondo","ondok","ondol","ondor","ondos","ondot",
"ondua","one","onek","oneng-oneng","oneng-oneng","onera","ones","onet","ong","onga",
"ongah-angih","ongak","onggal-anggil","onggok","onggokan","onggor","onggu","onggu","ongji","ongkang-ongkang",
"ongkhos","ongkos","ongkosan","ongol-ongol","oniks","onikomikosis","oning","onis","onit","onjin",
"onok","onomatologi","onomatopia","onong","onon","onosen","ons","onsel","onslag","onslah",
"ontag","ontak","ontang-anting","ontario","ontas","onte","ontel","ontologi","ontologis","ontos",
"ontran-ontran","onward","onya-onyo","onyak-anyik","onyok","onyot","oogenesis","oosit","opa","opah",
"opak","opak-apik","opal","opalesens","opas","ope","opek","open","open","oper",
"operan","operasi","operasinal","operasionalisasi","operatif","operator","operet","operet","operkulum","opet",
"opi","opik","opil","opini","opiniku","opinya","opis","opisometer","opit","opium",
"oplah","oplet","opname","opnam","opon","oponen","oportunis","oportunisme","oportunistik","oportunitas",
"oposisi","oposit","opsan","opsen","opsi","opsional","opsir","opsometer","opsonin","opstal",
"optatif","opter","optik","optika","optikus","optimal","optimis","optimisme","optimistis","optimum",
"opsi","optoelektronika","optometri","optometris","opuk","opus","ora","orak","orak-arik","oral",
"oralit","orang","orang-aring","orang-orang","orangan","oranye","oras","orasi","orator","oratorial",
"oratorio","orbit","orbital","orbitnya","orca","orde","order","ordinal","ordinasi","ordinat",
"ordonansi","ordovisi","ordures","ore","oreganum","oreng","oreo","oreografi","ores","oret",
"oret-oret","organ","organel","organik","organis","organisasi","organisator","organisatoris","organisme","organisnya",
"organogen","organogenesis","organogram","organoleptik","organologi","organon","organdi","organdi","orgasme","orgel",
"orgi","orgiastik","ori","oriental","orientalis","orientalisme","orientasi","origami","orin","oring",
"orisinal","orisinalitas","oritas","orkes","orkestra","orkestras","orkestrator","orkis","orkit","orkitis",
"orle","orlong","ormas","ornamen","ornamental","ornitolog","ornitologi","ornitopter","orofaring","orograf",
"orografi","orografis","orok","orong-orong","orot","orsinil","ortens","orto","ortodoks","ortodoksi",
"ortodrom","ortoepi","ortofoni","ortogonal","ortograf","ortografi","ortografis","ortoklas","ortopedagogik","ortopedi",
"ortopedis","ortoptik","ortoskop","ortostastis","ortotropis","osean","oseanografi","oseanografis","oseanologi","osikel",
"osifikasi","osikel","osikel","osila","osilasi","osilator","osilogram","osilograf","osiloskop","osman",
"osmat","osmetik","osmium","osmo","osmometer","osmometri","osmoregulasi","osmoregulator","osmosis","osmotik",
"osol","osteit","ostentasi","osteo","osteoartritis","osteoblas","osteofit","osteogenik","osteoklas","osteolog",
"osteologi","osteoma","osteomalasia","osteomielitis","osteon","osteopati","osteoporosis","osteosarkoma","osteosintesis","osteotomi",
"osti","ostium","ostrakisme","osu","ota","otak","otak-otak","otakan","otaknya","otal",
"otan","otang","otanya","otar","otas","ote-ote","otek","otektomi","otentik","otentisitas",
"oti","otik","otitis","otitis media","oto","otobiograf","otobiografi","otobus","otodidak","otodidaktik",
"otodinamik","otofon","otograf","otografi","otogram","otoklaf","otoklas","otokrasi","otokrat","otokratis",
"otokritik","otolit","otologi","otomasi","otomat","otomatik","otomatis","otomatisasi","otomobil","otomotif",
"otomotor","otonomi","otonomis","otonomos","otopet","otoplasti","otopsi","otoris","otorisasi","otoritas",
"otoritastif","otoriter","otoriterisme","otosit","otoskop","otot","ototoksik","ototnya","otto","otual",
"ovari","ovarium","ovariostomi","ovariotomi","ovasi","oven","over","overakting","overal","overdosis",
"overkapasitas","overkompensasi","overlap","overpopulasi","overproduksi","overste","overt","overtur","ovipar","oviposisi",
"oviposit","ovipositor","ovovivipar","ovular","ovulasi","ovulum","ovum","owa","owak","owang",
"owar","oweh","owek-owek","ower","owol","oyak","oyam","oyang","oyat","oyek",
"oyel","oyog","oyok","oyong","oyos","oyot",
  },
  ["p"] = {
  "pabrik","padang","padat","padu","pagar","pagi","pahala","paham","pahit","pakar","paksa","paling","paman","panah","pancasila"
  ,"pandai","pandang","pangkas","pangkat","panjang","pantang","pantas","panutan","papan","paradigma","partisipasi","paruh","pasang"
  ,"pasif","pasrah","pasti","paten","patriot","patriotisme","patuh","pautan","payung","pecah","pedoman","peduli","pegang","peka",
  "pelajaran","pelita","peluh","pembaruan","pemberdayaan","pembinaan","pemimpin","pemuda","pendidikan","pengabdian","pengalaman",
  "pengaruh","pengembangan","pengetahuan","pengurus","penjaga","penjuru","penting","penuh","penyebab","peran","perbaikan","percaya",
  "percikan","perdana","perdata","perjuangan","perlu","permai","permanen","permata","pernah","persatuan","pertama","pertanda","pertumbuhan",
  "perubahan","pesat","pesona","petani","piawai","pijak","pikat","pikiran","pilah","pilar","pilihan","pintar","pionir","piring","pisang",
  "pita","pola","polisi","pondasi","positif","potensi","pragmatis","prakarsa","praksis","prasasti","prasetya","pratama","prestasi","pribadi",
  "prihatin","prima","prinsip","proaktif","produktif","profesional","progresif","propesi","proporsional","publik","pula","pulang","pulih","punah",
  "punas","puncak","pungut","pupuk","purnama","pusaka","putih","putus","pacar","pacat","pacu","pada","padam","padanan","padepokan","paduka","pagan",
  "pagelaran","pagoda","pagu","paguyuban","pahat","paido","pailit","pajak","pajang","pajuh","pakai","pakem","paket","paking","pakta","paku","palang",
  "palapa","palas","palat","palda","palem","palkah","palu","palung","pamflet","pamit","pamong","pamor","pampang","pamer","pamrih","panakawan","panatacara",
  "pancaka","pancalogam","pancaniti","pancaran","pancarkan","pancausaha","pancawarna","pancawara","pancing","pancung","pancur","pancut","pandak","pandan",
  "pandir","pandu","panel","panen","panggang","panggil","panggul","panggung","pangkah","pangkon","pangkur","panglima","pangling","panglong","pangonan",
  "pangrukti","pangsa","pangsi","pangsit","panitia","panitera","panitik","panjar","panjat","panji","pantak","pantar","pantat","pantun","pantura","papar",
  "paparan","papas","papat","papila","papirus","papur","para","parade","paraf","paragraf","parah","parak","paralel","paralisis","paralogisme","parameter",
  "parang","parap","paras","parasit","parau","pardi","parfum","pari","parikan","paripurna","pariwara","pariwisata","parkir","parlemen","parodi",
  "parokial","paron","parotitis","parsi","partai","partikel","partisi","partner","paru","parutan","pasah","pasai","pasak","pasal",
  "pasasir","pasca","pasien","pasilan","pasir","pasirah","pasisir","paska","paskah","pasmina","pasokan","pastor","pastura","pasukan",
  "pasuma","pasung","patah","pataka","pater","patih","patihah","patik","patil","patiwasa","patokan","patra","patrian","patroli","patromak",
  "patron","patuk","patut","pauhi","pauk","paun","paus","paut","pawai","pawang","pawana","pawarta","pawestri","payah","payau","pecai","pecak",
  "pecal","pecat","pecel","peci","pecicilan","pecinan","pecundang","pecut","peda","pedagang","pedal","pedalaman","pedanda","pedar","pedas","pedati",
  "pedel","pedestrian","pediatri","pedih","pedis","pedusi","pegagan","pegal","pegas","pegawai","pegel","pegi","pegunungan","pejabat","pejal","pejam",
  "pejera","pejuang","pekak","pekan","pekarangan","pekat","pekerti","pekik","pekir","pekojan","peksi","pekulun","pekung","pelabu","pelabuhan","pelacak",
  "peladangan","pelafalan","pelopor","pelipur","pelosok","peluang","pelupuk","peluru","pemali","pemanis","pemantau","pemaparan","pemara","pemberdayaan",
  "pembinaan","pemerian","penaka","penalti","penat","pencapaian","pencak","pencar","pencet","pencil","pendapa","pendar","pendekar","penerangan","penggal",
  "penghulu","pening","peniti","pensiun","pentas","pentil","pentungan","penunggul","pepatah","peperangan","perabot","peradaban","perah","perahu",
  "perai","perak","peranda","perang","perangkat","peranti","peras","perasat","perat","perawan","perba","perbal","perban","percit","percula",
  "perdom","perdu","peredam","peregrasi","perempuan","pergam","pergelangan","pergola","pergolakan","perguruan","perhal","perhelatan",
  "perhiasan","peribahasa","perigi","periksa","perilaku","perimbon","perinci","perindu","peringkat","perintah","perior","perisai",
  "peristiwa","perit","perjanjian","perkakas","perkara","perkasa","perkedel","perkusi","perkutut","perlahan","perlak","perlambang","perlan",
  "perlengkap","perli","perluas","perluk","perlus","permaisuri","permak","permana","permen","permili","permisi","pernik","pernis",
  "peron","perosot","perot","perpati","persada","persalin","persen","persis","persona","personal","pertala","pertiwi","perum","perunggu",
  "perusa","perwira","pesan","pesanggrahan","pesiar","pesisir","pestaka","pestisida","peta","petak","petaka","petala","petang","petaram",
  "petas","peti","petik","petir","petis","petisi","petitum","petola","petuah","piagam","piala","piama","pianis","piano","piara","piatu",
  "picisan","picu","pidana","pidato","pigura","pihak","pijar","pikul","pilas","pilu","pimpin","pimpinan","pinak","pincang","pincuk","pindai",
  "pindah","pindang","pinding","pindukan","pinggan","pingit","pingkel","pingsan","pinjal","pinjam","pinjung","pinta","pintas","pintu",
  "pinus","pipa","pipi","pipis","pipit","piranti","pirasat","pirau","pirik","pirsa","pirus","pisah","pispot","pistol","pitawat","pitik",
  "piting","piutang","plafon","plakat","planologi","plastik","platform","pleidoi","pleno","plester","plonco","plural","plus","poci",
  "pocong","podium","poin","pojok","pokok","pola","polemik","poles","polis","politik","polos","polusi","pompa","pondok","ponok","ponton",
  "populer","pori","porsi","porselen","porseni","portal","poros","porositas","porstaka","posisi","posko","poster","praba","prabawa",
  "prabu","prada","pradana","pradesa","praduga","prahara","prahoto","praka","prakarsa","prakata","prakondisi","praktek","praktik",
  "praktis","pralambang","pralaya","prameks","prameswari","pramubakti","pramugara","pramugari","pramuka","pramuria","pramusiwi",
  "pramuwisata","pranala","pranata","pranikah","prapanca","prapatan","prapustaka","prarasa","prasarana","prasaya","prasmanan",
  "prastawa","pratanda","pratata","prawira","preambul","predikat","prediksi","preferensi","prefektur","prei","preman","prematur",
  "premi","premis","premium","presensi","presentasi","presiden","presisi","prestise","preteks","pribumi","prihatin","primadona",
  "primal","primata","primbon","primordial","prioritas","prisma","privasi","privilese","probiotik","problem","prosedur","prosenium",
  "proses","prosesi","profesi","profil","prognosis","program","proyek","proyeksi","proyektil","proyektor","prosa","prospek",
  "prospektus","protokol","proton","prototipe","provinsi","provokasi","pabean","pualam","pucat","pucuk","pudar","pudarnya","puding",
  "puebi","puisi","puja","pujangga","pukat","pukau","pukul","pula","pulas","pulasari","pulau","pulpen","pulsa","pulung",
  "pumila","punakawan","puncak","pundak","pundi","punggawa","punggung","pungkas","pungli","pupus","pura","purba","purbakala",
  "purbasangka","puri","purna","purnabakti","purnajual","purnawirawan","purwa","purwarupa","pusar","pusara","pusar","puspa",
  "puspita","pustaka","putar","putera","puteri","puting","putra","putri","pacak","pacau","pacek","padé","padma","padmi",
  "pagon","paguat","pahang","pajuh","paksi","paladium","palas","paluh","pampas","pancaka","pancawara","pancausaha","pandit",
  "pangkur","panitera","paparan","parak","paralaks","paramasastra","parap","paron","pasase","pasewakan","patanjala","patil",
  "patologi","patos","pauhi","pawana","pawarta","payat","pedanda","pedel","pedar","pekayon","pekulun","pelamin","pelana",
  "pelesir","pemidangan","penaka","pendapa","penggawa","pental","peras","perbal","perdom","pergam","pergamum","peridotor","perkolasi",
  "perlop","perwara","pesanggrahan","pesti","petaram","pilau","pilun","pindukan","pitawat","pluralitas","polan","pramesti","prasaja",
  "prastawa","prelude","priyayi","proletar","prolusi","pulasari","punggawa","purana","purwa","putrawali",
  },
  ["q"] = {
  "quran","qari","qariah","qasar","qada","qadar","qamat","qalbu","qasidah","qiamulail","qurban","qiraah","qiyas",
  "qoidah","quraisy","qadim","qadi","qaf","qahwa","qaid","qaisar","qalam","qalas","qamat","qamus","qanun","qariin",
  "qarun","qaswa","qatara","qiam","qiraat","qisas","qitmir","qudsi","qunut","quosien","quota","quotient","qurban","qurais","quranic",
  },
  ["r"] = {
  "raba","rabaan","rabat","rabbi","rabies","rabu","rabuk","rabun","rabung","racun","radang","radar","raden","radikal","radikalisme",
  "radio","radiografi","radiogram","radiologi","radius","raflesia","ragam","ragu","rahang","rahasia","rahim","rahmah","rahmat","raib",
  "raider","raih","raja","rajah","rajam","rajawali","rajin","rajut","rakat","raker","rakit","rakornas","raksasa","rakus","rakyat","ramah",
  "ramai","ramalan","rambu","rampok","ramu","ramuan","ramus","rana","ranah","ranjang","ranjau","rank","ransel","ransum","rantai","rantam",
  "rantau","ranting","rapat","rapi","rapuh","rasa","rasial","rasialisme","rasional","rasionalitas","rasisme","rasul","rata","ratapan","ratu",
  "ratus","raung","rawan","rawat","raya","rayap","reaksi","reaksioner","reaktor","realis","realisme","realistis","realitas","reap","rebah",
  "rebana","reboisasi","rebung","rebus","rebut","recap","reda","redaksi","redaktur","redam","redup","referensi","refleksi","reformasi","regu",
  "reguk","reguler","rehabilitasi","rehat","rekayasa","rekening","reklamasi","reklame","rekor","rektor","relasi","relatif","relung","remaja",
  "remang","rempah","remuk","renang","rencana","rendah","rendam","rendang","renegosiasi","renovasi","renta","rental","rentan","rentenir",
  "rentetan","renung","reparasi","replika","repolusi","repot","repro","reproduksi","repu","reputasi","resah","resapan","resep","resepsi",
  "resepsionis","resesi","residen","resiko","resimen","resmi","resolusi","resonan","resonansi","resor","resort","respek","respons","restorasi",
  "restu","resume","retak","retribusi","reuni","revisi","revolusi","ria","riah","riak","riam","riang","riap","rias","riba","ribu","ribut","rida",
  "ridu","rigi","riil","rimba","rimbu","rimpi","rincas","rinci","rincian","rindang","rindu","ringan","ringis","ringkas","ringkih","ringkuk","ringkus",
  "rintangan","rintih","rintis","ripit","risalah","risau","riset","risi","risiko","ritel","ritme","ritual","riuh","riwayat","robah","robek","roboh",
  "roda","rodi","rogoh","roh","rohani","rohaniawan","roket","rokok","rol","roma","roman","romansa","romantik","rombak","rombong","rombongan","romusa",
  "rona","ronce","ronda","rongga","rongrong","rontok","rosok","rotan","rotasi","royalti","ruam","ruang","ruas","rubah","rubrik","rucu","rugi","ruh","rujuk",
  "rukun","rumah","rumbai","rumbah","rumit","rumor","rumpun","rumput","rumus","runcing","runding","rungkat","rungu","runjam","runjang","runjung","runtuh",
  "runtun","rupa","rupawan","rupiah","rusa","rusak","rusuh","rusuk","rute","rutin","rudal","rudge","ruwet","raba-rubu","raban","rabana","rabat","rabel","rabit",
  "rabuk","radah","radai","radak","radan","radat","raden","radif","radin","radis",
  "radium","radius","rafaksi","rafia","rafidi","raformir","raga","ragas","ragi","ragu-ragu","ragung","ragut","rahak","rahap","rahat",
  "rahib","rahim","rahman","rahmat","rahu","rai","raib","rais","raja","rajah","rajam","rajang","rajau","raji","rajul","rajut","rak","raka",
  "rakaat","rakah","rakan","rakap","rakat","rakila","rakis","rakit","rakna","raksa","raksasa","raksi","rakus","rakut","ralat","ralip","ram","rama",
  "ramadhan","ramai","ramalan","ramat","rambah","rambak","ramban","rambat","rambu","rambung","rambut","rames","ramin","rampai","rampak","rampas","rampat",
  "ramping","rampok","rampus","ramu","ramus","rana","ranah","ranai","ranau","rancah","rancak","rancang","rancap","rancau","rancik","rancung","randa","randah",
  "randai","randajawa","randak","randat","randau","randek","randi","randu","randuk","randung","rangah","rangak","rangam","rangas","rangat","rangga","ranggah",
  "ranggak","ranggas","ranggi","ranggit","ranggul","ranggung","rangka","rangkai","rangkak","rangkam","rangkang","rangkap","rangkas","rangkaya","rangket","rangkiang",
  "rangking","rangkit","rangkok","rangkul","rangkum","rangkung","rangkup","rangsang","rangsel","rangsum","rangut","rani","ranjang","ranjau","ranjing","ranjuk",
  "ranjum","ransel","ransum","rantai","rantam","rantau","rante","ranti","ranting","rantuk","rantus","ranyah","ranyau","ranyun","rap","rapah","rapai","rapak","rapang",
  "rapat","rapel","rapiah","rapik","rapit","rapor","rapu","rapuh","rapun","rapung","rarai","rarak","raras","ras","rasa","rasai","rasam","rasamala","rasan",
  "rasau","rase","rasemat","rasi","rasia","rasian","rasional","rasisme","rasul","rat","rata","ratah","ratap","ratas","ratib","ratna","ratu","ratus","rauh",
  "raum","raun","raung","raup","raut","rawa","rawai","rawak","rawan","rawang","rawat","rawati","rawatib","rawi","rawin","rawit","rawon","raya","rayah","rayan",
  "rayang","rayap","rayat","rayu","reaksi","reaktor","realis","realitas","reba","rebah","rebak","reban","rebana","rebas","rebat","rebe","rebeh","rebel","rebes",
  "rebo","reboisasi","rebuk","rebung","rebus","rebut","reca","recak","receh","recet","recik","recok","recup","reda","redah","redaksi","redam","redaman","redan",
  "redap","redas","redat","redih","redik","redoks","redum","redup","redusir","referendum","refleksi","reformas","rega","regah","regang","regat","regen","regensi",
  "reges","regi","regimen","regir","regu","reguk","regulir","regup","rehabilitasi","rehal","rehat","reja","rejah","rejam","rejan","rejang","rejeh","rejeki","rejeng",
  "rejim","reka","rekah","rekaat","rekap","rekapitulasi","rekat","reken","rekening","rekes","reklame","reklasifikasi","rekoil","rekomendasi","rekonseptualisasi",
  "rekonstruksi","rekreasi","rekrut","reksadana","rektor","rekto","rektum","rekuperasi","rel","rela","relai","relaks","relasi","relatif","relau","relevan",
  "relevansi","religi","religius","relikui","relung","rem","rema","remaja","remak","remas","rematik","remayung","rembah","rembang","rembat","rembe","rembeh",
  "rembes","rembet","rembih","rembuk","rembulan","rembus","rembut","remedi","remedial","remis","rempah","rempak","rempang","rempat","rempeyek","rempi","rempuji",
  "rempuk","rempung","rempus","remuk","remunggai","remuniasi","renang","renca","rencah","rencana","rencang","renceh","renceng","rencet","rencik","rencong","renda",
  "rendah","rendam","rendang","rendemen","rendeng","rendet","rendong","renegade","renegosiasi","renet","reng","rengade","rengap","rengas","rengat","rengeh","rengek",
  "rengga","renggang","renggat","rengge","renggek","rengget","renggi","renggut","rengit","rengka","rengkah","rengkam","rengkap","rengkas","rengkat","rengked",
  "rengkel","rengket","rengkiang","rengko","rengkoh","rengkol","rengkong","rengkudah","rengkuh","rengkung","rengkup","rengus","rengut","renik","renin","renjana",
  "renjong","renta","rentak","rentan","rentang","rentap","rentas","rente","renteng","rentet","renti","rentik","renung","renvoi","reorganisasi","reorientasi",
  "reparasi","repatriasi","repes","repet","repetisi","repetitif","repih","repis","repolusi","repot","reprehensif","represi","represif","reproduksi","reptil",
  "republik","reputasi","rerak","reram","rerangkai","reruntuh","resah","resak","resam","resan","resap","resensi","resep","resepsi","reseptor","reserse","resersir",
  "resesi","resi","residivis","residu","resik","resiko","resimen","resipien","resiprok","resital","resitasi","resmi","resolusi","resonan","resonansi","resor",
  "resorpsi","resorsinol","resort","respek","respirasi","respon","responden","respons","responsibilitas","restan","restauran","restitusi","restorasi","restu",
  "restung","resume","resurgensi","ret","retak","retal","retardasi","retas","retet","retih","retina","retir","retis","retok","retorik","retorika","retraktil",
  "retribusi","retrospeksi","retu","retuk","reuni","reunifikasi","revaluasi","revan","revelasi","revisi","revolusi","revolusioner","rewak","rewanda","rewang",
  "rewat","rewet","rezeki","rezim","ria","riah","riak","rial","riam","rian","riang","riap","rias","riau","riba","ribat","ribu","ribut","rica","ricau","ricik",
  "ricis","ricuh","rida","ridan","ridat","ridi","ridu","rigai","rigi","rihal","rihat","riil","rijal","rikuh","rilis","rim","rima","rimas","rimat","rimba","rimbas",
  "rimbat","rimbu","rimis","rimpi","rimpung","rinai","rinat","rincas","rinci","rincian","rincis","rindang","rindu","ring","ringan","ringgit","ringih","ringik","ringis",
  "ringit","ringkai","ringkas","ringkih","ringking","ringkit","ringkok","ringkuk","ringkus","ringsek","ringsing","rini","rintangan","rintas","rintih","rintik",
  "rintis","ripit","ripuh","rira","risalat","risau","riset","risi","risiko","risit","rit","ritel","ritma","ritme","ritul","ritus","riuh","riuk","riung","rival",
  "rivalitas","riwan","riwayat","rizki","robah","robek","roboh","robot","rocha","roda","rodan","rodat","rodi","rodium","rodok","rogoh","rogok","rogol","roh",
  "rohani","rohaniawan","rois","rojol","rok","roker","roket","roki","rokok","rokul","rol","rolet","roma","roman","romansa","romantik","romantika","romantis",
  "romantisism","rombang","rombeng","rombik","romboedrus","romboid","rombong","rombongan","romis","romok","romong","rompak","rompang","rompas","rompeng",
  "romper","rompi","rompoh","rompok","rompong","rompyok","romusa","rona","ronce","ronda","ronde","rondo","roneo","rongga","ronggang","ronggeng",
  "ronggok","rongkok","rongkong","rongos","rongrong","rontok","rorod","ros","rosela","rosok","rosol","rotan","rotasi","rotator","rowot","royak",
  "royal","royalti","royan","royer","ruam","ruan","ruang","ruas","ruat","ruayah","ruba","rubah","rubai","ruban","rubat","rubel","rubiah","rubik",
  "rubin","rubing","rubu","rubuh","rubung","ruca","rucah","rucit","rudah","rudal","rudas","rudat","rudin","rudu","rudus","rugi","rugul","ruing",
  "ruit","rujah","rujak","ruji","rujuk","rukam","rukun","rukut","rum","rumah","rumai","rumal","rumba","rumbai","rumbah","rumbane","rumbia",
  "rumbing","rumen","rumi","rumit","rumor","rumpun","rumput","rumung","rumus","runau","runcing","runcit","runda","runding","rundu","runduk",
  "rundung","runggas","runggut","rungkau","rungkun","rungu","rungus","rungut","runjam","runjang","runjung","runtai","runtas","runti","runcing",
  "runtuh","runtun","runtus","rupa","rupam","rupawan","rupee","rupiah","rurah","rurut","rusa","rusak","rusam","ruse","rush","rusia","rusuh","rusuk",
  "rute","rutenium","rutin","rutuk","rutup","ruwat","ruwet","ruyak","ruyung","ruyup",
  },
  ["s"] = {
  "saat","saba","sabak","saban","sabana","sabar","sabas","sabat","sabda","sabet","sabil","sabit","sabot","sabotase","sabuk","sabun","sabung","sabur",
  "sabut","sadah","sadai","sadap","sadar","sadel","sadik","sado","sadur","saf","safa","safari","safi","safir","safran","saga","sagu","saguer","sah",
  "sahabat","sahadat","sahaja","saham","sahara","sahaya","sahid","sahifah","sahih","sahur","sahut","saing","sains","sajak","sajen","saji","sajian","sak","saka",
  "sakarat","sakat","sakelar","sakhawat","sakhi","sakit","saksi","sakti","saku","sakura","salaf","salai","salak","salam","salang","salap","salat","saldo","saleh",
  "salib","salin","saling","salip","salju","salok","salon","salur","saluran","salut","salve","sama","samad","samak","samar","samba","sambal","sambang","sambar",
  "sambat","sambau","sambil","sambit","sambung","sambur","sambut","sampah","sampai","sampak","sampan","sampang","sampar","sampat","sampean","sampel","samper",
  "sampi","samping","sampir","sampo","sampol","sampul","samsak","samsat","samsir","samsu","samudra","samun","sana","sanak","sanat","sanatorium","sandang","sandar",
  "sandat","sandi","sanding","sandiwara","sandu","sandung","sang","sanga","sangadi","sangam","sangang","sangat","sangau","sanget","sanggar","sanggat","sanggerah",
  "sanggi","sanggih","sanggul","sanggup","sanggurdi","sangit","sangka","sangkal","sangkar","sangking","sangkir","sangku","sangkur","sangkut","sangkutan","sangli",
  "sangon","sangrai","sangsat","sangu","sangub","sani","sanitasi","sanjung","sankir","sanksi","sano","sanskrit","santai","santan","santap","santau","santet","santir",
  "santo","santri","santun","sapa","sapaan","sapar","sapardi","sapau","sapi","sapir","sapit","sapo","sapta","saptamarga","sapu","saput","sara","saraf","sarak","saran",
  "sarana","sarang","sarapan","saras","sarat","saraung","sardencis","sardi","sareat","sareh","sarekat","saren","sari","saridele","sarik","saring","saripah","sarira","sarit",
  "sarjana","sarju","sarkasme","sarkofagus","sarkoma","saro","sarok","saron","sarpin","sarsaparila","saru","saruk","sarung","sarut","sasak","sasana","sasar","sasaran",
  "sasi","sasirangan","sastra","sastrawan","satai","satang","satelit","satih","satin","satir","satire","satpam","satria","satron","satu","satuan","saturnus","satwa","saudagar",
  "saudara","sauh","sauk","saum","sauna","saung","saur","saus","saut","sawah","sawal","sawan","sawang","sawangan","sawat","sawi","sawit","sawo","sawur","saya","sayang","sayap",
  "sayat","sayembara","sayid","sayu","sayur","sebab","sebagai","sebak","sebal","sebam","sebar","sebat","sebati","sebel","sebelah","sebelas","sebeng","seberang",
  "sebet","sebi","sebih","sebit","sebuk","sebut","sebutan","seco","sedang","sedap","sedar","sedari","sedat","sedekah","sedekala","sedeng","sederhana","sedia","sedianya"
  ,"sedidih","sedih","sedikit","sedimen","sedimentasi","sedot","seduh","sedut","sega","segak","segala","segan","segar","segara","segeh","segel","segenap","segera","segi",
  "segmen","segmentasi","segregasi","segresi","segulung","sehat","sejahtera","sejak","sejarah","sejarawan","sejati","sejingkat","sejuk","sekadar","sekaligus","sekali","sekap",
  "sekar","sekarang","sekat","sekati","seken","sekeping","sekeria","sekertaris","sekilas","sekin","sekira","sekitar","sekjen","sekolah","sekon","sekongkol","sekop","sekoteng",
  "sekretariat","sekretaris","sekring","seks","seksi","seksual","sektor","sekuas","sekuel","sekuler","sekunder","sekutu","sel","sela","selada","seladang","selai","selaju","selak",
  "selaka","selaku","selalu","selam","selama","selamat","selamba","selampai","selang","selangka","selangkang","selaput","selar","selara","selaras","selasa","selasar","selasih",
  "selat","selatan","selawat","seleksi","selektif","selempang","selendang","selene","selesa","selesai","selebrasi","seledri","selegenjeti","selek","selembana","selengkapnya",
  "selentik","selep","selepa","selepe","selepi","selera","selerang","selesa","selesai","selesma","seletar","selewang","selibat","selidik","seligi","seligit","selimpat","selimut",
  "selinap","selindung","seling","selingkuh","selip","selir","selisih","selisik","selisir","selit","selokan","seloki","selomot","selonong","selop","seloro","selot","selotip",
  "seluang","seluar","selubung","seluk","seluler","selulu","selulup","selulusa","selumbar","seluncur","selundup","selungkup","selup","seluru","seluruh","selusuh","selusur","sema",
  "semadi","semai","semak","semalam","semampai","seman","semangat","semangka","semantik","semat","semata","semawang","semawar","sembada","sembagi","sembah","sembahyang","sembai",
  "sembarang","sembarani","sembari","sembat","sembelih","sembelihan","sembelit","sember","semberip","semberono","sembeta","sembilan","sembilang","sembir","semboja","semboyan",
  "sembuang","sembuh","sembul","sembung","sembunyi","sembur","semburat","semesta","semesta","semi","semiotika","semir","semoga","sempadan","sempal","sempana","sempat","sempena",
  "semper","semperong","sempi","sempit","sempoa","semprit","semprot","sempurna","semu","semua","semur","semut","sen","sena","senam","senandika","senandung","senantiasa","senapan",
  "senar","senat","senator","senawar","senda","sendat","sendawa","sendayan","sendel","sendeng","sender","sendi","sendiri","sendiri","sendok","sendratari","sendu","sendung","seni",
  "seniman","senin","senior","senja","senjang","senjata","senonoh","sensasi","sensasional","sensitif","sensor","sensus","senter","sentigram","sentil","sentimen","sentimental",
  "sentimeter","sentosa","sentra","sentral","sentralisasi","sentrifugasi","sentuh","sentul","senyap","senyum","senyun","sepada","sepak","sepakat","sepala","sepan","sepandri",
  "sepang","sepanjang","sepantasnya","separasi","separatis","separatistis","separuh","sepat","sepatu","sepeda","sepele","sepen","seperas","seperti","sepi","sepihak","sepincang",
  "sepir","sepit","sepoa","sepoi","sepon","seprai","seprei","september","septik","sepuh","sepuit","sepul","sepura","seput","sera","serabi","serabut","serada","serah","serai","serak","serakah","seram","serambi","serampang","seran",
  "serana","serandang","serang","serangga","serangkai","serani","seranta","serap","serapan","serat","serati","seratula","serau","seraut","serawak","serawan","seraya","serba",
  "serbak","serbat","serbet","serbi","serbu","serbuk","serdadu","serdak","serdam","serdang","serdawa","serdi","serdik","serdula","sereat","serebral","serebrum","serem","seremoni",
  "seremonial","serempak","serempet","serenade","serendah","serendi","sereng","serengeh","serenjang","serenta","serep","seret","sergap","seri","seriat","serikat","serikaya",
  "serimpet","serimpi","sering","seringai","serit","serius","serkah","serkai","serkap","serkayo","serkup","serlah","serlak","serling","serlo","serlum","sermon","serobot","serodot",
  "seroja","serok","serokan","serol","serombong","seronok","seropot","serosah","serot","serotype","serpa","serpank","serpih","sersan","serse","sersi","serta","sertifikat","seru",
  "seruak","serual","seruas","serubung","seruda","serudi","seruduk","seruk","serul","seruling","serum","serunai","serunda","serundeng","seruni","seruntul","serupa","serut",
  "serutu","sesah","sesajen","sesak","sesal","sesama","sesanti","sesap","sesar","sesat","sesawi","sesen","seser","sesi","sesuai","sesumbar","seta","setabelan","setahun","setai",
  "setak","setal","setala","setali","setaman","setan","setangan","setangga","setara","setaria","setat","setawar","setebal","setek","setel","setela","setelah","setelan","setem",
  "setempel","setengah","seter","setera","seterika","seterip","seteru","setia","setiap","setiar","setiawan","setik","setiker","setila","setimbang","setimpal","setinggi","setinggil",
  "setir","setiran","setisik","setiwel","seto","setol","setom","setop","setoples","setor","setoran","setrap","setrip","setruk","setrum","setu","setua","setuju","setulang","setum",
  "setumpuk","setun","setunggal","setungging","seturan","seturu","setus","sewa","sewah","sewaka","sewaktu","sewal","sewar","sewawa","sewat","sewenang-wenang","sewu","si","sia","siaga",
  "siah","siak","sial","sialang","siam","siamang","siang","siangan","siangit","siangpur","siapa","siap","siapa","siar","siaran","siasat","siat","siau","sibak","sibar","sibero","sibilan",
  "sibir","sibit","sibuk","sibur","sice","sida","sidaguri","sidang","sidat","sidik","sidi","sido","siduga","sifat","sigai","sigak","sigando","sigap","sigaret","sigasir","siger","sigi","sigil",
  "sigit","sigma","signifikan","sigot","sigung","sih","sihir","sika","sikad","sikak","sikap","sikari","sikat","sikedup","sikel","sikeras","sikh","sikit","siklon","siklus","siksa",
  "siksaan","siku","sikut","sila","silabel","silabus","silaf","silah","silam","silang","silap","silat","silaturahmi","silau","silengah","silet","silih","silik","silikon","silinder",
  "silir","silis","silo","silu","siluet","siluk","siluman","silung","simak","simaharaja","simak","simbol","simbolik","simetri","simetris","simfoni","simpan","simpanan","simpang",
  "simpati","simpatisan","simpatis","simper","simping","simpir","simposium","simpul","simpulan","simpur","simulakrum","simulan","simulasi","sinan","sinandung","sinar","sinau",
  "sindap","sindikat","sindir","sindrom","sinematografi","sinergi","sinergis","singa","singgah","singgasana","singgung","singit","singkap","singkat","singkek","singkir","singkur",
  "singlet","singsat","singset","singsing","singular","sinis","sinisme","sinode","sinonim","sinopsis","sintaksis","sintal","sintesis","sintetik","sintetis","sintir","sinto",
  "sintua","sintuk","sintung","sinu","sinus","sinyal","sinyalemen","sinyo","sioca","sipai","sipahit","sipat","sipatu","sipedas","sipi","sipil","sipir","sipit","sipon","sipit",
  "sipoa","sipolan","sipon","siput","sir","sira","sirah","siram","siraman","sirat","siratan","sereh","sirih","sirik","siring","sirip","sirkas","sirke","sirkel","sirkuit",
  "sirkulasi","sirna","sirobok","sirop","sirup","sirsak","sirup","sis","sisa","sisal","sisi","sisih","sisik","sisip","sisipan","sisir","siswa","sistem","sistematika",
  "sistematis","sisur","sit","sita","sitaan","sitak","sitar","sitegang","siter","siti","sitir","sito","sitologi","sitrun","situ","situasi","siung","siur","siut","siwak",
  "siwer","skala","skandal","skema","skematik","skenario","skep","sketsa","skian","skripsi","skrin","skrotum","skuad","skuter","soak","soba","sobat","sobek","sobok","soda",
  "sodet","sodok","sodor","sofis","sofisme","softbol","soga","sogok","sohor","sohun","soja","sok","soka","soket","sokoguru","sokong","sol","solat","solek","solenoid","soler",
  "solid","solidaritas","solider","solis","solo","solokan","solokan","solu","solusi","somasi","sombol","sombrero","sompan","somplak","somplok","sompoh","sompong",
  "sonar","sonata","sonder","sone","songar","songel","songgeng","songgo","songket","songkok","songkolo","songong","songsang","songsong","sonik","soneta","sonokeling",
  "sonor","sop","sopan","soper","sopi","sopir","sorak","sorangan","sore","sori","sorogan","sorong","sorot","sorotan","sosial","sosialis","sosialisasi","sosialisme",
  "sosok","sosol","sosor","soto","soyak","spasi","spatula","spesial","spesialis","spesifik","spesifikasi","spektakuler","spektrum","spekulasi","spion","spionase",
  "spiral","spiritual","sponsor","spontan","spora","sport",
  "sportif","sportivitas","sprei","sprint","stabilitas","stabil","stadiun","stadium","staf","stagnasi","stasiun","statis","statistik","statistika","status",
  "steker","stempel","stereo","stereotip","steward","stigma","stiker","stimulan","stimulasi","stimulus","stok","stoker","stop","stopkontak","stori","strategi",
  "strategis","strata","stratifikasi","stres","striker","struktur","struktural","studio","studi","stupa","sua","suaka","suami","suam","suana","suang","suap",
  "suar","suara","suarang","suas","suasana","suatu","sub","subak","subal","subang","subduksi","subjek","subjektif","subsidi","substansi","substitusi","substrat",
  "subur","suci","suda","sudah","sudakalpa","sudara","sudet","sudi","sudip","sudir","sudra","sudu","sudut","sudutan","sufi","sufisme","sugi","sugih","suguh",
  "suguhan","suguh","sugul","sugun","suh","suhu","suhuf","suhun","suis","sujana","sujen","sujud","suka","sukade","sukamandi","sukan","sukar","sukarela",
  "sukarelawan","sukaria","sukat","sukses","suku","sula","sulah","sulam","sulang","sulap","sulapan","suluh","suluk","suling","sulit","sultan","sulu","sulung",
  "sulur","sumarah","sumbang","sumbangsih","sumbar","sumbat","sumbayang","sumbek","sumber","sumbi","sumbing","sumbu","sumbul","sumbung","sumeh","sumeng","sumer",
  "sumit","summa","sumpah","sumpal","sumpel","sumpil","sumping","sumpit","sumsum","sumur","sunah","sunan","sunat","sunatullah","sunda","sundal","sundang","sundul",
  "sundut","sungai","sungga","sunggi","sungging","sunggit","sungguh","sungkan","sungkap","sungkur","sungkup","sungkur","sungsum","sungu","sungut","sunu","sunya","sunyi",
  "sup","supa","supaya","super","superior","supermarket","supervisi","supir","suplai","suplemen","suplesi","suplier","suplir","supremasi","surah","surai","suram","surat",
  "suratan","surau","surealisme","suren","surga","suri","surielit","surit","surjan","surya","survei","susah","susila","suspensi","susu","susuh","susuk","susul","susun","susunan",
  "susup","susur","susut","sutan","sutera","sutradara","suvenir","swadaya","swalayan","swasta","swatantra",
  },
  ["t"] = {
  "taat","tabah","tabak","tabal","taban","tabat","tabe","tabel","taberau","tabi","tabiat","tabib","tabik","tabir","tablig","tablo","tabloid","tabrak","tabu","tabuh","tabun","tabung"
  ,"tabur","tabut","tadah","tadi","tadinya","tadjid","tadung","tafakkur","tafsir","tagaduh","tagak","tagal","tagan","tagar","tagas","tagih","tahadi","tahak","tahan","tahana","tahang",
  "tahapan","tahap","tahar","taharah","tahbis","tahi","tahil","tahir","tahmid","tahniah","tahsil","tahu","tahun","tahunan","taifun","taiko","tailas","tailor","tain","taipun","tais",
  "tait","tajak","tajam","tajau","tajdid","tajen","taji","tajin","tajir","tajis","tajuk","tajul","tajur","tak","takabur","takadum","takar","takaran","takat","takbir","takdir","takel",
  "takhta","takik","takir","takis","takisme","takkan","taklif","taklim","taklimat","takluk","takma","takmir","takna","takraw","takrif","takrim","taksa","taksasi","taksi","taksidermi",
  "taksimeter","takson","taksonomi","taksir","taktik","taktil","taktis","takuh","takuk","takung","takur","takut","takutan","takwa","takwil","takzim","tala","talab","talak","talam","talar","talas",
  "talat","talau","talenan","talenta","tali","talian","talib","talibun","talik","talikur","talqin","talun","talut","tamadun","tamah","tamak","tamam","taman","tamar","tamat",
  "tamatan","tambah","tambahan","tambak","tambal","tamban","tambang","tambar","tambat","tambatan","tambo","tambul","tambun","tambur","tampah","tampak","tampan","tampang",
  "tampar","tamparan","tampas","tampat","tampel","tampik","tampik","tampil","tampilan","tampin","tampis","tampol","tampong","tampuk","tampul","tampung","tampus","tamsil","tamu",
  "tamur","tamus","tanah","tanai","tanak","tanam","tanaman","tanat","tanda","tandak","tandan","tandang","tandas","tandatanda","tandem","tandik","tandil","tandimat","tanding",
  "tandukan","tandon","tandu","tanduk","tandun","tandur","tandus","tanfiz","tang","tangan","tangas","tangat","tangga","tanggah","tanggak","tanggap","tanggap","tanggapan","tanggar",
  "tanggat","tanggeh","tangguh","tangguk","tanggul","tanggung","tanggung","tanggungan","tangis","tangisan","tangkai","tangkal","tangkap","tangkapan","tangkap","tangkar","tangkas",
  "tangkayo","tangkel","tangki","tangkis","tangkul","tangkup","tangkut","tangkur","tanglung","tangon","tangsa","tangsel","tangsi","tani","tanin","tanjak","tanjakan","tanjidor","tanjul",
  "tanjung","tanjur","tanpa","tansah","tansik","tantang","tantangan","tante","tanti","tantieme","tanur","tanwin","tanya","tapa","tapak","tapakan","tapal","tapi","tapian","tapih","tapik","tapin","tapis",
  "tapisi","tapioka","tapis","tapi","tapis","tapo","taptu","tapuk","tapung","tapus","taput","tara","taraf","tarah","tarak","tarakter","taram","tarang","tarap","taras","tarasul","tarawang","tarawih",
  "tarbiah","tarbil","tarcis","tarekat","target","tari","tarian","tarif","tarikh","tarik","tarikan","taring","taris","tarkas","tarpaulin","tarsus","tart","tartar","tartan","tartir","taruh","taruhan",
  "taruk","tarum","tarung","tarung","tarung","tarup","tas","tasai","tasak","tasalsul","tasamuh","tasawuf","tasbeh","tasdik","tasik","tasmak","tasrif","tasrih","tasyahud","tasyakuran","tasyayuh","tata",
  "tataan","tatabahas","tatacara","tatah","tatai","tatak","tatakala","tatal","tatami","tatap","tatapan","tatap","tatar","tataran","tatasila","tatih","tating","tatis","tato","tau","taubat",
  "taufan","taufik","tauge","tauhid","tauke","tauladan","taulan","tauliah","taun","taung","taur","taurat","taut","tautan","taut","tawa","tawadu","tawakal","tawan","tawanan","tawang","tawar",
  "tawaran","tawar","tawas","tawasul","tawat","tawon","tawur","teater","tebak","tebakan","tebal","teban","tebar","tebaran","tebas","tebat","tebe","tebing","tebis","tebok","tebon","tebos",
  "tebu","tebuk","tebung","tebus","tebusan","tebus","tedas","tedeng","tedong","teduh","tedung","tegah","tegak","tegal","tegalan","tegang","tegap","tegar","tegas","tegel","teger","teguh","teguk",
  "tegun","tegur","teguran","teh","teisme","teka","tekad","tekah","tekan","tekanan","tekap","tekat","tekek","tekel","teken","teker","tekis","tekisme","tekis","teko","tekong","tekor","tekpi","teks",
  "tekstil","tekstur","tektek","tekua","tekuk","tekukur","tekul","tekun","tekup","tel","tela","teladan","telaga","telah","telak","telalu","telan","telanjang","telanjur","telantar","telap","telapak",
  "telas","telat","telau","tele","teleden","teledor","teledu","telefaks","telefoni","telegram","telegraf","telegun","telek","telekan","telekomunikasi","teleks","telempap","telempong","teleng",
  "telentang","telepon","telepuk","teles","teleskop","teleteks","televisi","telik","telikung","telimpung","telinga","telingkah","teliti","telon","telor","telos","telot","telu","teluk","teluki",
  "telukup","teluluk","telulur","telungkup","telunjuk","telur","telus","telusuk","telusur","telut","telutut","tema","temabur","temali","teman","temangga","temarang","temas","temasa","tembaga",
  "tembak","tembakau","tembakan","tembak","tembakul","tembam","tembang","tembarau","tembek","tembel","tembeliung","tembelok","temberang","tembereng","tembikai","tembilang","tembiring","tembok",
  "tembolok","tembung","tembung","tembung","tembuni","tembus","tembusan","tempa","tempaan","tempah","tempala","tempang","tempap","tempat","tempawan","tempayak","tempayang","tempayan","tempel",
  "tempelan","tempel","tempelak","tempek","tempeleng","tempeng","temperamen","temperatur","tempiar","tempik","tempik","tempilai","tempilang","tempinis","tempit","tempo","tempoh","tempoyak",
  "tempua","tempuh","tempuk","tempunyai","tempur","tempurang","tempurung","tempus","temu","temu","temut","tenaga","tenaga","tenah","tenak","tenam","tenang","tenar","tenda","tendang","tendangan",
  "tendang","tendensi","tendentius","tender","teng","tengadah","tengah","tengak","tengal","tengara","tengat","tenggak",
  "tenggang","tenggara","tenggek","tenggelam","tengger","tenggeran","tengging","tenggit","tenggulung","tenghulu","tengik","tengil","tengkar","tengkar","tengkawang","tengkel",
  "tengker","tengking","tengkleng","tengkoh","tengkok","tengkolok","tengkorak","tengku","tengkulak","tengkurap","tengkurup","tengkus","tengok","tengteng","tengu","tenis","tenjet",
  "tenis","tenor","tensi","tentamen","tentang","tentang","tentara","tentatif","tenteng","tentu","tentuan","tentukan","tentung","tenun","tenung","teori","teoretis","teosofi","tepa",
  "tepak","tepam","tepan","tepas","tepat","tepat","tepeh","tepek","tepet","tepi","tepian","tepis","tepo","tepok","tepos","tepu","tepuk","tepung","tepus","tera","teraju","terak","terak",
  "terakot","terakup","teral","terala","teram","teran","terang","terangan","terang","terangau","terap","terapi","teras","terasi","terat","teratai","teratak","teratu","terawang","terawih",
  "terban","terbang","terbangan","terbang","terbar","terbis","terbit","terbitan","terbus","tercecer","terdiri","teregal","tereh","terem","terendak","tereng","terentang","teri","teriak",
  "teriakan","terika","terima","terima","terinal","terindil","teritip","teritorium","terjal","terjang","terjang","terjemah","terjemahan","terjun","terka","terkaan","terkam","terkaman","terkap"
  ,"terkas","terkul","term","terma","terminal","terminasi","terminologi","termometer","termos","terna","ternak","ternang","ternat","terniti","terobos","terobosan","terok","teroka","terompet",
  "terompah","terong","teropong","terowongan","terpa","terpaan","terpal","terpas","terpentin","terpuk","terpus","terra","tertatih","tertawa","tertentu","tertitir","terubuk","teruna","terung","terungkap",
  "terup","terus","terusan","tes","tesis","testamen","testikel","testimoni","testis","tetah","tetak","tetal","tetampah","tetampan","tetangga","tetap","tetapan","tetapi","tetar","tetas","teter",
  "tetes","tetesan","tetiap","tetirah","tetiron","tetua","tetuang","tetulus","tewas","teyan","tiada","tiap","tiara","tiarap","tiba","tiban","tibi","tical","tida","tidak","tidur","tiduran","tifa",
  "tiga","tigas","tigo","tihang","tika","tikai","tikam","tikaman","tikar","tikas","tiket","tikim","tikung","tikungan","tikup","tilam","tilap","tilawat","tilik","tilikan","tim","tima","timah","timang",
  "timangan","timba","timbal","timbang","timbangan","timbang","timbau","timbul","timbul","timbun","timbunan","timbung","timi","timol","timor","timpa","timpal","timpang","timpas","timpe","timpu","timpua",
  "timpuk","timpus","timu","timun","timur","timus","tin","tina","tindak","tindakan","tindas","tindasan","tindih","tindis","tindik","ting","tinggal","tinggalan","tinggang","tinggi","tinggi",
  "tinggir","tinggung","tingkah","tingkar","tingkas","tingkat","tingkatan","tingkuh","tingkulus","tingkur","tingky","tinjau","tinjauan","tinju","tinta","tinting","tionghoa","tip","tipak","tipar",
  "tipes","tipi","tipis","tipograf","tipografi","tipologi","tipu","tipuan","tipus","tirai","tiram","tiran","tirani","tiras","tirau","tiri","tirik","tiris","tirisan","tiru","tiruan","tirus",
  "tis","tisik","tisu","titah","titak","titar","titel","titen","titer","titi","titian","titih","titik","titikan","titip","titipan","titir","titis","titisan","titit","titul","tituler","tiup",
  "tiupan","tiwas","toad","toak","tobak","tobat","toblos","tobo","toboh","tobros","todak","todong","tofan","toga","togar","togek","togok","toh","tohor","tohu","tojin","tok","tokak","tokek","tokoh",
  "tokoh","tokok","tokol","tokong","tokpiah","toko","tokoh","toksik","toksin","tola","tolak","tolan","tolap","tole","toleh","tolensi","toleran","toleransi","tolol","tolong","tolongan",
  "toltol","tom","toman","tomat","tombak","tombol","tombok","tombol","tomong","tompel","ton","tonase","tondak","tondek","tonder","tong","tonggak","tonggeng","tonggeret","tonggok","tongkah",
  "tongkang","tongkat","tongkeng","tongkol","tongkrong","tongong","tongtong","tonik","tonikum","tonil","tonis","tonjol","tonjolan","tonjok","tonton","tontonan","tonus","top","topah","topan",
  "topang","topas","topdal","topek","topeng","topes","topi","topik","toples","topografi","topong","toponym","toraks","torani","toreh","torehan","torek","toret","torne","torpedo","torsi","torta",
  "torto","tortor","torus","tos","toserba","total","totalitas","totaliter","toto","totok","totol","totom","toton","towaf","towel","toya","toyan","toyo","tra","tragedi","tragis","trah","traksi","traktor","trampil",
  "transaksi","transfer","transformasi","transfusi","transisi","transkrip","transmisi","transparan","transportasi","trauma","trendi","trenggiling","tri","tribun","trimurti","trinitas","triplex",
  "trisula","trotoar","truk","trun","trust","tual","tuala","tualang","tuan","tuang","tuangan","tuang","tuanku","tuar","tuas","tuba","tubagus","tuban","tuberkulosis","tubi","tubin","tubir","tubuh",
  "tubulan","tuding","tudingan","tudu","tuduh","tuduhan","tudung","tufah","tugal","tugas","tugasan","tugu","tuguran","tuh","tuhan","tuhfat","tuhi","tuhum","tui","tuil","tuit","tujah","tujak","tuju",
  "tujuan","tujuh","tuk","tukai","tukak","tukal","tukam","tukar","tukaran","tukas","tukat","tukik","tukil","tuku","tukul","tukum","tukun","tukur","tulang","tular","tulat","tulen","tuli","tulis","tulisan",
  "tulus","tuma","tuman","tumbak","tumbal","tumbang","tumbar","tumbas","tumben","tumbu","tumbuh","tumbuhan","tumbuk","tumbukan","tumenggung","tumis","tumit","tumor","tumpah","tumpak","tumpang","tumpas",
  "tumpat","tumpek","tumpeng","tumper","tumpes","tampi","tumpil","tumpit","tumpu","tumpuan","tumpuk","tumpukan","tumpul","tumpur","tumpus","tumu","tun","tuna","tunai","tunak","tunam","tunang",
  "tunangan","tunas","tunda","tundaan","tunduk","tundung","tung","tunggak","tunggakan","tunggal","tunggan","tunggang","tunggang","tunggangan","tunggeng","tungging","tunggu","tunggui","tungguk",
  "tunggul","tungka","tungkai","tungkup","tungkur","tungkus","tungku","tungkul","tungul","tunik","tuntas","tunu","tupai","tur","tura","turap","turas","turi","turis","turisme","turnamen","turne",
  "tursina","turun","turunan","turus","turut","tustel","tusus","tuta","tuton","tutor","tutorial","tutu","tutuh","tutuk","tutul","tutup","tutupan","tutur","tutus","tuyul",
  },
  ["u"] = {
  "uang","uap","ubah","ubahlaku","uban","ubang","ubar","ubek","ubel","uber","ubi","ubidana","ubikuitas","ubin","ublek","ubrak","ubub","ubudiyah","ubun","ubung","ucap","ucapan","ucar",
  "ucek","ucok","ucu","ucung","udak","udam","udang","udani","udap","udara","udeng","udet","udik","udim","udinan","udis","udit","udo","uduh","uduk","udur","udut","udutan","ufuk","ugahari",
  "ugal","ugama","ugari","uger","ugernya","ugut","uik","uir","uis","uit","ujana","ujar","ujaran","ujat","uji","ujian","ujub","ujud","ujul","ujung","ujungan","ujut","ukafi","ukhuwah","ukik",
  "ukir","ukiran","ukir","uknum","ukrit","ukses","uku","ukur","ukuran","ukurtara","ulah","ulak","ulakan","ulam","ulama","ulan","ulang","ulangan","ulap","ular","ulas","ulasan","ulat","ulekan",
  "ulek","uler","ulet","uli","ulia","ulidana","ulik","uliman","ulir","ulit","ulna","ultah","ultimatum","ultra","ultramodern","ultrasonik","ultraviolet","ulu","ulun","ulung","ulup","ulur",
  "uluran","uma","umang","umat","umbai","umban","umbang","umbar","umbara","umbari","umbat","umbul","umbun","umbur","umbut","ummat","ummi","umpak","umpama","umpan","umpat","umpet","umpil",
  "umpuk","umrah","umuk","umur","umuran","unai","unam","unang","unary","unau","uncang","uncit","uncui","unda","undak","undakan","undan","undang","undangan","undar","undat","undel","unduh",
  "unduhan","undi","undian","undok","undul","undung","undur","unget","unggal","unggan","unggang","unggar","unggat","unggas","unggat","unggeh","unggis","unggit","unggo","unggul","unggulan",
  "unggun","unggut","ungka","ungkah","ungkai","ungkap","ungkapan","ungkap","ungkat","ungkil","ungking","ungkit","ungkul","ungkur","ungkus","ungkut","ungu","uni","unifikasi","uniform",
  "unilateral","uniseluler","unisono","unit","unitaris","unitarisme","universitas","universitas","universitas","universitas","universitas","universitas","universitas","universitas",
  "universitas","universitas","universitas","universitas","universitas","universitas","universitas","universitas","universitas","univer","universal","universalisme","universil","unizar",
  "unjuk","unjukkan","unjun","unjur","unjut","unsur","unsuri","unta","untai","untaian","untal","untang","untel","unthep","untuk","untung","untungan","untup","untur","unyai","unyeh","unyuk",
  "upacara","upadana","upah","upahan","upajiwa","upak","upakara","upakarti","upam","upama","upanda","upara","upas","upat","upau","upaya","upet","upeti","upik","uplik","upo","ups","upuk",
  "ura","urai","uraian","urak","uram","uran","urang","urap","uras","urat","urban","urbanisasi","uremi","ureter","uretra","ureum","urgensi","urgen","uri","urian","uria","urib","urid","urik",
  "urilis","uring","urip","uris","urit","uritan","urna","uruk","urum","urung","urup","urus","urusan","urut","urutan","urutan","usah","usaha","usahawan","usai","usak","usal","usam","usana",
  "usang","usap","usat","usawan","usia","usik","usikan","usil","usir","usiran","uskup","usman","usmar","usobat","usrah","ustad","ustadz","ustazah","usu","usuk","usul","usulan","usuluddin","usung",
  "usungan","usur","usurper","usus","usut","usutan","uta","utah","utak","utan","utang","utara",
  "utar-utar","utari","utas","utara","utek","utem","uterus","uti","utih","utilitas","utopia","utopis","utara","utuh","utus","utusan","uyun","uyup",
  },
  ["v"] = {
  "vagina","vak","vakansi","vakasi","vakcin","vaksin","vaksinasi","vakuola","vakuum","vakum","valas","valen","valensi","valeriana","valid","validasi","validitas","valis","valium",
  "valorisasi","valsa","valuta","vampir","vanadi","vanadium","vandal","vandalisme","vandel","vanili","vanila","vanta","vante","variabel","variabilitas","varian","varians","variasi",
  "variatif","varises","varitas","varkat","varna","varnis","varsiti","vas","vasal","vaskular","vaskularisasi","vaskulitis","vasodilatasi","vasokonstriksi","vaselin","vassal","vasti",
  "vasto","vat","vatisan","vau","vaza","vebi","veda","vegetabel","vegetarir","vegetarian","vegetarisme","vegetasi","vegetatif","vehemensi","veikel","vektor","velamen","velar","velarisasi",
  "veld","velodrom","velositas","velum","vena","vending","vendeta","vending","vendor","venereal","venerologi","veneti","venia","venis","venom","ventil","ventilasi","ventilator","ventrikel",
  "ventrikulografi","venus","vep","veranda","verbal","verbalisasi","verbalisme","verba","verbatim","verben","verdam","verder","verdigris","verifikasi","verifikator","veritabel","veritas",
  "verlak","verlap","vermet","vermikulit","vermis","vermiseli","vermut","vernalisasi","verner","vernik","vernis","veronal","verositas","verruka","versa","versatilitas","verse","versi","verset",
  "versifikari","versus","vertebra","vertebrata","vertex","vertikal","vertigo","verval","verver","vesika","vesikel","vesper","vestibul","vestibulum","veteran","veteriner","veto","vetsin","via",
  "viabel","viabilitas","viaduk","viameter","viatikum","vibrasi","vibrator","vibrato","vibrion","videte","video","videofon","videograf","videografi","videoklip","videotape","videoteks","vidigras",
  "vidua","vignet","vihara","viking","viktas","viktimisasi","viktual","vila","vilegiatur","villi","villus","vina","vinal","vincit","vindicare","viniet","vinil","vinton","vinum","vinyet","viola",
  "violen","violin","violinis","violisme","vior","vipera","vips","vira","viral","viremia","viresens","virgin","virgo","viril","virilitas","virolog","virologi","virtu","virtual","virtuosa","virtuoso",
  "virulensi","virus","visa","visera","visi","visibel","visibilitas","visik","vising","visioner","visir","visit","visitasi","visitator","viske","viskoelastisitas","viskometer","viskositas","viskosa",
  "vista","visual","visualisasi","vital","vitalitas","vitamin","vitara","vitelin","viti","vitiligo","vitreus","vitrifikasi","vitriol","vitrum","viva","vivari","vivarium","vivas","vivat","viveros",
  "vivifikasi","vivipar","vivot","vla","vlag","vlam","vleis","vlek","vlier","vlot","voal","voda","vodevil","vodka","vokal","vokalis","vokalisasi","vokaloid","vokasi","vokasional","vokatif","vokoid",
  "vold","voli","volt","voltage","voltameter","voltase","voltmeter","volume","volumetrik","volumetri","voluntari","voluntarisme","volunter","volusi","votum","vouring","voute","voyage","voyeur","voyeurisme",
  "vrah","vrak","vrat","vrij","vuil","vukan","vulkan","vulkanis","vulkanisasi","vulkanisme","vulkanisir","vulkanit","vulkanologi","vulnerabel","vulpis","vuring","vuvuzela",
  },
  ["w"] = {
  "waba","wabah","wadah","wadak","wadam","wadar","wadat","wadau","wadek","wadi","wadidari","wadir","waduk","wadung","wafat","wagon","wah","wahad","wahadat","wahah","wahai","waham","wahana",
  "wahdat","wahid","wahon","wahyu","wai","waisya","waitama","wajah","wajan","wajar","wajib","wajik","wajit","wakaf","wakanda","wakap","wakar","wakil","waktu","wakul","walad","waladiyah","walafiat",
  "walah","walahar","walak","walang","walat","walau","walaupun","walhal","wali","walikota","walimah","walimana","walimatulurus","walisongo","wallah","wallahi","wallahualam","walmana",
  "walnut","waluku","waluh","waluku","wama","wamil","wana","wanara","wanasaba","wanatira","wanda","wang","wangi","wangkang","wangsa","wangsit","wanita","wanodya","wanti-wanti","wantilan",
  "war","wara","wara-wara","warak","warakawuri","warangan","waras","warasa","warat","warawidya","wardi","warga","warganegara","wari","warid","warangan","waris","warisan","warita","warkat",
  "warkop","warna","warnasari","warok","waron","warta","wartawan","wartawati","warung","wasal","wasalam","wasat","wasbak","wasilah","wasilat","wasir","wasit","wasitah","waskita","waslap",
  "waspada","wastafel","waswas","wat","watak","watan","watas","watesan","watt","watun","wau","wawancara","wawanmuka","wawansabda","wawansari","wawasan","wayang","wayuh","wazir","wedana",
  "wedang","wedar","wedaring","weduk","weharima","weker","welang","welar","welas","welat","welit","welter","wenang","werda","werdatama","werdi","werit","werst","wesel","weton","wetonan",
  "wiara","wibawa","wicara","widara","widat","widaya","widi","widia","widita","widodorari","widuri","widya","widyaiswara","widyakarya","widyasari","widyawisata","wigani","wihara","wijaya",
  "wijayakusuma","wijen","wiji","wikalat","wiladah","wilayah","wilayah","wilis","wilmana","wilujeng","winaya","windu","wirabangsa","wiracarita","wiraga","wirahma","wirakarya","wiramuda",
  "wiraniaga","wirasuara","wiraswasta","wiratama","wirawan","wirid","wiron","wiru","wisada","wisata","wisatawan","wisaya","wisik","wisuda","wisudawan","wisudawati","wisura","wit","witana",
  "witing","wiwaha","wiweka","wiyaga","wiyata","wiyatabakti","wizurai",
  "wodka","wol","wolfram","won","wong","wortel","wreda","wredatama","wremi","wringin","wukuf","wulan","wulung","wungli","wungu","wunung","wuran","wuri","wurung","wuta","wutuh","wuwung",
  },
  ["x"] = {
  "xanthate","xantena","xanti","xantin","xantofil","xantoma","xenofili","xenofobia","xenoglosia","xenograf","xenokrasi","xenolit","xenon","xenomania","xerofit","xerografi","xerokopi","xerosis",
  "xifoid","xilem","xilena","xilofon","xilografi","xiloid","xilol","xilologi","xilon","xilosa",
  },
  ["y"] = {
  "ya","yabun","yad","yahud","yahudi","yais","yaitu","yakin","yakni","yakut","yam","yamin","yang","yani","yanti","yanto","yapa","yapi","yapon","yara","yasan","yasin","yasmin","yaspis",
  "yatim","yaum","yaumulakhir","yaumulbaas","yaumulhisab","yaumuljaza","yaumulkiyamah","yaumulmahsyar","yayasan","yayu","yd","yebat","yodel","yoga","yogi","yogya","yogyakarta","yohimbin","yokel","yol",
  "yoyo","yuan","yuda","yudikatif","yudisial","yudisium","yudo","yugur","yuh","yunda","yunta","yup","yupi","yuridis","yuris","yurisdiksi","yurisprudensi","yuriste","yuyu","yuwana",
  },
  ["z"] = {
  "zaba","zabad","zabah","zabaniah","zabur","zadah","zafaran","zafar","zahid","zahir","zaitun","zakat","zakum","zalim","zaman","zamin","zamindar","zamrud","zamsyakir","zamzam","zan","zanggi",
  "zani","zanjabil","zanya","zapin","zarah","zariah","zariyat","zarrah","zat","zawal","zawat","zayun","zebra","zebul","zebu","zen","zenit","zeolit","zest","zeta","ziarah","zigot","zikir",
  "zilullah","zimogen","zimologi","zimosis","zimotik","zina","zindik","zink","zionis","zionisme","zirafah","zirah","zirkonium","zirkon",
  "zodiak","zona","zonal","zonasi","zoo","zoofit","zoofobia","zoografi","zoologi","zoonosis","zooplankton","zoospora","zuhud","zuhur","zulhijah","zulkaidah","zulkarnain","zulmat","zulu","zurafah","zuriat",
  },

}
-- Bangun flat list urut A-Z
local KBBI = {}
local LETTER_COUNT = {}
for _, letter in ipairs({"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}) do
    local t = DB[letter] or {}
    LETTER_COUNT[letter] = #t
    for _, w in ipairs(t) do table.insert(KBBI, w) end
end
table.sort(KBBI)
local _seen,_clean={},{}
for _,w in ipairs(KBBI) do if not _seen[w] then _seen[w]=true;table.insert(_clean,w) end end
KBBI=_clean

-- ============================================
-- STATE
-- ============================================
local filtered = {}
local page = 1
local PAGE_SIZE = 20
local minimized = false
local hue = 0
local activeTab = "semua"
local searchText = ""

-- ============================================
-- GUI
-- ============================================
if LocalPlayer.PlayerGui:FindFirstChild("KBBI_UI") then
    LocalPlayer.PlayerGui.KBBI_UI:Destroy()
end

local Gui = Instance.new("ScreenGui")
Gui.Name = "KBBI_UI"
Gui.ResetOnSpawn = false
Gui.DisplayOrder = 999
Gui.Parent = LocalPlayer.PlayerGui

-- Drop shadow
local Shadow = Instance.new("ImageLabel")
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxassetid://5554236805"
Shadow.ImageColor3 = Color3.fromRGB(0,0,0)
Shadow.ImageTransparency = 0.5
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(23,23,277,277)
Shadow.Position = UDim2.new(0.5,-100,0.4,-120)
Shadow.Size = UDim2.new(0,200,0,300)
Shadow.ZIndex = 0
Shadow.Parent = Gui

local Main = Instance.new("Frame")
Main.BackgroundColor3 = Color3.fromRGB(13,13,18)
Main.Position = UDim2.new(0.5,-90,0.4,-110)
Main.Size = UDim2.new(0,180,0,260)
Main.Active = true
Main.Draggable = true
Main.ClipsDescendants = true
Main.ZIndex = 1
Main.Parent = Gui
Instance.new("UICorner",Main).CornerRadius = UDim.new(0,10)
local MainStroke = Instance.new("UIStroke",Main)
MainStroke.Thickness = 1.5
MainStroke.Color = Color3.fromRGB(220,30,30)

Main:GetPropertyChangedSignal("Position"):Connect(function()
    Shadow.Position = UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset - 10, Main.Position.Y.Scale, Main.Position.Y.Offset - 10)
end)

-- Title Bar
local TBar = Instance.new("Frame")
TBar.BackgroundColor3 = Color3.fromRGB(17,17,24)
TBar.Size = UDim2.new(1,0,0,34)
TBar.BorderSizePixel = 0
TBar.ZIndex = 2
TBar.Parent = Main
Instance.new("UICorner",TBar).CornerRadius = UDim.new(0,10)

local TBarFix = Instance.new("Frame")
TBarFix.BackgroundColor3 = Color3.fromRGB(17,17,24)
TBarFix.Size = UDim2.new(1,0,0,10)
TBarFix.Position = UDim2.new(0,0,1,-10)
TBarFix.BorderSizePixel = 0
TBarFix.ZIndex = 2
TBarFix.Parent = TBar

local AccentLine = Instance.new("Frame")
AccentLine.Size = UDim2.new(1,0,0,2)
AccentLine.Position = UDim2.new(0,0,1,-2)
AccentLine.BorderSizePixel = 0
AccentLine.ZIndex = 3
AccentLine.Parent = TBar

local LogoDot = Instance.new("Frame")
LogoDot.Size = UDim2.new(0,6,0,6)
LogoDot.Position = UDim2.new(0,10,0.5,-3)
LogoDot.BorderSizePixel = 0
LogoDot.ZIndex = 3
LogoDot.Parent = TBar
Instance.new("UICorner",LogoDot).CornerRadius = UDim.new(1,0)

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Text = "KBBI Full A-Z"
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 12
TitleLabel.TextColor3 = Color3.fromRGB(240,240,250)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(1,-70,1,0)
TitleLabel.Position = UDim2.new(0,22,0,0)
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.ZIndex = 3
TitleLabel.Parent = TBar

local SubLabel = Instance.new("TextLabel")
SubLabel.Text = #KBBI.." kata"
SubLabel.Font = Enum.Font.Gotham
SubLabel.TextSize = 8
SubLabel.TextColor3 = Color3.fromRGB(80,80,100)
SubLabel.BackgroundTransparency = 1
SubLabel.Size = UDim2.new(1,-70,0,10)
SubLabel.Position = UDim2.new(0,22,0,22)
SubLabel.TextXAlignment = Enum.TextXAlignment.Left
SubLabel.ZIndex = 3
SubLabel.Parent = TBar

-- Minimize & Close
local function mkIconBtn(icon, xoff, color)
    local b = Instance.new("TextButton")
    b.Text = icon
    b.Font = Enum.Font.GothamBold
    b.TextSize = 14
    b.TextColor3 = color
    b.BackgroundColor3 = Color3.fromRGB(28,28,36)
    b.BorderSizePixel = 0
    b.Size = UDim2.new(0,22,0,22)
    b.Position = UDim2.new(1,xoff,0.5,-11)
    b.ZIndex = 4
    b.Parent = TBar
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,5)
    b.MouseEnter:Connect(function() TweenService:Create(b,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(45,45,58)}):Play() end)
    b.MouseLeave:Connect(function() TweenService:Create(b,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(28,28,36)}):Play() end)
    return b
end
local MinBtn = mkIconBtn("−",-50, Color3.fromRGB(180,180,200))
local CloseBtn = mkIconBtn("×",-25, Color3.fromRGB(255,80,80))

-- Tab Bar
local TabBar = Instance.new("Frame")
TabBar.BackgroundColor3 = Color3.fromRGB(15,15,20)
TabBar.Position = UDim2.new(0,0,0,34)
TabBar.Size = UDim2.new(1,0,0,24)
TabBar.BorderSizePixel = 0
TabBar.ZIndex = 2
TabBar.ClipsDescendants = true
TabBar.Parent = Main

local TabScroll = Instance.new("ScrollingFrame")
TabScroll.BackgroundTransparency = 1
TabScroll.Size = UDim2.new(1,0,1,0)
TabScroll.CanvasSize = UDim2.new(0,0,0,0)
TabScroll.AutomaticCanvasSize = Enum.AutomaticSize.X
TabScroll.ScrollBarThickness = 0
TabScroll.ScrollingDirection = Enum.ScrollingDirection.X
TabScroll.ZIndex = 3
TabScroll.Parent = TabBar

local TabLayout = Instance.new("UIListLayout",TabScroll)
TabLayout.FillDirection = Enum.FillDirection.Horizontal
TabLayout.Padding = UDim.new(0,2)
TabLayout.VerticalAlignment = Enum.VerticalAlignment.Center

local TabPad = Instance.new("UIPadding",TabScroll)
TabPad.PaddingLeft = UDim.new(0,4)
TabPad.PaddingRight = UDim.new(0,4)
TabPad.PaddingTop = UDim.new(0,2)
TabPad.PaddingBottom = UDim.new(0,2)

local tabButtons = {}
local function mkTab(label, key)
    local b = Instance.new("TextButton")
    b.Text = label
    b.Font = Enum.Font.GothamBold
    b.TextSize = 9
    b.TextColor3 = Color3.fromRGB(100,100,120)
    b.BackgroundColor3 = Color3.fromRGB(22,22,30)
    b.BorderSizePixel = 0
    b.Size = UDim2.new(0, label=="ALL" and 30 or 20, 0,18)
    b.ZIndex = 4
    b.Parent = TabScroll
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,4)
    tabButtons[key] = b
    return b
end

mkTab("ALL","semua")
for _, l in ipairs({"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}) do
    mkTab(l, l:lower())
end

-- Search Box
local SBoxWrap = Instance.new("Frame")
SBoxWrap.BackgroundColor3 = Color3.fromRGB(20,20,28)
SBoxWrap.Position = UDim2.new(0,7,0,62)
SBoxWrap.Size = UDim2.new(1,-14,0,28)
SBoxWrap.ZIndex = 2
SBoxWrap.Parent = Main
Instance.new("UICorner",SBoxWrap).CornerRadius = UDim.new(0,6)
local SBoxStroke = Instance.new("UIStroke",SBoxWrap)
SBoxStroke.Color = Color3.fromRGB(45,45,60)
SBoxStroke.Thickness = 1

local SearchIcon = Instance.new("TextLabel")
SearchIcon.Text = "⌕"
SearchIcon.Font = Enum.Font.GothamBold
SearchIcon.TextSize = 14
SearchIcon.TextColor3 = Color3.fromRGB(70,70,90)
SearchIcon.BackgroundTransparency = 1
SearchIcon.Size = UDim2.new(0,24,1,0)
SearchIcon.ZIndex = 3
SearchIcon.Parent = SBoxWrap

local SBox = Instance.new("TextBox")
SBox.BackgroundTransparency = 1
SBox.Position = UDim2.new(0,24,0,0)
SBox.Size = UDim2.new(1,-28,1,0)
SBox.PlaceholderText = "Cari kata..."
SBox.PlaceholderColor3 = Color3.fromRGB(60,60,80)
SBox.Text = ""
SBox.Font = Enum.Font.GothamMedium
SBox.TextSize = 11
SBox.TextColor3 = Color3.fromRGB(220,220,235)
SBox.ClearTextOnFocus = false
SBox.ZIndex = 3
SBox.Parent = SBoxWrap

-- Info Bar
local InfoBar = Instance.new("Frame")
InfoBar.BackgroundTransparency = 1
InfoBar.Position = UDim2.new(0,7,0,92)
InfoBar.Size = UDim2.new(1,-14,0,14)
InfoBar.ZIndex = 2
InfoBar.Parent = Main

local InfoLeft = Instance.new("TextLabel")
InfoLeft.Text = ""
InfoLeft.Font = Enum.Font.Gotham
InfoLeft.TextSize = 9
InfoLeft.TextColor3 = Color3.fromRGB(70,70,90)
InfoLeft.BackgroundTransparency = 1
InfoLeft.Size = UDim2.new(0.6,0,1,0)
InfoLeft.TextXAlignment = Enum.TextXAlignment.Left
InfoLeft.ZIndex = 3
InfoLeft.Parent = InfoBar

local InfoRight = Instance.new("TextLabel")
InfoRight.Text = ""
InfoRight.Font = Enum.Font.GothamBold
InfoRight.TextSize = 9
InfoRight.TextColor3 = Color3.fromRGB(70,70,90)
InfoRight.BackgroundTransparency = 1
InfoRight.Size = UDim2.new(0.4,0,1,0)
InfoRight.Position = UDim2.new(0.6,0,0,0)
InfoRight.TextXAlignment = Enum.TextXAlignment.Right
InfoRight.ZIndex = 3
InfoRight.Parent = InfoBar

-- Scroll List
local Scroll = Instance.new("ScrollingFrame")
Scroll.BackgroundColor3 = Color3.fromRGB(16,16,22)
Scroll.Position = UDim2.new(0,6,0,108)
Scroll.Size = UDim2.new(1,-12,1,-156)
Scroll.CanvasSize = UDim2.new(0,0,0,0)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.ScrollBarThickness = 2
Scroll.ScrollBarImageColor3 = Color3.fromRGB(200,30,30)
Scroll.BorderSizePixel = 0
Scroll.ZIndex = 2
Scroll.Parent = Main
Instance.new("UICorner",Scroll).CornerRadius = UDim.new(0,6)
local ScrollStroke = Instance.new("UIStroke",Scroll)
ScrollStroke.Color = Color3.fromRGB(28,28,38)
ScrollStroke.Thickness = 1

local SList = Instance.new("UIListLayout",Scroll)
SList.Padding = UDim.new(0,2)
SList.SortOrder = Enum.SortOrder.LayoutOrder

local SPad = Instance.new("UIPadding",Scroll)
SPad.PaddingTop = UDim.new(0,4)
SPad.PaddingLeft = UDim.new(0,4)
SPad.PaddingRight = UDim.new(0,4)
SPad.PaddingBottom = UDim.new(0,4)

local EmptyLabel = Instance.new("TextLabel")
EmptyLabel.Text = "Pilih huruf atau ketik kata..."
EmptyLabel.Font = Enum.Font.Gotham
EmptyLabel.TextSize = 9
EmptyLabel.TextColor3 = Color3.fromRGB(50,50,65)
EmptyLabel.BackgroundTransparency = 1
EmptyLabel.Size = UDim2.new(1,0,0,40)
EmptyLabel.TextWrapped = true
EmptyLabel.ZIndex = 3
EmptyLabel.Parent = Scroll

-- Nav Bar
local NavBar = Instance.new("Frame")
NavBar.BackgroundColor3 = Color3.fromRGB(15,15,20)
NavBar.Position = UDim2.new(0,0,1,-48)
NavBar.Size = UDim2.new(1,0,0,48)
NavBar.BorderSizePixel = 0
NavBar.ZIndex = 2
NavBar.Parent = Main

local NavTop = Instance.new("Frame")
NavTop.BackgroundColor3 = Color3.fromRGB(28,28,38)
NavTop.Size = UDim2.new(1,0,0,1)
NavTop.BorderSizePixel = 0
NavTop.ZIndex = 3
NavTop.Parent = NavBar

local function mkNavBtn(txt, xp, wp, yp, hp)
    local b = Instance.new("TextButton")
    b.Text = txt
    b.Font = Enum.Font.GothamBold
    b.TextSize = 10
    b.TextColor3 = Color3.fromRGB(160,160,185)
    b.BackgroundColor3 = Color3.fromRGB(22,22,32)
    b.BorderSizePixel = 0
    b.Position = UDim2.new(0,xp,0,yp)
    b.Size = UDim2.new(0,wp,0,hp)
    b.ZIndex = 3
    b.Parent = NavBar
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,5)
    b.MouseEnter:Connect(function() TweenService:Create(b,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(35,35,50)}):Play() end)
    b.MouseLeave:Connect(function() TweenService:Create(b,TweenInfo.new(0.1),{BackgroundColor3=Color3.fromRGB(22,22,32)}):Play() end)
    return b
end

local PrevBtn = mkNavBtn("◀ PREV", 6, 50, 6, 18)
local NextBtn = mkNavBtn("NEXT ▶", 124, 50, 6, 18)
local PageLabel = Instance.new("TextLabel")
PageLabel.Text = "-/-"
PageLabel.Font = Enum.Font.GothamBold
PageLabel.TextSize = 10
PageLabel.TextColor3 = Color3.fromRGB(130,130,160)
PageLabel.BackgroundTransparency = 1
PageLabel.Size = UDim2.new(0,60,0,18)
PageLabel.Position = UDim2.new(0,60,0,6)
PageLabel.TextXAlignment = Enum.TextXAlignment.Center
PageLabel.ZIndex = 3
PageLabel.Parent = NavBar

local LainBtn = mkNavBtn("LAINNYA ▶", 6, 168, 28, 14)
LainBtn.TextSize = 9

-- ============================================
-- LOGIC
-- ============================================
local function isSusah(kata)
    local akhir2 = kata:sub(-2):lower()
    local akhir1 = kata:sub(-1):lower()
    
    local hurufSusah2 = {"ah", "if", "ng"}  -- akhiran 2 huruf susah
    local hurufSusah1 = {"x", "q", "z", "v"}  -- akhiran 1 huruf susah
    
    return table.find(hurufSusah2, akhir2) or table.find(hurufSusah1, akhir1)
end

local function sortPrioritasSusah(list)
    table.sort(list, function(a, b)
        local susahA = isSusah(a)
        local susahB = isSusah(b)
        if susahA and not susahB then return true end
        if not susahA and susahB then return false end
        return a < b
    end)
end

local function getSource()
    if activeTab == "semua" then return KBBI end
    local src = {}
    for _, w in ipairs(KBBI) do
        if w:sub(1,1):lower() == activeTab then table.insert(src, w) end
    end
    return src
end

local function applySearch(src)
    local q = searchText:lower():gsub("%s+","")
    if q == "" then return src end
    local res = {}
    for _, w in ipairs(src) do
        if w:sub(1,#q) == q then table.insert(res, w) end
    end
    return res
end

local function clearList()
    for _, c in pairs(Scroll:GetChildren()) do
        if c:IsA("TextButton") then c:Destroy() end
    end
end

local function renderPage()
    clearList()
    EmptyLabel.Visible = false
    local total = #filtered
    if total == 0 then
        EmptyLabel.Visible = true
        EmptyLabel.Text = searchText~="" and ('Tidak ada kata "'..searchText..'"') or "Pilih huruf atau ketik kata..."
        InfoLeft.Text = "0 kata"
        InfoRight.Text = ""
        PageLabel.Text = "-/-"
        PrevBtn.Visible = false
        NextBtn.Visible = false
        LainBtn.Visible = false
        return
    end
    local totalPages = math.ceil(total / PAGE_SIZE)
    page = math.clamp(page, 1, totalPages)
    local sI = (page-1)*PAGE_SIZE + 1
    local eI = math.min(page*PAGE_SIZE, total)

    for i = sI, eI do
        local w = filtered[i]
        local btn = Instance.new("TextButton")
        btn.Text = ""
        btn.BackgroundColor3 = Color3.fromRGB(20,20,28)
        btn.BorderSizePixel = 0
        btn.Size = UDim2.new(1,0,0,24)
        btn.LayoutOrder = i
        btn.ZIndex = 4
        btn.Parent = Scroll
        Instance.new("UICorner",btn).CornerRadius = UDim.new(0,5)

        local bar = Instance.new("Frame")
        bar.Size = UDim2.new(0,3,0.6,0)
        bar.Position = UDim2.new(0,0,0.2,0)
        bar.BackgroundColor3 = Color3.fromRGB(180,25,25)
        bar.BorderSizePixel = 0
        bar.ZIndex = 5
        bar.Parent = btn
        Instance.new("UICorner",bar).CornerRadius = UDim.new(0,2)

        local num = Instance.new("TextLabel")
        num.Text = tostring(i)
        num.Font = Enum.Font.Gotham
        num.TextSize = 7
        num.TextColor3 = Color3.fromRGB(55,55,70)
        num.BackgroundTransparency = 1
        num.Size = UDim2.new(0,24,1,0)
        num.Position = UDim2.new(0,8,0,0)
        num.TextXAlignment = Enum.TextXAlignment.Left
        num.ZIndex = 5
        num.Parent = btn

        local wlabel = Instance.new("TextLabel")
        wlabel.Text = w:upper()
        wlabel.Font = Enum.Font.GothamSemibold
        wlabel.TextSize = 10
        wlabel.TextColor3 = Color3.fromRGB(210,210,228)
        wlabel.BackgroundTransparency = 1
        wlabel.Size = UDim2.new(1,-58,1,0)
        wlabel.Position = UDim2.new(0,30,0,0)
        wlabel.TextXAlignment = Enum.TextXAlignment.Left
        wlabel.ZIndex = 5
        wlabel.Parent = btn

        local copy = Instance.new("TextLabel")
        copy.Text = "⎘"
        copy.Font = Enum.Font.GothamBold
        copy.TextSize = 10
        copy.TextColor3 = Color3.fromRGB(50,50,65)
        copy.BackgroundTransparency = 1
        copy.Size = UDim2.new(0,20,1,0)
        copy.Position = UDim2.new(1,-22,0,0)
        copy.ZIndex = 5
        copy.Parent = btn

        -- Warning kecil hanya ⚠
        if isSusah(w) then
            local warning = Instance.new("TextLabel")
            warning.Text = "⚠"
            warning.Font = Enum.Font.GothamBold
            warning.TextSize = 11
            warning.TextColor3 = Color3.fromRGB(255, 80, 80)
            warning.BackgroundColor3 = Color3.fromRGB(40, 20, 20)
            warning.Size = UDim2.new(0, 24, 0.8, 0)
            warning.Position = UDim2.new(1, -46, 0.1, 0)
            warning.TextXAlignment = Enum.TextXAlignment.Center
            warning.ZIndex = 5
            warning.Parent = btn
            Instance.new("UICorner", warning).CornerRadius = UDim.new(0,6)
            
            wlabel.Size = UDim2.new(1, -90, 1, 0)
            btn.BackgroundColor3 = Color3.fromRGB(30, 20, 25)
        end

        btn.MouseEnter:Connect(function()
            TweenService:Create(btn,TweenInfo.new(0.08),{BackgroundColor3=Color3.fromRGB(30,30,42)}):Play()
            TweenService:Create(bar,TweenInfo.new(0.08),{BackgroundColor3=Color3.fromRGB(255,50,50)}):Play()
            TweenService:Create(copy,TweenInfo.new(0.08),{TextColor3=Color3.fromRGB(150,150,180)}):Play()
        end)
        btn.MouseLeave:Connect(function()
            TweenService:Create(btn,TweenInfo.new(0.08),{BackgroundColor3=btn.BackgroundColor3}):Play()
            TweenService:Create(bar,TweenInfo.new(0.08),{BackgroundColor3=Color3.fromRGB(180,25,25)}):Play()
            TweenService:Create(copy,TweenInfo.new(0.08),{TextColor3=Color3.fromRGB(50,50,65)}):Play()
        end)

        btn.MouseButton1Click:Connect(function()
            if setclipboard then setclipboard(w) end
            local orig = wlabel.TextColor3
            wlabel.TextColor3 = Color3.fromRGB(80,235,130)
            copy.Text = "✓"
            copy.TextColor3 = Color3.fromRGB(80,235,130)
            btn.BackgroundColor3 = Color3.fromRGB(20,45,28)
            wait(0.8)
            if btn and btn.Parent then
                TweenService:Create(btn,TweenInfo.new(0.2),{BackgroundColor3=btn.BackgroundColor3}):Play()
                wlabel.TextColor3 = Color3.fromRGB(210,210,228)
                copy.Text = "⎘"
                copy.TextColor3 = Color3.fromRGB(50,50,65)
            end
        end)
    end

    InfoLeft.Text = total.." kata ditemukan"
    InfoRight.Text = "hal "..page.."/"..totalPages
    PageLabel.Text = page.."/"..totalPages
    PrevBtn.Visible = page > 1
    NextBtn.Visible = page < totalPages
    LainBtn.Visible = page < totalPages
    Scroll.CanvasPosition = Vector2.new(0,0)
end

local function refresh()
    local src = getSource()
    filtered = applySearch(src)
    sortPrioritasSusah(filtered)
    renderPage()
end

local function setTab(key)
    activeTab = key
    page = 1
    for k, b in pairs(tabButtons) do
        if k == key then
            b.TextColor3 = Color3.fromRGB(255,255,255)
            b.BackgroundColor3 = Color3.fromRGB(180,25,25)
        else
            b.TextColor3 = Color3.fromRGB(100,100,120)
            b.BackgroundColor3 = Color3.fromRGB(22,22,30)
        end
    end
    refresh()
end

-- Events dengan pengecekan aman
if tabButtons and type(tabButtons) == "table" then
    for key, btn in pairs(tabButtons) do
        if btn then
            btn.MouseButton1Click:Connect(function()
                setTab(key)
            end)
        end
    end
else
    warn("[KBBI] tabButtons tidak valid!")
end

SBox:GetPropertyChangedSignal("Text"):Connect(function()
    searchText = SBox.Text
    page = 1
    refresh()
end)
SBox.Focused:Connect(function()
    TweenService:Create(SBoxStroke,TweenInfo.new(0.15),{Color=Color3.fromRGB(200,30,30)}):Play()
end)
SBox.FocusLost:Connect(function()
    TweenService:Create(SBoxStroke,TweenInfo.new(0.15),{Color=Color3.fromRGB(45,45,60)}):Play()
end)

PrevBtn.MouseButton1Click:Connect(function()
    if page > 1 then page = page-1; renderPage() end
end)
NextBtn.MouseButton1Click:Connect(function()
    local tp = math.ceil(#filtered/PAGE_SIZE)
    if page < tp then page = page+1; renderPage() end
end)
LainBtn.MouseButton1Click:Connect(function()
    local tp = math.ceil(#filtered/PAGE_SIZE)
    if page < tp then page = page+1; renderPage() end
end)

MinBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        TweenService:Create(Main,TweenInfo.new(0.2,Enum.EasingStyle.Quart),{Size=UDim2.new(0,180,0,34)}):Play()
        TweenService:Create(Shadow,TweenInfo.new(0.2),{Size=UDim2.new(0,200,0,60)}):Play()
        MinBtn.Text = "+"
    else
        TweenService:Create(Main,TweenInfo.new(0.2,Enum.EasingStyle.Quart),{Size=UDim2.new(0,180,0,260)}):Play()
        TweenService:Create(Shadow,TweenInfo.new(0.2),{Size=UDim2.new(0,200,0,300)}):Play()
        MinBtn.Text = "−"
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    TweenService:Create(Main,TweenInfo.new(0.2,Enum.EasingStyle.Back,Enum.EasingDirection.In),
        {Size=UDim2.new(0,0,0,0), Position=UDim2.new(Main.Position.X.Scale, Main.Position.X.Offset+90, Main.Position.Y.Scale, Main.Position.Y.Offset+130)}
    ):Play()
    wait(0.22)
    Gui:Destroy()
end)

-- Rainbow animate
RunService.RenderStepped:Connect(function(dt)
    hue = (hue + dt*0.12) % 1
    local c = Color3.fromHSV(hue, 0.9, 1)
    MainStroke.Color = c
    AccentLine.BackgroundColor3 = c
    LogoDot.BackgroundColor3 = c
end)

-- Init
setTab("semua")
print("[KBBI Full A-Z] Loaded — "..#KBBI.." kata | Susah diurutkan ke atas!")
