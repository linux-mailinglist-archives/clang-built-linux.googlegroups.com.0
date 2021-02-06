Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBWNU7KAAMGQE6S7G65A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C643F311D79
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 14:32:10 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id v16sf2052291vsd.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 05:32:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612618329; cv=pass;
        d=google.com; s=arc-20160816;
        b=hggdGhR4X0JMkBEOy+e4bqHDO8YEf52eEoF0XH/HHUU202LH7Ra2SE+OQx31NPkuMv
         xxyB450en9Zgz9JVg1iCQfAJwX8IsuuavBrnxTQqrHI10VKMDkYHgHn0j4SbJPDkdDfW
         U35JzN5EPYnK++zvLcYdl0WcQdkWDsAOodsE5a8G+xzCTbkczcgTfMaQ/2V2A9Bi+PL1
         kSUCLgTsz+M9SZlA8JPFagwDS7ZVoPmkGlRMh0vMPhcoAlZLozfp8LxV34ZaORf+jgEZ
         egOKVLfSRfsyHB1YBJIg35untQbZ4fiZgBrqzl3355WQTbWlzbQ+orCVDxhKWDv59Yyw
         Wnqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WwgeD1Rbksc9CL7g63L3Va76oUZNOk5pcPPVfOIeCbQ=;
        b=Z+FhkJLXBSh9A82KKtRJXGZYZto2tjkQnACRqVP5RD8MBK7QFrBjiRnkb0JNgHAKmE
         aE7sFiZUbTTX6/mayB07mnPprYEq39aucTZn9mTRGQxaW+4dmg/pKH1XHpJvICntV+Lg
         HI0ul4BslgCkjcmlokBiWmqdcqUK+QvsIU8QrTvodevJohBvpbo0bixZZTFjbHxEyIIN
         6K4nZGJB1eKv/g25Y+mRHYLq0LIy4zSkrMW8ymnmBe9wkFU7fLTof/48XF+5Yhst9wts
         N4L/bg9L0R91Naw4XbGIwv12GbacjhFtMES7dl0wPsxGCDE3+Z5tqw4QtENmv1vzCjJw
         mbpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=r9cxzSeC;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WwgeD1Rbksc9CL7g63L3Va76oUZNOk5pcPPVfOIeCbQ=;
        b=rZLnzKHPQFPu25epR4YehpxDd6fxL024n/D0R/aDCkQ8+qi4PN4CHXd/l7UIrOtETu
         UYeIktLUeQPS8G8eaqpB2/miAtJgWp3NxG+pq5B2+vzA58sQM+FKHleL7esQgK4zkIN2
         8wUtghJ23cUgvu8NpaYrFZHguPndridHAwwq/d0WdJwBd1IGw7/K+lvf9rFbgZrtN5vS
         TI3zVEZkhcfqIymVaEONj7PfTGW011TDvTcMow4KRB1BTTjxQ2Ham9kuqi1CMMt4DWdZ
         6zsQfjBKLcTfLrKzhSmWGULx9V+OFGUyFWCYeiKXAvQ90CRfToJzX5E+vpMUzTDQv3LQ
         5D+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WwgeD1Rbksc9CL7g63L3Va76oUZNOk5pcPPVfOIeCbQ=;
        b=Kj7UREa24JRnmGepm+WuwiDnvo0aboHXGtDOt6S/viEVfjkzZW2O/7pEUNRjWhcyea
         I696DGo8qsorqq3fRCbAvdPWk6nyNyyIWqLV8BpJoEtY1l1ydR35AOHpTunVRW3Qdte2
         XkYLLlwiFNmHaTMZJC6WqyjUMvE0lfa8dsBVBymLLySTxAw2CmrLXoL1gsFHS22YWnCX
         TEzO6VKPbrmORqlDOWAzfYDSmFQUWh/eF7k6EX799CV86u2Wgx2qYePIeHnmF/oQIdLP
         973uIQs9Lx8t49PEibd8WTnOl1rnQWF0YZRljGhTLxIC0UOdl1dCeoh+ObCisF9f4GVi
         nOLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315Auna0Fm7m09p3qWPJhGR/EfuWaBJ9NELtzpztFjajoHqn4iU
	n+VWqgNXhSDJt5eq+kDCH3w=
X-Google-Smtp-Source: ABdhPJzojNN6nTgCSRevTPKpbNcjwnU/Xb9HT0wLkihzUvof/mri5tgqPkIfKuNKN1RjzXEca7t3JA==
X-Received: by 2002:a67:c787:: with SMTP id t7mr6543274vsk.48.1612618329667;
        Sat, 06 Feb 2021 05:32:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c686:: with SMTP id w128ls82729vkf.1.gmail; Sat, 06 Feb
 2021 05:32:09 -0800 (PST)
X-Received: by 2002:a1f:2209:: with SMTP id i9mr6404612vki.11.1612618329273;
        Sat, 06 Feb 2021 05:32:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612618329; cv=none;
        d=google.com; s=arc-20160816;
        b=zzVXmL+2QFhMLB5h346SLMRO6NrLMsZIvinYZWvBkttYXCCm7uIXViDWR9neYajmuS
         S11iHLUUY9D1uTVP52t9Ex6TaF4D+NSRoXbffu7mPkqINgmv63NqbJ4XR9c60NmaYeoX
         DqrrXwpuiYRfyJtKU1gGyZhMK9oNBeN+NDRtaWTps8uxU/ZMtf7qFkH/+96O6nwgh8pG
         m7KvGNKzsf4scES2ZzOWolpzoMKoJ7h+MFyGxmJFXRjEQbGbw2vs5+utSpleIccp5XF6
         ieGZ/JdsW9kvYT2gVZEt9WO3s87J0DfpinovZFehI/2qGWgN9mw+ohq3y1Y3iRNnjsr6
         1e5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qawxoMifs91Jhi3vLOuNw35/3E0qtF2Pnpbk4+sKnIY=;
        b=bLbEZJvrtzlkQnaFbWCz4C4PfryYJ7pT7NslxEPJS8iCE2Pj9LHweXYT3sU0UU16tF
         v9fGKohmdBsYHy6FokmEZ3TE+ywrcBhECyCnpvQzIzhuSFSb5JCEBeWG+g8jSCR3PG1H
         vnSS48MPjy/EkkNV3hBKpSN4hgI5+3ds2h39X+DNHglW2DIg2VFNZXs2wlmdLFf0ZxUU
         1TqPDDD0uC/4rFekRSqyxlq+I8WxFfz4vFKGSgsmdRqB2+Go479P8HhUX9w/rAdYMxuP
         eRG2AQkrWwfR/PiOlkmYCdJkRok2K8GBuH2MmhgQ+yYjpkXM6rz1lmuFShKVp1VS+c5E
         GOng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=r9cxzSeC;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s196si509103vkb.2.2021.02.06.05.32.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 05:32:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 06A9464EBC
	for <clang-built-linux@googlegroups.com>; Sat,  6 Feb 2021 13:32:07 +0000 (UTC)
Received: by mail-oi1-f182.google.com with SMTP id k25so10622354oik.13
        for <clang-built-linux@googlegroups.com>; Sat, 06 Feb 2021 05:32:07 -0800 (PST)
X-Received: by 2002:aca:ea0b:: with SMTP id i11mr6091337oih.33.1612618327200;
 Sat, 06 Feb 2021 05:32:07 -0800 (PST)
MIME-Version: 1.0
References: <20210205085220.31232-1-ardb@kernel.org> <CAKwvOdkg75CRM0QNeO4ojM=OndFgJ+j7fO3Yt=jE4k0eTfYmRQ@mail.gmail.com>
 <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com> <CAKwvOdnB6y=juVMtVfTqrRiCu-Nmj90=8EQEkddmqOwq6kaAhw@mail.gmail.com>
In-Reply-To: <CAKwvOdnB6y=juVMtVfTqrRiCu-Nmj90=8EQEkddmqOwq6kaAhw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 6 Feb 2021 14:31:56 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGg53MjwwPJSJKoDKkY5CaNOco2aYscWrMxgkGp6nv7NQ@mail.gmail.com>
Message-ID: <CAMj1kXGg53MjwwPJSJKoDKkY5CaNOco2aYscWrMxgkGp6nv7NQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: fix BSS size calculation for LLVM ld.lld
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=r9cxzSeC;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 5 Feb 2021 at 19:56, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Feb 5, 2021 at 10:11 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Fri, 5 Feb 2021 at 19:00, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Feb 5, 2021 at 12:52 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > The LLVM ld.lld linker uses a different symbol type for __bss_start,
> > > > resulting in the calculation of KBSS_SZ to be thrown off. Up until now,
> > > > this has gone unnoticed as it only affects the appended DTB case, but
> > > > pending changes for ARM in the way the decompressed kernel is cleaned
> > > > from the caches has uncovered this problem.
> > > >
> > > > On a ld.lld build:
> > > >
> > > >   $ nm vmlinux |grep bss_
> > > >   c1c22034 D __bss_start
> > > >   c1c86e98 B __bss_stop
> > > >
> > > + Fangrui,
> > > Fangrui, __bss_start looks like it's linker script defined by the
> > > BSS_SECTION macro from include/asm-generic/vmlinux.lds.h:1160 being
> > > used in arch/arm/kernel/vmlinux.lds.S:149.  Should these symbols be
> > > placed in .bss? Might save a few bytes in the image, unless there's an
> > > initial value that's encoded with them?
> > >
> >
> > Not sure what you are asking here. These symbols just delineate .bss,
> > they don't take up any space themselves.
> >
> > What seems to be happening is that the placement of __bss_start
> > outside of the .sbss/.bss section declarations causes it to be
> > annotated as residing in .data.
>
> Perhaps a misunderstanding on my part on how symbols are represented
> in ELF, but my understanding is:
>
> $ cat foo.c
> int foo;
> int bar = 0;
> int baz = 42;
> $ cc -c foo.c
> $ nm foo.o
> 0000000000000004 B bar
> 0000000000000000 D baz
> 0000000000000000 B foo
> $ ls -l foo.o
> -rw-r----- 1 ndesaulniers primarygroup 1016 Feb  5 10:47 foo.o
>
> $ cat bar.c
> int foo;
> int bar = 0;
> int baz = 0; // changed from foo.c
> $ cc -c bar.o
> $ nm bar.o
> 0000000000000004 B bar
> 0000000000000008 B baz
> 0000000000000000 B foo
> $ ls -l bar.o
> -rw-r----- 1 ndesaulniers primarygroup 1008 Feb  5 10:48 bar.o
> # ^ smaller object file
>
> That if a symbol's value was an address within .bss, then there was no
> additional space reserved in an ELF object since the initial value for
> all such symbols in the section can memset to 0 by the loader.  But if
> a symbol's value was an address in .data, that initial value must
> occupy space in the object file.  Perhaps that's not the case though
> for linker defined symbols, since I'm not sure what data/initial value
> they would correspond to besides the Elf{32|64}_Sym's value in the
> symbol table?  (I should go reread the relevant section from Expert C
> Programming: Deep C Secrets, or finish reading Linkers and Loaders).

A symbol defined in C allocates space in the binary (either in .data
or in .bss), along with a symbol to refer to it.

A linker defined symbol such as __bss_start is just a pointer into the
binary. It will alias with whichever C variable ended up at offset 0x0
in the section. Remember that clearing [__bss_start, __bss_end] in the
startup code is what initializes those variables to zero.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGg53MjwwPJSJKoDKkY5CaNOco2aYscWrMxgkGp6nv7NQ%40mail.gmail.com.
