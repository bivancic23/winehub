# WineHub

WineHub je web aplikacija razvijena u Ruby on Rails okviru koja omogućuje upravljanje veleprodajnim narudžbama, proizvodima i poslovnim partnerima. Sustav je namijenjen poslovnim partnerima za naručivanje proizvoda te administratorima za upravljanje katalogom i obradom narudžbi.

---

## Tehnologije

- Ruby (3.x)
- Ruby on Rails (7/8)
- PostgreSQL
- Tailwind CSS
- Prawn (PDF generiranje)
- Action Mailer (slanje e-mailova)

---

## Preduvjeti

Za pokretanje aplikacije potrebno je imati instalirano:

- Ruby (preporučeno 3.x)
- Rails
- PostgreSQL
- Git

Provjera instalacije:

    ruby -v
    rails -v
    psql --version
    git --version

---

## Pokretanje aplikacije

### 1. Kloniranje repozitorija

    git clone https://github.com/bivancic23/winehub.git
    cd winehub

---

### 2. Instalacija gemova

    bundle install

---

### 3. Konfiguracija baze podataka

Provjeriti da je PostgreSQL pokrenut.

Zatim pokrenuti:

    rails db:create
    rails db:migrate
    rails db:seed

---

### 4. Pokretanje aplikacije

Preporučeni način:

    bin/dev

Aplikacija će biti dostupna na:

    http://localhost:3000

Ako je port zauzet:

    PORT=3001 bin/dev

---

## Demo podaci i korisnici

Nakon pokretanja:

    rails db:seed

u sustav se učitavaju testni podaci (proizvodi, partneri, narudžbe).

### Admin korisnici

    Email: admin@example.com
    Lozinka: password123

    Email: a@a.a
    Lozinka: 123456

### Partner korisnici

    Email: borna.ivancic23@gmail.com
    Lozinka: password123

Dodatno se generira više partner korisnika:

    partner2@winehub.test
    partner3@winehub.test
    ...
    partner50@winehub.test

Za sve njih vrijedi:

    Lozinka: password123

---

## Testiranje

Za pokretanje testova:

    rails test

---

## Funkcionalnosti

### Poslovni partner
- pregled kataloga proizvoda
- pretraživanje i filtriranje proizvoda
- kreiranje narudžbi
- pregled statusa narudžbi

### Administrator
- upravljanje proizvodima (CRUD)
- upravljanje poslovnim partnerima
- obrada i odobravanje narudžbi
- generiranje PDF ponuda
- slanje ponuda putem e-pošte
- pregled izvještaja

---

## E-mail funkcionalnost

Za slanje e-mailova potrebno je postaviti varijable okruženja:

    GMAIL_USERNAME=vas_email@gmail.com
    GMAIL_APP_PASSWORD=vas_app_password

Ako varijable nisu postavljene:
- aplikacija će raditi normalno
- e-mailovi se neće stvarno slati (test mode)

---

## Napomene

- Sustav koristi PostgreSQL bazu podataka
- PDF dokumenti generiraju se pomoću Prawn biblioteke
- Aplikacija koristi Tailwind CSS (pokreće se kroz `bin/dev`)

---

## Mogući problemi

### PostgreSQL nije pokrenut
Pokrenuti PostgreSQL servis (ovisno o OS-u)

### Port 3000 zauzet

    lsof -i :3000
    kill -9 PID

ili pokrenuti na drugom portu:

    PORT=3001 bin/dev

### Problem s bazom

    rails db:drop db:create db:migrate db:seed

---

## Autor

Borna Ivančić  
Završni rad – FOI