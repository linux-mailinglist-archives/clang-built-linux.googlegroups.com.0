Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYMVXSAAMGQEILRY5DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B37563029CB
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 19:16:02 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id c186sf1484085pfa.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 10:16:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611598561; cv=pass;
        d=google.com; s=arc-20160816;
        b=CL0jSNR+U9rG2/T1vJ9sjtLoRdC3DX+FPqQtBH9nGpHUzoSk00wr2HT+DE+v/kQUfC
         YtBqjtNUlDTe5CSBBU334Kl5x4Q5nYfFc1JpaAHgPMUUzlcNpL5CrPFK5FtrUSa5vNUf
         0Xbzj7ZiCJF69EXJ1+qujHDvTVwFfrGbf9SEPMmkhlqfzmyn6s2seQSmJcR3eqXb3oHa
         3SKwDHRI9+7rQ3yxS33EksUr2NTIdE5uPoN4Uw4ieUWrWhIXP76CXnPvSKHO/c16Vw/m
         krbCwAz6AEfcwZ65OyfafXZqyjT0mragRrih8BHw9D0l8ygHdxNpUT5SygyP9ri3x6M6
         oBCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ddvNmDFANMjAysZ2cJ5p2exmPtrNev8e5pBfU+6zkPs=;
        b=S0r6iHwHfonr3b3jFovzlmeTt9lShcZP4jwwoixDqc/SMi29Omw767xeYIFfRSEFMK
         pZLKz5X/BL1ysUYLGHniyHdnMt7LMHHGKZaFvsTU/HCzL3MJ+ZL0mFAazgj627PZMMhZ
         hPiaT7UPyecZREs82igKUYiVetxfjTTxQoEobM8WHIp8cy+3cO5M7Z7EZ3CgEQKYHu5I
         rLFsk8joqUUCLed173XUMW4a7bpuaLz1lz0kT5dgHDEvo02AZLbkF6tuN9fZFGDMyCb/
         3cG+RVAFmSabKUPNZ79s/4/ZGXX86qFV9/KDOwZJwyak0hj8choQIG97j9sudg2lOaIt
         9VWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gi+ZKU1f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddvNmDFANMjAysZ2cJ5p2exmPtrNev8e5pBfU+6zkPs=;
        b=qclQG+bNKG+z8Dz4WVMWaU+ZjtNLCZuV3dqqn+PuaZFy57/WOvArw5Rdf899iqqaI7
         VQP3UuSmMjH8p5Jwp2kzxf6cEOdSuVO16SecpM5N4PRi/HtShPSl+6ooA/kogiA1Tt/d
         iJTw0J37KX4kcr+MYZ3vWoieVkYNC7DfuIzPKLb0xmFUAegtd0jtwP5heLonC92JvR3m
         DtpA8zpsJGn340r0eCOG8x1TAjeFgbHiwGiL7PFTCuZRLMPo//y3IVjRzps+wWBr3nhk
         hyZfXmB5vK15y/71lQm41GVmZNVYn8hSrkz9Ia0zF3iujqAAMaaNLQjd05nDNMuA0TZX
         2Sug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ddvNmDFANMjAysZ2cJ5p2exmPtrNev8e5pBfU+6zkPs=;
        b=meJTdr8mfMI4J6lMUeSvXFOWh8hmgp/qPp44Bun0rbaq80DeBC2pv+6BUPq8OnpRkO
         KWE9MnfFkJRjEvjIBkTfuyP3kYit7Q9aHlAqSe/r7RaV5+Ip/BLtXOYUJ0frZiGSEgv+
         Um6OBwRjyEjI4p7vnyKTU+eSjK7znsdbqTmPP6ZqI9WV8kvlJqepwo368H0XZwJ2iMqt
         LRkw70/AYgte66Uro0Vdr75N921ppoiQRfP7CyY2ldP4x634dE7xduYRiEnv1O4mNo80
         oQochxI+/2Y6UhaWXeOzpsoeAoBdIoDh/6BiDurx252xKwcDlidX3mi7re3wGTwRK7B9
         mpDw==
X-Gm-Message-State: AOAM533eIYP4LaNvUR/Kcubd+/otMhlsPsgrtBEwOfRMB59z1zVuQWJL
	rBol5z7rbQXKwqTFKJ4ovrA=
X-Google-Smtp-Source: ABdhPJzyj27Wfn1hAXECbcFwlL+zyvL9ix8xnQnDeSkJgcJ4CzxR+1HeQt0qp2DTC7u8JOtVfUV0TA==
X-Received: by 2002:a17:90b:4c85:: with SMTP id my5mr1479713pjb.225.1611598561291;
        Mon, 25 Jan 2021 10:16:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22d2:: with SMTP id y18ls6730453plg.6.gmail; Mon, 25
 Jan 2021 10:16:00 -0800 (PST)
X-Received: by 2002:a17:90a:2944:: with SMTP id x4mr1501318pjf.40.1611598560482;
        Mon, 25 Jan 2021 10:16:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611598560; cv=none;
        d=google.com; s=arc-20160816;
        b=J5DY7QoWlyLR+tzH0Dak5NrU3rRgtRRGnAXqqV4iYj4q1Imq3cJpJFcKwSXyTlF5o5
         PDV00z/6nJ/iwgGOHVbl8Ur9+8AeG6GTYHph7LF012HKK6RgJQp5cwAs7zJX2gSWU/qo
         vQrhQBgEzVTl+NJPquwo/LGvr9d+GZc0uL2Ygo6IWk6EPlokUfdkdf7NxUGLCCWDo5hG
         N1iVrzRlJqQn+LNmGnjG12S5pdcPVIx6fySSlrfSW6uICSmuz60lsCF9431riDF03PSP
         QxOyIcBkMRs7dkWGYPR+4S61F2OMRD+3SYg1sNIKrWXKyN94IByWypY/LVJwXkiQgWPA
         osLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZCe2/FF+DvZDaRPvAZh3BnHgq5iKGe4t/Q1fBpszZFI=;
        b=sNgZZ/fi8Up4CvnFaYCnsNruq42SxD+IECtM9+r3hAHYlOwnzgzhgG7YMWAt8EG6XU
         75JphaHbJ10hJ0DIZuq+cABREb1s0Xal7m6VPhewZ4B9b6ELGV44N4B6de+5D7PDscnj
         XqVekztX1wwP1vAxvPxYR4QH3rMh9kznGkQPDaa7kyLWnwKgtgKre/FxBqMFdZWOUKCa
         5wkyJuwr9+pB8PMgb/Qt1/6GYSz7Jrpm19isPfuAGfh1qOEYSuRWiXucZuyqwRgkcrcw
         covrG/pgtKLQCyboZfKV6YNRxzKrrkglhTubZu06wM9QjSy0137u8UyKDvMeZ1uQHjBr
         L5eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Gi+ZKU1f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id jz6si8172pjb.1.2021.01.25.10.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 10:16:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id w14so8874059pfi.2
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 10:16:00 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr1786622pgm.10.1611598560014;
 Mon, 25 Jan 2021 10:16:00 -0800 (PST)
MIME-Version: 1.0
References: <f23f4003-0017-d52a-39b9-2737e60182bb@gmail.com>
 <20210123190459.9701-1-yashsri421@gmail.com> <a7329e5d5661ed6478a7eb33db854a6357447c16.camel@perches.com>
In-Reply-To: <a7329e5d5661ed6478a7eb33db854a6357447c16.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Jan 2021 10:15:49 -0800
Message-ID: <CAKwvOdm+qyD-ycaP=x+JGEtFDvoW7SGwB0HJ1UJXm5cwqkR9PQ@mail.gmail.com>
Subject: Re: [PATCH v3] checkpatch: add warning for avoiding .L prefix symbols
 in assembly files
To: Joe Perches <joe@perches.com>
Cc: Aditya Srivastava <yashsri421@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, dwaipayanray1@gmail.com, 
	Mark Brown <broonie@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Gi+ZKU1f;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a
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

On Sat, Jan 23, 2021 at 1:01 PM Joe Perches <joe@perches.com> wrote:
>
> On Sun, 2021-01-24 at 00:34 +0530, Aditya Srivastava wrote:
> > objtool requires that all code must be contained in an ELF symbol.
> > Symbol names that have a '.L' prefix do not emit symbol table entries, as
> > they have special meaning for the assembler.
> >
> > '.L' prefixed symbols can be used within a code region, but should be
> > avoided for denoting a range of code via 'SYM_*_START/END' annotations.
> >
> > Add a new check to emit a warning on finding the usage of '.L' symbols
> > for '.S' files, if it denotes range of code via SYM_*_START/END
> > annotation pair.
> >
> > Suggested-by: Mark Brown <broonie@kernel.org>
> > Link: https://lore.kernel.org/lkml/20210112210154.GI4646@sirena.org.uk
> > Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
>
> Acked-by: Joe Perches <joe@perches.com>

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the patch Aditya!

>
> > ---
> > * Applies perfectly on next-20210122
> >
> > Changes in v3:
> > - Modify regex for SYM_*_START/END pair
> > - remove check for arch/x86/entry/* and arch/x86/lib/*
> > - change 'Link:' in commit message to lkml
> > - Modify commit description accordingly
> >
> > Changes in v2:
> > - Reduce the check to only SYM_*_START/END lines
> > - Reduce the check for only .S files in arch/x86/entry/* and arch/x86/lib/* as suggested by Josh and Nick
> > - Modify commit message
> >
> >  scripts/checkpatch.pl | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > index 7030c4d6d126..4a03326c87b6 100755
> > --- a/scripts/checkpatch.pl
> > +++ b/scripts/checkpatch.pl
> > @@ -3590,6 +3590,13 @@ sub process {
> >                       }
> >               }
> >
> >
> > +# check for .L prefix local symbols in .S files
> > +             if ($realfile =~ /\.S$/ &&
> > +                 $line =~ /^\+\s*(?:[A-Z]+_)?SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
> > +                     WARN("AVOID_L_PREFIX",
> > +                          "Avoid using '.L' prefixed local symbol names for denoting a range of code via 'SYM_*_START/END' annotations; see Documentation/asm-annotations.rst\n" . $herecurr);
> > +             }
> > +
> >  # check we are in a valid source file C or perl if not then ignore this hunk
> >               next if ($realfile !~ /\.(h|c|pl|dtsi|dts)$/);
> >
> >
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%2BqyD-ycaP%3Dx%2BJGEtFDvoW7SGwB0HJ1UJXm5cwqkR9PQ%40mail.gmail.com.
