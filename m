Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBHXGXCBQMGQEPATVV3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id D53003577BB
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 00:33:02 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id t4sf36569lft.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 15:33:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617834782; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqhQFaTKU+9QNwANr2XkLp0hEUn+V0zjkuU/4ZNmxrGcqy9+c42P8RjSv3LZtTUdZd
         n1/K+bxUgLMc5Jx4T6j30NOMzbU+VbWJomfw6BhJ+j/a/1ubxyKgCPCjB3GlkX9cfBJ2
         pQNYBL61dSG+3d2B2wBwaDbopqmf0e5ZSWoWKPAsW2cBOggLiMx1pApCSqGmZpZx3JtC
         GKkSjfscZFsil1XA1hH42vnDKUn7MaiOm0VDiIdgnqe1pn6/O0jKDGjbTZUsHirzI3ca
         eInbXvnsyCOCg5YGDBj6w0E/qfMgWIleODi7CBDcM2en34iROzGqCEvoYjFjJHZCmxpi
         kYog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=qmUQ1tfoU9fFSW5w9YchZ9DZjEXHhqyllJWBEJt2x2I=;
        b=sjvj0dGEemmiJgYqUEPy0N4/Z/WHDa2bjbM/4zPeir+rEfocCXLm4JT5TEm8ogE5uN
         bwhbddJrenWiPYBri/qeL+bIRp57cxtuUYqC0mnTRIb5dD8Be2Mgscb0tX0baedCCV+I
         ee0vtHiD5mH/YmQK8DrEc3FiZ7ArrfK3PfN8BATOWNhU+0taveSDtjwUtUOUI0CvbdMI
         mHGjoy9CaodqWyJTVPgR5Dls4KXA3uUronAtzvv8kCbBeOU0iuc7kiPZJAyDqPtJd0BC
         VtqVbP/ucNvm+w3eDBgPZtrRs8AIU9VTeZj4uSK+Sgxy6GyodwUxe+nB+kRG2wbT14tV
         oiKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bWOk1ZXv;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qmUQ1tfoU9fFSW5w9YchZ9DZjEXHhqyllJWBEJt2x2I=;
        b=GzQmDM1sfyoHaRN9zC8BZJS6xkbub/zzvfP5tuFrDgs/O+I3bFHJHpgAx9As4savi1
         Dl41AAntnY0ZFlwJOBvADRMpgC5gR1H83+bYHfE/tjTA3YtVCkFVnOH/h9cl9ZLI9bBI
         81mEKZUS/buTk6sGpPwMilGB3W4JePhkKjuksFp+kYH2wDnFum+EuZzriTlkQvJwQQc/
         Q1fdFqavUBYWofcUDXAAMkfgJyinNvLNQPzdKA7VCaHgEjyAti+auNHsCiFpAbE4dOkK
         +uC0bJT+p4jWsHFB9kBIqjDsvcSmht36XDhDD9cUxX1ZnjIF6xwq0n/smj0QEwhcgryK
         LpcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qmUQ1tfoU9fFSW5w9YchZ9DZjEXHhqyllJWBEJt2x2I=;
        b=MHa3UEC7ACzg4SjFsmGx8cEQ9CwHBaY1ggCjY6QoBBs3U9VPPW6DfqxBThUSkrlBLD
         dA7cR529NZCDEwM2vWHDMBVCNCz2lk7/5aO41tdiiqfTXjUfIS5Ezd4G0PY4fgxi8ZKG
         zwoArGNaNkGKfGzQpkFZSeBbyDFCNOMtMxfFFtQnnU9OS2ssrNIEqLIQI4TkM5YrcQp+
         SWP3Bw325UcIJPrdbkcpUiV50WJq919CmHGxQD1LltN6jnfxfuJb/GIKzJqRmAXc7uFS
         a8+7MOD9UnBS7hmZgDVKsN98RZJs+AstI2VMMrJGi8x0FCjRFfylx8e2m8qIoxXP/oSs
         YLSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JyUXcflfWnPpGFJrHksWv8iWO/T6j+QqUvMQN9x1G3dqE169M
	HA28AL+Y/pLy0KSrHCuUn9k=
X-Google-Smtp-Source: ABdhPJxfAZrl/7Gu4ctwZfleVlFo1CsHuO90ZV8vNgTAoEt2NDHnMSU+c0DEtvXkroFSp43JeAbBeQ==
X-Received: by 2002:ac2:5306:: with SMTP id c6mr3797229lfh.88.1617834782407;
        Wed, 07 Apr 2021 15:33:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls237665lfm.2.gmail; Wed, 07 Apr
 2021 15:33:01 -0700 (PDT)
X-Received: by 2002:ac2:5933:: with SMTP id v19mr3706640lfi.405.1617834781309;
        Wed, 07 Apr 2021 15:33:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617834781; cv=none;
        d=google.com; s=arc-20160816;
        b=aWe1FGZPiqn/+KTBvf/7yYmoAqq4mj/VHzK5GiQXsUrM4Tmma4cAVLwF3OPsJI4lsX
         FA+fjEhUcq6p1tO0u8Er/juRD9l8+3k78iVg6R8oO9CpNYqvBMvxaUAc36+OyqkQF8+S
         9BjQLnvNdCyYIqQcu55RwTnUX3KaxIItpq/Xh0txaTzZ0UTKgBTkA2m6Uij055J6KpyR
         MgLO1rR6PEsMjHDsmfE84b3auSWVhvPBQHYefOnTD0K9aqrwiTcVyk/nDdwicajWTpRt
         i7j+wl8wnTm+3NJDXgc/dI6R14HfobFxpIf3ZNEXRRLOK9+l9TkFALaF10/7axz6kPWw
         OMTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oykfggBspEdMYB7ZzjOTEedrWbagY9Cqdq36oMufeO0=;
        b=iKnv7n46hEWmjL69WG8sC0HLhWWvhmwtnx+cjhVEl6JX5xLf2Y1kVtHs7kx+ybD9UC
         iqPAZ/aG2J8jvDJ2Y73LgKdQdSFZAiaJ8O1xPm4Nl9OchUGesrJvMj02jiwU0QF2slhH
         K+f0ZzuL9D4WKTo7YSWQMsFUJphnf5uHosrZUpOypAIBSqNNgdSOKixbwdiIT/C15YfA
         0ykAFjHqzrtnYBX8y6L2INFWljw3xo5ofe+hnL11Kl6ZCkPHs8qRzGo7ObmpdRsWSFLC
         Jg2hQ6C7j1jezDR6rjnmGv+IMbDCw6yyZwbSJxtvDXrIfHCxbG1M3pumL+v/pquKwXDP
         INRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bWOk1ZXv;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id i30si2161005lfj.6.2021.04.07.15.33.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 15:33:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id l4so30220039ejc.10
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 15:33:01 -0700 (PDT)
X-Received: by 2002:a17:906:490e:: with SMTP id b14mr6454976ejq.303.1617834780925;
 Wed, 07 Apr 2021 15:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000adaf6505bf68fbf2@google.com> <CAKwvOdmWoLX-r09vuWDobkMjeTggf7dcdb1AhuPxmeE6z1yo1A@mail.gmail.com>
 <CADYN=9LvDEU-eNwmz02S1set84a6UZOR3zkr_83y+ZL9kB+rrg@mail.gmail.com>
In-Reply-To: <CADYN=9LvDEU-eNwmz02S1set84a6UZOR3zkr_83y+ZL9kB+rrg@mail.gmail.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Thu, 8 Apr 2021 00:32:50 +0200
Message-ID: <CADYN=9L275ZXdRh5nS6euWXG2aj1Dpbi7RJFxhrc8ibAGO9rSw@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 7, 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mark Brown <broonie@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=bWOk1ZXv;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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

On Thu, 8 Apr 2021 at 00:11, Anders Roxell <anders.roxell@linaro.org> wrote=
:
>
> On Wed, 7 Apr 2021 at 23:59, Nick Desaulniers <ndesaulniers@google.com> w=
rote:
> >
> > Hi Mark and Anders,
>
> Hi Nick,
>
> > How do we reproduce issues mentioned in this week's meeting in regards
> > to building perf?
>
> You are correct, it builds for x86 if you only build perf.
>
> I tried different ways.
> Building perf for x86 works:
> tuxmake --runtime podman --target-arch x86_64 --toolchain clang-11
> --kconfig defconfig -e LLVM=3D1 perf
>
> Build perf for arm64 or arm doesn't work[2]:

typo, meant link [1] here.

> tuxmake --runtime podman --target-arch arm64 --toolchain clang-11
> --kconfig defconfig -e LLVM=3D1 perf
>
>
> Building something else like modules and perf [2] for x86 doesn't
> work

This doesn't work with gcc either for x86. However, it works on arm,
arm64 and i386 for with though.

>, I think this is an issue with generated files isn't generated in
> time:
> tuxmake --runtime podman --target-arch x86_64 --toolchain clang-11
> --kconfig defconfig -e LLVM=3D1 modules perf
>
>   CC       /home/anders/.cache/tuxmake/builds/108/tmp/tests/mmap-basic.o
> In file included from bench/mem-memcpy-x86-64-asm.S:14:
> In file included from bench/../../arch/x86/lib/memcpy_64.S:8:
> /home/anders/.cache/tuxmake/builds/108/tmp/arch/x86/include/generated/asm=
/export.h:1:10:
> fatal error: 'asm-generic/export.h' file not found
> #include <asm-generic/export.h>
>          ^~~~~~~~~~~~~~~~~~~~~~
>   CC       /home/anders/.cache/tuxmake/builds/108/tmp/arch/x86/util/intel=
-bts.o
> 1 error generated.
> make[4]: *** [/srv/src/kernel/linux/tools/build/Makefile.build:105:
> /home/anders/.cache/tuxmake/builds/108/tmp/bench/mem-memcpy-x86-64-asm.o]
> Error 1
> make[3]: *** [/srv/src/kernel/linux/tools/build/Makefile.build:139:
> bench] Error 2
>
>
> Cheers,
> Anders
> [1] http://ix.io/2Vlo
> [2] http://ix.io/2VkU
>
> >
> > I just tried
> > $ make LLVM=3D1 -j72 defconfig
> > $ make LLVM=3D1 -j72 tools/perf
> >
> > which seemed to build without error.  I do an instance of
> > -Wunused-function and -Wmissing-prototypes in pmu-events/jevents.c
> > though.
> >
> > On Wed, Apr 7, 2021 at 2:55 PM <ndesaulniers@google.com> wrote:
> > >
> > > http://go/clang-built-linux-notes
> > > Meeting: Hangouts Meet
> > >
> > > April 7, 2021
> > >
> > > KCOV broken for CFI (Nick)
> > >
> > > Missing debug info, but __sanitizer_cov_trace_pc should probably also=
 be __noinline.
> > > https://github.com/ClangBuiltLinux/linux/issues/1338
> > > Working on 2 fixes for LLVM.
> > >
> > > GCOV broken in clang-11+ (Nick)
> > >
> > > https://lore.kernel.org/lkml/20210407185456.41943-1-ndesaulniers@goog=
le.com/
> > >
> > > Arm32 IAS patch (Jian)
> > >
> > > https://reviews.llvm.org/D98916
> > >
> > > Pahole patches
> > >
> > > https://lore.kernel.org/dwarves/YG3SYoNWqb8DlP61@kernel.org/
> > >
> > > RISC-V
> > >
> > > https://github.com/riscv/riscv-elf-psabi-doc/issues/183 R_RISCV_ALIGN
> > >
> > > Alignment issue in blk
> > >
> > > https://github.com/ClangBuiltLinux/linux/issues/1328
> > >
> > > Plumbers
> > >
> > > Submitted MC proposal for =E2=80=9CToolchains and Kernel MC=E2=80=9D =
with Jose Marchesi from Oracle=E2=80=99s GCC team.
> > >
> > > Drop clang-10 support?
> > >
> > > Clang-12 maybe released next week?
> > > Can next debian still include clang-10 for kernel builds?
> > > Can tuxsuite fetch clang-10 from apt.llvm.org for now?
> > >
> > > CFI needs help testing
> > >
> > > V5: https://lore.kernel.org/lkml/20210401233216.2540591-1-samitolvane=
n@google.com/
> > >
> > > Gcc implemented support for asm goto w/ outputs! W00t
> > >
> > > https://gcc.gnu.org/git/gitweb.cgi?p=3Dgcc.git;h=3De3b3b59683c1
> > >
> > > Compare_exchange
> > >
> > > https://godbolt.org/
> > > https://lore.kernel.org/lkml/YG2fQ1tGDIMhyIHe@hirez.programming.kicks=
-ass.net/
> > >
> > > Building perf with clang has some issues
> > >
> > >
> > > ________________________________
> > >
> > > Sent by http://go/sendnotes
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CADYN%3D9L275ZXdRh5nS6euWXG2aj1Dpbi7RJFxhrc8ibAGO9rSw%40m=
ail.gmail.com.
