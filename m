Return-Path: <clang-built-linux+bncBD4LX4523YGBBSXS27UQKGQEJHKL7RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9119F70801
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 19:58:35 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id x83sf18222790vkx.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 10:58:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563818314; cv=pass;
        d=google.com; s=arc-20160816;
        b=ozLR+YgwsY1C6xocjqMnVfl39D67dR2b35VoA00Mk71mAR5J+CHBKCxglVbTElBRlr
         n8XdXCHwWcvwMJKmRm95GRJYWTl+ZwGdJ5I2hLsXXbe3/Bc67Qs5IadfwVJgmzW3m5in
         V1Exjl5MlhLFMpGmClyp2AZ5LRXflheBbBmZZ1rjjG1LRb1p61aACskSDY+/rR17lq4t
         0dv6/wC2NUxOgMt21DrMqFo/E2Q44YcBvRzX+eEvSUnYsISp+UbHwdNGjjXQhUjrJ0ME
         gRBkYxBRCUVPUkE34n4brNVqnuAreemcODa6QFIOZz8MLtbOxJeLKgVBAYzM+m7dlEqo
         U/0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5InQ5bHIW1MnDgIQtoVNNSRBye29B+RzZRK6Rlhc3HM=;
        b=cYZaiU8NnH4oCbZnE4qaM0RitGezicANupDlU0m4Jgm/nNILeL2DYITkw1xiY8m0ap
         agh/gt8cnjoW7iDQOGvFw15gfRdcCCfFkI6YI1J6Lrjw0NmcYFYQPlGMJubDWlIV16XZ
         1Z7jnvh1iF8c8IaDh4D7AvsXMtAcOEGGwE3VkhbbqshG4plIiy2fwDRDW9dz4Gu40Ioc
         6z2YJukxyNLPTQtngTjL6ITEweSrPp8kYmpQDOerjlPw0PqINbH0pexBSXBzRZRBzzu3
         QIlrBsljwWYogXUTRVkJDnQFJJqVuFw0d0hDigoc8bqmJyb+1i7SH+ge8APTuRqQEvIM
         7wDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5InQ5bHIW1MnDgIQtoVNNSRBye29B+RzZRK6Rlhc3HM=;
        b=XtTIh1BalQkKDYF/2jcJPNKEdVpFU6gkni8D0RAyuDj2EECmfuySs3A/PVGGvWaAKf
         O+8gXbM3yQPWzaPEWJlM1fBLKrmH8Eo6j7VTnD9sCGuWFEslmjdPl31FnJYlJRKrbcPt
         tT9mM3yURHspuZroSBPu2/mEkz5iaz0MXRJDWodBfBi6lNthATweD8D2htpsivcxyCGH
         WxnUwoTvaLqkBvVu/RgywnBmZtXoOh/sG+9488QNyaoUFZ+0VOQxYvi+6sTYPRsxOs7R
         txZJ55PQiDpH/olP59cEdvFI+7RZJuoo8N2IF7fAsSYlLv1f4ixZsE9nD4815A46l7Lt
         sIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5InQ5bHIW1MnDgIQtoVNNSRBye29B+RzZRK6Rlhc3HM=;
        b=ljeHYw9m4O4ojOqrPB9poa1wWSGKSRBiZv+2wuPlFLbLquvRIlJFWe8A+a8yF83Zvl
         q2jeGAoxLi72gTY2QuSQbRhqnADwcVZ1YMJX59hq/NfkemWuXGtMvgeLzVybisvHAu7J
         LvQMBigbeRXSo6xECZytrQF+mDjG8HER5jNUB+Lw4+tyjI+JRlr7UAB56I+QTIPeF69L
         RWPYcBAGdUqflARzXBvkATuVDYT5IXS465uH7VH95raFGNCYiWp82rbGuqEtrjVQBPRP
         Oq4m+s385+qP7ULdRedshPWp6pJVn7puLyYch/cQXNs6ukbuSrGnO86f5zcyUSk2YIma
         ltWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXIAha7Dd6abqiLZ7uNBz4Q1zNtUNnD6AvnPAXqq3LStNEtzy/e
	VX16ZDjrxRIQ5KcckmTs900=
X-Google-Smtp-Source: APXvYqyJus7Z6xln6aRsH8RnCtp8lLuFGLm2aE3jTC95nUogxLfhLP8OM8E8NSLn8+K9Uf0vYU6SXg==
X-Received: by 2002:a1f:d1c3:: with SMTP id i186mr26436259vkg.26.1563818314468;
        Mon, 22 Jul 2019 10:58:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe99:: with SMTP id b25ls4918168vsr.16.gmail; Mon, 22
 Jul 2019 10:58:34 -0700 (PDT)
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr42532758vsn.94.1563818314236;
        Mon, 22 Jul 2019 10:58:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563818314; cv=none;
        d=google.com; s=arc-20160816;
        b=fmSZ/htIerpST3UdLvrOPlsXFIU9cSInylOELNGO+svOymD4SKrtFzgvLH0AqrGgFf
         lv3UfTBXqYnVzPQKwK7wZ58rRN8kETkc3G2fJrRaMrSi34l+ILB+XcCwmQ4r/hHR/K4m
         cQNfnLew4kokZRkL9nsCnjcWaO2LwfR7zh0X59bh0SYPjJxK2XfopPJk/xlIRXFjFOdg
         kov0CB5/QYegW9nciBP/Kj7UEdVv0IfDsNypm8coAZl0DwkVPqcd4RWA/67l44F9WhI5
         yqmY0mN1VShObNv4lD+epixgu8009S4BJvhOKOp7DZco6icz2/WdcsXY0Y69JdBu2/Gy
         Y+NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cP3FTTC3ZF3Kk80z7raISajaZGQxJJl4N+/HDTcQEe0=;
        b=hDlpReSOccxdpGC17SgzC6ciEOPwmIUoXo+1AxA6PvXQl/EtPQ8modL/R6oLOH+NZI
         +whxpAOnw7TZ7jTpf7+MQIMx59N7Ewo1sKQ2SXoUbAy2uxHUWOJJwNFSK/1h6SmaaKjY
         8mAw3g4mAAA7gYQ55z813Xcbj33A9o17PYzkeAGUlD4HYHKAu31MfDpGYIPFvlC7lQkW
         rR8/yST725KUZRKtY+f4VW7xG/ybghbuv2mncinhjjyPizokhpY5PacqBeo+X5fFAaQl
         W+JamEVL4TuwI1lb7hYNK+HZFbnqQDZgr3DHVm4P3AvbgxwbwRkCn3tf9o+IY03w9mcs
         fLHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id e126si2213269vkg.5.2019.07.22.10.58.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Jul 2019 10:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6MHwIwq002804;
	Mon, 22 Jul 2019 12:58:18 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6MHwH9G002785;
	Mon, 22 Jul 2019 12:58:17 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 22 Jul 2019 12:58:17 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Christophe Leroy <christophe.leroy@c-s.fr>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190722175817.GE20882@gate.crashing.org>
References: <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org> <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper> <20190721180150.GN20882@gate.crashing.org> <20190722024140.GA55142@archlinux-threadripper> <20190722061940.GZ20882@gate.crashing.org> <CAKwvOd=KRVsFkT8dLFoitky9OF8tKmbn00-OPi6kBygyx4QwHg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=KRVsFkT8dLFoitky9OF8tKmbn00-OPi6kBygyx4QwHg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Jul 22, 2019 at 10:21:07AM -0700, Nick Desaulniers wrote:
> On Sun, Jul 21, 2019 at 11:19 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > On Sun, Jul 21, 2019 at 07:41:40PM -0700, Nathan Chancellor wrote:
> > > On Sun, Jul 21, 2019 at 01:01:50PM -0500, Segher Boessenkool wrote:
> > > > On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
> > > > > 0000017c clear_user_page:
> > > > >      17c: 94 21 ff f0                     stwu 1, -16(1)
> > > > >      180: 38 80 00 80                     li 4, 128
> > > > >      184: 38 63 ff e0                     addi 3, 3, -32
> > > > >      188: 7c 89 03 a6                     mtctr 4
> > > > >      18c: 38 81 00 0f                     addi 4, 1, 15
> > > > >      190: 8c c3 00 20                     lbzu 6, 32(3)
> > > > >      194: 98 c1 00 0f                     stb 6, 15(1)
> > > > >      198: 7c 00 27 ec                     dcbz 0, 4
> > > > >      19c: 42 00 ff f4                     bdnz .+65524
> > > >
> > > > Uh, yeah, well, I have no idea what clang tried here, but that won't
> > > > work.  It's copying a byte from each target cache line to the stack,
> > > > and then does clears the cache line containing that byte on the stack.
> > > >
> > > > I *guess* this is about "Z" and not about "%y", but you'll have to ask
> > > > the clang people.
> > > >
> > > > Or it may be that they do not treat inline asm operands as lvalues
> > > > properly?  That rings some bells.  Yeah that looks like it.
> >
> > The code is
> >   __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
> >
> > so yeah it looks like clang took that  *(u8 *)addr  as rvalue, and
> > stored that in stack, and then used *that* as memory.
> 
> What's the %y modifier supposed to mean here?

It prints a memory address for an indexed operand.

If you write just "%0" it prints addresses that are a single register
as "0(r3)" instead of "0,r3".  Some instructions do not allow offset
form.

> addr is in the list of
> inputs, so what's wrong with using it as an rvalue?

It seems to use *(u8 *)addr as rvalue.  Asm operands are lvalues.  It
matters a lot for memory operands.

> > Maybe clang simply does not not to treat "Z" the same as "m"?  (And "Y"
> > and "Q" and "es" and a whole bunch of "w*", what about those?)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722175817.GE20882%40gate.crashing.org.
