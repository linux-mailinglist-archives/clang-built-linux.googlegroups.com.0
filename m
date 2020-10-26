Return-Path: <clang-built-linux+bncBAABBK7G3P6AKGQE7DBRV3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F2B2991BD
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:02:52 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id d6sf6475181qtp.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 09:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603728171; cv=pass;
        d=google.com; s=arc-20160816;
        b=FUFbIz8oWvpQlb7IWBXjgNGwxbBEgbHnLxwktD/Z6vZvM3zit4iabx8NfCYqbbLkuy
         8u9kpgAuD5NPCPN0P8+XoQ2A/0Mtst883zRpI6cjp7UM1hqs3AC19JruFekuAcJhCCtY
         GcLNlyatk9fedudyEZXIlQEGUwT+zSKpGql9VFOrm5ateM9q6iCdlpRgtPW46zVYUgw2
         yvr/G38b6jAlDzGQfsyBJbvaUWuA+iAeByOxubmrFP4Ic0v0yYXO72zsaOWdPm+KC/v0
         NtmZLLD6pLVTw+x29jKt+let432xNX5Aa/+VgA4FAvLWc40DzQ6NmAroFroh6UCJrUPk
         r2Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=J9CyjLLZuEY8mFz/1QojJoK9g5D2VvM68veKvAbmAOU=;
        b=evLNDZjcrikiHs554oBS71wW8SPoFu2OIL2xbG8jXqFJR0LdQeckYMgczXq/zYdX4l
         CAGdO5uncKaiOVdkrLyPdHtgLULwOWU2pkZWwCTYq/lcHMZbe81UNspuldCowEGtbacB
         0HoypbiPuI0nVob6iIzsI1QttkbZhreWzyWVdS72zUQQEDJdzX3+C6u4sEngCn4MxeOR
         VV2ZKO8XtR+pImTCe5QQiiuvVhjfiBCBMH3WH66JeenqXWGp0wkElNMteTMjV72ow7UF
         R7J8IefxWmgm6IwfuW2x7Y6HPd3fBGEsLct+hBjhw1K7eM5uVZawBdj4A8ffKEvnkAV5
         YqoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BTfvdDFK;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J9CyjLLZuEY8mFz/1QojJoK9g5D2VvM68veKvAbmAOU=;
        b=X8F1m9aJzkItwnyEKlg/XlIAooWHZkmBcOnz7ie8HC4iBXUBAxIwOBcAGApkBa6xrn
         zPYelWKbqftgqSopUeVW4htOmGdvRvJHF/TEDvcNQQxHfShKDZ6GayD0ZNI2aYOHwHTe
         teWZRrbozukzraNn8STMx6DOcqPBg5b3+7N/OL2ACBgUdg4nc9SOOQttB42lAiGDiry/
         Btj46gah8A3QIMqGVHg9TekwEzVkExs3Nj8oKX+o4Vt0pRQzmgL00BX5BV/geD7RrlU5
         phQIRYOjb7l/rg2Ye+FUfEUtYMP2TX/nIWsBH/i14uWZDHCY+sd7TqmDzku/YRxJwRbG
         EX7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J9CyjLLZuEY8mFz/1QojJoK9g5D2VvM68veKvAbmAOU=;
        b=bmvQGDjF26r8kGmIW0UYbuI12cB0H2ODTJ9XPb7WHmptzhSYXOC0U5mNTY6rBmTkGr
         ehwb1fTFGy9fVJipsgknKT5shZV/SsZjTVy7gf4kmp1Sp3N/+Lw/ZSmpWXx08/Ya/54A
         Gc8LMxfgSbc2hVaN1NJeXCte6/3oL4FacNDq2/3HGkCMDN7ENlpaMetLjvPpvtHhvYBn
         uB0ZrgcKcYEKnU8FklwxKtZvHaThUORitoBP2mp1rCLpiUek5YzVcV6bdhHlgWovolkA
         PgGyRvKl1uHAsHwUMlcB8Rjdj096D2S8eW27iTREaaNP9RtfwHAbmORomTgyv8N+FW/j
         iccg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aN23rNjMF0gbio6ygWPd3PpCxjBwcRrbnn4Jngr0r1h8BJnTa
	r99Kmg9niGjKUqUO7pHoXyM=
X-Google-Smtp-Source: ABdhPJxKoljG1BZ2V11SFiykrPoncYHzQTE5abmDsyYsU6Goprj34aijHdb33JB+W/PZsifaPJwMLQ==
X-Received: by 2002:ad4:4141:: with SMTP id z1mr17858130qvp.33.1603728171534;
        Mon, 26 Oct 2020 09:02:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:134a:: with SMTP id f10ls1324850qtj.5.gmail; Mon, 26 Oct
 2020 09:02:51 -0700 (PDT)
X-Received: by 2002:ac8:4d05:: with SMTP id w5mr17769254qtv.25.1603728171123;
        Mon, 26 Oct 2020 09:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603728171; cv=none;
        d=google.com; s=arc-20160816;
        b=S8KCPqS21iaJXFs3k5sogvUw8wjK4rmPdYBjcnBy37z951xGYw3CE6cWhZLsRs9mUC
         fHu1W9b34gR/xltS6q0UkD8Lh92HQBXaS1JvYH1gRHjrhL6MkVvJdK1JNCgrsPJH0kXh
         sdcXKNO0JeVCeOaXU5+e3hPjBz/VFPxSYVmNOEoV29VCyRWG+h60watBFO9tKRI5B+Cp
         sCe7cR/zt9wZNbxlFFepNileFNU0O9T8BhTQ22bhbEht5iWXc7K7L0I1Z3XAz1A+dAq4
         aF5Qd5VHLRSDeqKHQHR4+FdPpDETTyDLAd6dBbs5MTJvybS0eDB7PrEsWZYXGva0XeUx
         UnXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xv2LtgqbB4VuRbUj3R2P/Tuhw/Fi72tnGaq3Fp2Dmh0=;
        b=KSFUb78xU6j0UhbuEn+9/YgdSrj+lJwUxsJf6ndUqCSNjIcW0+0RbMcZpFnat+dG/b
         TxlWsHnv/nytlHjXxrgZntawxv/inoAigYNLnE1jaKi5qq1Oosmh6F95H6fYylGgY5JZ
         pRoVxHg3BWgPDYLWUuZFhRE4eBKDor62gsP8XxnLJuqYFJh2VJN55T/PRoEIxUUWCZMb
         /gKl0IDa4a92oB7ky4Lef298nkdW3cdw1lEhn5Bi2iWf3WdqeVxpldJu/Rn1N2mnd1u0
         FGXKq4gHtlw+BnwSlKfV66dRnkzpsP+p8ICoxvtDqWsG07MqisKlX3Vx8kIiHZRUqmjw
         mg2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BTfvdDFK;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b4si109426qtx.0.2020.10.26.09.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 09:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BF89222265;
	Mon, 26 Oct 2020 16:02:47 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] staging: wfx: avoid uninitialized variable use
Date: Mon, 26 Oct 2020 17:02:22 +0100
Message-Id: <20201026160243.3705030-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BTfvdDFK;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

Move the added check of the 'band' variable after the
initialization. Pointed out by clang with

drivers/staging/wfx/data_tx.c:34:19: warning: variable 'band' is uninitialized when used here [-Wuninitialized]
        if (rate->idx >= band->n_bitrates) {

Fixes: 868fd970e187 ("staging: wfx: improve robustness of wfx_get_hw_rate()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/wfx/data_tx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 41f6a604a697..36b36ef39d05 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -31,13 +31,13 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 		}
 		return rate->idx + 14;
 	}
+	// WFx only support 2GHz, else band information should be retrieved
+	// from ieee80211_tx_info
+	band = wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
 	if (rate->idx >= band->n_bitrates) {
 		WARN(1, "wrong rate->idx value: %d", rate->idx);
 		return -1;
 	}
-	// WFx only support 2GHz, else band information should be retrieved
-	// from ieee80211_tx_info
-	band = wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
 	return band->bitrates[rate->idx].hw_value;
 }
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026160243.3705030-1-arnd%40kernel.org.
