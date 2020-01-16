Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZ57QLYQKGQEEU5ITYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C9313E9BD
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:39:52 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id n24sf2147621vsr.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:39:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196391; cv=pass;
        d=google.com; s=arc-20160816;
        b=QgD0eZ/b13bsFA9kuSpIsv1NAjqRi/hOhVQbk1jQFswpYGs3ZzHWQ6dEZkbaMlk30p
         PNeW56RjRKPgYZosj2vAY7lrxehfTYVV5HnaTUnSNEfqeBCkJlWUVYqKU26aLUt7rokw
         Oin/BQKWInRwDoUXuZTmzLTUsuISiwLDG6pW1AKEmdqq/TAUxFbJOa1Q7+YqkXcijzaB
         8JvkDY4LXwEL4VyaeFDSvdxp8+ptNzLpcYhwgr+xcSfvsWl01Km3VvkwWiKFNOQVbJsA
         ShSYFU/TGwR1fRW4EcZgLFzinb/78/vLKZNhJGSEOO5QtUEyOY3T1truT+fYBGX85/uI
         fyvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Xz+UA+RcwKbGVHCuEE0UJNPVBrzIRw3plWHeGIxYC6c=;
        b=FDYuD2s502mejr9vH5jf32XZzHwuM+bNS8epo21YGYDHYuhZA2wGj3uwnus67kAi/M
         V6ImBYUQdzgWxaBD3flzc3/qKd5+kj30USDomcZVNGzgD1LOFffjZUCnA+K2pUtOUaCg
         6A1Oshaa8tQa40y+al3khlmqvlkf6e8pBQkNqzv/aycznCzxB9id2HDKH+IdF7sJbPK5
         A1lX+B4zvNm1gaBO7t2M7XV+WfYBSq8gHwA8eODR7z4NID67KOzkyq72fpT2+GbvnElG
         tUXBJ6s9nmS5HbIRHi+vavVs5aPQ6y491IqlJMkOIrW4Nq4UQhOtm5Fz5NRhY7BONss8
         IW1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FHZrIiVA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xz+UA+RcwKbGVHCuEE0UJNPVBrzIRw3plWHeGIxYC6c=;
        b=GABQKSmlR+bKC5Xz0C61GS9S7JYtVHAWXNAy5UJRcYSdlKi+79rlO19Knj2wlBCpdG
         UMjS7A71cU5o095Q5xNvMRpO2kpIL8N2r4/0wxYN/bTeHBmvwX02d1TJqVut+rttC4sd
         q1BMFBXA4ZklPSOLJBa6aoeCRRWqsKYOcE343Eo44ogHm8jLusKaYcRXy0etgln6sLzu
         nQQvnENb0GGFjznxx8IC6FglNrTxM9sJ0ELFe8BRiLfq3H8m/ivKztIBn+O/7SnxlHw9
         yZOYfon7leAS9XT0iifjepemqIkL+X7scUJqzAiP8FB44eg1X8bAyxmPe+2+RqdscHLI
         XzQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xz+UA+RcwKbGVHCuEE0UJNPVBrzIRw3plWHeGIxYC6c=;
        b=isOgmMcHOrKBaKIDHHRTAv7SZa1M+1qSHbqSwnjO4pdfzA7xM+E3ovJW18RLrUCiDf
         fYFsQ9RYK6B5RWEiGglqXJA7/HRZn6TsCAMI3a8rCH4Ydr10Wjn9ZLWHn+dG6K3rSv69
         n6Jv14Rr07PGJbhI8a3a3IHHywJzPUOTR9b0RuaBZ3I77wqZk9Ho/bwdgNTDti+Bi+JR
         TKSSOaUnLtZQBSUjIj7L1OqntvbBZ37qL6GhQjjCi+Jy/NglhJGX5jdfOgvlh9fGcQCD
         g2yebXAxOV6pNRwzqwChsiuzvRgenSPIXD7mfxI33tLoxHQ5h68wt+QSbjPxqlV05PER
         qFZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXSbUgTmSpq9O5fNGM6F+oqrIfYjj/XHAcKs8Q0Rit1wVyUuLhr
	WvNT4zofqoqkErSVcEoPlBY=
X-Google-Smtp-Source: APXvYqw9+kmLsH8fzmrzuBLTOFh05LbETK/5I+/Uiz9CsNqCabcM1W0QiacKKzwlIwgCOCIUVN/tUA==
X-Received: by 2002:a1f:cec2:: with SMTP id e185mr18880894vkg.22.1579196391378;
        Thu, 16 Jan 2020 09:39:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:30d8:: with SMTP id c24ls1324392uam.1.gmail; Thu, 16 Jan
 2020 09:39:51 -0800 (PST)
X-Received: by 2002:ab0:7612:: with SMTP id o18mr17876068uap.73.1579196390999;
        Thu, 16 Jan 2020 09:39:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196390; cv=none;
        d=google.com; s=arc-20160816;
        b=y7UU6vcWVlyIEoWBlGqkTpJcmWdr/kwSSojpZ+JNnHSXRMHl77h4pAydknplHVQGVy
         LycHrBx9He1wT1rSSBH/aTAwt0ry3ficrz8fh1n2OmnVTxljbAmXt0J89mZ6LXAzz2lf
         6ugBgpPC3hnM+rXKposSh6c8ns3NHtE6gaZUDjxZ2EMSmTjAyoWd9kgXVamsQaoFiilo
         hEQeCcP/2az83P1pxAf7QlgzR5DkvDO6Vn3Q8ADVAMLDFQIpBUJG5W7Jy32kAfRHVaDj
         i6AGqs38K+wcnSUIqaXFe+T5AS0+RJ73Jjr4Au8KS1dKggAF1nzdQg7JKfIZbmNv65pm
         2Ufg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P4toagE6L7hvU9hmFVddVF25/sG5BYlQvmGlC11guFY=;
        b=aU98jp8KJc4p15kt2s2M3yonWxj6mH2VPixYgaMFqVnIK15x1Fkn83YWymrOtsnFtO
         qcfbVRlpx5hyc3h8F3ah9x/yWTUidvewYmkmVgAC0u/MHZJdYJWZwOB3yZfv212/LYbR
         eynHj6Ir4L1Pw91K1SdWuAYqWj4MDk81+LhMYrQIL4rNjE4/0dJNZsZMyVNqzPrpMikD
         /fpep/PK6wsLpMahAFNAq0SlvO6qP4PB2E+IqsI4jvVddD0FGOW5GoOplO8VU6N68XfW
         9AGTtocQNx2NjGboNcQbE8dUt5ATyGNN3SX5ClIJkIX8+o8Cienrowmy2CpHfWrA54F3
         O5gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FHZrIiVA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i27si991418uat.1.2020.01.16.09.39.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:39:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 338FD24708;
	Thu, 16 Jan 2020 17:39:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 170/251] qed: reduce maximum stack frame size
Date: Thu, 16 Jan 2020 12:35:19 -0500
Message-Id: <20200116173641.22137-130-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FHZrIiVA;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 7c116e02a4a7575c8c62bfd2106e3e3ec8fb99dc ]

clang warns about an overly large stack frame in one function
when it decides to inline all __qed_get_vport_*() functions into
__qed_get_vport_stats():

drivers/net/ethernet/qlogic/qed/qed_l2.c:1889:13: error: stack frame size of 1128 bytes in function '_qed_get_vport_stats' [-Werror,-Wframe-larger-than=]

Use a noinline_for_stack annotation to prevent clang from inlining
these, which keeps the maximum stack usage at around half of that
in the worst case, similar to what we get with gcc.

Fixes: 86622ee75312 ("qed: Move statistics to L2 code")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/qlogic/qed/qed_l2.c | 34 +++++++++++-------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qed/qed_l2.c b/drivers/net/ethernet/qlogic/qed/qed_l2.c
index 715776e2cfe5..2d198f6ee21d 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_l2.c
+++ b/drivers/net/ethernet/qlogic/qed/qed_l2.c
@@ -1328,10 +1328,9 @@ static void __qed_get_vport_pstats_addrlen(struct qed_hwfn *p_hwfn,
 	}
 }
 
-static void __qed_get_vport_pstats(struct qed_hwfn *p_hwfn,
-				   struct qed_ptt *p_ptt,
-				   struct qed_eth_stats *p_stats,
-				   u16 statistics_bin)
+static noinline_for_stack void
+__qed_get_vport_pstats(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
+		       struct qed_eth_stats *p_stats, u16 statistics_bin)
 {
 	struct eth_pstorm_per_queue_stat pstats;
 	u32 pstats_addr = 0, pstats_len = 0;
@@ -1351,10 +1350,9 @@ static void __qed_get_vport_pstats(struct qed_hwfn *p_hwfn,
 	p_stats->tx_err_drop_pkts += HILO_64_REGPAIR(pstats.error_drop_pkts);
 }
 
-static void __qed_get_vport_tstats(struct qed_hwfn *p_hwfn,
-				   struct qed_ptt *p_ptt,
-				   struct qed_eth_stats *p_stats,
-				   u16 statistics_bin)
+static noinline_for_stack void
+__qed_get_vport_tstats(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
+		       struct qed_eth_stats *p_stats, u16 statistics_bin)
 {
 	struct tstorm_per_port_stat tstats;
 	u32 tstats_addr, tstats_len;
@@ -1397,10 +1395,9 @@ static void __qed_get_vport_ustats_addrlen(struct qed_hwfn *p_hwfn,
 	}
 }
 
-static void __qed_get_vport_ustats(struct qed_hwfn *p_hwfn,
-				   struct qed_ptt *p_ptt,
-				   struct qed_eth_stats *p_stats,
-				   u16 statistics_bin)
+static noinline_for_stack
+void __qed_get_vport_ustats(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
+			    struct qed_eth_stats *p_stats, u16 statistics_bin)
 {
 	struct eth_ustorm_per_queue_stat ustats;
 	u32 ustats_addr = 0, ustats_len = 0;
@@ -1436,10 +1433,9 @@ static void __qed_get_vport_mstats_addrlen(struct qed_hwfn *p_hwfn,
 	}
 }
 
-static void __qed_get_vport_mstats(struct qed_hwfn *p_hwfn,
-				   struct qed_ptt *p_ptt,
-				   struct qed_eth_stats *p_stats,
-				   u16 statistics_bin)
+static noinline_for_stack void
+__qed_get_vport_mstats(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
+		       struct qed_eth_stats *p_stats, u16 statistics_bin)
 {
 	struct eth_mstorm_per_queue_stat mstats;
 	u32 mstats_addr = 0, mstats_len = 0;
@@ -1463,9 +1459,9 @@ static void __qed_get_vport_mstats(struct qed_hwfn *p_hwfn,
 		HILO_64_REGPAIR(mstats.tpa_coalesced_bytes);
 }
 
-static void __qed_get_vport_port_stats(struct qed_hwfn *p_hwfn,
-				       struct qed_ptt *p_ptt,
-				       struct qed_eth_stats *p_stats)
+static noinline_for_stack void
+__qed_get_vport_port_stats(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
+			   struct qed_eth_stats *p_stats)
 {
 	struct port_stats port_stats;
 	int j;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-130-sashal%40kernel.org.
