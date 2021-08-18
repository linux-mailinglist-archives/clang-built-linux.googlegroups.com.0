Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBO6K6KEAMGQEOPRB3YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BF53EFB8F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:21 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id a91-20020a9d26640000b02904f073e6bc1dsf488396otb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267260; cv=pass;
        d=google.com; s=arc-20160816;
        b=oty1K6hWYvB55WyQ8K3epu6YukLqHuqm4N3KhzwT21lGag707etIeYL66EeLQGznVh
         Bksd7+mGHJIOrLvNPCIl6+Zen+F8Cwl1kKPGEcIcM1/Qk4vpdb5sb8K8OVDDtm7sZm7O
         2laH0iKIuZS9kEqAvYdbmN7JGzJ6x2sqME+nzlUIkQigy5+8r8QCAAukeBzno7c6bOQo
         KH5i+8rHvm+2vd04tecnuRDovE6I760l3I5tir+SB3O3TYhKSMCsiC5UIPL+/absYtQM
         eVOt7XXtDFoQCe5VOF3zvwIrd9dZ/O7i89rFa9mEMYv6voUJX0XnI8hWJqEkMn5b+GR8
         Rnkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y9m6xbUhPtE+BUDuShtwtTTVZkoKkgO+K49+wgLNzrQ=;
        b=T3TlkhEmmehgLHXnZDqLEhiGoi61zGRSrWl1P1z8LMvm8dVE05qPr3MJq87c/jUYZR
         Csmy2V1u8QHG6qghgqIKTCamrY0CPZYt7BIQ3oK9qnoFTX5FcHrULsBKHEXWmuQi4A5P
         qakjZ83/vQlvsLiBiCU7iFUk9KXuUeUuCIHB3uzgN0Yfajik5+yjOEgs03Bf0KBeRgia
         n22UNwE3JahD/XJ32p3N2kvdnTAC0Lq8AstI6rom7h9yPYx4426SkkPhQHC1Rpx+AS/8
         sBX6VW6BnLYa22oYn0DhiSdrIW1O+J/ur8IrybKOC9z0ECZJLGvUKnM1kncfRZOhqA8f
         oOoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TxRwedVV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9m6xbUhPtE+BUDuShtwtTTVZkoKkgO+K49+wgLNzrQ=;
        b=NFS30s58f6Le4tc4xf8btzYzwLXhPm1eaOhhlDBlZjDxWKsAgOD11vtEUkNtEzdOe7
         A9W9q+8niOYzyyDHOMBGbvz0JKSmx2G/hcECI6yt512LKd+a0i2fkez78WIYLWQuoVkC
         0rOrP4V1LtQiU+DQT0ZcF96XFEZgWbenHiw0t0Nyt7UzmwlyRZ/GdEsaMTkxiKQih+V9
         YyyDNzK3hkQ3xc71WJ+4hDfjlG4wT2kojGI0lx3rYZK7rHd530lLOkSsFMsT5acJpLuj
         FxaZgOtKhyzExusT2ib2Dc9Es0PNxYKT1ZEejUTL/Ce8jhTpTIXdDBJcUW5D4R6eqF52
         fT9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9m6xbUhPtE+BUDuShtwtTTVZkoKkgO+K49+wgLNzrQ=;
        b=a3R+u6IoAMIk+MuIFtF1iQ+DkbWa/XfDNjhyTqGCIhlc8MNk3YgCzMxi1y3U3h4G7b
         dOQccSVfwq3dgssS52ihyyzXa9KEpGwjGrN4FrbaWYRyirEsA72BNe1xMP32r7ltTAlF
         pEFOkbS51xXaZEloyT/RXEGsjtKVgA/lx49jg0bP1398UV9eVfYwlx0SCgEM4yptsDF1
         q6HpLH8sQso8ICe1qHRv13RDSHWiiSA2PtKBSFkUMslLVcahApg7SSV9lo1U6TylYUGx
         4gCNgEIF+wocgAg6mxhGqnw0QjSfWC89y5tNPOMkcd1KE1SoBto+tCxsu2C7oPJibdzJ
         SbAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o13FDg13E+znNJHB9nNuIwxY1cND0vh8O6Puf3MWbFQJPrg7Y
	YQ2NX1jrlktPNI7ujWEePnU=
X-Google-Smtp-Source: ABdhPJxdMypfw222gcCeO7S1WSL/7QvMCKZQxfQqGCTEr0XKfMd3+nYgz/N5h2cVOS1zlg+nJPg/2w==
X-Received: by 2002:a05:6808:14a:: with SMTP id h10mr5756152oie.17.1629267260012;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a05:: with SMTP id y5ls302458otu.2.gmail; Tue, 17
 Aug 2021 23:14:19 -0700 (PDT)
X-Received: by 2002:a05:6830:1db6:: with SMTP id z22mr5708378oti.300.1629267259636;
        Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267259; cv=none;
        d=google.com; s=arc-20160816;
        b=vyLLAb+LfTjFaLXXAOcoCkSWfWtt12GlNjD6DMdDWKCLHzCOoQ8857swHwZRds96uv
         /GM+m4P+FxVymwliUeHOP0L30/ACUNs5dw77shZOBSJLXdlQHbLKyh3gvJkOWdU0IAbN
         Z183P+/6kpUkVHnkrs7TbhuivwvEIHtHcuOwDVWpbwnAuST+H/4ve/4aPLK0zvBcxF2P
         YmFLfoHTLiEFb7XkeraktmReSZuJgd51MxEdMWn7z0YmoLohbnFULnbBhcKvvWhaGIhN
         RiTbLzhfoTDevuwvQ7jii1ddh8wgn45Gerz+uFkNw1Na52LrOO1dKuodCYsI7mrDnQYF
         ta3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=N3Iemq6IfMq8jyV2u9omGTepmgQD8wDuqLYjs8itz1Y=;
        b=x+EYfJ2JVGo8zwA3liDMyKz52zejHkAXKHX2/t0zWMauAs0B8Bg7mSOglfh7Nx+kcC
         PhciHJ2eTIuD0mEtRk4DEonQDFHPoWMuue3Z49OTyjEsD1Ll42ANBvYlOt6QYhaOD0ng
         m1Jo49HvJC3yJpduWzmULB6uTk3K4R4i33hBTMdwwKYuh/khm+ECXNJb1GXDwX7h8mii
         FmcIq3hSE0jasSYvBIp5tr9dDGHwELXZENu1SbghYodaeg4xAucWCk4CajaaWAstP72l
         PcHEmA7tIACXnQiHfEpB9zGlCG4R6Vapa2uHGGyoEbeqBLUQg5lOTNn6btoiblttbIlE
         1urA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TxRwedVV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id a7si248498otv.5.2021.08.17.23.14.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id n18so1158587pgm.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
X-Received: by 2002:a63:cd02:: with SMTP id i2mr7277459pgg.116.1629267259068;
        Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z9sm4655621pfa.2.2021.08.17.23.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Jouni Malinen <j@w1.fi>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Lee Jones <lee.jones@linaro.org>,
	Allen Pais <allen.lkml@gmail.com>,
	Romain Perier <romain.perier@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Vaibhav Gupta <vaibhavgupta40@gmail.com>,
	Cong Wang <xiyou.wangcong@gmail.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 15/63] intersil: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:45 -0700
Message-Id: <20210818060533.3569517-16-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3106; h=from:subject; bh=zQZGxBfl7dAgG5tBG/ZLbaDQfVLnlG18JlpAF80qB7s=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMhrEzcBPUO2fJ4Pn+xRO14SATLeMOS42x+QUKW 6CMu31qJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIQAKCRCJcvTf3G3AJjCpD/ 0bIdtbe2MXXc36t6JnE/BOu31oCVMunfUwVmUuWjcW5QZKCJKHCaWynEtZ43tRXaPeLyqe2eluQQLX mxQinp+l5Gk6QLjrZ/2gCmzu5dy3Ll0/1wKJHvFSLUCL4ll73Dl/CpGN9Gflki+/WsFSYz93ibz/z0 M39dEpmzX3sxWiz9mnlMByQXhV/tSjSUHsC/tgcT8GzKyWO3TMpyWD1XDQCrzLJtKSQi8YpAM59d9v mfq1ifJj8/Pr227Kk8ZL7KuWz86p/CiKS6R/QqrQ43x+fO1u8dB+xui76UQiHTj+vGBAUCqvW30Bfd g2qbVS2IkFYfjmpfNjvavGsEMxqM5stGW4RqB9jSuZ4tiEXwey6K9+85Nx5lTJyKlU4YCadcNdpEr3 4/oZM06OB8PnSr4lwMAjzFhI6R0fChF5uJxb5fb6pm5hRzt5+5hlgmAopQdTaxyhDK7JO8aZOWd6oV HIrlagRF1x3sVhMuP2UMukVaahRXE6seQlBvx68gpW8OolKr9O58KEWnVxisYzpFhd2vATCBNfT5be wFUq5DxkidJPPpbEzvf40Fgl8vb7r1fbY9+Tnjy4SrwOMGmE63TRwUAhpjgQSgYHKdQMk/8OplMa30 BXm38AUk8ZEnYTmCoH5mEsYfE0KahJm/YgOEspR8zcg/IvsloK8a6Dl/Fx5w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TxRwedVV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct hfa384x_tx_frame around members
frame_control, duration_id, addr1, addr2, addr3, and seq_ctrl, so they
can be referenced together. This will allow memcpy() and sizeof() to
more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of frame_control.

"pahole" shows no size nor member offset changes to struct
hfa384x_tx_frame. "objdump -d" shows no object code changes.

Cc: Jouni Malinen <j@w1.fi>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Allen Pais <allen.lkml@gmail.com>
Cc: Romain Perier <romain.perier@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Vaibhav Gupta <vaibhavgupta40@gmail.com>
Cc: Cong Wang <xiyou.wangcong@gmail.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/intersil/hostap/hostap_hw.c   |  5 +++--
 drivers/net/wireless/intersil/hostap/hostap_wlan.h | 14 ++++++++------
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/intersil/hostap/hostap_hw.c b/drivers/net/wireless/intersil/hostap/hostap_hw.c
index 9a19046217df..cea8a9ddc4da 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_hw.c
+++ b/drivers/net/wireless/intersil/hostap/hostap_hw.c
@@ -1812,8 +1812,9 @@ static int prism2_tx_80211(struct sk_buff *skb, struct net_device *dev)
 	memset(&txdesc, 0, sizeof(txdesc));
 
 	/* skb->data starts with txdesc->frame_control */
-	hdr_len = 24;
-	skb_copy_from_linear_data(skb, &txdesc.frame_control, hdr_len);
+	hdr_len = sizeof(txdesc.frame);
+	BUILD_BUG_ON(hdr_len != 24);
+	skb_copy_from_linear_data(skb, &txdesc.frame, hdr_len);
 	if (ieee80211_is_data(txdesc.frame_control) &&
 	    ieee80211_has_a4(txdesc.frame_control) &&
 	    skb->len >= 30) {
diff --git a/drivers/net/wireless/intersil/hostap/hostap_wlan.h b/drivers/net/wireless/intersil/hostap/hostap_wlan.h
index dd2603d9b5d3..174735a137c5 100644
--- a/drivers/net/wireless/intersil/hostap/hostap_wlan.h
+++ b/drivers/net/wireless/intersil/hostap/hostap_wlan.h
@@ -115,12 +115,14 @@ struct hfa384x_tx_frame {
 	__le16 tx_control; /* HFA384X_TX_CTRL_ flags */
 
 	/* 802.11 */
-	__le16 frame_control; /* parts not used */
-	__le16 duration_id;
-	u8 addr1[ETH_ALEN];
-	u8 addr2[ETH_ALEN]; /* filled by firmware */
-	u8 addr3[ETH_ALEN];
-	__le16 seq_ctrl; /* filled by firmware */
+	struct_group(frame,
+		__le16 frame_control; /* parts not used */
+		__le16 duration_id;
+		u8 addr1[ETH_ALEN];
+		u8 addr2[ETH_ALEN]; /* filled by firmware */
+		u8 addr3[ETH_ALEN];
+		__le16 seq_ctrl; /* filled by firmware */
+	);
 	u8 addr4[ETH_ALEN];
 	__le16 data_len;
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-16-keescook%40chromium.org.
