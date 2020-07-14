Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOGNW34AKGQEPPMU7QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A6921F168
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 14:36:09 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id h4sf12976227qkl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 05:36:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594730168; cv=pass;
        d=google.com; s=arc-20160816;
        b=vPQZTdY7xAaHu1pj0lKOj37/cbPa+/rTVYV8A4jZxLvAUosgQPwcsDgY0RoTglFpCi
         9t7IF5WdmTbLiALn1pPPi/NVLpcy926szQI6dikHjLMnhVlOlwssareg6P/ryVb2eEnP
         sGr8llGLHNNUp5F16sXOSj+Rh2DX5mJRixovaukLFXKgfUvpNSNeYsdYRxGqgBDE0gPi
         ZWkBC72A+kRikYRZL/RVlMpED81/cP3g7/mkIPNslWzQITbj6SS04gupj1VUjkCYMtti
         GbH+mM1ExlrUToBpsZiHCotJx4Vul+aDbQwnXVAmEHzFoiWiQpTMc5MlYOo9UFXGqBRn
         +stA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5vEoRVJVh8GlBRl/mNRy2FxD4MDWkNeGB3u7cD1xbKE=;
        b=g95u2qO0FO6csiroNXvcMEVLuWlmHKlEoyVMj1OgAER34vfqWnozmOpgPgbU8NMO2f
         i5dQBOodnnu7HtGOYXP2FSwCaSqWdp9vZLfGXculJKLiO0Bt2qY/toZSDecg7r6rAP9E
         0y7RfWXi0QJbWgumVZIuf8sSaO8wCqheBT/a8gnz88IfxvAKDLxv3kzQNvMbaRa7QfPX
         6JWYIggO3V14hUhQOH1EvPdRxQx8s5Ynw6SdGRCwQ3Vu/n4MaUm3VBeos3sSDV0cl6LR
         aX5huMiG2DwVfZjsOi+OBnS50xNgOw6KA8MzOt9nq9AhFj4cd7QVTXeQfVnuQhdJz5BT
         tgYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=exjA6lvA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5vEoRVJVh8GlBRl/mNRy2FxD4MDWkNeGB3u7cD1xbKE=;
        b=Bc98L6WCvEVrtVMUuQmOOfpiZdj7nwyMJZZWsCArhivaAXy6oGkZ4tnVVQMNb+TllN
         VitqB9AaKAM/g8tve073VMmlTKhQac2/Vq/rZxQHzrpYQGpyaomIuA5alE/KSrr2eAMS
         Jtnf5xn2MJj9b3jnPhD9g5xGfnHd0Dh042xky9z2QGRszz9eUA5AGVvMwcu3gVt0U1k4
         8KdE9sPUFXmzvo8v0HgJpBMzsDNDAJg4GxOdzv8PhkuMfeC7Uex/b42BaGpY+TgkbC/A
         QRkqheO8dqC7VYc5MPEce7dHfFDRAHEpUYoxHE6cD2CbqFZCAInEimw+Ix/L6phS7Hva
         Jolw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vEoRVJVh8GlBRl/mNRy2FxD4MDWkNeGB3u7cD1xbKE=;
        b=raBgZRVKjXypsUxDjXjvKum1vTvY3Cl9fubvB8GUFYK4eAhb9oWPABn9T9xM7kll7P
         GlOw6rEDtUi2z1E9ONECd5XjBO+qfRwDqDdTG+IF/0CzUXy0YHSzhGoj6vYEZ5vhGi6Q
         eJpGiLSlk7qKacZ+foDyLDRWEwnArnGNZMg+6SS6pzpAL+9k0qRxUvWgdd4FH6eak47N
         bIUg1P6O/IO7WlV6s3ilF9IQv9h0VabpDa097RJyBsP+PYI+4Cpa2ziRdBKQ0ZWxQrrB
         5c6S1HtgrYyrWZkaqsGU4TDIIm6tS+vQSczw9fG5VlhweYuofLwO6q6felYrty+mLM0C
         3k9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vEoRVJVh8GlBRl/mNRy2FxD4MDWkNeGB3u7cD1xbKE=;
        b=MstqgwcyJmWOQydDnMRKcezGWLFFUoeBugy4bt2lKI5woXoL+sij2+++q16AzLZ3mx
         dClGS91nBiskIvmCAvu/5qbCZW2PN/JbanCeRn+PcFJhNlYx/Lb2wz4tFM/+d44CfLZi
         8GhHh/7YaBN6+IyCvj++ntpfSHhI2iG12jr9D0E8wm+3GBbs/BqmaDYZr0zETrWwyV+z
         y2gaSGpXyrGmILdtBvcQUkozwTsRzjLEAxFcljQTqAv9MHEoYm1us1jkFF0sPbBWzmXg
         4c4GDd4LmKR+6KCmEUNMVLTRNa1Plt0XNee3fcd8gYLx12/UrcPrMxGmwxRvsK/pXZJl
         yaTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yUOWWu0B6Zqfimmiocu5YziOBBFV/CaVtp6wNkr6kZf/KeMc6
	f3QIiIl1j8p5lPaOASKL0ps=
X-Google-Smtp-Source: ABdhPJyHXlD5VkfPM/CK1D6Oi3v+o6SDKJxckm0HqQ9XCI+4i3DEdTfEHneny368dNA2vc3Ur+Np2Q==
X-Received: by 2002:a05:6214:612:: with SMTP id z18mr4368429qvw.46.1594730168595;
        Tue, 14 Jul 2020 05:36:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:36a2:: with SMTP id a31ls7910747qtc.5.gmail; Tue, 14 Jul
 2020 05:36:08 -0700 (PDT)
X-Received: by 2002:ac8:4301:: with SMTP id z1mr4486624qtm.48.1594730168203;
        Tue, 14 Jul 2020 05:36:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594730168; cv=none;
        d=google.com; s=arc-20160816;
        b=VCeIfCkCNDFkvnsmXU8lBDhaSNfuPAvX+Z/Z7pElRZTofTZgV4b2Z5+f21/sFuCqGr
         j391Qoi5IbAK+w9y+8v6Ho/7mZOnr1eWJUZ4LZ6qDlbFP+z5bgY2spyvpeGffuuEnarm
         wAO3FGFqrTR6ap12w8AfjfgPhyoasjO1Me9X2uBPmSetouWInmabYnTeEjK3I6qxHmCa
         rme7x8ZVdfG6tjt6JF3tVHFhR/nH0yBjPVp3aiR7hctHvWe488BpolKyOcloLiJhYGRJ
         ZTYCeKHNT4pQl433VCYX6C/xBBL9HHK3C+2mbxTNssk5Z03k0FObXBGbFUaXU7GkTcKg
         jy4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Gb+Q70LB3bQ72JL0eSnIdekJKUYUeTWGONZ+6Nqwogo=;
        b=hKneGujWmx+fyvVys/u1kvomMaSJIzCQH3k51KZ1vRTcN8jN58X815omvv33UuPmOv
         6dyAMQyWBiT4rZmYA1sfOtBjufFsWzPeO4YsEXljL1AmiOVy5Ue3DWPI5uBHr2ixL9dF
         iaPUsWTpXszo0KIj2yLGkTpReT1E/+oMHTe9RVEcH3Pwo6tXkLxdaQmrydzHiN8uG3tu
         0wQxacLCyxRZI9JMOLToA6hLMD4KFgFOwJ6Khp7TF4rOW1JKWaPnWeWg9Tc5aeT4+DRh
         ZZveG1U2PdoKw/y7FMobMHeKTcmRw0xVpM28rZgwEjJs6o1DOQ9YuVUiMkKvFNBMuprQ
         /nDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=exjA6lvA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id u17si1066766qka.5.2020.07.14.05.36.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 05:36:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id a12so17020216ion.13
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 05:36:08 -0700 (PDT)
X-Received: by 2002:a5e:9309:: with SMTP id k9mr4608670iom.135.1594730166218;
 Tue, 14 Jul 2020 05:36:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <671d8923-ed43-4600-2628-33ae7cb82ccb@molgen.mpg.de> <CABCJKuedpxAqndgL=jHT22KtjnLkb1dsYaM6hQYyhqrWjkEe6A@mail.gmail.com>
 <2ac9e722-949b-aa92-3553-df1bf69bf9e5@molgen.mpg.de>
In-Reply-To: <2ac9e722-949b-aa92-3553-df1bf69bf9e5@molgen.mpg.de>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 14:35:52 +0200
Message-ID: <CA+icZUXwLocrBNRL+1-koCW50Fm+f4_u3xzy-_eJSxyoW2VTfw@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=exjA6lvA;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
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

On Tue, Jul 14, 2020 at 2:16 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> Dear Sami,
>
>
> Am 13.07.20 um 01:34 schrieb Sami Tolvanen:
> > On Sat, Jul 11, 2020 at 9:32 AM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> >> Thank you very much for sending these changes.
> >>
> >> Do you have a branch, where your current work can be pulled from? Your
> >> branch on GitHub [1] seems 15 months old.
> >
> > The clang-lto branch is rebased regularly on top of Linus' tree.
> > GitHub just looks at the commit date of the last commit in the tree,
> > which isn't all that informative.
>
> Thank you for clearing this up, and sorry for not checking myself.
>
> >> Out of curiosity, I applied the changes, allowed the selection for i386
> >> (x86), and with Clang 1:11~++20200701093119+ffee8040534-1~exp1 from
> >> Debian experimental, it failed with `Invalid absolute R_386_32
> >> relocation: KERNEL_PAGES`:
> >
> > I haven't looked at getting this to work on i386, which is why we only
> > select ARCH_SUPPORTS_LTO for x86_64. I would expect there to be a few
> > issues to address.
> >
> >>>    arch/x86/tools/relocs vmlinux > arch/x86/boot/compressed/vmlinux.relocs;arch/x86/tools/relocs --abs-relocs vmlinux
> >>> Invalid absolute R_386_32 relocation: KERNEL_PAGES
> >
> > KERNEL_PAGES looks like a constant, so it's probably safe to ignore
> > the absolute relocation in tools/relocs.c.
>
> Thank you for pointing me to the right direction. I am happy to report,
> that with the diff below (no idea to what list to add the string), Linux
> 5.8-rc5 with the LLVM/Clang/LTO patches on top, builds and boots on the
> ASRock E350M1.
>
> ```
> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
> index 8f3bf34840cef..e91af127ed3c0 100644
> --- a/arch/x86/tools/relocs.c
> +++ b/arch/x86/tools/relocs.c
> @@ -79,6 +79,7 @@ static const char * const
> sym_regex_kernel[S_NSYMTYPES] = {
>          "__end_rodata_hpage_align|"
>   #endif
>          "__vvar_page|"
> +       "KERNEL_PAGES|"
>          "_end)$"
>   };
> ```
>

What llvm-toolchain and version did you use?

Can you post your linux-config?

Thanks.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXwLocrBNRL%2B1-koCW50Fm%2Bf4_u3xzy-_eJSxyoW2VTfw%40mail.gmail.com.
