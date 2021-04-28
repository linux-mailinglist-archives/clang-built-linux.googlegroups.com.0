Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMGTU2CAMGQEOCDKAMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 484F036DEF8
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 20:30:09 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id d6-20020a0564020786b0290387927a37e2sf6442734edy.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 11:30:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619634609; cv=pass;
        d=google.com; s=arc-20160816;
        b=RMtNT6CoEznmBNwBPLNEtPpH2ZpFTqRGxlg4pQQpaaMxAFQtq0ydqSPFgsQMpW4CGs
         Mgx4K0FCYBnTBDVv40Djiw0v3FUw/60jvWscXYwp3FdFhQuN95+byUUemPQmRX7vzS4b
         JI91LZxvFXWOhs68X/+0sK4WsvEqdbYIQ+fkyZauisSHib1+y7nBrdVLLf9PMSo6gVko
         ry9XqVwnJp/j8cguZ3lwJ3H82VJJSA3j6Mt62H+zK7yT3pHm0XD/uxPvFePKK95TuNon
         VUuJM6SWcD3+V4HwAEhWhvWPyzO8rrJdFVybdB8h6JyCAKYFGhgEO//xGYJ+lB71KVtb
         5oKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=avYNIVOyM/0OCLZuzPWPRiik+NLbQ13u2G8QFizWZIg=;
        b=ejaeO/9q9sGssq1nKWB3qz3L2Zk+EF4qwBCDukZgsRaULK4Gfu5b4F9qMuM30Ey0rp
         IuTYI8RyQdg2pTNFy1P8nzyU8PpIttOpjMlmJWxJlwTGxnxeB++UivYM+neZLwDAe/EL
         UxVMLFwgBy7tfWspGb0b/rehv15nGu54fCyr1O6jIJI/UZAsM9f7s9i5nNngPqe4ew97
         H8+I+eKjZhiCo/vD5k4eiBKjgtxJbQINC2jGO5uKlizx8oalfVSb7/ot+2WjSgG4n/qN
         nNHPo4Pd1rVqf1IZ9B7YPph3MkcC35mYFxNykpwIazTAq/KsEKWnYDh49UYuvXwzUmBj
         Z7sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W+XiauO+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=avYNIVOyM/0OCLZuzPWPRiik+NLbQ13u2G8QFizWZIg=;
        b=fqpEfYFjFLuluOmOW9Z2W4Tor1cOcxL3ivIZVIfQIVeTnbnk6NK33J1n/H1w2n/uPi
         J+xdzczrVuNPy84fTiRzO28a+B5UhcLQUE2sek+b2TGQrDJumKOlPfeeRl2XX3M9lfSp
         KOMIq6T7VDZ2Txk0TxmJcv2GXh3s665cVmsOGlKV0ZIVRoOGxlN0yaXsja5dq/LuQX/L
         /ata2m+0KOpXpCvmn6kdFC4jeypyLVC0rDdEnxL/O3MW5N3SgCL1SAZGlHetASg7pf4U
         bZtxoHozekic4Qc0nBbY0bCocZxQwwGyDMq5niS3QjxoCCy0UF0ZbJKgMBDhPdYzbmzN
         pVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=avYNIVOyM/0OCLZuzPWPRiik+NLbQ13u2G8QFizWZIg=;
        b=pqaJd2gTEq30Kdohk1YCbouFmuI8BQnx7GWrHhegZrhGzp75NgRM7yzOqsuCFeuqzR
         mT8iXYmucwQJWnTasC/IAMon+4lCHAZ3zt9Rh2zqFtdXelUjx9wyqWh3wa+Gf1XhMhoA
         W5h/Xa0XAi3IKU7xAgWe1MRnK98/VE/L0HdJTVby4nDJaY0duMKrIPvmIv55qvarZkaq
         SLSKGJgFDbckXSvMZcjkhG8yQzQFJ48UKY8RXJKUCiso+8iX19r8cWqR7/Ul3AS9r1He
         MHbXUVU2C09UnoVwtU9JJrMAYHCaCUIzjxbMvm0VglL4RQzyb3cuEN70sdFk7UlWgekA
         8aRQ==
X-Gm-Message-State: AOAM530MgKlL3K+qsauArX7uYG/mey6JBI5glWqkufn2GLZw4b80VoSO
	lL2Izc/C9qjb+qacbWJmQBE=
X-Google-Smtp-Source: ABdhPJzk6B2n4IPUXh1fVovVFEgrr9dIQmR79scwxJRP+J0KiEjnUIOGwzYsqSBuwWgi+ysHPF+1Jw==
X-Received: by 2002:a17:906:cc8b:: with SMTP id oq11mr448101ejb.520.1619634609017;
        Wed, 28 Apr 2021 11:30:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls520603edw.2.gmail; Wed, 28
 Apr 2021 11:30:08 -0700 (PDT)
X-Received: by 2002:a05:6402:891:: with SMTP id e17mr4407479edy.107.1619634608126;
        Wed, 28 Apr 2021 11:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619634608; cv=none;
        d=google.com; s=arc-20160816;
        b=q9g62e3ZiY+K1U9d7b4lZ48NozXuDChXIoX7jnAUUe/s1vjkjblrD1r6n9lEIpoLhh
         zJcOaiAXCLVS5miC3SfnT2P5cvwkeZqYgdprgXs7FR5yDk6snyXi7PXGVn7SNSOrNxiA
         o5D7IaA69A2zNkkPvWN6iZEEHGHwpr0EBuVkkcM41CmsbhckHYXK6RvW7p99bTa6xRBf
         jSNPNZMLR8RbPiMhcvjAgRorKjsxgi1NmPQ6FV3tmhQbtY55wmoC5QfR/dW99dx82Jl+
         PLw6eBKMu28syjUFvr5oeM7pAL9u2YmKhdJej5whPqKjH/vIKIsL0TtNW5dEU85e7V2A
         9yfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ouXJQU0l/1Nl/aKZMVs5vTt+NQdY80rI7bOxFsuAOZQ=;
        b=oxDn7zhIUILCk2445ZpEIXVUMkoKxuts/rqMPtAmCl0K8N1hYiEWLOj/NF92Fe9Cdz
         7Kb+3A200WAiWmrq2eoIgNSnj9B85E7eq/pwGzwZyQhZSQp6zQxY3Inww7tqQeaS7X5t
         Cyz2daQKUmggriiUXLOi5y1R3Uk7JhTyT4TMUndcCEZgMovLBPTDKFmid0FEnk1icxJL
         TbFYYgXOh9pBpGFgq5gwh8LaGo7wSU2PaeFfVBI1b8oSieVmXGV/4FtZBqa1xS7xoRjv
         NYt/z7CPmbZgCviHR6vkWTmQMeiV9ISlsMUC2+gB0TORxwC+J63E1AEiOCwyUpOZQhKG
         FOlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W+XiauO+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id h3si43242edz.1.2021.04.28.11.30.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 11:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id d27so43972833lfv.9
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 11:30:08 -0700 (PDT)
X-Received: by 2002:ac2:4829:: with SMTP id 9mr1505373lft.543.1619634607618;
 Wed, 28 Apr 2021 11:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com> <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org>
In-Reply-To: <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Apr 2021 11:29:56 -0700
Message-ID: <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Brian Cain <bcain@codeaurora.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W+XiauO+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Wed, Apr 28, 2021 at 10:00 AM Brian Cain <bcain@codeaurora.org> wrote:
>
>
>
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > Sent: Wednesday, April 28, 2021 11:50 AM
> > To: Brian Cain <bcain@codeaurora.org>
> > Cc: clang-built-linux <clang-built-linux@googlegroups.com>;
> > sidneym@codeaurora.org
> > Subject: Re: FW: ARCH=hexagon unsupported?
> >
> > On Wed, Apr 28, 2021 at 9:09 AM Brian Cain <bcain@codeaurora.org> wrote:
> > >
> > > > -----Original Message-----
> > > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > > Sent: Friday, April 23, 2021 4:40 PM
> > > ...
> > > > We'd be first in line to help build test such a patch. Please
> > > > consider cc'ing myself and clang-built-linux@googlegroups.com when
> > > > such a patch is available externally.  Further, we have the CI ready
> > > > and waiting to add new architectures, even if it's just build
> > > > testing. That would have caught regressions like 8320514c91bea; we
> > > > were down to 1 build failure with
> > > > https://github.com/ClangBuiltLinux/linux/issues/759 last I looked
> > > > which was preventing us from adding Hexagon to any CI, but we must
> > > > now dig ourselves out of a slightly deeper hole now.
> > > >
> > > > Is this patch something you suspect will take quite some time to
> > > > work through internal review?
> > >
> > > These patches have completed their internal review.  I have pushed them
> > to my tree at git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux using
> > for-linus branch, up to commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> > :
> >
> > Are you able to link these with lld? I see:
>
> Sorry -- I used " KBUILD_CFLAGS_KERNEL=-mlong-calls".  Sid, since this seems to be required maybe we should add it to the kernel build config?

Yes, please. arch/hexagon/Makefile KBUILD_CFLAGS would be where to add
it I suspect.

>
> >
> > $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1
> > LLVM_IAS=1
> > -j71 defconfig
> > $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1
> > LLVM_IAS=1 -j71 ...
> >   LD      .tmp_vmlinux.kallsyms1
> > ld.lld: error: vdso.c:(function vdso_init: .init.text+0x74):
> > relocation R_HEX_B22_PCREL out of range: 4010400 is not in [-2097152,
> > 2097151]; references panic
> > >>> defined in kernel/built-in.a(panic.o)
> >
> > ld.lld: error: cpu.c:(function cpuhp_threads_init: .init.text+0x4C):
> > relocation R_HEX_B22_PCREL out of range: 4009620 is not in [-2097152,
> > 2097151]; references printk
> > >>> defined in kernel/built-in.a(printk/printk.o)
> > ...
> > <many R_HEX_B22_PCREL out of range failures>
> >
> > This is with llvm-project @ bdd68357901d.
> >
> > (Looking at the builtins, I'm curious what are `:endloop0`, and `if` like
> > statements?)
> >
> > >
> > > ~~~~
> > >
> > > commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> > > Author: Sid Manning <sidneym@codeaurora.org>
> > > Date:   Tue Oct 13 16:17:50 2020 -0500
> > >
> > >     Hexagon: add builtins to kernel
> > >
> > >     Add the compiler-rt builtins like memcpy to the hexagon kernel.
> > >
> > >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> > >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> > >
> > > commit 19a75d4ece15d519036db9e52768e46ddc1dcecd
> > > Author: Sid Manning <sidneym@codeaurora.org>
> > > Date:   Mon Apr 26 22:38:31 2021 -0500
> > >
> > >     Hexagon: remove DEBUG from comet config
> > >
> > >     Remove CONFIG_DEBUG_INFO from comet configuration.
> > >
> > >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> > >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> > >
> > > commit 4c8a34896e830ad02bf8cf4abe5b639e0de12938
> > > Author: Sid Manning <sidneym@codeaurora.org>
> > > Date:   Mon Apr 26 13:51:53 2021 -0500
> > >
> > >     Hexagon: change jumps to must-extend in futex_atomic_*
> > >
> > >     Cross-section jumps from .fixup section must be extended.
> > >
> > >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> > >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> > >
> > > commit 9492ed9c4d146f2143f21b82aa8157a2787ad993
> > > Author: Sid Manning <sidneym@codeaurora.org>
> > > Date:   Fri Apr 23 15:06:58 2021 -0500
> > >
> > >     Hexagon: fix build errors
> > >
> > >     Fix type-o in ptrace.c.
> > >     Add missing include asm/hexagon_vm.h
> > >     Remove superfluous cast.
> > >     Replace 'p3_0' with 'preds'.
> > >
> > >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> > >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/029a01d73c4f%24fa5d9940%24ef18cbc0%24%40codeaurora.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA%40mail.gmail.com.
