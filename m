Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBUM727UQKGQEIA6KMGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBE2702EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 17:01:38 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id o2sf8643504lji.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 08:01:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563807697; cv=pass;
        d=google.com; s=arc-20160816;
        b=UXh3Ytv1K9B0ILBGJISaVV2m2qba5vVvwIp0+QL0Qv/u2/EmWWijdvtVpjuXe/lx+4
         T08YmREE5APtOlUpLl/IVXCxmZzyUyAGhUJLuhrfbfANQDQ9URXY9QGFySbHB5Yz4AIp
         5q4JPk597/Bzn0rwQkhJosn8SE9CKh0L42dQ0FwZibNLF1dLiDN9YzBiFaZcu3UxuD+N
         2u60BbWsiU19p8OjJYn6oeR5+H8ADZbjsKuWt1VHkrwfcpSoqKcQ0QAGiIi3m5upK+0P
         9j7r2lrNPfzApYgacUFSa5H7VrFozRjZsPKxc43MEI8CMmkr8YsUxStvbtTysMlgl7Ct
         er2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LljIpZnDkp/E7DM5LJAXsitWtPFD8vohx0CJd03ww70=;
        b=zKCp4pPwjhaEsUtozsiUwvn8EJPiYQqVHYGYPpg4MkizwP6RJCGRDO0TekmX1HjiU+
         0gHAVcALf8JMLbOQ1UCoj8E4jXvfI4P98zc1noZf6XcZGXYn6W+owWJswjtxFIAPbdep
         erHuI83XujjlhhHAgAC5TmvGFf3z5fSy+RU5se6VHnWE2XFRhi3dsptT5zSbZEQ+es6d
         GHie5G91AhmxBPSDOfsXPPh4JfjYBM4pFerkhJg1KU/FytJS+WIGiq/b3UKtIgNFtrNx
         7C38M9ZXsinyZp+LMjO4eSDdpSMuFkefrtzFYaeDsA9GlT4u/qK64kkC8TV1uahC2csV
         tx0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LljIpZnDkp/E7DM5LJAXsitWtPFD8vohx0CJd03ww70=;
        b=oMMq5WTfCpFtTnfckwYEP8UquvUYQMqawmsI6z4sDMxQtkLuhr3/V1z4bEXWAKLVBE
         L6jyyoghMn1hDCMRngheluoEOWgKeC2KvcdhohRr7kw51NuXkL4Dd/R5XodNe7c7wifI
         JVVl4cyotugxeRMGee4sGHt4C13Lc2zkHElZ4lGgzGY0p8UB1b6NIHJUvNDvjuGKfVdP
         XMSWtgdWGizOgQ64k+XKTsuezbKrBiXFzGySEiKnM/hjB8buw0/FTyNBZssZZdwGot+R
         Re+hTnYSnUW5YuxqQZEJCQQLfrvoFbFAPYUT+rMMSZlC0JL5Q5TFQiqSAKZ7XXP6Am0G
         nSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LljIpZnDkp/E7DM5LJAXsitWtPFD8vohx0CJd03ww70=;
        b=FtTVB5mcGGvBbkZwRuc9I71Fzx0PXBspncuz+gM4O6Bkzh9euTPZMO/jBGi1uk0BKZ
         ACKpxEpYWxZktLHZpKWli2AX0vc3S2dniVMnz8EamkRRAqe4nAIJGw1nARuijanQ4Wup
         MpZgF0TC4rhtPUx9DFHr7DkiQOggzuduS59B1FDpDkpgXkMTFUEw5Rv0kurnazP8sefi
         uUFjMrYni8w0x9wwsvvvMtlRSIPQrDdvAtebMH1zDmvX9+eeOd/dXl9sgxPvMkqmuZeq
         00DwDkbpPVbJMhEejzo4ZCAYxs2WAMk52r4mH+92NjSc0haGoki0+CqcIt1CGIcjKeaD
         F8sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUac9teydFcK3mf5v6oGJbns1z3jR1JobiH0uG9mHTXPx3DsbSh
	V9QtGF4nRxFx2IRC3kzuv54=
X-Google-Smtp-Source: APXvYqypPHc+6DF3qOrA4tHvv3wzJhrBuOqw5E7aEjQkF3Lx9BSaU4tclYxXafrGfmAY1FCcW3AGjw==
X-Received: by 2002:a2e:9003:: with SMTP id h3mr34708236ljg.194.1563807697731;
        Mon, 22 Jul 2019 08:01:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4c2e:: with SMTP id u14ls3188603lfq.15.gmail; Mon, 22
 Jul 2019 08:01:37 -0700 (PDT)
X-Received: by 2002:ac2:4901:: with SMTP id n1mr18899124lfi.153.1563807697317;
        Mon, 22 Jul 2019 08:01:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563807697; cv=none;
        d=google.com; s=arc-20160816;
        b=ZGwg4XXE++teME1GYjgFblkA0DwUeQjjGqM45gn0tpm3I7O49v+AkKeFYzPsz7Ipx/
         kiHQWEQMM+b2OfzlwzRPJAwA5SBdvzqAssd8+X9FXxhJ2HrtVfIuFncAIseE0vkTHfPJ
         MQ3CwSy4+0P/B/3xWC6N7B5PcOR9sl7RvCRQLyFi/IejbbQQ5S6AiEbsIm9vuvoxo6Cb
         2PxSC7/hq4N/P6MdI6sr+HXYstD+MbwVzz5OIfDC4KEI6Fh6s8osyPYuo0vObKnPxk0F
         UdhMhProoP7ss+zKohO3v5ZGDUXIJI83irOJSZ0mUalUaKbl5w+cgaydeHFb0Hdd2SlI
         zhoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=rjp3PAueoIDtBfPsUFJIY95eoC0VIFzQJJqsUHXcS+g=;
        b=n539o5jo4qUuafBJpFdgb/kjxBbKXrxOlVdxRQKbKuoUGZjVRScSnueCuSr7Sh+3U9
         yCI6ptZq+22XxSQIbf4mqidLnp0/poxaiuLpYu4OoCP1C+HoUUIe5YeUuO0NitTccchu
         c6MLq1blCqmDLVN4qOhvN81StfD9UUXw5oWcPn3zg8KfSI3WHnuqFBbmhbHAUtMcOBlA
         DVA2uLYQ3+k2A2QjTFMQNb0eF5jBb5Ono32hn/RLnThZ9/bdNXVfiU1afkJTij3w2XwX
         Q2CNiicJDMmfa1vsapf6g07ZOZSrT/dw4LJKmT0CXDShxM57IQO76vE940JqBbkPy9+5
         lX9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id r27si1733202ljn.3.2019.07.22.08.01.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 08:01:37 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M7KKA-1hmHUx1cEe-007niL; Mon, 22 Jul 2019 17:01:35 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Ariel Elior <aelior@marvell.com>,
	GR-everest-linux-l2@marvell.com,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Yuval Mintz <Yuval.Mintz@qlogic.com>,
	Manish Chopra <manishc@marvell.com>,
	Michal Kalderon <michal.kalderon@marvell.com>,
	Sudarsana Reddy Kalluru <skalluru@marvell.com>,
	Denis Bolotin <denis.bolotin@cavium.com>,
	Rahul Verma <rverma@marvell.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next] qed: reduce maximum stack frame size
Date: Mon, 22 Jul 2019 17:01:23 +0200
Message-Id: <20190722150133.1157096-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:+XcsDpkp6TN1nsOc+u8JZ0NBGgkbBC5mUSpZhfCcYijsitfVK32
 cInYXMWZsdNXb7YVd3/rNUTpoAbMzdvYCkXTMlL7/xEKHXO3408xrDYg7hLMzgNvFbg/XAV
 llAN93TIde3KdxfRUlgvykuSO6j58RpVCAZrW3XPSz9NR9oyXGDFVUwJwiTxJcMgm1GjxlI
 pdr8jd0u3zZyUe3r5wK4g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:k7SCg1PLTRo=:c/bnJbYQG+S5jDADBRCfNO
 iws3ofk8kglStWjPh6jowKeNxOW7MZR9WBlL2S8ODWYOi5qdtmunGsbuuUzVdzdbdE9ggbU7f
 IH90bmn1ogpzegLCkZ8LK1LHI30lrs0NwokHd3SsuXOR3hA0uZ0SkC3LvJgR6cZkzjLljvy8v
 mJk/TROBgY7F+2KDoIsxt8TGoZBNMUSZ1F/PIuqrAHU4GR/tuN4u/g36JgOqO8nRlFFioE7m0
 H/SUlJJzVjCxNj7PZ4fuqZ3fS4EdIJJHKK1Nasp4XLVs3+Ey/ogxktD9cEkTQuE6a7EwZEeEx
 df2Z39whjJneDqAxtUcC2EfPDr/hHarhs1H1Q6X5ioPnRpZfkZsGO9ZsXEd8vIW4I7GpVuC4w
 31VV7KL7BDUZB98zUKjTg9grPefIK3FC5n+v3WRT7UVNEyNLH2bETUPaewnnUDFGKV+cFORbN
 eu0gTvZKGGt/lHO4IYHiI5CWCw7PCOFc0l7k22y+StDHcQqvGMM+pOlnY65M2kZUGl+vFhZYf
 buPHREiuNozQ/xhCOWuoVnzVHij1MQBiI4/uYJBnFUxr+GDeOwCdEH0IYH7FYg8tnQpsFEfn4
 o3Yit4XEMR1+54wXMPrIVpXFXoR7/aMA2XGcn9Lq/lpj3DAwBoykJSMqX2neF0ACAyQonHTQu
 oumLzyze9CF7R033IpTHk3R8bSVJizE4Dmcw98nAdlND0tZTBNjdtimr82dtksGRAPy3hNgzG
 mntup3wzRmE6KYQedLKTF57bZ+Mzh2HPgJ9IWQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

clang warns about an overly large stack frame in one function
when it decides to inline all __qed_get_vport_*() functions into
__qed_get_vport_stats():

drivers/net/ethernet/qlogic/qed/qed_l2.c:1889:13: error: stack frame size of 1128 bytes in function '_qed_get_vport_stats' [-Werror,-Wframe-larger-than=]

Use a noinline_for_stack annotation to prevent clang from inlining
these, which keeps the maximum stack usage at around half of that
in the worst case, similar to what we get with gcc.

Fixes: 86622ee75312 ("qed: Move statistics to L2 code")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/qlogic/qed/qed_l2.c | 34 +++++++++++-------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qed/qed_l2.c b/drivers/net/ethernet/qlogic/qed/qed_l2.c
index 9f36e7948222..1a5fc2ae351c 100644
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
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722150133.1157096-1-arnd%40arndb.de.
