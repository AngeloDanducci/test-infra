// knative.dev DNS
module "knative_dev" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "~> 4.1"
  project_id = module.project.project_id
  type       = "public"
  name       = "knative-dev"
  domain     = "knative.dev."

  recordsets = [
    {
      name = ""
      type = "A"
      ttl  = 300
      records = [
        "75.2.60.5",
      ]
    },
    {
      name = "www"
      type = "CNAME"
      ttl  = 300
      records = [
        "knative.netlify.com.",
      ]
    },
    {
      name = ""
      type = "MX"
      ttl  = 300
      records = [
        "1 aspmx.l.google.com.",
        "5 alt1.aspmx.l.google.com.",
        "5 alt2.aspmx.l.google.com.",
        "10 alt3.aspmx.l.google.com.",
        "10 alt4.aspmx.l.google.com.",
      ]
    },
    {
      name = ""
      type = "CAA"
      ttl  = 300
      records = [
        "0 issue \"letsencrypt.org\"",
        "0 issue \"pki.goog\"",
      ]
    },
    {
      name = ""
      type = "TXT"
      ttl  = 300
      records = [
        "\"v=spf1 include:_spf.google.com ~all\"",
        "google-site-verification=w5KR-YluNH94Htu_LcKidfaDfQhlyzRaCp4-_VI5yFY"
      ]
    },
    {
      name = "prow"
      type = "A"
      ttl  = 300
      records = [
        "35.201.93.215",
      ]
    },
    # {
    #   name = "prow"
    #   type = "AAAA"
    #   ttl  = 300
    #   records = [
    #     "2600:1901:0:559b::",
    #   ]
    # },
    {
      name = "gcsweb"
      type = "A"
      ttl  = 300
      records = [
        "35.201.93.215",
      ]
    },
    {
      name = "grafana"
      type = "A"
      ttl  = 300
      records = [
        "35.244.204.234",
      ]
    },
    {
      name = "elections"
      type = "CNAME"
      ttl  = 300
      records = [
        "elb.apps.ospo-osci.z3b1.p1.openshiftapps.com.",
      ]
    },
    {
      name = "testgrid"
      type = "CNAME"
      ttl  = 300
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      name = "slack"
      type = "CNAME"
      ttl  = 300
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      name = "blog"
      type = "CNAME"
      ttl  = 300
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      name = "stats"
      type = "CNAME"
      ttl  = 300
      records = [
        "ghs.googlehosted.com.",
      ]
    },
    {
      name = "_github-challenge-knative-org"
      type = "TXT"
      ttl  = 300
      records = [
        "24af6f63e3",
      ]
    },
    {
      name = "_acme-challenge"
      type = "CNAME"
      ttl  = 300
      records = [
        "83ded2db-0c5e-4f1f-ab89-93105195240d.12.authorize.certificatemanager.goog.",
      ]
    },
    {
      name = "perf"
      type = "A"
      ttl  = 300
      records = [
        "34.170.87.98",
    },
  ]
}

// knative.team DNS
module "knative_team" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "~> 4.1"
  project_id = module.project.project_id
  type       = "public"
  name       = "knative-team"
  domain     = "knative.team."

  recordsets = [
    {
      name = ""
      type = "MX"
      ttl  = 300
      records = [
        "1 aspmx.l.google.com.",
        "5 alt1.aspmx.l.google.com.",
        "5 alt2.aspmx.l.google.com.",
        "10 alt3.aspmx.l.google.com.",
        "10 alt4.aspmx.l.google.com.",
      ]
    },
    {
      name = "www"
      type = "CNAME"
      ttl  = 300
      records = [
        "knative.netlify.com.",
      ]
    },
    {
      name = "google._domainkey"
      type = "TXT"
      ttl  = 300
      records = [
        "\"v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjLQ9stjzBzp1HIGdxFWKotUPNrFwh47vQV7lIi1ioABjjgFDpeUvxVKsitVYO1m2ufxocY/rLOIGQ4Ap1WDM0qVh2VIPy9hpYxM1rEhEoQm5xWtyNb2GL9OUqXJmmDDDJPi2VnuNnDBRcGcEng/xGmgwSO6rMsAZrZVZV\" \"c41DkGWlQaiO5BzA/HBQx5vwMzvKhqtgbfAtgj7V6g8qTYTdyljgSQPlelH63xYGJNaEqf1blg7aXwsZzXPxHbW8Vj16zcFBweo7X+Gg/ig2H3uFdgMzON6CnGG/dw/8sL/zVDr/2zRd7i5DS0S8XJpn7lomwWlNE8RIW27qI8aVOvrZwIDAQAB\""
      ]
    },
    {
      name = ""
      type = "TXT"
      ttl  = 300
      records = [
        "\"v=spf1 include:_spf.google.com ~all\"",
        "google-site-verification=w5KR-YluNH94Htu_LcKidfaDfQhlyzRaCp4-_VI5yFY",
        "\"v=DMARC1; p=none; pct=100; adkim=s; aspf=s\"",
      ]
    },
  ]
}

// kn.dev DNS
module "kn_dev" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "~> 4.1"
  project_id = module.project.project_id
  type       = "public"
  name       = "kn-dev"
  domain     = "kn.dev."

  recordsets = []
  // no active records so far.
}

// kn-e2e.dev DNS
module "kn_e2e_dev" {
  source      = "terraform-google-modules/cloud-dns/google"
  version     = "~> 4.1"
  description = "Custom domain used only for Knative E2E tests."
  project_id  = "knative-e2e-dns"
  type        = "public"
  name        = "knative-e2e"
  domain      = "kn-e2e.dev."
  dnssec_config = {
  state = "on" }

  recordsets = []
  // RECORDSETS ARE ADDED VIA E2E AUTOMATION, CONSIDER THOSE TESTS BEFORE ADDING RECORDS
}
