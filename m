Return-Path: <clang-built-linux+bncBCQJP74GSUDRBCU23T6AKGQEFQ75SHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B19E9299461
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:53:15 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id t14sf5998563ooq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 10:53:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603734794; cv=pass;
        d=google.com; s=arc-20160816;
        b=mKY/jqxd2Ch5IJAeaUYGJ6qiiEBkO83F/WgFaK8GCFOsrLe0H5dc+bz2i7suCCAI2I
         RHtiNB0MrFP6sBfz1UGTVrn6+tHNohLK3BI8pudgHycECfr+xHoY9Fh+N9eF6tbvWRr8
         4DUIc8IbKDx8tNOQpSRXz4x61OLNleHxuBaSvR1g046tExhWq5yUjUe25v4hFx9NDzTX
         jxkoi60w8Sb1Pc9CafiuPddzep7hJTh4k/8WqsV05b1FZXySId/DNTr9niv60D8HDOBY
         sbGN1LRvPLvnOeNGVnC4ipxd7XqRlL5OvVGBBVyXCMY42NEg+DUEWeHlFav66fj2w26R
         ggpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=i8bKqu1iQyusvbA7y+djpyCJWICnG5zou8rcxStDcik=;
        b=kQwT7FNK4oE0LpyBZoqoW60Tl+xGXBa7iA2DF0IWRWe/lD4AYkvTdCkFw+0LTvJgZI
         zXYckyXOp4l6EB6qsfwPBuJhA7QPIrVRSEC52EsRR1HoC5FsbUbcq/4GvpUL1qtvF5Yf
         SbW0xqMfJggEvCJsG27hJFfY1jC5cMkIbEKBY1J0lbZBOkt8Uyxk60k4t5oLis0g5biH
         5xMb7uIFR6BLy5Ts+gnj5Ei3yLufDD/AB2S9ZsKovGtJYXKSZmv3/WF1bgqwCSVJwKuW
         Pn7BvaYVOAMnxR5QiaMGiICOskWr5olMGpSpMBRWkTbbGsfSC0tG38nj1MZZpVcSwehX
         cpxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i8bKqu1iQyusvbA7y+djpyCJWICnG5zou8rcxStDcik=;
        b=s5ZZUz3ePtqWXWKUmY0wIaI0PjuxW46ljNX750vrSxGaQ6TsumcHY6BY+oDwpAeGPa
         WicimGaTbBeUrWk9RfU6U/2BN/ZLcN5KCO9kUCDtBlBVCUJXXUu2eOZWY6Jo3YKzOOFC
         6JaagTQmug5vOys+ZhMY8JqsvC+iTM+1EIqdHzweWX7T3ftuhJUT1qrGKWGANSwJjp9o
         sKDht/g5PSdZM3tBVA57CYUf9MXLhK/PA45UDdRBYdCG5vYq2TIS4mqVG4+OBoGVtRHV
         s8pteAu7gvnP30E+02Eu1+oR2kpATGIvwsrvGUFJVoTbFjLSnL2TfGqrrRDa8j0GSuwR
         cuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i8bKqu1iQyusvbA7y+djpyCJWICnG5zou8rcxStDcik=;
        b=ly+LD0lHM1cmUUObehnlog4onkgeb62alAYMlnu10Ox2BKxIfB6v/qspms6VYRD5J1
         LMBXdD76xJmz8ozxiex9A9dPhnYszJBRpOMdhaRfP/Ia+wPGsjzTMpBIPNqKyGAUqsqQ
         Ehfp9UwXGOUoVhnrXhrpbldzRJ2Qlkdat2hgB4IeVnA52UwlfK89sv9WxO/ezeUuS2Yn
         8cIYgnX+LRnvdyLdVPPdJN+NSE7mpkmSWQx7954sa3Rux7+NyZ737TBs/17ttaE0Pmue
         IPMOl2s1hWClUsYaEWXGg7FGlHpL+gVgMI8jRYU7YWz274HoEGoqrECfMt3U0C16et1W
         F7tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cMa7m4HTaUg3Wto/keZALPE/wtpx/hqsQ2sMRFDwZVl9FGjum
	NEajkOOvNSR5qkwii5LZWHE=
X-Google-Smtp-Source: ABdhPJzY4kuSs57G3xgRvEeiF1FVbyGHfn0noqBg885uF4dk2wiY064yrP7olSO+zYYD437kl7Y8Tw==
X-Received: by 2002:aca:cc01:: with SMTP id c1mr13641567oig.128.1603734794663;
        Mon, 26 Oct 2020 10:53:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6949:: with SMTP id p9ls2350120oto.6.gmail; Mon, 26 Oct
 2020 10:53:14 -0700 (PDT)
X-Received: by 2002:a05:6830:1513:: with SMTP id k19mr6555612otp.148.1603734794182;
        Mon, 26 Oct 2020 10:53:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603734794; cv=none;
        d=google.com; s=arc-20160816;
        b=WuEtt8Lnl23KtUB/BL6Gd6NErHwOK5ft4p5Gg43jnuApVv6HSNMfZsls4CQ5rbs4qh
         c+xMvZpghp0I7b+t445prILmEHj+pktL/CTfYyPsA5SSvrjhGEIMu6xGWzBYghcb5WdV
         BFC6uGBXdHoumL61qZZqLMmC54hz3q9ixHhyjdDVnL5ysN3WA1nU4pqlOV1OgkrJO+76
         1YVTSZZhqCmOeu115TKFM4feyLzzT51MD4Pb98W8Dk7QOptpGK+X9Vj398SM/TsBXTjk
         oXi2RXqQJS8cDyi4JLChISCQAx2kK07oad0whRbg8GVgmTS7iUHeXz4cesBHQ3uc4PV3
         Y2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=aSP7w6hGOtdU2uA5tvPlkM6OwSpoT9pVdwMoOdt+1fQ=;
        b=AzS+RXZSgKMwdF5FhpU7bGFWPbBlMK1Bi7e07AzGmrkCQnTCbihhdnXuBBNrUyLngL
         BM6EVCt8UpaEjLU2GdxJZAXKHX9pE9+C/HNjJAfGoTeyL2oXUrwrFXIUhCwe+YqhWTeS
         GRhmFEKbmhc09h4k5Iv5/381A6p7wq4ikUhXMrMOwqD/Rk18v3AXc+kh0u89RuT7SpsY
         2nj8EDzwaeX/xjdBQ3MTKaNWjnXIUIyEd7jIcTzmGW2oKzy5xafZ0MBhQPyDZeKmSuQn
         9ewLJD+MMUvytn29KolnodP0JLN6V/ulkFt1zXNaiBG3p2nDv0FboXqPAebmgFQK+zCW
         iBVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com. [209.85.210.67])
        by gmr-mx.google.com with ESMTPS id i23si1015410otk.5.2020.10.26.10.53.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 10:53:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) client-ip=209.85.210.67;
Received: by mail-ot1-f67.google.com with SMTP id n15so8768755otl.8
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 10:53:14 -0700 (PDT)
X-Received: by 2002:a05:6830:210a:: with SMTP id i10mr14302905otc.145.1603734793886;
 Mon, 26 Oct 2020 10:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com> <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
In-Reply-To: <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Oct 2020 18:53:02 +0100
Message-ID: <CAMuHMdX+PSdT02jxA+dJCjyT5Kktn+NnVsk0563XCLnn1fazgQ@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Nick,

On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > > > In preparation for warning on orphan sections, discard
> > > > > > > unwanted non-zero-sized generated sections, and enforce other
> > > > > > > expected-to-be-zero-sized sections (since discarding them might hide
> > > > > > > problems with them suddenly gaining unexpected entries).
> > > > > > >
> > > > > > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > > >
> > > > > > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > > > > > sections") in v5.10-rc1, and is causing the following error with
> > > > > > renesas_defconfig[1]:
> > > > > >
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > > >
> > > > > > I cannot reproduce this with the standard arm64 defconfig.
> > > > > >
> > > > > > I bisected the error to the aforementioned commit, but understand this
> > > > > > is not the real reason.  If I revert this commit, I still get:
> > > > > >
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > > > > > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > > > > > `arch/arm64/kernel/head.o' being placed in section `.plt'
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > > > > > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> > > > > >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > > > > > `kernel/bpf/core.o' being placed in section `.eh_frame'
> > > > > >
> > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > placement"), which is another red herring.
> > > > >
> > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > causing the warning.
>
> When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> missing from someone's KBUILD_CFLAGS.
> But I don't see anything curious in kernel/bpf/Makefile, unless
> cc-disable-warning is somehow broken.

Yeah, I noticed it's added in arch/arm64/Makefile, and verified that it is
actually passed when building kernel/bpf/core.o.

> > > > > If I compile core.c with "-g" added, like arm64 defconfig does, the
> > > > > eh_frame section is no longer emitted.
> > > > >
> > > > > Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
> > > > > is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...
> > > > >
> > > > > > Note that even on plain be2881824ae9eb92, I get:
> > > > > >
> > > > > >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> > > > > >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> > > > > >
> > > > > > The parent commit obviously doesn't show that (but probably still has
> > > > > > the problem).
> > > >
> > > > Reverting both
> > > > b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
> > > > be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
> > > > seems to solve my problems, without any ill effects?
> > > >
> > >
> > > I cannot reproduce the issue here with my distro GCC+binutils (Debian 8.3.0)
> > >
> > > The presence of .data.rel.ro and .got.plt sections suggests that the
> > > toolchain is using -fpie and/or -z relro to build shared objects
> > > rather than a fully linked bare metal binary.
> > >
> > > Which toolchain are you using? Does adding -fno-pie to the compiler
> >
> > gcc version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)  from Ubuntu 20.04LTS.
> >
> > > command line and/or adding -z norelro to the linker command line make
> > > any difference?
> >
> > I'll give that a try later...
>
> This patch just got picked up into the for-next branch of the arm64
> tree; it enables `-z norelro` regardless of configs.
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/core&id=3b92fa7485eba16b05166fddf38ab42f2ff6ab95
> If you apply that, that should help you test `-z norelro` quickly.

Thanks, will give that a try, too.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdX%2BPSdT02jxA%2BdJCjyT5Kktn%2BNnVsk0563XCLnn1fazgQ%40mail.gmail.com.
