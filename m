Return-Path: <clang-built-linux+bncBD66FMGZA4INLMP4Q4DBUBFEG2BDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id C73883D680C
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:19:34 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id o5-20020a0568080bc5b029025cbda427bbsf7462377oik.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:19:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627330773; cv=pass;
        d=google.com; s=arc-20160816;
        b=sv0Nmb/vpoYf4hB+oVXgVvZSqXbGyZJrvitot6HppDZL8kO0bS89o45gUJ7qs5pZZe
         ugkPsLHVnwLsFfOpTSg7oz2NV1u0Z20cLMY5D28vuLcUiogrzhP0LzECyydEHq2Gi4Ad
         NdreYKo4zpTKGKPVfVk2M9Y6wqbr1gBYgqdiQb+vW45IDvTe+aF9UUwyVZ0f6m9rfk0Z
         1QI2df+r9OQhP5cuJhqUrHIEMuWDSKnLULz/4puAo7dh4uWiTMARfoMXtHrgs0mZJIXr
         l9fubt9mkKq6mQkdtXINfsCf2TKxGOWtTRc6iSvthfuaHDQzw9x9/Ue1VHaa/QMKbPm1
         N1Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=1blYMQBrlOLC0m8y1A0gnnT55Juw1Y8cY/Nam0E1FbE=;
        b=wNE4HI6ZZzatMBgT+UZCzP1Dc8LF0xpeKWtS2T4dz8ddwwtejVc1UgptjjshFC03SG
         Sm0m2k+4Cy8MusIrgZrzIO9mDpKDCkGCabTxuVap0ZOoyYy8XS0yqRXsGXXiPlGgab+0
         OIG0bqxBBkj4CiBNvvWp2SKMHi6Lgy4+zTQXGvyP3H6Qz55DY8YRZ4AENu2n6pZ5IRZf
         XWfxs9dqXqLYoF7g94+fdMcLyJJ0O+jWLVJXpddqRpgkShab8VF8fRlXzl4et9TyzLOY
         ZsC3gJ1/BIRkYFdfWP4Y2l+ZnQDllzbassfUhF69ysRBedbWYnvgYLv1cGoANXqWka33
         hQ+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KJHhZGIp;
       spf=pass (google.com: domain of 31bj_yaukere358s5x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31Bj_YAUKERE358s5x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1blYMQBrlOLC0m8y1A0gnnT55Juw1Y8cY/Nam0E1FbE=;
        b=DoTPkrbhNKrO1RkoKemTlAeaOWvsx/oxBZOqtGpAi83cyqlIPl3dzB7Yb6KsB+V4nQ
         p5zDJNqM0Luy2TqWdJf770GNUUdZpv9lwe5lJDrbNjJa8T+VmplQXgB7f5nQA7smc/bK
         xvqCTGzHQk01icoYclybe7b+qbKAvBayDNqM753ncxp8v1QN9Wmt/0W+0rHHt1SEnqxb
         kJ06u2vtya6sm/7X/SuV6e21To+DckaDCreOvIuhd5wffS25MndFsFaXEEjbkq1g/zpi
         8hm8gpom+EkTdT9XFxTJqd/Wj//L0JqluCcwA9KZbvytYbmfuXx3z7vMiO1bSTvVDEvU
         Qeng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1blYMQBrlOLC0m8y1A0gnnT55Juw1Y8cY/Nam0E1FbE=;
        b=HPpNKGNVDDe6GXsSiF8FuNPbkwg8gxPvKzyMWiURmRymDQTWz9GwNvAwimsW94GyZe
         UuADomhUIp6mfSEEnaVpuXy0Cf8oSob0JIxdmh6Xv0GI2/SGZqGk+m06d3FSYIzn0ngW
         mkbyLf2If7OiVAqdgzJ2EqPii394CbIhohB1uwAeL9O8n1Q2r01wX30hZlsxXiCrploR
         6N9Xz2CNCv8ZRT/p6vFZ5l1M/+gjRtb70DMRzoimdyQihjpYst0cXmWUqoi7llEIg6bR
         4K3XIwWBC2eW5W7o3nM+sS+BrVH9mtE1MnLOJM7WFSs72Ow81jt1l+fAW0dSBEfUPpPs
         qmNA==
X-Gm-Message-State: AOAM53208C9y9qk9fyc9JRDZ2yg5zNjX53Ci2luuSP+UBoh8AlASeItk
	NaLIG6pxJjgtPXFQgrWPB14=
X-Google-Smtp-Source: ABdhPJwivevqwbQb6Xr7/GdC1lo+D95DCcY2UdukHMxOV9PM6MUSbYppvYb1aHGV9FJFNzdHR+sZHQ==
X-Received: by 2002:aca:4a8d:: with SMTP id x135mr12948388oia.6.1627330773704;
        Mon, 26 Jul 2021 13:19:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1687:: with SMTP id k7ls6044333otr.10.gmail; Mon,
 26 Jul 2021 13:19:33 -0700 (PDT)
X-Received: by 2002:a9d:58e:: with SMTP id 14mr12964171otd.222.1627330773342;
        Mon, 26 Jul 2021 13:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627330773; cv=none;
        d=google.com; s=arc-20160816;
        b=bEuDd6SUAqoV6XjA1Y6u/bBmr0F526076wjoWWc0gLMTENfvHwXjMyu0MbySOXBN8z
         DM6cJ1t8rkEbLDcIkx1yYnfEyS1UI+/AUByA0QKu85su1UIbWJXxvLFnvMmb+X8S0kbt
         4p6LyGmEMsGFOgnoiC2zxmOUnFXj2MGq2bzP7cifU2LodSlh0eEVjd0uxQ3nZN9m39wM
         32e4svRqY+vGsFulVq7aCC+SflmU4KerQApoJvC0M4VAWJjuiEulMyByOogXpeH+XJ7i
         FbtQj5MneDrS+P7gOXfm/hdsajGng+1YEeGRrw0QkoGYyd9uHxjpgmOnjqElYRplNnqR
         OBIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=VfDxoCReDm+XfUOmdfI9bwSV32koHBs4WIv0MpubLz8=;
        b=nTc+gMgvQzfW+NXNW3kGEL6ygq+rqWA+Ml4oPrjS6wTM3SqjAXNyxRCpWgoe+hBMwI
         8roGHAFYaEiIr+L6IbZR8kd9S9C3WbfSoCaKBT+eMogiyDBPd8w8BNFR4v6kzs9nafGF
         HKoYCfTeiKZcP7T2FysBeKoDnVozSK93oC6MuZwZOFWcNdT5LhIODizcqlZZogAfZHQk
         5jnuWtRYAbJPM4Afrn/gb0O2idv/RFI6bDSu+KzcLNXr2BMCTxJI1JWXov2IZdLFPvp6
         Mr8QUlqczQx+G5vIqh2fWOJoCcb98SqXUx8HXjPc11srSCyaVwo5KfPKXioqRjXNuVHL
         MW7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KJHhZGIp;
       spf=pass (google.com: domain of 31bj_yaukere358s5x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31Bj_YAUKERE358s5x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m22si135079oie.5.2021.07.26.13.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31bj_yaukere358s5x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id g11-20020a25ae4b0000b02905792fb55b0bso4583070ybe.9
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 13:19:33 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:ccf7:db54:b9d7:814f])
 (user=morbo job=sendgmr) by 2002:a25:2593:: with SMTP id l141mr14862499ybl.489.1627330772904;
 Mon, 26 Jul 2021 13:19:32 -0700 (PDT)
Date: Mon, 26 Jul 2021 13:19:23 -0700
In-Reply-To: <20210726201924.3202278-1-morbo@google.com>
Message-Id: <20210726201924.3202278-3-morbo@google.com>
Mime-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v2 2/3] bnx2x: remove unused variable 'cur_data_offset'
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
 header.i=@google.com header.s=20161025 header.b=KJHhZGIp;       spf=pass
 (google.com: domain of 31bj_yaukere358s5x55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=31Bj_YAUKERE358s5x55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--morbo.bounces.google.com;
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
2.32.0.432.gabb21c7263-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210726201924.3202278-3-morbo%40google.com.
