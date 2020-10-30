Return-Path: <clang-built-linux+bncBD63HSEZTUIBBY4M576AKGQE43CSRLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D9B29FF1A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 08:53:08 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id z23sf3760279iog.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 00:53:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604044387; cv=pass;
        d=google.com; s=arc-20160816;
        b=oeyiDK46Q34z7T9SlEYLrkc31i65ZnEGz1hvtDr8jEwJZ0GG/U/SNAetLiMloMmbv+
         D7tqR7hy0xvpujr905tCu/JZD+pvMWcESQzGY+fk0RngQnCXozUarfg2VSMli7aDNKht
         vX+tFdbdmiknMTML0ppIixuZ7BGRjh0PnZF4rsQ1t58Kw4SgooeiPqCRfCSJ5yi2VHSM
         2Ma13LVH7oAuAc2FOZ/l1rJnFo5pMV/+ozvFBuUWcmj7aYrR6E2M+UKb1//3l/mz5Pif
         iMXuTKCbJ6jC4vn6Yp5vZc1XqgTeioaQHPN3+s2kj+Xu2Zh+4vAccHFJk7eRzK3fwGF2
         /cIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=0wm4geZkG1pEyw4MIkXqAGtM2sq7IgnP4jYlU63X0r0=;
        b=SwykMQgi01Dl51PvlE/M1neu3bLjqtOwzYuubU5PWO91i5JIsqQBxdIqqf2YiVh3JE
         /PwbTHTiMRMih9HqUdzjNF22lRLqZNLDbT8XalrXluUsNiZfhssC++en2pTL20Me1EMb
         BZO63oYFP+xEjplQAHZOQKu4kMbhvqioEZi2qP2dmIu/oAsrSJ2tD/zhDBBuwMB1J8MV
         2XpaOJUwqHIbuBD/jM4EmyAdtuoMxmqT88PrFXMhmQutS/lqhgUjEl61Qtd7H+4ovAhe
         EjWZtOF/0tbGT8kzSdAPGHaweMq86vkjoUksB75FLdgWCYqBk+TC+delbTHdpWsx1njK
         bfog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qziuRuM3;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0wm4geZkG1pEyw4MIkXqAGtM2sq7IgnP4jYlU63X0r0=;
        b=Q5LsW59ao5JiRY/KMdwhpjm41MAm8RS30DhGP9yZdr79e+yvrLuZGtI38vuuPE21mp
         wstTq8qBnogWbbUQKlUyGQuyEvy90TZQ/PrgTeeu5a6IJAahya+o62MWKUGev3Oq3TKl
         BCrbSWcjquR8b+GGh/46FgDgZWxheEC21Ik3KBG3MrEGs0HbNRabPx/CUB4cD1nJOt+r
         wC7UJ7cG2oKwLXGWurMuoDlRtI6U8jz9Wh0w7ZU0kuYl1HXWvB563FV8BYlv0bgqQtsV
         lSPgVUjkBrNulC7CofCVoPNoz0FcPKijN2I0DmsJkW41bED3QhHD29SEuUnT3PRyDtws
         crHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0wm4geZkG1pEyw4MIkXqAGtM2sq7IgnP4jYlU63X0r0=;
        b=AtShVAiT1PACFq3m/gJnOog+uOp/y2z40JezUF2VxYNV8M+HvzaLGGXY9J7kAZBbFj
         vm/i8jhijg7UBTBCB5NKG7mNqcsiIw6YZb4oOCjeE/e75R2M+Asby2jSbzfuPRQEl7b4
         hu9wAkrcUg2wMjrA5OjEWAUZAmDFc2yhKCRXJVzU18FQKEZhTzzhyg7x1zwVKzR7csaR
         kwopJMtrmIPLN83tTNYqiQ3p9PNtcMfe6VXOgPpT0NLRaC4/L+MDvU0ceB85Y9aRRtab
         +xS9cnAfThH8ve22TPSXwwUtqXbuASJzObUtyqMo5HdrrC3gZgS/36fNQt9PGEBAYB9p
         6saw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533R9G3OoVygxb/LpkOC8tCMlFmzTBuNZUPgUk8oU8MQ6PFuof6w
	FroPdKIyg53aRn0oWX/OZgQ=
X-Google-Smtp-Source: ABdhPJwn4iKFqde+pwq5MkBYaTwWiqrxkaqgOA++vbHgrnpMEKuIT2ZhndCZEBaZwhQ+ps3aq1VfMw==
X-Received: by 2002:a92:4b07:: with SMTP id m7mr978511ilg.239.1604044387497;
        Fri, 30 Oct 2020 00:53:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1308:: with SMTP id r8ls681834jad.7.gmail; Fri, 30
 Oct 2020 00:53:07 -0700 (PDT)
X-Received: by 2002:a02:3b2c:: with SMTP id c44mr973008jaa.134.1604044387021;
        Fri, 30 Oct 2020 00:53:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604044387; cv=none;
        d=google.com; s=arc-20160816;
        b=jtLW9glSaDz/7iEAEAsLdXsA0hEzsf3wuD0d3j0trXdvYC9DR+mTTe7dPP6Ulw9ZXx
         m0WHrOt3dtxggfb4p7NDPmc+GD/mXMUoXkLtyZMf/hpDh5NR9VHjlcDWAyVH0o6K2Fbt
         JrsXP8//wWrp4y6L/1QQbJYgXMhB/2RjI5rwhM7sfTXwIJvH0eZ8ZJNCnT9qj4Pk/L4h
         ciOZGSn53y0kfe6J8dWjorFrIUe1ZTYSKqhLzJO2rOwmW7M2cLTGlpbal8oHueN7cKrc
         D0ojoMcTrlK8PdxIat1w1dMBSqG067KIsk3M71U+fnokbLsQWR+on98UKv44OBHBqaqe
         iI8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g0qxibgQfyMmAN8DWq24PNtYKEWCSGh3GlWM6PM/tNQ=;
        b=ZMZ2Gp3ALtwt4yI8BHNKVQshpcYyVKl6zKQx2JVntekQBM2Tja4Lybj+k+a6EMIqXV
         dWZSZDjLD0feAQBuHtr4O7lQLuEeKhCExrR0tf58SiJJOsIk5z1ni6rpJu8STt9j2tDd
         74CoKxxVTYfUax40L27U5wCvp9c3IGfnKeqP8NQs3hy4ausR9lUTz0cHdOEXm1dLxl/k
         ovJW4RiPUwD+HzycuVJn6GUcFSUAybsxfC4I1eeNTwa6BM8t8UeawkchTioHBeWwjFdc
         bCqwWqEL+Rh2dQaf2mO+PqKAzH/2/+PH+m5CqN9PgDDh169UjLtBEiVFx20QcjOaeWx+
         +HOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qziuRuM3;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o19si268778ilt.2.2020.10.30.00.53.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 00:53:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C1BC622203
	for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 07:53:05 +0000 (UTC)
Received: by mail-oo1-f54.google.com with SMTP id n2so1379514ooo.8
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 00:53:05 -0700 (PDT)
X-Received: by 2002:a4a:49d1:: with SMTP id z200mr815066ooa.13.1604044384939;
 Fri, 30 Oct 2020 00:53:04 -0700 (PDT)
MIME-Version: 1.0
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86>
In-Reply-To: <20201030013228.GA2519055@ubuntu-m3-large-x86>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 30 Oct 2020 08:52:53 +0100
X-Gmail-Original-Message-ID: <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
Message-ID: <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, Abbott Liu <liuwenliang@huawei.com>, 
	Russell King <linux@armlinux.org.uk>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qziuRuM3;       spf=pass
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

On Fri, 30 Oct 2020 at 02:32, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Oct 29, 2020 at 05:38:22PM -0700, Nick Desaulniers wrote:
> > On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wrote:
> > > > This is the 16th and final (knock on wood) version of
> > > > KASan for ARM32.
> > > >
> > > > Changes since v15:
> > > >
> > > > - Things now work on all boards we have tested on including
> > > >   Broadcom and i.MX6Q.
> > > >
> > > > - Folded in a fix from Ard to PAGE_ALIGN() the end of
> > > >   mappings making everything work on all Broadcom board.
> > > >
> > > > - Folded in a fix from Ahmad Fatoum making things work
> > > >   with fortify on i.MX6Q.
> > > >
> > > > - Testing and testing and testing on build servers.
> > > >
> > > > - We are good to go.
> > > >
> > > > I will now put this in Russell's patch tracker for v5.11.
> > > >
> > > > There is a git branch you can pull in:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integr=
ator.git/log/?h=3Dkasan
> > > >
> > > > This branch includes Ard's two patches already in Russell's
> > > > patch tracker.
> > > >
> > > >
> > > > Abbott Liu (1):
> > > >   ARM: Define the virtual space of KASan's shadow region
> > > >
> > > > Andrey Ryabinin (3):
> > > >   ARM: Disable KASan instrumentation for some code
> > > >   ARM: Replace string mem* functions for KASan
> > > >   ARM: Enable KASan for ARM
> > > >
> > > > Linus Walleij (1):
> > > >   ARM: Initialize the mapping of KASan shadow memory
> > > >
> > > >  Documentation/arm/memory.rst                  |   5 +
> > > >  Documentation/dev-tools/kasan.rst             |   4 +-
> > > >  .../features/debug/KASAN/arch-support.txt     |   2 +-
> > > >  arch/arm/Kconfig                              |  10 +
> > > >  arch/arm/boot/compressed/Makefile             |   1 +
> > > >  arch/arm/boot/compressed/string.c             |  19 ++
> > > >  arch/arm/include/asm/kasan.h                  |  33 ++
> > > >  arch/arm/include/asm/kasan_def.h              |  81 +++++
> > > >  arch/arm/include/asm/memory.h                 |   5 +
> > > >  arch/arm/include/asm/pgalloc.h                |   8 +-
> > > >  arch/arm/include/asm/string.h                 |  26 ++
> > > >  arch/arm/include/asm/thread_info.h            |   8 +
> > > >  arch/arm/include/asm/uaccess-asm.h            |   2 +-
> > > >  arch/arm/kernel/entry-armv.S                  |   3 +-
> > > >  arch/arm/kernel/entry-common.S                |   9 +-
> > > >  arch/arm/kernel/head-common.S                 |   7 +-
> > > >  arch/arm/kernel/setup.c                       |   2 +
> > > >  arch/arm/kernel/unwind.c                      |   6 +-
> > > >  arch/arm/lib/memcpy.S                         |   3 +
> > > >  arch/arm/lib/memmove.S                        |   5 +-
> > > >  arch/arm/lib/memset.S                         |   3 +
> > > >  arch/arm/mm/Makefile                          |   5 +
> > > >  arch/arm/mm/kasan_init.c                      | 292 ++++++++++++++=
++++
> > > >  arch/arm/mm/mmu.c                             |  18 ++
> > > >  arch/arm/mm/pgd.c                             |  16 +-
> > > >  arch/arm/vdso/Makefile                        |   2 +
> > > >  26 files changed, 561 insertions(+), 14 deletions(-)
> > > >  create mode 100644 arch/arm/include/asm/kasan.h
> > > >  create mode 100644 arch/arm/include/asm/kasan_def.h
> > > >  create mode 100644 arch/arm/mm/kasan_init.c
> > > >
> > > > --
> > > > 2.26.2
> > > >
> > >
> > > After this series was applied and available in -next, ARCH=3Darm LLVM=
=3D1
> > > allyesconfig builds started failing:
> > >
> > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- K=
CONFIG_ALLCONFIG=3D<(echo CONFIG_CPU_BIG_ENDIAN=3Dn) LLVM=3D1 distclean all=
yesconfig vmlinux
> > > ...
> > > ld.lld: error: section: .exit.data is not contiguous with other relro=
 sections
> > > ...
> > >
> > > $ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730] Add linux=
-next specific files for 20201029
> > > # good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge tag 'trace-v=
5.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-tr=
ace
> > > git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730' '23859ae4=
4402f4d935b9ee548135dd1e65e2cbf4'
> > > # bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge remote-tracki=
ng branch 'mtd/mtd/next' into master
> > > git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
> > > # bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge remote-tracki=
ng branch 'sunxi/sunxi/for-next' into master
> > > git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
> > > # good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge remote-track=
ing branch 'drm-misc-fixes/for-linux-next-fixes' into master
> > > git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
> > > # bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge remote-tracki=
ng branch 'mvebu/for-next' into master
> > > git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
> > > # bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge remote-tracki=
ng branch 'arm-soc/for-next' into master
> > > git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
> > > # good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge branch 'asm-=
generic-cleanup' into asm-generic
> > > git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
> > > # good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge remote-track=
ing branch 'kbuild/for-next' into master
> > > git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
> > > # bad: [20f96e606509ee5084690179afe1810b95617a92] Merge branches 'fix=
es' and 'misc' into for-next
> > > git bisect bad 20f96e606509ee5084690179afe1810b95617a92
> > > # good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 9014/2: Repla=
ce string mem* functions for KASan
> > > git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
> > > # good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 9016/2: Initi=
alize the mapping of KASan shadow memory
> > > git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
> > > # bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020/1: mm: us=
e correct section size macro to describe the FDT virtual address
> > > git bisect bad fc2933c133744305236793025b00c2f7d258b687
> > > # bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: Enable=
 KASan for ARM
> > > git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
> > > # first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9=
017/2: Enable KASan for ARMog
> > >
> > > An allyesconfig kernel compiled with clang does not link properly wit=
h
> > > ld.bfd without a workaround [1], which I do not have time to apply an=
d
> > > test now but can later if it is relevant. I have not done any triage =
on
> > > this yet either but I wanted to get the report out in case there is
> > > anything obvious.
> > >
> > > [1]: https://github.com/ClangBuiltLinux/linux/issues/325
> >
> > relro? smells like:
> > https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaulniers@goog=
le.com/T/#u
> >
>
> Huh, did not even realize that the error messages were the same, my bad!
>
> This issue is simple enough to produce by just adding CONFIG_KASAN=3Dy to
> multi_v7_defconfig. I tried adding '-z norelro' to LDFLAGS_vmlinux in
> arch/arm/Makefile and it fixes the build error but the resulting kernel
> does not boot in QEMU.
>
> $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- LLVM=
=3D1 distclean defconfig
>
> $ scripts/config -e KASAN
>
> $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- LLVM=
=3D1 olddefconfig zImage
>
> $ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
> /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: 3176448 by=
tes
> + timeout --foreground 3m unbuffer qemu-system-arm -machine virt -no-rebo=
ot -append 'console=3DttyAMA0 ' -display none -initrd /home/nathan/cbl/gith=
ub/boot-utils/images/arm/rootfs.cpio -kernel /home/nathan/src/linux-next/ar=
ch/arm/boot/zImage -m 512m -nodefaults -serial mon:stdio
> + RET=3D124
> + set +x
>
> '-z norelro' boots fine without KASAN so I assume there is something up
> specifically with KASAN and LLVM for ARM.
>

How long did you wait for it to boot? Booting a KASAN kernel under
QEMU emulation is going to be *very* slow.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXG4VgyvZtTcCycNTQA%2Bsddi49%3DMj7uaEjZnw%3DRt5mt4sg=
%40mail.gmail.com.
