CREATE TABLE tema (
    id SERIAL PRIMARY KEY,
    nazev VARCHAR(500) NOT NULL,
    obsah TEXT NOT NULL,  -- dlouhý zpracovaný text
);

CREATE TABLE otazky (
    id SERIAL PRIMARY KEY,
    tema_id INTEGER NOT NULL REFERENCES tema(id) ON DELETE CASCADE,
    text_otazky TEXT NOT NULL
);

CREATE TABLE odpovedi (
    id SERIAL PRIMARY KEY,
    otazka_id INTEGER NOT NULL REFERENCES otazky(id) ON DELETE CASCADE,
    text_odpovedi TEXT NOT NULL,
    pravdivost BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE pexeso (
    id SERIAL PRIMARY KEY,
    tema_id INTEGER NOT NULL REFERENCES tema(id) ON DELETE CASCADE,
    text_karty_1 TEXT NOT NULL,
    text_karty_2 TEXT NOT NULL
);

CREATE TABLE poznavacka (
    id SERIAL PRIMARY KEY,
    tema_id INTEGER NOT NULL REFERENCES tema(id) ON DELETE CASCADE,
    obrazek_path VARCHAR(500) NOT NULL
);

CREATE TABLE image_areas (
    id SERIAL PRIMARY KEY,
    obrazek_id INTEGER NOT NULL REFERENCES poznavacka(id) ON DELETE CASCADE,
    nazev VARCHAR(500) NOT NULL,  -- správný název
    x INTEGER NOT NULL,
    y INTEGER NOT NULL,
    vyska INTEGER NOT NULL,
    sirka INTEGER NOT NULL
);

CREATE INDEX idx_questions_topic ON otazky(tema_id);
CREATE INDEX idx_answers_question ON odpovedi(otazka_id);
CREATE INDEX idx_memory_topic ON pexeso(tema_id);
CREATE INDEX idx_images_topic ON poznavacka(tema_id);
