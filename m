Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSHPQGEAMGQEOI62MCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2B23D8120
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:58 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id s4-20020a17090aba04b0290173b4d6dd74sf729063pjr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420616; cv=pass;
        d=google.com; s=arc-20160816;
        b=k0SES92jyq3/VApVXWsvH8FKJ80AXjpblUy/LR9mwhDcSReHdRXtEHTU05ZNacu/ue
         sgBZKa4XwIKYeQnsvU096YhU5GezAeaIXIt+r+UifWYhDcSpVVtmuYV7yx3WjoxjgnmC
         /VUNR5CQJ+v+tsoLcLhI4NXvHxpR62iJ31Eb7xiO0MAr+33mlWO9K/3GwRxgGEbZRrcz
         BS+8dHHJWxl4R9naP8XwQ9aybIRbcu9/hi0WmZO9hhdR1oTawdHV00nuDJpAb+pgA1hh
         E39sT6/ZEjp0pN8sSKdQjcj8s3VwjU2NxAiS0sJwcYBHWmmfdYJdXuGSZAzoWiUuhNnC
         DlUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=v3tYIry1MjidAyG4Rw1nvzLorf8ipTBEotdSxCx0yJI=;
        b=NPsR5mngHaCb7g78rKsi9jsvt+7QODtko5hCLWrwULciF+bk4n8j16O3XFrP6RDUiw
         MN6EI0SrEAjMuxnNUZLayDs8hoPhVO8OKc4hxGQLCeEfZN4WSMpzdf8q8mzfSlL0MDsM
         /huS0GXJ996tMd2UTHL7CjeOAX8EMhk6KkDYUfcPup5zoke8SYKOrmrSxoACjPBnnNxO
         rvpPYgxg1nr/BOsUlVS0vWhQjNMzNmLUGkmVwTqE3EGNkT0SdBQWYas9FakqcmZGAfbw
         Fh+lHHC+XG6SM7fhwtOp44mtswdIYSIHfs/iMQ09v3juzKwWYrvkWH4XPwSfs+ftbiDa
         i+FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=X2kAI627;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3tYIry1MjidAyG4Rw1nvzLorf8ipTBEotdSxCx0yJI=;
        b=JeA4cV+SjXftIevIeFm9kekdH6Av9LQGzXegSB1mXc85x4f837xgbjewSC6R5ERWBj
         nLB7SC9C0y5diOzUqyvLiaua3Gj+xGcgbahWmwcUOdigXkxSgnuzalVZYBQPwPlaTmx7
         o+aSP987kj4Q3QxXyqxbuYqPmWXYPb/iGdlAR0o3OYZyRTCz1FcOEAq6aEcbBOk+DlnF
         DUBNWL6uHW4xLajh9lk73wnqqhpMl0/WgLoLvwsJvt2ZmfC5L5JpOP/MWJuYTKYHS6y3
         bJMR374GjFmPHFJx6w64cPdCKvVaY0f4QeMizwI8an6GAv5MfOuGnRFanp2pO677VK2O
         ar8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3tYIry1MjidAyG4Rw1nvzLorf8ipTBEotdSxCx0yJI=;
        b=rpVBF+GWFhWl+wx5REA8aJ/G3YUu9gWYF0vx+c32yjJj/GnE15CZTe61XxBpINH2cY
         g7/xSpe2qypkJu8k1BjjXLPfV3AzFFGJE8iSTcIbfpC9m7xrs+ppn/Hex7o1Tp+KHtZY
         Qs7huXnFA5gqR5We7VLQzhgWXUUp+oY1ckTZAe9akBLsdL7mmX3Fd3BJ2qkzmh5PQSA4
         3VPk/nqRZNYJhYzGSEQOcVuiXKsaeiULWHCevWFnKqxv9jixlKvhB9744g+HXipo3LJD
         H5k/YNygz4sv293XRlnkLXnlr1EgctywKz6bf0vwKBHqUw82A0NNQZwuzsQH4CFgSrlY
         mEPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jCxhx9ylujcMgr5ZGsJFTgyi6OP26JWVJUvC8Xd+frok5C0Zk
	z8V/za/021c5f+xngcwwwyw=
X-Google-Smtp-Source: ABdhPJx++0rUusBejzas0WuFqVn85ssMqTHtotz0SvBrcUf1Hehvr6n6gFuv0jvCbnfR/ZtveZu20Q==
X-Received: by 2002:a65:64c9:: with SMTP id t9mr20039729pgv.378.1627420616726;
        Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a4c3:: with SMTP id l3ls27394pjw.0.gmail; Tue, 27
 Jul 2021 14:16:56 -0700 (PDT)
X-Received: by 2002:a17:902:a9c6:b029:129:8fdb:698f with SMTP id b6-20020a170902a9c6b02901298fdb698fmr20381954plr.15.1627420616133;
        Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420616; cv=none;
        d=google.com; s=arc-20160816;
        b=e+D0JPvIaKiyS6ELyLbMZ6IF4qhIhz5iHvlLAEEGzU/nm7jgg56yIMvCo5jbpHKlsv
         sl3p9Mp4FYT4S+Zt+sdBf/k04OwWnlvwgJhfRr0XV84xxW8UB9WO+tV5SbVZnKEPkcpA
         +ONsnEwdq7a91Ufqi7L26kmoV72wHSC/POXs5yBTktpspkXnCxGEgJuKosXzTLYZjeX0
         AASZtgp7iv0tQ5d6RPAxchSvhctFXItKgTkLl7vU0J+qbUxaWQf+YxR0S0NZroZVEvM4
         Xzz/WWLbaNp9P3vL70132jl4TQkY1JiixRMCR7VxMsncuwHT9hlFqhtP50L1aorBtx9Z
         JV3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vvD4cE9CC0UwuFk0tFrxkl0FdzddHJztTx+G0lXko2o=;
        b=CsI81GoBnwmnUch5XONIfHCtfiMneGSLAXFeog9fdJBWq934GD7Ncjsvdn+aDbXtMl
         8Ob19qu/CPM4y3tuQjQjDSDB69acFNyXYWGBAMdAZlH4DIi0kqc8F2NtWi9oUcnn32dB
         afeURcwBtJnsv4tE3JHepZsbvMAIk69iv1eBLjLQZ6LRPXFh3HSxqirJf7SBH5Axd1u5
         c6R6LLPYJkrkbD+lZ9+ZHxFQ8frjHjID4K8L8L+HkTU8F7urdfwbq7rm9XROeQIW7KoI
         cRdNvJ4JDdvBiLRbmwMg4HeGgUyObMGquXJnqerjQcUAXaBYQDxG8KX2qMk17dRuzAVI
         6D5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=X2kAI627;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id o20si360469pgv.1.2021.07.27.14.16.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id j1so1857984pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
X-Received: by 2002:a17:90a:3fc6:: with SMTP id u6mr9309818pjm.146.1627420615860;
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t9sm5079279pgc.81.2021.07.27.14.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 21/64] cxgb4: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:12 -0700
Message-Id: <20210727205855.411487-22-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3924; h=from:subject; bh=y2sMUjTim/gIwxveSmmQhx7NYTt7b1pVbIiPi7Evl4M=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOEnE25c6OQAZUZh7are7MybFphgO5c0XjmqaoM cypZk3uJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhAAKCRCJcvTf3G3AJrVgD/ 9EUipW/aGz8pZZO+KYM/hHRGzHn3eJ8lr6sIZd2kwgY/YenMRyXcbyazHaKtq9k4qFGDfasF7ov858 QgSo0FLS6kKdp77nml8K4O9E8I7ayBPKVtULTSDvCMtWKEqBcfC6Q7M0Nb1UixUrR2Z1JhZZK9WtWH ID8omgKPI4LnnaYo4ycEAVB9pzBuOp2dw3mX8jThZiOXisc1A8O6CIE/RAKv1Fno46ecBIpYI58Lfj Q2dLClrapmNlYoUxj2kteXxZy308YbZng7p0daoSE68G8Dm0g06bXBLPRLc/bImHPgA3klYnSoixgZ RMD6kvFN+5q7n8MnIJdaq7gJBYyPBy/9C6wwG2lmKxvmgPKgNj1zDkyb7ttS5FAEi0kc+f+uE/Qvc6 LxFFznj1facXXLvYjxYdFVv9TF/b9/6/BBeUCOHLnyB4kGzOqlN4zBCzSlX25q7Qr8HnPEr34tJ/mP 3QyTlF29k5BfJetxRga3bVSYt4eLe0vVj8bLZug1htSckQNfV4X1STPomfizJ8F8ssl8VR+AZqcEPZ ru/Rhw2gsydUoGnN1DHmcUDJjNa8iHRdhVeY0MaxkmG0p3DjmhYkpj3nmosca/JbyjnMdcrVrIyErT CYzNTxmbAjdwEJnwSyRPybVcS5R4LwUCJqb30qR0qVGXDBcsbP8DrEjKddqA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=X2kAI627;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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

Use struct_group() in struct fw_eth_tx_pkt_vm_wr around members ethmacdst,
ethmacsrc, ethtype, and vlantci, so they can be referenced together. This
will allow memcpy() and sizeof() to more easily reason about sizes,
improve readability, and avoid future warnings about writing beyond the
end of ethmacdst.

"pahole" shows no size nor member offset changes to struct
fw_eth_tx_pkt_vm_wr. "objdump -d" shows no object code changes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/chelsio/cxgb4/sge.c      |  8 +++++---
 drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h | 10 ++++++----
 drivers/net/ethernet/chelsio/cxgb4vf/sge.c    |  7 ++-----
 3 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/sge.c b/drivers/net/ethernet/chelsio/cxgb4/sge.c
index 6a099cb34b12..9080b2c5ffe8 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/sge.c
@@ -1842,8 +1842,10 @@ static netdev_tx_t cxgb4_vf_eth_xmit(struct sk_buff *skb,
 	 * (including the VLAN tag) into the header so we reject anything
 	 * smaller than that ...
 	 */
-	fw_hdr_copy_len = sizeof(wr->ethmacdst) + sizeof(wr->ethmacsrc) +
-			  sizeof(wr->ethtype) + sizeof(wr->vlantci);
+	BUILD_BUG_ON(sizeof(wr->firmware) !=
+		     (sizeof(wr->ethmacdst) + sizeof(wr->ethmacsrc) +
+		      sizeof(wr->ethtype) + sizeof(wr->vlantci)));
+	fw_hdr_copy_len = sizeof(wr->firmware);
 	ret = cxgb4_validate_skb(skb, dev, fw_hdr_copy_len);
 	if (ret)
 		goto out_free;
@@ -1924,7 +1926,7 @@ static netdev_tx_t cxgb4_vf_eth_xmit(struct sk_buff *skb,
 	wr->equiq_to_len16 = cpu_to_be32(wr_mid);
 	wr->r3[0] = cpu_to_be32(0);
 	wr->r3[1] = cpu_to_be32(0);
-	skb_copy_from_linear_data(skb, (void *)wr->ethmacdst, fw_hdr_copy_len);
+	skb_copy_from_linear_data(skb, &wr->firmware, fw_hdr_copy_len);
 	end = (u64 *)wr + flits;
 
 	/* If this is a Large Send Offload packet we'll put in an LSO CPL
diff --git a/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h b/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h
index 0a326c054707..2419459a0b85 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/t4fw_api.h
@@ -794,10 +794,12 @@ struct fw_eth_tx_pkt_vm_wr {
 	__be32 op_immdlen;
 	__be32 equiq_to_len16;
 	__be32 r3[2];
-	u8 ethmacdst[6];
-	u8 ethmacsrc[6];
-	__be16 ethtype;
-	__be16 vlantci;
+	struct_group(firmware,
+		u8 ethmacdst[ETH_ALEN];
+		u8 ethmacsrc[ETH_ALEN];
+		__be16 ethtype;
+		__be16 vlantci;
+	);
 };
 
 #define FW_CMD_MAX_TIMEOUT 10000
diff --git a/drivers/net/ethernet/chelsio/cxgb4vf/sge.c b/drivers/net/ethernet/chelsio/cxgb4vf/sge.c
index 7bc80eeb2c21..671ca93e64ab 100644
--- a/drivers/net/ethernet/chelsio/cxgb4vf/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb4vf/sge.c
@@ -1167,10 +1167,7 @@ netdev_tx_t t4vf_eth_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct cpl_tx_pkt_core *cpl;
 	const struct skb_shared_info *ssi;
 	dma_addr_t addr[MAX_SKB_FRAGS + 1];
-	const size_t fw_hdr_copy_len = (sizeof(wr->ethmacdst) +
-					sizeof(wr->ethmacsrc) +
-					sizeof(wr->ethtype) +
-					sizeof(wr->vlantci));
+	const size_t fw_hdr_copy_len = sizeof(wr->firmware);
 
 	/*
 	 * The chip minimum packet length is 10 octets but the firmware
@@ -1267,7 +1264,7 @@ netdev_tx_t t4vf_eth_xmit(struct sk_buff *skb, struct net_device *dev)
 	wr->equiq_to_len16 = cpu_to_be32(wr_mid);
 	wr->r3[0] = cpu_to_be32(0);
 	wr->r3[1] = cpu_to_be32(0);
-	skb_copy_from_linear_data(skb, (void *)wr->ethmacdst, fw_hdr_copy_len);
+	skb_copy_from_linear_data(skb, &wr->firmware, fw_hdr_copy_len);
 	end = (u64 *)wr + flits;
 
 	/*
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-22-keescook%40chromium.org.
