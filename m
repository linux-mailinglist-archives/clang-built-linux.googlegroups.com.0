Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRNTQLYQKGQECP47YAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 532CA13E53C
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:13:43 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id d85sf13346236pfd.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:13:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194822; cv=pass;
        d=google.com; s=arc-20160816;
        b=K8XMQwLgk8G3QMIBiegf9V7bRR8TuX3pySvlaA9KZLMlrtIlROgSxa509SDc3PZC/g
         V2+CAwHZGQ/Vq5BRSqZlopo5MlNrZajJmx2vrG8f3t54qDvMXWqBaLY5soDmrCnsHOtO
         EtQbhVUxDF/xbRdTm5VD4bi8DL4seoTXA4aCQ2nBlLhRnrHfquMiWoPAJ6mMwG4QMPwU
         Lg8mEB56Her9Nl3Rq6+Mg9joo4iK7F9cffvQaMdD+zLUPFas/pDHBPt+sEyVQg/yAGKt
         g1ReQdwe9ogyscwDllfQqVrTi/1sKSikYzWHjcghjcg7BtOlYQQFyZ6AG1Q+6EGMZyOF
         CpyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZFHrPaLis73SxuoJonGw7F6bFMzwQFKZiTldr3FJHM4=;
        b=kSXRXrDmbz6YMFFr1regH+Sr7RW4YtnrXEyTDG/J7rleLPxS7UbXP1Oc/4QZtMocPH
         SPZQuNSAxKTuvp+vb20IHe5cNWuZHBGsCR8kQ7mrMZiub+9zgcgNW6AxX55DwOF5sFhm
         G+bo8i7Yz1xoR1m4zWR0Dk9ip930bAcvLg+d6wcFUHQ5mnAwJkKY1SVyq0DVR+8QxROw
         mo0v66TXOpe6FmgLcHMucFF4uwXNuqDBl6fdthrpkWW90g4FU9h3JMKRVkCuLa7NF9C3
         faSziaXpNMFjQKP2FuZcYc4ePKIIeHi1/e427s1EvA9OvefeTXRWILosFL7Oi7VSUMgG
         OkYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QVDhz4Gc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFHrPaLis73SxuoJonGw7F6bFMzwQFKZiTldr3FJHM4=;
        b=FQTRtM7WA0B9vQEHD4vIZQqSV2DL9fp4W3aoeaXfXfuP0GtxhMJ2jYyvpmDfqWmrDt
         IFnDnG3WN/5rKO8q14XTXLgUtW9l6MLPLMexBax0hpfByrSZOTZ83v/tk+tjUouj92mm
         BD3ZG80ud0p2FkUXo1p11H6ZKpqP3VlWH0ISlfdwINTRWVcJ/ln9osm5ubAfZEO1QHpH
         ypOVlY3RU+RXTC8sHw0C40RAk8usF2F7e+s3aQwAZPeSc6C53AhpW02evwwvjoz0tciB
         HIeSYIr+HCC6nxxqzRGi/pj+cUSGpjQyuWQYyfpSS/yATnS2U2uoSfUN8LTZY+7hh/Ic
         EYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFHrPaLis73SxuoJonGw7F6bFMzwQFKZiTldr3FJHM4=;
        b=XQy/et2InVSGHO+aPhBwZywhPkmaQmNUI23nBRjz6wkSW/tp75oSJO6tcoR27H3Jfo
         5SsPyq36rsNVZo59vFpx8cDCzJbIvbfzkqICjhowCLjKj7pBXCI2to+zQnSaWLf6ujwP
         chhLTM7smy3X4xWT3JKCewfwDvBE3/UCEOkTUb8vo8sVcAUSaRd7PUFhg5Marn9eW1BB
         Ik2w+MpdhcKTorA7MnnHWJ5+tCbfX0CQjiNz+UpMWJenwnVYZ2wSbJ12uUj+Ho+N1Y8v
         wCZvfkxopfsReMRgK/5v4JL6k7tR/vFsq2jETB/+h3QXYeE5p8KEmaUq6A6rfKxwa7rt
         /zSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDzeKneUliNKlu8Sd2xIjdlIyUyaaA4R9TQMIxk8cSwUUwZVno
	QV3H+9vmLUY8RfpIEQ+ekgw=
X-Google-Smtp-Source: APXvYqyO6+gOXiD0awDEO9B1mkqhu2DJtr2RXHjPdiE+4PAoJezI5UTC8PtbU+W1+KWC5wUNubNHUg==
X-Received: by 2002:a17:90a:fa88:: with SMTP id cu8mr33601pjb.141.1579194821999;
        Thu, 16 Jan 2020 09:13:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9887:: with SMTP id s7ls3699345plp.9.gmail; Thu, 16
 Jan 2020 09:13:40 -0800 (PST)
X-Received: by 2002:a17:902:a614:: with SMTP id u20mr33371228plq.107.1579194820682;
        Thu, 16 Jan 2020 09:13:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194820; cv=none;
        d=google.com; s=arc-20160816;
        b=cWho1prZujkVHQ24VJk71dp6jPrOC8YjsLZkO+QZEppE6YCb8vayhiDCtlNboF+dgd
         E2UbarX5ZdB6RVEYdF36xW8ZPc1ka/AzN4U+MxrBORraimSkOb4cu2ZSH+k8iV/5jFsJ
         12+0CVIBPZI2YKllCNUG+bWTZlZCszqMSDEHVHfoDy/Jky8mlM/PWJMuWMskaMj5JeB7
         9clGU0G0NuMY+lSJ9gW+CE787IQ6TfMY1Vozczdnj7himcvDbn3a/COMU2Ms0HKnHQyR
         7G4z/Sh2prnCoUh+Qv/1rnflAfRIuRR0rC7KrT14QlQtByjmj1mc5GFMkvFN8LHNW5Nx
         wREg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zwXVprwRFD40JdalIrc6O7Spmv++G2YUu47pbv3vkvI=;
        b=kGPzPnm6COI4IJxcAYigjFuvMmW6tui4yH77rArZ47gYWALtEjnPtzhLFmGjM9ACf1
         E4mDgehtA+rfxI0eHP5nHyFpdrplMPRE38W4NjmAZTEB2oIPpb4D7FmHSUyIwXn6YI5u
         r7t5PFlt/Odie6ZBP2ILFzS9CgHWgzjAEOskzAzzAwN3qXDrmsbH2mKXYQ9iVRnsYDl4
         dSNWoAahMtYv0jeeFwgOD1lJ0eqkyyB4/Z7s5zW2wQ6L772FIWSxjaZ7EyJqKWrSht5d
         dMetbLSSN5Ht3Gx0hHccVFjBD8HuBUhbIfYz+zszcX1FGaCZH5oS0ByclaXLGHNWdXCW
         IzLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QVDhz4Gc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d14si1120215pfo.4.2020.01.16.09.13.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:13:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 71FDA20684;
	Thu, 16 Jan 2020 17:13:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ping-Ke Shih <pkshih@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 625/671] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Date: Thu, 16 Jan 2020 12:04:23 -0500
Message-Id: <20200116170509.12787-362-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QVDhz4Gc;       spf=pass
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

[ Upstream commit 091c6e9c083f7ebaff00b37ad13562d51464d175 ]

When building with Clang + -Wtautological-pointer-compare:

drivers/net/wireless/realtek/rtlwifi/regd.c:389:33: warning: comparison
of address of 'rtlpriv->regd' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (wiphy == NULL || &rtlpriv->regd == NULL)
                              ~~~~~~~~~^~~~    ~~~~
1 warning generated.

The address of an array member is never NULL unless it is the first
struct member so remove the unnecessary check. This was addressed in
the staging version of the driver in commit f986978b32b3 ("Staging:
rtlwifi: remove unnecessary NULL check").

While we are here, fix the following checkpatch warning:

CHECK: Comparison to NULL could be written "!wiphy"
35: FILE: drivers/net/wireless/realtek/rtlwifi/regd.c:389:
+       if (wiphy == NULL)

Fixes: 0c8173385e54 ("rtl8192ce: Add new driver")
Link:https://github.com/ClangBuiltLinux/linux/issues/750
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Ping-Ke Shih <pkshih@realtek.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/realtek/rtlwifi/regd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/regd.c b/drivers/net/wireless/realtek/rtlwifi/regd.c
index 1bf3eb25c1da..72ca370331fb 100644
--- a/drivers/net/wireless/realtek/rtlwifi/regd.c
+++ b/drivers/net/wireless/realtek/rtlwifi/regd.c
@@ -427,7 +427,7 @@ int rtl_regd_init(struct ieee80211_hw *hw,
 	struct wiphy *wiphy = hw->wiphy;
 	struct country_code_to_enum_rd *country = NULL;
 
-	if (wiphy == NULL || &rtlpriv->regd == NULL)
+	if (!wiphy)
 		return -EINVAL;
 
 	/* init country_code from efuse channel plan */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-362-sashal%40kernel.org.
