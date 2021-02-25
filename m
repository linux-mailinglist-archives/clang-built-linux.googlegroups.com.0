Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBLVW32AQMGQEDDZTHTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 940BF324FED
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:42:22 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id f185sf678474wmf.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 04:42:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614256942; cv=pass;
        d=google.com; s=arc-20160816;
        b=HYuGwlNU9oD0Fdg6P5AVBuGZ6onleixQi/ZD4cWtNzESapz4WjsqoO/Hjl+Fz0b9F+
         OpkHXt0ygPJoEQYuppsvFsw98tSIS+VY0Ye1HlOBmGKD9paZvtYIY/ReE6PeQ+kj7w2G
         xBI/PhR4OfQKO6zGjO0bgLUzQPW/l2q7mR6hZ0eZzX4dsmlHICwWD3UCxBN1NUs5dkNb
         kMj7TXRYvVv+EaKtckDgyAP+aQErXICcFmymUKwdwResLfAPZy1izR2FTvHKew5FbnlK
         rlojihtz4DI80Qy7xG1ojSvpF+s06n/a8VjJ4GKTzsWFDhNpxS4VYdq13wlgXsUNtkfe
         vtzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oqs0as33ckKy5L6ZfZcJ7+L7Xdc2s3vp8H7lggFsGTU=;
        b=aIxO9vjRggUeAC074p6Ncr+ucnRDDdope7nrSjIItGQ9xklG3QLqI4yCehEkRpLSXC
         WX79RKOE/9YwyKRYlP+RF4Eu0HHSgmRYSeNfIeJNfGpTMqL9TGOPN+yvrVEkMckp9Ocu
         ZQg7b4D4p4UPLEdzx3T5gUEP26HbiRJTjYFG5nCk4wzjk9lTx0Xq8KClEvUiq+K6t23A
         woD1qu/ol4e2zz84URrGVFtvKXtHUzAgzTz6cFSpGrouv8/ljOwLtHtu5YTAwfOA2P7D
         FLAzIhEIueAkXzod6/TfIb5yDpQt6Jyl7//JFGVdZFRpck+dFXD2/53kYFuQTlBKXeYU
         DOaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=KtI5TcoO;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqs0as33ckKy5L6ZfZcJ7+L7Xdc2s3vp8H7lggFsGTU=;
        b=WWCa5IYdabSjy2mCV9GKPkUQCLGumpTAoeUcBBD0y4CPc51UI+KjCbJB8Bb9/4KH6h
         Lv2gGzXbhBfj0WReUWTaGeD1EKd7ABO/hQiRFepPHWPIs68yRacB0/6S+PhJlEYLu7bs
         +w03HgV6uLKPZCquA9VFAJHXrZ4hVSwJSlPkPS2n7Qhq9uwTVZA7HQfa/mTUFsSVEBFH
         1nLKMLVrAeTy+Ba8aH2rBcMcPpVYgRRCPcFGu4/yTiU2tJ2ru9Al7lfhOKp9KbA3FqnY
         tP6jg58RtS6cT9L1AuMpoGVOpPP24qOEbldJLAUa2dp2IAv1vHmzv8tE6P9D2wu4X98E
         9dCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oqs0as33ckKy5L6ZfZcJ7+L7Xdc2s3vp8H7lggFsGTU=;
        b=o+uIkmQoiThZVTmuF8HcUxgj9mDM7QpCEh/MdRmCVdO4X5scdFQtDezy1Jtth1xSot
         cxqe1cdxUFXgFhEe/k8mYiaCYpqgxAwBBBky9tpf1Nq86AnJH530QGnpH/y5/8l8LlC6
         d/ouWHKLDNVvpvUMr/P9uzuN+VALsgM0wmP2frwX/1rs999XdtXhgU2ukixfXdHpGhHX
         HCwjeYrfIg2qrz6T1OEn6QUw7sTtdOSGD4F1jBmykaYgZ+WcQPhidtNQNYLnzKJz/HHi
         m6oL2ZNPFCl5WthLTYcFLdJ43mntvrvdmdFGoHfbw8jkuE0vx280FPqvFogVxyQQt/mg
         +7Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320WAaSvG9vC1I+nq/S4jah6NsYHsmKVpge/XF7JV134hZ6vUSB
	jdhTwEZQkyZG2TEZaoD1fvA=
X-Google-Smtp-Source: ABdhPJwITYZo5Sr08dCrBOACZoP70uSfJ+drtsr8m7NKclG1OJX9/hCPyZ6AmV7It7Pox/tJ7vYYug==
X-Received: by 2002:a7b:c922:: with SMTP id h2mr3124754wml.44.1614256942360;
        Thu, 25 Feb 2021 04:42:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c344:: with SMTP id l4ls1259192wmj.1.canary-gmail; Thu,
 25 Feb 2021 04:42:21 -0800 (PST)
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr3112217wmi.180.1614256941500;
        Thu, 25 Feb 2021 04:42:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614256941; cv=none;
        d=google.com; s=arc-20160816;
        b=CwhE34Q1dLQeiFUuEetfvuyFf5TbSrNry43cYwIIdfEeH+DucUbRjE9usnvPzNyNt6
         GyUO8qHf3ZzukEyqLBVk8tf9p68CIRsR/IGMQguWoijxGgTyZ05pJfcavDXGVwk+zjJR
         rIIxO4WtsvD+rfsV6qOES92k6vKg+x/4r+ju33dy7geSsN+rTGPD1mgXGmtv25/pqLcN
         J3VqpmdA1esodL8MOoa0eKHQFgW/NHd2/xzQtGW01eoFV4YodjAKJ4T6aTXbIq1LfcWp
         c+594/Lb703ymJHTq+Kyri1rfB8muCBrdzH5NJNlM9n+4S9UejRVPIedbS55KhYMrC3a
         dhsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uQk8xhtzVFS07eeQjgYRuM2udUqMvNN0jpzN2VvT1To=;
        b=fzcLGIDkyAuf1ZggEFNgW4whKjxBr8hde83be5lI5WxLp6OgLcsknD+qiYx/GsHzmF
         XWB/OoFRVxO8EBxRb+Yez6xqIxEwDdzxumSTQkvxOkDoFtvf7KIC6L9awgewltzyINwP
         9xk/t8i9V644bnrq/mKuK2wyu3sUq44iu5uTj4S1z81kC94kpP2gzaxJyNejgK52yGSj
         KxSPxYXdB6j6zMwpPXzvpIJb0DliitIPRrTU32+f73+/3Mhu+GOPNkCJng0y/Wl+PaqE
         KfK6HhbA121AKjNgYip5+FM0Bqsuhp91BvAUoRKIRGqb920YiqOhaoZGjLGb7qXJB05j
         rw5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=KtI5TcoO;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id m3si585445wme.0.2021.02.25.04.42.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 04:42:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f03dc0076eb88cbea77f6b1.dip0.t-ipconnect.de [IPv6:2003:ec:2f03:dc00:76eb:88cb:ea77:f6b1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id ECDBD1EC05A0;
	Thu, 25 Feb 2021 13:42:20 +0100 (CET)
Date: Thu, 25 Feb 2021 13:42:18 +0100
From: Borislav Petkov <bp@alien8.de>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
Message-ID: <20210225124218.GC380@zn.tnic>
References: <20210225112247.2240389-1-arnd@kernel.org>
 <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=KtI5TcoO;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Thu, Feb 25, 2021 at 01:18:21PM +0100, Arnd Bergmann wrote:
> Either way works correctly, I don't care much, but picked the __init
> annotation as it seemed more intuitive. If the compiler decides to
> make it out-of-line for whatever reason,

Well, frankly, I see no good reason for not inlining a function body
which is a single call. And gcc does it just fine. And previous clangs
did too, so why does clang-13 do it differently?

IOW, could it be that you're fixing something that ain't broke?

> I see no point in telling it otherwise, even though I agree it is a
> bit silly.
>
> Should I send the patch with __always_inline?

I guess.

Although from where I'm standing, it looks like clang-13 needs fixing.
But I surely don't know the whole story and "inline" is not forcing
the inlining so I guess a compiler is free to do what it wants here.
Apparently.

And I guess telling it that those should be always inlined makes it
perfectly clear then.

But WTH do I know...

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225124218.GC380%40zn.tnic.
