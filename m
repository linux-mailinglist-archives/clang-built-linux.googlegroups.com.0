Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBL73TTYQKGQE5DDNOUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8D5144403
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 19:06:41 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 6sf2157122pfv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 10:06:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579630000; cv=pass;
        d=google.com; s=arc-20160816;
        b=sltYEVVpZeYDjyaPN7vZr1ceTrJm/L06kZxr3XyMGZ1lYh0uRP8g/7YD4O9LUiWKsh
         XBenZMk68109iOxDSfQJwQHuvlih7sQ3jeUCInc8+DRgj9BCj+XZWyIfipMt7WjuMKyc
         4AGCwksyvhwNhK+vaN3mM0wkSvYDZdH3mOwCygtfUuZQNnEzeYMQmUqjwSfJivDefid9
         aHlx81avVfqw3BmaEzn0M1EolAE87DpZX87f4ub7TT+lSeMZBhbVpwNp3NasuYFAu0xV
         NzLbt+jg3nrP9CRW/sAW45IM9wWj1+QCQjDc/PB7hLsdvHkNaucBUQYIVwjSM7pE56QC
         eabg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YQ3Imjz+yKBwN9PqwSI1NiLE32I9rSkCnG1mhUuQYGY=;
        b=Nsw8KG37IdvWQDbbqCKgKqo2qM5NoGVHfUF8ec9hL39OghowQDLAPn/LxR7QOC9Hoq
         jxeuBG9S0cNg595ZVQF4fusmEFrw9zR84Px11TGVFtOIXn7ILcBZ8eA3XDKADnrYzd4P
         3xQxbNQ583KJkEL5KeDNmGSxLzdh3mJJyHyMeBtt8/LEOWIJO2BZWgxIm1gty8qRRlff
         M2VOBn9H/J5aIX+bcu4a+lYkAb4WrtwhlBpOwGhdhbRW/kfy/XYMEhqxQeByJo/zfsse
         2FsecW2uaf6LagORV38ZVsWkJOjXKFcbbmhcWAYEzi97MGqdGg9MwZoi55Z5m2Z4+Cmf
         rBWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PM5WHoDB;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YQ3Imjz+yKBwN9PqwSI1NiLE32I9rSkCnG1mhUuQYGY=;
        b=rN9wvofz1RYgHdJxmu+wD7TMgIPHK4wnNaFAQUGy6IPAPA0Jr0g42wGjeNtleMY52O
         fTeZ01SBDyB/ITQC6JP7XeJKh2lH+c6xHLv0Cnluq5LSSJEuZcMfaJ4MW/zE7hBNx71k
         Y4uu8p8o8OK3DjZ6fV5vpOfUnYygJeVoNx6Xc5sK5CziWqR9qmtWq0DEIFsjuGhL8GUV
         ssvr29rUvMUzGVIe3pRfIxVjROnm9da8qJCRJiSzZ0z7FxUMHv60uhZLHG2pV9FaBl26
         U8egwyAjfVXzWHRz4Yjv657oGV8hf+z4EjcgoJ8Bf5i52jF49XwvlY6+2CDzeWIyOJxT
         aRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YQ3Imjz+yKBwN9PqwSI1NiLE32I9rSkCnG1mhUuQYGY=;
        b=olwAQUDkGCOBSOV+2sgLGMQrx6v24zgJ2lzoQPSHOVngpUJt1seIj/La2DDDHOV0MX
         jObUlXRfvP/U/5vNGeEndna9gcHMYyffQbBfXZe5A/IdUAO94Vvs4i7MS+4le5o5efZY
         i9Bzgfk+JSsU7uhVQDSlu1Lu055A1WYzcC26Hs0SloVzGkOMmEq2G485BSK1TKODkpor
         CmaCV9b4QFyUuuHh5l/6TkvMRWbHqGGXfddDp0RmNA+D/BmJffqdfjjy7p4mZ81Q8puJ
         oKQny5iqTXpRbETBINrKbMQha8/ELQ4S7YSUSqdUlGNmnvvLDGttoJsnEVo/RkJlU5aL
         NtWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXb6QHavNVVqI8vNJv+hqE8F8tARwgISs3ajhWFGMwKoAEyljm2
	6H0Qe2mKmzAg/vjHLKszXRM=
X-Google-Smtp-Source: APXvYqwmoJ8W/RUBFpr/3iRzgvMcnUCKFd1u0hX1yxRVBJJPmFj9MncDzaPVx4gEsllrzqYnv2SfBA==
X-Received: by 2002:a63:fc01:: with SMTP id j1mr7107739pgi.220.1579630000042;
        Tue, 21 Jan 2020 10:06:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls11832967pff.0.gmail; Tue, 21
 Jan 2020 10:06:39 -0800 (PST)
X-Received: by 2002:a63:3cb:: with SMTP id 194mr6922919pgd.123.1579629999533;
        Tue, 21 Jan 2020 10:06:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579629999; cv=none;
        d=google.com; s=arc-20160816;
        b=Fs2dxogXvPNBNDNmVtdPAt5QMHD7lJ36v5zkQdSfa9mx5E3qPSg1us/IoKvPmOfODB
         wGCwvB0OUmHFzNlYGGohytK0aKnrTBn5Fjx9T0F0BYecIw7sCGcw8eI6KbqboER36wMP
         VmhXbtm4Kdl8+bJO6LSV1Z9o6KGT3/xInMQ/rSzwh2iBCqB2H1lE73rTghidtqMpoBSs
         aJSa2JUm4BJY/81X4N0Iz0NlXrpNSEPAkDbEiBJ2T/mxb0qWoV2n5SMo2R/JcaFHJ5Ac
         lDQEJrwiPxdEghblWnGmolC5mhvN5AzWXZOqqT79PXMauALtjqUK51IFteI7JlIUGMRt
         HsWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=M9hwnZm7dQrAc3CivptSrGf1VtDLFF/aH5RVY/WDp2Y=;
        b=h1qIJFLxYMlV6ujj3EYD8lcDj0RxlT8YAs8/Lfzcc+OhvFGVnwxMwsfD9oduOy0a2f
         x7547P92RkgaJ7C8q4gw7GQ6VyX9GK3BUUxz2sRR5o6u0pLL8WVuLH3vHl4Ytceaktrd
         e9fclydypua/CKWz8Qy1yQQ2q7vpQCAnbnNtqb8UeqK9Hl4HjY4w67aVLgfY9UKqiUjR
         aa5EmIMaXAP7iKc3sTrX4wwKrHW2szaW1aOJfYJU6NMfpKIzeY/lggCIg6LZ7cZQq+du
         IkBrGsuriafzyxsxjUy3Asi+N9TiPMvwLSVqVYofrLbEOmGAh8igXYriQaWAZCwBThdV
         j3Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PM5WHoDB;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 186si392646pgd.5.2020.01.21.10.06.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jan 2020 10:06:39 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E08622522;
	Tue, 21 Jan 2020 18:06:37 +0000 (UTC)
Date: Tue, 21 Jan 2020 18:06:34 +0000
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Julien Thierry <jthierry@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200121180632.GA13592@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
 <20200121103101.GE11154@willie-the-truck>
 <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=_PqQWUvd_WZRpEr+T==3w6LpsHKBz3E9ybaQ0javVkw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PM5WHoDB;       spf=pass
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

On Tue, Jan 21, 2020 at 09:08:29AM -0800, Nick Desaulniers wrote:
> On Tue, Jan 21, 2020 at 2:31 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> > > On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > > > The 0day bot reported a couple of issues with clang with this series;
> > > > the full report is available here (clang reports are only sent to our
> > > > mailing lists for manual triage for the time being):
> > > >
> > > > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > > >
> > >
> > > Thanks, I'll have a look at those.
> > >
> > > > The first obvious issue is that this series appears to depend on a GCC
> > > > plugin? I'll be quite honest, objtool and everything it does is rather
> > > > over my head but I see this warning during configuration (allyesconfig):
> > > >
> > > > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> > > >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> > > >      Selected by [y]:
> > > >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > > >
> > > > Followed by the actual error:
> > > >
> > > > error: unable to load plugin
> > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > > > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > > > open shared object file: No such file or directory'
> > > >
> > > > If this plugin is absolutely necessary and can't be implemented in
> > > > another way so that clang can be used, seems like STACK_VALIDATION
> > > > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > > >
> > >
> > > So currently the plugin is necessary for proper validation. One option can
> > > be to just let objtool output false positives on files containing jump
> > > tables when the plugin cannot be used. But overall I guess it makes more
> > > sense to disable stack validation for non-gcc builds, for now.
> >
> > Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
> > STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
> > to prevent generation of these things?
> 
> Surely we wouldn't want to replace jump tables with long chains of
> comparisons just because objtool couldn't validate jump tables without
> a GCC plugin for aarch64 for some reason, right?  objtool validation
> is valuable, but tying runtime performance to a GCC plugin used for
> validation seems bad.

I'm only suggesting it if STACK_VALIDATION is selected. It's off by default,
and lives in Kconfig.debug. I'd prefer that to "cross your fingers are do
nothing differently", which is what the other option seems to be.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200121180632.GA13592%40willie-the-truck.
