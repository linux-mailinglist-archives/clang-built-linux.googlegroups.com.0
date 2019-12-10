Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIFZYDXQKGQEHHNFC7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 92093119C60
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 23:30:57 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id c68sf15644723ywa.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:30:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576017056; cv=pass;
        d=google.com; s=arc-20160816;
        b=XvJNmxRAXjPnBEwfl7FQvZEVFINx4NNiVpnsB7x6k7XirDkZM8It5USt9Hwvm/HDdv
         2bnLiE2uuAc7w2DwZ9A/qE5n4U17elY64fWybW1mA16LBCmmfyuTbOH8+WiiGJO/vuca
         zt8KZbxh3YCWc8Dc28/Z8zUl2w4S7A36y1bO+dEoFaP71/wbi/JtugFjwV9rtgjsSzcw
         8cWRvBQ+CtNO/OBcfw/JlsugrCVnM6D/y1wTWVPGbeQc78a2HJka8/SRr2dB+1kbWZCd
         2S9z8HbK38OJxEw1TZ//rcju/PXvY5LddWtnazc5THImupJQVYy/KP1+S6WlNwpUoVCb
         ugbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=U/mdNF0zvMN8CrYddI45/oA8zjmu2uGDsiCU2WY9AJs=;
        b=jZGv9hT0LdwvOP5h+cTxHF4Ciksv3FR+z8yDOTBl/YUs3Kl/a2SWxh1usvTY1BPe9w
         u8ln483Zw1AXcAPzMUaHdRf2YUpiryOHv0BgctfVkhMZpA/HgbMmxxfJWmJCA8WF8PZu
         leYlHx8i2F3ytcfmqw6hP4aQ1D3c+WJ2mLVk0fFg6KSnBaffyNSWEtEmjLnHB2rzLI9p
         i21SIu65HwqqdsXWV/jfKEDG2Ah4nf7Ne08nscBlrYdNV9FV3FjKKG3DvJVmRRMnx+s8
         jXP4ZH6YVQX7n5ctJnGPUESEqaJmxplbaOY4DoCCVOF9itgCHUkQ9qDqnu9vnXbwrHQ7
         X9wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SQTRQFrj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U/mdNF0zvMN8CrYddI45/oA8zjmu2uGDsiCU2WY9AJs=;
        b=edHpcI9c/1jFn88clGJjg+dhMtogbaItbYsSGnp8zRdFNLUZtNsi9wx8YWFlkuwSoL
         LxRvm+hNtBhGbdgKPeF2VOSJD8fRn9qZuXuI2jBwDlG2gQE2qLqD45ljYfng+2hBO2gu
         6dCT8SpB1tJJYWcZl55FQYzdJH1LW71O4W34TBZAHWJsdAaTidG/jCiqlzi+tUosvxWn
         D4R5T3TVuj0PbPyzl7wWypcTnZ2AU+CC34jkuWgwh0uwTaysbUscONoCM+5KnP6O4AhY
         2NpXmx7RIJBzXzzPyAlHwWl/2Pnsa+6EzW7gqiJxcYdvxfG+gqOnExBPAMTX2Sm+BM1e
         fSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U/mdNF0zvMN8CrYddI45/oA8zjmu2uGDsiCU2WY9AJs=;
        b=dNIc2sxieoiHo4/dwwR7DPHLAdqliFN0S58xLjApowZMsmwKOnFhi27utJCBVxcTCD
         P4b4//5nM8YQwbD0CIjQf9VAE6Uy7PL/qHDxHHM1M6eCSTCWtBnupyb7zW0loPYxzPU0
         U0IbfjkEeA7ujqVKLN5+9k2acq9Ff8cSM5G67tn/lIEPT243BY0znkN2fnl3NnktsIyy
         sSRY3psWKuXOqXL8k5AMNMCB4DZbs4byWuqcZKnUVfqMVlehCVH0sG/lvfLzJ9/6Zo22
         w/vbatI76oWodYMFJMAmKgb1csBhd0gY2+zmdJq5dxHuJZk57FRcernZTmL+0mj1I76e
         c9Pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3YI9Y5F+o8Y0fGMGyQl8207cSitHBpTIe0D0V5WD2oz2iBLEv
	Yu8mOaTZL3owPTGkW9hkOwQ=
X-Google-Smtp-Source: APXvYqzEZLJpzoWt8L6CIUL//tc2oFYw97ZbOkV+iiPfjqPsvfpcvZK9hodQ3X4VYRss+e3nGCLVjg==
X-Received: by 2002:a25:d3ce:: with SMTP id e197mr306410ybf.235.1576017056423;
        Tue, 10 Dec 2019 14:30:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:2e94:: with SMTP id u142ls576656ywu.11.gmail; Tue, 10
 Dec 2019 14:30:56 -0800 (PST)
X-Received: by 2002:a0d:f446:: with SMTP id d67mr27926879ywf.128.1576017056023;
        Tue, 10 Dec 2019 14:30:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576017056; cv=none;
        d=google.com; s=arc-20160816;
        b=LLek8PqtEvJdYr8E9JtUhMq/HxHKCpiVqRieyUfjNPe1OJc+qCjuRoGiM4Jt8tGlIO
         n/RkXXdTh7wfmOx0rL75s+fLU1filF7mxXks2XQ06YHNsytoWWZewbxlzbGqEJa2j1Vf
         jiBVpAeLetfIz+j/M389HQkejz0ztX16S+D/43UN+oRRHjOZTj2vf7oBvcoqTTf/VYcV
         H9bMX8UBASrtiDu0iKSfkCV2JFhqeO7qwPpTBiRVrly3U5aWuh+e1UFOTac5dfbBYmvu
         kwLlejv4YPLSDU49bH5lBIH3rszSBUz/gdEXGzkI3nzqHs932aMEy4538I796HNIzV6G
         w0VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9qrOR+mx705pxJz0uRyyD6jbGf1D4frEmZV//hcIhZY=;
        b=SHP2YvU00WfWwuKBCKTWSOzIM5VHZNbaJMxjhmAH50rOODeoZRtQHdGaasXtwp00Q/
         gR6AIC3KbtTferFfnczdiI3QUBj1ID14G9cyZhGhLVdWqA5YpCQbSTktGrykikDvHqey
         SuOKRiTwOtaPpNK5kzo+kgPUdzKU5VEvN8tNr9JsHswn2/1QH8eVpMgr+YInyJeUwKQD
         UzTMDQR1JJtcjkFSxyYfTA821ZJgSZfMY45C7NbpXxEiK32L/i0VJE8h0Sar3FmXd2Oz
         bbchTFp5MjGP5AhryqDxTBsTKmhNY+FwpfeD2uLqMTGoheRHzW/t4kZPvyq2iMp6Ajjh
         It8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SQTRQFrj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x5si7906ybi.4.2019.12.10.14.30.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 14:30:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 680662077B;
	Tue, 10 Dec 2019 22:30:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-pm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 16/91] tools/power/cpupower: Fix initializer override in hsw_ext_cstates
Date: Tue, 10 Dec 2019 17:29:20 -0500
Message-Id: <20191210223035.14270-16-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210223035.14270-1-sashal@kernel.org>
References: <20191210223035.14270-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SQTRQFrj;       spf=pass
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
index ebeaba6571a38..475e18e043187 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210223035.14270-16-sashal%40kernel.org.
