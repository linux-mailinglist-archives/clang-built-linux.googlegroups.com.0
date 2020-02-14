Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIEUTPZAKGQER6K3IXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC5915E2F9
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:26:10 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id bd7sf5480355plb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:26:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697568; cv=pass;
        d=google.com; s=arc-20160816;
        b=SKEZojNk2dSsx+vO3ZeFXBuJ6lqATF9wviyu0WJi/rxhMIKBhCi0jkOdBZklGBj2UT
         RnytqM+jhajF7e9RmrMwAUDuAy8s3UGd4KY0xFmxs0+PCAbqM6Ko1SD0HmjoG1ju6qzN
         lN8iNwuwvfSNBIVPzJzc4UwMY9fLkuBuhFh/7KHM9MeUAzPOUck69BkvrHBQ2+MEbHO2
         Voms2tBlRZkxuCUmI/UbtxRNNiJKr88nILJimmKE5V0aUU9tcqoEscUFDBZCptY36CzP
         UeVbTkiyIGZH+ca1Ciox5uA9O23R5n2DXa3d0DSgRQYIB5Y3kVpTx0A3RHLLkXqqtgqz
         6vIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Mg+tg+Q2830+3LDEqdOhID/yks9BFoX8XqoKymtsnzw=;
        b=zZM90frtJmOnogKzT4V9u43ZF1xqjaME6D/79wW3Itujx4bkhf9yimUfRPOTQpmQkh
         6RCSPk8uzdnbXMsSXLmyYEGwizxs9mCvfk7KmNRA3xk4Fudje2fEtX54Q9B92SJ2GnsY
         mleVAN4U1whESIvmDx0WLqCmCP0GALjZJuWZ/DUk548BC2IWDrSlQdKwOdhOMjconK2u
         d+KynnIePZAigeSngeL8077f8xG9fyRER+Xq9gSX8jKWkmo1EAXyXt5LkjtLVz7nSda7
         EldpXGGxe4ux2NuKmkgj3fp8CeS2R4mTGFjxsn6rBfU8fFhs//Sckb9LDw62OMqi8dy9
         Hptw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="cLj9Msl/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mg+tg+Q2830+3LDEqdOhID/yks9BFoX8XqoKymtsnzw=;
        b=mLLTWCwszBrDY3kwhq0qOuilKURJo9lAr/7clmA/EUTE6z7rS/orCc5gBtC/An4C7w
         NKSO8p8ZMNlS8hSsuFQfsLFLbrCaldGQLr+ugYypiq2Coazp5ienBFNi2EHlwKZnbD8f
         EtBELMDxA8j5wYVfclWJzJzUhqVBzq824xmumcsJvhs6KhtCN/srh51N8Fqos7sD+Qad
         o1ui81RdV/NPnmgKY0htCiH4/oeTtjNv7IuZkhKV/c90PvxhRAGAq7XkbvqxkhItpG2z
         E1kKRxJ/12lUT5bqZxX87HBRP/B84QD9EXzaQZ8z40deUi/IG3indnHubT/2JTxb1+me
         I2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mg+tg+Q2830+3LDEqdOhID/yks9BFoX8XqoKymtsnzw=;
        b=JM907T+WBYndvSuPjQ75JWvcqvh4THdLBu21oIYX9ENSqvjdC3ieeVZJ+aUvjwL9tZ
         HnXuz6Ef5BlRUyiCxbUsqsQ8ZwOiE3Rj5vvtBVEpgerzOP8yV6PH6MlFA5f4kdk9966N
         W0isCGPZ9Fdi/uEMldQpbOa9zNyol2qnOqahU8SwMLlq3J2GNLykooipW061pRuzZEK2
         OAOftM1wmdedoe8WuKoXULpLdZlNNf9ALhES5nBWNIq5WABp9OI2XftkHKztbi36R+0h
         PCphQWAy0hAloV4y6MlGys34E9otTb5bgtEHHM9CX49Ig4wL1c5iOBTOsZkRH7RecFpx
         1d4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpSZP0Pw4CpYpgqnb7WyRYfTnw795eCA94gQAY8BhGfXikvEvg
	rijDios/DZtxMOghS/z6G1A=
X-Google-Smtp-Source: APXvYqxEhHno1FG3owpxnvilcpjiws2VJLf/D7nNew8Z7a82UuAMfI2AtHZDaX+jCjudfgrHD1RzJA==
X-Received: by 2002:a17:90a:a88f:: with SMTP id h15mr4751012pjq.32.1581697568770;
        Fri, 14 Feb 2020 08:26:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls1682864pff.0.gmail; Fri, 14 Feb
 2020 08:26:08 -0800 (PST)
X-Received: by 2002:a63:1e06:: with SMTP id e6mr4503115pge.134.1581697568440;
        Fri, 14 Feb 2020 08:26:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697568; cv=none;
        d=google.com; s=arc-20160816;
        b=GYGtAnHcQULrpRRzfrYCq55gd84fHX8/4sY6DEwKdRf4BH0lWx7OJXzamk0qp+dMt+
         xIWrc2EuEKFAobXPI0KxUNwYlGxS6Y4K8E84e7hvkUv8e4ZVeYgL9cAZeoXC1xIVxfNi
         Tw/67qj55CPL8SKbziS3lYnOBn5XFfk4eZYJ18VYF7pvpxNzIb4XJI2IYYQUwzdZMkZP
         9sjvGmE6uVZryFkS8EMn2a/RwbWzKk/gzhV1tHnjJW4od88Fp1wPuS9TfL3JyAZHxBXI
         osoYrBTm6zlCARA44SCvBeZXG8GzSInN10K686bOZapyVIoymkhNu+rIbBt4sMDNq+fs
         lXEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LOn6HJNqLI3Me+/5cLRknvWh5LQ94oy5WvH92K5pKHg=;
        b=JVfHDj1M8Sy4EMp82vwml9ujx8GUjR5MCbt783D39WzVqRq/jLorCOvx9XntI8XV2g
         jvvpAx39AmU6/cWwU8Ie6cQ7ZRfOW75AwZfyPgLOf/vldMbk4ZbNdexjKePgEetTpiMe
         /zj5MVOwaYKSZPlDwTxRh6xs3ZwMpMbw1hppsXqgg2iSZNSUfA17g0UP+VvogWui8ETq
         fY0jfCSXiPEZJN3WVXwOg8f8ptphw8ZiINzNWd0+qd8ESGFGQA6pGqu6RTdDBTeFZY1P
         CWCCAQfBTIMxto/Nt7MHohkT9/DxA4y8PuGUXRESjpAkxucAntjdHqCCsQitN8UdOFhX
         SjYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="cLj9Msl/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m187si272651pga.3.2020.02.14.08.26.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:26:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 390B2247E2;
	Fri, 14 Feb 2020 16:26:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 083/100] hostap: Adjust indentation in prism2_hostapd_add_sta
Date: Fri, 14 Feb 2020 11:24:07 -0500
Message-Id: <20200214162425.21071-83-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162425.21071-1-sashal@kernel.org>
References: <20200214162425.21071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="cLj9Msl/";       spf=pass
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

[ Upstream commit b61156fba74f659d0bc2de8f2dbf5bad9f4b8faf ]

Clang warns:

../drivers/net/wireless/intersil/hostap/hostap_ap.c:2511:3: warning:
misleading indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        if (sta->tx_supp_rates & WLAN_RATE_5M5)
        ^
../drivers/net/wireless/intersil/hostap/hostap_ap.c:2509:2: note:
previous statement is here
        if (sta->tx_supp_rates & WLAN_RATE_2M)
        ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Fixes: ff1d2767d5a4 ("Add HostAP wireless driver.")
Link: https://github.com/ClangBuiltLinux/linux/issues/813
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/hostap/hostap_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/hostap/hostap_ap.c b/drivers/net/wireless/hostap/hostap_ap.c
index c995ace153ee6..30171d4c47187 100644
--- a/drivers/net/wireless/hostap/hostap_ap.c
+++ b/drivers/net/wireless/hostap/hostap_ap.c
@@ -2570,7 +2570,7 @@ static int prism2_hostapd_add_sta(struct ap_data *ap,
 		sta->supported_rates[0] = 2;
 	if (sta->tx_supp_rates & WLAN_RATE_2M)
 		sta->supported_rates[1] = 4;
- 	if (sta->tx_supp_rates & WLAN_RATE_5M5)
+	if (sta->tx_supp_rates & WLAN_RATE_5M5)
 		sta->supported_rates[2] = 11;
 	if (sta->tx_supp_rates & WLAN_RATE_11M)
 		sta->supported_rates[3] = 22;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162425.21071-83-sashal%40kernel.org.
