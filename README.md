# WineHub

WineHub je web aplikacija razvijena u Ruby on Rails okviru koja omogućuje upravljanje veleprodajnim narudžbama, proizvodima i poslovnim partnerima. Sustav je namijenjen poslovnim partnerima za naručivanje proizvoda te administratorima za upravljanje katalogom i obradom narudžbi.

---

## Tehnologije

- Ruby (3.x)
- Ruby on Rails (7.x)
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

    rails server

Aplikacija će biti dostupna na:

    http://localhost:3000

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

## Napomene

- Sustav koristi PostgreSQL bazu podataka
- PDF dokumenti generiraju se pomoću Prawn biblioteke
- E-mail funkcionalnost može zahtijevati dodatnu konfiguraciju (SMTP)

---

## Mogući problemi

### PostgreSQL nije pokrenut
Pokrenuti PostgreSQL servis (ovisno o OS-u)

### Greška kod instalacije gemova

    bundle update

### Problem s bazom

    rails db:drop db:create db:migrate db:seed

---

## Autor

Borna Ivančić  
Završni rad – FOI