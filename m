Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOV2QLYQKGQE5BMBO3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C80D13E7C0
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:28:27 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id r8sf8168183oia.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:28:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195706; cv=pass;
        d=google.com; s=arc-20160816;
        b=jj00ltrkHlURDMbIRV3uForMx5CV72Ficq7VDr20V7DEzBcZ3w1giTZKLJp0OiUmNh
         kZZlc1/lklaDx8bmc5srSSyEOaFhkVDVGBLPX7apTdM8aw6hD0HsrzZvcas6XxAW5Dnk
         UdRA7ecquMY8hwlUQHiybjFKma17AoHoRh3M9XswsXfmU6DScpIlKQxLIfCHZVfkw1V1
         SRtgWvE4hZyWpGjW1W82qYlCcP5/EBDG3Gj5Vuh6QVjnQs4ic9Z1w737PWUP11Dv36md
         SgtXtczuOU3Oy7JhYvJgIrazT3lohTPolmDumtrnRPBHXhU1qHTRrL+LrEqKe3DBaIVZ
         BWiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6uOEiSY3W9BXmMD5xuYxlC0XTkI3833hrV60K8Np+RE=;
        b=oOsUqP7aV9Le+jscYdaDpHQ/TxnZ1XTCRC1MTnkuMjo6YYxt+7grWfGJAd4K78S3hz
         dpod4qs9hyuHVtlUOQ1i6QtdeqFMh8xTVEcyS6mhaWF9yhID2yvEzZHo7yNqt5+74u0a
         Lc9ec71WK+H/hXmtQJCQqYQ/KGK49oabpH8itWJHxmQPTZW77v7b2/8nws85/kdvxg0V
         GpF761XJYGXGNIe3+WtrmhmVee1II8gZqf4bl3CdWRPBhLMWPQ4qxPcV5N7U6xgU2H/j
         nNK5Jtls3f5qfrA9lXqrBkPAeic+U+QOypSQ47RfCZjUXHpwm0A1gFp9HsNc/RrkW9H8
         xdYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x4hR1h1p;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6uOEiSY3W9BXmMD5xuYxlC0XTkI3833hrV60K8Np+RE=;
        b=cJ8v7UB1VtBAgQVIHHgXKSeYCAJMhuiX1C6owciBLqffFw7adlLzJmJcgK4nQ7iD4Y
         KeuxOTcBIUGO7NEvtYvoJmG+eYakGI5JYekcNRZqQ4VTdURg2qniT6vIcckJKGOz0Ym+
         QwaNfPdaj0aXsRIT4W7I4b3tDGDQBeCPtVNRXr4fX+ptgxrsKhkGXcuI2vd8Nq76hBXE
         d0SEKIlBSQ8XVZpDdvaPOf/cdnY+Z+lLQ2IFHb+4RU8F7uvjvKqLE0GKNc8JJlOpE8CI
         9r+Ho/cPDzzUpa2K3Ww3ZuwAPRbn3+avoLueCgByTa1DhOx62mC5K1/6WCAnOMaV7ktK
         gbzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6uOEiSY3W9BXmMD5xuYxlC0XTkI3833hrV60K8Np+RE=;
        b=R5LbhnNRyM5fOptyfy8AEF1O1uy/sHV4crSZzngLS/rgV9DoFRyFBBMR9HmGNVoHdb
         87mQ4cOYKfOqTqHcjBbS6NQo0VvSLjkF1JrXhn9z2MpKVnidOp9cIAJkvcyh/zI14dGc
         kE/BCNPw2Oz32vOnId6jSW5Ycxzo816JGF//XBF3e3zvQxEjpzkQxgCtNvx5xCBp8MEi
         g6qzh5rVVxjnEIcDqkCIly1ibUWfV7BU7o4srbZccpbqb/qX6r5oE5D6NBJz6am+loI6
         NSLalW8dBcEWCWDSk3l0BIhs602reJXTvql79OrcYo/6wyUPpW02/t8LOdftM9r5EzBd
         lcog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8TLP2/80Je14QAqFdp7LxHv6f+38bmhTnUpIA0//Ql8/GWF4A
	yHng+IHE2SV9SPVNpISEpzA=
X-Google-Smtp-Source: APXvYqwmI6UyvLLx8Kl37Zd8qnEd30hM8LQqT/+L+mZWGagx19czwfTM9Gd0xBlwoMScezKKV9Cycw==
X-Received: by 2002:aca:ab50:: with SMTP id u77mr143158oie.36.1579195706445;
        Thu, 16 Jan 2020 09:28:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:72da:: with SMTP id d26ls4143377otk.9.gmail; Thu, 16 Jan
 2020 09:28:26 -0800 (PST)
X-Received: by 2002:a9d:e83:: with SMTP id 3mr2916112otj.218.1579195706096;
        Thu, 16 Jan 2020 09:28:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195706; cv=none;
        d=google.com; s=arc-20160816;
        b=A+bnVfMrviAgoL9DmTs9+xwJgypF+iiycp0o/b/BmuzPKVTqOi8TIZvioyFcBlaZkD
         BX6SDoE2KK+ac8yPCOBb2uPYkgUscP0yCLbbOPbYfK/X7O476OA5ejyFalEBtdyA5P5z
         0In3KW0hYZ6d4kRkXqiYujuKj1hyc8yTD6stMPjbg+n+qqYuN7cGO7+s0J5a1Fe1v9mR
         u8upBo6FTZ9ci+7BUFkfJ3SMsIahe9GyY8JmHlQD0x3qwpLfevaek7YVTwvw+OYvbJ5M
         /Vc7IITCVXKxgdPs2BmFcUkAwC5QQfSd+9X6Vx2n9qpt/laBdzZPKWqsyJH8yaHcekVN
         LbJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z/BDz4JWnzpQUTF/hnnzxDk1D6gtnwfANPxcAB0Q11s=;
        b=bj79hPjjRD5C5gJZmSD1R6iK7u7R7WiSc5e8uJW5RV/OMUEfqj+Gdq0RZtWpfWhsNJ
         pxE9x6/wB+SeCoNVwm4w8LKfJDuZZ4CfYiu9nTwCCImNHhMcYul3RY2NcEPcTbnQea5T
         7z9zCJOR8OQ+U1iVxKc2PA2KrV/1s1HehOcgK6cVOiB8p9hhQT+C4wxWIUqO5ug2gXnT
         5TSjEZjQYOFyKixxCouMrk9669I6WGeylnioUtN+MWq6buhtXLAReuiqp26ybF6LGYVx
         llV3uly41NysqpYKngOPYEXyLQTbewi8CEIwl+cjWXY/vtlzrRuqkbM0skTiAq7SrTfs
         ea4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x4hR1h1p;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d6si788826oig.4.2020.01.16.09.28.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:28:26 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 86CD1246F4;
	Thu, 16 Jan 2020 17:28:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 252/371] qed: reduce maximum stack frame size
Date: Thu, 16 Jan 2020 12:22:04 -0500
Message-Id: <20200116172403.18149-195-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=x4hR1h1p;       spf=pass
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
index 62cde3854a5c..5d7adedac68d 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_l2.c
+++ b/drivers/net/ethernet/qlogic/qed/qed_l2.c
@@ -1629,10 +1629,9 @@ static void __qed_get_vport_pstats_addrlen(struct qed_hwfn *p_hwfn,
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
@@ -1659,10 +1658,9 @@ static void __qed_get_vport_pstats(struct qed_hwfn *p_hwfn,
 	    HILO_64_REGPAIR(pstats.error_drop_pkts);
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
@@ -1705,10 +1703,9 @@ static void __qed_get_vport_ustats_addrlen(struct qed_hwfn *p_hwfn,
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
@@ -1747,10 +1744,9 @@ static void __qed_get_vport_mstats_addrlen(struct qed_hwfn *p_hwfn,
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
@@ -1776,9 +1772,9 @@ static void __qed_get_vport_mstats(struct qed_hwfn *p_hwfn,
 	    HILO_64_REGPAIR(mstats.tpa_coalesced_bytes);
 }
 
-static void __qed_get_vport_port_stats(struct qed_hwfn *p_hwfn,
-				       struct qed_ptt *p_ptt,
-				       struct qed_eth_stats *p_stats)
+static noinline_for_stack void
+__qed_get_vport_port_stats(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
+			   struct qed_eth_stats *p_stats)
 {
 	struct qed_eth_stats_common *p_common = &p_stats->common;
 	struct port_stats port_stats;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-195-sashal%40kernel.org.
