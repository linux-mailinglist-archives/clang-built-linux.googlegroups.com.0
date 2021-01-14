Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGPG777QKGQEI5FB5IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id A72B02F5B51
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:30:34 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id o23sf2865128pji.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 23:30:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610609433; cv=pass;
        d=google.com; s=arc-20160816;
        b=o2fGv0zmgcRh0mzP33C1eJphP6igj+NmIgx+aBxPQfeNMBZDojIwZ8wAtVZf3mUILI
         7qm+Dq0itggd7GgOFumQH2kgsGePLW+7GaUI491pOo8K6sDdg23dmkwGQAGq+e3KOFte
         c3Ks9rcQdd9EBc7I2wYH7nfCa+MGmo/g1fQiuHNsQRB7twvsgDP5/EpINbDdQwaRPtkF
         i2ZzgEH8Ahs0PBPnFvdGYITTwbJZc7l7SFpQpurKMx/0sEc27YlGBLfxeM+a2b/hQ854
         RkRSrPI62vYLgm6Msz13hC8rLrV11Tn6o5xioWrTJ2bDhr5tc5FkCqPtdyZO+06vrPI/
         pTHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=S1IlmnsH/22/orcD/Y9FrnISxz21/58DWTO+O6gX5xw=;
        b=EONd6O11oXgKTf1kKLXs9WF11hayffX8DsGiKcR9CQbZn0fimZXjisBqGbRV6vRmNb
         dpJV9t0rwkdY/X6N+Osu6XuvYV8YVRNsfq1w/UU3jrMrqu4u+TedgyVhWX/5aq4QvCy0
         C3O77Ev63kdTJnsq3rubpGArcj4c98tcLjbwnbc6eOiy67ckzjw1bi3jM8tKUx6sjcBc
         72iVgcbmXRAcy5tqxWdf08R9Zuerw99A3yZYGUmgnGVjPBuq65Jqy1gcG+UpJzKRxJD8
         jBnLgsskzPIPz4yaOEzR8hGLXRnvLvbSryw4Xkcjy9jVPdibYeukwYhSsA2YkKTPtlC0
         G1jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DV/W7mAn";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S1IlmnsH/22/orcD/Y9FrnISxz21/58DWTO+O6gX5xw=;
        b=F63uFACP3a828j1EbYWA0NERZkcyOBZlKI/T92mlxNZPIpJyA6UAfFJ5XuiqOPoHIU
         YgocDyDl0pgHMFVMgiTbiOdNF8hnmjkbY6ap5AxO3OrQLpytwKDOYDgZz6O2wqe7R8uL
         +mNx5YUmOphA11HJlYk5oarwxCwkYjgx/Bwu6aGnbVyKICM9718lIZJ4861YVjn2VDRa
         jJri0pVisDnlOgJc953WgIXnpRz/McZ4raQOxbpfQRATDR0X7klmVtiLCzX8A9Fj4hNp
         0q1HmBJBS4EDgf21cynA30tshts+ug8NrI4up+Tq6qWLTVqDQw75Ize3+HndzV+FfBmh
         NFlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S1IlmnsH/22/orcD/Y9FrnISxz21/58DWTO+O6gX5xw=;
        b=ltlIB6cQ5W+Z/2R/LnLGYS/s45rDBuCS96yko3UgfKUDKcM7zJJpkYS+NNjRQU5wbw
         r9ptcKcE7clyQkrQY7N9IDAjGpKpiVi1gvAxRuSt0zcVkq4q3VOwMK7xArCtT25t6W9Q
         PbFHqwv0vZDxsWeE0fEkcQcFO8mP9dh1xSVbXK1OvlupVwjTC7l0RZgmBK9WpR4M/ZRp
         8wMrR9wbgN+i/MsNhQaZqkHnCmDTaPo2YoMqxE+p1Mxwf4DhZeXEjB35ahod6X+sI+c+
         HnRi/svUg9o2+r3pHlDWYxrR1H+YTFvHAFWOBLMOTaPg0XCiPDnMGrqj+f9cYCer/nhm
         zzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S1IlmnsH/22/orcD/Y9FrnISxz21/58DWTO+O6gX5xw=;
        b=mYpzUSN60p7ntnreaBtFwDGYGxr6ZJgLHK9D/X5DhaFalHFepWrsKG3SmgmYz64fPS
         Kel+lw0lRLb2yDCardmLYukM8303e+OwhIw3x/Y3ceqkAnEoXc/8ftI+0nD92SnEzTtR
         aCgsoC6fMAyBKDgXTfjAYXsVTj6Igz53yd9ycmjBw6+xlDYS72I+E+mL0064oCj1MPjc
         NjentP3oIROr12sSbhoEJSXSVdGZine9L7+lzMlj2NUWJFU5gOZKkMsB43tY7MDwgLmO
         YB2nDNqb5OiU/fP8+oxgqR0xURRiFBywXM+djMZMEZaT0ksC24K9p3dL7UhVYlYydoFm
         2Sxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530volVlG1qD/2VSyVhiwEkRwNzaJ0etFho1RSuVh55hXeOtZ9W7
	4A6n1sG5Qw/SpIFAEHHQoL4=
X-Google-Smtp-Source: ABdhPJx6ezht4ngsTv+H3uQyqPgctfyoQCgAUNYl79kndcHwo1WBS6gsXABfipClwSYh3JfPBb2HPw==
X-Received: by 2002:a63:1863:: with SMTP id 35mr6302625pgy.191.1610609433229;
        Wed, 13 Jan 2021 23:30:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ac0b:: with SMTP id o11ls2470063pjq.3.gmail; Wed, 13
 Jan 2021 23:30:32 -0800 (PST)
X-Received: by 2002:a17:902:b282:b029:de:5eac:a144 with SMTP id u2-20020a170902b282b02900de5eaca144mr828422plr.20.1610609432446;
        Wed, 13 Jan 2021 23:30:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610609432; cv=none;
        d=google.com; s=arc-20160816;
        b=sl24c97Pm7acUYUtvykqmUosqoHFR+/peiu7/0118jO0K+91qpl1aQUr7j/fh2GGfj
         5Jjcfd9sy0fMZurThQkqgG7CG8wb2mo6w8thOj/IJ9Ou8Y/lOy2X+gWors0fHLpQJ6jq
         1eDftxWhpq18cKo1F+pZmZAwKx98+5k11NRBr+4xq//O5mb5y+YmLU8O6EFw81S+ES0u
         CghP1MzvarDHqsXD6wohB0Hh4vI/s1JC+XV3972ssZys2xg9W+TVV73lr0MHFskvyZgx
         iYEx8MiSvHfwvvRI83a8/0iYSZyNggSZmRSplfoYTyo46SnXSZy1NOAVtEAVlQFxvUuC
         g0Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uFtdlQoHIBqtlNN3COyOHRiq8y2N2thTqQM79nLyg/0=;
        b=tfkDTR9kT6C9d+d7MfUHvhDn1N6LxMRXxEUBkuCTcG2WkM/THRQtzrclOSygWqQe/t
         jzw/Adegw5gs9CnxqYm22/VNVzfdHm1csuRw/7KK9I062TNZdOB9NbfoIuVuJu1E/n1C
         4ldOhHkBco6CiVKkcn/Q5yWflsT8ZjheYcJq6LxSXRaA3N1Zj+yxljQKOmZQFWah5+Sx
         VS1+Gl3WWOmjyBvkqSHVSHSDNSotF4/WFAmeFvMkzciVJA1B1M1zua+IyTG/wv++2RSh
         PRXZazrkFNQ+tBFD6Reb1dbo+QpUOUz1rHzEMzipMdNULb122FNv4oar3rSSsYXrScj1
         O/xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="DV/W7mAn";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id z9si335703pgv.2.2021.01.13.23.30.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 23:30:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id u26so9395912iof.3
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 23:30:32 -0800 (PST)
X-Received: by 2002:a05:6638:48:: with SMTP id a8mr5367157jap.138.1610609432199;
 Wed, 13 Jan 2021 23:30:32 -0800 (PST)
MIME-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com>
 <20210113003235.716547-3-ndesaulniers@google.com> <CA+icZUV6pNP1AN_JEhqon6Hgk3Yfq0_VNghvRX0N9mw6pGtpVw@mail.gmail.com>
 <CAKwvOdm40Z3YutxwWyV922XdchN7Dz+v9kJNjF13vKxNUXrJnQ@mail.gmail.com> <CA+icZUWySPfGGswqEBZkCQ+OjogmMqzBvik3ddLHPWJ2w8EC3A@mail.gmail.com>
In-Reply-To: <CA+icZUWySPfGGswqEBZkCQ+OjogmMqzBvik3ddLHPWJ2w8EC3A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 08:30:21 +0100
Message-ID: <CA+icZUXcZiNqPC-k3TsNsLdXLJ6EQK5ZVwOOtQ+BqzYNNUzpcA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="DV/W7mAn";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
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

On Thu, Jan 14, 2021 at 8:20 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 14, 2021 at 12:27 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Sedat,
> > Thanks for testing, and congrats on https://lwn.net/Articles/839772/.
> > I always appreciate you taking the time to help test my work, and
> > other Clang+Linux kernel patches!
> >
>
> Hi Nick,
>
> cool, again in the top 15 :-).
>
> I should ask Mr. Corbet for a LWN subscription.
>
> > On Wed, Jan 13, 2021 at 1:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Wed, Jan 13, 2021 at 1:32 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -826,12 +826,16 @@ else
> > > >  DEBUG_CFLAGS   += -g
> > > >  endif
> > > >
> > > > -ifneq ($(LLVM_IAS),1)
> > > > -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> >
> > ^ DEBUG_CFLAGS are set for everyone (all toolchains) if
> > CONFIG_DEBUG_INFO is defined.
> >
> > > > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> >
> > ^ "If not using dwarf 2 and LLVM_IAS=1", ie. CONFIG_DEBUG_INFO_DWARF5
> > && CONFIG_CC_IS_GCC
> >
>
> OK, I know DWARF v2 and LLVM_IAS=1 is broken.
>
> Looks like DWARF v5 with GCC v10.2.1 and binutils v2.35.1 is currently
> (here) no good choice.
>
> > > > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > > > +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> > > > +ifdef CONFIG_CC_IS_CLANG
> >
> > ^ "if clang"
> >
> > > > +DEBUG_CFLAGS   += $(dwarf-aflag)
> > > >  endif
> > >
> > > Why is that "ifdef CONFIG_CC_IS_CLANG"?
> >
> > That's what Arvind requested on v2, IIUC:
> > https://lore.kernel.org/lkml/X8psgMuL4jMjP%2FOy@rani.riverdale.lan/
> >
> > > When I use GCC v10.2.1 DEBUG_CFLAGS are not set.
> >
> > You should have -gdwarf-4 (and not -Wa,-gwarf-4) set for DEBUG_CFLAGS
> > when compiling with GCC and enabling CONFIG_DEBUG_INFO_DWARF4. Can you
> > please confirm? (Perhaps you may have accidentally disabled
> > CONFIG_DEBUG_INFO by rerunning `make defconfig`?)
> >
>
> $ egrep 'CC_IS_|LD_IS|BTF|DWARF'
> config-5.11.0-rc3-5-amd64-gcc10-llvm11 | grep ^CONFIG
> CONFIG_CC_IS_GCC=y
> CONFIG_LD_IS_LLD=y
> CONFIG_DEBUG_INFO_DWARF4=y
> CONFIG_DEBUG_INFO_BTF=y
> CONFIG_DEBUG_INFO_BTF_MODULES=y
>
> $ grep '\-Wa,-gdwarf-4' build-log_5.11.0-rc3-5-amd64-gcc10-llvm11.txt
> | wc -l
> 156

I wonder why I see GNU/as here (see above CONFIG_LD_IS_LLD=y)?

$ llvm-dwarfdump-11 vmlinux | head -20 | egrep
'debug_info|format|version|DW_AT_producer'
vmlinux:        file format elf64-x86-64
.debug_info contents:
0x00000000: Compile Unit: length = 0x0000001e, format = DWARF32,
version = 0x0004, abbr_offset = 0x0000, addr_size = 0x08 (next unit at
0x00000022)
             DW_AT_producer    ("GNU AS 2.35.1")
0x00000022: Compile Unit: length = 0x0000c1d2, format = DWARF32,
version = 0x0004, abbr_offset = 0x0012, addr_size = 0x08 (next unit at
0x0000c1f8)
             DW_AT_producer    ("GNU C89 10.2.1 20210110 -mno-sse
-mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -mno-80387
-mno-fp-ret-in-387 -mpreferred-stack-boundary
=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel
-mindirect-branch=thunk-extern -mindirect-branch-register
-mrecord-mcount -mfentry -march=x86-64 -g -g
dwarf-4 -O2 -std=gnu90 -fno-strict-aliasing -fno-common -fshort-wchar
-fno-PIE -falign-jumps=1 -falign-loops=1
-fno-asynchronous-unwind-tables -fno-jump-tables -fno-de
lete-null-pointer-checks -fno-allow-store-data-races
-fstack-protector-strong -fno-strict-overflow -fstack-check=no
-fconserve-stack -fcf-protection=none -fno-stack-pr
otector")

Maybe, I should set all LLVM utils and linker manually, not using LLVM=1.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXcZiNqPC-k3TsNsLdXLJ6EQK5ZVwOOtQ%2BBqzYNNUzpcA%40mail.gmail.com.
