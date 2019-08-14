Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU4I2HVAKGQEW6IVTZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DC08DB9A
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 19:26:43 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id a5sf68786387edx.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 10:26:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565803603; cv=pass;
        d=google.com; s=arc-20160816;
        b=FAu8TS//dKdZoeJvHBsfWvJ+G8JiWlp0tRkjdEeCuTgu1ise674coy/4nXFBhpuwM6
         vu8M3r+Ba/9MbCcQw1kRHdHXRXnjR6v1Q00J3aZ+majPhsnycx/PfSILpF7yviKusUKs
         dNyxFgFzvKIF+J15zdLXLtw0eqvLVR7N2DrPUos/5It6uWOIktTjAZC2N/gADGonn3iF
         ymd3Y8xPTdA+dsgOJarpkiWViELAKFBijHRmtllvqIN6hENArEC3LvXJD8+YFKJHMSI+
         P+5HS+9AMPhogXee6KVT4g5Cpj2BCfry1WKOguZOA69iWD0kOltgFxrQF3NVbl3ItyvM
         uxcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=YqHeZNXuE0IttBl1qSJO2BEQr0id5IaF8EgNcNYr9Oc=;
        b=mBRgDSAYNXouu0Vzy+UJ4eRAvhpnf8OZAa80L/+3uiGhE7UqYCayH38XamJrSmDDa8
         IIAQMdI7gPpAtQ8vqUGD6wCbtmcvWd6pz1ig549K9Uu8mv8D7gEAhrnp2J8fB6xCpnJP
         DXteMNH9EOsCw59x9+emy0cq3iJggjD3HJeD3fYjnmOYnje3ILBQrW6AMqlC3gV5pT1p
         SrOSKXSWX6d1g+OMqTgActNf6aGMsL2efVc4PZwbWfjMGNxOcowVmhaLxsPENbE644yO
         BGTWUtVS4mFxC4RFtag09nVYMXZd50ur9mwIyaWwSnRD8flyKFUEHe9cPFlMqsLE10Av
         7LRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T9pRcmqG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YqHeZNXuE0IttBl1qSJO2BEQr0id5IaF8EgNcNYr9Oc=;
        b=QuF/ta+t3rLKVwaD6syFB8qWvvyhRTfm6lkAcP6NtHZ/1QlCXy1XHc+/LfhTE3DOul
         1Ba+o0e4SjPYKVF9sPseu/l8BzDOLGlZextpE+L0ghrA70uEN1FJx8/0y+is1RGFPt+g
         L0spt2wh9XeTMvNbITsk3tMuWZdHOxaLlBXV/sB5ScWE9lwooL8jBWDuOXmBmM+8XaZk
         Mo9G2tFD9BFmjbmWnHpdQpCRUmO6dnhUQzH8BsNURpThSN9vXmD+8GyyfUig8E3exWgY
         YSmM+ZxzoGS0sxpb6L2RBMwKtsnvllA0hs3FySNswEX6yCq4b1WnFPVWS2N85oY2ONUQ
         T+qg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YqHeZNXuE0IttBl1qSJO2BEQr0id5IaF8EgNcNYr9Oc=;
        b=Ww7i8ZoTJ6K1lcBpdI8XdGzB+AVtuDjdGn2lqKjb/s2gFvzXR8254B8uJrVkqbQzeQ
         E+WXQqDRs9z6ugRYZXl7a4M72Uh4SAVwCtxkVUf8NFlGWzQct3FrfVDUItcVuKDwEMq6
         6xKXanYOYWGMLFkQKHJfOsQw+C+0MWbUv+c4pNYFVI3Yb3FTj+c5cy4ozY2/lfxsETbL
         1z0oVZ6ET3uUyyYDdjgrQZlbFCnFN4uoiIZHvu7pX745lYbI4WhuaVt/GpmI/5TvfDaZ
         JWmFm6xB3kNgzv9ohykobNQGBemgUhdMC+q14mFuQJH9ukI/DGsP64Q7br1Ie/0m4Fv0
         ma1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YqHeZNXuE0IttBl1qSJO2BEQr0id5IaF8EgNcNYr9Oc=;
        b=hlo134QROkL+EcVDmDPPKYjs4hdikBXwFK6JZg8JGTfabg1HaJA9ax7AicRX7Io+aP
         cEXi/Pxw9bVvd5HNwAbQY/64W3FRhNgl5BCBpTpXOdWaW5iwaB4oHLJWtg5YQ22IBQ9+
         oM1R365YnumrLA/zgD++JthS1elQ1FHHNlrszH174+wRZf9SSTL8QTqztuJ9VmGAh/3e
         eu4RcJ6bvax+zaPC2wMADLwSh5uVZ7xn7aFjN663b3KFsTooiUtRqOMy9g0YHAKJjv2j
         v0l/f4kFl52nnqC9HnWbGK1BeEeS3/J4IYTX8d7/NttNOhidje8TwRZR8CnE7tL0EjqS
         5VBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgtKhACPRFMexI3HcZGleapEMA0molTUFRWA4nV2PLt/cvMCdU
	DBANMmWewNXsOtZo/gWQ07k=
X-Google-Smtp-Source: APXvYqy4CWuSBag9nAcnU/ziPD/y29mJ8PNowM1iL6AaaA62BTpdUIfAtXESY24Zq712jYTKZsI8jg==
X-Received: by 2002:a50:90c4:: with SMTP id d4mr807569eda.107.1565803603690;
        Wed, 14 Aug 2019 10:26:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7a05:: with SMTP id d5ls652565ejo.13.gmail; Wed, 14
 Aug 2019 10:26:43 -0700 (PDT)
X-Received: by 2002:a17:906:8313:: with SMTP id j19mr667852ejx.276.1565803603136;
        Wed, 14 Aug 2019 10:26:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565803603; cv=none;
        d=google.com; s=arc-20160816;
        b=pggyU0wYtBDF6GNAH2hRQodwMDWorQV3EMgtSFVSiHuSQfc5/2GdxI60O0OEfMQFBp
         zln4IY2150GOtBT3RhpolBsOqWwH1MvrLB+bkhKq/dnmh4yskn/ieTc6cIkSDJpi8Ihv
         b04FYsvH9WE8K57q8emrvOX6OJWEZfJLTSZbFhmu8EMXL8BLp0DJWIkzjFNp7/NYGd5q
         ZYC5tlGXHFl5zlLZkcPjCfYnLmRZHAhM3diS3aZB93ZQJwUssahiFTaYaKTyDlIPRb3q
         7UtF+MNsbOqGHH7lurCCsq4VZENCDLTeMlrnfetzjyLIolxRbXDvagRSE7p8snRtqBw8
         95zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xNjTRM/T7OXW0nZJunZsUPEa7EgL/wJtZiGTQlV3OHQ=;
        b=e0ffL1bCnMBUseh0JtYNpdynacGO9JBFP0Dko67I3olLmwNPykQ9Z36qKnLuwB6wAe
         KHmA6AHfqydkiIjRRaktKHYw8YWOkMih8Nac2dwlhm8V77+LYJpOnDO4liEa7urqKUrV
         aiuIs39kMX6Cxqeed4RLhnG6el2YTAnGj1duvzs+5YvVrOGu9TNK3kbCHERVK5IJuxnt
         ualboNCB7LQvjQiFhrzmKCcR6SYv9/Ty8g6A2j9nyJhM3FGW5lSqRQyeWn2h7bcrCWsN
         9FSTFOxBxmawD/ehu+gyPxww7zZJI4EgOKZWAX3R5nfvFehRfJIaDCuC0sn62Lzlbuln
         N1Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T9pRcmqG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m16si22322edv.2.2019.08.14.10.26.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 10:26:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id l2so5139383wmg.0
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 10:26:43 -0700 (PDT)
X-Received: by 2002:a7b:c155:: with SMTP id z21mr202651wmi.137.1565803602609;
        Wed, 14 Aug 2019 10:26:42 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id p4sm373092wrs.6.2019.08.14.10.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 10:26:42 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:26:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Qian Cai <cai@lca.pw>, will@kernel.org, catalin.marinas@arm.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: Explicitly marking initializer overrides (was "Re: [PATCH]
 arm64/cache: silence -Woverride-init warnings")
Message-ID: <20190814172640.GA116758@archlinux-threadripper>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <20190808170916.GA32668@archlinux-threadripper>
 <20190809083251.GA48423@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190809083251.GA48423@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T9pRcmqG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Aug 09, 2019 at 09:32:51AM +0100, Mark Rutland wrote:
> On Thu, Aug 08, 2019 at 10:09:16AM -0700, Nathan Chancellor wrote:
> > On Thu, Aug 08, 2019 at 11:38:08AM +0100, Mark Rutland wrote:
> > > On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> > > > The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> > > > VIVT I-caches") introduced some compiation warnings from GCC (and
> > > > Clang) with -Winitializer-overrides),
> > > > 
> > > > arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> > > > overwritten [-Woverride-init]
> > > > [ICACHE_POLICY_VIPT]  = "VIPT",
> > > >                         ^~~~~~
> > > > arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> > > > 'icache_policy_str[2]')
> > > > arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> > > > overwritten [-Woverride-init]
> > > > [ICACHE_POLICY_PIPT]  = "PIPT",
> > > >                         ^~~~~~
> > > > arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> > > > 'icache_policy_str[3]')
> > > > arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> > > > overwritten [-Woverride-init]
> > > > [ICACHE_POLICY_VPIPT]  = "VPIPT",
> > > >                          ^~~~~~~
> > > > arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> > > > 'icache_policy_str[0]')
> > > > 
> > > > because it initializes icache_policy_str[0 ... 3] twice. Since
> > > > arm64 developers are keen to keep the style of initializing a static
> > > > array with a non-zero pattern first, just disable those warnings for
> > > > both GCC and Clang of this file.
> > > > 
> > > > Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> > > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > 
> > > This is _not_ a fix, and should not require backporting to stable trees.
> > > 
> > > What about all the other instances that we have in mainline?
> > > 
> > > I really don't think that we need to go down this road; we're just going
> > > to end up adding this to every file that happens to include a header
> > > using this scheme...
> > > 
> > > Please just turn this off by default for clang.
> > > 
> > > If we want to enable this, we need a mechanism to permit overridable
> > > assignments as we use range initializers for.
> > > 
> > > Thanks,
> > > Mark.
> > > 
> > 
> > For what it's worth, this is disabled by default for clang in the
> > kernel:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/Makefile.extrawarn?h=v5.3-rc3#n69
> > 
> > It only becomes visible with clang at W=1 because that section doesn't
> > get applied. It becomes visible with GCC at W=1 because of -Wextra.
> 
> Thanks for clarifying that!
> 
> Do you know if there's any existing mechanism that we can use to silence
> the warning on a per-assignment basis? Either to say that an assignment
> can be overridden, or that the assignment is expected to override an
> existing assignment?
> 

I don't think there is, from the brief amount of research I did.

> If not, who would be able to look at adding a mechanism to clang for
> this?
> 

I've filed https://github.com/ClangBuiltLinux/linux/issues/639 on our
issue tracker so that I can try to remember to distill all of this
down and file an LLVM bug.

> If we could have some attribute or intrinsic that we could wrap like:
> 
> struct foo f = {
> 	.bar __defaultval = <default>,
> 	.bar = <newval>,		// no warning
> 	.bar = <anotherval>,		// warning
> };
> 
> ... or:
> 
> struct foo f = {
> 	.bar = <default>,
> 	.bar __override = <newval>,	// no warning
> 	.bar = <anotherval>,		// warning
> };
> 
> ... or:
> 	
> 	.bar = OVERRIDE(<newval>),	// no warning
> 
> ... or:
> 	OVERRIDE(.bar) = <newval>,	// no warning
> 
> ... then I think it would be possible to make use of the warning
> effectively, as we could distinguish intentional overrides from
> unintentional ones, and annotating assignments in this way doesn't seem
> onerous to me.
> 
> Thanks,
> Mark.

I definitely think it is an interesting idea, hopefully some of our
resident clang experts can weigh in and see how feasible it would be to
implement.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190814172640.GA116758%40archlinux-threadripper.
