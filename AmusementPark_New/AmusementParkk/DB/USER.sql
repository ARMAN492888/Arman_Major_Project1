-- users
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email TEXT UNIQUE,
  name TEXT,
  password_hash TEXT,
  created_at TIMESTAMP DEFAULT now()
);

-- leads (marketing)
CREATE TABLE leads (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT,
  email TEXT,
  phone TEXT,
  source TEXT, -- e.g. 'website-widget', 'fb-ad'
  utm JSONB,
  created_at TIMESTAMP DEFAULT now()
);

-- bookings
CREATE TABLE bookings (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id),
  name TEXT,
  date DATE,
  tickets INT,
  ticket_type TEXT,
  amount_cents INT,
  status TEXT DEFAULT 'pending',
  order_id TEXT,
  created_at TIMESTAMP DEFAULT now()
);

-- events (analytics/logging)
CREATE TABLE events (
  id BIGSERIAL PRIMARY KEY,
  user_id UUID,
  event_name TEXT,
  payload JSONB,
  created_at TIMESTAMP DEFAULT now()
);


