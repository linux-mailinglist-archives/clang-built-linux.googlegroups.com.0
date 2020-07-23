Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJ42434AKGQEFBTJYUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CF522B010
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 15:14:17 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id s24sf3907913pfe.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 06:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595510055; cv=pass;
        d=google.com; s=arc-20160816;
        b=A3O5EAAK5oqq5fDf9wUNiLHwfzQj/TKZVvBtS7bglABJrHEtTxQxQ4MnWSnVfwiR59
         qoMimrkpEjfCrkk6xWyngI6M3ALb6pqzk632oGIuCjAwxqrgIhAtwg+2t1IXzmnzw/Jg
         Rz0YJxaU7ZNFk5FvXAyA6OhXoTN/M5CSKpjvNg6WZlDBd73D11NBoAa0ElSFoqzpzsCf
         U0U2yJb5EmWld2Lb6jo6+bsNigif56aQR1lVsd89pPMsP4z62NfGuRqy0MEsjaq8lIl9
         zJQM/vlavEQ2adrC0QeXIZbrWsPel2nuH+JkcW50UOSDJimirUhGnULzNBvpFAFzsXpl
         f7ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Vfow8gnr2IY7NQjmd2EimeuI0ymIlG9SRNFmywN9RK0=;
        b=j5tR8bagHhx41aGRBM/oNQx4JNX+AWuJTTuML9VcheeODlTxBe0PA3E6k9jIRu2wYY
         8DXsFjN5+EKn1mQmMdR8ycjdCRjb5gR8Cubp3IvpkSnfJ6V4HZ7EUWvuAvVAeaB5OrSi
         nGIVQQc/e/zhBV0NRCB8e5xieufN9pZIGhQ9/hvA9jiRYpgzveAei+xAggL38/JMkOnd
         B1e0N7UYgsonx6fdPrK7hk+rhHsgvfl1qpJeUHyRtrxQzjteix0wIWH0riCLzUB/FQfk
         aoBnowWYBMfEk+vPqltJRG7XnGvp2A6yypx/NP/2saKrapBDObpoJT05gJZKjFyXvMAT
         sS/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ezgb8FZM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vfow8gnr2IY7NQjmd2EimeuI0ymIlG9SRNFmywN9RK0=;
        b=dGBOLC09Cb0eBHms5k7GI9P5qha3fiy+Kfr40UZ9YKSvszXKwy53zeg3+4XCWDG/ll
         V+BegrVWRa8cBiQTmBk0yERpZjeOUt/kCvQSBpd/1Yy53U3IwcZiBhOI0Dq7ulbj66eo
         sN3vkqbz3FslCgpSyeCUxgjeMUoayu8wBW2O04uJCGzkqKdVRNJe33jSYKNIiozLwnGk
         2oAvmH4JkrsrQNgLqH0fFavAWb8RWC1NYhjcQRck2wTRFf2z72BVmgxArdLqusgwFLVN
         4o/jaNFQTIFS5nuOi816hvog10VI/gKPUXAFu675M4mhppAg6jhYvr4YX5IQZI+9vfkw
         l8Lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vfow8gnr2IY7NQjmd2EimeuI0ymIlG9SRNFmywN9RK0=;
        b=cZudvy+SfXRCrlomUaqKL4XAwFZ9Wqx2+T/bp1AMhthDayC5Utu+leEaT1Jl37I2wg
         CRu6+HKbq8To490u7DZZ9HYlcBSTVWfjTdAoHzUhxeKPKNJtNYRfczTHCCs6LlBdgRDI
         uRkHAEX9Vz02gUOd8lfJBDQKwKg2uWe+O/y60xGBa2I7GIDS0eJ5apAF0GNR85BP7crh
         wzODt9crc+p0PjRa+7hTztKaODNpuP2pE142b4mQvoOzNWf26nWeCxyUjulXGm6jZpGj
         Rd0F9awGvH2Kpa0YnhDGPFY/7Nch5InO2E4yKIVRQdLmQq5GJoLYGAQoGqDJv6t2rUxn
         IJ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vfow8gnr2IY7NQjmd2EimeuI0ymIlG9SRNFmywN9RK0=;
        b=TB5ogS4nJicvsjelViK29jwYRn8+zJ8gQUyUQlOvOH7cLmdtp5q0PrfIfRp6JwP2jg
         GJwthQI8/sqNQSn0wDSLXyu4wq4FEwMTLX5yrSjX7e3PVml4C86g6iOiHoFN7DD+bqMB
         geSkfQ5VoW40rFg4qvdwFj9O1EZ3i9E73nPH6IBcw27FoLe5TWFiWiJtxR/B6dF0cGzX
         +roi7HVkwnBn3kb0VlIpG2SMPvNQWpu3ecWrvkgdCNNfgEMF+nqISk2L84a6cekWZ59g
         hZSTGW8YyfaAhgg56MRySMaYprnMU6Bd0qvZFI1o2CC+vqFr+A+BdAJI8NbU5qJHa+ro
         322Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UmU+YBNlnH6Q2275WHbXyzqhQXzeUKfPwjCpSFPFR71z+5QR1
	f4DOdLj383TZ9LBwnmNfvgE=
X-Google-Smtp-Source: ABdhPJyAAX5s+NJdqI/D0ntxh87WkPi1b2VYq9obJ15V0Ui2SxUZEx4y2Jdkfy8ZwaRg+LDYzdWiQw==
X-Received: by 2002:a17:90a:1acc:: with SMTP id p70mr376162pjp.210.1595510055636;
        Thu, 23 Jul 2020 06:14:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls2255167plr.0.gmail; Thu, 23
 Jul 2020 06:14:15 -0700 (PDT)
X-Received: by 2002:a17:90a:319:: with SMTP id 25mr351232pje.77.1595510055125;
        Thu, 23 Jul 2020 06:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595510055; cv=none;
        d=google.com; s=arc-20160816;
        b=z/NcEEsspEgNzDL3UaDGqKfMjSwRKEWMvXf3mMNZQZrR2BXB/4+UsCZLxSl16Hq1g3
         W9+GUcGF6IMsYFOdn0Q/tYkuv/Eph1WjfvWIWYKeQFwPdcdAdhgJb1R3zJZl17LUy2HM
         +5jzejC7gfKREE9WRzIZbKSaJXf9F0ybdQs+5THhiHJBzlFuFAfQGBDyssSwgN1ahG2s
         nFk5Ld0K/p557LuvUAXMx8Ik1IzNKgkLwDO/grhDM8O79fIjU+BxqCF9cMf/s79As0QE
         y0abO+tww2wG6W2eWCrSGHbIuCuuZwQrokl3K7tPsaD2s1W8GY+k0MJn3S/rr3DlVdle
         KY7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=32lEAPZ/UL3cKAISqUdZsL9ffI08w61Ejr7d1duZqTc=;
        b=jYlyo49g5xkdbCCjF5r5Vdf4n48Fd3CpodyrQdDg6F9/9lE22CwpLaGfDXUeM2Dxmo
         909csC+iwdMj9+y+vCtGQsR8ddlsXFsVm6PFXZ3j2C/GD9aRLyNHe5jH8dZJHPM8bbbm
         4j5FhOB2OK0bRHwZOn3/uDcmtoQznap/5KDZTpllatgtdR+tY7svNzYoGF05Bw78NSTk
         JKs8AzEHoTDrRgvwJ49mWwSq8b/EUuU+SeVCYe7sMkDmvnvIqaLSFNeRjT96GqAt5yvS
         +gyLpiK82dk2JBRvzuw7rCciOI7zZy65EKpkH6DJTNZ0UbW8we8eRnr1rXFpyiiA6Pqg
         SV3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ezgb8FZM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id l6si504686pjn.1.2020.07.23.06.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 06:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id k23so6100080iom.10
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 06:14:15 -0700 (PDT)
X-Received: by 2002:a05:6602:1555:: with SMTP id h21mr4813840iow.163.1595510054602;
 Thu, 23 Jul 2020 06:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
 <20200720204925.3654302-12-ndesaulniers@google.com> <87365izj7i.fsf@nanos.tec.linutronix.de>
 <87zh7qy4i4.fsf@nanos.tec.linutronix.de> <CA+icZUVz0opOb0LihLvPvKM-t0Y=pcUWDyb+u-L_UVnnbPh1rQ@mail.gmail.com>
 <CAK8P3a3Ms1uvLcbhmbsU+-u11BCrXPaU5Dro=P9LjAG7CYm8ww@mail.gmail.com>
In-Reply-To: <CAK8P3a3Ms1uvLcbhmbsU+-u11BCrXPaU5Dro=P9LjAG7CYm8ww@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 23 Jul 2020 15:14:02 +0200
Message-ID: <CA+icZUXzjcQ7ekTg8LvwcaBZFn_HeDjif+rKaFAKy=0gUrx=Xg@mail.gmail.com>
Subject: Re: [PATCH v3 11/11] x86: support i386 with Clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, David Woodhouse <dwmw2@infradead.org>, 
	Dmitry Golovin <dima@golovin.in>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ezgb8FZM;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 23, 2020 at 1:42 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Thu, Jul 23, 2020 at 1:07 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > On Thu, Jul 23, 2020 at 11:17 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> > > Thomas Gleixner <tglx@linutronix.de> writes:
> >
> > I have applied this patch-series v3 but some basics of "i386" usage
> > are not clear to me when I wanted to test it and give some feedback.
> >
> > [1] is the original place in CBL where this was reported and I have
> > commented on this.
> >
> > Beyond some old cruft in i386_defconfig like non-existent
> > "CONFIG_CRYPTO_AES_586" I have some fundamental questions:
> >
> > What means "ARCH=i386" and where it is used (for)?
> >
> > I can do:
> >
> > $ ARCH=x86 make V=1 -j3 $MAKE_OPTS i386_defconfig
> > $ make V=1 -j3 $MAKE_OPTS i386_defconfig
> >
> > ...which results in the same .config.
> >
> > Whereas when I do:
> >
> > $ ARCH=i386 make V=1 -j3 $MAKE_OPTS i386_defconfig
> >
> > ...drops CONFIG_64BIT line entirely.
> >
> > But "# CONFIG_64BIT is not set" is explicitly set in
> > arch/x86/configs/i386_defconfig but gets dropped.
> >
> > Unsure if above is the same like:
> > $ ARCH=i386 make V=1 -j3 $MAKE_OPTS defconfig
>
> The logic was introduced when arch/i386 and arch/x86_64 got
> merged into arch/x86, to stay compatible with the original behavior
> that would produce a 32-bit or 64-bit kernel depending on which
> machine you are running on.
>
> There are probably not a lot of people building kernels on 32-bit
> machines any more (real 32-bit machines are really slow compared
> to modern ones, and 64-bit machines running 32-bit distros usually
> want a 64-bit kernel), so it could in theory be changed.
>
> It will certainly break someone's workflow though, so nobody has
> proposed actually changing it so far.
>
> > When generating via "make ... i386_defconfig" modern gcc-9 and and a
> > snapshot version of clang-11 build both with:
> >
> > $ ARCH=x86 make V=1 -j3 $MAKE_OPTS
> > ... -march=i686 -mtune=generic ...
> >
> > Checking generated .config reveals:
> >
> > CONFIG_M686=y
> >
> > So, I guess modern compilers do at least support "i686" as lowest CPU?
>
> i686 compiler support goes back to the 1990s, and the kernel now
> requires at least gcc-4.9 from 2014, so yes.
>
> > Nick D. says:
> > > I usually test with make ... i386_defconfig.
> >
> > Can you enlighten a bit?
> >
> > Of course, I can send a patch to remove the "CONFIG_CRYPTO_AES_586=y"
> > line from i386_defconfig.
>
> The "i386" in i386_defconfig is just a synonym for x86-32, it does not
> imply a particular CPU generation. The original i386 is no longer supported,
> i486sx (barely) is and in practice most 32-bit Linux code gets compiled
> for some variant of i586 or i686 variant but run on 64-bit hardware.
>

Thanks a lot Arnd for all the detailed informations.

A change of i386_defconfig to x86_defconfig will cause a big cry from
all kernel-bot maintainers :-).

- Sedat -

P.S.: CONFIG_64BIT
What I dropped by accident in my previous mail:
What happens when there is no CONFIG_64BIT line?
There exist explicit checks for (and "inverse") of CONFIG_64BIT like
"ifdef" and "ifndef" or any "defined(...)" and its opposite?
I remember I have seen checks for it in x86 tree.

- EOT -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXzjcQ7ekTg8LvwcaBZFn_HeDjif%2BrKaFAKy%3D0gUrx%3DXg%40mail.gmail.com.
