Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBNO4XCBQMGQEDIZ2ZVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id B839D35776B
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 00:12:05 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id c12sf10798lfm.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 15:12:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617833525; cv=pass;
        d=google.com; s=arc-20160816;
        b=sfbpaYSiSvae5t0F1WLqPfEAo/kcgGH6knaIYxC5Nxoj/BkfPWdddvmyliIN1N8dn1
         Z4DRjyUO3ujzNuYGG+7SPG/SSxrleT62eAr/1wG0SxzmInr/znIO2K30qpawnOPcL/w8
         /CAE7LLgKJTKdwREuDHLJ/N85o9lGvDtlb0cUpZ8DCfSa19rWk7GgLg1FQzasl8Dtuji
         1F+v3e9FVfxHOyDa2ZJZUiCOLthwSM7xs4hZkH6zJgbRU0HInKUK/9cyZauL72zzEGZo
         Ce22UtZ25RbdEd+sb9DVLLuZZxT6V4Kt9SHdj8Alqkyt1M/2GebpOG4yCU5xhFMFrVYJ
         zbIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=w++kyluHQTSLgoUDfafHtjDyer+mQSwopv/YiWGa/zw=;
        b=JVSbVdFrHq08xkYb8kJpdZUPFACAnc1N+DJFoiEQrSLQK6YtjIAuqZ72KRSvnlE/t2
         syozFg3p6FWGm+NHnFoKcylcC6VfkQAllhtCjKwOJaQhxqoXPSiwG/Y+RXqeMUa55GdE
         ZL145uO3yIfgXqmla8+wKunFeCaAxmQPkI3E/lO7Qnw75ZPLeG9MT0rJtWQmfrtoARHi
         3huKeCDb6GQLW0izsOaJjsjFiWqGYhXIk/XJEYzVcJVgm/Jd18hFqohGX5nYBdWxbbqe
         6hvpUAX3oHLy7WB3otUCWckmp24lFSo/FVy/bx91Cj5FePPe1Z/mN1KkGh9HckbMGJrj
         PqjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ItW2Gryw;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w++kyluHQTSLgoUDfafHtjDyer+mQSwopv/YiWGa/zw=;
        b=F/8M8+P14uJnQhQ7DkIQO5D9rtmmaPW6Egpl4DVH8gXcjpb8w8svSqvJyJt6OJ2lR5
         19xjZjKPjpvmHRBdOp6pdcbAGBaW9ro4DYBKgy9mB/McsDk8320a0+11DVMfuux6To0X
         byzG6KdAIFkrjAkdvQLxwrL2W0+ydUpDVaFdfVZTM4OoufTkuDBUjbuDoeSXxbgXYJi4
         othsOEvPbiy+FZPVKSz/DGH5pfjh+Q041otgrMRaN9IkZyzT7J3L5/AKIkUwpEufZArD
         6rDZ5V9DBfQA8gILXcqbHymi6As8pBML3A5bPLCQNgZYhO/r+MIoPyfVMSE2KDPl+VBt
         glwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w++kyluHQTSLgoUDfafHtjDyer+mQSwopv/YiWGa/zw=;
        b=iv6B3VsI7xB0mVvJnxkt52STz/Y2OsSXg0iO1NHUK4e7bSRlqFFlZLEFSb+FjA9215
         HqIy3kNONUwX74r16RyAyANEshubER65pfSfN/pPJ5xw4EVPfkqAOhOG5dDGD1DsOF00
         SUyXeoVm7tdjwF6MHC2tOZiWGg89/3com4GhI7Mfo9ZwjJRW3OUCoOssxDEM6NczmG2V
         NhgDeHalN2J8IfC3bANiz9ksFkEtsAEyBRFrwHYmdQex4uQC9m2dmYw3H3N4fkVQCGxo
         324FZ5L/gg09PgxlyK/8BZe1j8Pfdw/dmIzqOnE9033CJjzwrVmD41Z7zKZbIignA+Vu
         rKVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YGx8x3cXWDpgwmUq2EbPugxvypoa8rvX6PR027hckGQqVuEV5
	mEUGfEmxyvZsKM73hTLmdY0=
X-Google-Smtp-Source: ABdhPJzOn9Ark2Ced4y1mQ3rOvpL52+dxvH5eOnMJYMpSr4sgjAAPIWqZ67YQMzIrs5ZlhJ72mXNMA==
X-Received: by 2002:a19:3804:: with SMTP id f4mr3970500lfa.117.1617833525322;
        Wed, 07 Apr 2021 15:12:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2050:: with SMTP id t16ls792035ljo.4.gmail; Wed, 07
 Apr 2021 15:12:04 -0700 (PDT)
X-Received: by 2002:a2e:8e33:: with SMTP id r19mr3442862ljk.40.1617833524238;
        Wed, 07 Apr 2021 15:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617833524; cv=none;
        d=google.com; s=arc-20160816;
        b=AL0LkdPRNpAKJ3gtDywo1d6q7yAh9nJLhGG0+M3FShIVz43U2k8sqJH90kFFTYbwwQ
         QYf8mH0EnNmbfHPqByM9n9wzytNSvT4Mq3OqiRflLEOpyU2WsU43C7Hc6G3sD/GZkTg3
         RH2ECZYyFuCbmYmABG0qB6WrRNpZz+RSQX2I7Q4MGjnvz8dPPOXC1a8tP6/CeaRtJu4U
         EFByiArS3s9rn4utVTLD1ffxlwIDwQd+1WGvca1RjnonBmaWOAZaccaO/QUy/SC7LV3i
         waktxvg5K+vKr0f4UtgilWzvB0HhZuaSpEePnTt1itG7qelgK9lrJWG9+FEYRfEf3pp0
         8+LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LaEQtR4tCkho3jCoOuD8zH0E4CDGET2idjREQ6OWBMs=;
        b=u0UOAj74AUQ/kikPEGXGEcMf72JfvZWrdB450rptSiRcTSY/mtzLwITtC9nNuONPuB
         fl3BNxs2PPzzG43AqAcgSjhRyBDXiEIOlBRyIft1dYP57fKPpshGapRS/pzTTXrOopHi
         y8xzkeUgllYHsDSwl4rSutGgokoLv3sv/fNUMwxKdoddH9Hp8mX0dSjRChFoJcZ55B1x
         xFkPxaaw4l177cDKwRSE1qStMbJhvDvyaoYoOX+GsrqzfqW1/xWgQUcBYXtvK3s/sU3o
         CCcDLUj1V6gpPVpAgLYuBqSQw5tehWDZ4D5YzR3KW1jiiRQDnBUV06BkQ07hOiWmohdI
         /KUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ItW2Gryw;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id q26si1876141ljj.4.2021.04.07.15.12.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 15:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Received: by mail-ej1-x62a.google.com with SMTP id a25so7147449ejk.0
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 15:12:04 -0700 (PDT)
X-Received: by 2002:a17:906:26c9:: with SMTP id u9mr6318502ejc.520.1617833523767;
 Wed, 07 Apr 2021 15:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000adaf6505bf68fbf2@google.com> <CAKwvOdmWoLX-r09vuWDobkMjeTggf7dcdb1AhuPxmeE6z1yo1A@mail.gmail.com>
In-Reply-To: <CAKwvOdmWoLX-r09vuWDobkMjeTggf7dcdb1AhuPxmeE6z1yo1A@mail.gmail.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Thu, 8 Apr 2021 00:11:52 +0200
Message-ID: <CADYN=9LvDEU-eNwmz02S1set84a6UZOR3zkr_83y+ZL9kB+rrg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 7, 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mark Brown <broonie@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ItW2Gryw;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 7 Apr 2021 at 23:59, Nick Desaulniers <ndesaulniers@google.com> wro=
te:
>
> Hi Mark and Anders,

Hi Nick,

> How do we reproduce issues mentioned in this week's meeting in regards
> to building perf?

You are correct, it builds for x86 if you only build perf.

I tried different ways.
Building perf for x86 works:
tuxmake --runtime podman --target-arch x86_64 --toolchain clang-11
--kconfig defconfig -e LLVM=3D1 perf

Build perf for arm64 or arm doesn't work[2]:
tuxmake --runtime podman --target-arch arm64 --toolchain clang-11
--kconfig defconfig -e LLVM=3D1 perf


Building something else like modules and perf [2] for x86 doesn't
work, I think this is an issue with generated files isn't generated in
time:
tuxmake --runtime podman --target-arch x86_64 --toolchain clang-11
--kconfig defconfig -e LLVM=3D1 modules perf

  CC       /home/anders/.cache/tuxmake/builds/108/tmp/tests/mmap-basic.o
In file included from bench/mem-memcpy-x86-64-asm.S:14:
In file included from bench/../../arch/x86/lib/memcpy_64.S:8:
/home/anders/.cache/tuxmake/builds/108/tmp/arch/x86/include/generated/asm/e=
xport.h:1:10:
fatal error: 'asm-generic/export.h' file not found
#include <asm-generic/export.h>
         ^~~~~~~~~~~~~~~~~~~~~~
  CC       /home/anders/.cache/tuxmake/builds/108/tmp/arch/x86/util/intel-b=
ts.o
1 error generated.
make[4]: *** [/srv/src/kernel/linux/tools/build/Makefile.build:105:
/home/anders/.cache/tuxmake/builds/108/tmp/bench/mem-memcpy-x86-64-asm.o]
Error 1
make[3]: *** [/srv/src/kernel/linux/tools/build/Makefile.build:139:
bench] Error 2


Cheers,
Anders
[1] http://ix.io/2Vlo
[2] http://ix.io/2VkU

>
> I just tried
> $ make LLVM=3D1 -j72 defconfig
> $ make LLVM=3D1 -j72 tools/perf
>
> which seemed to build without error.  I do an instance of
> -Wunused-function and -Wmissing-prototypes in pmu-events/jevents.c
> though.
>
> On Wed, Apr 7, 2021 at 2:55 PM <ndesaulniers@google.com> wrote:
> >
> > http://go/clang-built-linux-notes
> > Meeting: Hangouts Meet
> >
> > April 7, 2021
> >
> > KCOV broken for CFI (Nick)
> >
> > Missing debug info, but __sanitizer_cov_trace_pc should probably also b=
e __noinline.
> > https://github.com/ClangBuiltLinux/linux/issues/1338
> > Working on 2 fixes for LLVM.
> >
> > GCOV broken in clang-11+ (Nick)
> >
> > https://lore.kernel.org/lkml/20210407185456.41943-1-ndesaulniers@google=
.com/
> >
> > Arm32 IAS patch (Jian)
> >
> > https://reviews.llvm.org/D98916
> >
> > Pahole patches
> >
> > https://lore.kernel.org/dwarves/YG3SYoNWqb8DlP61@kernel.org/
> >
> > RISC-V
> >
> > https://github.com/riscv/riscv-elf-psabi-doc/issues/183 R_RISCV_ALIGN
> >
> > Alignment issue in blk
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1328
> >
> > Plumbers
> >
> > Submitted MC proposal for =E2=80=9CToolchains and Kernel MC=E2=80=9D wi=
th Jose Marchesi from Oracle=E2=80=99s GCC team.
> >
> > Drop clang-10 support?
> >
> > Clang-12 maybe released next week?
> > Can next debian still include clang-10 for kernel builds?
> > Can tuxsuite fetch clang-10 from apt.llvm.org for now?
> >
> > CFI needs help testing
> >
> > V5: https://lore.kernel.org/lkml/20210401233216.2540591-1-samitolvanen@=
google.com/
> >
> > Gcc implemented support for asm goto w/ outputs! W00t
> >
> > https://gcc.gnu.org/git/gitweb.cgi?p=3Dgcc.git;h=3De3b3b59683c1
> >
> > Compare_exchange
> >
> > https://godbolt.org/
> > https://lore.kernel.org/lkml/YG2fQ1tGDIMhyIHe@hirez.programming.kicks-a=
ss.net/
> >
> > Building perf with clang has some issues
> >
> >
> > ________________________________
> >
> > Sent by http://go/sendnotes
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CADYN%3D9LvDEU-eNwmz02S1set84a6UZOR3zkr_83y%2BZL9kB%2Brrg=
%40mail.gmail.com.
