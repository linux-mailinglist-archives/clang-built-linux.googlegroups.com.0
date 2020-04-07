Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEP4WL2AKGQENWGOHRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F761A132B
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 19:53:22 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id 191sf2550111ilb.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 10:53:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586282001; cv=pass;
        d=google.com; s=arc-20160816;
        b=uc+NFHuqqXWUEtx0ry3bCA9Bc5UL6uCbBRmT1+n50mV1SbMWIujCJmb+Iw7BzyciCK
         pFLew5yb+4oAs0XGeb11Opz3YdgQQmRjB9C2kVk1oJTcD7Nw6SjUPEbv+LSrao53F0Xn
         BJlMSrMdaOqXsujxAnuZQ+FZFQuY/es1XuNs8nwjW9ZzLOz/0Op0J+eXfQU12zxo7Cej
         Xf7AYWAaXAkA2/iHV6WPVlouO1BgOPVfcZyqNWbUOzWIRPoWW4q/JOLEMDIGhqg0eZNG
         Wk8wI8N891Pbg2Jb+H9yy1LrbeprIImpdBu+3mXj3Shu3PSBpXueqwAp7j7Koe2WyKUx
         PpKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LRrHhVFEaZsGB0d0XFdPZBzlgQoLi3irwhNGvJHHXmw=;
        b=ITMfYqFHT3Pm+6mwh9gqvuzBpp2hArzK+UPYqQ6ot8ZxGc2ndv34+NaNkX9gb0Jqai
         8L9sQYlHCFCRsSmyK3OHmcuW3ETfx4Y/twt8ziWENweJMgnLb65gvrGEtqs/TviAAgLR
         TGFthXSpvDxdvpZWRRZLdBdHzjQAQgFwiMl/ZS8NQlDy+jAJB6sitfd+zWbBzcuUlPgd
         wpuEagZHMJ9yr9qfRoZg8ieTAz/aGItEzFVqCXlmUZUPrmdlDZJ0EgLyVZX7SYvIAtDZ
         0JhUaF32n0lyUsWsTR7DxXMmTO91cWC3g8p46NdN/keaVxmiYLlk/As62muLQ+EaYwzG
         2/2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nAefzkZ2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRrHhVFEaZsGB0d0XFdPZBzlgQoLi3irwhNGvJHHXmw=;
        b=Lcl+oYPJb3UkI102ztCtHgDAbzyuxphls4W9CcyMbOz/hJnqPGyCXPj5YSrpv3Q5Yh
         ALoaI3ObP4oFD7Zg+2FPaOPg2T1OXP6nJ6h8D7EqoGrr4CI2sKVQxweUDB+EKz1bYz14
         ShZwIrIOluER/Mk+mZQH8pUtvUZa2kY5fSAHqYD6h907mQQcCpvJoG5bbdR9T3Ubu7O5
         vJr3cb600Uve/OFeOkoXTi4JVrjmBl2TymOTqx6M84x3+JdoF/f0RlIk76NbHr9jDrKw
         zD4VVHwUl1JQMFiGL3kygNaYVTk9foc2pjUe543pm77fcZIBwcBjRnHmRZzP6df98DOT
         7gFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LRrHhVFEaZsGB0d0XFdPZBzlgQoLi3irwhNGvJHHXmw=;
        b=PCz/lq7s+n6m83c+syHYowKRC5ai5n+ZEGRoTOFEl5OyeQRix2GtjgGubWAPSweEDE
         fiyQn7alAxY6fswUK9FdbPYTaRRpmaJVd3mmbAfL4x4i9aZr1LNLPZDQFTatmfuhHlEw
         VSPswNwKmir4yG/Dr1K9ytEMRB2VEhm+UbA+j5z0pVU/t1DbAz9jQb+EX/8XAU6P7qOy
         1xNqBV3CMZMdtKzc8b/YcAKJUtsiHsFcUFHVsYpZx3WFVvxfnmDuBxI+KJyItg3e0GD/
         3c4etK3GO56Gm8dXvpVhG/GQ00zSJoWlMUmt2dNy2Re5892LaWDkgq/iPL+CRUV0hvXo
         lt0g==
X-Gm-Message-State: AGi0PubsSB8CekPQIWvJIchZ1VfiXOJjKR0Uh50NNcUzX1e91lPf4rpN
	2IS0La77WPemEh9WPpdEdKI=
X-Google-Smtp-Source: APiQypKZCZZdzgaef2Bc40EDf/u9mwTgbLKIiz7s4gFgBX4wnA8RsiD7xblHEtA6Ke+BPvwZGQADnQ==
X-Received: by 2002:a92:d2c5:: with SMTP id w5mr3562942ilg.143.1586282001154;
        Tue, 07 Apr 2020 10:53:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls2057691ild.7.gmail; Tue, 07 Apr
 2020 10:53:20 -0700 (PDT)
X-Received: by 2002:a92:8410:: with SMTP id l16mr3762078ild.288.1586282000761;
        Tue, 07 Apr 2020 10:53:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586282000; cv=none;
        d=google.com; s=arc-20160816;
        b=1C4AndOBBcKdwblY/nhGJzAmOxYWf7NKIlUYmmPiAbNj+FSYGxZzZsV5L23upvib4u
         UmkB5i1Z4KkzfnQfgP+EoqLhqnYFLDGiQDWiD7+3QxvFMJ3F8KBIYF+PokQEkHvyZcUN
         J57ka1b07TGD+1ATREb2LE/Ddt1sjaXZPJZ0icn3meP/LeBa/U5EMvKY7OaSuLAbTVqr
         TC83n/YnaGLyHV0nlFMRHokP/1eSCSvWJyzle14WHMxQD8ZePzjXgD6lmUhdgHiNYnXD
         B2hgdEWogqd1kjLI5D2Ngg7Cl6FN0eenFFOtmgaoX6mKSXhgPwKSow/eOHQzBci2mueS
         fpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IZsnHknmPnzlDnnD+lsQB+SUZRKz07GU9C9BlgnfmqY=;
        b=c8hcjlVz6xEymqQHfaLNeAbC5E3kx4Vhe0BBCrZxU80mlCyV5Frfejk/+l44RSl7O6
         wpnQg9qRCEyhOX/qJYMgbXRYutp1xayoMjkATt/TTWYoB9K2eRePzCMk4FJ2zJavCn5k
         LEKOExKwt41rG/Xs+RPWStmSQ/KwbgSd+lP6t8102bbc3OmVwaj5ktamXxcVH71aY1oU
         iiwZeBCdAM37WPVioTm3u7Y8EzmBnXk+7gTd65TlVpxLSZV2r1LYsIou6LtHyItSII00
         FDFuhryrrHx39See3tx1+XX/dLZ8lOUQS3gPDcFfJHtN+Jdchg2/BLDTEQ6XEmI8EJxF
         u4lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nAefzkZ2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o12si324123iov.3.2020.04.07.10.53.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 10:53:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id r14so1129574pfl.12
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 10:53:20 -0700 (PDT)
X-Received: by 2002:a62:e415:: with SMTP id r21mr3651186pfh.169.1586281999850;
 Tue, 07 Apr 2020 10:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <20200406112220.GB126804@google.com>
 <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com>
 <CAKwvOdmHxeZ+T1OsOhW25pPygHM4D21OgZqRk141xbjP437-1w@mail.gmail.com> <CAK7LNARSMvGZ6T4Ct=U4Xe1WQCgkaWE8m8BxRuYiaokKVjA_ig@mail.gmail.com>
In-Reply-To: <CAK7LNARSMvGZ6T4Ct=U4Xe1WQCgkaWE8m8BxRuYiaokKVjA_ig@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 10:53:08 -0700
Message-ID: <CAKwvOdkicpNMqQipZ+AMTEz7JVou3bkcKiQ3Cih20qH0hoziDg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Matthias Maennich <maennich@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Michal Marek <michal.lkml@markovi.net>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Jian Cai <jiancai@google.com>, 
	Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nAefzkZ2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Apr 7, 2020 at 10:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Apr 8, 2020 at 2:01 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Apr 7, 2020 at 9:17 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Mon, Apr 6, 2020 at 8:22 PM 'Matthias Maennich' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
> > > > >As Documentation/kbuild/llvm.rst implies, building the kernel with a
> > > > >full set of LLVM tools gets very verbose and unwieldy.
> > > > >
> > > > >Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> > > > >GCC and Binutils. You can pass LLVM=1 from the command line or as an
> > > > >environment variable. Then, Kbuild will use LLVM toolchains in your
> > > > >PATH environment.
> > > > >
> > > > >Please note LLVM=1 does not turn on the LLVM integrated assembler.
> > > > >You need to explicitly pass AS=clang to use it. When the upstream
> > > > >kernel is ready for the integrated assembler, I think we can make
> > > > >it default.
> > > > >
> > > > >We discussed what we need, and we agreed to go with a simple boolean
> > > > >switch (https://lkml.org/lkml/2020/3/28/494).
> > > > >
> > > > >Some items in the discussion:
> > > > >
> > > > >- LLVM_DIR
> > > > >
> > > > >  When multiple versions of LLVM are installed, I just thought supporting
> > > > >  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
> > > > >
> > > > >  CC      = $(LLVM_DIR)clang
> > > > >  LD      = $(LLVM_DIR)ld.lld
> > > > >    ...
> > > > >
> > > > >  However, we can handle this by modifying PATH. So, we decided to not do
> > > > >  this.
> > > > >
> > > > >- LLVM_SUFFIX
> > > > >
> > > > >  Some distributions (e.g. Debian) package specific versions of LLVM with
> > > > >  naming conventions that use the version as a suffix.
> > > > >
> > > > >  CC      = clang$(LLVM_SUFFIX)
> > > > >  LD      = ld.lld(LLVM_SUFFIX)
> > > > >    ...
> > > > >
> > > > >  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
> > > > >  but the suffixed versions in /usr/bin/ are symlinks to binaries in
> > > > >  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
> > > > >
> > > > >- HOSTCC, HOSTCXX, etc.
> > > > >
> > > > >  We can switch the host compilers in the same way:
> > > > >
> > > > >  ifneq ($(LLVM),)
> > > > >  HOSTCC       = clang
> > > > >  HOSTCXX      = clang++
> > > > >  else
> > > > >  HOSTCC       = gcc
> > > > >  HOSTCXX      = g++
> > > > >  endif
> > > > >
> > > > >  This may the right thing to do, but I could not make up my mind.
> > > > >  Because we do not frequently switch the host compiler, a counter
> > > > >  solution I had in my mind was to leave it to the default of the
> > > > >  system.
> > > > >
> > > > >  HOSTCC       = cc
> > > > >  HOSTCXX      = c++
> > > >
> > > > What about HOSTLD ? I saw recently, that setting HOSTLD=ld.lld is not
> > > > yielding the expected result (some tools, like e.g. fixdep still require
> > > > an `ld` to be in PATH to be built). I did not find the time to look into
> > > > that yet, but I would like to consistently switch to the llvm toolchain
> > > > (including linker and possibly more) also for hostprogs.
> > >
> > >
> > > HOSTLD=ld.lld worked for me, but HOSTCC=clang did not.
> > >
> > >
> > >
> > > HOSTCC=clang without CC=clang fails to build objtool.
> > >
> > > The build system of objtool is meh.  :(
> >
> > Let's tackle that in a follow up, with the goal of build hermiticity
> > in mind.  I think there's good feedback in this thread to inform the
> > design of a v2:
> > 1. CLANG_AS=0 to disable integrated as.  Hopefully we won't need this
> > much longer, so we don't need to spend too much time on this, Masahiro
> > please just choose a name for this.  llvm-as naming conventions
> > doesn't follow the rest of binutils.
>
> I am not so familiar with the terminology in LLVM,
> but I feel 'integrated' is a keyword IMHO.
> I prefer LLVM_IA=1.  (or  LLVM_INTEGRATED_AS=1)

I'm happy with either, and I trust your judgement.  You choose.
Hopefully we will fix all our assembler bugs soon and won't need the
flag much longer.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkicpNMqQipZ%2BAMTEz7JVou3bkcKiQ3Cih20qH0hoziDg%40mail.gmail.com.
