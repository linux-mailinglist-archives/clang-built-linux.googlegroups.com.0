Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPF2YDXQKGQEXMEK2VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 846DD119CC5
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 23:33:33 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id d131sf15274029ybb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 14:33:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576017212; cv=pass;
        d=google.com; s=arc-20160816;
        b=E1ROELWWZxJLdUoFsQ/8Rj0XKXbHh8HZ51KpemqyEKRZNNDsCGfoXGNGqgelFBtbK0
         oTkOvXZd5J0KAD1f/k0CUFPq0lkuNiJ9FArWEhccwrcjVpTKMjO/Nbj/7W9ywWMqx8sT
         pQ/GXK7/qQ3YXWCpiGem3MKR93Q+UrB4yfzVnD6+2UD9fJRTj9F9TwX3lXvqLw+JRJwF
         VMbjKZQ99qUqA9H7WwAKMZg/KkAg05cSfq3TVwReADjRxe5MBQcj/zcj25gU9KoiZSSc
         j/TmJSbjhxQrMACVVhvLQpL0xAr7X8iPLCx64q/Xde0AXNuxtcFa3r8SrYFLFqpbdBZX
         nb4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HmkghWBKdVczBpwi00NP77O7Yrdh8aCc5uebb1FfMGI=;
        b=kJucYsYz5HrMWYz2B2dOwRZAPL7ulbGMrE63KWEiEJgjacoWtKUOjZYb2DejiTnrsp
         CAv27UqgdiNsXdxyAXl2bSRccBtUMR+Ef7XJ0fiVa2MU71B3iXNTTsbonJ1+XmUrCV/h
         ViAc9fpZI8dwFXLZGzEUB/8yEtgBYRxDHyrlQty+mmzimG2RDToRAfPAj0xd1vJ8ZOeB
         RBpXWQvyR+19FWUsypBKFuju/vilt4ZMWQTzXCLZoG0Jr8AJAP1bJ+CndcfSdqu2SF+h
         TY+XX5zm4e/N2iQGFUrvS/Sv5Ni+v6FEfSA94TVtfhz+RDsQ9HmYBKNU6O4A3qJ3J15j
         TyWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="AjGZeC/4";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HmkghWBKdVczBpwi00NP77O7Yrdh8aCc5uebb1FfMGI=;
        b=B0aEBDJOGF8f/coS2FBTNnBcz5CRzrBTiIsCFczknoMslgoVeQaQafG/5GJbTykynv
         pojnFLjc5PnPAnvTCqHMjSr3VdSGGvIVLwHKwfdrjNmokooOiMhVn/vkCoHYXIwQQpbJ
         VEqAZMbimMoXaH5lNJw+M7PCv69YMIH3z47gIUwqJPa5RuzbQ+WpqqsaROnjp7Wz9AEs
         DgVerjM9RWIzRhKDpgvIQtT3zNSF63Kx/lRWqvg4lnxZ4XrtgPk0Ai+9JP/ia0bseGSs
         zy31nceCc+QH63hHBzhWj7Pp+b7WKrorW68hHhybGBy2b7CpfUBlZQzwusjnIHWVQ+lD
         WT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HmkghWBKdVczBpwi00NP77O7Yrdh8aCc5uebb1FfMGI=;
        b=KG/oDJ0OUeE+UiFBsUHnNteUGjh+0rWommkSl6Pv3CjhHuYvw7OJrUH9WtjUVT4fqX
         S6syZzZFcl1YrwFHngDPtcAKUTu7FxNcCiDHYQ35W7JS1yzk7VBJqFzwlY0ouv2Pdqjb
         9MQkA++7y+s66250Y7Ktx46rfQb9Nn1ukeUHkcuEYDgXhH027ZoV573O9Zk4QdM5VZN+
         O1Rc7z3MzmcqymtW3CS26GBsvKYPthjl6x+M5pF7CQ1LBdKzHB3dh6yW9CZIujFmORvU
         egf4bb/SSEyrmKmCP7dkRw3whDiPWfVHTKdZRPFJ3N/HcmvciXAdG8Y4s6Ilmc+WM+Xk
         KcXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRayH1Klm7d2zrBcgClXoxUz71N/ilutYCRMlnfelhdG2MWxiZ
	aT0sG3vZsvMWZcr7cqQEcY4=
X-Google-Smtp-Source: APXvYqzcW0+I+abLxtg86Bo5N2GNTIHm+KrmYrZrtpXlD+BmzSPtX6S1uoPD990qum377dAlQSMGfg==
X-Received: by 2002:a0d:c303:: with SMTP id f3mr26678880ywd.364.1576017212510;
        Tue, 10 Dec 2019 14:33:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls2794344ywd.1.gmail; Tue, 10 Dec
 2019 14:33:32 -0800 (PST)
X-Received: by 2002:a81:1289:: with SMTP id 131mr28055426yws.74.1576017212139;
        Tue, 10 Dec 2019 14:33:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576017212; cv=none;
        d=google.com; s=arc-20160816;
        b=XERiaFhkZZvhN5fFMvFhxNYo36SMqq1rrLnesgIv32romyUIW5/Km+zngVE38gsdgY
         HmcTsfD8aZw9U67H4z47Hxp7UubF6DIqooUGQFPhUsQuU/ojg7g8xIGqofC++FLC2ka9
         rB8s0kL50NqgSkx0k/lt2/Le7jTesEsiBByLSESALeRvlrnzERRi+mlnoV1BJ0LqHdDS
         dTfrwKgRbqj8k35csj/2sfoPsmZvtfuSJP0+RSCBEJefyaEh7sb10U83AAhlRlfQb1yV
         dMwKPvFCI6HZX5wS2M/lQwPvYSsfCNR1sd7URqRkoVgBQR0LnXIzXOmcc4PHSa08XbFV
         bgAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9qrOR+mx705pxJz0uRyyD6jbGf1D4frEmZV//hcIhZY=;
        b=wVYZszProCxpAU+tuoBXkLzKky2CsqlfZ0VVZ0OXy1THS4LO/ik7dKtd7iEgab1cOn
         RkX87D9GKOma980QraJcSWEFLB/N4ZnOsRXbZHTovmLTi/tQHuC/rmXv3v2Fk5iV8azs
         M/GepVArj8aeyOskcXLpwFLEL0PbCX1P2XxQCUnPi4wKEmeNTznU8eYEyqEmBUgAMfxt
         HEYkABKuINfLn4kars/oYthJK10uq8MG8yLmFkBWcngQ8LIFSpy2NKlW2lU0ebQUVRle
         PYvs0LcNAvJQ0b5r6XMhI/IzOw2D2gNqRxdNfWUuMsQO3ig6uEXx/qrg6k539kdHIUpc
         2U5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="AjGZeC/4";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p187si6318ywe.1.2019.12.10.14.33.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 14:33:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7F572207FF;
	Tue, 10 Dec 2019 22:33:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-pm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 12/71] tools/power/cpupower: Fix initializer override in hsw_ext_cstates
Date: Tue, 10 Dec 2019 17:32:17 -0500
Message-Id: <20191210223316.14988-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210223316.14988-1-sashal@kernel.org>
References: <20191210223316.14988-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="AjGZeC/4";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191210223316.14988-12-sashal%40kernel.org.
