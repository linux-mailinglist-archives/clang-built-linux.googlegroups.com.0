Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJFF576AKGQEHDC6CXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A02D2A0042
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 09:45:25 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id t78sf1570687vkb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 01:45:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604047524; cv=pass;
        d=google.com; s=arc-20160816;
        b=jTPbilgyytoNBA9jv/BI/KkYDQ2q89sjc90oZpsBCW9WtisSi2phLlIR4kj9xaRv54
         S8Fl2S6GdYhKR2xmEyjFWPbh6QcfznX+O5vIAIAOdDTSZbW1/IpxRpI8QL85KeMLgDCd
         mwVnGTFZGn4zbSeJl3R3V4K7kBQBjoCmLsrvJOJgOQuxuov80KkFiFRcf94XhtMI0XMq
         kM0iaeZIICq2weLENLfcLSzhBxsg1/qROIc2WIaNXe/cT6zLrMlAFMBnlM/hIpbcOas3
         CCRj5wBs0CWjZ2qDbImZBJou4BHUje8pkecp2pCmbCryDRmYcsi3HA0DEiM2y24kdkD9
         AYjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature:dkim-signature;
        bh=rN/TDMRi9tmR91FyO/ZTPpueGhRrB+z68C6fKokYidQ=;
        b=x7zKigRes45KG+Cbdbs+6reDEyXpoR4KstGnUgX5wdyVIjHkoyQ6IxgQelDD+DxCEK
         RHXRSM6zYOZCb9zzNCK/AhISg5G7ycLXfVUe50d5egjfFEyKp64Ctl7skDRCju94a8OO
         ke95ljXh6RSfRGBt4szBbyAXF61MOEoXn0+r/rJBzoWXbwvWGubRDVGRzeDDRFhlAbox
         TlwC+4TY2LuX4JcqYhKXVRqleEAMfR+iGql9QCvfrzlosblUSm+ylZHZ6D/kl9xF884Z
         Y3vIo7SIiH4smHMMZl4yZU94OwwW7STm/dEAvTexI5ZcFsdfEIDk7fVQ2QybJt3niS9t
         Ca9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jLLjMFjF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rN/TDMRi9tmR91FyO/ZTPpueGhRrB+z68C6fKokYidQ=;
        b=b+KlgHvFLrd3DHlvGp/Ybmp+DrzZxpfzGZXL0hTU8QLeF/AYeH0LNsfLzR2oNJeG5Q
         +Pw05rNUFc6Qf1J642hD2vpN7yGwJxp/JseLRkKwnVf3LXd2sG8Yk87B3MhWIi53sVsE
         +LwK9U96P3PfqaDT4Kj05U4GnnJyNlNYTQy4rUZCYuY6rgJ9Wg/Jnq+H0R0aPz4ZUoUF
         NXtIpfaWykD2wzCOz4E9D7r6AYBg+k1HhOBvfYsG6FfEfTZLpmu317xSqyuBRUH5IRqv
         xJV5gCQmWejRRKvEj/xyc/wVc/81uUQHgYFrbQwAH3XtTSIMnRx1wu6dsh4NRuvMbjZE
         rsgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rN/TDMRi9tmR91FyO/ZTPpueGhRrB+z68C6fKokYidQ=;
        b=rEtLH0/PtiPS/timae+cEHwkD2rQQ6nuL1Owwhk+p58YUI8Ne087l9KDEhdEonRNtM
         rGLEQBIuvvlFFk47rNTJwEO+l13ZwtgAjFU2tBsr4sacrxNlDzAp4E0U1Lz+mG4J1rPA
         lEdnbYB1RKr+J3D7gZ2djFMW2Pbs5dmUMHBxr+1XgurfF0sI+o4LHU7Mv8Mt50dXorBV
         3wrYmSljEAvLUyM1XIz1BvsEyQ0aGOCcuhvHgb8EDDfsfO3W0Y6LjXxWIABRwaSiHaDk
         4Jun1xCR0BikkscD13Vd1jkUKwVZM9foS4i4FLgMF7EHLZsGwp1Sq3Y9rPXh5hKOqOBA
         zKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rN/TDMRi9tmR91FyO/ZTPpueGhRrB+z68C6fKokYidQ=;
        b=DHct9iDNAmMYuboFgfskywlpwo42805KBWOixuD4X29mZ6yTW4K6U5m44oZvHkN4qT
         yCAzxvcEMVsDna6WIR4xXYhCgBMOpU96NQfx4Lk5lQ6hJfkeF9tGjGFl20rScv0uneaJ
         KGrjP2Wg0s3wn+OvwkSe2FUj4Cbks3//fpiH6hZlerj/0O3oUfhmVnXYPIwo+B9nvE9p
         POvpLglP/Wd01Zlribcx/PxS4c6U5/LzNQJY3cYOQ8Z7uhMptF61BG8+sWv2Z/ycw3YF
         +hgLb+dSbn8sO6LPdI844IQMnBe+6nEPmrHhTBfk1k12IMOmOCtAZm44GN7dLS/4O2tV
         7u0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53017VE7s4yb4WFP7oHTp40JbKF/Dd+q7iD8k9hSEVXvIs0tRo8L
	65dexa7vMCsosDS00ySufNg=
X-Google-Smtp-Source: ABdhPJxmQ7GB0Pg5/JL8KNx/kq1jQUiUIpyIz4s7YYb7ErNTrwIXfe4RKwhqcExT93v9k3sbi7UI3Q==
X-Received: by 2002:ab0:7490:: with SMTP id n16mr514467uap.134.1604047524257;
        Fri, 30 Oct 2020 01:45:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ed19:: with SMTP id l25ls780840vsp.2.gmail; Fri, 30 Oct
 2020 01:45:23 -0700 (PDT)
X-Received: by 2002:a67:fc02:: with SMTP id o2mr5992219vsq.5.1604047523620;
        Fri, 30 Oct 2020 01:45:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604047523; cv=none;
        d=google.com; s=arc-20160816;
        b=U0ElHy8BrtWoOJqDVIBzzZwfyVL8cEw249D/WbSRevdv82VJnTyMmxYmgpe1XUb2et
         J/y4wbjjJvd9R1XD1gt796zz/Y5ebXAMCLzw4HkUOoQCnTgup2I55crEdwZKFalQzYIH
         3b4X6IRAq2noL6MjwyVEm9AZwb6qs0iSdendd748TCHaqobK3hzSYk7KUqyEQeU5eGSo
         RWOsjvyUGFIjYkMEDA3+JVLBHVsFDdIq3/OlZwfC4+sKbLKSBVXh2YkmMbuohRBW+ZU5
         agj8PIaAKbUNPI/+zyKHCaOBTtPH8KXTFrffniI6Jr+Hs92BIZCNKWhxBtehydaqVrCf
         pEPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=arXj1pMkryH/+zfzLGl16G4pZfupwN8/Z2XQ3aN/Qec=;
        b=e3dWpLef0kcy7Xvek57L3La5b9Br+hkOUmA4a81LsGgvqgTTZRWHaay1+EVcaZzVFI
         6ElA+yzysHW53o/E/7gFYpd9tDFkpBFlj2NjIOMYXNh1OKMnViZvZArCoQM4V2WrAD1p
         bfco4fX91Q1bgp5JnbIc0KPg118ebaHpnXDIgB7X8cu7UU8ccFfLhvczSLLcQmDnwkVT
         KIKa8/L9lLM6O1Mc2NgzOFauM0FdiTbLNDvy1/852NwYD1mWBbbzqcU+t9Dcdqu1Cal4
         3oCWNtglFwbZD/OqYB9v30UjBw5+0Vs6/iU33kxGsYhRBwprOXIxZWPhBbIeXXSQi/3s
         tdTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jLLjMFjF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id b16si340093vkn.5.2020.10.30.01.45.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 01:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id k21so6667199ioa.9
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 01:45:23 -0700 (PDT)
X-Received: by 2002:a6b:cd83:: with SMTP id d125mr990196iog.174.1604047522789;
        Fri, 30 Oct 2020 01:45:22 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v88sm4798489ila.71.2020.10.30.01.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 01:45:21 -0700 (PDT)
Date: Fri, 30 Oct 2020 01:45:19 -0700
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
Message-ID: <20201030084519.GA3748061@ubuntu-m3-large-x86>
References: <20201019084140.4532-1-linus.walleij@linaro.org>
 <20201030002900.GA2248731@ubuntu-m3-large-x86>
 <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86>
 <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86>
 <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86>
 <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jLLjMFjF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 30, 2020 at 09:10:56AM +0100, Ard Biesheuvel wrote:
> On Fri, 30 Oct 2020 at 09:04, Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Fri, Oct 30, 2020 at 08:58:20AM +0100, Ard Biesheuvel wrote:
> > > On Fri, 30 Oct 2020 at 08:57, Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > On Fri, Oct 30, 2020 at 08:52:53AM +0100, Ard Biesheuvel wrote:
> > > > > On Fri, 30 Oct 2020 at 02:32, Nathan Chancellor
> > > > > <natechancellor@gmail.com> wrote:
> > > > > >
> > > > > > On Thu, Oct 29, 2020 at 05:38:22PM -0700, Nick Desaulniers wrot=
e:
> > > > > > > On Thu, Oct 29, 2020 at 5:29 PM Nathan Chancellor
> > > > > > > <natechancellor@gmail.com> wrote:
> > > > > > > >
> > > > > > > > On Mon, Oct 19, 2020 at 10:41:35AM +0200, Linus Walleij wro=
te:
> > > > > > > > > This is the 16th and final (knock on wood) version of
> > > > > > > > > KASan for ARM32.
> > > > > > > > >
> > > > > > > > > Changes since v15:
> > > > > > > > >
> > > > > > > > > - Things now work on all boards we have tested on includi=
ng
> > > > > > > > >   Broadcom and i.MX6Q.
> > > > > > > > >
> > > > > > > > > - Folded in a fix from Ard to PAGE_ALIGN() the end of
> > > > > > > > >   mappings making everything work on all Broadcom board.
> > > > > > > > >
> > > > > > > > > - Folded in a fix from Ahmad Fatoum making things work
> > > > > > > > >   with fortify on i.MX6Q.
> > > > > > > > >
> > > > > > > > > - Testing and testing and testing on build servers.
> > > > > > > > >
> > > > > > > > > - We are good to go.
> > > > > > > > >
> > > > > > > > > I will now put this in Russell's patch tracker for v5.11.
> > > > > > > > >
> > > > > > > > > There is a git branch you can pull in:
> > > > > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/li=
nux-integrator.git/log/?h=3Dkasan
> > > > > > > > >
> > > > > > > > > This branch includes Ard's two patches already in Russell=
's
> > > > > > > > > patch tracker.
> > > > > > > > >
> > > > > > > > >
> > > > > > > > > Abbott Liu (1):
> > > > > > > > >   ARM: Define the virtual space of KASan's shadow region
> > > > > > > > >
> > > > > > > > > Andrey Ryabinin (3):
> > > > > > > > >   ARM: Disable KASan instrumentation for some code
> > > > > > > > >   ARM: Replace string mem* functions for KASan
> > > > > > > > >   ARM: Enable KASan for ARM
> > > > > > > > >
> > > > > > > > > Linus Walleij (1):
> > > > > > > > >   ARM: Initialize the mapping of KASan shadow memory
> > > > > > > > >
> > > > > > > > >  Documentation/arm/memory.rst                  |   5 +
> > > > > > > > >  Documentation/dev-tools/kasan.rst             |   4 +-
> > > > > > > > >  .../features/debug/KASAN/arch-support.txt     |   2 +-
> > > > > > > > >  arch/arm/Kconfig                              |  10 +
> > > > > > > > >  arch/arm/boot/compressed/Makefile             |   1 +
> > > > > > > > >  arch/arm/boot/compressed/string.c             |  19 ++
> > > > > > > > >  arch/arm/include/asm/kasan.h                  |  33 ++
> > > > > > > > >  arch/arm/include/asm/kasan_def.h              |  81 ++++=
+
> > > > > > > > >  arch/arm/include/asm/memory.h                 |   5 +
> > > > > > > > >  arch/arm/include/asm/pgalloc.h                |   8 +-
> > > > > > > > >  arch/arm/include/asm/string.h                 |  26 ++
> > > > > > > > >  arch/arm/include/asm/thread_info.h            |   8 +
> > > > > > > > >  arch/arm/include/asm/uaccess-asm.h            |   2 +-
> > > > > > > > >  arch/arm/kernel/entry-armv.S                  |   3 +-
> > > > > > > > >  arch/arm/kernel/entry-common.S                |   9 +-
> > > > > > > > >  arch/arm/kernel/head-common.S                 |   7 +-
> > > > > > > > >  arch/arm/kernel/setup.c                       |   2 +
> > > > > > > > >  arch/arm/kernel/unwind.c                      |   6 +-
> > > > > > > > >  arch/arm/lib/memcpy.S                         |   3 +
> > > > > > > > >  arch/arm/lib/memmove.S                        |   5 +-
> > > > > > > > >  arch/arm/lib/memset.S                         |   3 +
> > > > > > > > >  arch/arm/mm/Makefile                          |   5 +
> > > > > > > > >  arch/arm/mm/kasan_init.c                      | 292 ++++=
++++++++++++++
> > > > > > > > >  arch/arm/mm/mmu.c                             |  18 ++
> > > > > > > > >  arch/arm/mm/pgd.c                             |  16 +-
> > > > > > > > >  arch/arm/vdso/Makefile                        |   2 +
> > > > > > > > >  26 files changed, 561 insertions(+), 14 deletions(-)
> > > > > > > > >  create mode 100644 arch/arm/include/asm/kasan.h
> > > > > > > > >  create mode 100644 arch/arm/include/asm/kasan_def.h
> > > > > > > > >  create mode 100644 arch/arm/mm/kasan_init.c
> > > > > > > > >
> > > > > > > > > --
> > > > > > > > > 2.26.2
> > > > > > > > >
> > > > > > > >
> > > > > > > > After this series was applied and available in -next, ARCH=
=3Darm LLVM=3D1
> > > > > > > > allyesconfig builds started failing:
> > > > > > > >
> > > > > > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-=
gnueabi- KCONFIG_ALLCONFIG=3D<(echo CONFIG_CPU_BIG_ENDIAN=3Dn) LLVM=3D1 dis=
tclean allyesconfig vmlinux
> > > > > > > > ...
> > > > > > > > ld.lld: error: section: .exit.data is not contiguous with o=
ther relro sections
> > > > > > > > ...
> > > > > > > >
> > > > > > > > $ git bisect ld: [3f267ec60b922eff2a5c90d532357a39f155b730]=
 Add linux-next specific files for 20201029
> > > > > > > > # good: [23859ae44402f4d935b9ee548135dd1e65e2cbf4] Merge ta=
g 'trace-v5.10-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/rosted=
t/linux-trace
> > > > > > > > git bisect start '3f267ec60b922eff2a5c90d532357a39f155b730'=
 '23859ae44402f4d935b9ee548135dd1e65e2cbf4'
> > > > > > > > # bad: [bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7] Merge rem=
ote-tracking branch 'mtd/mtd/next' into master
> > > > > > > > git bisect bad bfa70a4ea4bfa6f87b58cf8b90b88297389c92b7
> > > > > > > > # bad: [37a292dcf77532547f335ed5063d9169031c9b08] Merge rem=
ote-tracking branch 'sunxi/sunxi/for-next' into master
> > > > > > > > git bisect bad 37a292dcf77532547f335ed5063d9169031c9b08
> > > > > > > > # good: [e6d922c77db276a16f0b7933c2a9951dc9c0052c] Merge re=
mote-tracking branch 'drm-misc-fixes/for-linux-next-fixes' into master
> > > > > > > > git bisect good e6d922c77db276a16f0b7933c2a9951dc9c0052c
> > > > > > > > # bad: [cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320] Merge rem=
ote-tracking branch 'mvebu/for-next' into master
> > > > > > > > git bisect bad cbe49fbb8f6c8d29bc1d9a5a9a742ef2c2eb6320
> > > > > > > > # bad: [d0e12484e7e1ede73c538744cdbe9439f7335d01] Merge rem=
ote-tracking branch 'arm-soc/for-next' into master
> > > > > > > > git bisect bad d0e12484e7e1ede73c538744cdbe9439f7335d01
> > > > > > > > # good: [24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6] Merge br=
anch 'asm-generic-cleanup' into asm-generic
> > > > > > > > git bisect good 24a23387c15f34bad2485a9e1c3b7ac6f0fb35a6
> > > > > > > > # good: [3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52] Merge re=
mote-tracking branch 'kbuild/for-next' into master
> > > > > > > > git bisect good 3a8eb4d3421a2ca0f95ac3b1a8f012940d4f0d52
> > > > > > > > # bad: [20f96e606509ee5084690179afe1810b95617a92] Merge bra=
nches 'fixes' and 'misc' into for-next
> > > > > > > > git bisect bad 20f96e606509ee5084690179afe1810b95617a92
> > > > > > > > # good: [d6d51a96c7d63b7450860a3037f2d62388286a52] ARM: 901=
4/2: Replace string mem* functions for KASan
> > > > > > > > git bisect good d6d51a96c7d63b7450860a3037f2d62388286a52
> > > > > > > > # good: [5615f69bc2097452ecc954f5264d784e158d6801] ARM: 901=
6/2: Initialize the mapping of KASan shadow memory
> > > > > > > > git bisect good 5615f69bc2097452ecc954f5264d784e158d6801
> > > > > > > > # bad: [fc2933c133744305236793025b00c2f7d258b687] ARM: 9020=
/1: mm: use correct section size macro to describe the FDT virtual address
> > > > > > > > git bisect bad fc2933c133744305236793025b00c2f7d258b687
> > > > > > > > # bad: [421015713b306e47af95d4d61cdfbd96d462e4cb] ARM: 9017=
/2: Enable KASan for ARM
> > > > > > > > git bisect bad 421015713b306e47af95d4d61cdfbd96d462e4cb
> > > > > > > > # first bad commit: [421015713b306e47af95d4d61cdfbd96d462e4=
cb] ARM: 9017/2: Enable KASan for ARMog
> > > > > > > >
> > > > > > > > An allyesconfig kernel compiled with clang does not link pr=
operly with
> > > > > > > > ld.bfd without a workaround [1], which I do not have time t=
o apply and
> > > > > > > > test now but can later if it is relevant. I have not done a=
ny triage on
> > > > > > > > this yet either but I wanted to get the report out in case =
there is
> > > > > > > > anything obvious.
> > > > > > > >
> > > > > > > > [1]: https://github.com/ClangBuiltLinux/linux/issues/325
> > > > > > >
> > > > > > > relro? smells like:
> > > > > > > https://lore.kernel.org/lkml/20201016175339.2429280-1-ndesaul=
niers@google.com/T/#u
> > > > > > >
> > > > > >
> > > > > > Huh, did not even realize that the error messages were the same=
, my bad!
> > > > > >
> > > > > > This issue is simple enough to produce by just adding CONFIG_KA=
SAN=3Dy to
> > > > > > multi_v7_defconfig. I tried adding '-z norelro' to LDFLAGS_vmli=
nux in
> > > > > > arch/arm/Makefile and it fixes the build error but the resultin=
g kernel
> > > > > > does not boot in QEMU.
> > > > > >
> > > > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnue=
abi- LLVM=3D1 distclean defconfig
> > > > > >
> > > > > > $ scripts/config -e KASAN
> > > > > >
> > > > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnue=
abi- LLVM=3D1 olddefconfig zImage
> > > > > >
> > > > > > $ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
> > > > > > /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: =
3176448 bytes
> > > > > > + timeout --foreground 3m unbuffer qemu-system-arm -machine vir=
t -no-reboot -append 'console=3DttyAMA0 ' -display none -initrd /home/natha=
n/cbl/github/boot-utils/images/arm/rootfs.cpio -kernel /home/nathan/src/lin=
ux-next/arch/arm/boot/zImage -m 512m -nodefaults -serial mon:stdio
> > > > > > + RET=3D124
> > > > > > + set +x
> > > > > >
> > > > > > '-z norelro' boots fine without KASAN so I assume there is some=
thing up
> > > > > > specifically with KASAN and LLVM for ARM.
> > > > > >
> > > > >
> > > > > How long did you wait for it to boot? Booting a KASAN kernel unde=
r
> > > > > QEMU emulation is going to be *very* slow.
> > > >
> > > > The timeout command above is 3m and there was no output from the ke=
rnel
> > > > in that amount of time. What kind of time should I be reasonably
> > > > expecting?
> > > >
> > >
> > > 3 minutes is probably long enough.
> > >
> > > Do you see any output with 'earlycon=3Dpl011,0x9000000' added to the
> > > kernel command line?
> >
> > Yes.
> >
> > $ ~/cbl/github/boot-utils/boot-qemu.sh -a arm32_v7 -k .
> > /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio.zst: 3176448 =
bytes
> > + timeout --foreground 3m unbuffer qemu-system-arm -machine virt -no-re=
boot -append 'console=3DttyAMA0 earlycon=3Dpl011,0x9000000 ' -display none =
-initrd /home/nathan/cbl/github/boot-utils/images/arm/rootfs.cpio -kernel /=
home/nathan/src/linux-next/arch/arm/boot/zImage -m 512m -nodefaults -serial=
 mon:stdio
> > [    0.000000] Booting Linux on physical CPU 0x0
> > [    0.000000] Linux version 5.10.0-rc1-next-20201029-dirty (nathan@ubu=
ntu-m3-large-x86) (ClangBuiltLinux clang version 12.0.0 (https://github.com=
/llvm/llvm-project 1df8d7b4f23da304061bf30b617132f8ba9ab80a), LLD 12.0.0 (h=
ttps://github.com/llvm/llvm-project 1df8d7b4f23da304061bf30b617132f8ba9ab80=
a)) #1 SMP Thu Oct 29 18:26:00 MST 2020
> > [    0.000000] CPU: ARMv7 Processor [412fc0f1] revision 1 (ARMv7), cr=
=3D10c5387d
> > [    0.000000] CPU: div instructions available: patching division code
> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, PIPT instructio=
n cache
> > [    0.000000] OF: fdt: Machine model: linux,dummy-virt
> > [    0.000000] earlycon: pl11 at MMIO 0x09000000 (options '')
> > [    0.000000] printk: bootconsole [pl11] enabled
> > [    0.000000] Memory policy: Data cache writealloc
> > [    0.000000] efi: UEFI not found.
> > [    0.000000] cma: Reserved 64 MiB at 0x5c000000
> > [    0.000000] Zone ranges:
> > [    0.000000]   DMA      [mem 0x0000000040000000-0x000000005fffffff]
> > [    0.000000]   Normal   empty
> > [    0.000000]   HighMem  empty
> > [    0.000000] Movable zone start for each node
> > [    0.000000] Early memory node ranges
> > [    0.000000]   node   0: [mem 0x0000000040000000-0x000000005fffffff]
> > [    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x000000005=
fffffff]
> > [    0.000000] kasan: Mapping kernel virtual memory block: c0000000-e00=
00000 at shadow: b7000000-bb000000
> > [    0.000000] kasan: Mapping kernel virtual memory block: bf000000-c00=
00000 at shadow: b6e00000-b7000000
> > [    0.000000] kasan: Kernel address sanitizer initialized
> > [    0.000000] psci: probing for conduit method from DT.
> > [    0.000000] psci: PSCIv0.2 detected in firmware.
> > [    0.000000] psci: Using standard PSCI v0.2 function IDs
> > [    0.000000] psci: Trusted OS migration not required
> > [    0.000000] percpu: Embedded 20 pages/cpu s49676 r8192 d24052 u81920
> > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 1=
30048
> > [    0.000000] Kernel command line: console=3DttyAMA0 earlycon=3Dpl011,=
0x9000000
> > [    0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144=
 bytes, linear)
> > [    0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072 =
bytes, linear)
> > [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> > [    0.000000] Memory: 329852K/524288K available (21504K kernel code, 8=
544K rwdata, 14676K rodata, 2048K init, 4843K bss, 128900K reserved, 65536K=
 cma-reserved, 0K highmem)
> > [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D=
1, Nodes=3D1
> > [    0.000000] rcu: Hierarchical RCU implementation.
> > [    0.000000] rcu:     RCU event tracing is enabled.
> > [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D16 to nr_cp=
u_ids=3D1.
> > [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay =
is 10 jiffies.
> > [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu=
_ids=3D1
> > [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> > [    0.000000] GICv2m: range[mem 0x08020000-0x08020fff], SPI[80:143]
> > [    0.000000] random: get_random_bytes called from start_kernel+0x208/=
0x3d0 with crng_init=3D0
> > [    0.000000] arch_timer: cp15 timer(s) running at 62.50MHz (virt).
> > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff ma=
x_cycles: 0x1cd42e208c, max_idle_ns: 881590405314 ns
> > [    0.000156] sched_clock: 56 bits at 62MHz, resolution 16ns, wraps ev=
ery 4398046511096ns
> > [    0.000565] Switching to timer-based delay loop, resolution 16ns
> > [    0.006124] Console: colour dummy device 80x30
> > [    0.007840] Calibrating delay loop (skipped), value calculated using=
 timer frequency.. 125.00 BogoMIPS (lpj=3D625000)
> > [    0.011577] pid_max: default: 32768 minimum: 301
> > [    0.014889] Mount-cache hash table entries: 1024 (order: 0, 4096 byt=
es, linear)
> > [    0.015189] Mountpoint-cache hash table entries: 1024 (order: 0, 409=
6 bytes, linear)
> > [    0.043926] CPU: Testing write buffer coherency: ok
> > [    0.045820] CPU0: Spectre v2: firmware did not set auxiliary control=
 register IBE bit, system vulnerable
> > [    0.057716] /cpus/cpu@0 missing clock-frequency property
> > [    0.058105] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> > [    0.070417] Setting up static identity map for 0x40300000 - 0x403000=
ac
> > [    0.075105] rcu: Hierarchical SRCU implementation.
> > [    0.084843] EFI services will not be available.
> > [    0.087124] smp: Bringing up secondary CPUs ...
> > [    0.087384] smp: Brought up 1 node, 1 CPU
> > [    0.087617] SMP: Total of 1 processors activated (125.00 BogoMIPS).
> > [    0.087878] CPU: All CPU(s) started in SVC mode.
> > [    0.105778] devtmpfs: initialized
> > [    0.283349] VFP support v0.3: implementor 41 architecture 4 part 30 =
variant f rev 0
> > [    0.310896] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfff=
fffff, max_idle_ns: 19112604462750000 ns
> > [    0.311679] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.312469] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.312803] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.313125] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.313445] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.313761] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.314082] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.314400] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.314718] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.315031] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.315338] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.315661] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.315979] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.316296] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.316608] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.316923] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.317234] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.317549] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.317860] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.318177] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.318493] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.318809] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.319133] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.319457] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.319774] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.320091] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.320593] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.320909] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.321220] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.321532] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.321844] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.322157] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.322475] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.322788] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.323098] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.323424] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.323738] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.324050] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.324358] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.324673] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.324988] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.325303] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.325624] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.325941] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.326255] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.326573] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.326883] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.327193] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.327510] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.327826] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.328138] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.328457] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.328767] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.329081] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.329400] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.329711] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.330021] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.330326] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.330780] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.331104] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.331417] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.331733] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.332054] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.332381] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.332696] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.333001] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.333320] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.333648] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.333964] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.334272] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.334580] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.334894] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.335212] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.335528] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.335846] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.336162] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.336482] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.336804] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.337124] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.337443] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.337761] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.338087] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.338414] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.338756] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.339074] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.339396] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.339737] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.340061] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.340379] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.340695] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.341161] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.341504] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.341843] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.342151] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.342492] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.342809] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.343129] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.343445] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.343761] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.344079] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.344410] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.344755] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.345066] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.345383] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.345719] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.346031] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.346350] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.346664] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.346976] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.347289] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.347642] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.347952] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.348275] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.348618] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.348930] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.349245] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.349563] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.349872] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.350191] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.350508] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.350832] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.351280] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.351632] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.351940] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.352257] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.352604] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.352918] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.353228] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.353543] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.353855] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.354170] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.354503] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.354833] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.355144] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.355477] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.355811] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.356133] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.356439] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.356757] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.357075] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.357381] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.357726] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.358037] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.358345] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.358663] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.358979] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.359287] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.359599] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.359911] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.360230] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.360549] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.360860] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.361313] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.361642] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.361953] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.362262] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.362578] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.362888] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.363205] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.363520] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.363821] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.364139] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.364445] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.364759] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.365070] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.365384] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.365695] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.366003] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.366306] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.366611] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.366924] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.367248] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.367569] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.367876] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.368197] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.368515] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.368829] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.369137] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.369454] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.369772] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.370079] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.370393] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.370709] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.371023] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.371490] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.371808] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.372122] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.372435] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> > [    0.372767] futex hash table entries: 256 (order: 2, 16384 bytes, li=
near)
> >
> > Then there is no output after that.
> >
>=20
> Ouch. This looks like futex_init() is being called over and over
> again, which is a core_initcall.
>=20
> This will need some dissecting of the binary, but we need to figure
> out what is going on in the initcall dispatch code.
>=20
> If you build with symbols, you should be able to run it in the
> debugger. Just set a breakpoint on futex_init() and step through the
> code until you can observe how/why it is being called a second time.

I have no idea how it is happening but futex_init keeps getting called
from within itself, if I am reading gdb right?

(gdb) hbreak futex_init
Hardware assisted breakpoint 1 at 0xc2727fac: file kernel/futex.c, line 402=
8.
(gdb) c
Continuing.

Breakpoint 1, futex_init () at kernel/futex.c:4028
4028    {
(gdb) n
4035            futex_hashsize =3D roundup_pow_of_two(256 * num_possible_cp=
us());
(gdb)
4038            futex_queues =3D alloc_large_system_hash("futex", sizeof(*f=
utex_queues),
(gdb)
4035            futex_hashsize =3D roundup_pow_of_two(256 * num_possible_cp=
us());
(gdb)
4038            futex_queues =3D alloc_large_system_hash("futex", sizeof(*f=
utex_queues),
(gdb)
4043            futex_hashsize =3D 1UL << futex_shift;
(gdb)
4045            futex_detect_cmpxchg();
(gdb)

Breakpoint 1, futex_init () at kernel/futex.c:4028
4028    {
(gdb)
4035            futex_hashsize =3D roundup_pow_of_two(256 * num_possible_cp=
us());
(gdb)
4038            futex_queues =3D alloc_large_system_hash("futex", sizeof(*f=
utex_queues),
(gdb)
4035            futex_hashsize =3D roundup_pow_of_two(256 * num_possible_cp=
us());
(gdb)
4038            futex_queues =3D alloc_large_system_hash("futex", sizeof(*f=
utex_queues),
(gdb)
4043            futex_hashsize =3D 1UL << futex_shift;
(gdb)
4045            futex_detect_cmpxchg();
(gdb)

If I step into futex_detect_cmpxchg(), I see us jump into vector_dabt
then back out futex_init.

(gdb) hbreak futex_init
Hardware assisted breakpoint 1 at 0xc2727fac: file kernel/futex.c, line 402=
8.
(gdb) hbreak futex_detect_cmpxchg
Hardware assisted breakpoint 2 at 0xc27280c8: file kernel/futex.c, line 400=
8.
(gdb) c
Continuing.

Breakpoint 1, futex_init () at kernel/futex.c:4028
4028    {
(gdb) c
Continuing.

Breakpoint 2, futex_detect_cmpxchg () at kernel/futex.c:4008
4008    {
(gdb) n
4022            if (cmpxchg_futex_value_locked(&curval, NULL, 0, 0) =3D=3D =
-EFAULT)
(gdb)
vector_dabt () at arch/arm/kernel/entry-armv.S:1099
1099            vector_stub     dabt, ABT_MODE, 8
(gdb)
__dabt_svc () at arch/arm/kernel/entry-armv.S:194
194             svc_entry uaccess=3D0
(gdb)
__dabt_svc () at arch/arm/kernel/entry-armv.S:195
195             mov     r2, sp
(gdb)
196             dabt_helper
(gdb)
198             svc_exit r5                             @ return from excep=
tion
(gdb)
0xc0458040 in ?? ()
(gdb)
Cannot find bounds of current function
(gdb) finish
Run till exit from #0  0xc0458040 in ?? ()

Breakpoint 1, futex_init () at kernel/futex.c:4028
4028    {
(gdb)

I am going to be honest, I do not really understand what is going on
here but I am more than happy to provide whatever information is needed
to further explore this.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201030084519.GA3748061%40ubuntu-m3-large-x86.
