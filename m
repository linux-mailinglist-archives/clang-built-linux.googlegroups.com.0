Return-Path: <clang-built-linux+bncBDWIJUMT74BRBDUA3OBQMGQEZTZW4OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE2535F14A
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 12:12:31 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id q12-20020a170902edccb02900e6b86717d2sf6670674plk.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 03:12:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618395150; cv=pass;
        d=google.com; s=arc-20160816;
        b=AO0PxiEGV6dP5Z9sRGMicM2ZLS9Ado/KOJDFmS3p144JKYAe0L7h0dMWt2nU17CNq9
         SsjCc6GhapaXKvwanvxTCHFp/ZRIuvp/9SUM49CYdWmsw7mLOcp6VrJp6HzSORSTJQzn
         5hKtkFrSnIfsDLeDcx5t0t28QLOFuvSS+uUhcaHtuawvlCgQvwwQfrZH8jckHue/s1bK
         8a3f02NQTKKfCYLHoaHJjfBhKXIfXwy0YFTFnV+Vu6Pn5j/hn6fzL/PuVMWLNsnbV5Cx
         UKIEnNSH6vMMvMY4z/YQderQqFKMzlK83PFVux0I2trB1fKm+gq1W00LriPhrLNQTwdy
         cyBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=nvhsAQHJbFSWUhAMrsDex365du+Vs9FYMbagBn0OSHM=;
        b=Yr5Ark0jNyakZKYB1jSpkKatMT7CTdSYe99XvJaxc7SZ0fAGihL0lsuNPTbe54oA/D
         ItMVT+y9SQXisCdsBZP+mX8TxeBYu6wm9a1kZcsg9nz3joDHeVvOCRnwxIW57ThuxlhF
         9FYhPP8uD48gQsamOFWwDAQ0rlAnVdzk95M78v6hnHLrBq3Dc4kGTZlRVqgMd/1YUpZr
         z+on8+PrGlDXC2yg21oo9oLIoXe8QAmHh1bElBnttf7zkjVJR06C+dEee7MCaqJZ1y0i
         Rl4rT6xeMqu1CBd8ANCSylpkvR/b8IIdrlFD8ubgxgFh5oRO64jWmIcPbaoRSsT3Am9y
         ut/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nvhsAQHJbFSWUhAMrsDex365du+Vs9FYMbagBn0OSHM=;
        b=lJqsBqf3yDPSr7guJ2SeSeI5AY8lQPtYoslg3NpCYPsMLeR5qI7m5nMTtgt5YUNYS9
         CWuuZqbQqfEdgcyhkjivgMjxrjE4JoUllB01o9O1moiDAADwFn0b+b7ZvR/jTiNTk3wT
         DK2Bq7kC0IhoHPymDECHbyQrlhWCan2fzKm5cKPTMoePwcYzVXBSWcyswbTEjC5QpMAW
         iRaxetTSvTkckEGCTy67bTKZ1jFqlW9Wk56yiKu0HaJ2PM5Y2j71v9edLeLC86p90ooM
         kGVMLo6lQl9j34zSa5DFZPhr5+22tgQtVX/orkB9qKKP87VJVSeKgf2I8AxIRVPIdNgM
         4mgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nvhsAQHJbFSWUhAMrsDex365du+Vs9FYMbagBn0OSHM=;
        b=CoYrjH5to3FuEtXo/wqgDSB16UjDMlmBVzBC8cRMK4cqif3H4OlRsyOIg2iwJgxKnO
         gGrtamTV2M4ZeQMaL69VVAJvAWOK6eyt2uIbefgjh9JG0H+xuoEFIvH8U9mV7VJXdJ5B
         re9FPXAQQu0rfy46h4MwxKIKqki6djVKIcfuDL19RGV4dP+eDrdSWgBt5wm8eOYUZYgF
         rR1caibO2icFkFYuEj2lZfNDizBcQpR6OtBwGQCZiqg5vS9styeJjPkdSzJ8hoQc2+OT
         xDH4XAxMPzQEengWVHzfHeR4WovJpSPpv8MlW4H+8rPj3CwCQq/EW2/PUdCBQeZBGyGF
         Ostg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hQasVkk9lysWOERv7Aykj672cjxn/Cr9COb2XRz795m6SZBLn
	dPTMz+09Y+vsR+KMoYgspyE=
X-Google-Smtp-Source: ABdhPJzzwwNAw5Fgx/kXrYpz/u05/w5xVwNYkZnDqmUAU1bl3w/9rPOa5/Zg5yLtE06NPoAVOCp8tg==
X-Received: by 2002:a17:902:e74e:b029:e5:bde4:2b80 with SMTP id p14-20020a170902e74eb02900e5bde42b80mr37077845plf.44.1618395150150;
        Wed, 14 Apr 2021 03:12:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8184:: with SMTP id g4ls764337pfi.4.gmail; Wed, 14 Apr
 2021 03:12:29 -0700 (PDT)
X-Received: by 2002:a65:62d7:: with SMTP id m23mr37384271pgv.244.1618395149674;
        Wed, 14 Apr 2021 03:12:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618395149; cv=none;
        d=google.com; s=arc-20160816;
        b=gQCUhCqMrlZ2rFP8ez0M7GJMjs75tuUBZwrIGFF/lPw63AmiW7M4qhAOTgmSocLNMq
         YbQM2TxXKdBdmHtJEAU12mlkbfnqmQsz1c4wpnShgpF2QzHQuBONcQYoVY7TpKyO/0X4
         45SXtX4rZS/nx7YTa6s26e965lrGX+U1gR1vrnQBxHdtUuRKyDECewhL9CCigxQHTFoK
         d26UcAgb1IJ9kG+V4rwYDD/wCZPqkx6QdE34OctVIRK2iMpPT62gdmOqKKTBMrmA7n5A
         7zIu44wO56lbirvEjYp4K1UQzz7lTVyU/QG+bx/l6+iZ5QWnoIgPMCmsjzmBe0nK+gws
         6C+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=RC2bH5Y0lVIQ8/ZzlxnOptTDoCpkeeiZCLT/tUYtIJs=;
        b=zvQOLM4xrJaqjzLZh/MAXDvMpMKGqYbJRW6MmPWNYPuPT1DoGveEUF4frn58qkN9AJ
         y/NlFys0AhkQQ5o8fR5f1q4fELXtyJatHmzlBLYOFq6VXGe/MGBVDv5EI3V8HMLljupm
         RuwDIBWmHdCrT9uSQtC5JGxDhtNw0uNobxIQpEQ7XjkPiyIumC0vtd9G2KILwWXvGLO2
         iNfLHQBGeppiZleOdPxHEaRW4R0hxXFW+aFLvvhhrjkjOdCQUWZyATMIyW4CwBgVDxD8
         s67th5c6ac6Gc511Q8s7TCOdQo2ike4AYbFLHHPzxH08iicRScguG763Q84uQBFNOi5s
         60GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ng4si156237pjb.1.2021.04.14.03.12.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 03:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 75A1261158;
	Wed, 14 Apr 2021 10:12:29 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1lWcVX-007PT2-8L; Wed, 14 Apr 2021 11:12:27 +0100
Date: Wed, 14 Apr 2021 11:12:26 +0100
Message-ID: <87o8ehmayd.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Paolo Bonzini <pbonzini@redhat.com>,
	Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: arch/arm64/kvm/perf.c:58:36: error: implicit declaration of function 'perf_num_counters'
In-Reply-To: <20210413200057.ankb4e26ytgal7ev@archlinux-ax161>
References: <202103262006.nHFq086E-lkp@intel.com>
	<20210413200057.ankb4e26ytgal7ev@archlinux-ax161>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: nathan@kernel.org, lkp@intel.com, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com, alexandru.elisei@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, 13 Apr 2021 21:00:57 +0100,
Nathan Chancellor <nathan@kernel.org> wrote:

[...]

> I just ran into this again. It is not a clang specific issue, it
> reproduces quite easily with arm64 defconfig minus CONFIG_PERF_EVENTS
> and gcc 10.3.0:
> 
> arch/arm64/kvm/perf.c: In function 'kvm_perf_init':
> arch/arm64/kvm/perf.c:58:36: error: implicit declaration of function
> 'perf_num_counters'; did you mean 'dec_mm_counter'?
> [-Werror=implicit-function-declaration]
>    58 |  if (IS_ENABLED(CONFIG_ARM_PMU) && perf_num_counters() > 0)
>       |                                    ^~~~~~~~~~~~~~~~~
>       |                                    dec_mm_counter
> cc1: some warnings being treated as errors
> 
> I am not sure what the cleanest solution would be for providing a static
> inline version of perf_num_counters() would be, as only arm64 actually
> uses it (sh and s390 define it but it does not appear to be used) but it
> is only available through CONFIG_ARM_PMU instead of just
> CONFIG_PERF_EVENTS like the other two architectures mentioned above.

As you point out, KVM/arm64 is the only user of perf_num_counters()
across the whole kernel. The whole oprofile subsystem has been
removed, so maybe a a bigger cleanup is in order.

I'll post something shortly.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87o8ehmayd.wl-maz%40kernel.org.
