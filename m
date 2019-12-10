Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB745YDXQKGQEJHF6ADI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B67119750
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:32:48 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id h6sf7125079pju.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:32:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576013567; cv=pass;
        d=google.com; s=arc-20160816;
        b=HELMO8bXGhe9cc4fqQQZrioybTucF1xJnMFIWQzPikgJGclD+vJ93TO4jK01ny36k6
         chc0UarSmI4f8iSK4kuHFh+rC17ItkwAcFV5JrNCXBBCEFOWxgBg/oaztGyQ4Cd6KRwm
         yy+wKOEbNsCc2H/NDBrp6XqIYbL/SvzRTPqwLmhY5F9UlU1aojwaWMRqgQYYe60LPsRF
         q0NlWtyMf1HDryMgj8XWEmQx8a8gkwUh3banChPEPaXK48AG47kHrzVpDsXqiCWrnmbm
         wPsWluAaX+ldMj5ZUpeUXD9p2fc3XJCZSyI9xc+Q1O7pfp8HrZrhxDILJX6DaCwoK0gz
         fkjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=q3jxFd2zEljwCwHS0KedOLOcT8UXfZMx2L1C/50kc18=;
        b=d3K52c5iRygKN7T1+GS1BXS/mSYoX9Cjwe4Cxdwae7Gz4w9Wpi7YAkUsyvGMF1bYmp
         setybB3XNQOLidCzXzkdnxrrMQmoPBhfDwEthE7FRWcV8faAGwrgaJMhks0wfuJEcXDH
         u4uoquywY/MTsw/lG+RfhT7V69Vd0qwD0K4P1lTs76XTelkbRFXiWnAlkuCAs9OMKfRZ
         XwMPezngW+BcslK87PZ6fRDGfvZ8+VBNo32gGP8YE7u4g3dFfNp9S246ciGbF2qCbQBV
         lf5YFa6VjaP+G0e40k5LfoFGuYK97btXRedQi1JZ7yrG/polPmCzLxhvP6n5VhVDEucm
         UpHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u57OUPSn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q3jxFd2zEljwCwHS0KedOLOcT8UXfZMx2L1C/50kc18=;
        b=rQ2clcBz1L/V3QVZmvTziF9nrxTAFy3H11+kykDWNm8EQapGRA/r5nnmtM5rOhPX/j
         XmIQJFsv4DOd7yTOICwqT6mU0FhbOdfYVBCjII7tb2FfBmbtPkfv8gQAR3/MxItmgXOi
         BcVU9bivK1GnpKlWLSdm6ub3cMa8AwKAa9GXv9b7+Vsqdw2AbmcN/Sz9Du2hg/fLlDKG
         TP2MajeN+pY5NsBKQsxVlvfwLuzaEdG3KsHVB5R+5VzmuLTTP7MHbYdDhq+jMSV9aTQW
         A50KGFs4OmAi2Q626+eBKlXQQl2wpU4HKBbP0buXR8t+wT3Ot+1jSsXhKzCTsgXmteZV
         vHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q3jxFd2zEljwCwHS0KedOLOcT8UXfZMx2L1C/50kc18=;
        b=p/9fhzg/adnT0Vx24bPvAYxxWP9cjRmI1ob6Y9AqU/syrPOhGva3xxFbPmH6LFeh45
         cG+kwF8RG+j9Ieuhh43/rnqsdbEXtQwtXY9ClLqS561AiJ/7T3HOKjObxyhZ5omDhfA/
         Y0r8WNJgoT58ucmMZatpWgPxDGjUHoxUn6toJDFsDyWunwmj8TlSj+jHKuUKji5SrnyJ
         bI6Fbv4uoLsS44aS0odgDJ0MjxtQu4evtDoCtNGsD+YhYCDwjgzDKUXjve99+0gcienT
         yQyPKAHn8ZeHLQgBrRDbWu/POtWf1uFDoPy9IHx4mGZ2tcceuhrC14DPxJJEU0THRwxI
         frIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUD6Cw2z1F44NoqPYczetZyPkYXyWCV0GnB8iEFbbdjsICTABoP
	jalvy7R05RUt87PjLcxmCI0=
X-Google-Smtp-Source: APXvYqzaAgbOAHj5AF3etqF+sBLMn0Jd2w0xTZCNzH7dYZNIKLycvBKh/H6YepJrbAV1IEAox3uQNg==
X-Received: by 2002:a17:90a:26ec:: with SMTP id m99mr7927417pje.130.1576013567534;
        Tue, 10 Dec 2019 13:32:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:160b:: with SMTP id 11ls18262pfw.7.gmail; Tue, 10 Dec
 2019 13:32:47 -0800 (PST)
X-Received: by 2002:a63:f70b:: with SMTP id x11mr253793pgh.80.1576013567149;
        Tue, 10 Dec 2019 13:32:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576013567; cv=none;
        d=google.com; s=arc-20160816;
        b=yJcEJ4FsJF8+2d3tL69IPVO/crZXlmLgIi3KeyRO3gkAvdIDNFdEjBTHjgXUr7XO+c
         lql9NFjUI0QZlY+Y+37eSq0OnnZSFgNP6Im97gKoCgUL60TigK13wntsCU00vFfgIQ3s
         5uJJOat00fX8jrL1gjwEoh7n1Vb0rKaHpMa5RILzNobTX3HOMjSolvnnrewCmKDcCFby
         a5wiAtWAh23eH7jP/vI/5w8juXq6HFbxVnPNrFMDxHaAIlf6fQIz3Jt6OZ0IH1M/iQo7
         3n9XHw9vNEzBmZ7pQo4lBGg6IqcIb3sNCvqlk62cLb6fYGpSXglk33MbAEnxb78S2xS/
         /svQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k/oU1ex1B6LD0UQ3mo8C2x4KmF4igHP/H+7NKfSeAh0=;
        b=amhfPUm3uTnU1N9/tpHSji7zTrL8Yd+npkLwGceuQ6f53JucsEzGNePFOkADlnkwvn
         JE4OC87Qq8mayHAoMyZjgXN/hE+0/4wQFB8r4KiT3eRtdqBFPR1hu67i42PasS34l3U9
         Msb/rfPMHDt2UX+bN6Z0pJkITPlIwGa4ZPoEsimOa2O1k6GUYHZ0dPL+6z0L4JMEIAkB
         Qxr27R2zB9cmiLKOygXGWEBvEl8AvhTfoO/Vd5Cwno+FcCf4+UCQ5GXnDCNgd/4uxbmw
         uH8zsDBsl/JgOR//CsWESBtJGcCu2OCgngS1ndrR7ROBy8BM0DYmeb05OGl+wgLU/MRC
         OzuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u57OUPSn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f23si227242plr.0.2019.12.10.13.32.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:32:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 27FC52073B;
	Tue, 10 Dec 2019 21:32:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-pm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 021/177] tools/power/cpupower: Fix initializer override in hsw_ext_cstates
Date: Tue, 10 Dec 2019 16:29:45 -0500
Message-Id: <20191210213221.11921-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210213221.11921-1-sashal@kernel.org>
References: <20191210213221.11921-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=u57OUPSn;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210213221.11921-21-sashal%40kernel.org.
