Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHXHQGEAMGQEABGFCHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4193D7FA9
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:11 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id c6-20020aca35060000b029025c5504f461sf273920oia.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419550; cv=pass;
        d=google.com; s=arc-20160816;
        b=QQscM3dPaC4j7eTgOnD+l80TUdhlScJKg7ukByqUYgAjuNyyg0SKGqAZzBhrFaUahU
         BHmu8YKl9wAjjKvLARAs4VFrOgvlzxPZ6JO5CZRbPL751QYzDOWRrQRJnT5uN2e3Z/hb
         g+qX8KscHXeEAA6XmfmqTpVfbHzbTKVhdFwRAWSHH1el6vmNEYhDB6my2w0Z4awJ8xk5
         RhMQK4va92hrHg917N8oLkzuQyrfKuq+G1V0OqNUNv8lexDUuAWLtwvSPlBEzG4A5dL0
         Sl78FRM9tqzvWgqfXkyaeKQpQ8PeTfbAO4jKPc7DK4joBwmRLaCAIDJbJedsnWu8/cFf
         5C/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CCkFfSezlXCGLvsbzxX4oB8Z6yD6W2kM1nLMm6qZQt0=;
        b=TzrYjkv3f6UR+zqzWIEhQ9t8gGCEOHQjgk2iAnjGH6GsGbbABbjFeeNvHFNoaL52dF
         ZP6RtmGE6H/MLUJ54j6WTGTT9jKpsoN8pVyL29WjRD1TgYEXfK+0XBo5/8ecwqhZDtN3
         8XpPZ+bBaI/yNeNWR3ta6mtFdmrnVPMc2MjHV0NvuEDCYNslPfeKgNmxC12TrwRy+Nv2
         /NaEfD6n5utL76cxyY/2ZfXZgtv23WbjmggHActkHZBkZw45w6c+ayPv/t8ZqTtDoRDX
         GbIOOihlbTVn56GQkhTiuomVC1nvx8asC8KCq+71e+d5GZsDUsUtEhLG0SfwCvpciIsB
         MT8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BRJ6YXZF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CCkFfSezlXCGLvsbzxX4oB8Z6yD6W2kM1nLMm6qZQt0=;
        b=nOdUWytWbLZajAd/zzWguGtH3m02i47AGoevkYgFJRLYIsU3IOTpTgQlt7FiyWA04L
         S7FATITtNfznuLqtTXFjUSCeysij0qNoNCbYhEDEZQVlVwL3EsCysNaGpBZhMuG70qeK
         EztI6RxWNVdLOsXh6PRxhagPWgfS5hF2bqlgDGxYclbMVSu0WcFVUB12QcDNaAlIEJw6
         HhEeW81JJ7ij/YuZQTcmYUwKiTo/BFRe2L/HFW+hTfA7yymuEmVU4eoZKwIblxCJyxJF
         gcX14HLo1GzHCZ4ySCUd5otUKKXSf8PiKcRPIo5aGh+K3WOUA7yYVBGwAG4iIAdIAWIB
         rieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CCkFfSezlXCGLvsbzxX4oB8Z6yD6W2kM1nLMm6qZQt0=;
        b=s6uCD7o02YFn2Ri8Nt3reSX8R/VTCV2JdJTAKJdtxZxj1Z2tGa0RTGW9yCzRsrQDdX
         0DH5WMZmGlk4Vp6v9Iyi7q5r9JctG7Qc7U51VEgjOllG+8Hrw0siZkIIeA6K6kEVemiu
         CYK5gHGuG6DpxAG5ollLBc8ZjS5xr9LSeY/uezLyqRX7y1biCWRz5CAxPzgX4WYwP4Hw
         giyRzX3Mvkn6dQRrcNGHKQ9HRs7HnE1fP405F+icrKM8bHPq+YmHT3Goma8AhZ78XbdP
         FAohn6e2gooNYC0UaYYOT/Y/A/Xsj/Cq+xFKwEUs64HO6vFiT3WCX1RqpSF9SHx7Jusy
         uTKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TZFA85QmfKxTYEsnbKpTRwIvoNMZ4dKpJS+yWKUr3XdjUhdrE
	GZYWVPFSfWsgx44wpTcuVkA=
X-Google-Smtp-Source: ABdhPJzQ+flycvuTTHQhkP6uHE0x2feCQUcNmpayg5tyoKYRXUQKXw2H5e2UlcVQYVxIePBjQprCDg==
X-Received: by 2002:aca:5802:: with SMTP id m2mr4190654oib.23.1627419550143;
        Tue, 27 Jul 2021 13:59:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5e42:: with SMTP id s63ls53442oib.10.gmail; Tue, 27 Jul
 2021 13:59:09 -0700 (PDT)
X-Received: by 2002:aca:41d7:: with SMTP id o206mr4136485oia.132.1627419549788;
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419549; cv=none;
        d=google.com; s=arc-20160816;
        b=vXpMwJ+6/4x8kz4vuo/YDVUuWwZdK4CHiLTExwbKhs3s/Kg9k/ehKeyFavQTesY/84
         I0aBzpDnAo7uyTp2iUWrPmzsv9FDyD/yn2ul85cfDxN4PxaKUZlJ0sroozCUftnLDVgZ
         BOi+AT57t0d471zrsndER+fyvaEl7OPqmUZJ/j5YqiAp8lVDFbg4/CIgSBSvMHv621qk
         CHfdUyCB6D0tytlqkbuR9R2P1bTmyn+a1PlSS7r2+FdMUlX4oyqQ6RXjJ1NVOB6d8ZKK
         uOxHeS/oeP3e8fPEmsx5wnwoiL7NDUi5/b4zi9tk6tR/tta9kRa9xZr9baWZOJIGmtJP
         ZedQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bokzvyrG/U6aqJMcplPprkAXMLOtluQLvxu28yduQ3I=;
        b=TttjPvgSPHzatj3wzcR3H4XCwS5PiUmIajgRubchcg4KPLFzKXfwsiEuT94CJk3S9/
         smpUw5FrW9OucYLOOlBjYswdisTzFzk3zVVKzZXzp3hfWEhTxLSxz0rSkJooqOf5JAo1
         q7u6SXZjZMre06nB+reS3oImyTyTxQbGqKz9JERyqth6GMauFFgAMN0E9O+BFbFQuLBG
         rIJpR0+zKOPIFIjac2EY90TUMcWXRWvSIOS6gCXg0k9yZ6Kl5rhmCthaGyLrUd0z8J83
         PEmu5Ov8tOK218O9+mSaiYeEqubwUyxGqgxz2FXQNxC2dKYAS4XaixFMTwRaNAnxi3H2
         y4bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BRJ6YXZF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id u9si184079oiw.4.2021.07.27.13.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so1035794pjh.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
X-Received: by 2002:aa7:80d3:0:b029:347:820c:fbf with SMTP id a19-20020aa780d30000b0290347820c0fbfmr25091421pfn.73.1627419549404;
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b7sm4526752pfl.195.2021.07.27.13.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
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
Subject: [PATCH 22/64] bnx2x: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:13 -0700
Message-Id: <20210727205855.411487-23-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3598; h=from:subject; bh=A1ElP4tjKK6Dp0sFHqCrYLWenZcmBSW5YxsW0evE5y8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOFm863HXtOc8ZeFmq+4wnVfKZlM+JRATLTvRzZ tF2gptuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhQAKCRCJcvTf3G3AJg5IEA CxuS8kVvtGTeWwaE8ktJ8PBB1PQTvGy+LqQckpDdbfcwdWpfpfUaRcWDUYeyxQViauxQkjKX+WtpGq hyus00PTGVEQ+WIyIaFXYIjua1ivJAE+8+FSub7TLXSsMnwjQ+LHHUYqIonTydXZVNbnI26vGNsNW7 ZiV9OdkeutbHuBOgoqWEev1HlbW4+SZ11/dsn9f2pkkzB8YIhMzFPMi81NohsNTWNaJi74eoKX6qCr e5hNPHv43bf04K61+a0YVVBBpstRQLsnB1CKmBSNAfoc0edgbIAlA0OMq9CdvWO82lwYn6tk73H1Th 7fuTfssESoKBnqznYLIApEuQg37xDIDAdFz4SIssl7up5lwyunQcndQRrMZj1Y0tXkcj5w6CCUCWPw lmJrQWyWwVSqc682o6B1DYKJ4oZqFDaiMvdanoCeHEjy6x8afQF7duJMQRMS14TygWN8NoWnEQuqEI a0XvMB5J/4Z8eLg8jRrtFzwMiR9aIWjrHcHSQ+Co9sVbkxRgedeTJXK3HctCj2xHW68hdTNWPREow9 XuwAmRn6yMPi0xBwSZ1DDYkz8HIa5o6cUScE4nvrwcxz17OQhpwTybWpV3OxK3O2n9Oi/oLBwMKtNZ ogeLRK3dAHlvMOQzHJDjzkWma5VuOaPCqM5XgIHjiRuhS4PU0czJaG8Sd63Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BRJ6YXZF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

Use struct_group() in struct nig_stats around members egress_mac_pkt0_lo,
egress_mac_pkt0_hi, egress_mac_pkt1_lo, and egress_mac_pkt1_hi (and the
respective members in struct bnx2x_eth_stats), so they can be referenced
together. This will allow memcpy() and sizeof() to more easily reason
about sizes, improve readability, and avoid future warnings about writing
beyond the end of struct bnx2x_eth_stats's rx_stat_ifhcinbadoctets_hi.

"pahole" shows no size nor member offset changes to either struct.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences and optimizations).

Additionally adds BUILD_BUG_ON() to compare the separate struct group
sizes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c |  7 ++++---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h | 14 ++++++++++----
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c
index 0b193edb73b8..2bb133ae61c3 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.c
@@ -849,7 +849,8 @@ static int bnx2x_hw_stats_update(struct bnx2x *bp)
 
 	memcpy(old, new, sizeof(struct nig_stats));
 
-	memcpy(&(estats->rx_stat_ifhcinbadoctets_hi), &(pstats->mac_stx[1]),
+	BUILD_BUG_ON(sizeof(estats->shared) != sizeof(pstats->mac_stx[1]));
+	memcpy(&(estats->shared), &(pstats->mac_stx[1]),
 	       sizeof(struct mac_stx));
 	estats->brb_drop_hi = pstats->brb_drop_hi;
 	estats->brb_drop_lo = pstats->brb_drop_lo;
@@ -1634,9 +1635,9 @@ void bnx2x_stats_init(struct bnx2x *bp)
 			REG_RD(bp, NIG_REG_STAT0_BRB_TRUNCATE + port*0x38);
 	if (!CHIP_IS_E3(bp)) {
 		REG_RD_DMAE(bp, NIG_REG_STAT0_EGRESS_MAC_PKT0 + port*0x50,
-			    &(bp->port.old_nig_stats.egress_mac_pkt0_lo), 2);
+			    &(bp->port.old_nig_stats.egress_mac_pkt0), 2);
 		REG_RD_DMAE(bp, NIG_REG_STAT0_EGRESS_MAC_PKT1 + port*0x50,
-			    &(bp->port.old_nig_stats.egress_mac_pkt1_lo), 2);
+			    &(bp->port.old_nig_stats.egress_mac_pkt1), 2);
 	}
 
 	/* Prepare statistics ramrod data */
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h
index d55e63692cf3..ae93c078707b 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_stats.h
@@ -36,10 +36,14 @@ struct nig_stats {
 	u32 pbf_octets;
 	u32 pbf_packet;
 	u32 safc_inp;
-	u32 egress_mac_pkt0_lo;
-	u32 egress_mac_pkt0_hi;
-	u32 egress_mac_pkt1_lo;
-	u32 egress_mac_pkt1_hi;
+	struct_group(egress_mac_pkt0,
+		u32 egress_mac_pkt0_lo;
+		u32 egress_mac_pkt0_hi;
+	);
+	struct_group(egress_mac_pkt1,
+		u32 egress_mac_pkt1_lo;
+		u32 egress_mac_pkt1_hi;
+	);
 };
 
 enum bnx2x_stats_event {
@@ -83,6 +87,7 @@ struct bnx2x_eth_stats {
 	u32 no_buff_discard_hi;
 	u32 no_buff_discard_lo;
 
+	struct_group(shared,
 	u32 rx_stat_ifhcinbadoctets_hi;
 	u32 rx_stat_ifhcinbadoctets_lo;
 	u32 tx_stat_ifhcoutbadoctets_hi;
@@ -159,6 +164,7 @@ struct bnx2x_eth_stats {
 	u32 tx_stat_dot3statsinternalmactransmiterrors_lo;
 	u32 tx_stat_bmac_ufl_hi;
 	u32 tx_stat_bmac_ufl_lo;
+	);
 
 	u32 pause_frames_received_hi;
 	u32 pause_frames_received_lo;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-23-keescook%40chromium.org.
