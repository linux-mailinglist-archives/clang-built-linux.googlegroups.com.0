Return-Path: <clang-built-linux+bncBCS7XUWOUULBBEHV6D6AKGQEZDKHP5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id F41652A0AB6
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 17:08:49 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id c4sf4857779pll.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 09:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604074128; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKcwQjrtZA9ROyTBZhpaDkaGe8z3p9jxYz7gMVf/jvMU90w6bIwiI4uh5/l3voizQh
         G5x3Ad570mRv3KBSmp0cU0jtgDJjri7i2T6GYRY0/wmw/q08RrK6HYealSPP94NDW3Av
         SRo4hZF9/T6Rw4nzPsf3kfj8rk/ydIl0i4n6oDt2ev05aCU7D11CYVpOz+m65pBnBUqR
         z3uNOPkk52u7HgcZiAGEvPHrqqInWvUys/5grUA43u55NSTnf3AfEwZya5WZjMgZjwiN
         Xb33Y2PHfNQPAjzRknCRSGftckUx/unc3gnyC9bnXNou7SdJVxQkCVYwyb1fVxC40GL1
         bBFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iNooR9OXynDgYjzeWy7laj7beCZpxUQg6OrITqhGor4=;
        b=hX3YE4l+AZL91zoc485NQUOBqoxMxbARjgk14wKc6V/sEVHRiHkdPcuJ96vF//bBEB
         SIdIjqc+KA4XoltEiD/nUxy6v3HH7RUuwEIl+D4V2HY1/pplkE07sT+Q/25ApxmSuPA6
         t8lnJ1rFL3ydk4K4kMhPM8cvZndwl09xx60Fbw4+5JuyWw4sviq7uJBW9Rfr+A18d8cy
         6EJau2aOwoHsYmW10driMqXnLbXlhdNrsPCBohEmJeiVoaCUNA/H73kTeanxMe4c3EoO
         9uVN8xgAYbAXtTgHpY6Weg6Bo3VrHXvqWTax2NAFp7sQCzQYpjf9TFn9hg7DlyKonhLz
         1XPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=La2F8tfd;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iNooR9OXynDgYjzeWy7laj7beCZpxUQg6OrITqhGor4=;
        b=GnzJ+TKUWJVfiR+AEosSAAZU8Yohvd6UYYT6AcJb92141lM3DvLb4ZW9ihJ69HIp2E
         AsbyGdXiOfSHNol5qWy3uOBD/knZ/iYJZoXqGMQ5DnGmeMzK5SHQyeYB0549e16fbBPi
         MOyzIK+ExeRc1PPG6raRxTsf5Um/ERa27DXFKOJZeaJb9owqVq+0oCOiBrddHXinvtFl
         Qj5E/7NiuxckokCbd8XQpuKJXUrj+Foc7nUzgwt66e+gIb9Gw82vvk1Y1ANYsDowhAX5
         0Jekh6ja/t7qPjSMGrHX1Xyr/9R3legHdSHptvHL5gXYNVR0TCSNGKvX1T09yAWqyzPw
         J1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iNooR9OXynDgYjzeWy7laj7beCZpxUQg6OrITqhGor4=;
        b=dc1xxdPYdZFmkG+WbGPA2g11DwG/nPIaktcc92kuICWgcAo3MQGKW8CKItJj0TGgqZ
         6n30J5N9QYKB19d5pVojg8NGZ/SMKd6aTpT0STUfbmT5RqQtvqJfYZ40JEONrL+hJxS1
         0sEze7zj5qOkAFBv8iD7Ftsq60zkU6+VsdnAW//6+RvegOjNI0ul8WCtxKtfenOdPaDv
         xtz4eEqizvhFLCV8tcwYaORYi4XmmSQqhhsqe8btiUFIbVBmCGJvGnGC6VI2AXmjmOw2
         RnvpbPDlODd739DU19JRHqkVUiiHopa99mMfTcumWjY2I7MFMqct/FMYQ9H3Dp7zNDAC
         oOew==
X-Gm-Message-State: AOAM530uHRzuWutJeEdSYP9zJgVek4hyfeeKavS3tCpnR2nfeZuaSjlu
	r1HkF15QU53vUdSgaFeOet8=
X-Google-Smtp-Source: ABdhPJzPv7Ah1RQ32Pwzu0D4fPnJE1Zv1paXoY5SUeM5ulUqGporFRbNZtig0NitBArARlw5Hw3UIg==
X-Received: by 2002:a17:90a:3486:: with SMTP id p6mr3889089pjb.23.1604074128726;
        Fri, 30 Oct 2020 09:08:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7786:: with SMTP id o6ls3085599pll.0.gmail; Fri, 30
 Oct 2020 09:08:48 -0700 (PDT)
X-Received: by 2002:a17:90a:7e4:: with SMTP id m91mr3979319pjm.47.1604074128201;
        Fri, 30 Oct 2020 09:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604074128; cv=none;
        d=google.com; s=arc-20160816;
        b=XYLESEoaOojoR8m/uTKmh61agdhZCWI9AkeqN0B98BoYCucYOEItzMkeZ6sae2fRGO
         M9RZbzgbBrt1BD7uU6VH0XBfxg0ME898/CgZnn/3jtLtxsCNhBZSqFhYq5HtOc4zQ8OG
         6ds8Ie31E008/cjLDG8E86SnW7vKTLDRRjxeNVBBDzeAPfsB8pgywYK3Nwr3rcRVLUDv
         4Z6ukEL5HOh1/2JsbN3+8ANTyp6OvOBDpqBs/81A9Kw+V8KfLThCR/3kgWtVa5kipShg
         TWgZlONqE9JEn0G2Z3L+WTnfUnCjBqYIib364ovPfBD9njJcPLLx/CpMjNECbT3Ax2FY
         R6BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=X4h7VqbjWCTGqCw8svcGQvNFpVYxdtzFtyWsEhbWn98=;
        b=lJ88O+KVuzNvmfCHXFsLehLYJsiB3COd33uHn4TOwh4RHF4/OXtQpgyItX7DmHVJV5
         2NRQLJICpEiVMWwR6cCFycXrexbwBDvHcM46L3eJNbbdd/AK/hprhqd23sA0CqJ3k0UB
         4ZraG9OlManUQhhb1rcEBfBSTv34qPAAzpu3J1g5s/D+xq0FSwXnbP8fMLNaUFWjNWzz
         8wnB+UD4Bn18FzkC9bFOqm49iw6eEqxMj/QAZjTn+7zW+V+hS4iMaIQynJ+yDDAf4rht
         6ySpjaIVwY1u3EgSkJt93sxuHKXi6OXPh5BXlKX0QYjrg8JJV03S62XB20VlAsyG0z+k
         Lpdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=La2F8tfd;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id p4si314029pjo.1.2020.10.30.09.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 09:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id b19so3184087pld.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 09:08:48 -0700 (PDT)
X-Received: by 2002:a17:902:7298:b029:d4:c71a:357a with SMTP id
 d24-20020a1709027298b02900d4c71a357amr9533788pll.38.1604074127724; Fri, 30
 Oct 2020 09:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <20201029180525.1797645-1-maskray@google.com> <a7d7b3d9-a902-346c-0b9c-d2364440e70b@kernel.org>
In-Reply-To: <a7d7b3d9-a902-346c-0b9c-d2364440e70b@kernel.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 30 Oct 2020 09:08:35 -0700
Message-ID: <CAFP8O3JEOXJumFtPh4dwiYT2FHt+27epqnBUQ-2622Mm29trcQ@mail.gmail.com>
Subject: Re: [PATCH] x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S
To: Jiri Slaby <jirislaby@kernel.org>
Cc: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=La2F8tfd;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Fri, Oct 30, 2020 at 2:48 AM Jiri Slaby <jirislaby@kernel.org> wrote:
>
> On 29. 10. 20, 19:05, Fangrui Song wrote:
> > Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
> > memset/memmove/memcpy functions") added .weak directives to
> > arch/x86/lib/mem*_64.S instead of changing the existing SYM_FUNC_START_=
*
> > macros.
>
> There were no SYM_FUNC_START_* macros in 2015.

include/linux/linkage.h had WEAK in 2015 and WEAK should have been
used instead. Do I just need to fix the description?

> > This can lead to the assembly snippet `.weak memcpy ... .globl
> > memcpy`
>
> SYM_FUNC_START_LOCAL(memcpy)
> does not add .globl, so I don't understand the rationale.

There is no problem using
.weak
SYM_FUNC_START_LOCAL
just looks suspicious so I changed it, too.

> > which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> > memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> > https://reviews.llvm.org/D90108) will error on such an overridden symbo=
l
> > binding.
> >
> > Use the appropriate SYM_FUNC_START_WEAK instead.
> >
> > Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmov=
e/memcpy functions")
> > Reported-by: Sami Tolvanen <samitolvanen@google.com>
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > Cc: <stable@vger.kernel.org>
> > ---
> >   arch/x86/lib/memcpy_64.S  | 4 +---
> >   arch/x86/lib/memmove_64.S | 4 +---
> >   arch/x86/lib/memset_64.S  | 4 +---
> >   3 files changed, 3 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
> > index 037faac46b0c..1e299ac73c86 100644
> > --- a/arch/x86/lib/memcpy_64.S
> > +++ b/arch/x86/lib/memcpy_64.S
> > @@ -16,8 +16,6 @@
> >    * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
> >    */
> >
> > -.weak memcpy
> > -
> >   /*
> >    * memcpy - Copy a memory block.
> >    *
> > @@ -30,7 +28,7 @@
> >    * rax original destination
> >    */
> >   SYM_FUNC_START_ALIAS(__memcpy)
> > -SYM_FUNC_START_LOCAL(memcpy)
> > +SYM_FUNC_START_WEAK(memcpy)
> >       ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
> >                     "jmp memcpy_erms", X86_FEATURE_ERMS
> >
> > diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
> > index 7ff00ea64e4f..41902fe8b859 100644
> > --- a/arch/x86/lib/memmove_64.S
> > +++ b/arch/x86/lib/memmove_64.S
> > @@ -24,9 +24,7 @@
> >    * Output:
> >    * rax: dest
> >    */
> > -.weak memmove
> > -
> > -SYM_FUNC_START_ALIAS(memmove)
> > +SYM_FUNC_START_WEAK(memmove)
> >   SYM_FUNC_START(__memmove)
> >
> >       mov %rdi, %rax
> > diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
> > index 9ff15ee404a4..0bfd26e4ca9e 100644
> > --- a/arch/x86/lib/memset_64.S
> > +++ b/arch/x86/lib/memset_64.S
> > @@ -6,8 +6,6 @@
> >   #include <asm/alternative-asm.h>
> >   #include <asm/export.h>
> >
> > -.weak memset
> > -
> >   /*
> >    * ISO C memset - set a memory block to a byte value. This function u=
ses fast
> >    * string to get better performance than the original function. The c=
ode is
> > @@ -19,7 +17,7 @@
> >    *
> >    * rax   original destination
> >    */
> > -SYM_FUNC_START_ALIAS(memset)
> > +SYM_FUNC_START_WEAK(memset)
> >   SYM_FUNC_START(__memset)
> >       /*
> >        * Some CPUs support enhanced REP MOVSB/STOSB feature. It is reco=
mmended
> >
>
>
> --
> js
> suse labs



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3JEOXJumFtPh4dwiYT2FHt%2B27epqnBUQ-2622Mm29trcQ%40m=
ail.gmail.com.
