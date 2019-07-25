Return-Path: <clang-built-linux+bncBDAMN6NI5EERBC7F5DUQKGQEX46E33I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id B885D75AE4
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 00:51:55 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id k22sf32995442ede.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 15:51:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564095115; cv=pass;
        d=google.com; s=arc-20160816;
        b=oqexfAyD3k57c28lzpn1k8aNCMLPIrue3J0dmwyI7B1f9zCpNGQxljW4yT85wZNAiK
         HsBo/hqKlsk4V3NyQ1wZmRkdp3CX2dnwUg1hQtcfE3Y9Us0oO0EP/kMjeyN31M1jbzxp
         Z8M+pO/J7yCWGjD9SwHQVi3VIoLVqC371FlOZVn0EYaMMO8/+7gAejpl4Pk6vVQsaacd
         bH9B9oqYGMVFkVWnnrrpT5cmrRLtPYt75jy6e+2rBgy7vh8rbOAE3ac4VIM2ep5oXVBc
         uyHr8mnDug/2zYiySIqxwomASLPCJ16y69ZzVe2zTdfCEXQculJcCCcQV/npS25eoEjr
         J6VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wguqVmMMej1UDGTXEIMAzhAlCX+Em52X80MXD6425vU=;
        b=G+SP1iebZZe/hQ1QhEtsTQkHyS4T0MRVlKS9g8RZ0PI9rTsCc5LRvEiXkJLm+Qb4vM
         PMyLaUoxxRlJELQ893GABHYvMpeZ2E3EDnAtvQTX0DtT+NBgvv3rEXB8Zo/Yi/Qc9FPo
         LprNpV4bpPxcZH9hsbIMqKv/CXlHe+kDEC8C0K6kVqMjzrV6qO+3V/yKpqlB/pkUc5pA
         Rpi5VghL1PXpmtESS2df3dJ2xAH2ph6Qgm8o8t2861nH42XB7OvhowZZCTa1GkrelOXq
         ardAXGdrm5aV8DmlgSbO4T/8+0aNws13XzqXAQY6dWOaV9+CvrCymdAU1xyIFt/WRd4H
         UA0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wguqVmMMej1UDGTXEIMAzhAlCX+Em52X80MXD6425vU=;
        b=GzVxeG9CTuYFJ3NhBN6psYj8NKqVRgi1VWrGAA27UlUFEIvfjyiHy/so6tccPd+GoD
         tlAdDVJkKX1U1zmMIYP2bY+y575fKhUza7OlM31PsO32rRRl8U8WPYGE2wCYuy7HZXPm
         6QaNY75dTbL509RZ0icgLmClNY5xSTdPbyGRRrPUjhSl8eQfTqUTnC8ACH5OETo0z1WA
         mf8n+xadMhU8mvX2LHZWUOLS163flY9UCu/1MSPfc+ga3WvpZrlHffuTXnaJp29GLfBt
         M61QxDgHhoL0obJhBCan6mo8n/0h1Wzzmerp1a+M8Kk5Z09XrQsUKACA1ZX5r+LT/pZB
         f/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wguqVmMMej1UDGTXEIMAzhAlCX+Em52X80MXD6425vU=;
        b=q9UMwyQ6pZ0NP7SMbcpLJkSTcEUYTOdB7qlC5u0Xgu8cdNv/ZLIl7nkVaMx5XoxwyP
         +BpkGKLXqnmy5yBIUqT5NnOtmTGfU05CClJ2BIbYq22543MjS679c8q2SbNu25quMaZo
         A6onMo3k4QYxrDwQIpvzJEWV/T/biV/sliWn7cbqpom60f/kfdoo5tK/qvzoWUOXO6KS
         rdsw/T10tnzlaenP+qyrzuaZCjsM8M1jdJbmUIdyOhlXrk66aY2OLpTNmBj/5NgB9ZP1
         +xV8UTubfoDEYL+0mbmicBfGuZ6G7AGDQH0so3O3ryfqV6Cs82SXncadtfBvj2Ja4Lxb
         +raQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1eqCW1QOKx5N7IwDIebKQ3usMNtV1nGDh6+HJZNMySsosKGYL
	OKK8d/DYrW1ygyQKQrtVjlI=
X-Google-Smtp-Source: APXvYqzwX6L1jmH/B+DouGdXIEp4Mlu419ERsagciBB/JQxaUItRnYdbdAkbb4I0cmwTg8JTzdaWaA==
X-Received: by 2002:a17:906:3948:: with SMTP id g8mr70837832eje.240.1564095115471;
        Thu, 25 Jul 2019 15:51:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7f15:: with SMTP id d21ls10880243ejr.1.gmail; Thu,
 25 Jul 2019 15:51:55 -0700 (PDT)
X-Received: by 2002:a17:906:ece7:: with SMTP id qt7mr70844469ejb.155.1564095115071;
        Thu, 25 Jul 2019 15:51:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564095115; cv=none;
        d=google.com; s=arc-20160816;
        b=WnStWwrITcu7o9O8Ar0Rg6L394KJyV31IEvmbhIJm48kzUKYg7fHSMk1oIfGn5/d6P
         MPCkTQtBydle5pfe+TP78MxpOs/aJQUZ/6wD/oKZc0KuK81tPUkjN/g+eVrlOmW6dtWJ
         Qb+a/y/RaoGSZ8Fe2oJGaGJVzZj+DsFrkmDVGqWQjxwmFW1FvSlfQp+Pvdm4MLfE3id5
         7NOZKdqCzxPI2KRroSeXbQlmfcBM8+MK9SNmelaKoTmUqiejkCpT3bIeZpjsClxs3BN7
         0kabA5+DR6vZDIWGNiFG9Gkg8Fc9eDPq6q3r/Dt9MwL0B+0PzbD8VuuR9K7ver4Vt/Ld
         HeEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=i2HEs7CIuWvb/E/VCTZSpjFLu/BjqCdWAGT3/TBolqM=;
        b=dOS+VioIxexscBkMgBW2RQ3Pl9fRFEAg0hn+SBJKTe9lB5Dj3vgBkuI+RbsT/p8v2j
         VeoQuOQ+EKM2We+w6LA9y2/uMzcTe3RVhQ4WbjNq/VzrmHnJBBNpOdtOFCRa9cxOY90O
         /iuCrCeSyDTSjbrSBkG8bpiSUVoIrGPrd+ICFzTCIrcmnDH5Ifhk1DTNLUaixEor8GhE
         R9FC/pAWhmxr9FHJ0nQOvmqyZTeSocNEJW2UyPm0aCxSbRjp4/PbeGlgMUz7m/1tqX54
         zKR+WxAqL4HRQ5fvWiyWSuYJXZySQxZOA7get/T/9BITweuCsHafhc5jg83Ho0XWXLB6
         VTGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id t15si2428829ejq.1.2019.07.25.15.51.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Jul 2019 15:51:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hqmaQ-0006N0-3n; Fri, 26 Jul 2019 00:51:46 +0200
Date: Fri, 26 Jul 2019 00:51:44 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: mingo@redhat.com, bp@alien8.de, peterz@infradead.org, 
    clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
    yamada.masahiro@socionext.com
Subject: Re: [PATCH v4 0/2] Support kexec/kdump for clang built kernel
In-Reply-To: <20190725200625.174838-3-ndesaulniers@google.com>
Message-ID: <alpine.DEB.2.21.1907260038580.1791@nanos.tec.linutronix.de>
References: <20190725200625.174838-1-ndesaulniers@google.com> <20190725200625.174838-3-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Thu, 25 Jul 2019, Nick Desaulniers wrote:

I'm really impressed how you manage to make the cover letter (0/N) a reply
to 1/N instead of 1..N/N being a reply to 0/N.

  In-Reply-To: <20190725200625.174838-1-ndesaulniers@google.com>
  Message-Id: <20190725200625.174838-3-ndesaulniers@google.com>

Is that a new git feature to be $corp top-posting compliant?

> 1. Reuse the implementation of memcpy and memset instead of relying on
> __builtin_memcpy and __builtin_memset as it causes infinite recursion
> in Clang (at any opt level) or GCC at -O2.
> 2. Don't reset KBUILD_CFLAGS, rather filter CONFIG_FUNCTION_TRACER,
> CONFIG_STACKPROTECTOR, and CONFIG_STACKPROTECTOR_STRONG flags via
> `CFLAGS_REMOVE_<file>.o'
> 
> A good test of this series (besides boot testing a kexec kernel):
> * There should be no undefined symbols in arch/x86/purgatory/purgatory.ro:
> $ nm arch/x86/purgatory/purgatory.ro
>   particularly `warn`, `bcmp`, `__stack_chk_fail`, `memcpy` or `memset`.
> * `-pg`, `-fstack-protector`, `-fstack-protector-strong` should not be
>   added to the command line for the c source files under arch/x86/purgatory/
>   when compiling with CONFIG_FUNCTION_TRACER=y, CONFIG_STACKPROTECTOR=y,
>   and CONFIG_STACKPROTECTOR_STRONG=y.
> 
> V4 of: https://lkml.org/lkml/2019/7/23/864

Please don't use lkml.org references. I know it's popular but equally
unreliable at times.

The long term reliable reference is message id based, i.e.:

 lkml.kernel.org/r/$MSGID

or

 lore.kernel.org/lkml/$MSGID

even if the base URLs would cease to exist, the message id will give you a
trivial way to find the relevant thread, but if '2019/7/23/864' stops to
work, good luck in finding the original post. I wasted hours on that just
because a subject line changed enough to confuse the big internet stalking
machines.

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907260038580.1791%40nanos.tec.linutronix.de.
