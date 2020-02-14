Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWMPTPZAKGQEUSDRCIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF61615E0E8
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:16:26 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id o5sf4813452oif.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:16:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696986; cv=pass;
        d=google.com; s=arc-20160816;
        b=U94BCLho42b47XrojNtfUvHKImSiSHFmug/rZcFZME72is8V83IivzFm9HqqAFUITd
         u3Mc/uwFWwC4nfEQW0iv1JVAAn1YhyM6pOBTu/ltCjYzkoKYOtL6gvUKDDMK4E2XOGfb
         cf+MBQrEsWJqWpOpnF7DOAd5ie0uKWhp9j5dBd+eAZwSCLAkj/j2sc70A1K3Qs90Jbk5
         Ue5KpnQTdtjCnHkGeCW5Xbvt6DcIQe8xlqKQGfSEpP6hR2r258FZJuWTsNt745eAi880
         WjSNTE5fjC3IzA7rPrjOhKbVkmUbZxg/bpaGtp6GWY7C4vIBwds8OQlt3GHWavKCYEyw
         DWfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SWY/LnPxWTtb7YAee10pNEzmyZL2bG5WE/SxV9Mw8AE=;
        b=F9NH44RnAB9FEC0uQXwo2PvxhsZb2ZazaGx5uUmY1lOtegibwWQ2mvt2v/UPLlfKQu
         1W+sGtUiVcTsSTM1KOphVUBs6LwMdYPCPVPJpH4Qc5m1TieIO4sH1lu1VXn41f6O40fI
         qdba8NtH621i/yf/Avb2Y1I5i27VP2mwNqvX/tdo8sSdvQ5UThtTxLERSPdg0HXSZNa3
         MQRbLrV7FwNaBYnUok4FK1TxjqanTvuQLFksPUt5Us8awP8+jqQ9VvkllfQBPEvZI8ug
         HIyAofex1yZwqKqr9J/2cP9lb66cUMKfBF75f7TOFvhVqczXt7Us/jKKi+Dcc+wIIRrX
         Df1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PRK5btVD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SWY/LnPxWTtb7YAee10pNEzmyZL2bG5WE/SxV9Mw8AE=;
        b=DHwyz5CD+i7UK1YoWKbDQD0bmJzSrcCYsX/o/wUs37FByLrHia1IJq2yb9mdC+s/pG
         GSR3sRnXAr54M6oG6BnjG94OOVBijC7cvr3LsfaHiIZ+mi0iuC7f8r9wicpRMLVg9C+s
         bmNsyX/UrEHn2+KMB+LndicsoqqnvQTLdHQKOWAs3Olcqr/JM0Z7XeMpE8hJZ1S/kyJK
         KgW3cOnO/bA2LDdI9InlW0bBZ5L5pJO/NW16dUJ16yZTey1POj036jLtQQ5yiJpdQPKh
         H4F8GTuNyhgcCqhFKn0GHMyFb9VZBxP/6+37gGh5h3WY6HQ3c6PX1pvJgv7shsBxd+kS
         HcJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SWY/LnPxWTtb7YAee10pNEzmyZL2bG5WE/SxV9Mw8AE=;
        b=Hm884WX2+9EvPXom9GtSqZhKgCCKz+CXgqgDlALoO14vbTOoyu9GXLqbIqAE8xH4OR
         upoLXCrTZ3DyoFGIItzUmSOOkYGfOGkYo+2+iWcVDaTEtOFOwQ35e2wYLeTwy/uhibOa
         TeYLkMXAaNkd21/60OjjqxE3oJjCFyJ6ou4UXHEJ1UoryInX16NC2F59tbjLCLUvm0i5
         OzPyT0LevdA8YRxTPCUz3wHtRtaJxxzKXiHtAlQSlhlCN6NXc37IUMUglVjo8162VRPO
         XLw9HwhbEwkPTKo7dcJZcK5kI8M5wxh6U5Y/hK8YzEebaGYK9ALG4ucBVjZvM8YkTNEH
         KAJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXNmILAuhTgEtxP2DxtsdSePULEKugTPuAxWNAq8+QTv8ncfW7c
	1bDTkSSZc8MypUorShWwd0I=
X-Google-Smtp-Source: APXvYqy5faol/4o0lQVKBVyuz+XqCuDAcJrNHA8U2Wm3Rb4L3N+h/0118cj4jdHSOHyv7tcKudDwzg==
X-Received: by 2002:a05:6808:315:: with SMTP id i21mr2301646oie.139.1581696985881;
        Fri, 14 Feb 2020 08:16:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a96:: with SMTP id i22ls776229otf.9.gmail; Fri, 14 Feb
 2020 08:16:25 -0800 (PST)
X-Received: by 2002:a9d:7f12:: with SMTP id j18mr3067998otq.17.1581696985545;
        Fri, 14 Feb 2020 08:16:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696985; cv=none;
        d=google.com; s=arc-20160816;
        b=IOtO3UOyrSgBSYu7QHj45x+xP+2B7rF/hiMEI7dnycXcJPNqjC60EPBYWXhn7sdwQc
         px1+sH/SBbK/ppaZbfvu5c5riIMI7qHmKJdavPNgu2c8S+m+egUM6lvLx4vALXw60olp
         tvCCqztMYUS7EmAxGCik/T2pk4rPMy78hh8IDKIL6dH2jtB+QBtYi8UYRgIzJleMktlB
         RkfOI7mNjkDSKtbz87Vct7p5IGSdgJB3eUS/ETmIfbP3VsENQiRP+NxSH4IP11NF5jmW
         aMnFanqPmCyKc0xFLjm0mygm6Ul2+pdbTjPMHjZ+NUy9kjdxHUkISVH2s36P7pQnDwT9
         HE4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P2UFlqKfPkrtbZHVB3WcX/OLrIXOJdibH/Z4KAFvNCU=;
        b=b1tc6JWyrIhs5Lzuy9qd8BNfpKOeImuyKKNYvLZ338uEek6hT6n89p3+a4m0QTkpkH
         z/YlP9CUA8TqIOJC/Z8qNk72dzU1btr0NGuWrj3ReXyscVeGZLaQnXvUFWV1C36fKSRD
         6ggYUV31o0mWOPrWUl7NX91SSTml8DGnFp0+kw7kzZG4g9btxkSpFolT6Kkdd6OhNTEr
         j6k+3pUVkX9OgMLKhaK4y8f4U+718cSzgvuNOW00CYQJd7KHap+3jY+5rvNsSWdJ1xBU
         4hd971q/s+urTjqtCz8Pirf6XcC45qx9C/wLvjEM5rfIwOVEftgcCBX4uIPI2RS2bmRp
         qTNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PRK5btVD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o11si347198otk.0.2020.02.14.08.16.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:16:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ACA1724654;
	Fri, 14 Feb 2020 16:16:23 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 220/252] hostap: Adjust indentation in prism2_hostapd_add_sta
Date: Fri, 14 Feb 2020 11:11:15 -0500
Message-Id: <20200214161147.15842-220-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PRK5btVD;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-220-sashal%40kernel.org.
