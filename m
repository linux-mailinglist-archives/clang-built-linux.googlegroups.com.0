Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB25FTPYQKGQEVTH6MRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id EA98E143B08
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 11:31:08 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id p6sf1403480pls.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 02:31:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579602667; cv=pass;
        d=google.com; s=arc-20160816;
        b=gazCVMQkd1U1C+HC9Tp62/7zI0LJi5jy3VE0cXyNv/NfH/ZIh/FSpe8QGCDOjvXUPf
         bnj8wOiyOybqDX9w9D0zU6/D/Q3yKCRdD/vKxu9BuIXu0oeAktQle+zPVPAODllWY73o
         qSszsVi7qhGEtNjRles3VYywsxp8Q226dApislHVDeHPtP8fV4IEVxgCOtUaV+zb+QY1
         tvAZktKkoIVjHruIBALdUIOnDK94yGH72zlDz5LLW9zQaLIfzbMPjJGJ5mHiwGXaezLZ
         GC/QANLL4l2xyi9O68bdCFxrSUM8+ZxKJNPflbu5EMbxjSclkfYEQlA4hbfWkS98Gq13
         7ywg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Xu0th8qWm2oaMLqIls2tguQev2mKvZkTkIQONc++XtE=;
        b=rtFIu575ymcMQfY9Jv8IIcMZ4n50aR+2R+Rcqb70KfxG+x1ZhNoy3cGq96gPgiv0ab
         XjyOVpM3dXnGXzyI5f6z9wTGvD9tXinvMpQX8W5t7GNQrrfgnToTUrCCwCiflf5PDxnm
         DK33xUEdOTurx1pXcGhvo7Yf3NzAVzv+Iix3DxAdUkq8LNcXo8OiNL5QO3yJFFlkPF4b
         csuSipFEgiNqETTROlbq9znP2cZFG85kP8H0ayTY3AXyD7EQb3M1/q8KYhjXZIMcpkD1
         a5+AW8ASNAvffpFRuP/oQQf8Rz8o8DnSzkXJXlKYP5mC6uVNUaBQzC+dhpCH8vxHoBFj
         34Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IDgmkdso;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xu0th8qWm2oaMLqIls2tguQev2mKvZkTkIQONc++XtE=;
        b=NqJS0FaacOwj9ZH5EDjVhxpJBTYtydX7fa4UVewUajTeWCr1JiOHBfEYiaY84HgPoa
         QUfFCVjaG4kPYU3q/73/3nhqyTmQRjVVDVEyzMG1uTFgYCzimRnXyhZ6kd+T19owLWz+
         QvVb0VmSPuegClYU93KZB4tuGEg6EQmSsLvhpeXFxRvV2rvEotRHlMAiliDPz0JNMqAf
         9Ryv78/mj+1ku8X11T0N5n5KEqT5RfZS+ef3OVXGhAn+4IzOst4pPnariLuT0CYBlSnz
         uHw6GrJ5w7PLLL9XY6x62JNJjn4y506F8dp0jMZyOSR87wjK4CIgCbHZEZSgmDjD3lK3
         5p6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xu0th8qWm2oaMLqIls2tguQev2mKvZkTkIQONc++XtE=;
        b=YWBxdNQyDXp0cesESPE4OI7N9lcDU/+qU9g9YbGDpTnWa8XKoGnfhkD632rsbEkVYq
         Xzo05qjKDdDNIt2PVHuFT/LFuZ3/Vi8WwhrSL8uKf8pDOaX8j2Z2eSjWfIuA2IyhIa7t
         +VTFVykLyswXkKHYllvZHUfir6jEywYueqXxOGTn7I9A4+adiqz32I/QhSNE5w4PIq7Z
         7h1mQzKqR2nRpEfrCu4iUBoIsicnysifRHThxK/5ZM12SZBpIOzRC5sMSFpeUVovWK0L
         ek9lZE5SR/kK/jApFXWm48A4qK0zyGyw2I04uR0lFUfWXe8e48ejdTq9ojexeJD+aOE4
         D7cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpJob6dAylSfITIoKQNAJ7LfrbMOJaD9yDh0iUVT3NZapUAqOI
	HOszlQQTT5l8Mbae9UCRbEs=
X-Google-Smtp-Source: APXvYqwO92o65E0IAReo7YMPnmf/cc/EPwDW5ZAjmmM0FCq5a36HMgNqoboSXLZwkhxyjkoOwU5a+A==
X-Received: by 2002:a17:90a:8a08:: with SMTP id w8mr4537348pjn.125.1579602667176;
        Tue, 21 Jan 2020 02:31:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8c94:: with SMTP id b20ls1088814pjo.0.gmail; Tue, 21
 Jan 2020 02:31:06 -0800 (PST)
X-Received: by 2002:a17:90a:bc41:: with SMTP id t1mr4521851pjv.137.1579602666821;
        Tue, 21 Jan 2020 02:31:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579602666; cv=none;
        d=google.com; s=arc-20160816;
        b=DJnb+caP0smJEcE/G81NdAg2kc1RS9ySxFRaI4/6zUt97S4EmGWcGOFI3aSscxTi9Q
         GzgZ31sYoooP0MyIObkG5r1D5Tz1GzSgjvK7XFxurhZ2B4mEmZL/x7GpcsHcq3tGcYtv
         Xk87d3dKQBaOxFAt0af2C4eH8NghGQrdbokD5uSZHI914tswvwjaig/kRqSVN+0cZOTW
         TzNkVNHLRQVBDhjK9C+0gCzEsnjNK0quqLusVMe5Icws65eAqSbzmBhhb74cuVgE+C2X
         DWpQljk1bN1fDkRresdsJMqnsBM6U6ejq1KWzYE3116CQlOEUNI9IF3zEWDJmHLBfs8J
         yS7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Q9CIU/E+2qwMpRlXO8aXE03qNbpFK6tXruvXtBYk8Fg=;
        b=Q61K7r8I0vXBoAhfzMffYS/rftsKSfvehSdYc38phQp96mBzokFN3zbjyLurl59oMk
         owFN3Eaqzq8gaFICgXKDqs7AE2FwRG4BSyRi97LNCY5oB4xpXEO7w6D5VgjIj1hm+Dij
         ad66T2aJvIVNZ5asyQixgML6WaXXJhwSasGyYZwlL69JYvCTnpxH8NxU92llrNPWzWm3
         mbjA+4KIoVEX+LZ4Mu5xMy+0Tggt5JFE6JXpKxLLdydJnlMzVEavU6oVm9b0IjBOFIAw
         OQNWe/zogPpKf5i+HQeELY4s3lhn8lt4DNh1eVMNE297VRTYnG8Ti3LujQFe5J3AAq39
         yNOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IDgmkdso;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f31si37962pje.2.2020.01.21.02.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jan 2020 02:31:06 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DF3F820700;
	Tue, 21 Jan 2020 10:31:04 +0000 (UTC)
Date: Tue, 21 Jan 2020 10:31:01 +0000
From: Will Deacon <will@kernel.org>
To: Julien Thierry <jthierry@redhat.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	jpoimboe@redhat.com, peterz@infradead.org, raphael.gault@arm.com,
	catalin.marinas@arm.com, clang-built-linux@googlegroups.com
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200121103101.GE11154@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
 <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IDgmkdso;       spf=pass
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

On Mon, Jan 13, 2020 at 07:57:48AM +0000, Julien Thierry wrote:
> On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> > The 0day bot reported a couple of issues with clang with this series;
> > the full report is available here (clang reports are only sent to our
> > mailing lists for manual triage for the time being):
> > 
> > https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> > 
> 
> Thanks, I'll have a look at those.
> 
> > The first obvious issue is that this series appears to depend on a GCC
> > plugin? I'll be quite honest, objtool and everything it does is rather
> > over my head but I see this warning during configuration (allyesconfig):
> > 
> > WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
> >    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
> >      Selected by [y]:
> >        - ARM64 [=y] && STACK_VALIDATION [=y]
> > 
> > Followed by the actual error:
> > 
> > error: unable to load plugin
> > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> > './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> > open shared object file: No such file or directory'
> > 
> > If this plugin is absolutely necessary and can't be implemented in
> > another way so that clang can be used, seems like STACK_VALIDATION
> > should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> > 
> 
> So currently the plugin is necessary for proper validation. One option can
> be to just let objtool output false positives on files containing jump
> tables when the plugin cannot be used. But overall I guess it makes more
> sense to disable stack validation for non-gcc builds, for now.

Alternatively, could we add '-fno-jump-tables' to the KBUILD_CFLAGS if
STACK_VALIDATION is selected but we're not using GCC? Is that sufficient
to prevent generation of these things?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200121103101.GE11154%40willie-the-truck.
