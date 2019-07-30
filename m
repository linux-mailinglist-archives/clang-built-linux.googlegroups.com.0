Return-Path: <clang-built-linux+bncBD4LX4523YGBBAG3QHVAKGQEFYC5NMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9357AD61
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 18:17:06 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id f22sf71944595ioj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 09:17:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564503425; cv=pass;
        d=google.com; s=arc-20160816;
        b=WFZj2AQNClvrQQKNxHl3cyHbLg7y3xqWJkZbZ+kYYBo6l3ZWscayWCYy3mlNOJ0Z82
         pI4GWJfiwMNhH9mDfIWwHT6Q7FDC5b3bepGCAuiR02RaJb2pF1vuWK4BctQCbCUcjIhH
         IUdEcbBvXor7n+oAH/MG/TubytL4nQkZGo+En4q2r8jPbwf5q86gtXGa5fvOd0pbkyUe
         Vwl/+j9I3iuotufhs09ROp8H3mis4DO1Jje28QkwA2kq8PKAgmoqtUu9OQhvcS9vT5+F
         gDRknhYQu+XenXhTi7rlrsC5Y5uDeo/6OdTBvE/6Fds++2WX9/OfHCeI+FQRtUbmTZEd
         qoFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=BI/oLgSxzgbNr6zSn5KWE7pclIzs1L3ZxCCll61C1TQ=;
        b=HA4Y1gQFzzh7MeBHO/AcE5dOpedtJnwaNt993GB5EP4o64Kz2fgUqunW8v1giiACbX
         rt+W6jgInzGfJJxpcYFrspss70CVuc0YMir54gRtTIxXWSbrVN4wRZHF0zq2Xc+epv6c
         IQzsbDQPeLZtHDjIbMFC6r0HOLd9aYMDEyi/SyznVoaOMWZpznGEreRHmHsvYaEFAfW8
         olBab3am+Yjn3cMgCviXnrCAyTUo6qBeEJ18gQbHUkQp4kKpPVcdZqo1cuivbO8WGsG2
         30A4+lPJyW3wWD7ELc6YnFRlxQKpmA05WJa0O0493QsHonc7oWU9EWi0tuee83lpChbJ
         3IjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BI/oLgSxzgbNr6zSn5KWE7pclIzs1L3ZxCCll61C1TQ=;
        b=TOcqunKdzoV2v+hEuXHKeqlJTwreAqDHwVfBmaKIsPRkdCmSHmpSJgOw3ZR2Hji+fZ
         H6EhpNBMXCor+PhgET90W7GCTvSJ0MV2AkfHtRE74Mo6hlD2KbLXngPMZQVKOnAcHEVQ
         W579oK+MfBdsPDOWM6Go/Izm3IFhkc+SMqR7io0EgU5VKX04qM81aJMoYwD5YvoGiOiu
         h03roxOGGgYtHi/ZQfFTCo1QFSVU3SHqgq2KUkxLCphvbopChMejHUc1URTIX2SXQAAY
         SWuSaOwew5+dXAFcopscVMFZ63NJDXAnq1q0ldv7GRpuDwdmiTc/4vagHG1q0RD3957C
         CGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BI/oLgSxzgbNr6zSn5KWE7pclIzs1L3ZxCCll61C1TQ=;
        b=J95W81ICTxESPAeA3qKfO7rIEbaq1VL6kdKst29/NkVOiSaCc9EOPRnLMCiOJC648J
         Iekf8wpZZGV85jZtYUyM3nYhrS2FLNmZbZQG+m5GXq9wt5NlIWJxCGK5oEYXxnhPzN6z
         VeyYhTALX01MKyef5Ejtt/8n5WagZf5g/HMtMZ6xN9LgCncu4avPRulKts/0t2eZjQG4
         sjlunLnAsgZO+eGuRFVLmAKpvUrPb2EsEOgewwxb6BzwcsOjLD96iRZB3NqMI+T1XVCC
         9d2Y+Cl+7UfwUu/6zK8E5sz/DhmUvZrL6d7SYdBv0b3cOFmUaH4Td1URQs4ff6kS+kGp
         Ww/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/iyKt8NYJwuz0P20GAPBVct9XcOWZBOx7jPCKnDg3hB/qzgP4
	XmHrBbTKd4nKz+oe6zGzObg=
X-Google-Smtp-Source: APXvYqzTXk+GLdU21cVh7zxK9ncPuSfnV+lyI/hO1v21zDGpzjdE6WB03nrp6JRPVJibDMPVytGukA==
X-Received: by 2002:a05:6638:38a:: with SMTP id y10mr4705166jap.104.1564503425133;
        Tue, 30 Jul 2019 09:17:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:da12:: with SMTP id x18ls16768917iob.5.gmail; Tue, 30
 Jul 2019 09:17:04 -0700 (PDT)
X-Received: by 2002:a6b:f607:: with SMTP id n7mr71317934ioh.263.1564503424798;
        Tue, 30 Jul 2019 09:17:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564503424; cv=none;
        d=google.com; s=arc-20160816;
        b=XXXuB2VGfdmg44ebnGHtGS//y7YmV8bGCeDura9Fdh9CB8Ia7oPIAg6gJiH1G9vUZL
         9+xi3qjdbuSQyYyjzzPrRfYV9BP9p76rEkKBLDEbNCezl6U2j1Hq5rJS0yxT/E6O9oPR
         x3/CbF8LHonBQBoWoL5SC6Kpxrj9F+MjFqs035MhKlCyt/ur89EAhx3g8FbqDGB7hp3y
         1TBSUr2AxupgeYceWjDAuCCVit4lMQOh0SsIIidQO7FhvB8jUMTpnt7EekOVhd8UmBeb
         S/nEK6VdOpnM6m+EQRoZ5cHDUO2ZARCf3hMDKDcGX4SVWysUoPaM2muJforH7xSo8Dbn
         qp6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=as83riG3VoxBEAT4z4xMjCDgim1uEwNqZ6UL/GKCLDo=;
        b=b01S9EkS+K0ztH5QuRlpiJjO9oPEQcoT4rjph357c3T+HSA1GeOf58bRCyd4/GzWs5
         nN5pScDDh8+CHohKrSevnuG2TOJgANoqYNRaiDrLwlbXI8BRReNVhln8MxvPtALQkGi0
         yX+uxcNLrB9RqsLZMtcLShWfO0UjPwgXM9u8Srbuai/GNzSCj6OzHed2ufapy9rPTQal
         F8wm1j6L67A2J878bNYaltfBjiwC+Ya9Jx9+xUXOkuaFgFhCuOzrzWCJD/AGsbAfpvNV
         L57rFdcY32o0L/Q2aL7UXZs8VcoWh15TsS8fkE8sPUeRYHVCpCOk5j/30v3Ufnuxo1ig
         QHYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id m190si2578881iof.3.2019.07.30.09.17.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 30 Jul 2019 09:17:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6UGGckN014602;
	Tue, 30 Jul 2019 11:16:39 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6UGGbk5014600;
	Tue, 30 Jul 2019 11:16:37 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 30 Jul 2019 11:16:37 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        christophe leroy <christophe.leroy@c-s.fr>,
        kbuild test robot <lkp@intel.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
Message-ID: <20190730161637.GP31406@gate.crashing.org>
References: <20190729202542.205309-1-ndesaulniers@google.com> <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org> <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com> <20190730134856.GO31406@gate.crashing.org> <CAK8P3a2755_6xq453C2AePLW8BeQk_Jg=HfjB_F-zyVMnQDfdg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2755_6xq453C2AePLW8BeQk_Jg=HfjB_F-zyVMnQDfdg@mail.gmail.com>
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

On Tue, Jul 30, 2019 at 04:30:29PM +0200, Arnd Bergmann wrote:
> On Tue, Jul 30, 2019 at 3:49 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > On Tue, Jul 30, 2019 at 09:34:28AM +0200, Arnd Bergmann wrote:
> > > Upon a second look, I think the issue is that the "Z" is an input argument
> > > when it should be an output. clang decides that it can make a copy of the
> > > input and pass that into the inline asm. This is not the most efficient
> > > way, but it seems entirely correct according to the constraints.
> >
> > Most dcb* (and all icb*) do not change the memory pointed to.  The
> > memory is an input here, logically as well, and that is obvious.
> 
> Ah, right. I had only thought of dcbz here, but you are right that using
> an output makes little sense for the others.
> 
> readl() is another example where powerpc currently uses "Z" for an
> input, which illustrates this even better.

in_le32 and friends?  Yeah, huh.  If LLVM copies that to the stack as
well, its (not byte reversing) read will be atomic just fine, so things
will still work correctly.

The things defined with DEF_MMIO_IN_D (instead of DEF_MMIO_IN_X) do not
look like they will work correctly if an update form address is chosen,
but that won't happen because the constraint is "m" instead of "m<>",
making the %Un pretty useless (it will always be the empty string).

> > As I said many times already, LLVM does not seem to treat all asm
> > operands as lvalues.  That is a bug.  And it is critical for memory
> > operands for example, as should be obvious if you look at at for a few
> > seconds (you pass *that* memory, not a copy of it).  The thing you pass
> > has an identity.  It's an lvalue.  This is true for *all* inline asm
> > operands, not just output operands and memory operands, but it is most
> > obvious there.
> 
> >From experimentation, I would guess that llvm handles "m" correctly, but
> not "Z". See https://godbolt.org/z/uqfDx_ for another example.

Yeah, it does not treat "Z" as a memory constraint apparently, and it
special cases output operands and memory operands to be lvalues, but
does not do that for everything else as it should.

> > Or, LLVM might have a bug elsewhere.
> >
> > Either way, the asm is fine, and it has worked fine in GCC since
> > forever.  Changing this constraint to be an output constraint would
> > just be obfuscation (we could change *all* operands to *everything* to
> > be inout ("+") constraints, and it won't affect correctness, just the
> > reader's sanity).
> 
> I would still argue that for dcbz specifically, an output makes more
> sense than an input, but as you say that does not solve the others.

An output would be somewhat misleading.  dcbz zeroes the whole aligned
cache block sized region of memory its operand points into.  The kernel
dcbz functions do not easily know the cache block size I think, and
besides, you want a "memory" clobber anyway, also for the other dcb*,
so it won't help anything.  Also, the compiler can almost never use the
extra info ("affects the aligned 32B or 128B block this points into")
usefully anyway; it will usually see it as "can alias pretty much
anything".  Just use a "memory" clobber :-/


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730161637.GP31406%40gate.crashing.org.
