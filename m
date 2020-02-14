Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB44MTPZAKGQESRKHAYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C4715DFB4
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:10:28 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id e11sf6480370qkl.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:10:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696627; cv=pass;
        d=google.com; s=arc-20160816;
        b=rhjru/1ZBDZ01ZwV12qu8oIey2A3qbuS+N/11/NxskF4KWtL9XKzYaQCY7X9rBtfs6
         JyCWusxoWIKHxZn9E22NJe0soIdEDJMk8Yee6WeB8zMfPqPvKKCairmu3GByInyqCVlx
         CEJ8PxwqrVKZrS1vq/s/ZTwUlhFCqlgyTKeCHwFqHrC4Jp9bWJQNZnOeRPKKD6cj7n5x
         QYRbio2N+jZygPS0hU57RnxFCNGB+yLpnbBwss1pAm5Lw1NoAl8jDleN0aScUMp4zyRW
         QdEjOTLP3twgk7zWicXL2C7aQuShFSymUYB9feRnl65y6N/Im+oCOHC2Osr7B4P6UUBK
         NtFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s61/TzwUakFMGIT3AREb7kAM4GIA9yuYNJv2OBQguaY=;
        b=PrnjmdK98LD/3kfKeTjgRjruxtiiq/k021Ag0+N+yK0wcGSh1AP6bGrY6+P0Axjr6z
         u8aYvAVtyoo93Dvf3z3iFsoofQQb90sFH8eiZhzH4UFHn6qG0G9mfeZDtxH5OhtS5Dsr
         zdevKaP6Wv8thOWJxq6o6OIrWDD2jljFaa1qwYgYfgM8iqJoRIYOyz/5xi9Jk+tiz13l
         t/siRkBfb05YOl7qNZJSLhOd82zfL8E2ghMM++nejrhbna7z6wn45LAJ4vRAoWN9y1hM
         bwP92pZ/tdw01A94Qkarn5EJlF7uLZnJ5GvsbmlNc0UJFdfvua5StfsotE7LYDdvhDft
         f6Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mqZcgRed;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s61/TzwUakFMGIT3AREb7kAM4GIA9yuYNJv2OBQguaY=;
        b=f0lFiozIxwd9udR0ckO0yWLWPIQZFUTW3jmkv8uW4K1/SYL83g0/Cj/md/Aw7GH7vw
         FBbWNxWlqof0T0mI6vNI1QLRnoodG5C33YOxmO3/ePV02xI9h78Ney+4SG6b22kYEkTO
         o3x80AgFmtYqhRyVi2mCKxiFF+p4ZFWpM0jh83n5t6Bq6xWTVCduQxlqm84K9wMZVfmg
         A3XCS5R7/7tDK9415QoGP05BtU3RqV4Dr0SxfKcCInlBHqt2k+qaCgzom1aOPYV0Jtez
         HrNTBMXxPgTzYS/mnrVbrkY599SoX6WZ9vK8sCM6sZW1/ESn+IIhZuLmltOk/kQcwFtz
         L1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s61/TzwUakFMGIT3AREb7kAM4GIA9yuYNJv2OBQguaY=;
        b=lbwrbc+NvoeNNNLgRflcqpWlRH5j7uIgBm84C5rSPmEhI+YiM5RXwILihQAbbgJ8+2
         EETRZKPpOBcizSOdzMNuDipnUpuYzp67yfeZjLIR4UdIxYq8eQ6Dv808X2t9F9+sew6a
         HwGU9qbG0ld8ce3ArBt3aSYdcidM9ZzCtxjwNPLiput0WumuKdu5oDfR7o40P95wfM4m
         cpFcYatwl6Ud/5UcQGRdVMZSlYSKwyFHDlaE3dHRQ2XCv6n+n49fQ0TXjZ0SXHQuRLS3
         skndOR9GJVmUTthYRi4HcNFFiE9ulKRZwjymhrZH/KCQTFh5QaKYDym0tVG+BxmlyQ8n
         /jWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUmA+Y3/myN0BAyz2qGRbRYAfJ1VTbuRjfCwMAA/9TwojO7Ihr
	vs7W+FrZ6xHNyO2WDrCcXJ8=
X-Google-Smtp-Source: APXvYqzWkBOT6qgZ7d+O4Hv9q/NiPT044ed49DPjwYnxKz1llw8oE5ZlM7xU4Z/xEjlfv6TBQIX0PQ==
X-Received: by 2002:a0c:c389:: with SMTP id o9mr2854582qvi.232.1581696627454;
        Fri, 14 Feb 2020 08:10:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1650:: with SMTP id f16ls544321qvw.0.gmail; Fri, 14
 Feb 2020 08:10:27 -0800 (PST)
X-Received: by 2002:a0c:e8c7:: with SMTP id m7mr2843388qvo.128.1581696627043;
        Fri, 14 Feb 2020 08:10:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696627; cv=none;
        d=google.com; s=arc-20160816;
        b=XB6yR8V9Y0pBN7HRA191Km6MDEMHGAS4RXz8EvdWgqOG1aFWMC6ejI8I3hM/0MARJC
         Se7oEE9Wxlumj59apnw6Qi6I8bsHLB79x3jbMxDxA6OElxm9IC+AxlMHoP1if4LEELA0
         CmjfqFz+RFFH5uAA28hSYhyFCUQJ4TGf9t7YpPNIb1H82JbPq0ZtV7aD3KsEzWy6Dx7f
         SgBzwmJqh9kNXN3kRraUpY/0fmGlV6YLDBNCDb1WFc+lGM4EGfZ7Q+HUDud5D9MkHAE9
         WGyG6v3zcyAyXUxVS4shVWKFkeA5mrLdnKrHOCeaDUbbFswm3ckwfiIS6xn0RFprnumO
         1a0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P2UFlqKfPkrtbZHVB3WcX/OLrIXOJdibH/Z4KAFvNCU=;
        b=b2ru6qDtrjZIzS5kDDCmzA9pLetv93eBQEuU6qZo5vhwt9M0KTozzwn6ycmhHZh+QB
         NG8QdAQpyNJ+x3t+alqxlLbKVspBJNgya3bnOhNfcs3t/vSsnuV5SEJTO8MH3OH0ATL1
         +mQkzwLJMOePlvBoWdR2aiMpELRRmFBD6Ck7AqM/RP9WzLt6GZQyy/f2k+7FrG3i4Dz+
         drB41nPpWtaQZC05Jlg2URVzcA9Cf7dQFRC5GdtVJuSGh3J49cQ9V9eTs4DMFowxE5jK
         qUWDvolScXmAUOrKRgw5E89lqJ5crKJ6/r8hV9yT6iYDzpSh9xHsSGR/i9LBQwg5yWKT
         UnMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mqZcgRed;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s25si319775qtc.0.2020.02.14.08.10.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:10:27 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 183522467E;
	Fri, 14 Feb 2020 16:10:25 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 406/459] hostap: Adjust indentation in prism2_hostapd_add_sta
Date: Fri, 14 Feb 2020 11:00:56 -0500
Message-Id: <20200214160149.11681-406-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mqZcgRed;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-406-sashal%40kernel.org.
