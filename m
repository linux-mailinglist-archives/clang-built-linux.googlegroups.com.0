Return-Path: <clang-built-linux+bncBCR5PSMFZYORBVOX37VQKGQEB7KPHZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id E118DAF108
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 20:30:46 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id x77sf21867536qka.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 11:30:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568140245; cv=pass;
        d=google.com; s=arc-20160816;
        b=vqbSa9eftnCOo2Hy1uq3h2d1/6UwTVm54dw4SchZ4GautkiBcyx9jNb8DuuaHj86TR
         YnJuggDi3YcXhSUZoF/ItNC9s1gWsrLQgtTTyk+qLzsnADpJbmKYl/SKp5wb3XdvsfLe
         yglbj17j1+jPOBS0TXOejnPs0mpmiQKLArkxvjPlViU5tLimRzVcV30VYeTTLksLYlSw
         fFwb2gyJYoUDsa+jhwhFERx09A+X+xvibANTsfpxnMCplQr8jPBlCwzgd6xL06oqViSY
         SbdDyNXDwPw2d+IsEKOtcJnEwddmAqu0RZaXwrMLd4CqtkjNznxG4ERt/0kHJ/RJP+O1
         ZWOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=vCvKROsUgZEVSTCJhLXfe8rJO8QODMh5bhJKVy9qY/g=;
        b=h01wY9HvuIsNAeiJqj9/9r60tOFDStHactjJ/yzjrev96kIuDsCh0X7PJIxGmm2ddX
         pg4pB0C88UGV5YH1pzQFVlxV8I4wZPjQOT8nC6iHjHGP+K48lJ9AH2QRrdnUy9877jif
         /BFThdQOJDwGpDk3tltezHDNlMkvbWje6ZFckIp/aJXLKkh29sDEd8hayOUp/WwyJs9N
         39dww8CIzfJVRkNA5IxZW/j8P+wKEyPEpZBQx0muLdIHMHQ+wEp5apUJ9aLiVbLxwzOE
         5wHvcpLoUIbCudpCOQUkuen9Eu4zSRqtBCf1VzT0I9ywlytEwM2C23fdbJjbnWr3zQEY
         GxJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=bjPAWTkE;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vCvKROsUgZEVSTCJhLXfe8rJO8QODMh5bhJKVy9qY/g=;
        b=Rbo73mNLUntfGKlP4uidFavTohmAqo8rg7G+4L7d3uHGXFK79UB/rJvcBW8w2bJo/Y
         Ztz3pOBxIgUGChJZB0xhZNIwqHMBHfatSHgDVpVZRZDFO8URr5JftYS9efxLe+B+pkRu
         9wKfHJphBc+2GU2DF3/XORgfsZH8lDAHGKF5VGGTkN8AZN/CAYf3srNFSy5ah/XiKBlv
         CDMjE7b6bsEKh/2GZv8x0MbHjlRUCocyfCVCynNp+68UrPoG6PGL0+HnZx6+Psxi9pFP
         KJNbgDaDuQQdVsfRkzyi9zyVicNCygn1wDCI57lfnUtzZTfYc12Ll9JaTc4K1xPe9yFr
         x2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vCvKROsUgZEVSTCJhLXfe8rJO8QODMh5bhJKVy9qY/g=;
        b=DZYI3EQtbGzB+Sz4XRHLh0Pf7nEQcypvCLFcmDzJ+UAY/SJWnvduiiV3lB7EZkZvmw
         smka41fI9JkD1i2g78+RxnFuWj0VWOuRXa1k3iVrXIgzYRwwWJCCnObULYwaMeCyrMdC
         4nMzntaiXPoQljv5Zyi0TmLLCuy7r1hnus5LU1HfS/LmaAzecI0WvduyZfOVZa5vefK7
         T6q2VdNGH66Uv98wkkbcB+W+5i7w5iNs2XyoREo+ONCnGDa1kvPk4SsqsPunulWvSrLP
         aFjMGYOiOOLS1y2bD5TLWb6n5/hElPPFYiRIAMLVyN3RxmPrRdoczBDgze4F+E1eXOwp
         OPOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPMU0Ibs4BwhKu5z3C7jAsPYZEAXKfREZHRSRCPtIEs9XOm8wH
	SbyFbl3AodZXbIIJ/5NK2HM=
X-Google-Smtp-Source: APXvYqzRKBy+svePR7VZGpnCU8pMcy4uLQhzVlsQTlQ49HmnYWjv6QX8XQgru9Z3rrv4CEdU6KAM0A==
X-Received: by 2002:ac8:67ce:: with SMTP id r14mr31820637qtp.338.1568140245753;
        Tue, 10 Sep 2019 11:30:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3136:: with SMTP id g51ls1807662qtb.4.gmail; Tue, 10 Sep
 2019 11:30:45 -0700 (PDT)
X-Received: by 2002:ac8:7518:: with SMTP id u24mr31205348qtq.49.1568140245377;
        Tue, 10 Sep 2019 11:30:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568140245; cv=none;
        d=google.com; s=arc-20160816;
        b=JOekrOaF6Wh7YUlcTKmFrRWdZnWx2ippdNlzPdL7b+0uV0CFUEJahc/u35SqyIrltZ
         9qSVcWh7cLvgbXXW8imh75UV/iph/qE0j7LqsuZsVBfHdL5bBZWKwH1kbpfgb0ZAuGox
         qQaX/M+4+Sma4kRVnmQBybZl/ddmTOLNIKxet7Q5mcUyeRJVfYfT8BNPf60qyX2D9e+m
         anSTNb8oo1cNX2lf+AeeECiE3FEYzuG9/a4K6+8dEHgG4/gDpkCyNM4rtzYua9Iez1V0
         cxZO5DbtgMT37SFYaVRQaga0wbP9md0utRQzU1MaZCz5YFzic5m4IisqLGqb6h0wXADr
         OXFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=WvKKk/VsgS9fXte4v+LF7eSKcDedUirX6m93Ih2bt3Q=;
        b=u9QjTgimbL7uwe5CrndMCRiXV05bUo1asRqgijvC0QU3XKpfJIg4IdVmO7KPMSVKPF
         N5VlUinzyyl4famJ8gA+1RaJSBCOexxgx17RLw3chJysoAgGt2h+WTFo7ozKXjsIfoAG
         XEe01+r69Y9IuCcG6MrODw/x7RYhGimzxIz8ybDXx0FvupnQcgaRUp9JghnRY8njKApq
         zb/cEjlx3pehsnqnoOIHM8lU0ttKlzSKp09Nv9m+xNrjUofpW82TYs2mjlF/U701VFSx
         iXWzm2NT9z8Ni9fGdL7Qu4qvb1g4+0jnjfALQrloT9ZJIiow2RkGpnAmykGSoZ76ftP5
         bAZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=bjPAWTkE;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id u44si1246754qtb.5.2019.09.10.11.30.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 11:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 46SYW11NV4z9sCJ;
	Wed, 11 Sep 2019 04:30:36 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Segher Boessenkool <segher@kernel.crashing.org>
Cc: David Laight <David.Laight@aculab.com>, Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
In-Reply-To: <20190904231554.GA42450@archlinux-threadripper>
References: <878srdv206.fsf@mpe.ellerman.id.au> <20190828175322.GA121833@archlinux-threadripper> <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com> <20190828184529.GC127646@archlinux-threadripper> <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com> <20190903055553.GC60296@archlinux-threadripper> <20190903193128.GC9749@gate.crashing.org> <20190904002401.GA70635@archlinux-threadripper> <1bcd7086f3d24dfa82eec03980f30fbc@AcuMS.aculab.com> <20190904130135.GN9749@gate.crashing.org> <20190904231554.GA42450@archlinux-threadripper>
Date: Wed, 11 Sep 2019 04:30:38 +1000
Message-ID: <87mufcypf5.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=bjPAWTkE;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Wed, Sep 04, 2019 at 08:01:35AM -0500, Segher Boessenkool wrote:
>> On Wed, Sep 04, 2019 at 08:16:45AM +0000, David Laight wrote:
>> > From: Nathan Chancellor [mailto:natechancellor@gmail.com]
>> > > Fair enough so I guess we are back to just outright disabling the
>> > > warning.
>> > 
>> > Just disabling the warning won't stop the compiler generating code
>> > that breaks a 'user' implementation of setjmp().
>> 
>> Yeah.  I have a patch (will send in an hour or so) that enables the
>> "returns_twice" attribute for setjmp (in <asm/setjmp.h>).  In testing
>> (with GCC trunk) it showed no difference in code generation, but
>> better save than sorry.
>> 
>> It also sets "noreturn" on longjmp, and that *does* help, it saves a
>> hundred insns or so (all in xmon, no surprise there).
>> 
>> I don't think this will make LLVM shut up about this though.  And
>> technically it is right: the C standard does say that in hosted mode
>> setjmp is a reserved name and you need to include <setjmp.h> to access
>> it (not <asm/setjmp.h>).
>
> It does not fix the warning, I tested your patch.
>
>> So why is the kernel compiled as hosted?  Does adding -ffreestanding
>> hurt anything?  Is that actually supported on LLVM, on all relevant
>> versions of it?  Does it shut up the warning there (if not, that would
>> be an LLVM bug)?
>
> It does fix this warning because -ffreestanding implies -fno-builtin,
> which also solves the warning. LLVM has supported -ffreestanding since
> at least 3.0.0. There are some parts of the kernel that are compiled
> with this and it probably should be used in more places but it sounds
> like there might be some good codegen improvements that are disabled
> with it:
>
> https://lore.kernel.org/lkml/CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com/

For xmon.c and crash.c I think using -ffreestanding would be fine.
They're both crash/debug code, so we don't care about minor optimisation
differences. If anything we don't want the compiler being too clever
when generating that code.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87mufcypf5.fsf%40mpe.ellerman.id.au.
