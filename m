Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOV3QLYQKGQEUZXPF2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E29813E81D
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:30:37 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id g6sf13799551qvp.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:30:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195836; cv=pass;
        d=google.com; s=arc-20160816;
        b=spYuWP+vYjoANgfudR8dXLjkou13k7zU5hnac5u/Ao3Vw43rL/SWBhBYRtRbd44puD
         nAOKRGI6Hkn0S9Gjx2LIYonk0uz7vBHMIhCyo+xD1CKoDgCZgaRbq+KRuOkR/colYC8J
         +fqybi25tFALU8yuWQFe65UFShxZnz97W5rV6hNGmKLn/J6NeRCv6SVU86+NPfOIxbmT
         xnjtKxXC0LRzvxAYaJTBU/bD/xSGZohAuA385ZNmHiW47vm6PFk2m6RR0hQbhXaMxCZG
         C1VbzyES40RgYeADjta4/HXMSykuFELvc7JPK1FCL4fHBDGpSK++zbhQStb3s9vqr8ez
         SN9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WLQzS1RQ2TfxHH5vof6PDfGHaoYkP+D+i7/R64rNV74=;
        b=IAscWl0aJmAP3MDgGH09ZEChIX8Ur4zcd2CGz8PMr8hoa5CwRWKEc5TNe5f47VRQYe
         /FDhe+xrDz6qePSBA3WBlYar0xPIkx5m9DdQa04Q5VeKkE+JAcavtMlc7Iu4Q4+pm7Vm
         YqtN/nk5qGWq/V79DgJyll1lwVW9HH2h3C9b9InKp0Ut4m+ZCfrjnVk8CziNmPc1QI8Z
         ieiqA5pD5puf2L69Wd9x4vwYCnmU1VMT8LLmuPaGY0jQ/QcgxpSYSBxhC0E1k+WDCrsl
         f5tTcbRWJgKH3K/W0WB1bVu7oDx861mLCPbZyTANtjUh3dc0KFyDK7ZDLi7pvibIcMjC
         v1JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w0YU8g8K;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLQzS1RQ2TfxHH5vof6PDfGHaoYkP+D+i7/R64rNV74=;
        b=RCthiQ+k8MTJgDLFjKoxYTuaxairicXFgvVZknrfoz2dyCkQOTDE2GQSlXUhoRvvRr
         /T+5m6xC7doFQKQvaLWzgDzJJl+ADzPXFYo1Gx2SA+Ivpnp7V2HNOy4Qs2osDDlx2IgT
         dSKEKOkFniEO0DVes66AKZvW3CWHhEUP2hiylbkKqD+gLZYkBaJNCIwpgr6Kgir79bBs
         0fUbmho3VXjRqxCK53Nk4EIHW3P1YWKIF36nvvuOAwkXXMgfK2LkfOff0I3WBd2zWuac
         ok6yoK0JNsKsjK6mAnoxGW+1AiMP4jZCl34PWrBqZl8XA76bqaEtXtjyaD0Z0szCpZ+F
         QLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLQzS1RQ2TfxHH5vof6PDfGHaoYkP+D+i7/R64rNV74=;
        b=CVCbWKyZu1qGkSK9rvo85LTi6IlkLp8RcDSCf1zXtO/BfNNNRdQ2KZZ2mFYAc5VKkw
         uCP6QIVzIW6kVzU/61pOKOYLMsfHtt9iezymdTsC8OLfUKLgdY8zei3pT4KAlZeO72qM
         ubsZgeowJCdn3aNazMvupWSc5h+RCCPQF7AvPyjTyYWyozyJBKPbrqgXBS6wCV02MmBG
         ugybOnjGD82h2hcGv4uXz0ebQBhPfEuYDzeZdu6xxFmozRYTBeYCma0NpTsJ5hPyUs7o
         JnPxLBDe44lIfDJ/vPlO+Cz8JFfsHXdTnmpos0OVFdLFPwx+OHK5hgxRywikc0AvreCb
         hXag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0cwl+iUImDuVGAZJ2s4yWzL5u2aoFC7Ixv6M6Z5wOySwFD7XN
	1EkMIS37m0CgNtBU+xkT5Wk=
X-Google-Smtp-Source: APXvYqyDFWtI/LdEeLPQdENmD/5HsHVe64isTk3N2gwmwLmsLqi51qVGmBXfgTb7F3WkM6BsXfLNEQ==
X-Received: by 2002:a05:620a:849:: with SMTP id u9mr34283403qku.414.1579195835255;
        Thu, 16 Jan 2020 09:30:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:279b:: with SMTP id a27ls4370859qtd.9.gmail; Thu, 16 Jan
 2020 09:30:34 -0800 (PST)
X-Received: by 2002:ac8:187b:: with SMTP id n56mr3496960qtk.173.1579195834469;
        Thu, 16 Jan 2020 09:30:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195834; cv=none;
        d=google.com; s=arc-20160816;
        b=emDhMsNdnuhLUwot9lK8HCvzSudU3LGtrys+iRkwZN8zLvOLWWEfB5a1JV+nhpbt4h
         LbpdUku3SKRMKcV8Z88NbGJhvew99rAL5+xxpl2ZGvqcKWMnRjlNpoAUFE0U+GONRaOW
         qg7SfqKOhuzEEgzXpgvyx0trK5fN5tskkbu41xw2tdwVzRVlfA2LnwW4EZgpFQJeh84y
         34Ik5DygGKlSAjLz6CaUd7nuqqbvg1//5ClD0yjuZZORXjLK1v6KiwFd+JsngWglaVg2
         y0WRoqeIefs0ZOfgKqFrDhp9OJUAGHAKE/LFxvztTKKjN5x0dW5vvxHfA7glHOtR2SpC
         4PqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zwXVprwRFD40JdalIrc6O7Spmv++G2YUu47pbv3vkvI=;
        b=HUdgf/ofSnlIll1Q4/D+mJRNvCVB/zKpPQzSqvea2dltiVdD+55236BkSl/I6CL+L4
         GH1yeb6XIIK6zDmuCOgG2derGkqW12bkNDWyCkHg9NEktmxkQN16IjveWskfxSCDOb84
         lMyrgCezJFmSq19rKB0nN0Ac8oONSTwC0ikodGNdTJgWWreQS08FYkFK3WAdgys5OCyN
         2pniYCctkPj448yK9RPQF3OonSsmbXq4HCettMtf2KPBWwxEw/qy6zhHfOXkh2GrNtLS
         q1+Dyk2/GhxZBLKek13YJ8t1fd6/35MW0Kvj+F1WUyWNDTZ0afik2bdZyTxBhxSK9CeR
         oMoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w0YU8g8K;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g2si1051599qtv.3.2020.01.16.09.30.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:30:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1882724726;
	Thu, 16 Jan 2020 17:30:32 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 338/371] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Date: Thu, 16 Jan 2020 12:23:30 -0500
Message-Id: <20200116172403.18149-281-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=w0YU8g8K;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-281-sashal%40kernel.org.
