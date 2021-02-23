Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBTVG2OAQMGQEUYSM6UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 55497322886
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 11:05:04 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id f7sf9574111pgp.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 02:05:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614074703; cv=pass;
        d=google.com; s=arc-20160816;
        b=OlzHZkvACEE6fV+7J4x1uEyPKma1n4DywqDZX5REYmJEMhh+rWTJSeZoPWhmIPCfX2
         pFHfjzrwN+YuPWebQSYs+BLV4DfM2bKtwZX6dMcPkgW9WQvKz5z8kd9bIflohn3DPfwu
         If1LNwOYFlVzEjHvB0N1CldntOHkayF8J4bYQHE9XYkyVVRZQO1vykDvUMt0xNCUi+Db
         PUiiCfvIgw6UltKAFLOf//gRJRcdpb4vDAkBX2W33FpZEDFmGGqaQDXXIyytbvwJW0z+
         siwLeMrPNSJPlHsxDFdm5nQD/gHNHMSGo7E5gTMPhFvpgjwe1uLVYgjfu2GrrEdgLtK9
         JLzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cfq8v1dUg2tiXLfIyr7PLgJPhRsz1vOUwYF1D+gUzps=;
        b=VFKdJRivWIx720Q/THzMOaCHTpHztCuU1UpUoBQ4ZC7aUFyobj32BwL1YECcsM9yRB
         WUVtMj16TpYGpvnOiIcAT6hMep442/yiHF1rJFkNnonElb1Pm51i2An53HeeEOKa2BWO
         7abDuGAIK0BQycUcInTnOWIGwptdAcY2x5/q7nBx6TAzdgdmEgaguEzv2vDlLZs09GdJ
         a1n4Jl2wCyuHdiWU092ngz+uzRsWCtvxLfa9WRMf5qHzg/ZM6bk2uVFImPHD5ARru6lr
         FnY7udxDm8Q0lmylL0fIiwV/qlh261NzM9Nc9wy1zk3o3Ov1kinlhNcctN/I2yrocImB
         bvyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WZOqzYAf;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cfq8v1dUg2tiXLfIyr7PLgJPhRsz1vOUwYF1D+gUzps=;
        b=hJOWKLQ2zglhJ79b/B3TKCWUrtL0d/akX0pdpqmBzgLQQW7BIxoBgBdEzvnFGZ2iZv
         /iFwob22H4JoEuKW3hZQg91WdDJjuSWT5tLnWcVoVxsOgWjzH/AnpIvL3dZudARdCAQq
         zEhNQo9rTjquWU1A/j+fXrNgcMDRGZIxshICy2e26m+pMWlJ7LCnnv62ZkRXRNJFKeLV
         H+Z9tbAZJyKVQXHCkGfjP44MdG/WzcM/vuJX48YcAPyAmwsxwofBeVv6ghAu8qMLSSky
         fIMu58aoHKEA3T7aDsLuIrf0cHQCqT3R2HJxyRobGgJe/EnzDl2XwSinorNVNTAmW6mx
         +EJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cfq8v1dUg2tiXLfIyr7PLgJPhRsz1vOUwYF1D+gUzps=;
        b=i3STwgTZ34i0lf+IuTvvOl0p3WMNBXR+SbC0elY39LwtAM3UFq72GSrY4b9nQl4bEV
         DQbvgMUeWjcXG5r9U+n06tlI/KhUxAONBym207ZEAI/FBEiVTyULV9g/QZrUNxgnZ4Ts
         szSzrzYvWh8Zi7+QNSRSdHVkoEa7PMNzDIyE3ZXorXhQt3NA3pUwR1V1+vnv7GeT6nSk
         NfmoLIHYiK0ojIB+LDxG9rgcq64bZb51/iMt710Xbzek2ShZ3BJ+5iJ0cHp7AR3UQLtr
         qW92bVj5iWqt415OtvnXJqNdEdQL2JngATm9CxRtEuO8UfyxAmLaoGJhoX/ZxeOacIHs
         o2wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53185ywrYwqsNs/+Y4qxQcGG8RGewxBhiFUNmekj53R9LeUhy3sA
	/0HyBJf/Hd74E17SCsMueYs=
X-Google-Smtp-Source: ABdhPJzlyvpuuNwpmdmzlrE4zIi5veWSLEdTvwfkDPb35FRhcuuFuMWXV9JwFWBfSf8BkrTrABfE3Q==
X-Received: by 2002:a63:3686:: with SMTP id d128mr23107766pga.240.1614074702839;
        Tue, 23 Feb 2021 02:05:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4c89:: with SMTP id m9ls7240010pgt.8.gmail; Tue, 23 Feb
 2021 02:05:02 -0800 (PST)
X-Received: by 2002:a62:824d:0:b029:1ed:55f5:f8c0 with SMTP id w74-20020a62824d0000b02901ed55f5f8c0mr17729250pfd.60.1614074702166;
        Tue, 23 Feb 2021 02:05:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614074702; cv=none;
        d=google.com; s=arc-20160816;
        b=T5TmwSBWpKuNWbWId90T+UimMfK4wrNaskHI6eixwmGidYn3ZRbZW2gDNCVPca+uHs
         CnaPCw1iCDqGx9mSYFO4uqEF9fwW0vfgMdQj5z1WLE9soPrZb22B+lB08vfDp3lB+ogz
         XoEX4WIxvgrTQT+4aIG1YysePt0fvKyoeJQt/SEEcNo0WljM9Ee1RQGKIo0j2gPP9wu+
         Rs6s8LbmpAdE1fsBHbtb71cGL0iHWHAL1+FOVamUdEcRIbuwWrtN4Fr0Q3zfPEug3AOE
         26sRwsMBDmEJoiiz9C6fLXibZBz0TATvbHhGBEjvTQ0+XuiEhkeyRDAFZtH786gETWkD
         WcYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qr6o6Z5KLfhizu24Qfypw30nnVJ4ZifmaNZTTCLc/uQ=;
        b=ztS+4wYIB7iF0ODceGCPF1HCf5ZWQ14l7noFOcz8OIm7EEJwNeilY/JhW5wj9pJ63z
         cDctkMQ5jp1ZHMDvA8Miqz+rWpyUPLdvoDo+vJZnbbqapev5HdF0LfkB+uEhdYKG6GDT
         UywKW2zluFFj8QNmcF7Ce/LKyC0acjVXGDeVqv0vkpwoJtxfYw7EwUVAm3JQQJa2Brxg
         KapgrK6igR5KXGnePzLlh233ZBu7sS4r5NQofwkqWuAxfdxr06GGCzYbOXvuvRk4rdX7
         DJrkpya4XUARQMOCrsZOqxMwRV3GAxObVYMtGJhatAM9L/T9z4ryAH4an2lu732agV7+
         Nyhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WZOqzYAf;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w22si102261pjq.0.2021.02.23.02.05.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 02:05:02 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 389EE64E22;
	Tue, 23 Feb 2021 10:04:57 +0000 (UTC)
Date: Tue, 23 Feb 2021 10:04:53 +0000
From: Will Deacon <will@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	David Laight <David.Laight@aculab.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Ingo Molnar <mingo@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mike Rapoport <rppt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	David Brazdil <dbrazdil@google.com>,
	James Morse <james.morse@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH v4] ARM: Implement SLS mitigation
Message-ID: <20210223100453.GB10254@willie-the-truck>
References: <20210219201852.3213914-1-jiancai@google.com>
 <20210219230841.875875-1-jiancai@google.com>
 <20210222115816.GA8605@willie-the-truck>
 <CA+SOCLJVGJSn67VU24wPDdsOVeHhGe+KO5ekOCusano=bhn1Mg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCLJVGJSn67VU24wPDdsOVeHhGe+KO5ekOCusano=bhn1Mg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WZOqzYAf;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Feb 22, 2021 at 01:50:06PM -0800, Jian Cai wrote:
> Please see my comments inlined below.
> 
> Thanks,
> Jian
> 
> On Mon, Feb 22, 2021 at 3:58 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Fri, Feb 19, 2021 at 03:08:13PM -0800, Jian Cai wrote:
> > > This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> > > -mharden-sls=all, which mitigates the straight-line speculation
> > > vulnerability, speculative execution of the instruction following some
> > > unconditional jumps. Notice -mharden-sls= has other options as below,
> > > and this config turns on the strongest option.
> > >
> > > all: enable all mitigations against Straight Line Speculation that are implemented.
> > > none: disable all mitigations against Straight Line Speculation.
> > > retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> > > blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> > >
> > > Links:
> > > https://reviews.llvm.org/D93221
> > > https://reviews.llvm.org/D81404
> > > https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> > > https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> > >
> > > Suggested-by: Manoj Gupta <manojgupta@google.com>
> > > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> > > Suggested-by: David Laight <David.Laight@aculab.com>
> > > Suggested-by: Will Deacon <will@kernel.org>
> > > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > > Signed-off-by: Jian Cai <jiancai@google.com>
> > > ---
> >
> > Please can you reply to my previous questions?
> >
> > https://lore.kernel.org/linux-arm-kernel/20210217094859.GA3706@willie-the-truck/
> >
> > (apologies if you did, but I don't see them in the archive or my inbox)
> 
> I should have clarified the suggested-by tag was in regard to the
> Kconfig text change. Regarding your earlier questions, please see my
> comments below.
> 
> > So I think that either we enable this unconditionally, or we don't enable it
> > at all (and people can hack their CFLAGS themselves if they want to).
> 
> Not sure if this answers your question but this config should provide
> a way for people to turn on the mitigation at their own risk.

I'm not sure I see the point; either it's needed or its not. I wonder if
there's a plan to fix this in future CPUs (another question for the Arm
folks).

> > It would be helpful for one of the Arm folks to chime in, as I'm yet to see any
> > evidence that this is actually exploitable. Is it any worse that Spectre-v1,
> > where we _don't_ have a compiler mitigation?
> 
> > Finally, do we have to worry about our assembly code?
> 
> I am not sure if there are any plans to protect assembly code and I
> will leave it to the Arm folks since they know a whole lot better. But
> even without that part, we should still have better protection,
> especially when overhead does not look too bad: I did some preliminary
> experiments on ChromeOS, code size of vmlinux increased 3%, and there
> were no noticeable changes to run-time performance of the benchmarks I
> used.

If the mitigation is required, I'm not sure I see a lot of point in only
doing a half-baked job of it. It feels a bit like a box-ticking exercise,
in which case any overhead is too much.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210223100453.GB10254%40willie-the-truck.
