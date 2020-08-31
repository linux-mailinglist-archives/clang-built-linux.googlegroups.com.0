Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6ULW35AKGQEQY4KUXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEDD25845B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 01:21:31 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id y13sf1575317uan.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 16:21:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598916091; cv=pass;
        d=google.com; s=arc-20160816;
        b=d4zJW/CqrIuA/6oKpidn8yryQBPuUysZL6tH2wkEh6a5lVPO4uv5Txed807yAOmarV
         p7A7SytiYbU/uCaGuNl1fjF3Nxxo0DIW8MGV6n79xYYMmkSIDmYkBNxuZsoIIa+WlKsq
         lp0ae/CVyR9+7hdiGSekfu929WTsgpFEsUD9bEo5lmpUYiOVHyFSSYF0hq/DwVuURcEQ
         f198cpXz8qTxSRaJva0JHyr8zI85gtG8oyc00otaZ94Qz0Ld1L+SxcSAf15B79FHP6t4
         7GUQQSr+KhsxiX1DDdK8WQvolZYbdn1uQEz1qeW/rU/Kw1/rk81YcPqWcZxbXU70OB43
         36Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X3AVVcATUtQdkrL0lwUI8dTZujiAa6kRxxL6UwcChd4=;
        b=d6KhOOulswHfdcuWiTtghWVb+IXiZ25ZSPluuaJadl0tucMoQhdYPQkBOIY+MJIuqW
         u/BF13GnrHGfg4OgQPklXuBgW8FSu8a954hwU1CmQVBYJnUP+8I025R/G8Utlr5HNx01
         UsKA8efrktj8TfQ/DObUdwwsrUVhytb7ZS8zDHNOy6v1puDdE/8y5JM6HCGnDOtCZZ+d
         wicipvtLIUuLvsnltR5dhIxTRyc5LKbnRAD5sK1YxFp5Hlz3iDd+qWx3q4RJaxZA8KRZ
         RF1GcMPQOXEzO4fTabS69l8dyu/Ord689RFnD67NuGsUQmGdx6XdIadA+kuJWllIW78k
         nDWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B+QR2Q9c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3AVVcATUtQdkrL0lwUI8dTZujiAa6kRxxL6UwcChd4=;
        b=dR3B8vpEM7dEYDTlmeHhhMvMhp4nokQrFD9xlS2wlAn+IY6Izv3pHlZDVJ6G7R5TVi
         6C/IxSRiC7Y9msInfM/ghncl+2UC3jwxqdBJstyTI5yWOPJ64hJY8Q/8dXJzvPe5xy5B
         M5x8Tqr0p9123pY7r7FlISU+xTMx21a4tDx6aNTdVwGPX2QHlR24lpY/sv2aq2ebIJx6
         2cFqntKAhLNr3G3e2Cn5a13PUXM0zfeFM3iDnR9ce8OFFK/9dyzBEGiWVFa5zOq6TnyD
         3nEkuSuuGktmywqG+EisIURa3cTQDkDc2PCWz2NxMF/j0b4Aa4bcUWPXUB0LqwqMIp9o
         LrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3AVVcATUtQdkrL0lwUI8dTZujiAa6kRxxL6UwcChd4=;
        b=BU6uESRpiMmNHBPNmQihWI08dIbjfCqRA3f0QCZOWRrmsZ1I1kvnYHM43s/VVdNbNu
         GMYaYLOG0vtnK3FlABdvWeACEC+9hvtiltiRNnnBxdmaCZGappPj+JTdCOwEaEa23dFz
         v5GviEVlcKwJHOuC7rAwHvThaBwkTQFPrQp8UlJQkmvRv5SIGG5P9pEU1PlH5JOUBdq4
         yE55f/tc9JD6oJAaoJD4apWT6+bDKXW5FIPxeMpoqVIiZ88c/ufCdAwIJBWJC+CEvguN
         IFrgkB9EuBh24mVEH8KQnh+pUiNXNfO9cYrlN5tjzHlYC5xNlWeIfuq6s6TZ+d8yJtza
         GyzA==
X-Gm-Message-State: AOAM531SdnEVY9EZNxytAy6b1ODv+AVeaqme2JnHvQtyH9SbY5tarWl3
	B/dVpiJ5LdsENZUOtV7u1o8=
X-Google-Smtp-Source: ABdhPJysPTReX3Il5nmpUSDla8l2ghOAwtvzrkKnZjDWFoHcA7tXTEnpaYdMXU8+visECg+T+Y6mug==
X-Received: by 2002:a67:d209:: with SMTP id y9mr3368758vsi.44.1598916090859;
        Mon, 31 Aug 2020 16:21:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9cd5:: with SMTP id f204ls419630vke.9.gmail; Mon, 31 Aug
 2020 16:21:30 -0700 (PDT)
X-Received: by 2002:a1f:e741:: with SMTP id e62mr3126039vkh.55.1598916090527;
        Mon, 31 Aug 2020 16:21:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598916090; cv=none;
        d=google.com; s=arc-20160816;
        b=IiplBOFjL4Gi3INW8mj43zMdfTjrfmyCUd+HleQKNH1O7xcgTDj9j+ZDlbLbhsUVfR
         x+lbf7jFiUzRfnffVnrYc+yJyAnx7GVOtQNcEJMyX875zqcDF82TQSR8RIOC3pn5ik1a
         z1vkced2WO1izDBM8yYQPwuFjEMV9DnlV7/35LgJizHO8Zio+b31KnHUHdjm8A9zXwFZ
         cOfctIoHPSp3eOybEyOcwxS52Ikhov+hk8GwegRnz+L6JXAzxv8Q4TklTHmIOd9JhR1u
         IHcaVT2qcc3Wy+fhj3J6MplL+gf2rUmR9OstlW0Xis4l0x91Fv5DhIf8b2Gz7SK7m+Og
         3zXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Mt+GWnZGCielYLw6Usto6nHCeUaR+Vbl+GzxV4IYrLk=;
        b=kYBQXao4LqhWA6xheQIAfIBd+nFkteSFfew6zTuH7nP4EnGkSCSTyI20O5ByIbaHSP
         uiWU1/QWPHiCij/3Rq1gKJjbW081O4ZMRuv/VfBbU0lokfgYj1vMDAnbkLPQrb8Fpg8p
         etUXP5th5ETM2GdxWK4Je4786doam46m2epXbv4D86e7GzoLfvUJHHlWL29S/KJAMdYt
         rX/VTQPKRXupTGFjvTczsUQngnzIwJFaKHkO90vi/pYWwQSMrXA/cZcFRA+0GA3XFZ/8
         AqJrv4qALCTzux+K000/kp3j7nT/uaYtnYaYAcUNAWZpIZYTPssKyHbI9vnjgPIxRQPe
         2PXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B+QR2Q9c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y3si572366vke.2.2020.08.31.16.21.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 16:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w7so1576604pfi.4
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 16:21:30 -0700 (PDT)
X-Received: by 2002:a63:31d2:: with SMTP id x201mr3173789pgx.263.1598916089341;
 Mon, 31 Aug 2020 16:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook> <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
 <202008271126.2C397BF6D@keescook> <CAHp75VeA6asim81CwxPD7LKc--DEvOWH9fwgQ9Bbb1Xf55OYKw@mail.gmail.com>
 <202008271523.88796F201F@keescook> <CAHp75VcGOvYOXCaQeux5PQ+tHRYF3W=173s80U=mDE-0zzwTXg@mail.gmail.com>
In-Reply-To: <CAHp75VcGOvYOXCaQeux5PQ+tHRYF3W=173s80U=mDE-0zzwTXg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 16:21:17 -0700
Message-ID: <CAKwvOdnV6GySbhKGVEUBV5GdanR9xRWAFE0JPcpORR=2dmRWPg@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Joe Perches <joe@perches.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, 
	Andy Lavr <andy.lavr@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sami Tolvanen <samitolvanen@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B+QR2Q9c;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Aug 27, 2020 at 1:59 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> strcpy() is not a bad API for the cases when you know what you are
> doing. A problem that most of the developers do not know what they are
> doing.
> No need to split everything to bad and good by its name or semantics,
> each API has its own pros and cons and programmers must use their
> brains.

On Fri, Aug 28, 2020 at 1:17 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> Seems to me that this is a fixation on an abstract problem that never
> exists (of course, if a developer has brains to think).

Of course, no "True Scotsman" would accidentally misuse C string.h API!
https://yourlogicalfallacyis.com/no-true-scotsman

(I will note the irony of my off by one in my v1 implementation of
stpcpy. I've also missed strncpy zeroing the rest of a destination
buffer before.  I might not be a "True Scotsman.")

On Thu, Aug 27, 2020 at 11:30 AM Kees Cook <keescook@chromium.org> wrote:
>
> I equate "unsafe" or "fragile" with "bad". There's no reason to use our
> brains for remembering what's safe or not when we can just remove unsafe
> things from the available APIs, and/or lean on the compiler to help
> (e.g. CONFIG_FORTIFY_SOURCE).

Having seatbelts is great (ie. fortify source), but is no substitute
for driving carefully (having proper APIs that help me not shoot my
foot off).  I think it's nice to have *both*, but if I drove solely
relying on my seatbelts, we might all be in trouble.  Not disagreeing
with you, Kees.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnV6GySbhKGVEUBV5GdanR9xRWAFE0JPcpORR%3D2dmRWPg%40mail.gmail.com.
