Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBPFX76DQMGQEMCSP2JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1363D72A6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:11:09 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id j21-20020a25d2150000b029057ac4b4e78fsf5768232ybg.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 03:11:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627380668; cv=pass;
        d=google.com; s=arc-20160816;
        b=t/J3cRdhExFmq4kKlJmaVwhXN/8pCXmpFw2cBMF1LS45AxxcW5w/iQV/o9n+3ET3KC
         Rl8OPmKwM3VRkvbK1JdxK7MyFVn6Ptevv3zqluJS9WAIqFDWk6imj7odqnvlHCxM3UdN
         YIcGb4sgakR/tpDMKJOeWA3LAYIlciwuo7o/07RA5gLnIie6R8cZni+xguuzToSSGIBL
         8ZQnzSbnF8tCegKhvKo+fqTxjK9YYAVMO8ORtJHjlYJawvDdGnoM3x0K0iuOsWv0sBjM
         hqAwxVfVy9vZscn2OzQvS2fSZmu/lfT8t3lej38AJC+NxAWsrHv3LzOPH7q3VZ8mcxV0
         93Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4i5V/IPTSJGyi7tJG9cFzuexbOsJPJETVyIwk2hux98=;
        b=ExWY3HL+hgbvnrgPAxX40mDMosLSX6dlGXeVJCHvESAI/Wti4Ppt2M39dJ6nl+j0ZM
         wNpherNIoNW7decYS6lMGjlsYhdxEHhO5pOqGNqW31CxcjWq5IMZx7wKI51R9eajyVOu
         fUngp/ZfBj8nVTw9jomsIcz84vOvC13D+BNBVY/EiszRtFVFtRJHoQWeQEsmj6UVhqzH
         ZuDkVe/FjEhGOpH3kY06m4umyyjMslH3XWLC3vOR7DOiBd4arOILJsiAZjWqFU3/DLcJ
         Bz65fD7HyVG2pSr4PlBrjM+kLSfhLYKKWuZuT6llMaM8bCH/P545Rk0TtRgs45T/dIZq
         PRwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JwccvrN6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4i5V/IPTSJGyi7tJG9cFzuexbOsJPJETVyIwk2hux98=;
        b=e8BS7I3qGOHmn36+ZMYhbhk+YgktedeB5Ec1on0Du6bcSoAMPSfXvTqmnrzYXYLpmb
         jTL3xv7IzuNc/iNpUatUvbL877EDRajVqnibjU5u5j1jBalHAWRhrqGXMdbGZUVkaXyQ
         cSLwRLyEGE1/2wPvXqc6MtCbBX5DHvOsbsGDnuyPmOd7R0i0IVviIxRt7mhf1AaZv6lM
         SFAqq0IJEORopinwwZU8hk59/Ar2GuMMdO2Y6tmH/6eqxwW5fhQ3QrDRQtCUn8CQ2ECo
         XtNufguJnWwUbC3bIOoaKfjFM7Pnt6WYf44jv8pzlxWbnV7mlwkosfAIfXbdSiHcvnVG
         rtuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4i5V/IPTSJGyi7tJG9cFzuexbOsJPJETVyIwk2hux98=;
        b=QwHI3auJNI0voNMTQUWox3UOlx05ou0+ndBzp3pId4aQR6MzIA5wVUq/2BAFkZJNzF
         cdwBxw0JkYJuBnAo82ycDAPwWxx/S6UQM0RpglHvGCMwYU6KkF7H8NvOl62hLxn6Benc
         e8ykdkf3PN81d1AMipbkUKIJOUgyyo+8ui3KBbKrT/8PqaBKkk/ugzUr6QZwXNg+2fan
         Vgz0IE8YXObC9jEEMyYDkhrso6qauJHGo8ikYqboOrkQ6nBO9ud5MpmIYiUvZQQaiM4c
         pCa43StcFNNtXRIRAGUEB82Qf19zrLb7as76XNoP3eKhiTWIpme2A/d8681jOE7k7IU0
         uKtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xmz6HoalXHKVCNLasfuesr1/QeElQ5dPFYUEnX5iT0ONyiN4U
	Ufkau8N5+tdI+rxnuqCe6W0=
X-Google-Smtp-Source: ABdhPJx55N+7h+Rs0LN+5fjPxxm06edEg4IXdgU9khdH6U8+gqHJJnvf+tMTRB1DYbUEZhHqhx8YBw==
X-Received: by 2002:a25:fc5:: with SMTP id 188mr2998285ybp.51.1627380668525;
        Tue, 27 Jul 2021 03:11:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls2718506ybr.9.gmail; Tue, 27 Jul
 2021 03:11:08 -0700 (PDT)
X-Received: by 2002:a25:8489:: with SMTP id v9mr3364687ybk.477.1627380667952;
        Tue, 27 Jul 2021 03:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627380667; cv=none;
        d=google.com; s=arc-20160816;
        b=uC6PQzHDRKwFlZIeQTti5fjdaNiWRyDgzBU/03hour4WadTUS/3X3IThljdm+sHG+Y
         uUuQkAcH5n6eruY0/oZVSwwAD21acOX4wIF2Ib2NsEsTSgy1XV+fXnNhe3d3iTMvpPWm
         YH1i5I1RSdUxasMzsarxVNbWFzrSqg3poTVkYhSUWn3or7GqdbQ8gPXtLljRiC5sEmEa
         XxgK1nUIgUvUdkbQk+Y0m98t6WjwBHnTWVT5PR4wPu0psBB0D6FphnopL6hMPCB+FERA
         p7RL5F9KUpmHG4rtmU/V0CKAN8spXjZO9OKmPKVj0Mg3c3Fyh0Fu9mWmLDpVI1mV8QsQ
         tDNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=OSYQZk+3tJqowrXAIcMUHdaXitgKhgWMyw4+pumNADI=;
        b=1KKAeAVSKhcv0FhVQwDHnn4yPSrrJNN49Io4dTVIoL+bxVc8nPCKim9Olmg2C1BYFs
         258zUmzAKFW1CT5rGSJTALUTkmMce1htit+j4icQlxJhCozRAoBE6XxB5KZsn9gEzF9I
         28ObfKjs+x+aeJhKXhu5lZURS2sJlpKiq6fBpXAEVC3/EwWsDShOUI8gewnp0E5PL2TR
         jtQ7vS2vyAB9d7/txEqzsuDVoOKl+hMuBe4vAk0W8ndCqs4pAE5g4iyXLAHeBlLS+ibr
         kTov130ccaEzwwoPU3oCeVD4Ry9ZLl7KHIJssbSnSyodQ/TLPxQcftVJz/2bqxwihQ2J
         Ii3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JwccvrN6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id o8si308743ybu.5.2021.07.27.03.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 03:11:07 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 16RAAdv6028614
	for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 19:10:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 16RAAdv6028614
X-Nifty-SrcIP: [209.85.216.49]
Received: by mail-pj1-f49.google.com with SMTP id m1so17035836pjv.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 03:10:40 -0700 (PDT)
X-Received: by 2002:a65:498a:: with SMTP id r10mr22949005pgs.7.1627380639465;
 Tue, 27 Jul 2021 03:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com> <87r1fkizxl.fsf@disp2133>
In-Reply-To: <87r1fkizxl.fsf@disp2133>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 27 Jul 2021 19:10:02 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS8Fz_kcwqzJD834QrSuWkkorHm4OZoGUhYsbKvJV=fJQ@mail.gmail.com>
Message-ID: <CAK7LNAS8Fz_kcwqzJD834QrSuWkkorHm4OZoGUhYsbKvJV=fJQ@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=JwccvrN6;       spf=softfail
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

On Tue, Jul 27, 2021 at 5:27 AM Eric W. Biederman <ebiederm@xmission.com> wrote:
>
> Masahiro Yamada <masahiroy@kernel.org> writes:
>
> > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >>
> >> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> >> <torvalds@linux-foundation.org> wrote:
> >> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >> >
> >> > We do most of the other heavy lifting in this area in Kconfig anyway,
> >> > why not add that compiler choice?
> >> >
> >> > Obviously it would be gated by the tests to see which compilers are
> >> > _installed_ (and that they are valid versions), so that it doesn't ask
> >> > stupid things ("do you want gcc or clang" when only one of them is
> >> > installed and/or viable).
> >>
> >> I don't see a good way of making Kconfig options both select the
> >> compiler and defining variables based on the compiler, since that
> >> would mean teaching Kconfig about re-evaluating all compiler
> >> dependent settings whenever the first option changes.
> >>
> >> I do have another idea that I think would work though.
> >>
> >> > Hmm? So then any "LLVM=1" thing would be about the "make config"
> >> > stage, not the actual build stage.
> >> >
> >> > (It has annoyed me for years that if you want to cross-compile, you
> >> > first have to do "make ARCH=xyz config" and then remember to do "make
> >> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> >> > never really cared).
> >>
> >> The best thing that I have come up with is a pre-configure step, where
> >> an object tree gets seeded with a makefile fragment that gets included
> >> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
> >> 'CC=' and possibly any other option that gets passed to 'make' as
> >> a variable and has to exist before calling 'make *config'.
> >
> >
> > There is no need to add a hook to include such makefile fragment(s).
> >
> > Quite opposite, you can put your Makefile (in a different filename)
> > that includes the top Makefile.
> >
> >
> > I think this is what people are already doing:
> >
> >
> > GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
> > in this order.
> >
> >
> > So, you can put 'GNUmakefile' with your favorite setups.
> >
> >
> > $ cat GNUmakefile
> > ARCH=arm64
> > CROSS_COMPILE=aarch64-linux-gnu-
> > CC=clang
> > include Makefile
>
> Very weird.
>
> I just tested this and it does not work.
> I did this:
>
> $ cat GNUmakefile
> ARCH = alpha
> CROSS_COMPILE = $(arch-prefix alpha)
> include Makefile
>
> In one of my build directories and the main makefile simply does not see
> the value of ARCH or CROSS_COMPILE I set.  I have confirmed that my
> GNUmakefile is being read, because everything breaks if I remove the
> include line.
>
> Does anyone have any ideas?
>
> Something so we don't have to specify all of these variables on the make
> command line would be nice.
>
> Eric


Worked for me.

Could you tell me the exact steps you did?


This is my case:

My kernel source tree is located at $HOME/ref/linux
alpha tool chains are located at $HOME/tools/alpha-10.1.0/bin



I tried a simple GNUmakefile with 3 lines.

You can see 'make' is building the alpha kernel


Please see below:




masahiro@grover:~/ref/linux$ cat GNUmakefile
ARCH = alpha
CROSS_COMPILE = $(HOME)/tools/alpha-10.1.0/bin/alpha-linux-
include Makefile
masahiro@grover:~/ref/linux$ make mrproper
  CLEAN   arch/alpha/kernel
  CLEAN   certs
  CLEAN   drivers/tty/vt
  CLEAN   drivers/video/logo
  CLEAN   kernel
  CLEAN   lib
  CLEAN   security/selinux
  CLEAN   usr/include
  CLEAN   usr
  CLEAN   vmlinux.symvers modules-only.symvers modules.builtin
modules.builtin.modinfo
  CLEAN   scripts/basic
  CLEAN   scripts/dtc
  CLEAN   scripts/genksyms
  CLEAN   scripts/kconfig
  CLEAN   scripts/mod
  CLEAN   scripts/selinux/genheaders
  CLEAN   scripts/selinux/mdp
  CLEAN   scripts
  CLEAN   include/config include/generated
arch/alpha/include/generated .config .config.old .version
Module.symvers
masahiro@grover:~/ref/linux$ make defconfig
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
masahiro@grover:~/ref/linux$ make
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
  CALL    scripts/checksyscalls.sh
<stdin>:1515:2: warning: #warning syscall clone3 not implemented [-Wcpp]
  CALL    scripts/atomic/check-atomics.sh
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
^Cmake[2]: *** Deleting file 'arch/alpha/math-emu/math.o'
make[2]: *** [scripts/Makefile.build:271: arch/alpha/math-emu/math.o] Interrupt
make[1]: *** [scripts/Makefile.build:514: arch/alpha/math-emu] Interrupt
make: *** [Makefile:1842: arch/alpha] Interrupt





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS8Fz_kcwqzJD834QrSuWkkorHm4OZoGUhYsbKvJV%3DfJQ%40mail.gmail.com.
