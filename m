Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGF75DUQKGQEQEUHZEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3577599D
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 23:31:05 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id q196sf39298950ybg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 14:31:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564090264; cv=pass;
        d=google.com; s=arc-20160816;
        b=N6I+Hyl8tt4UMgv2wPL3XOTRMQOPxoFZtlM74nBOrpcsWtCT1Yk1cWvHu8WthdP5Gf
         VR3KCTZmKmlfRY+LalzjVRpT0F00R17UIp2qbTmJoz4qQlmCOE1hbK4tsY44UjhudANc
         V+KBovNjVVQ24G5mwmjf4QzRiZyIQ2DzWQo9KYVOYrA0I7lq68rYkwkj4/5Yprimn/3p
         O2HezyNUwO0ERVbfFD8uZ96B0EbrB+f4Z5lwNMXV5PxLQIDyjhv8IlBIxpBXgaKAlLnF
         0UOSmByJFlubR9Cd8LApK9EftG5LCFbqntNgBwODno/NK0A3Tuii7qtHVjZp2i2w82nK
         R/XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cUFyB1o108oiAeAahyDURU/zlmHXq+W8ey50uWrQ03Y=;
        b=V5C/78nl6WMTlp7/FYbfvnEJWVdx3Es1KwwAR1nk0qEHAmygtOUtC0eS1v9rWpdj4g
         ROrWrH8lr32eo/B7sD6GosLldRSJB8rnI4YGmFnxLIwzP6iuga0Owk+Ls00BTplos+7d
         RhAPnhOFPDVTKT5ltMgF4tBzxwIdK9VX5P7gD+XQBh09Fu5zs5qORJFii7AhwIR4EAEU
         9JBpvtnPp7jezhkbeESbhxuYOAFW+9RrxbCVRrQxru18qNEAFkclS32Zn1pPi2kc+/uN
         BJslBp9ba3tOgtEuTVGav94apE95NR4YWl/VS56iGaRx21T+Zs3msbFo/i51qcAdB7xj
         kVPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L1PQzO25;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUFyB1o108oiAeAahyDURU/zlmHXq+W8ey50uWrQ03Y=;
        b=khRHkqclDhfUO+DFk4Q270SCG6W2/V5R3eVC8pdjr6WQJ8E6HwotzK7TNJocpGAdTh
         AdzSup/HbjNJiCJc3gZqEDKXaaKita6VwrL8YBIr9L2nHp53A4oIvxgK3Fuwk4PTz+48
         a+evGVexHG2EKveZSJ5Hwarfchg5pIKDB1cSIIJHw0PHpaiXxQGmVLvD7oPHFxQEm0Bv
         YwkQ2K8U6ns4Sf6Ii/ls684m660o3kuZl+TlC5YaADgvsSGE0vvj/SLtyDNy2UlfbuyH
         zyA0/1WZs6f9RPMaERSbLVENf/vf/v/ypixTBBxazqdGhsBIfQ63BdddoGf7m4BXJ/F9
         1JQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUFyB1o108oiAeAahyDURU/zlmHXq+W8ey50uWrQ03Y=;
        b=iXu1LXeeMKG6IX+k6FsNaBX/qXCm5wZJRREYKgAyYvcsXGFrDGkSlnGITHP0GZP8Ca
         VA2Zsa3bE/guUIew4SJh29BRlbsO2eMx3ReGHdGbIEsrg23pYsMca8X5j0tsBSP11LlJ
         RGsQ7KXiUUA9KykIwjDo3Apg9u0YomGzYTT6/+RlxhxqZdtBoQJXOGRmYvoKwch4I+Dh
         n4Hl/fBUGu3sd/ut/0kQUqdpmMVyALi8V/I8LCncOHI8bV8nWZJe5pJN45S1T3YLI8UL
         pBjpxuHRN7XQQ1qWb5VpKJ65CqAFjDZ/BtVXUY8VwiK6tMMTW+zvEAtJ9cT7aQ2Hst1N
         Ts1w==
X-Gm-Message-State: APjAAAVZDFgNwN0G2ev1U4rkZLAajPmFGPJ+MsvfayhunS6L68eeY2tF
	MJJbkOo6oIWZFgeGjhDLqSY=
X-Google-Smtp-Source: APXvYqzTJD6sa3ScVugBBkigcqAR1sx/l6ey38iHi2CkK/bqTqirol5ot8YWtyS/rmwLV9eMaiAd2g==
X-Received: by 2002:a81:f211:: with SMTP id i17mr53609070ywm.484.1564090264155;
        Thu, 25 Jul 2019 14:31:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f3c2:: with SMTP id c185ls6933138ywf.7.gmail; Thu, 25
 Jul 2019 14:31:03 -0700 (PDT)
X-Received: by 2002:a81:8685:: with SMTP id w127mr58315981ywf.197.1564090263881;
        Thu, 25 Jul 2019 14:31:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564090263; cv=none;
        d=google.com; s=arc-20160816;
        b=V/USkSAXCy31MvMXauFJdzGCfcl71no/fa9/2JWYUuKyh98Qi/n68YFvO7zrEkwH4R
         YeudIDj4O7VzLTM9wABIBHGNB9/hTpC3XRudhXaDedFoR9fck8BMK2NPdIeB2YYK/elo
         LzR7dxFUrFhziv458KehdW/DsWdwuuY+pUwrpZ+sz7zfmt7znAEVmu2KxTfQ24J89jnT
         5DuyQe4Nsye1BJ4juIr65zY2KtuEA6kna8IZVLOXzbzSn9O7gMfMWk1kA503gW1sgw4o
         XKbW4lZjad7FyU0HvwNjHXhgSLydFh6JE9Ao22aM8mv7qqkk2UlkKxoioD8scuRIqsvW
         Q2zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mfaBZ71hrJPdlZeMC578OQz4LN6coQODfHCSFL4DY30=;
        b=TDQxSRVJ6vPXyw/jTLjiyhqYvKO6EuiONRPksa3B/dEC/SoEZ8WUh1IZU7+7qWiUXZ
         0wuX9TzI+WVQTNkMIgQs3rvZxqJcohyg78t/fsXAv0rOUnxcxPjE4yjvCF/piKgxU59p
         3DFMx57OH/iaKxcPCdOiKNC5d5METGEMJAB1+kKr4WwA3EgIyTJ2sYMzuc1WCV4qyoHy
         p/Op6Ps8jtlmT84NMu1bZOiiTY6CWw2wOX1XYqU90XD6SPbvLmFrPWAOBWxpHyqCooDb
         9G0sD3up9zdJaZs9UBeBqwrZ8RH25s2Q8+p6jI5HQNO8aIoMSoPH1/wgBVXirCMlIC42
         LPqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L1PQzO25;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id f131si1658556ybf.5.2019.07.25.14.31.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 14:31:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id ay6so23921893plb.9
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 14:31:03 -0700 (PDT)
X-Received: by 2002:a17:902:b944:: with SMTP id h4mr16697787pls.179.1564090262638;
 Thu, 25 Jul 2019 14:31:02 -0700 (PDT)
MIME-Version: 1.0
References: <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper>
 <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org>
 <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper>
 <20190721180150.GN20882@gate.crashing.org> <20190722024140.GA55142@archlinux-threadripper>
 <20190722061940.GZ20882@gate.crashing.org> <CAKwvOd=KRVsFkT8dLFoitky9OF8tKmbn00-OPi6kBygyx4QwHg@mail.gmail.com>
 <20190722175817.GE20882@gate.crashing.org>
In-Reply-To: <20190722175817.GE20882@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Jul 2019 14:30:51 -0700
Message-ID: <CAKwvOdkzBt=tTk+26dp+QsCStMUJ0_v5Mpjy2TOXPw1mu71itg@mail.gmail.com>
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, James Y Knight <jyknight@google.com>, 
	Joel Stanley <joel@jms.id.au>, dja@axtens.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L1PQzO25;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Mon, Jul 22, 2019 at 10:58 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Mon, Jul 22, 2019 at 10:21:07AM -0700, Nick Desaulniers wrote:
> > On Sun, Jul 21, 2019 at 11:19 PM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > On Sun, Jul 21, 2019 at 07:41:40PM -0700, Nathan Chancellor wrote:
> > > > On Sun, Jul 21, 2019 at 01:01:50PM -0500, Segher Boessenkool wrote:
> > > > > On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
> > > > > > 0000017c clear_user_page:
> > > > > >      17c: 94 21 ff f0                     stwu 1, -16(1)
> > > > > >      180: 38 80 00 80                     li 4, 128
> > > > > >      184: 38 63 ff e0                     addi 3, 3, -32
> > > > > >      188: 7c 89 03 a6                     mtctr 4
> > > > > >      18c: 38 81 00 0f                     addi 4, 1, 15
> > > > > >      190: 8c c3 00 20                     lbzu 6, 32(3)
> > > > > >      194: 98 c1 00 0f                     stb 6, 15(1)
> > > > > >      198: 7c 00 27 ec                     dcbz 0, 4
> > > > > >      19c: 42 00 ff f4                     bdnz .+65524
> > > > >
> > > > > Uh, yeah, well, I have no idea what clang tried here, but that won't
> > > > > work.  It's copying a byte from each target cache line to the stack,
> > > > > and then does clears the cache line containing that byte on the stack.
> > > > >
> > > > > I *guess* this is about "Z" and not about "%y", but you'll have to ask
> > > > > the clang people.
> > > > >
> > > > > Or it may be that they do not treat inline asm operands as lvalues
> > > > > properly?  That rings some bells.  Yeah that looks like it.
> > >
> > > The code is
> > >   __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
> > >
> > > so yeah it looks like clang took that  *(u8 *)addr  as rvalue, and
> > > stored that in stack, and then used *that* as memory.
> >
> > What's the %y modifier supposed to mean here?
>
> It prints a memory address for an indexed operand.
>
> If you write just "%0" it prints addresses that are a single register
> as "0(r3)" instead of "0,r3".  Some instructions do not allow offset
> form.
>
> > addr is in the list of
> > inputs, so what's wrong with using it as an rvalue?
>
> It seems to use *(u8 *)addr as rvalue.  Asm operands are lvalues.  It
> matters a lot for memory operands.

Hmm...not sure that's specified behavior.  Anyways, I've filed:
https://bugs.llvm.org/show_bug.cgi?id=42762
to see if folks more familiar with LLVM's ppc backend have some more thoughts.

I recommend considering reverting commit 6c5875843b87 ("powerpc:
slightly improve cache helpers") until the issue is resolved in clang,
otherwise I'll probably just turn off our CI builds of PPC32 for the
time being.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkzBt%3DtTk%2B26dp%2BQsCStMUJ0_v5Mpjy2TOXPw1mu71itg%40mail.gmail.com.
