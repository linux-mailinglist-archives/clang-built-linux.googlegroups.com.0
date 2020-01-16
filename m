Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2NRQLYQKGQEANBMYBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6447013E4A8
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:10:03 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id t12sf9026005plo.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:10:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194602; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xh6V4ym/Z7VvaqL30uyxIW6nVxtD97cZEI80DWfck/IxZnOV1+Tv69Ex43+XZ386VH
         h2mf545SnXXU5H2Rs8MXw8uVkKgF30zr7h8LUEVj5H0lRmZ9uGv895pwXsR+gGdwWtPR
         ekLd8KIzuLIJXARUPPuLHxQYV2PEK8xFtElpRqwz/b46c7rtdngVla5JnwbBRuJpbbim
         Gl5xqqXrWttMYnd+uw6H5YW+tFA8bekzplVTNtGls+o+4Swjk/F049myf48USbkgR+EB
         zQOjkC6+g2EyLhSWxZSct/uoRMmhExFLcJLNKySFa1ygiER6o7rXRKninrlVAjur8ziQ
         t5wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nBd2OLjaz+yH8s6Z8QzqSS5QnHSlGjJ2oEDaxfJfStc=;
        b=HT4pQWQcCKgWgBAAtyrS9ZuJSgRqAYfG1RL80IUTVbuaLAvNzwnuwkIgsl9IYGuIAt
         hVv1a7FzNiaUSACh/ry3yYJiZ24Ax7ZFZrlMyNr3TNH2aBqeN9jHwW49Z12OFrKrOZJa
         RuufV+urLkWmXAl7bCHLjGgIaebR+ZM9CeTJuXkfU2YC9GzRLTORFTgkr9gbohQwTjVw
         R4yG0VrZ9VAHxRDm4FabJVFNNIeiUJTS+8U1S5RNvuDKrneg+KKnFf5BoKQBcWTDFp9K
         LYP3ZEzL9DB4C+DNw7lZDhmgN/ck7uOlprGEwnxvEQXNIM9ED4etWUTb5A5b/k9onSge
         q2Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kCv0lB1L;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nBd2OLjaz+yH8s6Z8QzqSS5QnHSlGjJ2oEDaxfJfStc=;
        b=RfbP5h62xVB1IuFOLcmomY2U/RQX95D5Qatv6A5j7bqgiTNl8vet14Y2exNfkspveq
         yjswxNKXrdjaDpSM9iPvKSLg2m0oqeT/dkAewDoJ5kdgBnNHqA4WgvH8FM0rm1ICP8TQ
         SjNIkOowFRn3jrcCBEJuNNqcO8WPTXZ1R6Qsy2lv1RYhT9UdaOPmwiqvIahPai6cbI+T
         gX9tFecPHrw6WfcJ6XTihWRZh68SDvgpOVVUUPX3BsrqB59hT+iJH8ksqNNq4nip0WOm
         tnZGVkekzwAYsRHwKU7pMdbVGwfMYurPbo/0oqYbOrJFiuPpGX6PAxYowf3a9dQhwkJI
         Tufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nBd2OLjaz+yH8s6Z8QzqSS5QnHSlGjJ2oEDaxfJfStc=;
        b=egRIYxbZ3QCGgKIvCHD8YYhwPaQlfEBxchjqLhUVUB4NHPo6RvLrpB7BBSEBeT70uo
         oB+yLw6nbLtIiFNVhSgK9A5Hcku1gUfch/OSo6mhMHSsPhAYvARgTQqtiERsSMAP5QdJ
         ZXZ0aZ28LA5syCGfXD+pO48ie6M+thLO8nN1cUy5/N8atqND2g1R4Su0LPQeT9QlLu/l
         FwGmTaxLScjNzDFxWJWWB9wpkqG0cUnQPz9yCmeJP3sUXYi+9z2QvnNm1hBAImHRF5iY
         US4+mX1K6VH2XZCj+EVl8oytg8xYAEjvoVwi1vT4Mr2bGkxlGOWXL4rrcKN2kkXs6zBw
         5gfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjgH0+5GFAF/wjtP9QG5Ad7OipGSuYJElV3vM6WzWOt+p0hB+W
	Nhg+44eZ9m8OTb7AgC6vV4c=
X-Google-Smtp-Source: APXvYqxhJSJv9uQFiC+0GZLfBP6deo3iQG423QOh+0EhgcfSCPXrJZkGcJP6PVQS4V7Ij4qJtp9Iaw==
X-Received: by 2002:a65:55cd:: with SMTP id k13mr38882463pgs.197.1579194601990;
        Thu, 16 Jan 2020 09:10:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:208:: with SMTP id 8ls6114825pgc.16.gmail; Thu, 16 Jan
 2020 09:10:01 -0800 (PST)
X-Received: by 2002:aa7:988e:: with SMTP id r14mr38686736pfl.126.1579194601629;
        Thu, 16 Jan 2020 09:10:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194601; cv=none;
        d=google.com; s=arc-20160816;
        b=v795wkpo+h8Sziax1ytchPyUIwE2CBvSqda2RXb49gfvQfhvf/Ja4JYcxAxQQTUWZ8
         DrhGgAx34bXg+coJliEMdnQCRWaFgWJ4UHN6cN8LmD4owonX0hUOpKQe9NFOhL5l0ZYP
         efHv42ro3/zGdih9RSRBABXMBBwn94CGURlYzKKQ9cxilksLGwOAgm8p35tJyNVbA7Eo
         x1xnzsRvkRH5JHnUn/BQTOoDG2XODMO4EPJg60wOiPlLValCPnlP4FZlMISK9AMfY6IR
         SKW9pUDjkQbvt1r7FMQ629ypJ+DdE3p8n5NjGHzeFGOzX/+C3JfFYzhn8ry+AIQD1NMD
         p5rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XqUr/jAdRitsy29V8q3VjkadbtANVLpaohrAHX1BvG0=;
        b=Ncyn1NAxa9eXBnrP2ddeZX970GlHM8C/2Kl/d50LIkyAixYdLTsKUnduzlfUwQWDm1
         LDbaYnp5pR547ffrToc0F746h4hd7QLWznx8XWbBvQtAT0kzo5wJqfldhlkE8DgmqRDO
         ol1Dr6iQq/4p+0FE8CVrmecVBlDVkqJRxyitvf6dpJjXwkQyUhi8EVF0zIDoEerPN6tA
         /0peee6/Kr1rfI7e7sw3g5W83g1DAwPUD80E44sMCfQow0lh5YxCF4BdDxY5TnCGvNfr
         qkN66ITPl4yUw/wP6YDrPEQzsswZoeWZC5ejPDdE6rzz6laRXXzd9xaN5UM2nZUpqd6P
         BI/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kCv0lB1L;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c4si884484plr.4.2020.01.16.09.10.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:10:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9848924687;
	Thu, 16 Jan 2020 17:10:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 469/671] qed: reduce maximum stack frame size
Date: Thu, 16 Jan 2020 12:01:47 -0500
Message-Id: <20200116170509.12787-206-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kCv0lB1L;       spf=pass
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
index 64ac95ca4df2..d921b991dbdb 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_l2.c
+++ b/drivers/net/ethernet/qlogic/qed/qed_l2.c
@@ -1631,10 +1631,9 @@ static void __qed_get_vport_pstats_addrlen(struct qed_hwfn *p_hwfn,
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
@@ -1661,10 +1660,9 @@ static void __qed_get_vport_pstats(struct qed_hwfn *p_hwfn,
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
@@ -1709,10 +1707,9 @@ static void __qed_get_vport_ustats_addrlen(struct qed_hwfn *p_hwfn,
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
@@ -1751,10 +1748,9 @@ static void __qed_get_vport_mstats_addrlen(struct qed_hwfn *p_hwfn,
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
@@ -1780,9 +1776,9 @@ static void __qed_get_vport_mstats(struct qed_hwfn *p_hwfn,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-206-sashal%40kernel.org.
