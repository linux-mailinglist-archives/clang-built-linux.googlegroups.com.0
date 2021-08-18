Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR6G6KEAMGQE2YEZXVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id C417F3EFA9F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:00 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id v21-20020a05620a0a9500b003d5c1e2f277sf173658qkg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266760; cv=pass;
        d=google.com; s=arc-20160816;
        b=upsDeDtc+C7iH4jSf01Ie2DaRUgy3rTS99AYhqxxIUDqA5jRQS1gkgNtzM1dUWTvyi
         ik26xIgV9m5z/ODp85RNf+oFDnFAPa4tDA1zCaHGAXr8Xps+Hb4sdwE8bHziWwcf1q9o
         xnTcV1LC4VCtUc8AUYas3H/dlwpouzvdJ4N7lDKoTpByExkO21HGd4d1C2z5L44uchfa
         vKsO7FkmMMZ/GZNs6H3h3ynWBlzwFeH+5gisqFTTV/PEV43s0/qkAV8a6K/q+zgDtOFK
         ZtJUL0pey/ppJ2KohlipNw2siyh9bjikauAM/53soq3sjHfLMhT76MT3Kf7kUXWXHB83
         Yqsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CvagOj+uYcjhxWBEYFAEJh02PCENLUDVnhe5lMsABAs=;
        b=ZI848XJfMs+NawwMlGEblDR7/uv0jDRejOs+wJ7HmRgEw3G74JOcd+KQwKfc37wSyh
         ND2+mYVdl45eN14hJarj/iXjEfwqJbqtDuznBmrU2UoEyiW1ekr37/WNBBdE8pdC1ag6
         JFh7ezeklv00N3LpFWvHxh8Ag58vQPYUauac539qtMrXWaVYy0o7GQc8dsFdPw2aRamn
         GUNobXJdwu/8xs1w/mGvDmgs/Ne0RtVzpB2iz1v7H53NLDHB1DPESGizB4hEQS/R3ouL
         2X4PlJOHiz1BPQ0ZFTyn4CEChwp9sg3I297iYAciL8VzKJ+zKoTcdzOcI3igFBEMoiyV
         wb2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NMAt3Z+v;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CvagOj+uYcjhxWBEYFAEJh02PCENLUDVnhe5lMsABAs=;
        b=gBVT7kUTFEbcO+vnlDI4Ab1KJJvt2I6rmK+tGXQhYG3Ke9BRmmDHpdKanLCJp3/0h9
         BYmvRBCtUT5CpMksMRVhPqTQt9SDTHJpw1/6bdX6FKr89zvfSfSDttKL8ZTx/kSL6xBq
         aPBmYgnoH872+VTgbgkRHFY3K2dIEpqZo+NY516+CdfNA4+sAVTrMvhf4WI3yrZx7swg
         ezgJargHiONT7vkIcYSaLUgjIr5nSqVyEuLnT84NRK1a8UXn1Xd/tA9MYcFfZgl2c12V
         HTr6sBkhsrhLpLHtnLru8nPQ8Yls3e+D0Q3hNrrirJVskZ8kM2vHSzr6TpyEwTSxET4f
         qXew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CvagOj+uYcjhxWBEYFAEJh02PCENLUDVnhe5lMsABAs=;
        b=ExejvqDkq0umEzRhrUcoDfIHoqOo1EbBrKaDXoSvX3SVUFSfEZp2xCs0S+arbUy/PG
         Q6OIno3rQ2ItFKuo3Ame+MD4h9vZOHBVHzhF18bc3NbOsJ5CXixWUzcwHmkrhds0nr5K
         1fZbGAha6ISbDnAFwMBsVIL8lp+FlYyFEsvelfw1bQqF7l1NyKHjnJbqgvLsZ8qDwe+o
         k2Z1XjPrfBDGHj3QUYMwReI/bN7OjcxjuHA/QfG312KHqhzh4a2zKBhurHPhCL1DQel4
         lGq0bC227xo0IKXg6vmndCzVmNmS+2kAazv+siUp1DJReHNkgpIzbusbFTa8czV924AI
         KM/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532g2F8mbG0woStl+WKnv+tJgHNLYk+bc3sMPJzc6/p6SXp+xvfj
	zoe4uKvhcwcruTBvVg7nfcg=
X-Google-Smtp-Source: ABdhPJzxXVqlcrdjSqqwzfIvxlN5H9iz3rZExEcEBECTKAl7TlTi7Ox/KBSuMJXBQ4FkfzUCybvn6A==
X-Received: by 2002:ac8:4f04:: with SMTP id b4mr2817452qte.301.1629266759876;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1002:: with SMTP id z2ls525139qti.0.gmail; Tue, 17 Aug
 2021 23:05:59 -0700 (PDT)
X-Received: by 2002:a05:622a:188:: with SMTP id s8mr6568917qtw.87.1629266759380;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266759; cv=none;
        d=google.com; s=arc-20160816;
        b=ak57x98knNDDwS8iwJOjkZ2J9txSsmKKcLHBfisf2Jb2Flr6Fa2c5owySRV4cEFpzD
         CG/mkr4E5BqN1pAd36+Q7PEOueZSZbO5scdMVvu1PbDr8qYqQ3s8BL8NsjnUfdhW/FkL
         owiRADCS+RSrJh6ObUzuzKY5WxI+KBYKPQ6WhJ5tLAsh6Fvs0MbLl/Vdy7TIA1cvqat2
         cCUxo0eQjIyvhgdHwvbH1TxQSAFYiuhZLUWtNqGPMsM8b2q8/auFab0qg32n83I3a2HL
         whB61IK1etGCM6c+mfby2SIWs1vt9LeyvQwfBTSeyULNXmrkS2uwgzY3RKdVLtkzhYl0
         UPkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MfvkDY5kt3lyAiNJVhXK5tG8hqr4QIBOkdIIoSIpZoY=;
        b=SpPSVMmBztizXi7JsZIMRSQicC6DgQ6bd9YQhxCuMqi7iv/2iK4F5SN3sXjVeO9E3o
         xPeEOb7Me4MtWcl5zc+IsRrWv15rbddGc6xrF+W9onaRcJvAGBfXtGAyV/sIWP6S506F
         T88gZ5FwilTlvvcOCCRVoh/JZuBWgsd3Vj0T1lLcenrz7WrShQ4etcmr9pIPrx4LWCdr
         JSFCUe8BC2YQVn46qO48scdN+YEVb2pNV9D9K3MpgHX71d0Ll4PBObs1HstX3rdW7Yte
         MMV9seA9ieXWsrVqRYvOcBwQ4ymw7mC5ag8uRhqFt0u41phSsJdOQBzoKiMYGxlJKRtg
         4VTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NMAt3Z+v;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id s29si231734qtc.5.2021.08.17.23.05.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id k14so1142824pga.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-Received: by 2002:aa7:9096:0:b0:3e1:72fd:a614 with SMTP id i22-20020aa79096000000b003e172fda614mr7502384pfa.56.1629266759093;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g20sm4492489pfo.20.2021.08.17.23.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Lee Jones <lee.jones@linaro.org>,
	YueHaibing <yuehaibing@huawei.com>,
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
Subject: [PATCH v2 11/63] libertas_tf: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:41 -0700
Message-Id: <20210818060533.3569517-12-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2738; h=from:subject; bh=wd3681c0+x5eRHaVMU46XJm1dPQ+sYC85SAqAjsrf0g=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMgFu3aRs9ISQmN5Vt9YdvAypRlzexF9VxkmlTL fBYs8H2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIAAKCRCJcvTf3G3AJgbSD/ 9VvmG/dIP8wflkmUIV/4I63+sFI42prOwmcCJ7/QC6arAbd++55apbMaEbvsVv1TYzcOupBj3FJ3jn MzrscJSZO6s9qr6X/i4VQc63Y14g5kv5CMWrO127GRXfb/qRlMqNk8E3sr4Gp13yNGDXsonEASy26M ZAsvPOSnn3IaytMY+n8JweOfoB7i5WZ5mEBm2GjyQ2YRO4gqCZXxuJ4pufJR7SAmOVTyrGq4p/oSac nq2SUsVtaOo047ZAR3x2asWFV+3jHU6DuILOEhWF5H9pjXxVYfxtRc7tyP4pcjgqF5OB6To3eKp7TU lNEhWQQSE/GKR/8rUE5oYBrd5CyVJ352RemeAF3dhy9iSYllDDF8Dt7qDNFEHixdkgUBPY4YeRlcqV cP9/7P5xH3gI/UR4HG4sGw72lm/9sRvLbnPDbA+s8lzYlz6efPKiMJTBfV/Vo3YcsuR1mcrJygzkmu QQnYzrz9BtQfHFbe4OzkMKHaUCe9cJWWQqQbGjfGwqQFNttWU3Coo38o1FpdbJuhHvJyRDK47q3vNE Dc9vwC1o71BLG1c6D1ISVRzPUG2b7cEcd90GSkp7YejithdY+NvnSmZWTad+d2K15xdz2UNXL4hMRq fqBE0lJmxcxuhqVKSMuG8DKaxKopqiFzybGwsuT6xwpq9DI+1gph4HfAMHSA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NMAt3Z+v;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
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
field array bounds checking for memcpy(), memmove(), and memset(),
avoid intentionally writing across neighboring fields.

Use struct_group() in struct txpd around members tx_dest_addr_high
and tx_dest_addr_low so they can be referenced together. This will
allow memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end
of tx_dest_addr_high.

"pahole" shows no size nor member offset changes to struct txpd.
"objdump -d" shows no object code changes.

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: YueHaibing <yuehaibing@huawei.com>
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/marvell/libertas_tf/libertas_tf.h | 10 ++++++----
 drivers/net/wireless/marvell/libertas_tf/main.c        |  3 ++-
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h b/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h
index 5d726545d987..b2af2ddb6bc4 100644
--- a/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h
+++ b/drivers/net/wireless/marvell/libertas_tf/libertas_tf.h
@@ -268,10 +268,12 @@ struct txpd {
 	__le32 tx_packet_location;
 	/* Tx packet length */
 	__le16 tx_packet_length;
-	/* First 2 byte of destination MAC address */
-	u8 tx_dest_addr_high[2];
-	/* Last 4 byte of destination MAC address */
-	u8 tx_dest_addr_low[4];
+	struct_group(tx_dest_addr,
+		/* First 2 byte of destination MAC address */
+		u8 tx_dest_addr_high[2];
+		/* Last 4 byte of destination MAC address */
+		u8 tx_dest_addr_low[4];
+	);
 	/* Pkt Priority */
 	u8 priority;
 	/* Pkt Trasnit Power control */
diff --git a/drivers/net/wireless/marvell/libertas_tf/main.c b/drivers/net/wireless/marvell/libertas_tf/main.c
index 71492211904b..02a1e1f547d8 100644
--- a/drivers/net/wireless/marvell/libertas_tf/main.c
+++ b/drivers/net/wireless/marvell/libertas_tf/main.c
@@ -232,7 +232,8 @@ static void lbtf_tx_work(struct work_struct *work)
 			     ieee80211_get_tx_rate(priv->hw, info)->hw_value);
 
 	/* copy destination address from 802.11 header */
-	memcpy(txpd->tx_dest_addr_high, skb->data + sizeof(struct txpd) + 4,
+	BUILD_BUG_ON(sizeof(txpd->tx_dest_addr) != ETH_ALEN);
+	memcpy(&txpd->tx_dest_addr, skb->data + sizeof(struct txpd) + 4,
 		ETH_ALEN);
 	txpd->tx_packet_length = cpu_to_le16(len);
 	txpd->tx_packet_location = cpu_to_le32(sizeof(struct txpd));
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-12-keescook%40chromium.org.
