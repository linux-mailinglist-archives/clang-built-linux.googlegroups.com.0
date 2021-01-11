Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHO66L7QKGQENGMPEZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5A92F2055
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:03:42 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id x10sf364764ilq.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:03:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610395422; cv=pass;
        d=google.com; s=arc-20160816;
        b=STishWBCCC384hNav/vQHKRMnn6r8NdajzCtrzzpeLhVb1p8WzcdFpTwFjBqhDg2YF
         l+y9AYeusH4XOjjLFYdkyTNlqM9M2b/QQktTEsEo9dbHaacA3dIrwFYZfSsK7wWu9X/L
         J5JPLWDQq1wuFxQZ0jNBgW17v1fuZ2x3+sdaajKrHMYiWhGpcSgs6iPNIM9ty8OYQNdN
         u6jsVb/mdnJeAEpka4WLeKOjDkaf10VDwujyn7TwQhzL8y2QULIEtvk2otGqNj9whXUU
         OHMJjDi4KMNank9mev8B9VR9ZSPuu92FwFkRBU6WAnFzvQffd2io01w2mlUVhgXpj2VZ
         5i3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hO/+zCtj0Vt6sTscBXSjB0mHWLHIP1BbFloQu/5kipw=;
        b=dUZviTqyubKRQrNgKjn9wWHOHAnKhPD8E7Ui5pVlVVT7ctnqSawKq4oDUsHwiYQJzI
         cRZsnT3MS5FEXrGSaaFH1knqKdHse/wzjo5wU9//93swsJgoRblBGYtNmxQfWNXBLrSA
         QepdkIeq1f2NyqbALUAiCErxJySXMUOOafRl5fqq0TUhF8fKnHVM0CnXoxmorT5wWQV0
         Dzw0wC9VAHpnYe0oURJjQU+JoqATZwSh7iK5r15o+ApIZ2uMrNaJVqGJ/CODB0EyHDLV
         jLGfiVxD297DfTrb9iqm6KaiuE40evtBNp/xSxVoGbbzRn/jjD42U0hkIoDMdR2PCAVq
         Ervg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UAs6pdpv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hO/+zCtj0Vt6sTscBXSjB0mHWLHIP1BbFloQu/5kipw=;
        b=hEEimeUNiqFtnZbmHvlX+YNLwiK6lblIHdsnlMEmURKnDEgNIto2sHPH8MeKJQ0tYg
         cTQEi3xLo7bVv6R+htPaP5R0QxTTiCDl8dKgfgsaVSz3y2n+pgHTwtdkC6AQp3l1Slql
         1ucaKhEvKL0CmuOpJwC9US/4Gd5gs4Q88b0/m6jebbc3C6BhgT6eI5PuyB69I1OpwLFx
         aRu2zfen/YlcjvtHM35kIWG6pWzm0FbxC2BEO4U9wV1hcoaGfUeOKnunpt0o3X3XzTu2
         WvCEa9Op7Zo/Ns4eXOdG3cOKUscXtS+koffACjJhm0xAuhftwkJAv4TiP/O4jVd6ZeIh
         HIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hO/+zCtj0Vt6sTscBXSjB0mHWLHIP1BbFloQu/5kipw=;
        b=XDBnJKlCwjVLhsmt9mFYaVa6p/3GTPaE7ll/QEh4vOxTG1fgfZa2UjSviH1S6coW0q
         KRbTdGFQ6cp8BhWTACXW0l4boKQrNs0sooEvg7e06xMBWXqSYb8xqYV2zrp4uicqOmK5
         WA2yEYb7UzEzxPV/c/NZD0Lh4AdYCG1vC7fL9sFLYiA8BBPbdjM0/ghwQUyZVO0L1hk2
         H1U/GXQTc43t8uWg2cCeodQ8Wsx2kaGHLte8Z2t/zrB+eLHqvYeioNpBbnaNd6UJQKGN
         gYuPkgl983GBkC69AaigUv/jf3LoG404T5S2DGA0NqqpP3NWsEuGA3zkttRg3VGbkPTB
         wDHA==
X-Gm-Message-State: AOAM532/SPfLAezk9qNNhT+6tYoVxS01diL6cUopJ6tdowCyeZUFypg+
	3ILERpqRiII2n722zIK+iQw=
X-Google-Smtp-Source: ABdhPJx/QWBAL4zooDdf3ZTrCsXjoeD0BksX0RkFXTielrED0tYjSCj+6HgrwkG8MGu/mzBSqgCCZg==
X-Received: by 2002:a6b:5113:: with SMTP id f19mr733043iob.83.1610395421910;
        Mon, 11 Jan 2021 12:03:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2352:: with SMTP id r18ls185781iot.11.gmail; Mon,
 11 Jan 2021 12:03:41 -0800 (PST)
X-Received: by 2002:a6b:6d1a:: with SMTP id a26mr751742iod.158.1610395421417;
        Mon, 11 Jan 2021 12:03:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610395421; cv=none;
        d=google.com; s=arc-20160816;
        b=oKAuBb8aS0LlSx6xwCOXgvazdfwpzgBtKS6BdAm5FNo9zqpA61qFHU8a8Cmx5rq4v4
         q7+4tfDIZogLheDEpHqXkPfB/Y5uUnYBm4g8TKdj44tqD+vsStUungimCFphxkv2H/hX
         Hlbr2sqMsKbAjbUi5MiNr7vsGhn0sR4kaRQ24vidwz5X5oCiZqb+upfQMmO0LvHGfCC5
         9MhAvK1a/PMj6pM1OAApRPiZEidT8Do5NeLCri7ly6SpS1fpD8IS0kDCxmEA7Vj310sI
         T9VwDhq01pnpnpWfxLeMzzciPZpJ0WIm5b115NXrwEXi9ULNoJaIYNqaeZLzxVjqT6bY
         HgFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZrJB+VMtGpCDCw4tM56I2rie2eVd0wx7yFHoaKknnYg=;
        b=gpy1ml3MgbnDMa+5HlUhAw2IZ6x38V/DNx2fKkFgYCxOiHnbUAfKHrG1Vzqkii2ziX
         9W16JsLuk1uHue97CsUFUgZV8LY8FWlsYmCIpsZPQyb8/ffv88qSnhSGodtwLRMP7j+u
         Sf7ggXvV3/pGvT5kOJs6lW4TleQ0AX3ZXyqzReZKxpcoLfI4p/47wlILavzACXS0PXUH
         Z+aWnqVKC0CrxNvsu8OC1XJAXbOMzzm+ipFWbJShMERidu7Q7rLFGEbWfyUNJDaISKC+
         npqo5FJFJsY8Eer5PJJp39aRtZZguaROUNXT02xSqmsOMzlJhEKy2mavJF10ptTmDZC9
         WK+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UAs6pdpv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id c14si80273ilk.5.2021.01.11.12.03.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 12:03:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id w2so580793pfc.13
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 12:03:41 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr1118729pgb.381.1610395420744;
 Mon, 11 Jan 2021 12:03:40 -0800 (PST)
MIME-Version: 1.0
References: <20210109171058.497636-1-alobakin@pm.me> <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com>
 <20210109191457.786517-1-alobakin@pm.me>
In-Reply-To: <20210109191457.786517-1-alobakin@pm.me>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 12:03:29 -0800
Message-ID: <CAKwvOdnOXXaz+S1agu5kCQLm+qEkXE2Hpd2_V8yPsbUTQH7JZw@mail.gmail.com>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
To: Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-arch <linux-arch@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UAs6pdpv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
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

Hi Alexander,
I'm genuinely trying to reproduce/understand this report, questions below:

On Sat, Jan 9, 2021 at 11:15 AM Alexander Lobakin <alobakin@pm.me> wrote:
>
> From: Nick Desaulniers <ndesaulniers@google.com>
> Date: Sat, 9 Jan 2021 09:50:44 -0800
>
> > On Sat, Jan 9, 2021 at 9:11 AM Alexander Lobakin <alobakin@pm.me> wrote=
:
> >>
> >> Machine: MIPS32 R2 Big Endian (interAptiv (multi))
> >>
> >> While testing MIPS with LLVM, I found a weird and very rare bug with
> >> MIPS relocs that LLVM emits into kernel modules. It happens on both
> >> 11.0.0 and latest git snapshot and applies, as I can see, only to
> >> references to static symbols.
> >>
> >> When the kernel loads the module, it allocates a space for every
> >> section and then manually apply the relocations relative to the
> >> new address.
> >>
> >> Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
> >> It's static and referenced only in phy_register_driver(), where it's
> >> used to fill callback pointer in a structure.
> >>
> >> The real function address after module loading is 0xc06c1444, that
> >> is observed in its ELF st_value field.
> >> There are two relocs related to this usage in phy_register_driver():
> >>
> >> R_MIPS_HI16 refers to 0x3c010000
> >> R_MIPS_LO16 refers to 0x24339444

Sorry, how are these calculated?  (Explicit shell commands invoked
would be appreciated)

I'm doing:
$ ARCH=3Dmips CROSS_COMPILE=3Dmips-linux-gnu- make CC=3Dclang -j71 32r2_def=
config
$ ARCH=3Dmips CROSS_COMPILE=3Dmips-linux-gnu- make CC=3Dclang -j71 modules
$ llvm-nm --format=3Dsysv drivers/net/phy/phy_device.o | grep phy_probe
$ llvm-objdump -Dr --disassemble-symbols=3Dphy_driver_register
drivers/net/phy/phy_device.o
$ llvm-readelf -r drivers/net/phy/phy_device.o  | grep -e R_MIPS_HI16
-e R_MIPS_LO16

for some of the commands trying to verify.

> >>
> >> The address of .text is 0xc06b8000. So the destination is calculated
> >> as follows:
> >>
> >> 0x00000000 from hi16;
> >> 0xffff9444 from lo16 (sign extend as it's always treated as signed);
> >> 0xc06b8000 from base.
> >>
> >> =3D 0xc06b1444. The value is lower than the real phy_probe() address
> >> (0xc06c1444) by 0x10000 and is lower than the base address of
> >> module's .text, so it's 100% incorrect.

The disassembly for me produces:
    399c: 3c 03 00 00   lui     $3, 0 <phy_device_free>
                        0000399c:  R_MIPS_HI16  .text
...
    39a8: 24 63 3a 5c   addiu   $3, $3, 14940 <phy_probe>
                        000039a8:  R_MIPS_LO16  .text

I'm not really sure how to manually resolve the relocations; Fangrui
do you have any tips? (I'm coincidentally reading through Linkers &
Loaders currently, but only just started chpt. 4).

> >>
> >> This results in:
> >>
> >> [    2.204022] CPU 3 Unable to handle kernel paging request at virtual
> >> address c06b1444, epc =3D=3D c06b1444, ra =3D=3D 803f1090
> >>
> >> The correct instructions should be:
> >>
> >> R_MIPS_HI16 0x3c010001
> >> R_MIPS_LO16 0x24339444
> >>
> >> so there'll be 0x00010000 from hi16.
> >>
> >> I tried to catch those bugs in arch/mips/kernel/module.c (by checking
> >> if the destination is lower than the base address, which should never
> >> happen), and seems like I have only 3 such places in libphy.ko (and
> >> one in nf_tables.ko).
> >> I don't think it should be handled somehow in mentioned source code
> >> as it would look rather ugly and may break kernels build with GNU
> >> stack, which seems to not produce such bad codes.
> >>
> >> If I should report this to any other resources, please let me know.
> >> I chose clang-built-linux and LKML as it may not happen with userland
> >> (didn't tried to catch).
> >
> > Thanks for the report.  Sounds like we may indeed be producing an
> > incorrect relocation.  This is only seen for big endian triples?
>
> Unfortunately I don't have a LE board to play with, so can confirm
> only Big Endian.
>
> (BTW, if someone can say if it's possible for MIPS (and how if it is)
> to launch a LE kernel from BE-booted preloader and U-Boot, that would
> be super cool)
>
> > Getting a way for us to deterministically reproduce would be a good
> > first step.  Which config or configs beyond defconfig, and which
> > relocations specifically are you observing this with?
>
> I use `make 32r2_defconfig` which combines several configs from
> arch/mips/configs:
>  - generic_defconfig;
>  - generic/32r2.config;
>  - generic/eb.config.
>
> Aside from that, I enable a bunch of my WIP drivers and the
> Netfilter. On my setup, this bug is always present in libphy.ko,
> so CONFIG_PHYLIB=3Dm (with all deps) should be enough.
>
> The three failed relocs belongs to this part of code: [0]
>
> llvm-readelf on them:
>
> Relocation section '.rel.text' at offset 0xbf60 contains 2281 entries:=C2=
=AC
> [...]
> 00005740  00029305 R_MIPS_HI16            00000000   .text
> 00005744  00029306 R_MIPS_LO16            00000000   .text
> 00005720  00029305 R_MIPS_HI16            00000000   .text
> 00005748  00029306 R_MIPS_LO16            00000000   .text
> 0000573c  00029305 R_MIPS_HI16            00000000   .text
> 0000574c  00029306 R_MIPS_LO16            00000000   .text
>
> The first pair is the one from my first mail:
> 0x3c010000 <-- should be 0x3c010001 to work properly
> 0x24339444
>
> I'm planning to hunt for more now, will let you know.
>
> [0] https://elixir.bootlin.com/linux/v5.11-rc2/source/drivers/net/phy/phy=
_device.c#L2989
>
> > Thanks,
> > ~Nick Desaulniers
>
> Thanks,
> Al
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnOXXaz%2BS1agu5kCQLm%2BqEkXE2Hpd2_V8yPsbUTQH7JZw%4=
0mail.gmail.com.
