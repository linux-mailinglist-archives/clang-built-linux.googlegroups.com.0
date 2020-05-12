Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3OK5H2QKGQED45TDUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9941CEFDC
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 10:59:26 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id y64sf12895067qkc.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 01:59:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589273965; cv=pass;
        d=google.com; s=arc-20160816;
        b=eg0W5l+4aLjoq+wFRKxd6Ts5IuY4+G7BnNca9ATkhCpV4oWWLRJxLog1B6imKkeYSF
         i6sNm++imBkfDhArdTCfCpxskujah+xdE/E9LfZBkUXoSXtS6zKlUZ7NMmJRvnXB5GgJ
         LLBtyMIZiP5ecPHEpwe8ErAkLzdceFcLHjRIeXXLctLgyUJQyavw75TvfwIWILuLoO52
         R9V56+zNJdTyjxD8vVFYBy5AwtxtbRk6z6jiBGJKNxxTkyOOBAfiQlwQOuCeuwYfy1Ul
         Ftw3ZJYRHj7v9G+Oof+sX75Rm4KkAeSJA6zMvMZP+6U/6tWZseTeX5yyuZuBErKbCneM
         5rzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NnRgzsM1uOogDeINmb5kCQnu9FJyK2XzzbwrEDoCAKw=;
        b=jNJ0s242wjfWeetprxTfHsCsmFv+iP7XG01++CgV1xY5Sa57+HM/JlN0koowrzFYuw
         QU3mlvcxkFuoQkXCCZSIfK4If6JD/MUi6UOOrZqZsCzlkaxp1LhOdjhLJiA00GMJ18NX
         dm5llWCI/g4ZdiSre9gbuKNFR9RQyqv9JKdlFmtn5hcaW/Tsa+l9YBFMlwZo7X+u+Tuf
         EdeOVesQQUv+Fj4NEFzilCF+mRBp6hTCMBXGN/+lyzRXWEx8nMU07BVo63wkaa+q5RoT
         MIDX7madvOAN4F+Z+qYw2k/k8nx0wnz7LXnL0yjzMtkcNb+AFVIdcHwv08G3r2GxTQMt
         RPgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zxl5nYqS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NnRgzsM1uOogDeINmb5kCQnu9FJyK2XzzbwrEDoCAKw=;
        b=ocHSUbyYPFF2fn6P7FCoRebnFEpdXoiRsb9J3O0joH8IjVSZ2HvVWz1dEb/DL4vNkC
         OBaefPCzyRnN2PUNojPX+dKxvzhusQOVJSUisI06LPMoSoQOe+Co12Bd4javrcjaKCNt
         xSSBc72yz7AZajRaWLq1GSs5LfYe7XPLol6cS/GCRCtuh9A3BzV0nKiRuEOPlLCuU2XS
         ISKfBszWNQKPW+TG3zdt4IZKSiOiNp0l9zOp71QqwV6vEqvmDHO64eZX5OZfH95J7CEV
         PbXjNfiKIfpaZ3qvAnISay4jDkvZz8PEHi2cc8YS4YyA7227iDnrWBw5ETm2B7rUUSjI
         tgWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NnRgzsM1uOogDeINmb5kCQnu9FJyK2XzzbwrEDoCAKw=;
        b=k4dhJOo8gU+leYloZVgQ/gXEr4cw1oBxHxU5G0bYjG/jrsaobQg69TLTas/A45yMRQ
         sYRcuXwU+aPtw36AZFX1QYcpb01y4Umdpzmw8XTnlco2VrO3mgne+PkZFfvAJBJiNHtI
         1cWP2UyAVi8AWYtZpHqGbA4+/chXDqeBzodonpWS3HovT0c5mzpAe2COTe9PwJm3IgDF
         YWrGSf7/YbI6G7eqUoJ1GR1sLfdk6pRIGqzyN4t0dqbl68po/d9dhuh1azhRyDzcVtAS
         AlbGXhD/F3xuTgKMauJJ3haWXb4i+Xa9K1uGP5Aaeu8qqtbfdrwNbcOIkY3TwZk7UFOW
         S/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NnRgzsM1uOogDeINmb5kCQnu9FJyK2XzzbwrEDoCAKw=;
        b=cV84QOOqaL4cbXz5Xne7vd2YZkpNGw5O0hIuofyagJPN+uCv22u6GaOawBTeGEqTDE
         JcfNym5G485P+2DaemJKsWoCTPbuUu5k0qsQmLBaex7dYKs4AKGiTaI4nUEGLk8zTVTA
         OwAaKT34svYLsR3qP+znBRcE2xkRzFi8ywG+aLLZLL6+JHqOz0nTHH7wm1kPJetEJCTZ
         hHKuRM2MtcADSs3k03J5/Pa9EU7YUIt2DJlnrz3jZziCgHgTi1BJKfpDYI6/L+oJ8Q/u
         /M3/ShEhnCOI2z5maNw3HYZrRJGJJEBBn4MC8zKRUdCxseFPuZsimt1wqG4HQIlLV+60
         FXZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531S6767QgQ8eAPTbxWaqBoo62z0hY1uGP1ePSSRegODL5jUH6LN
	Z0ceT/pLz3AH9B2VrPEN0JQ=
X-Google-Smtp-Source: ABdhPJyGIpcplXOrKxiiYVhS18Ijjk+c0/cdggHGFEuKQ5MTg7j5Y7Ln5EKlZYNCy989Uk4Pqy8C0A==
X-Received: by 2002:ac8:7698:: with SMTP id g24mr4804421qtr.290.1589273965576;
        Tue, 12 May 2020 01:59:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls5715231qto.11.gmail; Tue, 12
 May 2020 01:59:25 -0700 (PDT)
X-Received: by 2002:ac8:7683:: with SMTP id g3mr20918090qtr.166.1589273965233;
        Tue, 12 May 2020 01:59:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589273965; cv=none;
        d=google.com; s=arc-20160816;
        b=Hp+lULewtGr0hCgwxeGuZmNloc16TDMi0aFtiNufHhwACHknkZONWiebd5SInivwAh
         /euU3pwFrPZ1OByxvZgzC26TnTK7x4oN/qupnISm0kD3/aakJM8T4frLuaNS2Hf63Bue
         0cU184V5sasSziRPQzuJxheT6utlPNgMXmIbQRzcPdpdP2bSe4EzOIZMy0Zs29/ulG71
         qBM6qTLBftW7RcRN4B5Qu8PKMA2Az3PKfLvR+wnirgfvD3GFChmi7boD1O2eoXbgzN23
         gDgtPfM/6CtpTuS/OTX8k35HwFFjv+pTUpawIY5HFoOxepBsCZOirkUznMG/BYCC5r4G
         K2pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mgvGrSBn4Z3elWdlR4h/uRqag8YgI6/1Az/oywN8U8E=;
        b=B7eGxlm37C6E2j1ooXVBJf9G6I/pf8hIOy/UCDG365DHecUXYCavIel/ylFg63LOJh
         d4yzFXthfn3aBeFc8JGD2MmoApE1PX8B+OPlTr9Rpkx81+dT1BNniB8oombL9ADik7qj
         Wkq7yOqFFO8tG5TZZjUuGmCLb+CK5mZAFdrMJ4IX2jPx0hu+h85TBLtwc0vuXPxz+BoR
         CvP+9yPLhb3lvDCikexL00SCDW6nZ/yR0D67L+S9utHnilvOlsDpU4m58a3DK/VRppHp
         BPgAIwdvGBiYBH5VDGVQavTS59ok7Ack5zp17GYJg99ECHwyydHtmgrNTORQ4vQXWose
         GgnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zxl5nYqS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id a196si53254qkb.4.2020.05.12.01.59.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 01:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id i19so13034713ioh.12
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 01:59:25 -0700 (PDT)
X-Received: by 2002:a5e:c814:: with SMTP id y20mr19147281iol.135.1589273964630;
 Tue, 12 May 2020 01:59:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com> <CAK7LNAR+pm-_nd5=B2OeLpimW42FXxm8TQUMru9DR_asT3qYnA@mail.gmail.com>
In-Reply-To: <CAK7LNAR+pm-_nd5=B2OeLpimW42FXxm8TQUMru9DR_asT3qYnA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 12 May 2020 10:59:13 +0200
Message-ID: <CA+icZUUdRk9TYOSb5mzqBrfAsHYCRAy0ciNtKZJxbTdv-KaHpQ@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Zxl5nYqS;       spf=pass
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

On Tue, May 12, 2020 at 7:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Sedat,
>
>
> On Tue, May 5, 2020 at 1:25 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
> > <nick.desaulniers@gmail.com> wrote:
> > >
> > > As debug information gets larger and larger, it helps significantly save
> > > the size of vmlinux images to compress the information in the debug
> > > information sections. Note: this debug info is typically split off from
> > > the final compressed kernel image, which is why vmlinux is what's used
> > > in conjunction with GDB. Minimizing the debug info size should have no
> > > impact on boot times, or final compressed kernel image size.
> > >
> > > All of the debug sections will have a `C` flag set.
> > > $ readelf -S <object file>
> > >
> > > $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
> > >     vmlinux.gcc75.uncompressed.dwarf4
> > >
> > >     FILE SIZE        VM SIZE
> > >  --------------  --------------
> > >   +0.0%     +18  [ = ]       0    [Unmapped]
> > >  -73.3%  -114Ki  [ = ]       0    .debug_aranges
> > >  -76.2% -2.01Mi  [ = ]       0    .debug_frame
> > >  -73.6% -2.89Mi  [ = ]       0    .debug_str
> > >  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
> > >  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
> > >  -70.5% -9.04Mi  [ = ]       0    .debug_line
> > >  -79.3% -10.9Mi  [ = ]       0    .debug_loc
> > >  -39.5% -88.6Mi  [ = ]       0    .debug_info
> > >  -18.2%  -123Mi  [ = ]       0    TOTAL
> > >
> > > $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
> > >     vmlinux.clang11.uncompressed.dwarf4
> > >
> > >     FILE SIZE        VM SIZE
> > >  --------------  --------------
> > >   +0.0%     +23  [ = ]       0    [Unmapped]
> > >  -65.6%    -871  [ = ]       0    .debug_aranges
> > >  -77.4% -1.84Mi  [ = ]       0    .debug_frame
> > >  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
> > >  -73.1% -2.43Mi  [ = ]       0    .debug_str
> > >  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
> > >  -65.9% -8.62Mi  [ = ]       0    .debug_line
> > >  -86.2% -40.0Mi  [ = ]       0    .debug_loc
> > >  -42.0% -64.1Mi  [ = ]       0    .debug_info
> > >  -22.1%  -122Mi  [ = ]       0    TOTAL
> > >
> >
> > Hi Nick,
> >
> > thanks for the patch.
> >
> > I have slightly modified it to adapt to Linux v5.7-rc4 (what was your base?).
> >
> > Which linker did you use and has it an impact if you switch from
> > ld.bfd to ld.lld?
> >
> > I tried a first normal run and in a 2nd one with
> > CONFIG_DEBUG_INFO_COMPRESSED=y both with clang-10 and ld.lld-10.
> >
> > My numbers (sizes in MiB):
> >
> > [ diffconfig ]
> >
> > $ scripts/diffconfig /boot/config-5.7.0-rc4-1-amd64-clang
> > /boot/config-5.7.0-rc4-2-amd64-clang
> >  BUILD_SALT "5.7.0-rc4-1-amd64-clang" -> "5.7.0-rc4-2-amd64-clang"
> > +DEBUG_INFO_COMPRESSED y
> >
> > [ compiler and linker ]
> >
> > $ clang-10 -v
> > ClangBuiltLinux clang version 10.0.1
> > (https://github.com/llvm/llvm-project
> > 92d5c1be9ee93850c0a8903f05f36a23ee835dc2)
> > Target: x86_64-unknown-linux-gnu
> > Thread model: posix
> > InstalledDir: /home/dileks/src/llvm-toolchain/install/bin
> > Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
> > Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
> > Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
> > Selected GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
> > Candidate multilib: .;@m64
> > Candidate multilib: 32;@m32
> > Candidate multilib: x32;@mx32
> > Selected multilib: .;@m64
> >
> > $ ld.lld-10 -v
> > LLD 10.0.1 (https://github.com/llvm/llvm-project
> > 92d5c1be9ee93850c0a8903f05f36a23ee835dc2) (compatible with GNU
> > linkers)
> >
> > [ sizes vmlinux ]
> >
> > $ du -m 5.7.0-rc4-*/vmlinux*
> > 409     5.7.0-rc4-1-amd64-clang/vmlinux
> > 7       5.7.0-rc4-1-amd64-clang/vmlinux.compressed
> > 404     5.7.0-rc4-1-amd64-clang/vmlinux.o
> > 324     5.7.0-rc4-2-amd64-clang/vmlinux
> > 7       5.7.0-rc4-2-amd64-clang/vmlinux.compressed
> > 299     5.7.0-rc4-2-amd64-clang/vmlinux.o
> >
> > [ readelf (.debug_info as example) ]
> >
> > $ readelf -S vmlinux.o
> >   [33] .debug_info       PROGBITS         0000000000000000  01d6a5e8
> >        0000000006be1ee6  0000000000000000           0     0     1
> >
> > $ readelf -S vmlinux.o
> >   [33] .debug_info       PROGBITS         0000000000000000  01749f18
> >        0000000002ef04d2  0000000000000000   C       0     0     1 <---
> > XXX: "C (compressed)" Flag
> >
> > Key to Flags:
> >   W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
> >   L (link order), O (extra OS processing required), G (group), T (TLS),
> >   C (compressed), x (unknown), o (OS specific), E (exclude),
> >   l (large), p (processor specific)
> >
> > [ sizes linux-image debian packages ]
> >
> > $ du -m 5.7.0-rc4-*/linux-image*.deb
> > 47      5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> > 424     5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> > 47      5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> > 771     5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> >
> > [ sizes linux-git dir (compilation finished ]
> >
> > 5.7.0-rc4-1-amd64-clang: 17963   /home/dileks/src/linux-kernel/linux
> > 5.7.0-rc4-2-amd64-clang: 14328   /home/dileks/src/linux-kernel/linux
> >
> > [ xz compressed linux-image-dbg packages ]
> >
> > $ file linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> > linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb:
> > Debian binary package (format 2.0), with control.tar.xz, data
> > compression xz
> > $ file linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> > linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb:
> > Debian binary package (format 2.0), with control.tar.xz, data
> > compression xz
> >
> > [ file-lists ]
> >
> > $ dpkg --contents
> > linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> > | wc -l
> > 4395
> > $ dpkg --contents
> > linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> > | wc -l
> > 4395
> >
> > [ file-lists vmlinux ]
> >
> > $ dpkg --contents
> > linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> > | grep vmlinux
> > -rwxr-xr-x root/root 428588312 2020-05-04 06:15
> > ./usr/lib/debug/lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> > lrwxrwxrwx root/root         0 2020-05-04 06:15
> > ./usr/lib/debug/boot/vmlinux-5.7.0-rc4-1-amd64-clang ->
> > ../lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> > lrwxrwxrwx root/root         0 2020-05-04 06:15
> > ./usr/lib/debug/vmlinux-5.7.0-rc4-1-amd64-clang ->
> > lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> >
> > $ dpkg --contents
> > linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> > | grep vmlinux
> > -rwxr-xr-x root/root 339341456 2020-05-04 12:24
> > ./usr/lib/debug/lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> > lrwxrwxrwx root/root         0 2020-05-04 12:24
> > ./usr/lib/debug/boot/vmlinux-5.7.0-rc4-2-amd64-clang ->
> > ../lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> > lrwxrwxrwx root/root         0 2020-05-04 12:24
> > ./usr/lib/debug/vmlinux-5.7.0-rc4-2-amd64-clang ->
> > lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> >
> > [ conclusion ]
> >
> > As you can see there is a size-reduction in case of vmlinux/vmlinux.o
> > (debug) files...
> > ...and my linux-git directory in total is smaller: 17963M vs. 14328M.
> >
> > But the resulting linux-image-dbg file is much fatter: 424M vs. 711M.
> > XZ-compressing the gz/zlib-compressed vmlinux (debug) file results in
> > a fatter linux-image-dbg package.
>
>
> I also confirmed that, but this would not
> be a blocker of this patch.
>

Hi Masahiro,

No, it is not a blocker.
I have this patch now in my Linux v5.7-rc5 series.

I see a lot of more benefits concerning disc-usage - in my linux-git
and a reduced vmlinux file when I wanted to test with QEMU.

Feel free to add:
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> Users can disable CONFIG_DEBUG_INFO_COMPRESSED
> if they care about the debug package size.
>
>
>
>
>
> --
> Best Regards
> Masahiro Yamada
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR%2Bpm-_nd5%3DB2OeLpimW42FXxm8TQUMru9DR_asT3qYnA%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUdRk9TYOSb5mzqBrfAsHYCRAy0ciNtKZJxbTdv-KaHpQ%40mail.gmail.com.
