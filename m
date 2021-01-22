Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGW6VCAAMGQE3QZS7VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAB42FFA26
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:49:15 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id b4sf2647676pji.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:49:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611280154; cv=pass;
        d=google.com; s=arc-20160816;
        b=iaAzapwXNMg3H7hR3532D8G+DjFj3dN5FtGLUokiL7oOwbF1OH2f4NCGwDisIiUJ/h
         sEdNAHpRn1fwLCSmYV0vnT265bo38V5wuw1wAi2Qp0w7nph4RI6AkM0q3Hrtxg0UhmSu
         5eNiQ15/u81WVWQFAKqKNJe2CgOxtR6BWpU1YFB9Seb4HHybv8CDedXrIjLtM2WBQQGK
         M/pXTwO0L+Hku/H/VTf6LTyEX7jyiNIc3yn4Qiv8TKBxsucUBGJ/HpKyFzKn6gqotg0M
         N9Aqb6qMVYnM4JwyEY3hynCQPt3GtNfsH2bS0BRUdgfI4tBiT+IzIs2kKHX/Lwbnsxlr
         /MNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XCs2CZXetxbp8d/JO8zm9xRDKnfPXdtg59jutOqnU9w=;
        b=Q0AMySJlaBOcD2kyP6IWNYtv6ygbeDmfFVLU4jLqHfDi9/fDQNiuUe0KNmTKaRt9XQ
         cvZDZ50Suf2EWd+uYvlXrfUHSW7G3GzNTttzgSLu4DdUXry9ajEpVKVDPQHVbYrkXwaS
         jKlLk+6Ecoust2z7u1agFziSy6hIrAkZu7IEbWIFqXOTmTp2Bp6NvdKBZUHFMMvkR/Kn
         TVJzkvTAZP1zlQVLKtG5Ssr7Y64NzL319xsSHDcX416/RH0g6apr+K6E6qSdDMvHNsn6
         xVJtd829qnwLCvDjcAA/VUMHMbSEZl7j+808B+HylfPsheNacGQvetcbVpncaHDXOpY3
         P81Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fVXDIODj;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XCs2CZXetxbp8d/JO8zm9xRDKnfPXdtg59jutOqnU9w=;
        b=stBwP3MqTGEoSu4j29Y4Z8tnnmn1inNdGXba3BjrT9SIXKFaBtmvWxO/I++OZxSxpT
         dWC0hviaRpLsIABjWONMhqjSdGwnG8crLmNaDe2IVTrSpilR8QrGRznWm7zV/egfT6gM
         RPT1LphyANbATocqJ4QYgMoQe8l5lMWBh1j098aY8SgO4/7Ajf8zLhsQUN/vu+pbmp+c
         mTE3yb+LbK8BZS39x5YZQiO4bvTF9zyUwNhzZnEX+v7SAJ1u3CD7WeuIPO8q7txTp5YK
         UoGNcIB+HVT1d9/fWXi3yIbfyczlzIe8K41oRlSJR6m54BiVr0RVjOcqhU16TO4de7lM
         ny5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XCs2CZXetxbp8d/JO8zm9xRDKnfPXdtg59jutOqnU9w=;
        b=bEN7Lc6sKKgiL3y7X3AVzHHivjGu99ogCfi9viXJvBPp9kkbSsmEoYkyhpVKLRIi24
         7lHf4lTFPKg9HmZvBQg2u1KR5LG2MBLuPRzFPFWdyy0O8WzQ4YmKiby4vwOcRSzxhEXb
         5chfWL/ivnYBvBgUbdkkkx61HzTjPY9CD0VCmCXT4jz2IavncO7BnONPKshC4/VVbv0t
         OCY42SlsEOgB05IsiNkoFfkMUcLJ6KggnvlWEYqlc5/Q3snRhgwwZ/uZel7870XPnrsH
         x3YoYcVgNcnwINK7b297g/PAvWzK61rAv59M1JxBiuK8qUmzuX/jJ/2kM7QUzvVXcur8
         U3Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XCs2CZXetxbp8d/JO8zm9xRDKnfPXdtg59jutOqnU9w=;
        b=iA4gZG1G/RUATpWPR9qka8Lb2UHWcC2j3mMNH7OreXdkP/rh4x22NqhhrdP+AmbBOE
         uyimPvaxTHOHPDdF5OSAkEDCHJhSTBcRU8ht6xy6iQzyJhfwdrnGxC2oqtnayqalQLCH
         vnvasKAGwK+FhrPI8I6EjXRPyZ36fPPb/ZWk7FcwJy8saHzx4eJ52k/svLQcdmWgffJd
         /S7VcPB3KIFaO+fLM7Qce9HKxeq1cJ0lNDwRov9id0++qRfdBwwN6co9kcWNjBhCi5T4
         R7j40S1HXnK2yvQoja/ymRxUU2AIVDGakQwMGrCN3aCce9Ns6ofFK8C85kPgIJ81N2c0
         orew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532on43Obc4ul4pZ00S+OhkXi9GTReaRBs6ohH32Hpd8Y7YEAg1J
	du1YPpizgtLNsz47WucnnIs=
X-Google-Smtp-Source: ABdhPJzCAEpA1pi5gMwLEuUosbTw0KOAe0OFeXTqbfT59E7jQrbtFXLdC4VYESTwrtUTBq7w8+7A3A==
X-Received: by 2002:a63:5805:: with SMTP id m5mr2216633pgb.352.1611280154560;
        Thu, 21 Jan 2021 17:49:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9286:: with SMTP id j6ls1502487pfa.7.gmail; Thu, 21 Jan
 2021 17:49:13 -0800 (PST)
X-Received: by 2002:a62:1c97:0:b029:1ae:6d94:75c6 with SMTP id c145-20020a621c970000b02901ae6d9475c6mr2285883pfc.34.1611280153791;
        Thu, 21 Jan 2021 17:49:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611280153; cv=none;
        d=google.com; s=arc-20160816;
        b=K3tviUiDcFCUhI4xP7r3zWtaVS67iHa3ODpEOiHbvhm02BvwFEonPdm1NN/h7h7NTO
         RKTokM6cDmXdYOtCpsTdIsakp2ktp7xjYQk424Qy4olkx69trIbWWfqsNwj9O87gxf0s
         1QGZ9TubylVghyF6oleeBoyK1pikXJf0G+bxJGcDq1n213My4iXi+xnidBl1F4zTzqOU
         wqxweyJduKYGxLMoi0qgw5wxK1OuDZxQ5Jdu1tlvrEkZN3/ZNzLbX4+kUfrKYTmJNWk9
         P0Ncb7RxG2o2azD5S+6veMIN5M/7rCII0wTqbGNm+dLM4uZBLWSyhPBZX74mq7Y8eVnG
         b8Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9/YkKKEDfJW7Vo1FQpb2GhjTxLI3VJ5grKY0rxpkAOU=;
        b=AQ+KavO50aRu+jmMFCgb0vheQlomnCiTsyL/2+tDAL92ux4YbxXZyP91QxRUpwJIFj
         KSbmRKIEt6F2k1uWPfCYGD16p4fiYHZuGV5ge5kISrByMjbbvRlld4t8o/pCpKAtd03D
         54MiHWKzS0XyYpoPzFkCdfa4SCgmd1wOCqKWJgGR0PA7dT2GOyPUBFliNA/69gpawMpq
         s6u6q1kZaX166/sAE4YlxIEP365u0n/d1p0MbjxspFynd64CA8gEa5bldrf7/AGD7auD
         PgfVnl9Ujd/qCZ1SWm40oqw3fmadrsqh/ckpDDE7bbpuB1HL3Is9dKsGxV1rrbowTkoE
         v2Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fVXDIODj;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id c3si380012pll.0.2021.01.21.17.49.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:49:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id p72so8063576iod.12
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:49:13 -0800 (PST)
X-Received: by 2002:a6b:90c4:: with SMTP id s187mr1780888iod.75.1611280153202;
 Thu, 21 Jan 2021 17:49:13 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
 <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
 <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
 <CA+icZUU-3i7Of71C6XaNmee7xD4y_DeoWJFvUHnMUyBaMN3Ywg@mail.gmail.com>
 <CA+icZUXmn15w=kSq2CZzQD5JggJw_9AEam=Sz13M0KpJ68MWZg@mail.gmail.com>
 <CA+icZUWUPCuLWCo=kuPr9YZ4-NZ3F8Fv1GzDXPbDevyWjaMrJg@mail.gmail.com>
 <CAGG=3QW+ayBzCxOusLyQ0-y5K5C_3hNXjara_pYOcxK8MseN9g@mail.gmail.com>
 <CA+icZUU1HihUFaEHzF69+01+Picg8aq6HAqHupxiRqyDGJ=Mpw@mail.gmail.com>
 <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
 <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
 <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
 <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com>
 <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com>
 <CA+icZUU+OWW46CVq4Co-y7hckGjoV5bbqxS-G+HDqUDci_AzHw@mail.gmail.com> <CAKwvOdkOOjDo+zFFz_T63FphZn2Lg7MW8vd7qd-yS_eB_yYdmA@mail.gmail.com>
In-Reply-To: <CAKwvOdkOOjDo+zFFz_T63FphZn2Lg7MW8vd7qd-yS_eB_yYdmA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 Jan 2021 02:49:00 +0100
Message-ID: <CA+icZUUWtKqEhaJSbbQomC+Mz+uRgkWu72vyxPbif0nG1Vvr3g@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fVXDIODj;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d
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

On Fri, Jan 22, 2021 at 2:43 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Jan 20, 2021 at 6:03 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Mon, Jan 18, 2021 at 10:56 PM Bill Wendling <morbo@google.com> wrote:
> > >
> > > On Mon, Jan 18, 2021 at 9:26 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> > > > > >
> > > > > > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > >
> > > > > > > [ big snip ]
> > > > > >
> > > > > > [More snippage.]
> > > > > >
> > > > > > > [ CC Fangrui ]
> > > > > > >
> > > > > > > With the attached...
> > > > > > >
> > > > > > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > > > > > undefined symbols
> > > > > > >
> > > > > > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > > > > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > > > > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > > > > > >
> > > > > > Thanks for confirming that this works with the above patch.
> > > > > >
> > > > > > > @ Bill Nick Sami Nathan
> > > > > > >
> > > > > > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> > > > > >
> > > > > > The integrated assembler and this option are more-or-less orthogonal
> > > > > > to each other. One can still use the GNU assembler with PGO. If you're
> > > > > > having an issue, it may be related to ClangBuiltLinux issue #1250.
> > > > > >
> > > > > > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > > > > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > > > > > >
> > > > > > I know Nick did several tests with PGO. He may have looked into it
> > > > > > already, but we can check.
> > > > > >
> > > > >
> > > > > Reproducible.
> > > > >
> > > > > LLVM_IAS=1 + DWARF5 = Not bootable
> > > > >
> > > > > I will try:
> > > > >
> > > > > LLVM_IAS=1 + DWARF4
> > > > >
> > > >
> > > > I was not able to boot into such a built Linux-kernel.
> > > >
> > > PGO will have no effect on debugging data. If this is an issue with
> > > DWARF, then it's likely orthogonal to the PGO patch.
> > >
> > > > For me worked: DWARF2 and LLVM_IAS=1 *not* set.
> > > >
> > > > Of course, this could be an issue with my system's LLVM/Clang.
> > > >
> > > > Debian clang version
> > > > 12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724
> > > >
> > > Please use the official clang 11.0.1 release
> > > (https://releases.llvm.org/download.html), modifying the
> > > kernel/pgo/Kconfig as I suggested above. The reason we specify clang
> > > 12 for the minimal version is because of an issue that was recently
> > > fixed.
> > >
> >
> > I downgraded to clang-11.1.0-rc1.
> > ( See attachment. )
> >
> > Doing the first build with PGO enabled plus DWARF5 and LLVM_IAS=1 works.
> >
> > But again after generating vmlinux.profdata and doing the PGO-rebuild
> > - the resulting Linux-kernel does NOT boot in QEMU or on bare metal.
> > With GNU/as I can boot.
> >
> > So this is independent of DWARF v4 or DWARF v5 (LLVM_IAS=1 and DWARF
> > v2 is not allowed).
> > There is something wrong (here) with passing LLVM_IAS=1 to make when
> > doing the PGO-rebuild.
> >
> > Can someone please verify and confirm that the PGO-rebuild with
> > LLVM_IAS=1 boots or boots not?
>
> I was able to build+boot with LLVM_IAS=1 on my personal laptop (no
> dwarf 5, just mainline+v5).
>

To clarify:

I can build a PGO-enabled Linux-kernel and boot it.
Afterwards generate a vmlinux.profdata.
In a next step: A rebuild without PGO-Kconfig disabled + LLVM_IAS=1
does not boot.

- Sedat -

> >
> > Thanks.
> >
> > - Sedat -
> >
> > > > Can you give me a LLVM commit-id where you had success with LLVM_IAS=1
> > > > and especially CONFIG_DEBUG_INFO_DWARF5=y?
> > > > Success means I was able to boot in QEMU and/or bare metal.
> > > >
> > > The DWARF5 patch isn't in yet, so I don't want to rely upon it too much.
>
> I agree, providing test results with patches that haven't landed yet
> can cloud the interpretation of results.  It would be helpful to drop
> local patch sets before trying this.
>
> If the resulting image still isn't working for you, can you please
> provide your config? Surely we'd be able to reproduce boot failures in
> QEMU?  Nothing comes to mind about a change of assemblers causing an
> issue; I would assume assembly cannot be instrumented by the compiler
> (even though the compiler is the "driver" of the assembler).
>
> The hash warnings are certainly curious.
> IndexedInstrProfReader::getInstrProfRecord() is the only place in LLVM
> sources that can emit that.
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUWtKqEhaJSbbQomC%2BMz%2BuRgkWu72vyxPbif0nG1Vvr3g%40mail.gmail.com.
