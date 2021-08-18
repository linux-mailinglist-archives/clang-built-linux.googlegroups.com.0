Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBP6K6KEAMGQEJT3ZEZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0503EFB97
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:24 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id q23-20020a6562570000b029023cbfb4fd73sf816086pgv.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267263; cv=pass;
        d=google.com; s=arc-20160816;
        b=qomUAV1hrw+wVtrTArEL5/2/RyA+yLdkc5by570a6igGXuFq5babzIjmszvjg+IBgV
         xvOHI0hHZMEnMQow6PTB2IFVKXsReZ3Hz7ic2PXgfGiBmleUDIRB1WKD7SkmGWFjNobK
         QoNaD2Jxk0WvA0ZV860K+z31lUt6Gxm91upnAZ0ZxXGvllGjaPzBHiJny/t0B1jBT7gI
         Co+oyCCzFi6k7xRFWzBVe9nNBFBacuqwUxsKStbMech52Vjq6BPvt37/PCRvw5nXC2dc
         WxBx9aOMTMEP0Uv4qIvk3LAoe7/d9g8A0xbg88lt+SrWrpbYORyaHBoHU5nWY+NOxit4
         QC0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kKlrzq8LK01aPj0vkfcspLF0WSt9ACp+Y267pYrGRHo=;
        b=yfhlRn/BqUOw5NOxV70j55HVuz/tN3aEjToOKR4AY7fOjM+EBA4Pmd7kYpjFwnoTSr
         MQ2HE/Emk5oyautzENph4yORAceQKmkNXp8Ja3zHviMx29SdZM+ehZ7PZ3jPsynbK92I
         beq6DVVWFl5hHSn6TbAfT4Q7H5NGmResIsngNmv5ESGx+dUyMAqo9OiyD5iHKNhR9f4U
         xL0BYh84VeJ8Fs/0S/rOxE+G6tPfujQP+wJBFDR1AwrSmEwdFh+eoqEp0FIybsCI7DdM
         AXIgx83bbE6dv+a5kZfQh3nRevalDcghxe8AGNPH8T7ak4g4nkPduqf7t6FU+4SNQAVY
         BrcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="R/1OtHvo";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kKlrzq8LK01aPj0vkfcspLF0WSt9ACp+Y267pYrGRHo=;
        b=XSNUuviu1SrMYh7Fx/BekAunjaphFIU0Cvb1WWkW5aqI5o6027N6SRLSu4ZuDKCOA+
         4+8fVlt+ZkBvPMs4xZiBviGKlxd2hmKXwscRG4ajP3ihApZHIHSF11CMMG9VdBoE3p8h
         fXvP4bxIGnvAdjlvPK3vfJ48pLXGk5wOXBGjxhYzWIijMuq8ds5OqZteqkPOaPMt6WJX
         P+UMa6Obbj2N1VLKNxj/JbySWX13cCME9EebaEEvTbozVJFuKRsHQnCqVyXlT8BXnd3j
         YzY2TeqOMVjJUtCccfjHMsIC5EDK4eW9dXavNZTC6EwaNDY/37tg+Zi0K9OJKZo8Tn39
         GMWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kKlrzq8LK01aPj0vkfcspLF0WSt9ACp+Y267pYrGRHo=;
        b=nmThMM0w3/oz0xefTVYVssjjZXFHCtK3kaU3P1FIcz8aaqzt8CFXZrA4bS2PJvVEew
         hyMB9eCydKId2Sctbn71zWoUtnU/i40w2gNJWmdhhz6/KWCYoU/1qfyOKmXRfKY2H7YR
         KuIzLze35BeRGjVvMIO4bQCXhfUtprAKK3fHcyjFOeajJtq5VH43FgFyDb3LD/Db/FZV
         orneUZuwR0nKbB2K2cp0XU+b0HB8/Ly6AENUAas5TFDZS3tSxYrklQfsL+bToPFvoT1x
         uNprq67RKDZmJAsWciQqYSmTUPtIgAM1i/Ya34YR5Wl45dV3c4L38f98/mRbXhpASuIf
         E2/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lzfOfU1wIB/OYdbZIxMYztNvsttbX3KLEOgLLW3D4cSQof3Ty
	H7t+MknC20kcZdLNrdpR5ms=
X-Google-Smtp-Source: ABdhPJx0XkNX1D1oAHDrS+RGLZyNpkKib6BHgv36QbHFgGgr8OEEphZBXQYF3ONZZ5uCEygEOVH/Zw==
X-Received: by 2002:a17:902:e291:b0:12d:9d9b:7e5b with SMTP id o17-20020a170902e29100b0012d9d9b7e5bmr5905695plc.4.1629267263388;
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3154:: with SMTP id x81ls676012pgx.2.gmail; Tue, 17 Aug
 2021 23:14:22 -0700 (PDT)
X-Received: by 2002:aa7:8e56:0:b029:3cd:c2ec:6c1c with SMTP id d22-20020aa78e560000b02903cdc2ec6c1cmr7427452pfr.80.1629267262755;
        Tue, 17 Aug 2021 23:14:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267262; cv=none;
        d=google.com; s=arc-20160816;
        b=biDXR+4QObjA6drPaoo0Y+ynq2FF0r66opOxwY7DfS5oH78yCIlVuEDoSuRuOTLkvj
         5RQPTGSP41qHzLI4Kvb3QnJD1gyG7moNUjzXgn3gpQk+cWSQb9gjb/CYVp17R+2i+qeH
         ASSmDkR8bUtkeFDBWUpOqZczRYClISfAUknIMEnqeaqJZtotCkzFe+qKNy0OC9Rlju+j
         aeS9ytTCTmYMAJctEoZdGgprLH2k0zGPdqb8zJNSFSRb6BTXnkBKD0iGYT1sVIf4/Nlp
         QWhVgkQUOUy3zxcvy5rHpP0O8AN3VvNwr0wa1dKiIXGM9cAcButb2MP4/mYwxsu1RwBV
         BW0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1LbbD/YHfDVHNeuHjhgxvKcBP+1WtTwantiuN7hQzxQ=;
        b=mtdgbZanq4WgNaCP61opz5DnnAyQd0/oiDlQgPDiyJhVQFNTZT0syNJlLX6VQ/pIi/
         80ee2b+TIEfNi4gG6If25PoDuNDN5fYEuBqvRCbZIxIp8Sz45cbOoFiO4vKf1PCmzl8z
         xN9pZlo6izw3XkUDgWl7Gz+k4V9nPN/hX7ylGps4EKG/bgIgaxjAAmjg/IyHr50sUdYG
         Yc7qgh4o2zgMIFtdV+stuL16sdF67VehU90OK6p+eB4Q4UOCLN/GOF1RTmHE+XrAlTHY
         j0SBGeKkOE6JRiO4Xvvgmn/6jDXr+Uyh9v9eipa0P9AQ+E5EdU4mO8lcl2GIVq/63PZ1
         nX+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="R/1OtHvo";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id c23si268086pls.5.2021.08.17.23.14.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id bo18so2026277pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:22 -0700 (PDT)
X-Received: by 2002:a17:90b:360a:: with SMTP id ml10mr7562259pjb.134.1629267262532;
        Tue, 17 Aug 2021 23:14:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m2sm4664262pfo.45.2021.08.17.23.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Johannes Berg <johannes@sipsolutions.net>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
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
Subject: [PATCH v2 44/63] mac80211: Use memset_after() to clear tx status
Date: Tue, 17 Aug 2021 23:05:14 -0700
Message-Id: <20210818060533.3569517-45-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3555; h=from:subject; bh=jIEORg6wH0RDOzc/SbRhmDjozuh0HKi5XMaIwXi52DY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMn1+XywUWgPufzSUanBKkFtpljUhjVl6XdrCJz 43V0wceJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJwAKCRCJcvTf3G3AJh5OD/ 9VdGJw1yYkd3gefk4A5UR8RKWnRGhCsbm09zznQ7YsRWg1t+N+YFLA4AFq3FqxFeqDG3jzMNoOsdTO L6w9PUmC/a9IT1z+It5L++wcgxo3uVfAxiDShSCXzCwqbKDVcSrgSTJgJPulz8y1znwvAOPKF64eH0 pSX5zFI6NJwx/mf9nIe+nz9g6VrdmWmHR7mcVM4AIklt7/5RSv325yrDnFLwAyB9rv4exDMh6Egpxj 8sF1D3Pa6Be8GmmXNM7DKo1oqmwnfhplZxkHPfRIFSXVTYwQNGJUx7dCkZsOWVIcy3w6u50Y0mU9DG A+XMuV8TDHlOIEIwtbJKGnvgGkIhTldX5Wd95E/0PKvT9wVgxcTgJUCXhO6V/PfeIWGU6PnZ849Td8 U6ZP5aiyGS6/WCMJuj0tczg2lozZzkge3SUEkNnYtQCKUr1vHrynm7rYVjMrIIvJG275gaGz60NbGE 67lI4Kcj/LGkuEZPVVCVwWeIwkVBaqWNe+W2D/Gs/U7WC+8+e2X7y7YmCXoJhak0Jjoz1KHL2NKG3c 7CTZmKih3SVwYKmzxvKgHmp8I/RljMKmk4PyeSMncOwCjk5UYHvkRAslkthRz0xs54C82JmN6NSLCC Y8i9yUKlOEZkCSxm3fC3nvo3ctL36pHA5wrQEu1m/IneouARaiIxI65dilNg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="R/1OtHvo";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Use memset_after() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

Additionally fix the common helper, ieee80211_tx_info_clear_status(),
which was not clearing ack_signal, but the open-coded versions
did. Johannes Berg points out this bug was introduced by commit
e3e1a0bcb3f1 ("mac80211: reduce IEEE80211_TX_MAX_RATES") but was harmless.

Also drops the associated unneeded BUILD_BUG_ON()s, and adds a note to
carl9170 about usage.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/ath/carl9170/tx.c   | 11 +++++------
 drivers/net/wireless/intersil/p54/txrx.c |  6 +-----
 include/net/mac80211.h                   |  7 +------
 3 files changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/net/wireless/ath/carl9170/tx.c b/drivers/net/wireless/ath/carl9170/tx.c
index 88444fe6d1c6..aa95d1a65882 100644
--- a/drivers/net/wireless/ath/carl9170/tx.c
+++ b/drivers/net/wireless/ath/carl9170/tx.c
@@ -275,12 +275,11 @@ static void carl9170_tx_release(struct kref *ref)
 	if (WARN_ON_ONCE(!ar))
 		return;
 
-	BUILD_BUG_ON(
-	    offsetof(struct ieee80211_tx_info, status.ack_signal) != 20);
-
-	memset(&txinfo->status.ack_signal, 0,
-	       sizeof(struct ieee80211_tx_info) -
-	       offsetof(struct ieee80211_tx_info, status.ack_signal));
+	/*
+	 * Should this call ieee80211_tx_info_clear_status() instead of clearing
+	 * manually? txinfo->status.rates do not seem to be used here.
+	 */
+	memset_after(&txinfo->status, 0, rates);
 
 	if (atomic_read(&ar->tx_total_queued))
 		ar->tx_schedule = true;
diff --git a/drivers/net/wireless/intersil/p54/txrx.c b/drivers/net/wireless/intersil/p54/txrx.c
index 873fea59894f..8414aa208655 100644
--- a/drivers/net/wireless/intersil/p54/txrx.c
+++ b/drivers/net/wireless/intersil/p54/txrx.c
@@ -431,11 +431,7 @@ static void p54_rx_frame_sent(struct p54_common *priv, struct sk_buff *skb)
 	 * Clear manually, ieee80211_tx_info_clear_status would
 	 * clear the counts too and we need them.
 	 */
-	memset(&info->status.ack_signal, 0,
-	       sizeof(struct ieee80211_tx_info) -
-	       offsetof(struct ieee80211_tx_info, status.ack_signal));
-	BUILD_BUG_ON(offsetof(struct ieee80211_tx_info,
-			      status.ack_signal) != 20);
+	memset_after(&info->status, 0, rates);
 
 	if (entry_hdr->flags & cpu_to_le16(P54_HDR_FLAG_DATA_ALIGN))
 		pad = entry_data->align[0];
diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index d8a1d09a2141..4c469b04de37 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -1197,12 +1197,7 @@ ieee80211_tx_info_clear_status(struct ieee80211_tx_info *info)
 	/* clear the rate counts */
 	for (i = 0; i < IEEE80211_TX_MAX_RATES; i++)
 		info->status.rates[i].count = 0;
-
-	BUILD_BUG_ON(
-	    offsetof(struct ieee80211_tx_info, status.ack_signal) != 20);
-	memset(&info->status.ampdu_ack_len, 0,
-	       sizeof(struct ieee80211_tx_info) -
-	       offsetof(struct ieee80211_tx_info, status.ampdu_ack_len));
+	memset_after(&info->status, 0, rates);
 }
 
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-45-keescook%40chromium.org.
