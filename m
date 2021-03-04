Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBV6XQWBAMGQEIJMN7JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 062DD32DDD1
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 00:23:05 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id c21sf187827oto.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 15:23:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614900183; cv=pass;
        d=google.com; s=arc-20160816;
        b=t8p+24iqG7XjqX7Z/2EgQv8kE4tNmNVwDz1OwDOHy82lx7NbP+3TpIOTYiQE1QRX0t
         zDq/ZPN1G4XemLtlnp7iCuLFh9QPFf+PwB1l8KD3d12VASeC8GEuddc1Yr3Gei+BfaJ+
         9F+urt5BPcmuBFIalI9UN+4vTsA14ll71vXX2VLzYO0scAR2q/PGTUX+GEexL5yBQtES
         W4cb1jlWax8VaSCW9GmWt3RQ7D5rSkR5UwxFwdL5qvbAoBKqTofL5hcj7kq83bpkA3I/
         ZKhx4Yp8IyMYK5EOHZ1yV35hj25m+hgB7dtT9fdmVuegsLoagTaP4Rf+Mg8ngXYuN8oX
         t40A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BaclvYByuEx1EncveP+/l7DuPtSEPOIw78NjUlrEVVQ=;
        b=uWcKC12L4bQcAEAXY3CesYr8wYmbxia1uSQR1A2APmhuZSVLEIImZg9WCMbEkjYZwa
         YyHCq2qHME7c1N6OoRcSp9tjGfjGup/V+0EM+Pv787GtvBgrwPGgNpFXxwfyA1ut+hYF
         FBSZYiSA/CMt8X/6YG4AHoGUdUFcB9ApOLoVUQkhuIL0tMoohR2bVs2qG9w/xwYpdAkU
         jz8Y5SXPGYc62A+tFTIKxtNQWj5/rvZYoNDSa1U1B+7c3laKCzntd1m9q8gx34a3Nh5c
         YCHdckTZoxMtKDHhokZMtYI8jX+A3VYUubcGHPXLUdIFyUlUbSVYTWu4Il7Lmf2gj2oL
         vrag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=evlkDz3t;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BaclvYByuEx1EncveP+/l7DuPtSEPOIw78NjUlrEVVQ=;
        b=O3Ol+FdYoqcU/xjnZnSA4O3P8Y2BZGQT0CP3rlzn3zxyfIaTzOQ0XTNIQN2d1nPHmQ
         kSXHaCusL/a9DTv3IaayED3JtY6KhOpaoQ5GFkYOfqjiaRdIvoC6/f5oH2FIQmRwv7F2
         u4m8kknMMs2UxYXVpuR9TZM/8pm/IAQgZAO/Q4HxoPefzg4ULRpM0rqj1Z4p5aZPGsox
         /CTON4DSFzE9L7/AUY2Dho9ZozHEhX4pQHIa23IbMOUQtDx8KGBye8rPjJZciKJCiH38
         fz0ilqeBJpfTvoQScqIlosg34gU11LE90XfCPfj3ILbe2TMHlE08hksKk59HIS1NUn+z
         Tzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BaclvYByuEx1EncveP+/l7DuPtSEPOIw78NjUlrEVVQ=;
        b=s+zKfN3PFMeXYsVTi2JIrl7qXEDWxlNFtwem0v9geK4/C1bTKNI2HtNSLc45U22VNO
         3qennJyMIJz2KAE4zK6CCjoUyUoWpb/uD8V0ZXRwCRymoGue5jEZ8mcXIn7tNkE32p4p
         Hubrf6sxjsmAQEErc8VbE0H6XD0vYiKX/P24zwdfR9b2maMBRAdcCDt+j/oWT36WN0b/
         s+cmzKoKMNZ6LPvKlV4Zn7+QBmWmyOsAwoE5TlHRzHdSwGVpFDvEBYsLEeQyYvA0Xtf0
         DN/7hfbEJNT4PtVijNlj6yprKFomV0Kgrf96p+JvnNHXMGbHoNrd9Lj2YS6z+DDPdK84
         ljoA==
X-Gm-Message-State: AOAM532j1jQmPxLwMDlNOEOK6tq4PjUHgmSjWu3dHtw+1evIAT2x2DX9
	Tn7A9VH6wxkNbsx5Fmh0WDw=
X-Google-Smtp-Source: ABdhPJyllixyUFMsKV1XWz5ApBJu5nZUIFAqGAXGwBFo4ecEsMAgFmuSxViIJ2UMCv+qT6tpeXMIuA==
X-Received: by 2002:a9d:648f:: with SMTP id g15mr5514354otl.188.1614900183764;
        Thu, 04 Mar 2021 15:23:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f11:: with SMTP id m17ls1927069oiw.0.gmail; Thu, 04
 Mar 2021 15:23:03 -0800 (PST)
X-Received: by 2002:a05:6808:13c4:: with SMTP id d4mr5099661oiw.90.1614900183408;
        Thu, 04 Mar 2021 15:23:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614900183; cv=none;
        d=google.com; s=arc-20160816;
        b=Tx3owd0ACnTWRO+mONdCzYr8Lzwr7gJrYzEYTadF/5F2c1rSVdvBgYchT32xnf1efP
         jUkrBk5BgsZwDBrvdp1Vel299A1B6w7NvKbgDUDf+MMIpcIjqGAkoihI2GYd1qv++wKJ
         IwtMZxvQfQMxe4mcLA8pJABIQGIG+JU3U0JSXs/r5Rh2i7DrtQ4tvRkXjK61YRI/iJvp
         Z+9ak+lq/MxRXjiSEWT6inybkpm7VAFqtlknxnd34fzstPA0GMXmm1RXIeMp/5Hr8GEP
         N8WssnvvyxftczV+ESuHa0fvWK4vsBJYFyVM9kwEH9GoDxtZZAdbJynHv8L6yfvAfHZ/
         1tWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KX90TntfNSVDI/d+8xow5Mh17Q6zvuilvP5em04oWjY=;
        b=k+p3bcgeM1by6OyB3SiRwvhJYVhoZM4tFM4j9/WzZATnsIsYpUeO2cOTpJRdoUfp7Z
         bSXFHyAuu63C0mBCInD6Dwm4KJPwhepat7B8+NeO/F7fSpIg5L+YYbuYbp4k62STaqx0
         KV/XYZ6B6uGjSjELPUSuVlHe/JpHm0cPngYZgTx3CakVBwiRCukBldJMYkqwiqAkVUTZ
         yM8YM2Om6TM//d8qOn3sQD1eA+gJn+K/7qhjdqzFF1GiX3/SAXbbkltueSBL03G38XrV
         iAkEC7kaOsYUIl3l1K2KjNxezH8wNZugwsPrb3dBGcsQXZR2s5KCHW4ZBCyY05J2wUo6
         vXcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=evlkDz3t;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id v4si64510oiv.4.2021.03.04.15.23.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 15:23:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Received: by mail-oi1-x22c.google.com with SMTP id x78so418061oix.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 15:23:03 -0800 (PST)
X-Received: by 2002:aca:4892:: with SMTP id v140mr4795362oia.66.1614900183011;
 Thu, 04 Mar 2021 15:23:03 -0800 (PST)
MIME-Version: 1.0
References: <20210223023125.2265845-1-jiancai@google.com> <20210223023542.2287529-1-jiancai@google.com>
 <CACRpkdYC3iDD23SESM0j2=f56kr6ByKeedDQvkGwXbUC0br0fw@mail.gmail.com>
In-Reply-To: <CACRpkdYC3iDD23SESM0j2=f56kr6ByKeedDQvkGwXbUC0br0fw@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Mar 2021 15:22:51 -0800
Message-ID: <CA+SOCL+M5YfhygG=ogqvqp7y40v+32RiteGr=53THzwvdGugyA@mail.gmail.com>
Subject: Re: [PATCH v5] ARM: Implement SLS mitigation
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Will Deacon <will@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Kees Cook <keescook@chromium.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=evlkDz3t;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22c
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

On Wed, Mar 3, 2021 at 7:04 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Feb 23, 2021 at 3:36 AM Jian Cai <jiancai@google.com> wrote:
>
> > This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> > -mharden-sls=all, which mitigates the straight-line speculation
> > vulnerability, speculative execution of the instruction following some
> > unconditional jumps. Notice -mharden-sls= has other options as below,
> > and this config turns on the strongest option.
> >
> > all: enable all mitigations against Straight Line Speculation that are implemented.
> > none: disable all mitigations against Straight Line Speculation.
> > retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> > blr: enable the mitigation against Straight Line Speculation for BLR instructions.
>
> I heard about compiler protection for this, so nice to see it happening!
>
> Would you happen to know if there is any plan to do the same for GCC?
> I know you folks at Google like LLVM, but if you know let us know.

I think gcc also has these options.
https://gcc.gnu.org/onlinedocs/gcc/AArch64-Options.html

>
> > +config HARDEN_SLS_ALL
> > +       bool "enable SLS vulnerability hardening"
>
> I would go in and also edit arch/arm/mm/Kconfig under:
> config HARDEN_BRANCH_PREDICTOR add
> select HARDEN_SLS_ALL
>
> Because if the user wants hardening for branch prediction
> in general then the user certainly wants this as well, if
> available. The help text for that option literally says:
>
>  "This config option will take CPU-specific actions to harden
>    the branch predictor against aliasing attacks and may rely on
>    specific instruction sequences or control bits being set by
>    the system firmware."
>
> Notice this only turns on for CPUs with CPU_SPECTRE
> defined which makes sense. Also it is default y which fulfils
> Will's request that it be turned on by default where
> applicable. Notably it will not be turned on for pre-v7 silicon
> which would be unhelpful as they don't suffer from
> these bugs.

Thanks for the suggestion. I will update the patch.

>
> Reading Kristofs compiler patch here:
> https://reviews.llvm.org/rG195f44278c4361a4a32377a98a1e3a15203d3647
>
> I take it that for affected CPUs we should also patch all assembly
> in the kernel containing a RET, BR or BLR with
> DSB SYS followed by ISB?
>
> I suppose we would also need to look for any mov PC, <>
> code...
>
> I guess we can invent a "SB" macro to mimic what Aarch64 is
> doing so the code is easy to read. (Thinking aloud.)
>
> Yours,
> Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCL%2BM5YfhygG%3Dogqvqp7y40v%2B32RiteGr%3D53THzwvdGugyA%40mail.gmail.com.
