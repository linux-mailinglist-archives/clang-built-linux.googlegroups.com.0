Return-Path: <clang-built-linux+bncBAABB77T5D2QKGQERO4RU7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4939F1CEC92
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 07:54:09 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id h4sf13722965oie.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 22:54:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589262848; cv=pass;
        d=google.com; s=arc-20160816;
        b=kzChSfBUL6IpyaWvLch2DmYBBhI4PWh/tKDqDlL7LuAbWmzvDLnot159gyqM3wS4IG
         ZOqefeQhPWUvG9ZaHRDzZJesYv2yS7IfGnVwb2niqypDRWp9uErTW2g1404rnbtWx1/g
         YCOmdzMKTwR3t59CyZO9lkFpgRMX4oU2oMl7CbH7FlX8L4FPUGaDpFHxAQHO42uafkHN
         HSU92QdYyUqAFTXujEdN/RdRcSTD/aAfE7Ve1Xbr1E9ElTd7QDtQKrOUwZWIQyyBBlUV
         cK4HkziKpBod7QriTvinwjaUsjGEnNREOLSVFcV5yU5oLv41qoAPgGqSFZphXg1N4F4u
         cpQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=SJdOhM7adAGiwDtOB/zT4ox84RDcyavAUkqvdqulbKc=;
        b=BbjpLg5Up/MTUrXOYguA2qKwIdgLl+V1ufCit3CyaTbzxwu0biUE3TqQEpYEaHsOXK
         OeYv7lMNBNRSsqZ3vjHjnX2DFPFY4cTzTfLY4d28GGJFd6wNY8wH0M90w8YvWVgBpchD
         0BaTMteK5/jsx885z71aUTHEY+oSIvdjn0o8JR4DUWgqkChk3c41SxvD57J7wifkhBIw
         8wGbxO+rL6g8GAncZClxirYRwwb75XKCejvETkvBOVEXGh0S1YZX/MbwZeNJ407iqlum
         /FQq5Yqmch7Ii4m86eNtWEJYZQ/opttDbDoX9GFppUgiIStYjh1I6dlYzFUT28Y/BA8C
         VyVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qb005P4q;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SJdOhM7adAGiwDtOB/zT4ox84RDcyavAUkqvdqulbKc=;
        b=CFO7WG/Nrl7r9uwSo0FDZMPeePupf2TovneS3JCC2oAe8sv+NyDBvUcnL6QUaUB1W+
         mQCOheoHQp8Lbfx3rdgh1ANnLIO1KGMoGtDlOG6+sGKIxQ6gOAA+p0mKr05ViQXDb50E
         yc6osvBNzryW187RNt0c2D/gQ5BvJExayLO7g8yZ9kbezhoEtbYhZ+noysYvUZx5bUpJ
         6WE2AZWeQFTcTTXiXiCT83YGEkQb0sFnI71OhvF8lBTF5FJaYVci2uEfQV6D2IFoMUJ6
         uLEC3+6+NAigAnGc6RlsAZXEqCJj/pYesyI6iuC0YUVG/V45b6qAtGX+jd8X+UumgqRj
         8FxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SJdOhM7adAGiwDtOB/zT4ox84RDcyavAUkqvdqulbKc=;
        b=cVqaMDlqPhr0HAFrixL+lYLKE1QmNXMeobkYp3cj3bUWaTQXqk+0UDTIsYR4s6PYEn
         vwERfdg1BCGo3dSJbBcYd78+XV5P5BOIovaI6SfCSNnDG9iVch56ekWxufa7l6olqt4r
         yzkouwMxoyyxl71q9dZNI1COpc0zfjxI2++g2Lk73t8HBf+PpPgQQkVrVRGDUPTEX9NH
         B9Y73xDDDBpQBedzJvRXeTvFAoNz7QjYZrzxx5rRtk5NgpXNS03DK9Baql8qsZg77HmR
         r53wqXY/guRUNcMkfzWsCVHS8hJPbKOoBcL4NyWEFFJIPvmw2n1996cQUZbhZl9/uxFf
         lI+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubt5ErIgG5JUbsZiN1Rm/mDyXTTOcdgN5vBnDcS/QGy9VcB9uMi
	ViBNof4mVUAUsjTkKq4ibmo=
X-Google-Smtp-Source: APiQypJbMNxRNzSTjhavcPRkU9ASy81uJ4ziucOsVtjPN4/ctnsrrcK0WYphTb3mIEo8bSK+x/RkLg==
X-Received: by 2002:aca:5f88:: with SMTP id t130mr696627oib.98.1589262848045;
        Mon, 11 May 2020 22:54:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:241c:: with SMTP id j28ls466164ots.1.gmail; Mon, 11
 May 2020 22:54:07 -0700 (PDT)
X-Received: by 2002:a05:6830:1302:: with SMTP id p2mr15646584otq.183.1589262847051;
        Mon, 11 May 2020 22:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589262847; cv=none;
        d=google.com; s=arc-20160816;
        b=pzkBuO+/k0KDsNDgXWXk8Xz7sgsUuxUwbr7O/a1PakMke+nkza2hqQN8iWlC41Qg9E
         tfZoNvrI3qxx3ehLjzOWc8AyoWmwuxEpUziqownB7D29YJwQiGhzVi+A++ut6ro1cpbY
         bq/Rfb8VG2tBSjg3f4+Bl4HHODvPq5R2aFqbX1QPAx1+3xs/If948L2FjxsYzolRXpfB
         03XmB3uheU5wFw34MbVXq16SEgNHEbQpn+aEkyMGhLJAL7CsuuoX37T6+z+TK6uFsH6x
         PXr3+BzD1iml9moluMmNYuo6N1W+4lRecxyUj8Q59aWFvvwyscWDhRL0/fKBlRoFypYt
         uIVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=mwwDJ+M+xD8nTo3K635DxMclBsDeOOsv7lLzPgefBqk=;
        b=WZyeyhu02r3D9bCAqGQdDMFoE/s1bccApm2ASSBbjC69IifjyDsZhe+jQg+D5xSMzA
         3UQRzDdjhPcgLoe/e4U2nScaVxWKMQgCJOYIxt4sjwHxZ+9hLLbUF4b/hAl6mO/fzN0n
         KOO+fIwS6rEeTBBWgutiWl/OV6wGnkcJwxfdzcm+V0SFihdFhK9mC54+iJJw4l8KwptJ
         rPhec3SmTWoTFFF+PH62PF2Y9NKJRj5EWHQUzADkcH7iEXk4Gx6bjtK/n0WbQzr3kxzh
         baxaPhEf1SFfiBhNxL5WKZ5ScRDZUVpfukFwwpcKMjkPl1TjcJCKSA+YTkzaiXkKJGLB
         Skvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qb005P4q;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id w196si264033oif.4.2020.05.11.22.54.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 May 2020 22:54:07 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 04C5rctt003158
	for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 14:53:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 04C5rctt003158
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id l25so7146112vso.6
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 22:53:39 -0700 (PDT)
X-Received: by 2002:a05:6102:3c7:: with SMTP id n7mr13624690vsq.179.1589262817945;
 Mon, 11 May 2020 22:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com> <20200505004738.ew2lcp27c2n4jqia@google.com>
In-Reply-To: <20200505004738.ew2lcp27c2n4jqia@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 12 May 2020 14:53:01 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
Message-ID: <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Fangrui Song <maskray@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Nick Desaulniers <nick.desaulniers@gmail.com>,
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
 header.i=@nifty.com header.s=dec2015msa header.b=qb005P4q;       spf=softfail
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

On Tue, May 5, 2020 at 9:47 AM Fangrui Song <maskray@google.com> wrote:
>
>
> On 2020-05-04, Sedat Dilek wrote:
> >On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
> ><nick.desaulniers@gmail.com> wrote:
> >>
> >> As debug information gets larger and larger, it helps significantly save
> >> the size of vmlinux images to compress the information in the debug
> >> information sections. Note: this debug info is typically split off from
> >> the final compressed kernel image, which is why vmlinux is what's used
> >> in conjunction with GDB. Minimizing the debug info size should have no
> >> impact on boot times, or final compressed kernel image size.
> >>
> >> All of the debug sections will have a `C` flag set.
> >> $ readelf -S <object file>
> >>
> >> $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
> >>     vmlinux.gcc75.uncompressed.dwarf4
> >>
> >>     FILE SIZE        VM SIZE
> >>  --------------  --------------
> >>   +0.0%     +18  [ = ]       0    [Unmapped]
> >>  -73.3%  -114Ki  [ = ]       0    .debug_aranges
> >>  -76.2% -2.01Mi  [ = ]       0    .debug_frame
> >>  -73.6% -2.89Mi  [ = ]       0    .debug_str
> >>  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
> >>  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
> >>  -70.5% -9.04Mi  [ = ]       0    .debug_line
> >>  -79.3% -10.9Mi  [ = ]       0    .debug_loc
> >>  -39.5% -88.6Mi  [ = ]       0    .debug_info
> >>  -18.2%  -123Mi  [ = ]       0    TOTAL
> >>
> >> $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
> >>     vmlinux.clang11.uncompressed.dwarf4
> >>
> >>     FILE SIZE        VM SIZE
> >>  --------------  --------------
> >>   +0.0%     +23  [ = ]       0    [Unmapped]
> >>  -65.6%    -871  [ = ]       0    .debug_aranges
> >>  -77.4% -1.84Mi  [ = ]       0    .debug_frame
> >>  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
> >>  -73.1% -2.43Mi  [ = ]       0    .debug_str
> >>  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
> >>  -65.9% -8.62Mi  [ = ]       0    .debug_line
> >>  -86.2% -40.0Mi  [ = ]       0    .debug_loc
> >>  -42.0% -64.1Mi  [ = ]       0    .debug_info
> >>  -22.1%  -122Mi  [ = ]       0    TOTAL
> >>
> >
> >Hi Nick,
> >
> >thanks for the patch.
> >
> >I have slightly modified it to adapt to Linux v5.7-rc4 (what was your base?).
> >
> >Which linker did you use and has it an impact if you switch from
> >ld.bfd to ld.lld?
>
> lld has supported the linker option --compress-debug-sections=zlib since
> about 5.0.0 (https://reviews.llvm.org/D31941)
>
> >I tried a first normal run and in a 2nd one with
> >CONFIG_DEBUG_INFO_COMPRESSED=y both with clang-10 and ld.lld-10.
> >
> >My numbers (sizes in MiB):
> >
> >[ diffconfig ]
> >
> >$ scripts/diffconfig /boot/config-5.7.0-rc4-1-amd64-clang
> >/boot/config-5.7.0-rc4-2-amd64-clang
> > BUILD_SALT "5.7.0-rc4-1-amd64-clang" -> "5.7.0-rc4-2-amd64-clang"
> >+DEBUG_INFO_COMPRESSED y
> >
> >[ compiler and linker ]
> >
> >$ clang-10 -v
> >ClangBuiltLinux clang version 10.0.1
> >(https://github.com/llvm/llvm-project
> >92d5c1be9ee93850c0a8903f05f36a23ee835dc2)
> >Target: x86_64-unknown-linux-gnu
> >Thread model: posix
> >InstalledDir: /home/dileks/src/llvm-toolchain/install/bin
> >Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
> >Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
> >Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
> >Selected GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
> >Candidate multilib: .;@m64
> >Candidate multilib: 32;@m32
> >Candidate multilib: x32;@mx32
> >Selected multilib: .;@m64
> >
> >$ ld.lld-10 -v
> >LLD 10.0.1 (https://github.com/llvm/llvm-project
> >92d5c1be9ee93850c0a8903f05f36a23ee835dc2) (compatible with GNU
> >linkers)
> >
> >[ sizes vmlinux ]
> >
> >$ du -m 5.7.0-rc4-*/vmlinux*
> >409     5.7.0-rc4-1-amd64-clang/vmlinux
> >7       5.7.0-rc4-1-amd64-clang/vmlinux.compressed
> >404     5.7.0-rc4-1-amd64-clang/vmlinux.o
> >324     5.7.0-rc4-2-amd64-clang/vmlinux
> >7       5.7.0-rc4-2-amd64-clang/vmlinux.compressed
> >299     5.7.0-rc4-2-amd64-clang/vmlinux.o
> >
> >[ readelf (.debug_info as example) ]
> >
> >$ readelf -S vmlinux.o
> >  [33] .debug_info       PROGBITS         0000000000000000  01d6a5e8
> >       0000000006be1ee6  0000000000000000           0     0     1
> >
> >$ readelf -S vmlinux.o
> >  [33] .debug_info       PROGBITS         0000000000000000  01749f18
> >       0000000002ef04d2  0000000000000000   C       0     0     1 <---
> >XXX: "C (compressed)" Flag
> >
> >Key to Flags:
> >  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
> >  L (link order), O (extra OS processing required), G (group), T (TLS),
> >  C (compressed), x (unknown), o (OS specific), E (exclude),
> >  l (large), p (processor specific)
> >
> >[ sizes linux-image debian packages ]
> >
> >$ du -m 5.7.0-rc4-*/linux-image*.deb
> >47      5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> >424     5.7.0-rc4-1-amd64-clang/linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> >47      5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> >771     5.7.0-rc4-2-amd64-clang/linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> >
> >[ sizes linux-git dir (compilation finished ]
> >
> >5.7.0-rc4-1-amd64-clang: 17963   /home/dileks/src/linux-kernel/linux
> >5.7.0-rc4-2-amd64-clang: 14328   /home/dileks/src/linux-kernel/linux
> >
> >[ xz compressed linux-image-dbg packages ]
> >
> >$ file linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> >linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb:
> >Debian binary package (format 2.0), with control.tar.xz, data
> >compression xz
> >$ file linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> >linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb:
> >Debian binary package (format 2.0), with control.tar.xz, data
> >compression xz
> >
> >[ file-lists ]
> >
> >$ dpkg --contents
> >linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> >| wc -l
> >4395
> >$ dpkg --contents
> >linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> >| wc -l
> >4395
> >
> >[ file-lists vmlinux ]
> >
> >$ dpkg --contents
> >linux-image-5.7.0-rc4-1-amd64-clang-dbg_5.7.0~rc4-1~bullseye+dileks1_amd64.deb
> >| grep vmlinux
> >-rwxr-xr-x root/root 428588312 2020-05-04 06:15
> >./usr/lib/debug/lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> >lrwxrwxrwx root/root         0 2020-05-04 06:15
> >./usr/lib/debug/boot/vmlinux-5.7.0-rc4-1-amd64-clang ->
> >../lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> >lrwxrwxrwx root/root         0 2020-05-04 06:15
> >./usr/lib/debug/vmlinux-5.7.0-rc4-1-amd64-clang ->
> >lib/modules/5.7.0-rc4-1-amd64-clang/vmlinux
> >
> >$ dpkg --contents
> >linux-image-5.7.0-rc4-2-amd64-clang-dbg_5.7.0~rc4-2~bullseye+dileks1_amd64.deb
> >| grep vmlinux
> >-rwxr-xr-x root/root 339341456 2020-05-04 12:24
> >./usr/lib/debug/lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> >lrwxrwxrwx root/root         0 2020-05-04 12:24
> >./usr/lib/debug/boot/vmlinux-5.7.0-rc4-2-amd64-clang ->
> >../lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> >lrwxrwxrwx root/root         0 2020-05-04 12:24
> >./usr/lib/debug/vmlinux-5.7.0-rc4-2-amd64-clang ->
> >lib/modules/5.7.0-rc4-2-amd64-clang/vmlinux
> >
> >[ conclusion ]
> >
> >As you can see there is a size-reduction in case of vmlinux/vmlinux.o
> >(debug) files...
> >...and my linux-git directory in total is smaller: 17963M vs. 14328M.
> >
> >But the resulting linux-image-dbg file is much fatter: 424M vs. 711M.
> >XZ-compressing the gz/zlib-compressed vmlinux (debug) file results in
> >a fatter linux-image-dbg package.
> >
> >For a usage of vmlinux (debug) in a VM scenario this might be nice but
> >seen from a debian repository perspective not.
> >
> >For the sake of completeness:  I have just installed and booted the
> >"normal" linux-image debian package - not the debug packages.
> >
> >Thanks.
> >
> >Regards,
> >- Sedat -
> >
> >> Suggested-by: David Blaikie <blakie@google.com>
> >> Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> >> ---
> >>  Makefile          | 5 +++++
> >>  lib/Kconfig.debug | 9 +++++++++
> >>  2 files changed, 14 insertions(+)
> >>
> >> diff --git a/Makefile b/Makefile
> >> index 981eb902384b..313a054e5dc6 100644
> >> --- a/Makefile
> >> +++ b/Makefile
> >> @@ -825,6 +825,11 @@ ifdef CONFIG_DEBUG_INFO_REDUCED
> >>  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
> >>                    $(call cc-option,-fno-var-tracking)
> >>  endif
> >> +
> >> +ifdef CONFIG_DEBUG_INFO_COMPRESSED
> >> +DEBUG_CFLAGS   += -gz=zlib
> >> +KBUILD_LDFLAGS += --compress-debug-sections=zlib
> >> +endif
> >>  endif
> >>
> >>  KBUILD_CFLAGS += $(DEBUG_CFLAGS)
> >> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> >> index f6f9a039f736..1f4a47ba6c1b 100644
> >> --- a/lib/Kconfig.debug
> >> +++ b/lib/Kconfig.debug
> >> @@ -213,6 +213,15 @@ config DEBUG_INFO_REDUCED
> >>           DEBUG_INFO build and compile times are reduced too.
> >>           Only works with newer gcc versions.
> >>
> >> +config DEBUG_INFO_COMPRESSED
> >> +       bool "Compressed debugging information"
> >> +       depends on DEBUG_INFO
> >> +       depends on $(cc-option,-gz=zlib)
> >> +       depends on $(ld-option,--compress-debug-sections=zlib)
> >> +       help
> >> +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> >> +         5.0+.
> >> +
>
> linker option --compress-debug-sections=zlib require binutils >= 2.26 (ld-option)
> Assembler option --compress-debug-sections=zlib also require binutils >= 2.26 (cc-option,-gz=zlib)



Nick,

I am OK with this patch.

Fangrui provided the minimal requirement for
--compress-debug-sections=zlib


Is it worth recording in the help text?
Do you want to send v2?



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR7-VMEWBcJ_Wd%2B61ZDHEa0gD8FaSs63YPu7m_FgH8Htg%40mail.gmail.com.
