Return-Path: <clang-built-linux+bncBD4LX4523YGBBS7GXH7AKGQEHTP2MXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 590422D1879
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 19:24:13 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id q8sf6362516otk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 10:24:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607365452; cv=pass;
        d=google.com; s=arc-20160816;
        b=je2vh1SHYlDTMyF9gVNJpnwmlspLf4Ohm05c5yPITCrZAYqcxfiLLi5NDjLR4p/5ht
         7hZbPBpctHOYFFN88mRBqvz3Ss+M+G8A9JsJobLoUlNtcreAH1sU7sYJb8eYlfPWAx5S
         nQ+yLIwgXYjMpmUSh0hV6plJtqrZT42jiU0J4JIZXS4+Al3PQXVUBuArw6t8j8lq8bDy
         58zQbxrudC2Vv4Bc9voO2CYg9A+TR4oYm0ASTrBSvdtw/UOEeyQ2SdUitLlx9Zie2aiy
         bTzrqGs1bnWuPbI0OIp+cQSrxjmVwnRgAL6RmEKaxMnpCAQQdquwsBpvkfb2dIgjMOYo
         Dk6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+aA1jh/ok/r/lDzyE8eUNaApwcacdlCUPxfVYzYrOc0=;
        b=VmmsdbiyY1ChivjIWiY4Aw9Rhn0j2P9y6f3GigBdyOBtnwCAMhnGx1Dxu0FqCF7keq
         9p8xJ7TUy3MjxUrsvHnFlq1hrIOr8eEy+kGr3x0pFx+duMnL5XO8durFMHLJrogIz7ln
         p9sbnv37SHmyDVsg1yKfNGJ/0kikEreLuJrG4/23toSp6CLXMJDZ+kPkEHqQH+jZaKUN
         Gw2llEjF3Dd/G7Zo8dRCre/pMSh2FXBIzJtHThKoP97MPohyOBiWATB/V3cAi5QViAtr
         JEibdMHRUhXbDxz7r4q89uc3aLc1kB7ma6UrG/i7KSr0DRLBQxwWiQX68kxzr24DJvrF
         00KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+aA1jh/ok/r/lDzyE8eUNaApwcacdlCUPxfVYzYrOc0=;
        b=QbuPT3HUPePKWpwRjklW7ufsrQAjMYHvpHwlfxh5rw1Xnfg50agoWQbwLIsySqFu9q
         O78PIQXrop6iI2OxAOV85+3i2R5oqzzOYle3Oyp9sOmvHLBJbEQrU/+7r2O2l27V01Ek
         i9slE5xaw69Ux6J6XWMgDFraOBrur1U5sPcfJqGFReKxi+i8lly3jmcDgheJFgB7mVan
         26E17ngJ6KCBEHdZkHRHuPbdyFkq/IFMp9uiVexNmjgfXHtEoiSxg8s03WjDixfxWj2v
         MIJZCPjw6CvSd5VNLiFzD51ktOShSQqexOC8ZnMEweps+W/EaootMHNIf6hqThY9fN3N
         KqSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+aA1jh/ok/r/lDzyE8eUNaApwcacdlCUPxfVYzYrOc0=;
        b=VhIL3m/gt0RlqUL05bci/cQSgoviUgk6nGug6Xj/vl3uYB/3SRLe9zD+M3JvE5c3Ht
         ZVO8cRdf3iJ68/kqpr9G0XqoLLKgL/1mXfuDFPr2kDevrTjZNQ91ErKcOamlQ68N2G+n
         S54BCVeoIUm9zLmj2HxAmIIYmWU5m+SQOieALl+4hyr+aOivrrHqvpgcLK2+Xmk5QPBy
         mfEiD8Djck0j8WNCjxCiP8etQkA0uS49+eZF7i/FnzefFZK6HB2i6AOvgeYxxV4uBIYW
         Vwo0h/xarE6mV5r3belJm4EHg8kvOMxY4n+wDlbkS9VPVvUBULbJf3tNd5N7B9zpXL5G
         D8QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330TAHD32GuMn90OErGNt62eahbrRUCf258H6oKcPuG5RRQkGhR
	n+rb0yUUhX6N2vEvIStX8/4=
X-Google-Smtp-Source: ABdhPJxHbxod0tcuJ8IBQuAmHITTstAHbmQLicQcleamqDxlC2PArEsY3zJOQByNTXESPCx3GFcEcQ==
X-Received: by 2002:aca:dc85:: with SMTP id t127mr89361oig.19.1607365452122;
        Mon, 07 Dec 2020 10:24:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8c3:: with SMTP id 61ls4398275otf.6.gmail; Mon, 07 Dec
 2020 10:24:11 -0800 (PST)
X-Received: by 2002:a9d:620d:: with SMTP id g13mr13942936otj.56.1607365451559;
        Mon, 07 Dec 2020 10:24:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607365451; cv=none;
        d=google.com; s=arc-20160816;
        b=uB65P7DKSTW5k0Q6JWumuTN5ELiNHE17Eubp+Btc1SkCed8zfs1JpKX/nnoe6k2gJC
         i1PfjP4JrGesOhFB8ct5geKt0HPB8pSAwd7zgarFMuPjc6coHYSwIAe9iolHFBYhmcU6
         8xm8TEKePc+psM6Ep7aa0G+24K7gP83HY24mgRjEl7qlaCu0D2q1TOSMWswUV4aCnUNa
         IwDKJQk85K83nA0OK/mXl9ufggWoyiHqBFqdOuPAkGh4sgKWoqUm9V6AaF8c+i+U6BoM
         hQL0psY9ByvppHYnlmmm1IKmGB9h/mbk/Z9utzYl0ubi3kyiwL7xh140Zf66L0pYhhxz
         aa9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TLlvkRUl6s1/tYw2N6OdCTEk+ZspbL4WBm1MDAH4usc=;
        b=vaWko0SJ04hPQLnmISEms9KTKnWT+9CCe5n5NarEMpT6+rcbvxhB2Cl3BhQAX6GMnw
         N08bQQ2Y8h3zNTeDgfEB7lMzFZqf2sTgYjYqgl28H7mT7C16HauSlwsifQ5cdR9TpByw
         qevH41G/QBZdUoOpM8qfMJ7W80dsFaSGx2uwTTBY6zbghXWjg9SC/LmtTCl9oJ6j9e3i
         2pIcCmHF8Wc+yc0TZIdmrCAUvgY8PYQrbbktWPidQPiT3Y6bvvEFyvFHZXig5Cs8+jRT
         P1JuD9/7a6Xx5vtSMQRz9jU6taCRb2zYU0xdz2jB5H1jpFdf3EiRfmgNnOIvoz3Bx0SQ
         ahqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id u25si952999oic.0.2020.12.07.10.24.10
        for <clang-built-linux@googlegroups.com>;
        Mon, 07 Dec 2020 10:24:10 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0B7IKxap009834;
	Mon, 7 Dec 2020 12:20:59 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0B7IKwjA009833;
	Mon, 7 Dec 2020 12:20:58 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 7 Dec 2020 12:20:58 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, kbuild-all@lists.01.org,
        kernel test robot <lkp@intel.com>
Subject: Re: [powerpc:next-test 54/220] arch/powerpc/kernel/vdso32/vgettimeofday.c:13:5: warning: no previous prototype for function '__c_kernel_clock_gettime64'
Message-ID: <20201207182058.GU2672@gate.crashing.org>
References: <202012042220.zO7hSFT2-lkp@intel.com> <87czzlu7n4.fsf@mpe.ellerman.id.au> <CAKwvOd=4vu_o3Sr14JwDO6s+tqZWp-DQKWs9So8g2_-zTt+8KA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=4vu_o3Sr14JwDO6s+tqZWp-DQKWs9So8g2_-zTt+8KA@mail.gmail.com>
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

On Mon, Dec 07, 2020 at 09:56:56AM -0800, Nick Desaulniers wrote:
> On Mon, Dec 7, 2020 at 4:23 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
> > So is clang defining __powerpc64__ even for 32-bit code?
> >
> > And the answer appears to be yes:
> >
> >   $ clang --version
> >   Ubuntu clang version 11.0.0-2
> >   Target: powerpc64le-unknown-linux-gnu
> >
> >   $ clang -m32 -dM -E - < /dev/null | grep powerpc
> >   #define __powerpc64__ 1
> >   #define __powerpc__ 1
> >
> > Compare to gcc:
> >
> >   $ gcc --version
> >   gcc (Ubuntu 10.2.0-13ubuntu1) 10.2.0
> >
> >   $ gcc -m32 -dM -E - < /dev/null | grep powerpc
> >   #define __powerpc__ 1
> >   #define powerpc 1
> >   #define __powerpc 1
> >
> >
> > Which is fairly problematic, because we use the presence/absence of
> > __powerpc64__ to determine if we're building 64-bit/32-bit code in
> > several places.
> >
> > Not sure what the best approach for fixing that is.
> 
> Thanks for the triage; we should fix our preprocessor:
> https://bugs.llvm.org/show_bug.cgi?id=48427

Not only is that a compatibility problem (as the bug report says): it is
a straight up violation of the ABI!  (For ELFv2, which you have here;
older ABIs did not mention the preprocessor predefines, but this was
exactly the same on all compilers afaik.)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201207182058.GU2672%40gate.crashing.org.
