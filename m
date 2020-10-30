Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSUO576AKGQEMD3HNGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F07A29FF2F
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 08:57:00 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id r13sf2408014ooi.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 00:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604044618; cv=pass;
        d=google.com; s=arc-20160816;
        b=n3huexgDPKzfTl5hj7Tau3XbMTSJ9TBj0TiZrRjVIuTEPrsOM9Vx9ADKl8kKv0fMHN
         k46g915Gwo2AVNIJVvLUtmapV0d0y4wr9aW38Qri+SXoF7ijQHmMLBB/kRYwz/j33jEA
         G3sgHaTmJCJq/bxEaPIPlPk4wZUbYgnzK8lqncAoG51SmiWdx2aF2ryiQRjYwrqPSkyx
         AaaZjPOb/zFzODty0F4lfccqf00gPzM2vjJS5u9hW1CHALm+6lbLSh5Q8pVW4fnK81rM
         Kz0PJI/2IJg7L2lfj5Gdol0q8nIP9in8VGJ6LwiH9qmZZ1xR7ot8lvGAFWdrCA05iigS
         BqQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature:dkim-signature;
        bh=wDzNIZ3zGRHsmQCbK+jRwsE23otB3zTh03l2mfMqqXI=;
        b=izs3zBcD2Fhqjh/NE1GgPZSdBJx2Z8oNV0siCg/Mtqnp0coiY5cjdxg4DQXC7D3STM
         mxqGfS3nY+eYuH40CBrvI45+5RDHLYL9pb65rsj/YKbnK+eujbYsRLvCNHbz6+ZMwnCI
         1suuB/X7K50GgOWshSYtpzcGKWHRM11dFPA/qnYzo3B13qFSvyMTTS0ajEh86Ig8tmgz
         H3i0gTL3k7tuIcw9/WMtLZO86ZBl0hpoHazIlzoEK1qnHuAcFv3YMJartjsCX6k4ZbsB
         5XnY31mLTz1f2CaqTH53y28nX9l4O0rclAym7HxVcuULM3VwDBgEetuiWwGYziFpklqX
         9KMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cp6HIZGn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wDzNIZ3zGRHsmQCbK+jRwsE23otB3zTh03l2mfMqqXI=;
        b=Hg2cHJt0BFYqh2AKxXM6GGrAak9war0FW8rHvyMC5uVrDDhsPvZiALMjI/GGnwF021
         0Yo+ZYonad1IF9pOUYDK2Kk2f+MX/FzTcwHnpn27eIdAYyFz0w7qpT9+xVhGzz9skgE+
         b16PBEHcfqsokIC7pCtx4b824tXf9bh0BIb2oYhet9Y/9ITBHm4ANT7KksNkm8qljHY+
         CPK5I56XwY20a4bYg58WHsKRW01QQgVcZflpt/0WWOlN9YGg2yvi+hCbnqlcgGlu8QK3
         3xmfn+bP0uTzA3vAhofMNOuf4P/+mKEVE2pBQuL9EonlTSM1k2asDGs0Df3rLoWIivTm
         CFaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wDzNIZ3zGRHsmQCbK+jRwsE23otB3zTh03l2mfMqqXI=;
        b=L9DtdDoEl4r/rxhhTGIjy8+v/MIq9MYgiP4pY4eobngN2A54+R2e2A2mmb7TRR7Jzz
         +1Bj8TSTwBb/WE2Fpk5NtTIpeR4O0pU5BlyPnmlV0MkMTxDUEi/fRQswiIOHw18DKdu2
         MX8vNbdTd4eqG+AvdDafhTRL/7tdV1q938msQ6aZpTNd+tCZJEZESDZhaY8RK1sTFINj
         qqxm/eGGc7DdENYER/F3i06ifXXvT/BQ3fH5vsia0KRGwH8f55gBVAo9IuEC0eOmhQH8
         6ftlhWa4v5lO994rcgMrsTmkJRwE0/vlkhipfN6BUKVUEVlIodl62nNDnsJv3Krvgxlp
         TmhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wDzNIZ3zGRHsmQCbK+jRwsE23otB3zTh03l2mfMqqXI=;
        b=lo/DGqjMIop44QT66LF9QDkMHApaN81Ir9d+QWgxti435jJBIFuLPZ0WifGZLw0bXE
         VQNZ3tLcGHUHkhJ8U2cKHUwbPXu486cSS9hPGFkuRMgmEDangnbNe+OfIvBBDyQE8PlP
         ijh3u41yfP+Ymm4NJ0Hk/SAT6Xw4R507VfSnuAIijmjvRO6iGGyIRmkDoYjz3cAI2goB
         VbO4gdd9N2tHWrUJD82mb2a5C2wwqtnXJyUnTLysr9Ha3pxKYkEAkq/DVtzpSn15W5ng
         4NB0UK/ulbyqDdHr0zpx++DBXUakjjR/MfwFzCNw5+aKffEyx1EeM7gBf4VH53c1Fk/5
         x44g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AqbLsopItVZ2j1OwMtgp2kMJMHEpo0dgQ/hqvENXaBW4al7zm
	u85rbD7jgCCFWskvdVeXnaU=
X-Google-Smtp-Source: ABdhPJzZ0kEvpjVBLtSYmJGTyRfB+zwbmUc1vW+Tim4yQos73DXe9DKChFEN1wo0qVVUYZccWR1nPw==
X-Received: by 2002:aca:57d5:: with SMTP id l204mr784298oib.63.1604044618801;
        Fri, 30 Oct 2020 00:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls1410313oth.1.gmail; Fri,
 30 Oct 2020 00:56:58 -0700 (PDT)
X-Received: by 2002:a9d:822:: with SMTP id 31mr768720oty.224.1604044618430;
        Fri, 30 Oct 2020 00:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604044618; cv=none;
        d=google.com; s=arc-20160816;
        b=UFu/BiYv3dKls7Qvuk21rUI0y+ZaQ67m2XB6ZhpF+H8YYLksoWckHIbwIc0s4ee7iI
         0VR3a/zPmC2PX9viMlK69gbTNz8zR+3RESmdY1gKh/qqUB/5eKbOMABi7/+7LDFHfmlr
         +78brjUKxtWgh+pC3fRSUo2xJ//Trm1rfoAsA4CF1UJ/TqFMDmAaYJPrONJwnJfj5dWu
         QpJfzOov689EPykFcejjkYJv+AJ621c3HMeonU5Mt2no0cDUQbB8Bz5B5HNnkFNxVz9m
         JDIXLr1ElEUYvQSb97ESY0nc6LEl2J1u8Ck+mJIwpqI5vsHFfeI6LFcLOl5+AR2MBeDR
         z26Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jHNUEW4Xs+lzszyWALs6FGKJeGa602Suw/FBHUEeNog=;
        b=GoGeyGYNjlzvD9KchCJsmU9DUDsxZfw3b3ewG61KXRgnUBFCqMqIt/yydDusgnsGyH
         yqgf60ZhVBdFEUCFqYDMJId0/EQaCgmDYrmR6mjD2oWXfX4FFE2QVQ2+QAeD/gsvG20i
         7naKkGnoiTXvSplVbz7w/kr2UNQBt1STnEg9rsyoLd7750eRj7vi3ZqbJz8VdnqWU2gh
         zw9OXVLocKuYqPglT3nNASE0jEPjbJwvp3cTCUX8nQAW1Mq5wfJ0zTUeDt+uAbf8dkih
         r4c1P3Go5p/JKML6dwvrS9hN/a+QBHqoXrGB9woOqt+3qMC8mZ1MXdJEcE+vfGllHpG5
         Flvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cp6HIZGn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id w26si349568oih.1.2020.10.30.00.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 00:56:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id k6so5748146ilq.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 00:56:58 -0700 (PDT)
X-Received: by 2002:a92:ca90:: with SMTP id t16mr882865ilo.33.1604044618045;
        Fri, 30 Oct 2020 00:56:58 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r22sm4107608ioc.12.2020.10.30.00.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 00:56:57 -0700 (PDT)
Date: Fri, 30 Oct 2020 00:56:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Abbott Liu <liuwenliang@huawei.com>,
	Russell King <linux@armlinux.org.uk>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
Message-ID: <20201030075655.GA1848109@ubuntu-m3-large-x86>
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86>
 <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86>
 <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cp6HIZGn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Fri, Oct 30, 2020 at 08:52:53AM +0100, Ard Biesheuvel wrote:
> On Fri, 30 Oct 2020 at 02:32, Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Thu, Oct 29, 2020 at 05:38:22PM -0700, Nick Desaulniers wrote:
> > > On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wrote:
> > > > > This is the 16th and final (knock on wood) version of
> > > > > KASan for ARM32.
> > > > >
> > > > > Changes since v15:
> > > > >
> > > > > - Things now work on all boards we have tested on including
> > > > >   Broadcom and i.MX6Q.
> > > > >
> > > > > - Folded in a fix from Ard to PAGE_ALIGN() the end of
> > > > >   mappings making everything work on all Broadcom board.
> > > > >
> > > > > - Folded in a fix from Ahmad Fatoum making things work
> > > > >   with fortify on i.MX6Q.
> > > > >
> > > > > - Testing and testing and testing on build servers.
> > > > >
> > > > > - We are good to go.
> > > > >
> > > > > I will now put this in Russell's patch tracker for v5.11.
> > > > >
> > > > > There is a git branch you can pull in:
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-inte=
grator.git/log/?h=3Dkasan
> > > > >
> > > > > This branch includes Ard's two patches already in Russell's
> > > > > patch tracker.
> > > > >
> > > > >
> > > > > Abbott Liu (1):
> > > > >   ARM: Define the virtual space of KASan's shadow region
> > > > >
> > > > > Andrey Ryabinin (3):
> > > > >   ARM: Disable KASan instrumentation for some code
> > > > >   ARM: Replace string mem* functions for KASan
> > > > >   ARM: Enable KASan for ARM
> > > > >
> > > > > Linus Walleij (1):
> > > > >   ARM: Initialize the mapping of KASan shadow memory
> > > > >
> > > > >  Documentation/arm/memory.rst                  |   5 +
> > > > >  Documentation/dev-tools/kasan.rst             |   4 +-
> > > > >  .../features/debug/KASAN/arch-support.txt     |   2 +-
> > > > >  arch/arm/Kconfig                              |  10 +
> > > > >  arch/arm/boot/compressed/Makefile             |   1 +
> > > > >  arch/arm/boot/compressed/string.c             |  19 ++
> > > > >  arch/arm/include/asm/kasan.h                  |  33 ++
> > > > >  arch/arm/include/asm/kasan_def.h              |  81 +++++
> > > > >  arch/arm/include/asm/memory.h                 |   5 +
> > > > >  arch/arm/include/asm/pgalloc.h                |   8 +-
> > > > >  arch/arm/include/asm/string.h                 |  26 ++
> > > > >  arch/arm/include/asm/thread_info.h            |   8 +
> > > > >  arch/arm/include/asm/uaccess-asm.h            |   2 +-
> > > > >  arch/arm/kernel/entry-armv.S                  |   3 +-
> > > > >  arch/arm/kernel/entry-common.S                |   9 +-
> > > > >  arch/arm/kernel/head-common.S                 |   7 +-
> > > > >  arch/arm/kernel/setup.c                       |   2 +
> > > > >  arch/arm/kernel/unwind.c                      |   6 +-
> > > > >  arch/arm/lib/memcpy.S                         |   3 +
> > > > >  arch/arm/lib/memmove.S                        |   5 +-
> > > > >  arch/arm/lib/memset.S                         |   3 +
> > > > >  arch/arm/mm/Makefile                          |   5 +
> > > > >  arch/arm/mm/kasan_init.c                      | 292 ++++++++++++=
++++++
> > > > >  arch/arm/mm/mmu.c                             |  18 ++
> > > > >  arch/arm/mm/pgd.c                             |  16 +-
> > > > >  arch/arm/vdso/Makefile                        |   2 +
> > > > >  26 files changed, 561 insertions(+), 14 deletions(-)
> > > > >  create mode 100644 arch/arm/include/asm/kasan.h
> > > > >  create mode 100644 arch/arm/include/asm/kasan_def.h
> > > > >  create mode 100644 arch/arm/mm/kasan_init.c
> > > > >
> > > > > --
> > > > > 2.26.2
> > > > >
> > > >
> > > > After this series was applied and available in -next, ARCH=3Darm LL=
VM=3D1
> > > > allyesconfig builds started failing:
> > > >
> > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi-=
 KCONFIG_ALLCONFIG=3D<(echo CONFIG_CPU_BIG_ENDIAN=3Dn) LLVM=3D1 distclean a=
llyesconfig vmlinux
> > > > ...
> > > > ld.lld: error: section: .exit.data is not contiguous with other rel=
ro sections
> > > > ...
> > > >
> > > > $ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730] Add lin=
ux-next specific files for 20201029
> > > > # good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge tag 'trace=
-v5.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-=
trace
> > > > git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730' '23859a=
e44402f4d935b9ee548135dd1e65e2cbf4'
> > > > # bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge remote-trac=
king branch 'mtd/mtd/next' into master
> > > > git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
> > > > # bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge remote-trac=
king branch 'sunxi/sunxi/for-next' into master
> > > > git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
> > > > # good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge remote-tra=
cking branch 'drm-misc-fixes/for-linux-next-fixes' into master
> > > > git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
> > > > # bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge remote-trac=
king branch 'mvebu/for-next' into master
> > > > git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
> > > > # bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge remote-trac=
king branch 'arm-soc/for-next' into master
> > > > git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
> > > > # good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge branch 'as=
m-generic-cleanup' into asm-generic
> > > > git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
> > > > # good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge remote-tra=
cking branch 'kbuild/for-next' into master
> > > > git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
> > > > # bad: [20f96e606509ee5084690179afe1810b95617a92] Merge branches 'f=
ixes' and 'misc' into for-next
> > > > git bisect bad 20f96e606509ee5084690179afe1810b95617a92
> > > > # good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 9014/2: Rep=
lace string mem* functions for KASan
> > > > git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
> > > > # good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 9016/2: Ini=
tialize the mapping of KASan shadow memory
> > > > git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
> > > > # bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020/1: mm: =
use correct section size macro to describe the FDT virtual address
> > > > git bisect bad fc2933c133744305236793025b00c2f7d258b687
> > > > # bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017/2: Enab=
le KASan for ARM
> > > > git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
> > > > # first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM:=
 9017/2: Enable KASan for ARMog
> > > >
> > > > An allyesconfig kernel compiled with clang does not link properly w=
ith
> > > > ld.bfd without a workaround [1], which I do not have time to apply =
and
> > > > test now but can later if it is relevant. I have not done any triag=
e on
> > > > this yet either but I wanted to get the report out in case there is
> > > > anything obvious.
> > > >
> > > > [1]: https://github.com/ClangBuiltLinux/linux/issues/325
> > >
> > > relro? smells like:
> > > https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaulniers@go=
ogle.com/T/#u
> > >
> >
> > Huh, did not even realize that the error messages were the same, my bad=
!
> >
> > This issue is simple enough to produce by just adding CONFIG_KASAN=3Dy =
to
> > multi_v7_defconfig. I tried adding '-z norelro' to LDFLAGS_vmlinux in
> > arch/arm/Makefile and it fixes the build error but the resulting kernel
> > does not boot in QEMU.
> >
> > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- LLV=
M=3D1 distclean defconfig
> >
> > $ scripts/config -e KASAN
> >
> > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- LLV=
M=3D1 olddefconfig zImage
> >
> > $ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
> > /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: 3176448 =
bytes
> > + timeout --foreground 3m unbuffer qemu-system-arm -machine virt -no-re=
boot -append 'console=3DttyAMA0 ' -display none -initrd /home/nathan/cbl/gi=
thub/boot-utils/images/arm/rootfs.cpio -kernel /home/nathan/src/linux-next/=
arch/arm/boot/zImage -m 512m -nodefaults -serial mon:stdio
> > + RET=3D124
> > + set +x
> >
> > '-z norelro' boots fine without KASAN so I assume there is something up
> > specifically with KASAN and LLVM for ARM.
> >
>=20
> How long did you wait for it to boot? Booting a KASAN kernel under
> QEMU emulation is going to be *very* slow.

The timeout command above is 3m and there was no output from the kernel
in that amount of time. What kind of time should I be reasonably
expecting?

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201030075655.GA1848109%40ubuntu-m3-large-x86.
