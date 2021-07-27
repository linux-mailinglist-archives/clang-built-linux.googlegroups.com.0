Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB5GUQCEAMGQEWTHFCQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD143D7A19
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:47:02 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id t15-20020a17090ad14fb0290176eb5a6cf3sf8217140pjw.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 08:47:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627400821; cv=pass;
        d=google.com; s=arc-20160816;
        b=pjaX//5pnOUVyZlmtjQRj4kBRzAHvSSd59PRe6T+zQ0gvkeq/dMJ5YUGpMUmuOvzkC
         0s+PkAM+xbeseRNQTz6GFAzbA+CBSHmRrUbrEQPvsKb4wqlbwakeZldVpwfhwveJP8EM
         8ywk2ZZbQWDkqoN2zoVdq6k2nFUgFkQDtCl6iAYEl/JHSI+wENRN4AlUZOMapH2c2TT5
         y/6bAuDVLVvqjCEGcidHHFtKqeR/2mbNOmbLkmLw1yyfxKhO73Mfh4S47N+7hO77GEid
         RgZUWZWhetp7SQOvik6UCzwrxTYC0Ljg/Z0iHp2zs8aMsVSgowpjTKxdYYJMb1xusOMJ
         Z6Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=zKMhu9HTFjE0h0ZFpiXR0MgtFbKm63ibWtsfpcpOsts=;
        b=ejWAqAc4/KB9EwvHSo2uIa/mGoZagTKGR8eim15HNtzIz7JbdyVIn8rWPH0LNseggD
         p3CqCdXoifb0eKppLxkeRLpwwMl+Q83W5VCCVk+NbjWacZQZOtY1Z8+HtwqbCbqCIJdk
         sY5GghglPsb006KKi20b0//V75FveceOPqZe5K0PAz3dVKDmaQkHP+DyaGx2toH2wG7e
         zxyGDY35YXCJ7wtFOLPcH6mqdnz0zAIaIZtUZGzWmzuKqFZYbuU9a36/Zgzb6tiJpPnH
         DD/BdYRitjvksATXYJf9EhSSJULSi7Pvf7MWZEl+kqj9VH50Q5ejibXRKlN2/K0nn5hS
         lkIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="dKc6v/JV";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zKMhu9HTFjE0h0ZFpiXR0MgtFbKm63ibWtsfpcpOsts=;
        b=Mrkd7ER9Wpq/IwCaQopf4V4AFUfm//uN6cF10Z+hnewWlFsDQ6yEpbB0yovr1o/LoJ
         5aEA+knwghNYgl5fRn9g44PfzhNKc6frWlbkcNI0l/8lZqm5H/5cfyy1TQo7Qng1kg6l
         gzNCopK0AwUO1/K9hfZwkMT9Wkfa26niP4uDaYvHKXxy9QGscpRzRrvYUrfkD2erMws/
         +rGyegs92YQtI1CIljJTEG/jd1cjILxcdL5TyajBALf1TZEkmwqkkDkS2fSMg+ODrgtc
         dqTmKZKhdkx50LJmwTaJU6Pu+akS7QjdVQlhb5VPIMtSsD/E5Jluem+nerpKZDtUQYfC
         yH7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zKMhu9HTFjE0h0ZFpiXR0MgtFbKm63ibWtsfpcpOsts=;
        b=uB/RcN2IqWxB/y40s/rrBx55U+VH9sX7Bfywnnc/N0SJ8j8ceKk7dDKbi7IhP3eFt4
         6rif0J5UvDWutzmU1SiKULwU9KUkzEnUsv86Ch8J7S/MMw5Q3K836SZEmiaKo1iJGsSM
         izmLwiwItoRxUDZQLMdLj8n9GkD9dZM/NFazpfHA1UUZkrkdmJUNwB5IMuKrKh6Beuok
         FKuDnDhKMDFbJZ+zIjRHonv6WR23aWPNd37Ak43ayFgyRcFlqCEEFoaydi+ObIvH25o9
         +ezMFblppKvKhEwLBmEVtq2Pg97hfk1mG3lgh4lKJuvF++OI52UoDc8PJz71BZhcJ9yL
         ceYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cTMOVI3lnCT5HSfmcIz+BVqfJg8LY5kKTeFNzCcaXFqQuV9u5
	uvI4XGKXSMsUQTQkCAo52OU=
X-Google-Smtp-Source: ABdhPJz864D6/fopEd0MM96DioXFz2E8AfwBqmJDFwUFuL+Z++Qi/cUHQa3P2K0M4sYRuVJFHK8OVw==
X-Received: by 2002:a17:902:e742:b029:12b:5431:24fe with SMTP id p2-20020a170902e742b029012b543124femr19389043plf.20.1627400820886;
        Tue, 27 Jul 2021 08:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:886:: with SMTP id bj6ls1940547pjb.3.canary-gmail;
 Tue, 27 Jul 2021 08:47:00 -0700 (PDT)
X-Received: by 2002:a17:90b:4ac9:: with SMTP id mh9mr4969887pjb.226.1627400820332;
        Tue, 27 Jul 2021 08:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627400820; cv=none;
        d=google.com; s=arc-20160816;
        b=ESqE4gSA7wBvlDxDG7jHv6Mpx6Ytp6+gLez7t3olwK/haAxZ5nxMf6mmFiIG7YZv8G
         +AJW3sn17SSgty3yYQEahsKK5AVIE0Xw9GRdxGEbGysP8NK5SeASkqNIvq6jutNn+hq7
         9y1TjwXOznCJkma0+AHO8u0SRd9rjU1EAaREBT5eUGPDBjAYXpQm+zVNzKG+6CHdeF+M
         3RJKloWIKO3YBchx4n44jUghdrSy8WLKUbgqH/dbG0NFhaqtL3WLT5E94xKunhD9RF4c
         M9MAv+CbRhnRJwFazjVEa6m38m2dWyCDJgjCvQWrbRT5cIQWbH8lGroynh+tGzmbhp1U
         BCPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LsjBZXp5Hb4a8Pslo01nfzs+83oRnqzopQ3B3rpsT80=;
        b=nzS+MR4HhOGd4TrvBHEh2TkO0R9+J+miPCCuDvHKO6HaMsFwiCdeqTa2cDR+XXgSyg
         GCdEs8Rmi4JJ3qUzsxi9DUJVXqv/z9vzcrLEG30b13t9c3i9zRYTkoHtS0rKsfclMZIC
         Dyyf6+ZiGQ1AZRcoyJLMyc+ivDJMQTzU/HO5MvDxni8wJtuDvXFgfjzGCGRk6PHk25qy
         foYpr6nFKSR6m8IXP6jFwVUm84RHMUwECPsqW8Km+EdMmkYSchZD0o14MsheqxrHl6mW
         UiLMbk7eWTF3WdbkXZrpjXPmig0eKBbZfSZTj1TITNzT3oUfNcO2Vwe6Z3XIzhaIq0aV
         Txng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="dKc6v/JV";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id mq7si213637pjb.1.2021.07.27.08.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 08:47:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 16RFkX1Q024715
	for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 00:46:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 16RFkX1Q024715
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id k4-20020a17090a5144b02901731c776526so4903662pjm.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 08:46:33 -0700 (PDT)
X-Received: by 2002:a17:90b:33cf:: with SMTP id lk15mr22361086pjb.153.1627400792647;
 Tue, 27 Jul 2021 08:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
 <87r1fkizxl.fsf@disp2133> <CAK7LNAS8Fz_kcwqzJD834QrSuWkkorHm4OZoGUhYsbKvJV=fJQ@mail.gmail.com>
 <87v94vg7vi.fsf@disp2133>
In-Reply-To: <87v94vg7vi.fsf@disp2133>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 28 Jul 2021 00:45:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNASbegX=9yBDktuK5iXhhB=wNP_kbdh4dnJMXSmV=XwHOw@mail.gmail.com>
Message-ID: <CAK7LNASbegX=9yBDktuK5iXhhB=wNP_kbdh4dnJMXSmV=XwHOw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: Arnd Bergmann <arnd@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="dKc6v/JV";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Jul 27, 2021 at 11:16 PM Eric W. Biederman
<ebiederm@xmission.com> wrote:
>
> Masahiro Yamada <masahiroy@kernel.org> writes:
>
> > On Tue, Jul 27, 2021 at 5:27 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
> >>
> >> Masahiro Yamada <masahiroy@kernel.org> writes:
> >>
> >> > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >> >>
> >> >> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> >> >> <torvalds@linux-foundation.org> wrote:
> >> >> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >> >> >
> >> >> > We do most of the other heavy lifting in this area in Kconfig anyway,
> >> >> > why not add that compiler choice?
> >> >> >
> >> >> > Obviously it would be gated by the tests to see which compilers are
> >> >> > _installed_ (and that they are valid versions), so that it doesn't ask
> >> >> > stupid things ("do you want gcc or clang" when only one of them is
> >> >> > installed and/or viable).
> >> >>
> >> >> I don't see a good way of making Kconfig options both select the
> >> >> compiler and defining variables based on the compiler, since that
> >> >> would mean teaching Kconfig about re-evaluating all compiler
> >> >> dependent settings whenever the first option changes.
> >> >>
> >> >> I do have another idea that I think would work though.
> >> >>
> >> >> > Hmm? So then any "LLVM=1" thing would be about the "make config"
> >> >> > stage, not the actual build stage.
> >> >> >
> >> >> > (It has annoyed me for years that if you want to cross-compile, you
> >> >> > first have to do "make ARCH=xyz config" and then remember to do "make
> >> >> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> >> >> > never really cared).
> >> >>
> >> >> The best thing that I have come up with is a pre-configure step, where
> >> >> an object tree gets seeded with a makefile fragment that gets included
> >> >> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
> >> >> 'CC=' and possibly any other option that gets passed to 'make' as
> >> >> a variable and has to exist before calling 'make *config'.
> >> >
> >> >
> >> > There is no need to add a hook to include such makefile fragment(s).
> >> >
> >> > Quite opposite, you can put your Makefile (in a different filename)
> >> > that includes the top Makefile.
> >> >
> >> >
> >> > I think this is what people are already doing:
> >> >
> >> >
> >> > GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
> >> > in this order.
> >> >
> >> >
> >> > So, you can put 'GNUmakefile' with your favorite setups.
> >> >
> >> >
> >> > $ cat GNUmakefile
> >> > ARCH=arm64
> >> > CROSS_COMPILE=aarch64-linux-gnu-
> >> > CC=clang
> >> > include Makefile
> >>
> >> Very weird.
> >>
> >> I just tested this and it does not work.
> >> I did this:
> >>
> >> $ cat GNUmakefile
> >> ARCH = alpha
> >> CROSS_COMPILE = $(arch-prefix alpha)
> >> include Makefile
> >>
> >> In one of my build directories and the main makefile simply does not see
> >> the value of ARCH or CROSS_COMPILE I set.  I have confirmed that my
> >> GNUmakefile is being read, because everything breaks if I remove the
> >> include line.
> >>
> >> Does anyone have any ideas?
> >>
> >> Something so we don't have to specify all of these variables on the make
> >> command line would be nice.
> >>
> >> Eric
> >
> >
> > Worked for me.
> >
> > Could you tell me the exact steps you did?
> >
> >
> > This is my case:
> >
> > My kernel source tree is located at $HOME/ref/linux
> > alpha tool chains are located at $HOME/tools/alpha-10.1.0/bin
> >
> >
> >
> > I tried a simple GNUmakefile with 3 lines.
> >
> > You can see 'make' is building the alpha kernel
> >
> >
> > Please see below:
>
> Interesting.  That appears to work if I don't specify a build directory.
> Once I specify a build directory with O= it does not work.
>
> When I am working on a change that affects multiple architectures
> I really want a build directory that is not my source tree so I can
> test small changes on multiple architectures without needing to rebuild
> everything.
>
> Eric


Ah, OK.
When you specify O= option, Kbuild will
invoke sub-make.
So you need to add 'export' to the
variables.

Please see the following modified version.





masahiro@grover:~/ref/linux$ rm -rf build-dir/
masahiro@grover:~/ref/linux$ cat GNUmakefile
export ARCH = alpha
export CROSS_COMPILE = $(HOME)/tools/alpha-10.1.0/bin/alpha-linux-
include Makefile
masahiro@grover:~/ref/linux$ make O=build-dir defconfig
make[1]: Entering directory '/home/masahiro/ref/linux/build-dir'
  GEN     Makefile
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/confdata.o
  HOSTCC  scripts/kconfig/expr.o
  LEX     scripts/kconfig/lexer.lex.c
  YACC    scripts/kconfig/parser.tab.[ch]
  HOSTCC  scripts/kconfig/lexer.lex.o
  HOSTCC  scripts/kconfig/menu.o
  HOSTCC  scripts/kconfig/parser.tab.o
  HOSTCC  scripts/kconfig/preprocess.o
  HOSTCC  scripts/kconfig/symbol.o
  HOSTCC  scripts/kconfig/util.o
  HOSTLD  scripts/kconfig/conf
*** Default configuration is based on 'defconfig'
#
# configuration written to .config
#
make[1]: Leaving directory '/home/masahiro/ref/linux/build-dir'
masahiro@grover:~/ref/linux$ make O=build-dir
make[1]: Entering directory '/home/masahiro/ref/linux/build-dir'
  GEN     Makefile
  SYSHDR  arch/alpha/include/generated/uapi/asm/unistd_32.h
  SYSTBL  arch/alpha/include/generated/asm/syscall_table.h
  HOSTCC  scripts/kallsyms
  WRAP    arch/alpha/include/generated/uapi/asm/bpf_perf_event.h
  WRAP    arch/alpha/include/generated/uapi/asm/ipcbuf.h
  WRAP    arch/alpha/include/generated/uapi/asm/msgbuf.h
  WRAP    arch/alpha/include/generated/uapi/asm/poll.h
  WRAP    arch/alpha/include/generated/uapi/asm/sembuf.h
  WRAP    arch/alpha/include/generated/uapi/asm/shmbuf.h
  WRAP    arch/alpha/include/generated/asm/export.h
  WRAP    arch/alpha/include/generated/asm/kvm_para.h
  WRAP    arch/alpha/include/generated/asm/mcs_spinlock.h
  WRAP    arch/alpha/include/generated/asm/compat.h
  WRAP    arch/alpha/include/generated/asm/current.h
  WRAP    arch/alpha/include/generated/asm/exec.h
  WRAP    arch/alpha/include/generated/asm/fb.h
  WRAP    arch/alpha/include/generated/asm/irq_work.h
  WRAP    arch/alpha/include/generated/asm/kmap_size.h
  WRAP    arch/alpha/include/generated/asm/kprobes.h
  WRAP    arch/alpha/include/generated/asm/local64.h
  WRAP    arch/alpha/include/generated/asm/mmiowb.h
  WRAP    arch/alpha/include/generated/asm/module.lds.h
  WRAP    arch/alpha/include/generated/asm/msi.h
  WRAP    arch/alpha/include/generated/asm/preempt.h
  WRAP    arch/alpha/include/generated/asm/sections.h
  WRAP    arch/alpha/include/generated/asm/simd.h
  WRAP    arch/alpha/include/generated/asm/softirq_stack.h
  WRAP    arch/alpha/include/generated/asm/trace_clock.h
  WRAP    arch/alpha/include/generated/asm/unaligned.h
  WRAP    arch/alpha/include/generated/asm/vermagic.h
  UPD     include/config/kernel.release
  UPD     include/generated/uapi/linux/version.h
  UPD     include/generated/utsrelease.h
  CC      scripts/mod/empty.o
  HOSTCC  scripts/mod/mk_elfconfig
  MKELF   scripts/mod/elfconfig.h
  HOSTCC  scripts/mod/modpost.o
  CC      scripts/mod/devicetable-offsets.s
  UPD     scripts/mod/devicetable-offsets.h
  HOSTCC  scripts/mod/file2alias.o
  HOSTCC  scripts/mod/sumversion.o
  HOSTLD  scripts/mod/modpost
  CC      kernel/bounds.s
  UPD     include/generated/bounds.h
  UPD     include/generated/timeconst.h
  CC      arch/alpha/kernel/asm-offsets.s
  UPD     include/generated/asm-offsets.h
  CALL    ../scripts/checksyscalls.sh
<stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp]
  CALL    ../scripts/atomic/check-atomics.sh
  CC      init/main.o
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  CC      init/do_mounts.o
  CC      init/noinitramfs.o
  CC      init/calibrate.o
  CC      init/init_task.o
  AR      init/built-in.a
  AR      usr/built-in.a
  AS      arch/alpha/kernel/head.o
  LDS     arch/alpha/kernel/vmlinux.lds
  AS      arch/alpha/kernel/entry.o
  CC      arch/alpha/kernel/traps.o
  CC      arch/alpha/kernel/process.o
  CC      arch/alpha/kernel/osf_sys.o
  CC      arch/alpha/kernel/irq.o
  CC      arch/alpha/kernel/irq_alpha.o
  CC      arch/alpha/kernel/signal.o
  CC      arch/alpha/kernel/setup.o
  CC      arch/alpha/kernel/ptrace.o
  CC      arch/alpha/kernel/time.o
  AS      arch/alpha/kernel/systbls.o
  CC      arch/alpha/kernel/err_common.o
  CC      arch/alpha/kernel/io.o
  CC      arch/alpha/kernel/bugs.o
  CC      arch/alpha/kernel/console.o
  CC      arch/alpha/kernel/pci.o
  CC      arch/alpha/kernel/pci_iommu.o
  CC      arch/alpha/kernel/pci-sysfs.o
  CC      arch/alpha/kernel/module.o
  CC      arch/alpha/kernel/rtc.o
  CC      arch/alpha/kernel/core_apecs.o
  CC      arch/alpha/kernel/core_cia.o
  CC      arch/alpha/kernel/core_irongate.o
  CC      arch/alpha/kernel/core_lca.o
  CC      arch/alpha/kernel/core_mcpcia.o
  CC      arch/alpha/kernel/core_polaris.o
  CC      arch/alpha/kernel/core_t2.o
  CC      arch/alpha/kernel/core_tsunami.o
  CC      arch/alpha/kernel/sys_alcor.o
  CC      arch/alpha/kernel/sys_cabriolet.o
  CC      arch/alpha/kernel/sys_dp264.o
  CC      arch/alpha/kernel/sys_eb64p.o
  CC      arch/alpha/kernel/sys_eiger.o
  CC      arch/alpha/kernel/sys_jensen.o
  CC      arch/alpha/kernel/sys_miata.o
  CC      arch/alpha/kernel/sys_mikasa.o
  CC      arch/alpha/kernel/sys_nautilus.o
  CC      arch/alpha/kernel/sys_noritake.o
  CC      arch/alpha/kernel/sys_rawhide.o
  CC      arch/alpha/kernel/sys_ruffian.o
  CC      arch/alpha/kernel/sys_rx164.o
  CC      arch/alpha/kernel/sys_sable.o
  CC      arch/alpha/kernel/sys_sio.o
  CC      arch/alpha/kernel/sys_sx164.o
  CC      arch/alpha/kernel/sys_takara.o
  CC      arch/alpha/kernel/irq_pyxis.o
  CC      arch/alpha/kernel/irq_i8259.o
  CC      arch/alpha/kernel/irq_srm.o
  CC      arch/alpha/kernel/err_ev6.o
  CC      arch/alpha/kernel/es1888.o
  CC      arch/alpha/kernel/smc37c669.o
  CC      arch/alpha/kernel/smc37c93x.o
  CC      arch/alpha/kernel/pc873xx.o
  CC      arch/alpha/kernel/gct.o
  CC      arch/alpha/kernel/srmcons.o
  AR      arch/alpha/kernel/built-in.a
  CC [M]  arch/alpha/kernel/srm_env.o
  CC      arch/alpha/mm/init.o
  CC      arch/alpha/mm/fault.o
  AR      arch/alpha/mm/built-in.a
  CC      arch/alpha/math-emu/math.o
  AS      arch/alpha/math-emu/qrnnd.o
  AR      arch/alpha/math-emu/built-in.a
  AR      arch/alpha/built-in.a
  CC      kernel/sched/core.o
  CC      kernel/sched/loadavg.o
  CC      kernel/sched/clock.o
  CC      kernel/sched/cputime.o
  CC      kernel/sched/idle.o
  CC      kernel/sched/fair.o
  CC      kernel/sched/rt.o
  CC      kernel/sched/deadline.o
  CC      kernel/sched/wait.o
  CC      kernel/sched/wait_bit.o
  CC      kernel/sched/swait.o
  CC      kernel/sched/completion.o
  CC      kernel/sched/debug.o
  CC      kernel/sched/membarrier.o
  AR      kernel/sched/built-in.a
  CC      kernel/locking/mutex.o
  CC      kernel/locking/semaphore.o
  CC      kernel/locking/rwsem.o
  CC      kernel/locking/percpu-rwsem.o
  CC      kernel/locking/rtmutex.o
  AR      kernel/locking/built-in.a
  CC      kernel/power/qos.o
  CC      kernel/power/poweroff.o
  AR      kernel/power/built-in.a
  CC      kernel/printk/printk.o
  CC      kernel/printk/printk_safe.o
  CC      kernel/printk/printk_ringbuffer.o
  AR      kernel/printk/built-in.a
  CC      kernel/irq/irqdesc.o
  CC      kernel/irq/handle.o
  CC      kernel/irq/manage.o
  CC      kernel/irq/spurious.o
  CC      kernel/irq/resend.o
  CC      kernel/irq/chip.o
  CC      kernel/irq/dummychip.o
  CC      kernel/irq/devres.o
  CC      kernel/irq/autoprobe.o
  CC      kernel/irq/proc.o
  AR      kernel/irq/built-in.a
  CC      kernel/rcu/update.o
  CC      kernel/rcu/sync.o
  CC      kernel/rcu/srcutiny.o
  CC      kernel/rcu/tiny.o
  AR      kernel/rcu/built-in.a
  AR      kernel/livepatch/built-in.a
  CC      kernel/dma/mapping.o
  CC      kernel/dma/direct.o
  CC      kernel/dma/ops_helpers.o
  CC      kernel/dma/dummy.o
  AR      kernel/dma/built-in.a
  AR      kernel/entry/built-in.a
  CC      kernel/time/time.o
  CC      kernel/time/timer.o
  CC      kernel/time/hrtimer.o
  CC      kernel/time/timekeeping.o
  CC      kernel/time/ntp.o
  CC      kernel/time/clocksource.o
  CC      kernel/time/jiffies.o
  CC      kernel/time/timer_list.o
  CC      kernel/time/timeconv.o
  CC      kernel/time/timecounter.o
  CC      kernel/time/alarmtimer.o
  CC      kernel/time/posix-timers.o
  CC      kernel/time/posix-cpu-timers.o
  CC      kernel/time/posix-clock.o
  CC      kernel/time/itimer.o
  CC      kernel/time/clockevents.o
  CC      kernel/time/tick-common.o
  AR      kernel/time/built-in.a
  CC      kernel/bpf/core.o
  AR      kernel/bpf/built-in.a




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASbegX%3D9yBDktuK5iXhhB%3DwNP_kbdh4dnJMXSmV%3DXwHOw%40mail.gmail.com.
