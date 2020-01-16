Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBK5HQLYQKGQEC547EAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id CB27113E111
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 17:47:40 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id c15sf8269248ybm.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 08:47:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579193259; cv=pass;
        d=google.com; s=arc-20160816;
        b=J2X0FKmH3njhxcY0VHqCI54KT5/8u4wzEFFPLTZC+GIkXwt85RwccMQjxgqG31+3qS
         4uksLlHOrIKKJPyEirVJG0I1ewRucNuF9oJVNvhvfMorp6WX6kJebLnPX+uRc24w2qGG
         dgogpYjcplQiscyHBxglz/FsrprkV8hCraa101tXUgRIZeKZCa5GTsRa5/dc694xYcHL
         dxKNEHyZVXA4vGjrRO8EicjPQfnglDek+2qlJjMh1l3/KQY4DfclJd29nNbhJ9fnIEKV
         9IvJTtTtfWo7unqdImGwlAHkbIDk/3RRqX8k66pEnHefY6hTqU2mTrFU9KZT8HcudFZb
         K4JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LLfR8Ajxv3EomdY0fQ5lsLb7hThUlpovqlNvR581GbE=;
        b=GByj7xMwkqA9qoXKihgBnn+Dfw5MW2D5BB3k00WiDuNxrcCffotZzjN1QT5Xiqjz4/
         VL6cYumW6SJwzvPSD9fuL76+9viR2kNT1ngfQoFeqyiZ8oTYLHA5QWiaNSpxNvD6DSKS
         XN0lrcuByPsIZEbEvOHtsbpDWkCyEPDa53HuSU20FaFKbZeZhSJg2+H+1LYmmrvg8ALi
         RorAC813/JRWiM/r4+ZK6hWbVvs0ZtfRQ68XCKcbl3+M5HpePij3H4aY3advlppvJFLJ
         BNgevC+qiZ/pTQofBoEEjqkLBbWGqhy1cBzrlE4NN0JcXH+ctT8pBRl3zcnArkpZgiEj
         RnWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iHbXuwmn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LLfR8Ajxv3EomdY0fQ5lsLb7hThUlpovqlNvR581GbE=;
        b=rWQWupdx+68WCWEzoy4RNIh+qAUoh+7E6m6rCM5jFkEbHIePVgrDzcJQXTm1hBRpCj
         vcM4tF83X88o4sXuivEjE4LtYyvuqcuV1eIAEXNAwwKVG7nZQ94lnWMfRMJJIfUid3Q3
         H7CNpe8YIBtgDHE/J+7XYr5D8ihwpbwLWMs3rnaHqTr3RzevmJ/TX0/B0NhTXTeFnPBs
         xxm/kOO5VK+lM+6J6tQKoe2goqRSgR0Z+5yP4rsWYsFq3t4YDKwCwowYWay/hiBwMYN5
         D+3uBhWqVe1CQaQp/3haXRYKUgPi8HMv92YDot6ezn81wFkx9M21HNLyn8yqdmwsXooO
         BRbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LLfR8Ajxv3EomdY0fQ5lsLb7hThUlpovqlNvR581GbE=;
        b=NSOB1m5tuYeHWyRDkcy651neXRyxybbBGBGzlUOE5akSoweR4MVcM50w0cgyauI7d0
         eVXX/qtUNF82RHVBbpLTqiLdzTw/qBKxu5mlQ9pcX6SvGoI82XACEl4ZMIUGRnWYMZWC
         s+iXfgt7cCGKwDPEem6AHcwyKC3CP/5jIxvzIYWV+JEEWfs0rftmMXp6t/9kNj6/DMY3
         SY9z0MGd0WcIHsITepyZmDfx1dPBtpqNLEjP+qCdMVzFEkAqIvGms8GE0r6s2fafCFik
         WnMyrEFvxRJkUBiw/jJzfRCnQBA/pdDgHA6G2RQcrrNIAirB/p+AmkNEHsr6D1/OMLZ6
         3xUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjWVQQTFSHY8czid0PD377+8AzWNJkdGg2dZHlMC5eArDr8j0d
	pe8WVvkA6oJ6+yRugi//tbo=
X-Google-Smtp-Source: APXvYqz76JJwLElrSjxt+j9SF+C+Uoux+pGI3ub7mpqY67RWhGtm//JMEoTAHGyFdBZfNp5N/4IYqQ==
X-Received: by 2002:a25:868d:: with SMTP id z13mr21611764ybk.265.1579193259663;
        Thu, 16 Jan 2020 08:47:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d883:: with SMTP id a125ls2081908ywe.0.gmail; Thu, 16
 Jan 2020 08:47:39 -0800 (PST)
X-Received: by 2002:a81:8682:: with SMTP id w124mr23240997ywf.462.1579193259285;
        Thu, 16 Jan 2020 08:47:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579193259; cv=none;
        d=google.com; s=arc-20160816;
        b=ig7U4zLwTl+q0oFgNcQ7f1GcIFvlKlPNZzG5hdl810FHEZ+2oG1PaSN8GoB8vLkbgv
         JulXS/+T9bz/PJbQCxHGwLheNs/xamVy69Ml77MWrF0B6LHLCJLOoRN5rtU7ItKsYgSs
         /+BHFTTwfWQdDFeA9MBY1rEfVMRHUxO2IefCpz0Fy8SD/s0IzWE7n3xJYxstKm4SLpDy
         hB0SpT3cn3TBwLngkMMxbB5LLN8LC9iyIloSqcp6EMTBTh38K+VeVzfeP3Wm9WdBnh/O
         Ry0SfqA62XScn8OIXY82v3pd3Fr0Nlkuk10waXS5QGFJlZrdR6ePm7rsle4nN4uz2SoZ
         /rNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0DLpDQAqX+19QA3zKDnC8KbeNge9VOBAOL15vo9GhO0=;
        b=pZsqtfYTaGZmd9s0cAIjHdYql6bb250CTEZGXOuMiw8UNaiRr24ZehkekSryoaMZNy
         nzxiY3ijl5IA0C1/afQVWrkw+xVA5aXy2KituoEyn12ICwNsDiwc+BuFpvTtX7pdQFpU
         9QORuvoRim7x4uxS4NVLNw7M5+okNG77ZdKmigqiqszvMiX252XJpKPeeX3cnWXKvIU3
         ySj1mTePxqXnl23O+juCkR689suENuKhiSoIXYTKuIInkCllaUnDnbL8xq8blS+a6N2Y
         66oPdvwJ9xXqQi3UUSxx0l+Kw/uaaKlbwGeYg9Nfjvzpu8fSHyBTXzt7idyBXNOWy4Wz
         jq4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iHbXuwmn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si1262376ywa.4.2020.01.16.08.47.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 08:47:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5233E20663;
	Thu, 16 Jan 2020 16:47:37 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 057/205] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Date: Thu, 16 Jan 2020 11:40:32 -0500
Message-Id: <20200116164300.6705-57-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iHbXuwmn;       spf=pass
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
index c10432cd703e..8be31e0ad878 100644
--- a/drivers/net/wireless/realtek/rtlwifi/regd.c
+++ b/drivers/net/wireless/realtek/rtlwifi/regd.c
@@ -386,7 +386,7 @@ int rtl_regd_init(struct ieee80211_hw *hw,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116164300.6705-57-sashal%40kernel.org.
