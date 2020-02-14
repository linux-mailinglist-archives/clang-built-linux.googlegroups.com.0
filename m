Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBF4TTPZAKGQEFANK3LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 955E815E267
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:23:52 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id h6sf8111446ybm.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:23:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697431; cv=pass;
        d=google.com; s=arc-20160816;
        b=x6Sa14aBhufbS1RTqY5nHkzxDGHWTY/r9esVNR6YTiPJPqvfHVc8hn6h3+pFfLB6KC
         QB0PaI/axewZpWh+9FGW1meQFecNZJznivoIuVjWRKWNntl+hi6lDlVwQYKd8RHRl8mM
         IdKUDtyjuMMtQmLTlKqVN0U0p0yi7y0TLFlWEoaDdpiIczyubzNKlIsmrkcUSnH5fprE
         i8rI57prjbV+FvAh6nFKG7IyEe0c41lCpSob/uvXUT8SmnkGwQo77tzDsagJivh/hSdb
         VMHN4Ppz/3Wu6REIrR5TprUSC4NJORKZgpEvSwQm0If3tj6YovZ7g3ErxqCJwpRyZ7WB
         v1UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ctLbD6q7JEAF+vqliXzOFSu1NXZa3bV+he7vpYj1moc=;
        b=ml7JrupYXfYwAmZOYYzvL19errfkfih1E/IUxPtwJ/ylpflQdF8vlzZ5L1syDbM8hQ
         eGESHsDk3Y4AfSNLRVBVtxweipNXAC0/lsQWkHyppU6TE5pgSptZ4gRuasseBfuq7BtF
         lowUiXMt53Ivh0jLkdvrJMo5uZG3/btcFhf35tPPoD9MD8fcf46gkPdHIm6SLpePXat0
         VJlrfxUDRrrv5EJJrQPIGZjJCmCoFLFEdt0tcgN0Gq164DhjzseO9LQkn0CdYvG0/9a7
         bia5eIDCBlJ/KMoyXtgbrpOoKCD69iBm53LFa5ZLdbyVvXW0WuZiW+JoWVOAfgJUm1rC
         gqsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KXhRKrvI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ctLbD6q7JEAF+vqliXzOFSu1NXZa3bV+he7vpYj1moc=;
        b=q7CGtIfAlWkl98VThpVl/n7q7WO7zhQ31SebB7VRJWGOy+Mb2u71CUhwHm7tv/Sllj
         U1Qe2oWqpobfO7XqxWqoP2eZG4rw7Pm9KRsEo3acbGHjSwPKMMdXzbj4AWDxtYm7SOFO
         7iF7ZM6frQ1Mq4YDrqXX5yFJMH1wNGFHXgzcxpyPU9vexu1VQ99dZ66lT9ENy9r6pZ8n
         GqUn+MZqiYyvB7CqjOr9vD7IgD6xFQlmdqHPn3gaDC7XfrIM60ppb8nB4yuktIAQfzgZ
         sFwcrNQ3BohL7un4IRHjhrDo+7pZFp7yEbqcwtUfKT2W9ibBMLJ/EHZeOPEHkuppsq8D
         +rmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ctLbD6q7JEAF+vqliXzOFSu1NXZa3bV+he7vpYj1moc=;
        b=Yx+7U4Zt1MFrUmT/s3O7N5MFjK+AwbKQ2TSgs7Hi99lrRRamjr2o3PeWAhcf0th3SU
         67hH+pjO0UrVCYIeKMUE3tJ5tUlJ9ovxUQMdgMBCiXS2TMIyZM86pmleo/qGY2UfNO4I
         6KOHjS9iOx8ceG6zKnhBfU98YLp6DJuIyn2pLWzSqMJCvJ0fxgUfBBOKChhju3u2cAaW
         M0a9orfzVa+btlpf5hWe9XdrEmuNUkhuKlvFIJnuXFGzy5mT1KT291ryzKkZhVe7uNS1
         JZgT//NqMSyIw8sBTMG/nzEeFcUCjRF6BXWo++CPt/Q1SbIHXxX7m0xwiB81rsXdBG3U
         pqwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpead6ZfLQ/ml8gQL0RxMa7S0nHX9GdKpijBVtfmYaz955CzoX
	bD8fFccrwMublP5gzyw93oY=
X-Google-Smtp-Source: APXvYqyU3R5cpL5dQ8ZyGf9A9XTumQHbIHCpF/zvTcIUomn6srmg4OvB4yZumS3Mf0cWrBRY2Oq+ng==
X-Received: by 2002:a25:7cc1:: with SMTP id x184mr3574726ybc.322.1581697431630;
        Fri, 14 Feb 2020 08:23:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2e43:: with SMTP id b3ls534407ybn.5.gmail; Fri, 14 Feb
 2020 08:23:51 -0800 (PST)
X-Received: by 2002:a25:2a93:: with SMTP id q141mr3503768ybq.500.1581697431326;
        Fri, 14 Feb 2020 08:23:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697431; cv=none;
        d=google.com; s=arc-20160816;
        b=zU9RAg1WnCFG60Lf1ybeR2Iy6FTeu7vgE3LDAZsZXAVfGKFwQMXNli2BwjqIIjmJqA
         34XQvODOhvS3ceqXn+N3rGL8x22MNHocOctQbWU0jKA8xVk/i5sgdbNyMRZGhYZQ5ZnB
         uKemnOcFaoqITXXACQ2EuU+9N0dsTyHqFhtjGkQ3TSC0ci0fw1PRrQ2WXV0B9VIn8aeT
         hWSptrvn2RYTPGHmljyS8gsptvvWjkWzIXWCrLMzrzl73U7AhXvbhGLnLzXi35ToMSQu
         t1vtpUehHhXsEWUJYWA1hGX3MnDwy9s8DXtaGvgzo/J5gecPaUTL+2GCbMpUDA9afhfD
         HQCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zqoQ2dVUWliOcAmisyzj755tE1Qp5eyq7PHqtC8I77U=;
        b=EfnN7Ix+A7Fumn5KeKBDU5J1urOme07iPaAjGVojGC3CKOIqrtilgQN1jNWGLnWEw4
         VEUUROztbmCzLW5p8ijTaJifYVSPN/gSHrPby3UO6cXqGgGE6To4HPKwzlNbmpBfWuyW
         elLS1V2eZkoBQykpuTyT7iPX/Mg0txYpp5X8ua3BU6uymn81RS1ZPaQI+OLIah68qn7u
         dx9oOyrkzUHPNY9sp9tfXWvLstIl2BYOL6Bsph4ut0AAlGzXgjcpbpTRpmJYuP4UucTt
         xRDiVLq4kP3BZqLwPeQ2nOLtUFGCMkdw1blUKOMDnUcFQPFni13h+PkRnIj7MCPr/uJ3
         FCEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KXhRKrvI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s2si475949ybc.0.2020.02.14.08.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:23:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 33F7424779;
	Fri, 14 Feb 2020 16:23:49 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 118/141] hostap: Adjust indentation in prism2_hostapd_add_sta
Date: Fri, 14 Feb 2020 11:20:58 -0500
Message-Id: <20200214162122.19794-118-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162122.19794-1-sashal@kernel.org>
References: <20200214162122.19794-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KXhRKrvI;       spf=pass
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
index c995ace153ee6..30171d4c47187 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_ap.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_ap.c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214162122.19794-118-sashal%40kernel.org.
