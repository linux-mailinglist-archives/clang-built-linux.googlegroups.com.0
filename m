Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5QZ35QKGQEFXZIPYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 797A527D805
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 22:26:01 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id s2sf3938190pgm.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601411160; cv=pass;
        d=google.com; s=arc-20160816;
        b=OOB7lSDFpE0QD9RzFpJ4W29AQefASI26NB5FhPXwfgtikO0GQzMRWA+ADsMe3ztwOc
         5t52/0mbGdNLHTBfxp3bqg8PRGhbQ5Rl53SrlCCh7zMy3AY8Qd5oJOUo1tNaQJT3C5CR
         Ruu/JYurlDr4idsiHDdjEDcNmRnhmb2veZiAkGZrROV9q2LizuFqHo7NazGpz9lLk8B+
         vhawdk6vkbCg5pZg4VhfNWROR26EOWyCoyy/PcklIwBKW0lRSBhYzDzUCuCxPRkrnWyZ
         jppTDmma3L8vc7KBfBvJzLTR6cs21gaRzT78A+Ogo7lMoCfN7UM2cm3Wqxk6yESn0TYA
         Ek+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=B2mx9nmAIOUiquxkc7ZBrGgSfF1N6InVKhGpxAOCVlA=;
        b=xaqn/4YHIwqNpmKDkcnSRkNmM+s+Dw3jiUYqWhS5J6T80tIGl5fkIFx6ObLdiNswLj
         PwX2/ers8YUr4bK6gOxGpVunWzuNnKI6XM5R2ZA/oD1nalXbArKqLi3LcYO9EXa4IIzK
         S83yZbJMv/O5lcLhhvb4aGjd7HnXobRWmZpiDQ5yHn7+TCI+W1x47byx0m29AWzFzQqc
         m697R0m5mg0c+GA6ouVImS22MME0bEV87lJONYpBdvqr1uluoyjRvpUbfHmLZGJGFH+U
         MJOFIhChahgy9a4SsoEi66kkczOqqTixAnxSD/eXzXbmr8pJvKBjBTvnUawvgEMIe+G3
         +WnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F+IVhAIE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B2mx9nmAIOUiquxkc7ZBrGgSfF1N6InVKhGpxAOCVlA=;
        b=f17mlRdABkrDEqFhlqn+kDuGaGQpZzAyNeWsv69EmyvydgO5R2U4XAS4uTqlTGjcn+
         hj9xyBODmp3aZwqKltoSRVk5ow89c3jfr3waNCQFg75W81WYWlF9uTmtGGO2WZDmRxCu
         m3xKXonUl9WB9F8j326E+RyqsO7BqhfTq9T37gVri4hTpYdCXW4k48moENHXwTeSM8Y9
         2rD2iTiopidMel54ajAgOO3EXlAB938g17bQo5RksI0ma3X3bpXGEfRoD3y1uZRQwKcZ
         e/1DQwoX4PocKf89Rapw98losjSlB9wS77Hqt5cLzbC1UyDhC1DdTJjP52+F0ni4yct6
         LD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B2mx9nmAIOUiquxkc7ZBrGgSfF1N6InVKhGpxAOCVlA=;
        b=fU4RySzkY3QN532V4+8oAbErA3L0fBaQwx9+muxBlIgDmd+JmzTmvtRqBHWaEaYYt4
         QvH+kmazNZuMNhWa6PbOX7b8QJwh0CNQ9CjBg6HCnIYwwldgp+6rkIkcwkFYqZa7cE1X
         rhVlniH4WUSIK7wsAvZA+Ag9LbPy0XBPyRwlC5H3gi5DjadpzZ07JzYJ9OEByJQ/vZ7D
         t18ZLMH4JMN9rnvBXwZqlceAa4bI38vGzerC5EeSCKbEf1/Lg1A3ti3jWoPNSTOjE8aQ
         AJqarzYng0/OXUvBvBQhYxXOgRzsGrHjMYBMPLshVQW8WggVXfhlpRfAf/ZFo+blQ2UB
         r6iw==
X-Gm-Message-State: AOAM530hk6jEqKJTgm6ODPeWafkc98Jwt70xAl7TCYgVsiKUhu7EcpzP
	50g+QmH+s+QO6NkkZLUkauE=
X-Google-Smtp-Source: ABdhPJztFcrpj+Dd43IdsZOUXGWKAs8X5LrrIucf6niAqvkgUX2il53GsUAvhNgHzt7OHPElY6ni3w==
X-Received: by 2002:a63:441a:: with SMTP id r26mr4677885pga.290.1601411159966;
        Tue, 29 Sep 2020 13:25:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls19742pfq.0.gmail; Tue, 29 Sep
 2020 13:25:59 -0700 (PDT)
X-Received: by 2002:a62:e40a:0:b029:138:8fd6:7fd5 with SMTP id r10-20020a62e40a0000b02901388fd67fd5mr5795633pfh.1.1601411159462;
        Tue, 29 Sep 2020 13:25:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601411159; cv=none;
        d=google.com; s=arc-20160816;
        b=vVPnCAcYU8WqDr4HG+9v4mN5X4odd4VOsk5DWFolT53pzRVe63+2z0TvzopvgpKzEm
         CK9rHtsTzSXtaUMR/Bqk8dgH1iROtI1KFZifRqyxYLimyjzggjkOIOQpxZD9voGkTR52
         H/B2VTC6/BuHdR903aYNLStXFsjfDVVbZjuPV0BA8wDzAdtsK+UVBA7NMsIihymg1kSb
         4dVcFaGElwHjpzhZDOR8sePbnFM5J8+4rGc51KJVQR+fwN70lQKqW7FvSirILqb/CW/A
         xUNVhRg4Y/mvY0BhTDjHM+qi7aTQg3VUpPuf/qVPVYY/bSEqPrnXr636DBVug/AqhkLi
         Q1EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HfMRjMpKzRlDMKyNSypttYHCWqFV6rG4s+gTfvHCn9o=;
        b=JMMWMhosyadkWbocA6tVnP7It9YQ9HDKuXJyKzcfUBx8PrQ6YZU0jocp9Hz1Xjpc2b
         HPWNrw8qh6i6Wjerc+e6hIj3W58AQ29oDmw2136YjTBnk+Khbck/3wtdvGzQPVXOEzWZ
         MC82rWCyDqkEGb/C+m90oPiM6eOXqWbQj+kb1XNNKf80wTZBkFsammnKb9zBrP/a3hc0
         FHRfGTe6vKAOV5v+qwcTFWmkpw0+j+8wiLHxyZuGHRa/X6qDPaZzj1cSe/54PXJv2PWi
         HmEdRTUoj5hEc3J+pTv/RWyTVwYM48SSm8XWqWNCLkHb/eWB2VVdUCaH60tIhs0J97H+
         X5Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F+IVhAIE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n8si496136pfd.4.2020.09.29.13.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id d9so5818768pfd.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 13:25:59 -0700 (PDT)
X-Received: by 2002:a62:5586:0:b029:13e:d13d:a108 with SMTP id
 j128-20020a6255860000b029013ed13da108mr5642484pfb.36.1601411158903; Tue, 29
 Sep 2020 13:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200929194318.548707-1-ndesaulniers@google.com> <20200929200801.GA2668747@rani.riverdale.lan>
In-Reply-To: <20200929200801.GA2668747@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 13:25:47 -0700
Message-ID: <CAKwvOdm=H3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: avoid escaped section names
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-sparse@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F+IVhAIE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Sep 29, 2020 at 1:08 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Sep 29, 2020 at 12:43:18PM -0700, Nick Desaulniers wrote:
> > The stringification operator, `#`, in the preprocessor escapes strings.
> > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > they treat section names that contain \".
> >
> > The portable solution is to not use a string literal with the
> > preprocessor stringification operator.
> >
> > In this case, since __section unconditionally uses the stringification
> > operator, we actually want the more verbose
> > __attribute__((__section__())).
> >
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  include/linux/compiler.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > index 92ef163a7479..ac45f6d40d39 100644
> > --- a/include/linux/compiler.h
> > +++ b/include/linux/compiler.h
> > @@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> >       extern typeof(sym) sym;                                 \
> >       static const unsigned long __kentry_##sym               \
> >       __used                                                  \
> > -     __section("___kentry" "+" #sym )                        \
> > +     __attribute__((__section__("___kentry+" #sym)))         \
> >       = (unsigned long)&sym;
> >  #endif
> >
> > --
> > 2.28.0.709.gb0816b6eb0-goog
> >
>
> There was this previous mini-thread:
> https://lore.kernel.org/lkml/20200629205448.GA1474367@rani.riverdale.lan/
> and this older one:
> https://lore.kernel.org/lkml/20190904181740.GA19688@gmail.com/
>
> Just for my own curiosity: how does KENTRY actually get used? grep
> doesn't show any hits, and the thread from 2019 was actually going to
> drop it if I read it right, and also just remove stringification from
> the __section macro.

Oh, sorry I didn't respond on that thread; I could have sworn I ran a
grep for KENTRY back then.

$ git log -S KENTRY

Doesn't seem to get any hits, so I'm not sure what I should use for a
proper Fixes tag in the event we just remove it.  Let me grab lunch,
then I'll send a v2 that just removes the KENTRY block.  Thanks for
the reminder!

And I don't remember what ever happened to Joe's script for treewide
conversion of __section.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3DH3GDOPo-dbgsqH7UXzC1twz1h2Rdcidh8OXtFtCY4Q%40mail.gmail.com.
