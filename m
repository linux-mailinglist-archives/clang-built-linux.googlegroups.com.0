Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVEJ2T5QKGQESEX3IMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D42F27F4FD
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:21:10 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id o28sf1836214qkm.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:21:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601504469; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfKKYygjdnM+3XW07e41V1I5qz0/hJW1E0uIdhkecDNXeSa+5j8w1iDCnH1yXFPL6K
         IyrBdQ8PlsjN5BPFqNOq/thf869r+1aFg8AC2nFPS0qvLKCXBh4KJAJjiRuSg7Qnqxwp
         OH/KDwDnVgqif5L4zsCTnqAyYS06H2+24PB0qV9RFQTgoTJLkWrDsumgtGJr4ybaiEsv
         BdTr1kCd/MNIuDbxJ4sKHGzF8fmj8sTJ42aIIZAbyvxI5VoR3S0gqrf6Seq+hEEaMpiE
         zOpmw5IyFW7gdMjy4bRz9gvIzGdCDcUVpjPk2mDQ+aCboX4oFPQldab9Fjc18qRFL6Ll
         N9Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MWSnyjGFuL081kQqhgeVuVb4bHaZwhu3fidGcWEn5uQ=;
        b=dPaL0QxQrMA6Cr6LuG18QN1obgDx63jl8wPGVDdmrH6pRktfhiGiYN1Zs1yPy7/J/K
         zAeFcz88rhZbfyGOSgGznZs/BEVx5bsccDHjRH9Tn9mODJKXi333UuOw0Dk6h34BsQo8
         +En5IIAP0zhnf+if1biz1XBxoJ0RsHGuiROlcgR+Wc+hlhl0v9clikO0zDe2xdt8mPvx
         SJPw2PQIjbdPl3wAvFIuc2Zi/LXpGmgDs4uHUVS+S2xg1U/N+iQOYKOTdtqFA5HGNFxh
         2D9onP9aVeq9CKOm4lwqhBE0rLJmTQRZnYA09l2pXq0t+VA1qm9G/8y/acsugPvJar+O
         9lUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O7yCy3sg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWSnyjGFuL081kQqhgeVuVb4bHaZwhu3fidGcWEn5uQ=;
        b=cQFO/rNTDL9/qQcaT2fDsYCjOuv3lkZDJ7dT1a4qwPn4FJBGmFaRyIysnnCKNEIG9t
         9EovYbO+ZJR+95YsgdamgWhwzeai02VAwAhK0dmyD9CiaL80f0oB+PyqP2iIgo38kmVF
         6HSH6SBeHDC2dSPO++ZNgAsNmIXEeqL84lK2CAz7xGP17FFSSeuZOAt/2u69k1rpuvXA
         9bYuhu9hWtDStHN9Nv+imj0Qrs867Rz+lGn0YVLKkwphwq0V+Gf5qT5D4dA4EuPoz1Oi
         RxsR4c2oMuYjUDXw/Nd0H7OcTMuCYrkhVc/aT9GXxeadbLTZwvo7NNx3XJrl1iCJxlmU
         myyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWSnyjGFuL081kQqhgeVuVb4bHaZwhu3fidGcWEn5uQ=;
        b=kQeNHPa64QlS6+pjG+q41SNYVcHwTDqIIWgkAywqyIE9GZjc+G30QSvQkavy41Ojhe
         0r4FOLnenlEyYsZa9OliR7hpDU6wrvpFKq8esKpa65G3nll6e4D9Xv4r4ask4Lao2yJn
         PFS1SRQf2o9PrTIBAPsS7hVCXc9tdIXWmPhhwAXc8zNhLJQUfUXQ5AhL2Z6HYEoj8dXK
         AbK5O15iYlFXxPTziK0Wg5x1W5RdG+dkf9WNadcCGiARCLngN60H2vbA0X4bHe5ZyEqm
         9OIX7afnAC7WgXSe1j4Vqvfohy5hwIEKDaqA1kOTF3ThOTWUQCexcl7P8abYvTTKrWWJ
         zURA==
X-Gm-Message-State: AOAM533QJeJrLcG3W/8XVPp2kij4SJV7vNoKjV5/Q53apgGeuuVu+FWU
	19PtJt9Tvlz5WENCGH/t2Qo=
X-Google-Smtp-Source: ABdhPJwKSJnVgIwnhlwK2hd0LwsDgYWBqNOOzISTdyD+fXDraT5mBn0/oTwAUUueFHwmSQABZ2/wXQ==
X-Received: by 2002:a05:620a:11b1:: with SMTP id c17mr4786638qkk.94.1601504469003;
        Wed, 30 Sep 2020 15:21:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2e64:: with SMTP id j91ls1212915qtd.0.gmail; Wed, 30 Sep
 2020 15:21:08 -0700 (PDT)
X-Received: by 2002:ac8:67ce:: with SMTP id r14mr4591016qtp.239.1601504468502;
        Wed, 30 Sep 2020 15:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601504468; cv=none;
        d=google.com; s=arc-20160816;
        b=ODh0FyF/JPbOCgkF0CyzTLr/7dXrXpxIJ9FhczpZMrgdc6j3vqaim+1V3LU4/tuuix
         Vox2k5d7ICmCdRFoZALFERXKungCFEnuLRAqsy1P8mYEyqH+aGusNa0iJedzoaul1tvJ
         k/CHr/6zWux3fttT4njxIJ6I30HLefrbvqzliG3UG1blQ5PKPj5mgcBegiRYtTJHZF5X
         /w+yR/2ebc1kNDERby1LW20BOA5UXxp25wkAO+oc69/gz86rjze/jN0++XI4ak46Tssz
         Wtb3s2u/AOR35FPbZoYSdRlXwsvy40GMb/4yOMQ43NkprdIv8BWUmuIfWyh6iRo7wU+n
         L0Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ePM6QfsM36THSeKgqnpoCi7o8XR/cpqwQC0wJXmRkfY=;
        b=wmnUa6FtEMk64tqaruB6DJlrhFB5Lb1CTOInH5YWBxApq+Xf8btru2lw8FDE5q/kD3
         5xkHRmv0GdlfYoCW+zgDCYCkTFeAWeCor//2eb8l1p39/LHN99R84uh0tWPWiSaD9awO
         mK/JAozlxorP8WH9agIr7qX+1d82qGzcvwMOG/M040GBgEZ9pUdg6nTdy7aq6URkBSAU
         NteAlJ6A0fSGSAGnh0bSyz5MYUII2jfyNFueCq+QEzuGWiOID2gbBngWoAvM+r0/OSvq
         WilnnjnSfNqwcrb64u0Fzqf5UXlG7U7ygmZjVYUQOKHUFW39uXxAp4R9aicEsxH+JX31
         su+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O7yCy3sg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a2si192441qkl.4.2020.09.30.15.21.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id o25so2163948pgm.0
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 15:21:08 -0700 (PDT)
X-Received: by 2002:a62:5586:0:b029:13e:d13d:a108 with SMTP id
 j128-20020a6255860000b029013ed13da108mr4232171pfb.36.1601504467381; Wed, 30
 Sep 2020 15:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com> <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com> <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
In-Reply-To: <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 15:20:55 -0700
Message-ID: <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, "Paul E . McKenney" <paulmck@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	rcu@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O7yCy3sg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Wed, Sep 30, 2020 at 3:06 PM Joe Perches <joe@perches.com> wrote:
>
> On Wed, 2020-09-30 at 14:40 -0700, Nick Desaulniers wrote:
> > On Wed, Sep 30, 2020 at 12:16 PM Joe Perches <joe@perches.com> wrote:
> > > Use a more generic form for __section that requires quotes to avoid
> > > complications with clang and gcc differences.
> > >
> > > Remove the quote operator # from compiler_attributes.h __section macro.
> > >
> > > Convert all unquoted __section(foo) uses to quoted __section("foo").
> > > Also convert __attribute__((section("foo"))) uses to __section("foo")
> > > even if the __attribute__ has multiple list entry forms.
> > >
> > > Signed-off-by: Joe Perches <joe@perches.com>
> > > ---
> > >
> > > This is the current output from the script against next-20200930
> > > attached in this link:
> > >
> > > https://lore.kernel.org/lkml/0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com/
> > >
> > > It might be useful to run the script immediately before
> > > the next -rc1.
> >
> > $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
> > powernv_defconfig
> > $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
> > ...
> > arch/powerpc/boot/main.c:193:44: error: expected ';' after top level declarator
> > static char cmdline[BOOT_COMMAND_LINE_SIZE]
>
> The script does not convert files in
>
>         scripts/
>         tools/
>         uapi/
>         and include/linux/compiler_attributes.h
>
> It otherwise assumes that any __attribute__((__section__
> use should be converted to __section.
>
> If this ppc file is the only file outside of the
> listed exclusions, I can either exclude it directly
> or add compiler.h to it.
>
> You have a preference?

If compiler_types.h which includes compiler_attributes.h is being
implicitly including by Kbuild add `-include` flags to most
translation units in the kernel, it would be nice to be able to use it
everywhere.  I consider open coded __attribute__'s a portability bug.
So including the header in arch/powerpc/boot/*.c would be my
preference.

>
> Perhaps these are also possible files that need exclusions:
>
> ./arch/x86/boot/video.h:#define __videocard struct card_info __section(".videocards") __attribute__((used))
> ./arch/x86/boot/compressed/pgtable_64.c:unsigned long *trampoline_32bit __section(".data");
> ./arch/x86/boot/tty.c:static void __section(".inittext") serial_putchar(int ch)
> ./arch/x86/boot/tty.c:static void __section(".inittext") bios_putchar(int ch)
> ./arch/x86/boot/tty.c:void __section(".inittext") putchar(int ch)
> ./arch/x86/boot/tty.c:void __section(".inittext") puts(const char *str)
> ./arch/s390/boot/startup.c:static struct diag210 _diag210_tmp_dma __section(".dma.data");
> ./arch/powerpc/boot/main.c:     __section("__builtin_cmdline");
> ./arch/powerpc/boot/ps3.c:      __section("__builtin_cmdline");
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DP%2Bj0RaQfHsXPfB0EL3oRgAu8Q0%2BspUOn_v-p2%2B3%3D3pw%40mail.gmail.com.
