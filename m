Return-Path: <clang-built-linux+bncBD66FMGZA4IM3V52Q4DBUBHNT3O2S@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 511703C814D
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 11:18:06 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id x84-20020a2531570000b029055d47682463sf1846367ybx.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 02:18:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626254285; cv=pass;
        d=google.com; s=arc-20160816;
        b=hsKliOzCF6V4r+6N0/vIdvZ9oiUyGl8ZemdTIJYwvlfwEmhoYV9grHXSjRQH7BDLYU
         31bpPPzYGSj8XtdZN7PNKkCXqjh50Jf9+wj7FpOK5418qTJVDwzWQ28Ulmq+4Zp0Ala/
         UjHMTTUuFgdtb4VEuExxb2DNIoSR+2PUlmE9ZcWm/EEYnAzIbjdDCDbleXUlK+zm1DSG
         ubL2KBujHkuRo+iHONe6kaFi1HctKSvJEcztEoFPcDjQ6GCqWQ7OcMV97VpjApu+ZFm2
         JFx9GLOlSvjgu/MCCtk0E7oS9CpfwW9pakydkATAiOb0yv/wLq9FO3MYPOvBVdEZBTn1
         vUhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5Z9q2+mmR88vF66c/RskznxM8ZCe5zRHGyyzxSO08yw=;
        b=RHt+hrfh7ldaatz3EBIXCUOQpxFIak/MKERO/3jPlKyr706XWMWGm8RWM7Lnv7isIn
         34rA5l8ZvKjnzhcmEd/hEepuDFj+HerkjEQ7tiiGTZtJXU/PETdxFKB+/znw76bWRfQ9
         vvtJ5JwwQFFw1RqHwKEBd/naCT7Fer9/IIfjTz5e3GKVuxns+ikn8HMCNe72fk/okksf
         DRsw6HnAghaMkm0lTwLSIh8e51jt2fPImV41dP6g0TsEbeLqknmPCwxWAPp3kGuKCkuC
         sUND8hoEkdLkRKnJ2HQGPdGOLJBJy3G5zxaFclZliACbdbSSILME4oBD6Qrs/5HwxKDY
         0x+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gBWgeFsq;
       spf=pass (google.com: domain of 3zkvuyaukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3zKvuYAUKEesZbeObTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Z9q2+mmR88vF66c/RskznxM8ZCe5zRHGyyzxSO08yw=;
        b=cKtT/9IYqebyFWjMx0p909ACKvzDMH9dSmP7ZEbzxKSBumNXHmtRZAS0waHOiGLMdN
         Afpg7OZ9lp96THN1+/I9dO3YbPb7wSL5r8AkDPus+t/FFWWcs9Z64TicR0LY/KNtxqGj
         3HBC2Ynyk9Ig5BTdLPuKmeDw8Xo6GwCL2bOZjQ3IGwXvIU92T5SA9ACwARkNuPg5Rer1
         14OXbEW4solf/6VoVk3c/oybh+4uLpdLXo77mmpU2EmtM3e8udO0QhrpitAekc9XzZtU
         LI5uqYWdtgZ0ywb1Sqy0ZXmXHF4OULJcd8CduD6DEaol9QRQ41lp/kpU9fa10p42r0BC
         Zt4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Z9q2+mmR88vF66c/RskznxM8ZCe5zRHGyyzxSO08yw=;
        b=npFwwDCvTVIW0byTcFqhCvaN8uuBw+PwpEueXY0x+ChqBAGgle/OtcFwdPwGZq1FKm
         bVUfAzEXjo8J1OY3gx+Eop18rUre/IDw+HuBCEFetXrIE/GT/pUeVtH0Uf4p6+GCMsZS
         L0/aeEYcBbCsXnGM+o1feTq2qZMR7p1Y1imqBCWuD0JeID7gWhlQ0R87fJb26ulBLxFb
         9ljl5HJn67pWRfSB+tcGJ71LhNmbE/cUm7oq9fXO3S31gSNOdmOpvMPmjtSjSApxrZ84
         AY7lHUJ3PbRzwbIiw+U8miT/6QX67P2FTRMHy7WF9Msgd3skbghkTpFYAasvixarBxuZ
         v4ew==
X-Gm-Message-State: AOAM531r3DRFAiWUsiG6vHfgv1HF7r0Mne836M7bBLJR29i4Fj4W/Jmk
	OARIMrg0kdEW7paestRavJs=
X-Google-Smtp-Source: ABdhPJyAV5ojSTm+5pLbSkKA4jV6cP7K+b5x9ALCrR3YSYZOz7n28a3yRJD4ev95hinLO5a7HDvKcQ==
X-Received: by 2002:a25:d4d3:: with SMTP id m202mr12067230ybf.350.1626254285151;
        Wed, 14 Jul 2021 02:18:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls1016306ybc.2.gmail; Wed, 14
 Jul 2021 02:18:04 -0700 (PDT)
X-Received: by 2002:a25:8093:: with SMTP id n19mr12065807ybk.414.1626254284740;
        Wed, 14 Jul 2021 02:18:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626254284; cv=none;
        d=google.com; s=arc-20160816;
        b=PMq0Bsj+xskcC0vaAJAu56t1n6bgRUYHOCIG92AAWMtptnv6RZyEqh1aHrK+sDScJF
         kmCIpaFw5qH9dxlGS7u3AYR3C3ujNJLyMNmuQYsNkASRc0zDVeN5cAxgSE1ojhpUz3Wa
         gWQ4K96qzdQQPCTJfXWE7VDj8itatBnEfe79Z4It1zHRg9Fdj81hCeIJA2ReY7MUb7BR
         6vpPB7Et6KQbtIj6U0AZIMmhYGumW6uo2hOdkkS2w84JebbcrRsETKkMiZfs1WMo7n5n
         VkREXu0ocXIaBOzUU1P7phATBKaItV1I38/hPhoQ9ZrmJsZeDXk6Wt+qAJw0pxh51sLu
         wd2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2Vsop99W4s6lWe8cK6l6K/rAGWgwPIdctdVvFKdP78M=;
        b=yXzpH5wFPx7IcQutxkD/SZU/ErSod/AJvUzwSZVA1F2SpKfoz3zkIVefrUyXCx0/6J
         zK4FsluvgrOKPaz+oZp2qFPrB/p0ciGwAalXCIlw/A9x6VMRlc6DIDUD5sNKMxO27Ulp
         Jqlhe0pYY1L7MTICU1fX3TmUJMt7lIlMYeJeABD1J26QCoEbIX/FphzK5qvlTw/Cke87
         edLDJ/St6DdimGVDRN6wwVNm3AYmaeUnrcaL2BUK9cqaf+zth5lG1zaoZrwTepxjyyoS
         Vtwd0F4q7D09F/hC43rBtI0dOuWrW5Qgv7xDuJ2sIEZZ4u8PftyMuqrSkhbfQWHFuH3+
         12Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gBWgeFsq;
       spf=pass (google.com: domain of 3zkvuyaukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3zKvuYAUKEesZbeObTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id t3si118033ybu.3.2021.07.14.02.18.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 02:18:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zkvuyaukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id bk12-20020a05620a1a0cb02903b899a4309cso765373qkb.14
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 02:18:04 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:c569:463c:c488:ac2])
 (user=morbo job=sendgmr) by 2002:a05:6214:13c8:: with SMTP id
 cg8mr9613493qvb.23.1626254284377; Wed, 14 Jul 2021 02:18:04 -0700 (PDT)
Date: Wed, 14 Jul 2021 02:17:46 -0700
In-Reply-To: <20210714091747.2814370-1-morbo@google.com>
Message-Id: <20210714091747.2814370-3-morbo@google.com>
Mime-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH 2/3] bnx2x: remove unused variable 'cur_data_offset'
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ariel Elior <aelior@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
	GR-everest-linux-l2@marvell.com, "David S . Miller" <davem@davemloft.net>, 
	Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gBWgeFsq;       spf=pass
 (google.com: domain of 3zkvuyaukeeszbeobtbbtyr.pbzpynat-ohvyg-yvahktbbtyrtebhcf.pbz@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3zKvuYAUKEesZbeObTbbTYR.PbZPYNaT-OhVYg-YVahkTbbTYRTebhcf.PbZ@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

Fix the clang build warning:

  drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c:1862:13: error: variable 'cur_data_offset' set but not used [-Werror,-Wunused-but-set-variable]
        dma_addr_t cur_data_offset;

Signed-off-by: Bill Wendling <morbo@google.com>
---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
index 27943b0446c2..f255fd0b16db 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c
@@ -1858,7 +1858,6 @@ void bnx2x_iov_adjust_stats_req(struct bnx2x *bp)
 {
 	int i;
 	int first_queue_query_index, num_queues_req;
-	dma_addr_t cur_data_offset;
 	struct stats_query_entry *cur_query_entry;
 	u8 stats_count = 0;
 	bool is_fcoe = false;
@@ -1879,10 +1878,6 @@ void bnx2x_iov_adjust_stats_req(struct bnx2x *bp)
 	       BNX2X_NUM_ETH_QUEUES(bp), is_fcoe, first_queue_query_index,
 	       first_queue_query_index + num_queues_req);
 
-	cur_data_offset = bp->fw_stats_data_mapping +
-		offsetof(struct bnx2x_fw_stats_data, queue_stats) +
-		num_queues_req * sizeof(struct per_queue_stats);
-
 	cur_query_entry = &bp->fw_stats_req->
 		query[first_queue_query_index + num_queues_req];
 
@@ -1933,7 +1928,6 @@ void bnx2x_iov_adjust_stats_req(struct bnx2x *bp)
 			       cur_query_entry->funcID,
 			       j, cur_query_entry->index);
 			cur_query_entry++;
-			cur_data_offset += sizeof(struct per_queue_stats);
 			stats_count++;
 
 			/* all stats are coalesced to the leading queue */
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210714091747.2814370-3-morbo%40google.com.
