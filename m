Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQ4HTPZAKGQEFFN4TJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0EC15DD63
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:59:00 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id a20sf5332465otl.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:59:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695939; cv=pass;
        d=google.com; s=arc-20160816;
        b=kqMArA7KoWbt/PWZvFcaB1ERS3zvaGM0B4NlqIgU11iB7OzoC1hDKhJ3AmwvcPhs2e
         NXsh0sAiIE3+ysKxv5M2bOSi8a/mSyCRsImhc8yjkOn79QKxsqe/UiFG6GhSVkknTYdD
         EWgSGovWiRSO94FdTrNRfS8DHfJym+w0m36tGmzZWNKqdGoFODnuD6zCwIkyespulBvp
         53Wb0hRyzD1JnyYclNbtkgOe2hr0wX7PxZIDGbygD+rpFESq03Gi+wHJc2aLz4wRYQTH
         C/0DZ8txCgitgKSfhkVvE85OAtcRI7g90pTDryDlhvpZRdmO9w7Cx8rd4KQ5vjw1U9iS
         jc5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=x/keB2CrH3uby2Ic1jjbGenrF41GBVTpB/lF1bBwCes=;
        b=uFseX1OlT4DIXoKpqKL+xDtaCVUdANic94WBjpYy/Eh3CuDPrbw1+D5qUSaBKIM7qA
         sQTp57Vf1EOzq8AOQT38rikz8u5y3buxHg5+6Pfbmu9bq/t8ie1J7sC4VVbyhFs8vrxi
         6WLZjlUq7l0L+SuQiChMTkdiN9SsViW/pc0iq2DwYS9qsrP2MjvrP8HU+Hd8iak3LP5L
         iNItGWMAmnzBdaoaWO8sSllaQ5BTRVDFmxKpjdCKI3UV80HCz0G97AaUEa98JAkX8b+3
         +a5XCpP5Ommbd7GCgjUPRrDtXJlNbNpNCZBPjtE1SBVlmOy2KNQfmHrz3h3ZxbE0WcNc
         3xXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t63++IiJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/keB2CrH3uby2Ic1jjbGenrF41GBVTpB/lF1bBwCes=;
        b=meq5msOlyvFiKgbU8ix6XUCi7XLBz7xQsksq2drKAKgcaLVM/sj9ULfQ+sOrx6aYMi
         I85WNuo+ypZbU1MeruDSFPycWfxIMs649chsnzDb6ogxNFfCVKd9EeYogLIa8YHeAcEG
         3XW1zzDJpq/fLfhvK1tmKiMiweeVIirtwE4rWHeD5Fc91uva1xrCzi8cTgj8nar0+31i
         IB9SyKRoDBkRybTgcjYCQUHO/HiWP/PHslgIjO72iFJW506nRPd7DA264SbMWmmOEl/4
         ldMk/uA4TM8X9lu6esNY2Jal7akDtM8iOBbxOjRz1VBa0L76LDo7RHHDCDPphiTljX57
         smBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/keB2CrH3uby2Ic1jjbGenrF41GBVTpB/lF1bBwCes=;
        b=XhfO4LgwTqxVFVZdlDQ1DsuKqtOq0aMN18/FnE+CpQMIShRi5Z/l7NYMNTJppvaAU8
         B+D/e0JZhUqefx1C+g0QtjcUzDWnC+AfzEd9Ip/A0CU43PLUMzF92Z3gUzj4WadfcPvn
         vw2ygZ43A7svKKon2cOiiD6mSMhNQ3d9lUnQg30SpYr9GHZqxM/mbvgUWia5KQMCoFLu
         3CGbAw/Qpvs9lWY36gmTqC9ypnTsgx2uwt9DREpwrOzNfDqwcVe0weBpNYXu4iSl6iZd
         XaSq7IH7YtnlSBb5G6P/34pfL/wZRRGCE3iGW9okvrjzmJlY3AS1xTZB1GgnQgjCI411
         1eSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXGJODWYbHALIsSG4GlsuI//jsLrslapTVdWmWHhzY3TJnE3Lx
	7XdNopjBu8h7TN1x6m62m6Y=
X-Google-Smtp-Source: APXvYqwnE0Ad/S1NNwnWDXLFX/Y23R3XRxqAR1HU4Tqr6d7ggkfTfsol6zpzYLc07MLKhEixPqS3CA==
X-Received: by 2002:a05:6808:ab1:: with SMTP id r17mr2227768oij.141.1581695939116;
        Fri, 14 Feb 2020 07:58:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7109:: with SMTP id n9ls725060otj.10.gmail; Fri, 14 Feb
 2020 07:58:58 -0800 (PST)
X-Received: by 2002:a9d:1706:: with SMTP id i6mr2959848ota.151.1581695938758;
        Fri, 14 Feb 2020 07:58:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695938; cv=none;
        d=google.com; s=arc-20160816;
        b=g2qMGxPu+dqRPJpKfDHP5GwLlytgcvYxmqA5EjphjX/nBNJRI4BpmN+5AVUjCyMN2w
         G1tDBr8H7uxF2vyKZJ0/WIJq1kAvSXzcrbQDAGrbc/ppXCfrHUXs3YhlFtjX4E5dIZy/
         MPnbxwze2p5U6eZVsP8TjpSkda8bvGNk6YNiQ2EuN2YGcm0eiBXSh/oSqSsep1fqygLG
         f2WQDfiMk4zBtGLNFzF3fakfA0pbVcor4Es4Ov7MdK77kfBNXZtxyOD/g/orwOr7S+4l
         hs9P9x72ASe6lHyRa61mCVigaLTwgo3EMF/CxNYePFCUarqLnVHtHVffbcU18nxC7w7d
         XYTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P2UFlqKfPkrtbZHVB3WcX/OLrIXOJdibH/Z4KAFvNCU=;
        b=IMaWOSuAedeItUL30rdLAAaJOxinSYsZj77hqTWgnTS/JFyAu8EedE/PfZRcpMPAnZ
         MZAjDksMB3WbT86MGqMZ0Y/fUklEfkDvhOekCd29U3O2Z/KGeCgdCrh2GPnucVrtm1ff
         9t4AJNBjstuUc3nsZ/Lp/socx5YektUXeSvTV1NlFHatLcPpRhFENwUqPX47u+tBt1Oq
         U+xZbTu6SjRRyDliWgpAvsim03zAE44BVLCJbF+GWB/rlyM+hj9mVkoQBB/rZbRXL0iA
         PWgeAM8zkNQigtZjLOMhCwV6IADLtXdGojQ7Z4I1u6lVW+2Z9X3N5tMlc8U+ZCETgT8h
         O68g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t63++IiJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j15si364645oii.3.2020.02.14.07.58.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:58:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 034402082F;
	Fri, 14 Feb 2020 15:58:56 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.5 472/542] hostap: Adjust indentation in prism2_hostapd_add_sta
Date: Fri, 14 Feb 2020 10:47:44 -0500
Message-Id: <20200214154854.6746-472-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=t63++IiJ;       spf=pass
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
 drivers/net/wireless/intersil/hostap/hostap_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/intersil/hostap/hostap_ap.c b/drivers/net/wireless/intersil/hostap/hostap_ap.c
index 0094b1d2b5770..3ec46f48cfde1 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_ap.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_ap.c
@@ -2508,7 +2508,7 @@ static int prism2_hostapd_add_sta(struct ap_data *ap,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-472-sashal%40kernel.org.
