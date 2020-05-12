Return-Path: <clang-built-linux+bncBAABBW7Q5D2QKGQETR3YJNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD881CEC81
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 07:47:09 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id y8sf6449783ybn.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 22:47:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589262428; cv=pass;
        d=google.com; s=arc-20160816;
        b=wuvwiezySrUA66pkR/HzXzUTcltYUGGIQuKAym+lq+fYLhdSeGBNLDuCNz1NgON1dg
         A/tjTWGcMym4WOEYVeNAZcacR6wkpKE4tIuig5ytsIExEvtrSjSTN/mtrmjczaJZgd/w
         scTydk59J1erR9G2S2xDPJq0JXMwDxQxezo+dIeGa9pB/XLEhAAEqklztPjhpCAgJvJz
         SCcO6GM98RdeLAoZSrtdyA5TYqCy6WIOZSeTIYvqV932asjjcaMwMy8fduFyGJcUWHu9
         diIsoHRlObFJKl7TagQkEXyFHgv1Y4Q/pl+1LRCsyd701HvoU5ueYjTrk77WnMUmfPf4
         m1kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ibs01AugKrabTRjgmA8vDuC31R3pZ/cqbGnvb/gHyag=;
        b=XGkz127VyhSNOLDJq9mdLCZa1LI9CN/og1yaXnRhYwpG/FVvwKKRbcdl8DJGp5olvo
         /QPSt13LA3gQAg0CkkLBnp0FRaro/k7PplUKddVFkbpAxemV8uL0IVw5fI+SBgaBboi7
         LBQkdQ0hTcUIDgsK0sn8KSV45llifs+PFAiMtspmFwflLOJsb0pBAiRQ4K6m4yGv1qCw
         kW3L6+STYz6U3/ROGAHWeeSoSPIDFyRXxYUZL6o5tICvuKDMlzUN7wWXGrXJu6h5y/uU
         XcsEgQaNaXfmk9RLwsG2I8RlErni15alM5ZfB41i13/5LIDf/xVbP2fvHYsL4Aea2PPM
         +V5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vKm7GrcQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ibs01AugKrabTRjgmA8vDuC31R3pZ/cqbGnvb/gHyag=;
        b=S81ujS95erZ5tw+sSOZqFg2vhF8wjuY6R4vXncNny3pgEK1wjYr1Q5kz2SwE4+brEK
         wngGevzFTNWqn9n5ZFUeEs8mV636AxiQtwGu695/oNEhvIbRGleLGuishPNMmC7vnI81
         BjmNvIVq4UFQnob0Zo4geaIfAzAoFMZ2FSgYtuD2FTZp9nhsHpzVnh4Hoj2Iyv5e0WXf
         qqVBhk7Jf62AVwGmVU5ve8PGcdc0FFS59rtwSWZD1b9uwslBnnJatJPPgJqon+xgDUGl
         lLmkzxvNO7V35HGcz9vir+ik0oyvu/7rjR9fB+PEZe7AkdmrlB5jBctK2AF+HD1iQrJI
         19ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ibs01AugKrabTRjgmA8vDuC31R3pZ/cqbGnvb/gHyag=;
        b=koxKlouF4edZSq8wKwG306nrusQK+cRmWf/2JFQEGmv9ple3KW2BZ9hJfhM+5FVGiv
         G1dcF3/ec538dvUxJLdIJ7BUuaa3+59i9SeUInxl9u4h5uJnkbCwFbcEFKdyGkCi0gk/
         4g2m+Y8ELNtOYK1cB72asKC0rJxUwYBykj1OC5o8WGMwUVqHflnI4JIulPuQnMfEF0EN
         3R9v3zQo+ZUoB+3JcbZqQxDNwUnORpz4Jj3DRpWxl6zUTKKqYfYWDHw4IK1JACPnh429
         JXLr7uwu/i33I5yhRcnFXTKmniePqXsxN21O5YL5e1LlLyqjn6+cGS2UvHllZbdKltBF
         +qhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puae4sCg9h1sNva14fWIEFAq+iaYoKoa6HgNsqEl0DLZvqlLyl8f
	ZZjpXDm8V+mCzNRJc/sQ/5s=
X-Google-Smtp-Source: APiQypJyITcZTYhzTVNmj84Sxt+7cjjGiix25mify5IYRuZS5Rurtm38FN/V3XzHVwromajijKOyzQ==
X-Received: by 2002:a25:684f:: with SMTP id d76mr15025872ybc.18.1589262427805;
        Mon, 11 May 2020 22:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:be4d:: with SMTP id d13ls4412994ybm.2.gmail; Mon, 11 May
 2020 22:47:07 -0700 (PDT)
X-Received: by 2002:a25:a1e1:: with SMTP id a88mr9266836ybi.237.1589262427470;
        Mon, 11 May 2020 22:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589262427; cv=none;
        d=google.com; s=arc-20160816;
        b=0h4+YrM9RtfEVotEspjVrsJ8LZGPVoG4XkV9T4xURUc0DPU7Fe0HIL0wEuIh1UNCSk
         hHHBT20fujIR1VL1GX5oMHncN6MWC2vuJtvajF3WChVK95O7estb6IYtsz1Spfw57v6b
         QX6bk/ysGwqv4L/yTZ8YlQ1zRVQVDjp/0+rMXXdBbJ9Mxv4f5b8XSD0SHbBi1l8z3IIg
         E6R6J6Sh/juYtu8F0liW0m2tKRmdqt4nsUR6pJz+wJYozY/tRYWmyZd8Fa6ZwhfPnw6s
         MnF2QMrlG2XmnioQVG+OwSmIgCA6IslxDGoXJULfEeFXnOtPErHkuBPL4mPf+RGR3Yxg
         4K9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Y4CSQCxX6HAtnNhBU0tpzYr3DlItdMgGqz9SOPIEeBI=;
        b=kiOAThpBmkMbKm07AJuT2IbzmKjFiY1G1LVrIEBo01zmVpkARhMCj+GY5ghzclzNgu
         2pSJUIA2vKzOilLOKv9qvdIffNp3pYDUGtBMt0ob5XNF7ZXk9jjAarE9yl4jEY6I3KIK
         sn5pcx476XD+XTYMReHZk3/eqFKFGES6cnuo7nixb1g9uhfh32ppW3kilAEsr7/VvVju
         P/upZrGZiGswp3zfvWWhYI6eA9doUfMAT9gmpm3vvwYNgF0DMJi+2BM6880nOdTSpQor
         RIZnG0w0gm7lG3v7Dnuon9bpL10/d3Ya0ccqCj5nBnC0fw8jsFmrToL/jMnzASM0Nfbl
         +xmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vKm7GrcQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id y199si1103711ybe.2.2020.05.11.22.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 May 2020 22:47:07 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 04C5kps3031603
	for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 14:46:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 04C5kps3031603
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id e10so7105523vsp.12
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 22:46:52 -0700 (PDT)
X-Received: by 2002:a67:db0d:: with SMTP id z13mr14345298vsj.155.1589262411057;
 Mon, 11 May 2020 22:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com> <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
In-Reply-To: <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 12 May 2020 14:46:15 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR+pm-_nd5=B2OeLpimW42FXxm8TQUMru9DR_asT3qYnA@mail.gmail.com>
Message-ID: <CAK7LNAR+pm-_nd5=B2OeLpimW42FXxm8TQUMru9DR_asT3qYnA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Changbin Du <changbin.du@intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vKm7GrcQ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Sedat,


On Tue, May 5, 2020 at 1:25 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
> <nick.desaulniers@gmail.com> wrote:
> >
> > As debug information gets larger and larger, it helps significantly save
> > the size of vmlinux images to compress the information in the debug
> > information sections. Note: this debug info is typically split off from
> > the final compressed kernel image, which is why vmlinux is what's used
> > in conjunction with GDB. Minimizing the debug info size should have no
> > impact on boot times, or final compressed kernel image size.
> >
> > All of the debug sections will have a `C` flag set.
> > $ readelf -S <object file>
> >
> > $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
> >     vmlinux.gcc75.uncompressed.dwarf4
> >
> >     FILE SIZE        VM SIZE
> >  --------------  --------------
> >   +0.0%     +18  [ = ]       0    [Unmapped]
> >  -73.3%  -114Ki  [ = ]       0    .debug_aranges
> >  -76.2% -2.01Mi  [ = ]       0    .debug_frame
> >  -73.6% -2.89Mi  [ = ]       0    .debug_str
> >  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
> >  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
> >  -70.5% -9.04Mi  [ = ]       0    .debug_line
> >  -79.3% -10.9Mi  [ = ]       0    .debug_loc
> >  -39.5% -88.6Mi  [ = ]       0    .debug_info
> >  -18.2%  -123Mi  [ = ]       0    TOTAL
> >
> > $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
> >     vmlinux.clang11.uncompressed.dwarf4
> >
> >     FILE SIZE        VM SIZE
> >  --------------  --------------
> >   +0.0%     +23  [ = ]       0    [Unmapped]
> >  -65.6%    -871  [ = ]       0    .debug_aranges
> >  -77.4% -1.84Mi  [ = ]       0    .debug_frame
> >  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
> >  -73.1% -2.43Mi  [ = ]       0    .debug_str
> >  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
> >  -65.9% -8.62Mi  [ = ]       0    .debug_line
> >  -86.2% -40.0Mi  [ = ]       0    .debug_loc
> >  -42.0% -64.1Mi  [ = ]       0    .debug_info
> >  -22.1%  -122Mi  [ = ]       0    TOTAL
> >
>
> Hi Nick,
>
> thanks for the patch.
>
> I have slightly modified it to adapt to Linux v5.7-rc4 (what was your base?).
>
> Which linker did you use and has it an impact if you switch from
> ld.bfd to ld.lld?
>
> I tried a first normal run and in a 2nd one with
> CONFIG_DEBUG_INFO_COMPRESSED=y both with clang-10 and ld.lld-10.
>
> My numbers (sizes in MiB):
>
> [ diffconfig ]
>
> $ scripts/diffconfig /boot/config-5.7.0-rc4-1-amd64-clang
> /boot/config-5.7.0-rc4-2-amd64-clang
>  BUILD_SALT "5.7.0-rc4-1-amd64-clang" -> "5.7.0-rc4-2-amd64-clang"
> +DEBUG_INFO_COMPRESSED y
>
> [ compiler and linker ]
>
> $ clang-10 -v
> ClangBuiltLinux clang version 10.0.1
> (https://github.com/llvm/llvm-project
> 92d5c1be9ee93850c0a8903f05f36a23ee835dc2)
> Target: x86_64-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /home/dileks/src/llvm-toolchain/install/bin
> Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
> Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
> Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
> Selected GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
> Candidate multilib: .;@m64
> Candidate multilib: 32;@m32
> Candidate multilib: x32;@mx32
> Selected multilib: .;@m64
>
> $ ld.lld-10 -v
> LLD 10.0.1 (https://github.com/llvm/llvm-project
> 92d5c1be9ee93850c0a8903f05f36a23ee835dc2) (compatible with GNU
> linkers)
>
> [ sizes vmlinux ]
>
> $ du -m 5.7.0-rc4-*/vmlinux*
> 409     5.7.0-rc4-1-amd64-clang/vmlinux
> 7       5.7.0-rc4-1-amd64-clang/vmlinux.compressed
> 404     5.7.0-rc4-1-amd64-clang/vmlinux.o
> 324     5.7.0-rc4-2-amd64-clang/vmlinux
> 7       5.7.0-rc4-2-amd64-clang/vmlinux.compressed
> 299     5.7.0-rc4-2-amd64-clang/vmlinux.o
>
> [ readelf (.debug_info as example) ]
>
> $ readelf -S vmlinux.o
>   [33] .debug_info       PROGBITS         0000000000000000  01d6a5e8
>        0000000006be1ee6  0000000000000000           0     0     1
>
> $ readelf -S vmlinux.o
>   [33] .debug_info       PROGBITS         0000000000000000  01749f18
>        0000000002ef04d2  0000000000000000   C       0     0     1 <---
> XXX: "C (compressed)" Flag
>
> Key to Flags:
>   W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
>   L (link order), O (extra OS processing required), G (group), T (TLS),
>   C (compressed), x (unknown), o (OS specific), E (exclude),
>   l (large), p (processor specific)
>
> [ sizes linux-image debian packages ]
>
> $ du -m 5.7.0-rc4-*/linux-image*.deb
> 47      5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> 424     5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> 47      5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> 771     5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
>
> [ sizes linux-git dir (compilation finished ]
>
> 5.7.0-rc4-1-amd64-clang: 17963   /home/dileks/src/linux-kernel/linux
> 5.7.0-rc4-2-amd64-clang: 14328   /home/dileks/src/linux-kernel/linux
>
> [ xz compressed linux-image-dbg packages ]
>
> $ file linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb:
> Debian binary package (format 2.0), with control.tar.xz, data
> compression xz
> $ file linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb:
> Debian binary package (format 2.0), with control.tar.xz, data
> compression xz
>
> [ file-lists ]
>
> $ dpkg --contents
> linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> | wc -l
> 4395
> $ dpkg --contents
> linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> | wc -l
> 4395
>
> [ file-lists vmlinux ]
>
> $ dpkg --contents
> linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> | grep vmlinux
> -rwxr-xr-x root/root 428588312 2020-05-04 06:15
> ./usr/lib/debug/lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> lrwxrwxrwx root/root         0 2020-05-04 06:15
> ./usr/lib/debug/boot/vmlinux-5.7.0-rc4-1-amd64-clang ->
> ../lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> lrwxrwxrwx root/root         0 2020-05-04 06:15
> ./usr/lib/debug/vmlinux-5.7.0-rc4-1-amd64-clang ->
> lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
>
> $ dpkg --contents
> linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> | grep vmlinux
> -rwxr-xr-x root/root 339341456 2020-05-04 12:24
> ./usr/lib/debug/lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> lrwxrwxrwx root/root         0 2020-05-04 12:24
> ./usr/lib/debug/boot/vmlinux-5.7.0-rc4-2-amd64-clang ->
> ../lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> lrwxrwxrwx root/root         0 2020-05-04 12:24
> ./usr/lib/debug/vmlinux-5.7.0-rc4-2-amd64-clang ->
> lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
>
> [ conclusion ]
>
> As you can see there is a size-reduction in case of vmlinux/vmlinux.o
> (debug) files...
> ...and my linux-git directory in total is smaller: 17963M vs. 14328M.
>
> But the resulting linux-image-dbg file is much fatter: 424M vs. 711M.
> XZ-compressing the gz/zlib-compressed vmlinux (debug) file results in
> a fatter linux-image-dbg package.


I also confirmed that, but this would not
be a blocker of this patch.

Users can disable CONFIG_DEBUG_INFO_COMPRESSED
if they care about the debug package size.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR%2Bpm-_nd5%3DB2OeLpimW42FXxm8TQUMru9DR_asT3qYnA%40mail.gmail.com.
