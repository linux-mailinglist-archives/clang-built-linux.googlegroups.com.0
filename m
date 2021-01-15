Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBI5EQSAAMGQE7TMA2EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AA12F713D
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 04:55:16 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id o9sf4258207yba.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:55:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610682915; cv=pass;
        d=google.com; s=arc-20160816;
        b=r3FhTQ9qZUL4I44/lMTosP8DGR7YD3ZMXRPXWsNvH5KJtrFw/58zwZyFOTd757LmBa
         H3JmBFtO+U139geEQ4aG5BMIPgseKQHWFxSPxUqFOFqZl96t3A47kkF0TEwBy7V9TCSk
         bjN3Zx0QwFTrZhCtl3pFhE7IAUaKlAUG284Kz1CYn2TbVoy8I97kPHxt1SOjTexpQF5u
         /4+BhOWRtZ4qOe21SnDi/xV0X41CsAWG0GL2blw6uWfCpUxsBOkV3nYzO5x1PTzevs1y
         95JgFFSXwxi0soLtPiROyh0T+e7D627PgAk2CsJT5haiaJUhvcZZpm5/PEEysPGPGE/t
         6veA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=2r0qa2G4eNO7ipWZ3JFDpRk8hcT9n9Z2Vwg3QXSkgnY=;
        b=X/1NVTs1GtlpLvmvBOe0IttNg47sXOyJU9rytGeDbLWwehMqNkB4y15BArm65LOeBJ
         B3182z7lqX+yPxegAmvKwoAsHNd+tZKN74S+3dsCX9yIGUtq9zOeWzQeFxVVQW5fo8Ry
         R0Z1aMfgBadJjCACN/XT9XUYukycW/zFjZtqpb8vW97KEnaa5+rtSdHiGyejPwPR26H7
         yY0r1pofYS6lFybLpR9//9YeBvgyp0aRd4oEhYho3id5CA1kvCXvU7bIQuNKEk80YSCJ
         pNLuuDyYqYjSIozK9YkgcMUSYOGW25kI23D86pwV3hSjaa1Hdx4tI0gzkAiy/7bHeTsP
         ByFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2xHUP84S;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2r0qa2G4eNO7ipWZ3JFDpRk8hcT9n9Z2Vwg3QXSkgnY=;
        b=f1EnQGpNvD4H/zQqApt3KaBu8KTRm7IAbe4ih9Hg3SkCZWd3Mr/r2+6hHegLD0R40w
         7eQx2Rw/a3EWWe6LzuUJIvHHwmIOvVk0f2WF/MNVvO5+d/MOxRRaqKGnjmd9/8kJa998
         wD1iqWBD+11zlo1yxuqeovYFadkDvFgPSjyHuSk4e4kkZMl/79ejMS9201JPVta6vM3/
         Z0VkXxKwTj/yHF19mzHxv4+MVNyCLL1MarupbjPUcMBeW6Z4NEKsg5m21wyiBdSC6geg
         wR3lIja41XcVVQt5c+57o9nlCHI40cMHRa/zrW/tA+lVtUgsoYz4/A2/mkLyFyWLiK3Z
         k+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2r0qa2G4eNO7ipWZ3JFDpRk8hcT9n9Z2Vwg3QXSkgnY=;
        b=aN/+4qlHtnYqRgotnKjAbVfXx+WHNz7acyGTOyROZojrs3G8U0T4cFDd0yBNIPI9YB
         jIHEUWf4x6qQLL54gyBmPnkEjOG7nERQYrxXfnvr8FzXOFOW2aY0Fn6LRyQoKmzcJvmO
         /4tSvWIdulX2tPK3Zjy7qsz2OCLQU+xfus6ifcj75Smc4syvs/d6AQ5yVocZI0v3bDP5
         +KJhANdoifc6DYXch3EAROJzsGdPUk4WCensX/a7nyvXI1PtBfpigPeK6jtcLXI5aYa4
         CET/z6gZbNULh0wQ3rwxVpVYYkch6r5h4gt1oPmhR8bndiKy9ybYVURjUFdEnuG+UWYl
         uTcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UNNV/dcpSe8GUaEoqcQthAY5KZm+UkgfL/8qYROpc5RBE4F99
	L+J+u1S6OBWKV7+OfT/LrqU=
X-Google-Smtp-Source: ABdhPJzlWwe2uOvDV5qOUw96YygwVq36/POYQyHLRyOy5M5SLK/6RhquMdAT7lSTpNBb7WuXK4ZVjg==
X-Received: by 2002:a25:4c8a:: with SMTP id z132mr8295405yba.350.1610682915653;
        Thu, 14 Jan 2021 19:55:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls3784901ybe.2.gmail; Thu, 14 Jan
 2021 19:55:15 -0800 (PST)
X-Received: by 2002:a25:6b52:: with SMTP id o18mr16217654ybm.143.1610682915093;
        Thu, 14 Jan 2021 19:55:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610682915; cv=none;
        d=google.com; s=arc-20160816;
        b=xzObOAuIJw+pwW6/IktxkFmwA/cGWH4OOXu5tl1rF+mh4hGenKiFaAKrYago2AGHWW
         qcF/BYQpmoDzwwy+kp1OFOkj7QD5/aa7vadZuhEU3pcA56R3Jis1HjzTHZvCXMjtX2Bu
         ck7PCHOHkvIaMxtrCaAtLQHalJ3ogGcyp87ENvpg97r38dMlbnG/aYM+4b/Os5iohRsr
         yDe7S7gbyCMueAEhS6zgLTY2m0XRPrBnPeV9/WRYMwJKSNmIDmh/p8g2UavLe+0q1IKQ
         xHEbvbrJKq2k5rRfB5YJj+vYwzt6cWLgefbxY+7DdV0Oxbdk3uMjKqSWVnzd2G9uT4Dx
         N7pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=dvrxZUq6ijykTnD91sHJvb7lCcdoTSyu0O0fWTAIYoM=;
        b=HOHQqxyb2EYPmqgDq1zxOZpIZtXMqthj4JSgSAco2vitghNgXsIg6zdR/wdhBlrxt/
         enYxvEW6ieGqKlmDdJFbh8WziDKLRIOcrr35Qd9QyF3OAT1jHTEf2+8iNtoIrniTLhy1
         f7/UipVCQoH6RFK7Uv9ZJ+dRE2fBKSWLCXzWAekLQEtxVhelX2DygLRzO8Oi3Ef+hi2j
         nQInukaPEFj92hW/aDmJRNi4zHK2jMtkOzUEOvxboi2KCla8a1MvnQDNag3CNqPmmV2+
         2JH1TetgFg/ODQLIyoIWzPFXOC33bMW270vas2KfhbpjDTO5KJEFB5jdpt60kKJtz1vC
         b7YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2xHUP84S;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id r12si606833ybc.3.2021.01.14.19.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 19:55:15 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 10F3sp84018222
	for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:54:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 10F3sp84018222
X-Nifty-SrcIP: [209.85.214.181]
Received: by mail-pl1-f181.google.com with SMTP id d4so4023358plh.5
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 19:54:51 -0800 (PST)
X-Received: by 2002:a17:90a:c910:: with SMTP id v16mr8357377pjt.198.1610682890563;
 Thu, 14 Jan 2021 19:54:50 -0800 (PST)
MIME-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com>
 <20210113003235.716547-3-ndesaulniers@google.com> <CA+icZUV6pNP1AN_JEhqon6Hgk3Yfq0_VNghvRX0N9mw6pGtpVw@mail.gmail.com>
 <CAKwvOdm40Z3YutxwWyV922XdchN7Dz+v9kJNjF13vKxNUXrJnQ@mail.gmail.com>
In-Reply-To: <CAKwvOdm40Z3YutxwWyV922XdchN7Dz+v9kJNjF13vKxNUXrJnQ@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 15 Jan 2021 12:54:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNASkCbm-075tPrNgR8s-fQ5y4MTjPQXhKO04JT+2X6R-GQ@mail.gmail.com>
Message-ID: <CAK7LNASkCbm-075tPrNgR8s-fQ5y4MTjPQXhKO04JT+2X6R-GQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=2xHUP84S;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Jan 14, 2021 at 8:27 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Sedat,
> Thanks for testing, and congrats on https://lwn.net/Articles/839772/.
> I always appreciate you taking the time to help test my work, and
> other Clang+Linux kernel patches!
>
> On Wed, Jan 13, 2021 at 1:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote=
:
> >
> > On Wed, Jan 13, 2021 at 1:32 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -826,12 +826,16 @@ else
> > >  DEBUG_CFLAGS   +=3D -g
> > >  endif
> > >
> > > -ifneq ($(LLVM_IAS),1)
> > > -KBUILD_AFLAGS  +=3D -Wa,-gdwarf-2
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) :=3D 2
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
> > > +DEBUG_CFLAGS   +=3D -gdwarf-$(dwarf-version-y)
>
> ^ DEBUG_CFLAGS are set for everyone (all toolchains) if
> CONFIG_DEBUG_INFO is defined.
>
> > > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
>
> ^ "If not using dwarf 2 and LLVM_IAS=3D1", ie. CONFIG_DEBUG_INFO_DWARF5
> && CONFIG_CC_IS_GCC
>
> > > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > > +dwarf-aflag    :=3D $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-vers=
ion-y))
> > > +ifdef CONFIG_CC_IS_CLANG
>
> ^ "if clang"
>
> > > +DEBUG_CFLAGS   +=3D $(dwarf-aflag)
> > >  endif
> >
> > Why is that "ifdef CONFIG_CC_IS_CLANG"?
>
> That's what Arvind requested on v2, IIUC:
> https://lore.kernel.org/lkml/X8psgMuL4jMjP%2FOy@rani.riverdale.lan/



If CONFIG_CC_IS_CLANG is set,
both -gdwarf and -Wa,-gdwarf-4 are passed to DEBUG_CFLAGS.

Is it necessary?



IIUC, -Wa,-gdwarf is meaningless
when you build *.c files.


I passed -v option to see
how gas is invoked behind the scene.


See the following results
for [1] GCC + GAS and [2] Clang + GAS cases




[1] GCC + GAS


masahiro@grover:~$ cat test.c
int main(void) { return 0; }
masahiro@grover:~$ gcc -v -gdwarf-4 -c -o test.o test.c
Using built-in specs.
COLLECT_GCC=3Dgcc
OFFLOAD_TARGET_NAMES=3Dnvptx-none:amdgcn-amdhsa:hsa
OFFLOAD_TARGET_DEFAULT=3D1
Target: x86_64-linux-gnu
Configured with: ../src/configure -v --with-pkgversion=3D'Ubuntu
10.2.0-13ubuntu1'
--with-bugurl=3Dfile:///usr/share/doc/gcc-10/README.Bugs
--enable-languages=3Dc,ada,c++,go,brig,d,fortran,objc,obj-c++,m2
--prefix=3D/usr --with-gcc-major-version-only --program-suffix=3D-10
--program-prefix=3Dx86_64-linux-gnu- --enable-shared
--enable-linker-build-id --libexecdir=3D/usr/lib
--without-included-gettext --enable-threads=3Dposix --libdir=3D/usr/lib
--enable-nls --enable-clocale=3Dgnu --enable-libstdcxx-debug
--enable-libstdcxx-time=3Dyes --with-default-libstdcxx-abi=3Dnew
--enable-gnu-unique-object --disable-vtable-verify --enable-plugin
--enable-default-pie --with-system-zlib
--enable-libphobos-checking=3Drelease --with-target-system-zlib=3Dauto
--enable-objc-gc=3Dauto --enable-multiarch --disable-werror
--with-arch-32=3Di686 --with-abi=3Dm64 --with-multilib-list=3Dm32,m64,mx32
--enable-multilib --with-tune=3Dgeneric
--enable-offload-targets=3Dnvptx-none=3D/build/gcc-10-JvwpWM/gcc-10-10.2.0/=
debian/tmp-nvptx/usr,amdgcn-amdhsa=3D/build/gcc-10-JvwpWM/gcc-10-10.2.0/deb=
ian/tmp-gcn/usr,hsa
--without-cuda-driver --enable-checking=3Drelease
--build=3Dx86_64-linux-gnu --host=3Dx86_64-linux-gnu
--target=3Dx86_64-linux-gnu
Thread model: posix
Supported LTO compression algorithms: zlib zstd
gcc version 10.2.0 (Ubuntu 10.2.0-13ubuntu1)
COLLECT_GCC_OPTIONS=3D'-v' '-gdwarf-4' '-c' '-o' 'test.o'
'-mtune=3Dgeneric' '-march=3Dx86-64'
 /usr/lib/gcc/x86_64-linux-gnu/10/cc1 -quiet -v -imultiarch
x86_64-linux-gnu test.c -quiet -dumpbase test.c -mtune=3Dgeneric
-march=3Dx86-64 -auxbase-strip test.o -gdwarf-4 -version
-fasynchronous-unwind-tables -fstack-protector-strong -Wformat
-Wformat-security -fstack-clash-protection -fcf-protection -o
/tmp/cc4hKJeo.s
GNU C17 (Ubuntu 10.2.0-13ubuntu1) version 10.2.0 (x86_64-linux-gnu)
compiled by GNU C version 10.2.0, GMP version 6.2.0, MPFR version
4.1.0, MPC version 1.2.0-rc1, isl version isl-0.22.1-GMP

GGC heuristics: --param ggc-min-expand=3D100 --param ggc-min-heapsize=3D131=
072
ignoring nonexistent directory "/usr/local/include/x86_64-linux-gnu"
ignoring nonexistent directory "/usr/lib/gcc/x86_64-linux-gnu/10/include-fi=
xed"
ignoring nonexistent directory
"/usr/lib/gcc/x86_64-linux-gnu/10/../../../../x86_64-linux-gnu/include"
#include "..." search starts here:
#include <...> search starts here:
 /usr/lib/gcc/x86_64-linux-gnu/10/include
 /usr/local/include
 /usr/include/x86_64-linux-gnu
 /usr/include
End of search list.
GNU C17 (Ubuntu 10.2.0-13ubuntu1) version 10.2.0 (x86_64-linux-gnu)
compiled by GNU C version 10.2.0, GMP version 6.2.0, MPFR version
4.1.0, MPC version 1.2.0-rc1, isl version isl-0.22.1-GMP

GGC heuristics: --param ggc-min-expand=3D100 --param ggc-min-heapsize=3D131=
072
Compiler executable checksum: 4831429547eb0be4fec215fca56ed5cf
COLLECT_GCC_OPTIONS=3D'-v' '-gdwarf-4' '-c' '-o' 'test.o'
'-mtune=3Dgeneric' '-march=3Dx86-64'
 as -v --64 -o test.o /tmp/cc4hKJeo.s
GNU assembler version 2.35.1 (x86_64-linux-gnu) using BFD version (GNU
Binutils for Ubuntu) 2.35.1
COMPILER_PATH=3D/usr/lib/gcc/x86_64-linux-gnu/10/:/usr/lib/gcc/x86_64-linux=
-gnu/10/:/usr/lib/gcc/x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/10/:/=
usr/lib/gcc/x86_64-linux-gnu/
LIBRARY_PATH=3D/usr/lib/gcc/x86_64-linux-gnu/10/:/usr/lib/gcc/x86_64-linux-=
gnu/10/../../../x86_64-linux-gnu/:/usr/lib/gcc/x86_64-linux-gnu/10/../../..=
/../lib/:/lib/x86_64-linux-gnu/:/lib/../lib/:/usr/lib/x86_64-linux-gnu/:/us=
r/lib/../lib/:/usr/lib/gcc/x86_64-linux-gnu/10/../../../:/lib/:/usr/lib/
COLLECT_GCC_OPTIONS=3D'-v' '-gdwarf-4' '-c' '-o' 'test.o'
'-mtune=3Dgeneric' '-march=3Dx86-64'
masahiro@grover:~$ readelf  --debug-dump=3Dinfo test.o
Contents of the .debug_info section:

  Compilation Unit @ offset 0x0:
   Length:        0x4f (32-bit)
   Version:       4
   Abbrev Offset: 0x0
   Pointer Size:  8
 <0><b>: Abbrev Number: 1 (DW_TAG_compile_unit)
    <c>   DW_AT_producer    : (indirect string, offset: 0x16): GNU C17
10.2.0 -mtune=3Dgeneric -march=3Dx86-64 -gdwarf-4
-fasynchronous-unwind-tables -fstack-protector-strong
-fstack-clash-protection -fcf-protection
    <10>   DW_AT_language    : 12 (ANSI C99)
    <11>   DW_AT_name        : (indirect string, offset: 0xf): test.c
    <15>   DW_AT_comp_dir    : (indirect string, offset: 0x0): /home/masahi=
ro
    <19>   DW_AT_low_pc      : 0x0
    <21>   DW_AT_high_pc     : 0xf
    <29>   DW_AT_stmt_list   : 0x0
 <1><2d>: Abbrev Number: 2 (DW_TAG_subprogram)
    <2e>   DW_AT_external    : 1
    <2e>   DW_AT_name        : (indirect string, offset: 0xab): main
    <32>   DW_AT_decl_file   : 1
    <33>   DW_AT_decl_line   : 1
    <34>   DW_AT_decl_column : 5
    <35>   DW_AT_prototyped  : 1
    <35>   DW_AT_type        : <0x4b>
    <39>   DW_AT_low_pc      : 0x0
    <41>   DW_AT_high_pc     : 0xf
    <49>   DW_AT_frame_base  : 1 byte block: 9c (DW_OP_call_frame_cfa)
    <4b>   DW_AT_GNU_all_call_sites: 1
 <1><4b>: Abbrev Number: 3 (DW_TAG_base_type)
    <4c>   DW_AT_byte_size   : 4
    <4d>   DW_AT_encoding    : 5 (signed)
    <4e>   DW_AT_name        : int
 <1><52>: Abbrev Number: 0





[2] Clang + GAS

masahiro@grover:~$ clang -v -fno-integrated-as -gdwarf-4 -c -o test.o test.=
c
Ubuntu clang version 11.0.0-2
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/10
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/8
Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/9
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
Selected GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/10
Candidate multilib: .;@m64
Selected multilib: .;@m64
 "/usr/lib/llvm-11/bin/clang" -cc1 -triple x86_64-pc-linux-gnu -S
-disable-free -disable-llvm-verifier -discard-value-names
-main-file-name test.c -mrelocation-model static -mframe-pointer=3Dall
-fmath-errno -fno-rounding-math -no-integrated-as
-mconstructor-aliases -munwind-tables -target-cpu x86-64
-fno-split-dwarf-inlining -debug-info-kind=3Dlimited -dwarf-version=3D4
-debugger-tuning=3Dgdb -v -resource-dir
/usr/lib/llvm-11/lib/clang/11.0.0 -internal-isystem /usr/local/include
-internal-isystem /usr/lib/llvm-11/lib/clang/11.0.0/include
-internal-externc-isystem /usr/include/x86_64-linux-gnu
-internal-externc-isystem /include -internal-externc-isystem
/usr/include -fno-dwarf-directory-asm -fdebug-compilation-dir
/home/masahiro -ferror-limit 19 -fgnuc-version=3D4.2.1
-fcolor-diagnostics -o /tmp/test-f43580.s -x c test.c
clang -cc1 version 11.0.0 based upon LLVM 11.0.0 default target
x86_64-pc-linux-gnu
ignoring nonexistent directory "/include"
#include "..." search starts here:
#include <...> search starts here:
 /usr/local/include
 /usr/lib/llvm-11/lib/clang/11.0.0/include
 /usr/include/x86_64-linux-gnu
 /usr/include
End of search list.
 "/usr/bin/as" --64 -o test.o /tmp/test-f43580.s
masahiro@grover:~$ readelf  --debug-dump=3Dinfo test.o
Contents of the .debug_info section:

  Compilation Unit @ offset 0x0:
   Length:        0x47 (32-bit)
   Version:       4
   Abbrev Offset: 0x0
   Pointer Size:  8
 <0><b>: Abbrev Number: 1 (DW_TAG_compile_unit)
    <c>   DW_AT_producer    : (indirect string, offset: 0x0): Ubuntu
clang version 11.0.0-2
    <10>   DW_AT_language    : 12 (ANSI C99)
    <12>   DW_AT_name        : (indirect string, offset: 0x1e): test.c
    <16>   DW_AT_stmt_list   : 0x0
    <1a>   DW_AT_comp_dir    : (indirect string, offset: 0x25): /home/masah=
iro
    <1e>   DW_AT_low_pc      : 0x0
    <26>   DW_AT_high_pc     : 0xf
 <1><2a>: Abbrev Number: 2 (DW_TAG_subprogram)
    <2b>   DW_AT_low_pc      : 0x0
    <33>   DW_AT_high_pc     : 0xf
    <37>   DW_AT_frame_base  : 1 byte block: 56 (DW_OP_reg6 (rbp))
    <39>   DW_AT_name        : (indirect string, offset: 0x34): main
    <3d>   DW_AT_decl_file   : 1
    <3e>   DW_AT_decl_line   : 1
    <3f>   DW_AT_prototyped  : 1
    <3f>   DW_AT_type        : <0x43>
    <43>   DW_AT_external    : 1
 <1><43>: Abbrev Number: 3 (DW_TAG_base_type)
    <44>   DW_AT_name        : (indirect string, offset: 0x39): int
    <48>   DW_AT_encoding    : 5 (signed)
    <49>   DW_AT_byte_size   : 4
 <1><4a>: Abbrev Number: 0






In [1],  "as -v --64 -o test.o /tmp/cc4hKJeo.s"
is the command that invoked gas.

There is no -gdwarf-4 option passed to gas here,
but the produced object has the correct dwarf4 info.




In [2],   "/usr/bin/as" --64 -o test.o /tmp/test-f43580.s
is the command that invoked gas.

Again, no -gdwarf-4 option here,
but the produced object has the correct dwarf4 info.




So, when you build *.c -> *.o,
passing -gdwarf-* is enough.

The debug info is generated in the compile stage (i.e. by cc1)
and included in the intermediate /tmp/*.s file.

All gas needs to do is to transform the debug sections
in the intermediate /tmp/*.s file
into the binary stream in the .o file.
GAS does it without being instructed by the
explicit -Wa,-gdwarf-* option.


In my understanding, passing -Wa,-gdwarf
makes sense only when you build *.S -> *.o


This is why I think
  DEBUG_CFLAGS +=3D -gdwarf-4   (for source debug of .c files)
and
  KBUILD_AFLAGS +=3D -Wa,gdwarf-4  (for source debug of .S files)

are basically orthogonal (and they can be even controlled by
separate CONFIG options).


As stated above,  DEBUG_CFLAGS +=3D -Wa,gdward-4
does not make sense.


I am not a compiler expert, but
that is what I understood from some experiments.

Please correct me if I am wrong.






> > When I use GCC v10.2.1 DEBUG_CFLAGS are not set.
>
> You should have -gdwarf-4 (and not -Wa,-gwarf-4) set for DEBUG_CFLAGS
> when compiling with GCC and enabling CONFIG_DEBUG_INFO_DWARF4. Can you
> please confirm? (Perhaps you may have accidentally disabled
> CONFIG_DEBUG_INFO by rerunning `make defconfig`?)
> --
> Thanks,
> ~Nick Desaulniers



--
Best Regards


Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNASkCbm-075tPrNgR8s-fQ5y4MTjPQXhKO04JT%2B2X6R-GQ%40m=
ail.gmail.com.
