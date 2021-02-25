Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBMWV4CAQMGQEYI3Y6XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0FF3259D8
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:54:42 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id e11sf3724284wro.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:54:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614293682; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uf2t/3Ca/u5+AFJAdXYKJmGHROluW02Wn8h3SNp+Wuf1ZEchxTBLxeSK+lS1SWdIg3
         cJh4QXbm66vCA1c42/BpJP4CL04evsK/9UKd+Jate0GZVIXvdYEhrqbaTebs9UCcw/gG
         Zmt6zLyJbZ5ySK7QQdSiK83SUw5zoz5DHC7XhFiaFmFjQewk8aGaOiPldzfHJC+/iYzr
         A2h2Lumr+3em1xR3/bflJFO2HJYAuYZ1MtgPXzh/4OvJ4q7EBvWkRLDNmqMsHzQIctGA
         zEKRh+70LrzytA7Co4+2Lpup1JhsDhsr2Wkdu6zaDVI7ao31xaHz/CZzeF/YHOHYAdet
         aLzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zs7f6SF15W2NRsicKoaoPYcnvUQlBOz4aRGVHDV+6qg=;
        b=iMDEDpw2KceyL85ij2eM7+10ScjqoT85j0oIyHcjKc6/7oRqrji2CzDkkAbJ34MvIA
         CBVttuRHgDIYVZR+81D5ZqhU9JEh1Ltlfkb7AjtUNJsyKfTmeZLzBfxGcOlTNONqIjAO
         8ixhYE/xUg09agCy0/MOybzM/JR4JTI2IXBHwF1jsa43EpHIXqJ3Kf/V4xDg+dWWyNXw
         M9yuxI3Tb6MLxms80zgHlGcPM25qOTZrfS+cT7PIDlkisX9RgrlFY/CUHr2O+YZzV1G3
         Qkcz56YaFdAyTTQv+C5U1PNf5ihXA03jEE/7rg66waaYlMX4615IvcADffut+5Xm9cgt
         QGzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ROIlJN7a;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zs7f6SF15W2NRsicKoaoPYcnvUQlBOz4aRGVHDV+6qg=;
        b=GadAiXcfgQnf7XzigGKpnwcFxWFEnEo04v7KorJfWVZhNk8+m9RBBTjvmHnfSGWwws
         OSck4aX2cJ9sc/hxR3k9wHLYsUHzTwahH+RbFhwbPYEyR2EKgODf7gbFaKrPk4QyN3yt
         BlkHOy9thPWccsbObZqrmvrE3rDQ8Dd+/JpuykGYN6mbmBPIwjNWce186ZN7y+Y6NHz7
         gJy43TY/CneOAD5sgNXehXPPmvuHH4R8HoCoHft8PlvoBosMMxsTpWqYEcyBMtgKvQNb
         sa+8Qn89bxNu9Qzu/htLj66boLFu5mDsDxDkL4gVyfqFpI92+tMd/bua5U9xYhjvTpXE
         jwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zs7f6SF15W2NRsicKoaoPYcnvUQlBOz4aRGVHDV+6qg=;
        b=m02sXi+ddljrg/GvD/5vSZ3aP0DcsAgQr5JmmAbskAQAko3J4LVshmgdv5QtpUONr8
         l4ZT4BZdvCYcbD4Ngq8lPBXuRkt0U52FmleiucOSXOx8SadMJLndcfnFaIZVrjzANpC5
         GpdS3/Kfv+BHHobwmXpjZ+LKjB03KjJds84Pwtqvp8J45oCU/hta46E8iJHtSAnKJOyC
         /IHo2SHqQXQDT/wqY/osC1KI/Zr8T7TInkwF0G5xqoNXcqG7FGSNf5WKCDXRcYX8Zmrl
         gJ7ZdZxXl4TIdonVbmEjdg6+asD95xeAkClY3IxpZ/0X5YI6Ok5mRiR/OescHP+J1Pry
         1yaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MklnjNoLr3l7KgPgdB4XcPCE0DevD50E6mZC+llL0PuuFk8uJ
	ptI+BJ+77XgTXY4Lci9m38o=
X-Google-Smtp-Source: ABdhPJy9RwFMtpfUAlykpXekA0hr2UdCFqN3i+Ohcs9G9BnYzm95M/LQOtBuWqqSjh+yAj7wa5sUJA==
X-Received: by 2002:a5d:544c:: with SMTP id w12mr215166wrv.310.1614293682439;
        Thu, 25 Feb 2021 14:54:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2e44:: with SMTP id u65ls2022103wmu.2.canary-gmail; Thu,
 25 Feb 2021 14:54:41 -0800 (PST)
X-Received: by 2002:a7b:c5c7:: with SMTP id n7mr518942wmk.63.1614293681576;
        Thu, 25 Feb 2021 14:54:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614293681; cv=none;
        d=google.com; s=arc-20160816;
        b=h6QNRIJ051ZKklxAUsbzuerk09CIQicIBk7c2upivDPOOKPyQe2fsWk7z7GtXr6zXZ
         w5NzJRktkKATvIQVbcffi6SDF+fNbeLEPz7nRIG8v3JUKOmt35LgnGIG9M3EvO4qXS0b
         wFZhDZNvf7MUYnDq1wMRa1McLBM+i7FP0Pd/GAhVhHUKOAhVOIw0gVxLS3q3pKveoIgR
         UAHGOzhEBn9Jjxx52TeD8PPpVmhYXxW6Q/jT0Kff+IyxeWa0Rv+N4xH56FL6aCciqsYy
         +Bh0A1/3ZFc2ALcYaNlgTFD2HTM73RT4vr0H2HTnNFe/RAD/9m1sINoCwO8VNk6ow5DA
         6AyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tObK55uNqHsYeXJtMoccy//WcmAriOphb7i7YiyWzvA=;
        b=IP2mNKdViKn3cOFZDLPjrgFIXL/VjmsP2li9YYq5DEX670X4CHQcjVKIXe07qGVxEx
         QsUIaDT6GJCHrp4/zTPD+d4IYlmHEgZbZfJzxtCdDp8p31c/dDHvIBkeJY1csehf0RXF
         RAQBjkqZpwW1a2d+AFmooPNW5m3hSQOHf3MDBr2QlLYQrndUX9RxVhltmstRgl2ss6T8
         aNcLDPyCJpeRaHV4a+/ZIWzEU3UNKU8vGeyA3NmapYcU+8pv4rKXHTw0oPuEwEYuONPi
         n7d58x6G1Vedv77svmfmZ4Er7ZJiQ9bMN8AZ9CztXw1QhjETBT1+oiXz+k/MyE9MCq2a
         8oHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ROIlJN7a;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v16si577685wmh.1.2021.02.25.14.54.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 14:54:41 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lFPWc-00BH62-KV; Thu, 25 Feb 2021 22:54:31 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id EE4579864D3; Thu, 25 Feb 2021 23:54:25 +0100 (CET)
Date: Thu, 25 Feb 2021 23:54:25 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Arthur Eubanks <aeubanks@google.com>,
	Chandler Carruth <chandlerc@google.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
Message-ID: <20210225225425.GH4746@worktop.programming.kicks-ass.net>
References: <20210225112247.2240389-1-arnd@kernel.org>
 <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic>
 <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
 <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ROIlJN7a;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Feb 25, 2021 at 12:31:33PM -0800, Nick Desaulniers wrote:

> Q: But I put the `inline` keyword on the callee?
> A: Probably deserves its own post, but the `inline` keyword doesn't
> mean what any rational initial impression would suppose. Language in
> the standard refers to "inline substitution" and grants a lot of
> leeway to implementations in terms of whether it's performed at all.

That's just weasle wording to do the wrong thing :/ GCC (and other
compilers) have been saying inline is a valid substitute for macros. You
then reading the spec and saying we can do this ass backwards and
screw everybody who's been expecting things to top-down is just not
acceptible.

The C spec is notoriously bad, because it fails to actually specify and
then we get shit like this :-( And if you then take that 'freedom' and
implement behaviour that 'doesn't mean what any rational initial
impression would suppose', then you're just being a twat.

Life is hard enough without compilers trying to screw you over on
purpose :/

> There are cases where even with "always_inline" fn attr is applied,
> and the compiler says "that's nice, but I still cannot perform inline
> substitution here, I'm sorry."

That's a hard fail from where I'm sitting. Can we please get a compiler
error when that happens? That is, we're relying on this for correctness,
if the compiler then goes and ignores it, we've got *serious* problems.

This really MUST NOT happen.

And I'm not joking, I can get you a non-booting kernel by removing just
a few __always_inline in the right place.

> There are no silver bullets here.  It's semantics have
> changed since its introduction,

That isn't our doing, if the compiler redefines its keywords, don't tell
us our program is broken. You're the ones that have been changing the
meaning of thigs.

> and I have seen rare uses that make my skin crawl.

Do tell...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225225425.GH4746%40worktop.programming.kicks-ass.net.
