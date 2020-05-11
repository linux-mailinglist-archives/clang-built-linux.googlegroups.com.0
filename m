Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6MT432QKGQEP27S6SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4791CE19A
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 19:23:07 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id l4sf10766369qke.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 10:23:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589217786; cv=pass;
        d=google.com; s=arc-20160816;
        b=w4oM/O9o9s5PH8zyCnT8MIP+CJE+uixYAbbEkwNR6hmMo2ifMGTs4NeMpEpFeH0Q3i
         E8fG5d6J0sU+VuLK27B8if4mU2Kr6kD5bvWTG8bPn3L3f+nbmST7uzA3jXFQHmsl59I+
         kH2ymfMQUNE/Xm8pII4AnNsWqaQDrwalKjlCELN8QuYwpgqj5PUAZJpaUuc/CmMUo0oY
         VqpriH//aEFtJFclnu/YdzsFfTYQdMdaAEPd4dtPMSyHf2LJDOpun6SLYZ7vdl4BmCdg
         fL+rIWuhrFgPZ246ITBJGqefD5Sd9l4qObgADdD0mYPwxiFr1V4e3S3nX0ZOhbf/m9D6
         8Fug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PKmtlsBqJqE1eAauETjDqmCvmKwOmV0ljier1QArFI8=;
        b=ZUbrCUToXHflQpsI9hqqIUgmf+K+YpdWkqZcZShH1iPjmOlpkvfTQUUS0xQTeNlJJn
         ZXJX66SaRtkWyJc3ZMX5qi07qrO0+N8ZtqFrZNQaqHk1ruZkEnw5Fal4l6FRjtZYSjul
         oWRBhd8IDwyXXRLlICuCvXwWz8MxzgdLB+jMKjgp8dDujZJTBj+xVGIW3YpPgJ+zJS46
         xfgz4XGM2ZWpUdhPkEt+d3JMj5+sjWG9F3P7N76p7WAaLWauY6dNZt58ch0BDvjT08Bu
         qlr6gJPLXGqNP/VO/2mEBxbuQ4WZWBg3oAoAsOKW2N799r9B13/kTr6HV9O6nitFdHuo
         u0cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPnvvhM7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PKmtlsBqJqE1eAauETjDqmCvmKwOmV0ljier1QArFI8=;
        b=EtfpWeCgx1xot8ZsmrX3UkswY7/pOixJ+lUNryDFKJfEjjsNIthYn6Z+yXfqEdZNCZ
         /WZptocIgy34guFGnttTcQClWDL2xczm0BRFhono1DiuXOCXVoqRqqKiVSz6cKVEO+BB
         6+A+QAuMJ39/zA5sODi0gZ8c9W/V0Id3UnGY4/GjpzNt3KZOBT53lEaTn8VHAyXMAqsR
         KPoomM6EV4gXR0kAO6dxPXmHKrOUxe4ExOT3ciWvAy6+1fHvNEPohe4/ytkKnOf8czip
         3E83xLQggTmZ9zcQPkPD3aozFc+/C1Uv6MTZiptUJK7vnzZ3dabv/GbW8am0RIXcfSmO
         WYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PKmtlsBqJqE1eAauETjDqmCvmKwOmV0ljier1QArFI8=;
        b=WPqL+cBQf28hFB96EZI84pB9Y8O4W1DtJwy5zl8dar2sXt6tdmz/Pmv7EzCxvKgSne
         kOyviLDs0VRqaZW/dNAPNnf1zyh2cHZnVNajVUELajcu6cUID/NbRkGNEBZzCYC6/IT9
         HJqoPjw3nY0Vy3UeYwwyQRHQ9EM3yQY8qiEKwsNnxsjH2zNvFl4tj/V364NyCrzbtCkv
         5BSyrj7fOlZ7wJhukI//fPdUeuOgvIOXjKj4ocEr+sppHlnVJ0zYM2tj836PeDpsLUtf
         VCItcDOxFFXFWubu2SfV4oJ4XECik/XCy/uqQVLvS5Z6q7oYPdapjIlTNhCqu0lca7jW
         LFJw==
X-Gm-Message-State: AGi0PuaSmjIMIyFSd/08JCf9pEXoM/b1Tka+6/+JrzhADadUelSeUjZ3
	g15x2Fix22f/qN4nOeTcqc0=
X-Google-Smtp-Source: APiQypI73GwmLgM8PvsvLuyMyS8J2u+NH8S3CcjJ3O/G9WE5kznILOYnyAw3Zc5zefbSa67vEMdyQw==
X-Received: by 2002:a0c:ef12:: with SMTP id t18mr17053603qvr.9.1589217785772;
        Mon, 11 May 2020 10:23:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ec06:: with SMTP id h6ls5754948qkg.9.gmail; Mon, 11 May
 2020 10:23:05 -0700 (PDT)
X-Received: by 2002:a37:8d07:: with SMTP id p7mr17138761qkd.500.1589217785437;
        Mon, 11 May 2020 10:23:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589217785; cv=none;
        d=google.com; s=arc-20160816;
        b=LJWy7QMzbgZV+kXi7SurRg+/rSRjgpvugrPsHyzjQBcVFa7WImTez7tqXjX2Ili/e+
         sarfkOKcj8aHsTTlGa/tmeCJdybeRfn6EQbcPb+jwQGyifPbRiUCiU0jdVz6IQBdPL1L
         U0BRRsYsdP4ux4vIg/Df1KJViMFpsHiO7InlBg0kwWtVtFbmQLaz8SEar7wAdobUh4la
         TazZ3NrlqOBTFvPNDkviubsfwG6xsiq+jpj6+/1VeFK014EjDl4gJTsOmB4jeMExF4z2
         bjb3YGfxbs3/hbbbJVww4HnYkO8euzdrowxAtOHvmx5e9WR7Klw3IgZH1bmeEC3pKYr3
         7rGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qlU0Pkz6j22HfbQ80ouXzz2uZEOYNyQ2PJlwm4Zo3WQ=;
        b=VYGHJc68IJXReFx13wvg1mshXWoUgdYG1735z1rYAOZEOj1gOz1R04kbaNfi1+VQll
         4y954WVSlHr0Odc5aQykwck/m0GDeEj/x3wkDGzUnCSmE1awyUbTKSPBhMF8nGmVbnoD
         ZYJGwQ1+lJyw9TRgYFLRCKJyVCXw2a2/8WOCoXUPSkrskb45m0vUPtzCc8WR9qRP+w3f
         UX0G2cQEvYX1FuDjw+zPyy6yFb3OiTiTcYsFD/dsni+PANer9ysqJyhy04a4quH2jKxI
         hPzUoeTtz+Uvj4sT+yeoA6iuCmk1b+1OIeSJV3qasBPDsKEb9kvj3ykJxoEo2YED0vaN
         VDjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPnvvhM7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f16si698313qte.3.2020.05.11.10.23.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 10:23:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w65so5026725pfc.12
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 10:23:05 -0700 (PDT)
X-Received: by 2002:a63:6546:: with SMTP id z67mr15178554pgb.10.1589217784231;
 Mon, 11 May 2020 10:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200508182835.228107-1-ndesaulniers@google.com>
 <20200508183230.229464-1-ndesaulniers@google.com> <CAHp75Vcsi9o2eUbyozhmPEz6Tfd_6ZFk2q-vcdrm9QxcVPQwMA@mail.gmail.com>
In-Reply-To: <CAHp75Vcsi9o2eUbyozhmPEz6Tfd_6ZFk2q-vcdrm9QxcVPQwMA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 May 2020 10:22:50 -0700
Message-ID: <CAKwvOdn6YUZvatghWSScNcJMd2Y3_dfU5ZtY2in=DDYdFweVOQ@mail.gmail.com>
Subject: Re: [PATCH v5] x86: bitops: fix build regression
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Brian Gerst <brgerst@gmail.com>, "H . Peter Anvin" <hpa@zytor.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Axtens <dja@axtens.net>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rPnvvhM7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Sat, May 9, 2020 at 5:20 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Fri, May 8, 2020 at 9:35 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > This is easily reproducible via CC=clang+CONFIG_STAGING=y+CONFIG_VT6656=m.
> >
> > It turns out that if your config tickles __builtin_constant_p via
> > differences in choices to inline or not, these statements produce
> > invalid assembly:
> >
> > $ cat foo.c
> > long a(long b, long c) {
> >   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> >   return c;
> > }
> > $ gcc foo.c
> > foo.c: Assembler messages:
> > foo.c:2: Error: `%rax' not allowed with `orb'
> >
> > Use the `%b` "x86 Operand Modifier" to instead force register allocation
> > to select a lower-8-bit GPR operand.
> >
> > The "q" constraint only has meaning on -m32 otherwise is treated as
> > "r". Not all GPRs have low-8-bit aliases for -m32.
> >
>
> Looks very good!
> One question though, does it work with minimum supported version of gcc?

Yes; the oldest version of GCC in godbolt.org is GCC 4.1.2 which
supports the syntax and generates the expected lower-8-bit register
operands.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn6YUZvatghWSScNcJMd2Y3_dfU5ZtY2in%3DDDYdFweVOQ%40mail.gmail.com.
