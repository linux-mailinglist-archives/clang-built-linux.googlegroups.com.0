Return-Path: <clang-built-linux+bncBDUIVVFA6YCBBTNDTD7AKGQE3HU3S7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3EC2C9E41
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 10:50:06 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id a13sf1675058ybj.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 01:50:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606816206; cv=pass;
        d=google.com; s=arc-20160816;
        b=l4YdBTT0qLSlxYHEU6JGnaZKTTkNVcAO2zQCGPgbybwAB5qkj/PjUgmGilaIM+NgWe
         LumvYSR41EWPZWAPIeF8ykfVW8Gd/I33O4OXtP1YzIEjvxOKB5egT1uZGVV0yQz3EW3C
         w/FI3qeVCHVzfYYO8UWUTl7mQdQWwi/2tfYlZoaZxXM0l4CjAbS04RrxiXM7YFFJ1ybl
         OmDsGf7imIj/mX4dZShAM/BPP++nqiDcYxvGyhULH6+u+ejS/y/WTZX/BN+ywFHi+SKY
         TPlRSTnChj795BO2zPQ9MidQlus4KrjTcnus4mAeHj4cxpEMtJGKdk1c1FghuJgvuLlX
         ZSkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=Ded2wM7YyxkpU7gi1gpWlnoYNeKQIcWhs6XM2fZ1t5c=;
        b=ls9c244xN03IxN5sGCRIgp6eqQ+F2k9xcughtEGrCVuiQfVYRAxy8R7KFkuliWjOWJ
         RrCp6/Ly2fSNj2RssHcOr4NcdEKNafLMx4M4s2mhTPCrDOFiVx9+V/zpOMdLgA4zMKZD
         Quvr7B1P7ll+uPsB48k8moKd2QN9LLoOB9QlvO+qAXsJRkLXuo33yVwvGfRUdq02xEF4
         SzeBWrWze0loaMPEWeM1R3zoh+h/tjub4yoVRkXfdoWbGwGYPreYXfOgowj2sTJG5tP+
         m2WIsiskG+2ODtcJf8BGTCGuvTYbFPuI65mPjZ7CTCkok6j/RP/sie/ofsrYua/gSqvP
         duJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=spfppcC9;
       spf=pass (google.com: best guess record for domain of batv+892a63f9c94259f4e6ca+6309+infradead.org+dwmw2@merlin.srs.infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=BATV+892a63f9c94259f4e6ca+6309+infradead.org+dwmw2@merlin.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ded2wM7YyxkpU7gi1gpWlnoYNeKQIcWhs6XM2fZ1t5c=;
        b=UCO4gmTFZ8Bfvwc2JAtOjPtc8rsz7ViyfIbK5OngAVfMxVrx1ixrblYREQbtjXSWTD
         udMTTpYL0txY2d6vkyRsYqeVmYDo79+8Tg+EXGBd5g8dj37GeiR+LvqzjJbB1hckXq4o
         48BMURJKvQVhfMmKlnodlHMfbCIgH+yGpjQXgmvI7o0AsSXDZDPRSK4yh4kMjsRiDScJ
         9JE6bmHabgxcrajoF+YWTxV8KJH1fCDwhqcs1CrG1zJFbSbfmqGTrXBtITlXcWyHYbMP
         ptfuxzAoouMPyoW2VbB2P5aKVed2y96UUBHQGGM+tJ4H4tBg+TT0/clOUQWAiCp1wlhF
         YrRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ded2wM7YyxkpU7gi1gpWlnoYNeKQIcWhs6XM2fZ1t5c=;
        b=Pgxo8nhatB1bWQekyABKXC2sZNJl/FPhXRtnUwvxadDA6PhclPDdLTSsqAZp+Frpno
         LbHsjbWsQCSIhhPEDtFRT6T3pIpOsUD6pUby3TvodEtn1WAIMXNtbyk4atGzlYo9eMYY
         SxpixjMRzt9u7+UI5kOtwuY14l4owoGAfepW4PTrA0TuBoR7WR73R3a8Si/+YlhId2BD
         oa8XKfgAlR93HIJbGYOdRsdGrEEHvrK3FPCBMZQmZi0Fl+6czZWNqKA2wvGJ7JNNUaCE
         xCBs182885awbJgxD2j6v9D8UE+6zbugOVS5dzfQOLrR8RVV/GppEaQxNscsmM6Hx0jw
         gqNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wR9iQZ1zCZGLMCSTL8EGM31efx0esUUNZmIR8NujBKLKuHFeC
	FKY0PV2e8wBI2dK9GDVXaYY=
X-Google-Smtp-Source: ABdhPJzdPy2aSpzwp6orrMZegRhROvtmoA5GQrUcpQiEmliciC69wE3+M2GBJ1okithyW+3vMc9ExA==
X-Received: by 2002:a25:11c2:: with SMTP id 185mr2424088ybr.410.1606816205782;
        Tue, 01 Dec 2020 01:50:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:19c3:: with SMTP id 186ls692918ybz.7.gmail; Tue, 01 Dec
 2020 01:50:05 -0800 (PST)
X-Received: by 2002:a25:d416:: with SMTP id m22mr2000724ybf.318.1606816205408;
        Tue, 01 Dec 2020 01:50:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606816205; cv=none;
        d=google.com; s=arc-20160816;
        b=Y1vhORqvYuzl3X47Id2o0vqNkbhFfFJt9lZ4UEI2bJKErkZRRiY04cjZ++NsjlqUGG
         Yebx2lJvLxmkg+1aun7l+sH8z+AqLfYOV1qesxSnKaaeijA7H0/WeRwYJ3GkeYZPSPuB
         TfaOYw6FMMV/Afj099+1nbT5bTi9xTOvNm4KoLhKzxEURR1GlBd5D9C7w9YB96VudvjI
         JHTgh35s+6G4yhSlcVT9iNAW20ZE9niRikqh0bOuNr1xdnkd3sNfItD7TGw1q3sFTOHO
         WEYShaULefbPMhI59cqngSHrDTiXo/2A9fKK1Bf/oJsxZ2d9fxSTIdsZXNaXdDWGqjl3
         gsUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:dkim-signature;
        bh=/zt1zxHGQKCphv/4lZVrlz0DlEtzDDr0dZ7+rYKgE+o=;
        b=siynFh01D0kOEUjYRgSWsRiDolJKpbNBbxrchi5K1PfGo2RJWq9kdsovEDehesnlhx
         Y2zAk3A9tFjGo7wOIjZjKGl2TwYWkfGO0UsTk9A7N1Mhyy0OluY5cSPhu3fZLliOFrb2
         O7MdfUisZX+m+PiAj8H63YDnevuUr2sFMX1KfDJABXCiOjno2GW02S7PSdQWfNtSYbny
         fqdC9T3BG47ii7JqYay69f3U1L3R2nSRFe+flQpUm04K4zHQauJXvR4KYIBAM6uQ76Kn
         TIk5D2MkDgh8wPCWxp9QNL/5ULXafFdoZqAUObUEL2XLT3zkEwtWa7EdQ4S7LHlXw/xv
         T6aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=spfppcC9;
       spf=pass (google.com: best guess record for domain of batv+892a63f9c94259f4e6ca+6309+infradead.org+dwmw2@merlin.srs.infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=BATV+892a63f9c94259f4e6ca+6309+infradead.org+dwmw2@merlin.srs.infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id y4si107440ybr.2.2020.12.01.01.50.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 01:50:05 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of batv+892a63f9c94259f4e6ca+6309+infradead.org+dwmw2@merlin.srs.infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from dyn-227.woodhou.se ([90.155.92.227])
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk2IE-0000pU-Mk; Tue, 01 Dec 2020 09:49:54 +0000
Message-ID: <400efca21b03186bde263f5c87c1f42d6955410e.camel@infradead.org>
Subject: Re: [PATCH] x86, build: remove -m16 workaround for unsupported
 versions of GCC
From: David Woodhouse <dwmw2@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner
	 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
	 <bp@alien8.de>
Cc: x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor
	 <natechancellor@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Date: Tue, 01 Dec 2020 09:49:52 +0000
In-Reply-To: <20201201011307.3676986-1-ndesaulniers@google.com>
References: <20201201011307.3676986-1-ndesaulniers@google.com>
Content-Type: multipart/signed; micalg="sha-256";
	protocol="application/x-pkcs7-signature";
	boundary="=-zoyimHSB2W58F+/bImn6"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2
Mime-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <dwmw2@infradead.org> by merlin.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: dwmw2@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=spfppcC9;
       spf=pass (google.com: best guess record for domain of
 batv+892a63f9c94259f4e6ca+6309+infradead.org+dwmw2@merlin.srs.infradead.org
 designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=BATV+892a63f9c94259f4e6ca+6309+infradead.org+dwmw2@merlin.srs.infradead.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--=-zoyimHSB2W58F+/bImn6
Content-Type: text/plain; charset="UTF-8"

On Mon, 2020-11-30 at 17:13 -0800, Nick Desaulniers wrote:
> A revert of the following two commits.
> commit de3accdaec88 ("x86, build: Build 16-bit code with -m16 where
> possible")
> commit a9cfccee6604 ("x86, build: Change code16gcc.h from a C header to
> an assembly header")
> 
> Since commit 0bddd227f3dc ("Documentation: update for gcc 4.9
> requirement") the minimum supported version of GCC is gcc-4.9.  It's now
> safe to remove this code.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: David Woodhouse <dwmw@amazon.co.uk>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/400efca21b03186bde263f5c87c1f42d6955410e.camel%40infradead.org.

--=-zoyimHSB2W58F+/bImn6
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCECow
ggUcMIIEBKADAgECAhEA4rtJSHkq7AnpxKUY8ZlYZjANBgkqhkiG9w0BAQsFADCBlzELMAkGA1UE
BhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgG
A1UEChMRQ09NT0RPIENBIExpbWl0ZWQxPTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhl
bnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwHhcNMTkwMTAyMDAwMDAwWhcNMjIwMTAxMjM1
OTU5WjAkMSIwIAYJKoZIhvcNAQkBFhNkd213MkBpbmZyYWRlYWQub3JnMIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAsv3wObLTCbUA7GJqKj9vHGf+Fa+tpkO+ZRVve9EpNsMsfXhvFpb8
RgL8vD+L133wK6csYoDU7zKiAo92FMUWaY1Hy6HqvVr9oevfTV3xhB5rQO1RHJoAfkvhy+wpjo7Q
cXuzkOpibq2YurVStHAiGqAOMGMXhcVGqPuGhcVcVzVUjsvEzAV9Po9K2rpZ52FE4rDkpDK1pBK+
uOAyOkgIg/cD8Kugav5tyapydeWMZRJQH1vMQ6OVT24CyAn2yXm2NgTQMS1mpzStP2ioPtTnszIQ
Ih7ASVzhV6csHb8Yrkx8mgllOyrt9Y2kWRRJFm/FPRNEurOeNV6lnYAXOymVJwIDAQABo4IB0zCC
Ac8wHwYDVR0jBBgwFoAUgq9sjPjF/pZhfOgfPStxSF7Ei8AwHQYDVR0OBBYEFLfuNf820LvaT4AK
xrGK3EKx1DE7MA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUF
BwMEBggrBgEFBQcDAjBGBgNVHSAEPzA9MDsGDCsGAQQBsjEBAgEDBTArMCkGCCsGAQUFBwIBFh1o
dHRwczovL3NlY3VyZS5jb21vZG8ubmV0L0NQUzBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3Js
LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWls
Q0EuY3JsMIGLBggrBgEFBQcBAQR/MH0wVQYIKwYBBQUHMAKGSWh0dHA6Ly9jcnQuY29tb2RvY2Eu
Y29tL0NPTU9ET1JTQUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1haWxDQS5jcnQwJAYI
KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmNvbW9kb2NhLmNvbTAeBgNVHREEFzAVgRNkd213MkBpbmZy
YWRlYWQub3JnMA0GCSqGSIb3DQEBCwUAA4IBAQALbSykFusvvVkSIWttcEeifOGGKs7Wx2f5f45b
nv2ghcxK5URjUvCnJhg+soxOMoQLG6+nbhzzb2rLTdRVGbvjZH0fOOzq0LShq0EXsqnJbbuwJhK+
PnBtqX5O23PMHutP1l88AtVN+Rb72oSvnD+dK6708JqqUx2MAFLMevrhJRXLjKb2Mm+/8XBpEw+B
7DisN4TMlLB/d55WnT9UPNHmQ+3KFL7QrTO8hYExkU849g58Dn3Nw3oCbMUgny81ocrLlB2Z5fFG
Qu1AdNiBA+kg/UxzyJZpFbKfCITd5yX49bOriL692aMVDyqUvh8fP+T99PqorH4cIJP6OxSTdxKM
MIIFHDCCBASgAwIBAgIRAOK7SUh5KuwJ6cSlGPGZWGYwDQYJKoZIhvcNAQELBQAwgZcxCzAJBgNV
BAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVudCBBdXRo
ZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMB4XDTE5MDEwMjAwMDAwMFoXDTIyMDEwMTIz
NTk1OVowJDEiMCAGCSqGSIb3DQEJARYTZHdtdzJAaW5mcmFkZWFkLm9yZzCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBALL98Dmy0wm1AOxiaio/bxxn/hWvraZDvmUVb3vRKTbDLH14bxaW
/EYC/Lw/i9d98CunLGKA1O8yogKPdhTFFmmNR8uh6r1a/aHr301d8YQea0DtURyaAH5L4cvsKY6O
0HF7s5DqYm6tmLq1UrRwIhqgDjBjF4XFRqj7hoXFXFc1VI7LxMwFfT6PStq6WedhROKw5KQytaQS
vrjgMjpICIP3A/CroGr+bcmqcnXljGUSUB9bzEOjlU9uAsgJ9sl5tjYE0DEtZqc0rT9oqD7U57My
ECIewElc4VenLB2/GK5MfJoJZTsq7fWNpFkUSRZvxT0TRLqznjVepZ2AFzsplScCAwEAAaOCAdMw
ggHPMB8GA1UdIwQYMBaAFIKvbIz4xf6WYXzoHz0rcUhexIvAMB0GA1UdDgQWBBS37jX/NtC72k+A
CsaxitxCsdQxOzAOBgNVHQ8BAf8EBAMCBaAwDAYDVR0TAQH/BAIwADAdBgNVHSUEFjAUBggrBgEF
BQcDBAYIKwYBBQUHAwIwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIBAwUwKzApBggrBgEFBQcCARYd
aHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwWgYDVR0fBFMwUTBPoE2gS4ZJaHR0cDovL2Ny
bC5jb21vZG9jYS5jb20vQ09NT0RPUlNBQ2xpZW50QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFp
bENBLmNybDCBiwYIKwYBBQUHAQEEfzB9MFUGCCsGAQUFBzAChklodHRwOi8vY3J0LmNvbW9kb2Nh
LmNvbS9DT01PRE9SU0FDbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVtYWlsQ0EuY3J0MCQG
CCsGAQUFBzABhhhodHRwOi8vb2NzcC5jb21vZG9jYS5jb20wHgYDVR0RBBcwFYETZHdtdzJAaW5m
cmFkZWFkLm9yZzANBgkqhkiG9w0BAQsFAAOCAQEAC20spBbrL71ZEiFrbXBHonzhhirO1sdn+X+O
W579oIXMSuVEY1LwpyYYPrKMTjKECxuvp24c829qy03UVRm742R9Hzjs6tC0oatBF7KpyW27sCYS
vj5wbal+TttzzB7rT9ZfPALVTfkW+9qEr5w/nSuu9PCaqlMdjABSzHr64SUVy4ym9jJvv/FwaRMP
gew4rDeEzJSwf3eeVp0/VDzR5kPtyhS+0K0zvIWBMZFPOPYOfA59zcN6AmzFIJ8vNaHKy5QdmeXx
RkLtQHTYgQPpIP1Mc8iWaRWynwiE3ecl+PWzq4i+vdmjFQ8qlL4fHz/k/fT6qKx+HCCT+jsUk3cS
jDCCBeYwggPOoAMCAQICEGqb4Tg7/ytrnwHV2binUlYwDQYJKoZIhvcNAQEMBQAwgYUxCzAJBgNV
BAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMSswKQYDVQQDEyJDT01PRE8gUlNBIENlcnRpZmljYXRp
b24gQXV0aG9yaXR5MB4XDTEzMDExMDAwMDAwMFoXDTI4MDEwOTIzNTk1OVowgZcxCzAJBgNVBAYT
AkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNV
BAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVudCBBdXRoZW50
aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEAvrOeV6wodnVAFsc4A5jTxhh2IVDzJXkLTLWg0X06WD6cpzEup/Y0dtmEatrQPTRI5Or1u6zf
+bGBSyD9aH95dDSmeny1nxdlYCeXIoymMv6pQHJGNcIDpFDIMypVpVSRsivlJTRENf+RKwrB6vcf
WlP8dSsE3Rfywq09N0ZfxcBa39V0wsGtkGWC+eQKiz4pBZYKjrc5NOpG9qrxpZxyb4o4yNNwTqza
aPpGRqXB7IMjtf7tTmU2jqPMLxFNe1VXj9XB1rHvbRikw8lBoNoSWY66nJN/VCJv5ym6Q0mdCbDK
CMPybTjoNCQuelc0IAaO4nLUXk0BOSxSxt8kCvsUtQIDAQABo4IBPDCCATgwHwYDVR0jBBgwFoAU
u69+Aj36pvE8hI6t7jiY7NkyMtQwHQYDVR0OBBYEFIKvbIz4xf6WYXzoHz0rcUhexIvAMA4GA1Ud
DwEB/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMBEGA1UdIAQKMAgwBgYEVR0gADBMBgNVHR8E
RTBDMEGgP6A9hjtodHRwOi8vY3JsLmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDZXJ0aWZpY2F0aW9u
QXV0aG9yaXR5LmNybDBxBggrBgEFBQcBAQRlMGMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9jcnQuY29t
b2RvY2EuY29tL0NPTU9ET1JTQUFkZFRydXN0Q0EuY3J0MCQGCCsGAQUFBzABhhhodHRwOi8vb2Nz
cC5jb21vZG9jYS5jb20wDQYJKoZIhvcNAQEMBQADggIBAHhcsoEoNE887l9Wzp+XVuyPomsX9vP2
SQgG1NgvNc3fQP7TcePo7EIMERoh42awGGsma65u/ITse2hKZHzT0CBxhuhb6txM1n/y78e/4ZOs
0j8CGpfb+SJA3GaBQ+394k+z3ZByWPQedXLL1OdK8aRINTsjk/H5Ns77zwbjOKkDamxlpZ4TKSDM
KVmU/PUWNMKSTvtlenlxBhh7ETrN543j/Q6qqgCWgWuMAXijnRglp9fyadqGOncjZjaaSOGTTFB+
E2pvOUtY+hPebuPtTbq7vODqzCM6ryEhNhzf+enm0zlpXK7q332nXttNtjv7VFNYG+I31gnMrwfH
M5tdhYF/8v5UY5g2xANPECTQdu9vWPoqNSGDt87b3gXb1AiGGaI06vzgkejL580ul+9hz9D0S0U4
jkhJiA7EuTecP/CFtR72uYRBcunwwH3fciPjviDDAI9SnC/2aPY8ydehzuZutLbZdRJ5PDEJM/1t
yZR2niOYihZ+FCbtf3D9mB12D4ln9icgc7CwaxpNSCPt8i/GqK2HsOgkL3VYnwtx7cJUmpvVdZ4o
gnzgXtgtdk3ShrtOS1iAN2ZBXFiRmjVzmehoMof06r1xub+85hFQzVxZx5/bRaTKTlL8YXLI8nAb
R9HWdFqzcOoB/hxfEyIQpx9/s81rgzdEZOofSlZHynoSMYIDyjCCA8YCAQEwga0wgZcxCzAJBgNV
BAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAY
BgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMT0wOwYDVQQDEzRDT01PRE8gUlNBIENsaWVudCBBdXRo
ZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhEA4rtJSHkq7AnpxKUY8ZlYZjANBglghkgB
ZQMEAgEFAKCCAe0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjAx
MjAxMDk0OTUzWjAvBgkqhkiG9w0BCQQxIgQgMtFkXPb1c0Lg8eqVCZHGzdhBDFBxXe7P6L1J5vDD
sMUwgb4GCSsGAQQBgjcQBDGBsDCBrTCBlzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
PTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1h
aWwgQ0ECEQDiu0lIeSrsCenEpRjxmVhmMIHABgsqhkiG9w0BCRACCzGBsKCBrTCBlzELMAkGA1UE
BhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgG
A1UEChMRQ09NT0RPIENBIExpbWl0ZWQxPTA7BgNVBAMTNENPTU9ETyBSU0EgQ2xpZW50IEF1dGhl
bnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0ECEQDiu0lIeSrsCenEpRjxmVhmMA0GCSqGSIb3
DQEBAQUABIIBAJY4WgAf6oxoenVv4LThpcbslP2yJ05elmaDVdBRVWjzvvKlXUQ9LrNQC5M4fqIW
+H1rDlapM3XXOG80uCt7kbAlZ8K7xNqDROaNzQuYdcMfsHjWDuUyEzyToBeSqhkqI5nwabBbxWMQ
u46cs0NUNRgVwZHmwwrSnB98ltPUFxzjB0drlS4oVr+JKm8U9Ryq7Y4p9jrJzpWBiRwEKZx06UaD
eS95ZK1svDANIdS5C0/bMQLmQ+kpwCINJV92oiCkL6kb6mHTIu0hcvhju2z2NYe0KKCY67x4N4xG
emmFE2VOvEm3i5o4ByLl4YX5ARA/4Va9Ab9mpJQlWeSt3m5XhAsAAAAAAAA=


--=-zoyimHSB2W58F+/bImn6--

