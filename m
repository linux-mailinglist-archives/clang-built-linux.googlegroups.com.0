Return-Path: <clang-built-linux+bncBDYJPJO25UGBB663WCEAMGQE4XKXZZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C2C3E1B4E
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:29:15 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id c16-20020aa7d6100000b02903bc4c2a387bsf3547596edr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:29:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628188155; cv=pass;
        d=google.com; s=arc-20160816;
        b=SuTgMyiKa0+QWqZrbqhoBh4ovpoaa7vRaYYf1zytqmFciVuGJObcOPCsMYh2wN0AGg
         wFjAaYmJ3+LWDbx+NifCVYUoDn+tDXxKFHeRNB2J1OtR8VydwmVIg8hv0nZqEXz1JGUn
         vGhg/8M3lU0cO0rUzHZrJQ+1Wj7W/Fq8wMt/vGObvNeqzuz01uRfPUWbU/6PnWZbj+Im
         IP1p81ihIatce/9ALmSAYO11Qya3lH6EVTXQymPSaP5kfsdR/tpmldM/rzOsMcI/3ZPF
         6RWjDnDLF577qSLuig6Uwy169W90dbx2QrKKZQ9XjTYrjbpNRO+dhaDW9kLoBDJN3Tjs
         bbpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wFegXMrxPrKnjO4tOhpB0Fk3rxAbDOJwMwjifDHuzoo=;
        b=yky4yN8o5aSwi+3r+HHxm5a5Bo6ARY6h67GdRNLN9zjb56CE9+g5a6HfGLBY1VwRlC
         4a5qjrxmCPfKOyDuLV+uCoN2vhqLoQIrQ0QVMEpa/Q4Z5Fw8JYrO7mfE+IUDmYtcljYn
         6Lf+O8MHvHJriI6XGnU6Gt6Rc7MlWGiO7NcAYHiQ+GhwFjnJMgs4lf9OGsrSjIEszbMw
         m6lL+tzI7buJtex0BI87SaKYRpFO5+C2sO9UWe70rzcwHB38EDkynExnpTu1MgFnHArg
         XogiULklury2FEDlQwgB9DfTnTLQ9oV9ywfxYbvuPZEK5JKP4yQt48S051nuTEK9tYF8
         C4Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s3FKo7e0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wFegXMrxPrKnjO4tOhpB0Fk3rxAbDOJwMwjifDHuzoo=;
        b=GXA+093JMuLFumSHGDJVNn512fPDiccR3+OxX6AmhnYUCo3a19iakm/IfTJ2bJ+LCH
         thx1Hy/jliYyK9LHZa35Kyj8ZLukt+gpJssIefgsHWricTPHqVTvd+yhA8KBh/aSQgKD
         oUL6Q5j2kv2nG1bG65UcvTQeg/Y231xH+Z5JZHVlRA63GHFN7qYWjyajdC3NuaRQG/d2
         IxaP418Is6Z+uTj9ZpqViAC9jW5yDmNVbXLp5RTc6pjKLtmHg8OYMRR3X2WUdFc7WFdr
         MccF4nc6xsoK8j9mP+zyERue480K4BLWKQ4I33V0O00ZShzAbWtCtYcjvV9BS5gwtVM+
         tf7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wFegXMrxPrKnjO4tOhpB0Fk3rxAbDOJwMwjifDHuzoo=;
        b=Z76wIcWlmsmLVPjadRXBG5yr+O+dGS6Wyq1UroFHQc06y9/LNS0vS5GKBIkOSEZD9X
         5zH1Xbj8+VQAI4gXdxc3dXTrTAiF4L5fNmF/OSF5vmAbjvfoH3+UotmSs4YFs5MNJF2F
         lN77IGoJQrYKBTzHGaNlvTiIPTvGn/MpXrdTLPeRCtrRKqeA9dhVAZEkajoDP4/P96j3
         Dc3ONGLNBqW0NfdVJfIRtmW9A3JeYXC7ayNLcvQV/sS+8xM1aPnx+f52b1GUDZ57AfEM
         1maLvp8xiselc+WLFG+Y09Xor1Lz58EbxzVESDQhU6TopnkaUOt1nMMRw6GELkkMCJ7k
         pMIQ==
X-Gm-Message-State: AOAM530LxvTgh2BE0vWhQaG/R27cS/Oo3wZx3akHz772EAXiSb7ipe82
	9AvcCau9QT1mV5cZAGVys2o=
X-Google-Smtp-Source: ABdhPJzXapoofdF1D8yIuPB8jPnG+rnBa3gWKCeIM3YnbCWft/2ezltIuS6YRiGTug7xmj2AN/eS5Q==
X-Received: by 2002:a17:906:34da:: with SMTP id h26mr6072149ejb.376.1628188155434;
        Thu, 05 Aug 2021 11:29:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:240d:: with SMTP id z13ls3070139eja.11.gmail; Thu,
 05 Aug 2021 11:29:14 -0700 (PDT)
X-Received: by 2002:a17:906:2642:: with SMTP id i2mr6229188ejc.323.1628188154503;
        Thu, 05 Aug 2021 11:29:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628188154; cv=none;
        d=google.com; s=arc-20160816;
        b=pBRhdB6De+46szIpPcaEkwmMWFI5GKqFkbB6pA7ETKqO4MyZCHPfX1VkU1CRODdCkV
         qyCDsd4wynKBLPkfBB+/OltiGUecjruxf5dwfLukD/gue4+EzhPyP2b7eEhhLQCxcq9m
         E/z/ALWsSi0oecj4eVf/bJP1euZAM+zHqLiqOgWivhKgjJ7hp7eNAb1D6BYRpUIyh+lR
         MBZkbhJErVWazUTphvwlkyiT5rNF3JAM/tl2O5BT2BkIXKsItHQrpLQSUyBhiuoCDxC7
         yVjbMZJ4QR8vsF5kvVk3pSCDWvqyvVPt+yAt1R3LWyJJTG8oYGAb05PAH2c96Oj9jRYB
         OVtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B2x6auZy1yOpqK/qUxjj6oGl/GoNZ7BrX2iVqBBt8Ww=;
        b=PssupyyiaAdbcOGXSM1nZ7PPgS1M3uqkuS81IVKrjCD4p3wQDuf/VzJ3iO1C/HlOno
         Yc1mUuSrWARdkFchdA3YukXLp66PDWETGkn+msVeKpZSUqzphwp2zwdzjBuh3LWcCzLl
         jG6yROyOfSJnu1JX7R7TNnebUz8kcE4XUszdidoX9ynzRsgiPi2f2v8QpgAygNIy1OxN
         p/9/llf5hm82lRN0gCFw0TzdX0x+PGiAx+44gc2zck1KYr+QhqbwIBwrwI6TohOa4DVT
         mJAp1uPsWYva2fz+8DVtGgci6jTkrs8qlrxe8qF07J/X3bBlcw6YiPrkpSHxA9hyqn64
         32JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s3FKo7e0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id s18si271383ejo.1.2021.08.05.11.29.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:29:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id u13so8331152lje.5
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 11:29:14 -0700 (PDT)
X-Received: by 2002:a2e:9ec1:: with SMTP id h1mr4044167ljk.0.1628188154005;
 Thu, 05 Aug 2021 11:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
 <20210802183910.1802120-4-ndesaulniers@google.com> <CAK7LNASkBNDzXWxweotPZGJH-z3J59rPQwGDV32rfH9hH+sVHQ@mail.gmail.com>
 <CAKwvOd=iyhky9jhw+UpYM7W5-7tqo02sxpZUASEk6XciS0wSwg@mail.gmail.com>
In-Reply-To: <CAKwvOd=iyhky9jhw+UpYM7W5-7tqo02sxpZUASEk6XciS0wSwg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Aug 2021 11:29:03 -0700
Message-ID: <CAKwvOd=5drNCoU-PLFb-kJTzk1tXOvwCK89hAMPXrBZv+Ey=Bw@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s3FKo7e0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
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

On Thu, Aug 5, 2021 at 11:27 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Aug 5, 2021 at 6:58 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Aug 3, 2021 at 3:39 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > > index b18401d2ba82..f8a360958f4c 100644
> > > --- a/Documentation/kbuild/llvm.rst
> > > +++ b/Documentation/kbuild/llvm.rst
> > > @@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
> > >  Currently, the integrated assembler is disabled by default. You can pass
> > >  ``LLVM_IAS=1`` to enable it.
> > >
> > > +Omitting CROSS_COMPILE
> > > +----------------------
> > > +
> > > +As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> > > +
> > > +Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> > > +``--prefix=<path>`` to search for the GNU assembler and linker.
> >
> >
> > Is there any place where we rely on --prefix
> > to search for the linker?
> >
> > In general, the compiler stops after generating an object
> > since it is passed with the -c option.
> > The linking stage is separated.
> >
> > In the old days, VDSO was an exceptional case
> > where $(CC) was used as the linker driver, but
> > commit fe00e50b2db8c60e4ec90befad1f5bab8ca2c800 fixed it.
>
> See my previous reply to Fangrui.
> https://lore.kernel.org/lkml/CAKwvOdnK=SUm1_--tcLRO3LVeXd_2Srfv2tsZCUW0uXXa1W_pg@mail.gmail.com/
>
> To be more specific, I believe this is still a problem for ppc vdso.
> https://github.com/ClangBuiltLinux/linux/issues/774
>
> I had sent patches for that, but binutils 2.26 would crash (IIUC,
> newer GNU binutils are ok).  See this thread:
> https://lore.kernel.org/lkml/b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu/
>
> So "we'd prefer the linker was used as the driver, but there's at
> least one place I know of in the tree where that's not currently the
> case."

Also, I think the CC_CAN_LINK functionality also fits the bill.
https://github.com/ClangBuiltLinux/linux/issues/1290
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5drNCoU-PLFb-kJTzk1tXOvwCK89hAMPXrBZv%2BEy%3DBw%40mail.gmail.com.
