Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB26UZSAAMGQE52PX3LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D8430805C
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 22:19:41 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id 8sf4750699pgn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 13:19:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611868780; cv=pass;
        d=google.com; s=arc-20160816;
        b=QC8gPfHhP9KaiwYwuSPSHKimLah4Lgt1o1EOo6YQS1jemKz1tDxz6Zxj4uJ/ftSwpX
         jSEUIIy9gqLBZThGnWJzlEG8h4jTXzZykPQ1SPtgsMwwwa3/eWWGUpzCkhP6F9Sy6Nrv
         AcubGn4bX8H/2JoHBBlYOZYj2LA2Eq4RzzGz54CvO7VOCar5S1T1kOaGhPCaJ3V17SbK
         w7Sfr59xnn6EVcJwMcuBXEb2kM5nmuXQ+N94MGf6hmCpEdEU1dQkutUaHngtLTm+Un13
         JXKnOt53peiobnAV1MgdD+C3LPu/2ilW9hCClp2czY4y+va7804antlzJiLAVDDusSBI
         c9rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cS7kR5TkAX6wYmxQCW4XON2IDaucBwSsnR3dNv4MMcc=;
        b=ZrBumDYFh4+syHrMc8a9EExiwaqcR2JRDbbR348t0PKD0mGtPN/2ILPMMNGBFjTnjL
         kqBhMAoVgrJKeix2AzA6LL/PlfEt7LGn/qx+3TN3qTIzkU7pgFoHJfbc3EHEomaMmigr
         HN44Qq+CLZcVV4OqBO5l2910GJvIVBqXwMh/50W1LJgT67TYzQ+X4PDHsyStweMWnYg/
         Av+GwBFP8+UR4mBqZm8t22plWrVDrfd9Jx581s4AiC0gUjgW+cwmmOLYKf+NUbkO09An
         IZpNapl9wqW+h3PPXAIaGZxSudAN13c5itm8wwzXmVltZejDbNEQ7UhzZfrjXvrTZaty
         wBHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uALI5RA+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cS7kR5TkAX6wYmxQCW4XON2IDaucBwSsnR3dNv4MMcc=;
        b=DpZCwPhnaDJ+Uvdmd8Vy/NEJVVabhlqt+3hgLO/pCYY8I9E2sKVXKuR9Oxmn5mEL4d
         EREFecaUtFjrvGu9Gm5eYKIhFVkC0jzkVkUaNV/7kodPov7RnHNW2gHMzc1qprheEZ8x
         3LFuTMBFxS2YzM3su8LnZGUbxqOW9lVzlGt8QHGqOkjV5s73Jq3TzxzhVxUDiiouq++F
         OLpRqGrun/oAB8m1GIawK+m68TJeBcJ5kVDrLzpNyrg/74WUTtHIh32jO/TGPVVSQB9m
         axc4w9/lUqE18IBocVSNQzqiG8kdCL/wXI13uVrS/j1xT5GIrE+pK/aywjcbnsMSewy0
         JoYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cS7kR5TkAX6wYmxQCW4XON2IDaucBwSsnR3dNv4MMcc=;
        b=aN2UKCN0osU79gD9/LLyPj1UbO2NuCraUg6DhKn+u3969xoHTIyjsH0U5YBWiJ6/dT
         8/c9xLbF68De7FxWzb1HnKV6bgCvbFjltirrYk/uvWlg9UDgTVBbqZ9wBhtRcnQM3oE/
         I+/kicTsAKFVYndQ7yIK+ldFwlBaZp/HglniYFkEWKmjMUNZJttUHwBGKCMhGrolcCXG
         fDqvXyNhBoOu2c1b2OEOFsBYrmZZMjy/i2zfjidePlQwK/49sOJ6ZN7vFpBDiyC/JxZj
         uchl+pokA5JEyXIr0nMLk4ETTqQYYSUJ8PqGErl+YGe+mlF/Y107OEIGdrjCbtlIilXx
         2Qwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cS7kR5TkAX6wYmxQCW4XON2IDaucBwSsnR3dNv4MMcc=;
        b=sG7XoyQKU54/KDRrerl9e4CbAL8pqvqvSA6Gixw7qjhGFXEqf1+txcjCljirjQzMZR
         eyTzrXNtKS5FBkr12MjPhv+jHyraHrTgyZSwyHu/7rPQCOwKiCUIQDHfIwdRIGfgw4UC
         xKlk93IXDB/4s3y6LdDxLRovAb8ItSj/U1ldgQSkyxyQ+AIa4UJfuIYcHu6PBsd12vI2
         dDGQgsLLFUrYQFcuTbt5YjYPj0pOViG3u715d9n8+GoQ92943JGfZU1Rs20BNBC388KZ
         d83lzwdChJYhHVOdIzapn9EyR3mKt+hHyPK3vCiLBXvlkWYbF+/F9JQ6Dradodk1AAp1
         3gwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ll1C4NDfIMfsePkELvArtFzh5SlaaP3nXuI22aGXT8PzXfH0B
	cWf0Xg2+cEcONx/O9aWMhPQ=
X-Google-Smtp-Source: ABdhPJwYhjabo5rgPSIVUXIBxWBwBMn7mYSRVZBl0f7oJeh1faupYvJ2fvbKQ8/VE69jzgqb+fNuUw==
X-Received: by 2002:aa7:93a2:0:b029:1bf:23a3:a945 with SMTP id x2-20020aa793a20000b02901bf23a3a945mr1182432pff.70.1611868780008;
        Thu, 28 Jan 2021 13:19:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22d2:: with SMTP id y18ls3258042plg.6.gmail; Thu, 28
 Jan 2021 13:19:39 -0800 (PST)
X-Received: by 2002:a17:902:c284:b029:df:c0d8:6b7 with SMTP id i4-20020a170902c284b02900dfc0d806b7mr1318488pld.34.1611868779364;
        Thu, 28 Jan 2021 13:19:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611868779; cv=none;
        d=google.com; s=arc-20160816;
        b=Or0xz1Rt/VmXrn/+vPi5DnZX0fxvobKPrUHfSeocybp2CLcr0JZw3SH+kGgpfPj1pZ
         RuBkbzR06bXTudaT+lAtC6l6GdEMXmyjWyUW4wWrQyxsmPZAAyXU2bI30a8xHc7aXFHR
         hAMr8XA5SsAiVUsbDuytb8Qdy6+eg6zpz6VRheg71PBbn4lm94ec213npPry5P1SvINO
         FqyBRVvGWmjgXUIVpfCucfnl/ibkMWwD+ObgVwPc1nXKY0svuTjzxZIk1G15wDZoLrIp
         Tvs5BfhrsylzED0+rCynhscikRwJpKKGiS34gmi9GWyF7svfQKDIgO6UnykdKCMTXp13
         bPrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8KacIPQbORj40QvqegzfTEzGvNMpxCBDGW80/SheMdk=;
        b=zcaYVTK+fK/OkaIWUi4S4HJxcJW05MAaJximIbK55JZoQlSgqjwo++z4mLUmYPH4ub
         ARfdo4wKhrzcAokwBd8zPXHsn/WijpT3eUyRn4lk+RRXs5Za2erZPb29A6NVJ/LQqHDo
         sfKIodygC6leIKHvy/9f2KZsF/weWSD/Tab4NdaA8jizC+k4j//h6obWgoWG+d8EUsHZ
         FTrv2+bEjEGz/q+bYq95YxgujoGA39GgizBGUpPhyNUCI8gA9qrwt4RUwf1tbixdVVOg
         wPO8ug9gpy/GVoky7E0E9V3SqxmOyw6kpC7soTTi94nTCrD4aPxXidcZ3wuumX3Rfj2H
         rOqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uALI5RA+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id nl3si259308pjb.0.2021.01.28.13.19.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 13:19:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id y19so7138368iov.2
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 13:19:39 -0800 (PST)
X-Received: by 2002:a02:cc54:: with SMTP id i20mr1003818jaq.138.1611868779021;
 Thu, 28 Jan 2021 13:19:39 -0800 (PST)
MIME-Version: 1.0
References: <20210121082451.2240540-1-morbo@google.com> <20210122101156.3257143-1-morbo@google.com>
 <CAKwvOdm+3o8z2GivPjSJRa=c=UKdfkiY-79s6yn2BxJkFnoFTw@mail.gmail.com>
 <CA+icZUU=XfwqMcXYonQKcD4QgqTBW-mA+d_84b7cU2R3HYPOSQ@mail.gmail.com> <CAKwvOdnUm2FqC0CEF3qFuMCaWoqiUMqr7ddMjA2UNsJugA9DNQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnUm2FqC0CEF3qFuMCaWoqiUMqr7ddMjA2UNsJugA9DNQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 28 Jan 2021 22:19:10 +0100
Message-ID: <CA+icZUWJu0FWdRY0DMQxpYwjqq1WTB87y9u1-6t3YMmkR3UsBQ@mail.gmail.com>
Subject: Re: [PATCH v7] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uALI5RA+;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
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

On Thu, Jan 28, 2021 at 10:12 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Jan 28, 2021 at 12:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > [ LLVM ]
> >
> > Today, I switched over to LLVM version 12.0.0-rc1.
> >
> >
> > [ Step #1: 5.11.0-rc5-5-amd64-clang12-pgo ]
> >
> > My first kernel was built with CONFIG_PGO_CLANG=y and LLVM=1 plus LLVM_IAS=1.
> >
> > [ start-build_5.11.0-rc5-5-amd64-clang12-pgo.txt ]
> > dileks    193090  193065  0 06:54 pts/2    00:00:00 /usr/bin/perf_5.10
> > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > LD=ld.lld LLVM=1 LLVM_IAS=1 PAHOLE=/opt/pahole/bin/pahole
> > LOCALVERSION=-5-amd64-clang12-pgo KBUILD_VERBOSE=1
> > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> > KDEB_PKGVERSION=5.11.0~rc5-5~bullseye+dileks1
> >
> > Config: config-5.11.0-rc5-5-amd64-clang12-pgo
> >
> >
> > [ Step #2: x86-64 defconfig & vmlinux.profdata ]
> >
> > Booted into 5.11.0-rc5-5-amd64-clang12-pgo and built an x86-64
> > defconfig to generate/merge a vmlinux.profdata file.
> >
> > [ start-build_x86-64-defconfig.txt ]
> > dileks     18430   15640  0 11:15 pts/2    00:00:00 make V=1 -j4
> > HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1
> > LLVM_IAS=1
> >
> > Script: profile_clang-pgo.sh
> > Config: dot-config.x86-64-defconfig
> >
> >
> > [ Step #3.1: 5.11.0-rc5-6-amd64-clang12-pgo & GNU-AS ]
> >
> > The first rebuild with CONFIG_PGO_CLANG=n and "LLVM=1
> > KCFLAGS=-fprofile-use=vmlinux.profdata".
> > I was able to boot into this one.
> > Used assembler: GNU-AS 2.35.1
> >
> > [ start-build_5.11.0-rc5-6-amd64-clang12-pgo.txt ]
> > dileks     65734   65709  0 11:54 pts/2    00:00:00 /usr/bin/perf_5.10
> > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > LD=ld.lld PAHOLE=/opt/pahole/bin/pahole
> > LOCALVERSION=-6-amd64-clang12-pgo KBUILD_VERBOSE=1
> > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> > KDEB_PKGVERSION=5.11.0~rc5-6~bullseye+dileks1 LLVM=1
> > KCFLAGS=-fprofile-use=vmlinux.profdata
> >
> > Config: config-5.11.0-rc5-6-amd64-clang12-pgo
> >
> >
> > [ Step #3.2: 5.11.0-rc5-7-amd64-clang12-pgo & Clang-IAS ]
> >
> > The second rebuild with CONFIG_PGO_CLANG=n and "LLVM=1
> > KCFLAGS=-fprofile-use=vmlinux.profdata" plus LLVM_IAS=1.
> > Compilable but NOT bootable in QEMU and on bare metal.
> > Used assembler: Clang-IAS v12.0.0-rc1
> >
> > [ start-build_5.11.0-rc5-7-amd64-clang12-pgo.txt ]
> > dileks      6545    6520  0 16:31 pts/2    00:00:00 /usr/bin/perf_5.10
> > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > LD=ld.lld PAHOLE=/opt/pahole/bin/pahole
> > LOCALVERSION=-7-amd64-clang12-pgo KBUILD_VERBOSE=1
> > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > KBUILD_BUILD_TIMESTAMP=2021-01-28 bindeb-pkg
> > KDEB_PKGVERSION=5.11.0~rc5-7~bullseye+dileks1 LLVM=1
> > KCFLAGS=-fprofile-use=vmlinux.profdata LLVM_IAS=1
> >
> > Config: config-5.11.0-rc5-7-amd64-clang12-pgo
> >
> >
> > [ Conclusion ]
> >
> > The only statement I can tell you is a "PGO optimized" rebuild with
> > LLVM_IAS=1 is compilable but NOT bootable.
>
> Thanks for the extensive testing and report. Can you compress, upload,
> and post a link to your kernel image? I would like to take it for a
> spin in QEMU and see if I can find what it's doing, then work
> backwards from there.
>

Which files do you need?
For QEMU: bzImage and initrd.img enough?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWJu0FWdRY0DMQxpYwjqq1WTB87y9u1-6t3YMmkR3UsBQ%40mail.gmail.com.
