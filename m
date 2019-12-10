Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLFMYDXQKGQEYEHS6SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF43119A91
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 23:03:25 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id u30sf877455qke.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:03:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576015404; cv=pass;
        d=google.com; s=arc-20160816;
        b=gK1GHTrPOZOSo/xC9qblFz8Pd/sD7HO8aGK7ZO8n4+zHSK1Nt4RtrPJu2mfqrXVQV5
         hjEG3tk1vvKstNbju3AJRdQl/SNLOb2VPoP12DFRDEZN4O9xzCq5O7/9M426wTI9JSgG
         Jkzzom4yTfqQQIKszd1vPJ1M/zSW1FHImlW9UmfbVp+m/9l6VI3HjUhknLXe2bYRoglh
         0Vt6AFNkRm5cp3/juAvIoJC46Y8TeVmO5tz+R4jtr6pFiyafG+QLVa54x4YSCseP6vW8
         wKmOEeGJDpih4v7dfkWJIaMlCzgkdqfCyAr3hVTFZQ/NCOe31aPEJnwExMtx9BRAHlDf
         nsYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+vlSVMhbVDnle/cWZyKGv3WIt+fLd9HUYZRQ6nsLWII=;
        b=pLwx/gkbOoLCt6goCuwzCNzYcb/+Dv++f3g4G5zEjQSrMh5SGW6BBjIOInjV4xuSSn
         K+dZPv+SbcoXK/PMBt0fzUsbM/XuMxw2Pifjh67ZQ1ompzK4uknJTgJqcuQW8sikq4QK
         P8uIOz2jyyq99VRaIDFOi0iqsO30VoIGhqFLmDAlTonK/1jnVOMDvkmjzponVEEdtWq5
         B0KLLeYCORrOxmXP677mwLgl+6smhzznrv8k8qGTCp95KZEvKOoilxteDBmBbt3Kbope
         2kCBcA5Z8P3MeKTzFv1xg/TYZ7RL3HRYxatA18NyZWgF+6F/piA4SghCmfVSVYBiANVa
         RW6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=00zn+CZn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+vlSVMhbVDnle/cWZyKGv3WIt+fLd9HUYZRQ6nsLWII=;
        b=ZB5UX9AgbfsNkNgse4rEjG5eCzuLz7W6GwTb8dFGHQM4HLSnTXSnTK01npJGZ9oGHd
         C6RgF+nB6V5YeGTYox4cD6IaPdK91wP/v4NjckJls1BDd4PUu1MPLZig44STArFB3EkX
         M29BfTPrhirNnd6ZoTLlEWRQx1wtK4Vb4OaVjpWuu9ZYpLqeGkelHaPALCkwx+W4KxrJ
         cSX6ZWE9bz9JxL9DRx7Jx2h63RnbcNIGh+QLuXKd58UULAotLi/BdA7qx68GzJ5E/+q8
         amHAYSLkOtv7rGWUs9BRz6mCVMTg2VQd+6wwjPKE17y0Tdu9xjfNwbrHmeBCSlpWvg28
         17qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+vlSVMhbVDnle/cWZyKGv3WIt+fLd9HUYZRQ6nsLWII=;
        b=RHhnMJJcQKiUDJ+DuMbBlFN5oLlJFwWOu9IOkKbbbtYnvD+gFiwaFvKeyEUniqTECa
         xSRtfjOzQpakZI7DpEddOoq0wz+lpHbNM5qHgiJL+6qUUIirqA5fdbmvgJgXxLJn+Z4n
         k0ufJRzA1sWGUsa7LazRoA1dwHxsEJc3YoGZrevekj0QJyrVzkp9fLn+F1+ixGaq4Kd8
         XoQPU3E5ITYD68vfAJN/JzCEpE5N3SkkG59sizz08CcKHZ07b4/QvSklY/8++Aa/30aY
         GrPuZW8jNxGKwbqVRbPZOHoxyqheqvPX6SdK3efFtEBHGsdtpi8pWzmkeAKGWHuAtgWX
         LkrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/70rXkSa5s6dnY4gt60xsfgyj6gMxbi82oNlB60FIm7k99cLw
	TPXw0qtdxJkB18JHf4AC7Rs=
X-Google-Smtp-Source: APXvYqzcDQQeKk/EXYEFzHpIlLnLJP0hEvM3y/1Y7CE+5zgPNg5heqsx+Q4gZS/Yg8HYoWKmrJiiUg==
X-Received: by 2002:ac8:3503:: with SMTP id y3mr44608qtb.175.1576015404757;
        Tue, 10 Dec 2019 14:03:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:47ca:: with SMTP id u193ls6722331qka.7.gmail; Tue, 10
 Dec 2019 14:03:24 -0800 (PST)
X-Received: by 2002:a37:ac12:: with SMTP id e18mr8933qkm.94.1576015404457;
        Tue, 10 Dec 2019 14:03:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576015404; cv=none;
        d=google.com; s=arc-20160816;
        b=WKMTLK/B7OKHK96eBZQdTf57XIoJyZBtHalKqG6aBvf2EbIICRGNCQb+J7HQho2aQv
         UBN2WbwD6NCWKOtFcCTxYpaaBETj9qza5OCkhsL2GCxt0gNzLhouI0I9iae16wlJg0jQ
         CUMkkBbTKTehmJ2DsRIHCjyPQr2Sk40p4GsZuu1E7WXafq1WqXDK9dNQ0hyOCrJigcrW
         PSvYCg8Tot4q79sJREuDX6yQ771ETktjqZEppvDIbkzIxHMdnHY+X5jrW41CfEgZOFv+
         KW9eazgzAFR3uDNOgx1HITZ33687XwOCn/jjz2LXIhDUK8jWI0jPiiE3e3xjWa6wdTv/
         J58g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k/oU1ex1B6LD0UQ3mo8C2x4KmF4igHP/H+7NKfSeAh0=;
        b=nxKnvtl6EvAGyzi6ZjbCksE+wKe+eXU0NwH9RPF6A/6SPpo56NpwVSfajUSdLPCyYa
         j8VZr+xpPloRZyX+izfgrL0uIxw/VihRhuK+1G9TqzAKvK8VZ9sgSP4i7kaZ9txUxMen
         PiaM0FnKWRgfJPm2QZ+eSRskF9YkNTNennrXpcud8YmVqMk6j3IhZou1eAAMjsL6on/4
         svJTidPtApZcXL0VjVFlWBQo5/ehMixZnpx/d/V/aDY5qdFsiKBL4jrqUbhpVo8pGjn5
         0ZuDcsKp004X8n/Yv2rcRq091+RuVTBOYp+YBxPz8L4X5vensyp0s9SEXY2NaprB4bEg
         1x/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=00zn+CZn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h17si3189qtm.0.2019.12.10.14.03.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 14:03:24 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AE84720828;
	Tue, 10 Dec 2019 22:03:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-pm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 018/130] tools/power/cpupower: Fix initializer override in hsw_ext_cstates
Date: Tue, 10 Dec 2019 17:01:09 -0500
Message-Id: <20191210220301.13262-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210220301.13262-1-sashal@kernel.org>
References: <20191210220301.13262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=00zn+CZn;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 7e5705c635ecfccde559ebbbe1eaf05b5cc60529 ]

When building cpupower with clang, the following warning appears:

 utils/idle_monitor/hsw_ext_idle.c:42:16: warning: initializer overrides
 prior initialization of this subobject [-Winitializer-overrides]
                 .desc                   = N_("Processor Package C2"),
                                              ^~~~~~~~~~~~~~~~~~~~~~
 ./utils/helpers/helpers.h:25:33: note: expanded from macro 'N_'
 #define N_(String) gettext_noop(String)
                                 ^~~~~~
 ./utils/helpers/helpers.h:23:30: note: expanded from macro
 'gettext_noop'
 #define gettext_noop(String) String
                              ^~~~~~
 utils/idle_monitor/hsw_ext_idle.c:41:16: note: previous initialization
 is here
                 .desc                   = N_("Processor Package C9"),
                                              ^~~~~~~~~~~~~~~~~~~~~~
 ./utils/helpers/helpers.h:25:33: note: expanded from macro 'N_'
 #define N_(String) gettext_noop(String)
                                 ^~~~~~
 ./utils/helpers/helpers.h:23:30: note: expanded from macro
 'gettext_noop'
 #define gettext_noop(String) String
                             ^~~~~~
 1 warning generated.

This appears to be a copy and paste or merge mistake because the name
and id fields both have PC9 in them, not PC2. Remove the second
assignment to fix the warning.

Fixes: 7ee767b69b68 ("cpupower: Add Haswell family 0x45 specific idle monitor to show PC8,9,10 states")
Link: https://github.com/ClangBuiltLinux/linux/issues/718
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c b/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
index f794d6bbb7e9f..3e4ff4a1cdf4b 100644
--- a/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
+++ b/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
@@ -40,7 +40,6 @@ static cstate_t hsw_ext_cstates[HSW_EXT_CSTATE_COUNT] = {
 	{
 		.name			= "PC9",
 		.desc			= N_("Processor Package C9"),
-		.desc			= N_("Processor Package C2"),
 		.id			= PC9,
 		.range			= RANGE_PACKAGE,
 		.get_count_percent	= hsw_ext_get_count_percent,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210220301.13262-18-sashal%40kernel.org.
