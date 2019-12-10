Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIMSYDXQKGQE4SDG6FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F311192DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 22:07:47 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id j203sf7078385oih.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:07:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576012066; cv=pass;
        d=google.com; s=arc-20160816;
        b=DRwerYc1C2hgOK3LH/RREmlmdrGio2sMaZw7Pf8OVWdKpG+EztiH1zqxNpNi5/yC2H
         IdgtpLHydH23dBRDjaD6dSPiQJ/a6/4uMaLpDKK2u1WgURh48y3H0tTJZz/iLsxetYea
         uGJt3FXsgdExKhWq2wia+6khGV0ZPUSVbcAspmM8Re5/ADkdOi32cfpuP8LxPlKHV2n4
         mupyRWpm9ZQlm2SMr0PH5R61uNHtEOGWSKMDm9skhGI4ZBGDsYumQn2mzr4ZZ62/lYyS
         uujnLE4xG8UPVHcoE6Diyb5f3heqfhaZ2NruLmH3ub+7zWqnJG8l9CPkn389pjwkea3X
         fjeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mB+redPMDHTE6UZhQJYn9sx+g/oA9M5s8ZG8Nh5d9g4=;
        b=QHnGr5j+gns+rv421ieLPDfhZI64BIyNBK2lzMIwNifw6p5B+bg15UFpwO5bbJsoj5
         KaDYXjfkhmNtmI2EbWCwkWOSnBawHaNZov7zEWNjGVdSt7KVxiaBLnl8XRJCc1a19fpl
         Z/boqjkF5b6E2igyq3GavX+XJr11MTuyWDhlEHCKo3TAUQxkx7DJYcdwfSWF86brONa/
         reOBrpd02Y6L8FcRlOtUnYoPS5LehsSmfCVTbFGttoM5Lr3FuUBiMdUMXtNfLR6bTnH3
         vGOqYcs1DU2zn9AQZaQV8o1TLsOcIe9Lj7CsFLJ9Jsld2SiOf66/BgfII3pMbnB0DIM5
         KwVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ua3SBWmz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mB+redPMDHTE6UZhQJYn9sx+g/oA9M5s8ZG8Nh5d9g4=;
        b=gbq0GhB7e6G05yCKG5PpFeMuplXSR5l8uNY9/owEGZNsJpPcE6JnIAHbnsuAZjaPO2
         ezk5N141pgxPU6r8iDSmyqHx1epDmQY/5lKVbL9gCFz+GeNKtQubAESPINTAvE3uJBCL
         aB/vYbDJFq+YW/Lc020spSYhXOMQW+va8Ov/I/spTxsqMemPlIv3JxW5aiDSScmGOKeB
         8ofsv/bbxdht51FoChe9DY9j2OJHmIgtmmDcBmneoUv9RvXMJ8PYh+9f9QdSXBQ41Zb4
         k80z4rCTojfPdieDo9Uo7Icc+ew6+Ny4Y0lGEU0oR497/QS+aL4CMc1/k3gw0U7lzlmw
         kM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mB+redPMDHTE6UZhQJYn9sx+g/oA9M5s8ZG8Nh5d9g4=;
        b=eAS4kVNFx7+LzRyzWhyw2Z0eB8yrpnsn9ShrlGR/TkspObnGuxKvCJaYrmwatKoI/U
         mKQsLYE9SU9BBFvhoFfpxSrOVBKePCk7pRmZ0O7M+JIddriOJlZrGwgYWdAcJU3B8xcX
         xBVH1Asf+Bw6rfHFry5Vv51gtViHfAXOw+QOpcfu0o3kZmE4IpddaVL1c7hXNCRTOHTn
         zxcRMahIOm4SqKD7/xNrmHIRnOzT48vs4R/jiRHJKMMxQ8dV9u7qqvmqaxd2bINm8Atg
         1J+FPb4yj610xhiECyzVW/f5AHNycbA8H5YioecTbLSvTuJLWaXckos73seZ931gbD/1
         oplw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLCPq1NtWAtj0/hTeNq/TyWdOsXTufZ1RSWaUfgCMLEbeuRjPh
	1/HFdFsc72AYDEBhgnQKHg4=
X-Google-Smtp-Source: APXvYqxx6MR+0fp+d7PGKPMpom8mkacQ8o/9iEKEl2/CRGUpTon6/P2UFjGvTBqQwr+C9vcIZJ98Zg==
X-Received: by 2002:a9d:674f:: with SMTP id w15mr17814653otm.243.1576012065798;
        Tue, 10 Dec 2019 13:07:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls3253259otn.6.gmail; Tue, 10 Dec
 2019 13:07:45 -0800 (PST)
X-Received: by 2002:a05:6830:4b9:: with SMTP id l25mr28085320otd.266.1576012065439;
        Tue, 10 Dec 2019 13:07:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576012065; cv=none;
        d=google.com; s=arc-20160816;
        b=t4Zze6o+OmMSzmlXSVG+G1N06VBYqEjQItXUVgmhR3gZwox2F0Ehd8egE+Uqi+EqYk
         LOgZ+CmhPz4tLFPM3VBI0uVz0l7lDdd7q6frCPzQi4BcOmYvi+MIw3xBgmqtiWkhF/fI
         /sdJ1mFqfJMI5MqLx8Jxw8WzBBQEO3GjzTU/1zMg8v8d93CW/y8Pxb1Q/p7jyJaoD8GQ
         tHPTunjazLnDO97UZMu420YYVAYbEPjuV4WGn4FDUjYI2esu/t2O3mwGm+QnUGgIK25X
         iIg/b3s9+blBASx+qr/fInr8O7daEIMfj0NyHWPuk6Zsp9qqk0F0KGXSy2dle7TC981Y
         rfdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cuUDl2xZSXb7AvqO3EKl4ymKYwZ1qsOoxbWO3xxEg1Q=;
        b=dTa6vBAzxJeXACCfspJ0fV3UxWc1J6rlMa+feS3S/5/CW+MiZV6j/b6KbZsr5pPpHS
         2FNWxmbpwMupVWHbyQLdOBsRJvF2kEKJFxcYuQucNV6zTaBzu2+ViYG7A9Kr6gKd+Tsq
         TPEnN00YPRhtJSG1Cp2nAzL7jEq0CwXtlNTnw4JXVBSaiLA0STOHmBK7UrGResflrHtZ
         AMQHnPnvlXRZiPvWY5BeU8bew/83j1UiW3hb0PjFNWke5V2kPUmPtmQWDrkN5zhja4lz
         /bI74DXrz+TdZ5dlgnmDASH5nTsirdJbayo7fUkrb4IcasXonk065n1dNciP1ifGule/
         dsAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ua3SBWmz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l1si183560otn.1.2019.12.10.13.07.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 13:07:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D3A9224688;
	Tue, 10 Dec 2019 21:07:43 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-pm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 046/350] tools/power/cpupower: Fix initializer override in hsw_ext_cstates
Date: Tue, 10 Dec 2019 16:02:31 -0500
Message-Id: <20191210210735.9077-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ua3SBWmz;       spf=pass
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
index 7c7451d3f494f..58dbdfd4fa13d 100644
--- a/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
+++ b/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
@@ -39,7 +39,6 @@ static cstate_t hsw_ext_cstates[HSW_EXT_CSTATE_COUNT] = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210210735.9077-7-sashal%40kernel.org.
