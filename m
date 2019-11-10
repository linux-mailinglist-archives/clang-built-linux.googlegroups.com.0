Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3HSTXXAKGQEBUXHARQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A8081F6277
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:43:57 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id k68sf8632061ywe.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:43:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573353836; cv=pass;
        d=google.com; s=arc-20160816;
        b=OhR+G5A2bEghH7fYurc3ucg2wOpew3O/l4nPXKE/hp6nezjSUNhqohjdyBTF1EwWDI
         tuVDjTjoggQcV81jqNr3aFq2epOdEagHvnBArVY9M4unKHss3e8nfbHjK3WAGqhN+CrU
         uaUyHX7AnBX+TSE5x3WK2LMfLIIDvMT/UB0sNzoLRwOhUKIQMGFB9wPv5fyE0ta+OIcD
         kr204/eLwZM4/UYapoHEcXPMmcO+hsjjHgdyjDMcK+oqocIzuCrWF36hysadwUVDvyo5
         SzdZZLKbUCf3ojLs69LNFpqXWLnX7TJYVrl1aPKvrV7bYEjWrVkvoL+e+QyKk8pRNhnh
         riAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ueal0eplXv7m0ixtAWWE5a062nxPGmX0MPw4RUtDtgc=;
        b=dd3Nhihr4C/QfaAuPC57YrWHy73fQxK89I/DspNg6z/SjoyGOS927sqSZZuBc/EZDX
         ncy7rDciis9sDHynAyaGX82jyK/YrU5NNyDmYfk3o83gwrvjVEKvc8A5UOeVjkY57+59
         kqw3ti6ke3tuPXsE92blA72H/0zLRq0s5wrXxEEzbI1CPUA74whgMX1z/AHN9uzpd8i9
         YgyNQg7ZvUkADR4/nVj7T+9v9mp5Sy+A87DHeJZHs6LipF8RSVQ8Y7/6Zn2oNatLIzjW
         1lMlJPf9lg6mceW1wk2Q3cAA3YSohdISmGNyVVEg84DxcbszQ3ik5I7FAkj0FjAfe9G6
         LWtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="iec/aUPw";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ueal0eplXv7m0ixtAWWE5a062nxPGmX0MPw4RUtDtgc=;
        b=KxMFkxTSa4jR+G82cYUk/pbbpqrEBOzNnn57hmxxJT61mrKR9MRpv7JUh6Y/ySTrab
         nNbb+MvywnDRppyzWxKrtUcEUjDjyr3Kr+Z5bFoUPlwTGhphFEVf5fVpqdcgHDxFB8UK
         ze3hr+lNOT53Sseut8VFqM6I5nTbyZORhIlxt1Nt2JGpC+REYPAmawUM+GsDEvgNeDw5
         P+MFbVjCdbCCLtH5E0kIbxqeb1CJm8HkwZnLIPgpERLK2FwMMDI+Q3dQnph8QazhNoY6
         X7ooXxzwOZJhydg4U4trkHeUGOqUlYo6GjSRQhd5Jl2u5g6c1INNAiCslVQgdpVH1l9g
         r/7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ueal0eplXv7m0ixtAWWE5a062nxPGmX0MPw4RUtDtgc=;
        b=H3pEzPw7wr3enixiTDtDUWbibSoTG+PsrUpQ8+jlQM2eWRfZ5tWOEVxl6Tu3yQgkPb
         IoCagIQBqe6CJjplKry4mcMEpjijPsXsWeYtlnayxIDxBuMNC6x5d3ocK/fF/KW0RzEm
         7OKrFfwpVra91lDzHKnGuH1RSAYz6TiLAOZhrJO1FBWjQ39+C2FOV+0sedd0YrLUBL0M
         SGxcj2vxQsF2gMOawZNaCGed2hph1Tcv1v3MyVNcBQW0zbCiRAPzMaZhdSiZ2RkQ7h7p
         ed8M3oWyQpX+9czDetUbJ4xiGMnWJVSD7n/OzgKUn0hC7r17t/gItHlImQ7uHKG8PMWm
         Y16w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9I7FRtDqmpjnMhDjWDZg0x/GmHsi1n8P3nDMeCJOeAymtwfhz
	e8F4kmuCzmlfpQfq3fS3Xgs=
X-Google-Smtp-Source: APXvYqzKbcnZaNG1qd43xHYcmJI5zwvfhsikeNDY0pcieYAEw797Rg7ImEYrzJKUHOiQgvK7B+PG4g==
X-Received: by 2002:a25:b082:: with SMTP id f2mr15986529ybj.452.1573353836641;
        Sat, 09 Nov 2019 18:43:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls2263043ywe.3.gmail; Sat, 09 Nov
 2019 18:43:56 -0800 (PST)
X-Received: by 2002:a81:ab4a:: with SMTP id d10mr13677299ywk.152.1573353836274;
        Sat, 09 Nov 2019 18:43:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573353836; cv=none;
        d=google.com; s=arc-20160816;
        b=FbqUww308nz9bDJJJai+LKabq2nmvfW43PqN7+Wf5xuKomaFi5M4TNJ2ZsAhIq5a1e
         J+qhAGCwN5Qoem3Gz96RBwqQwj3Wy/y3BbOY7Vn4a/jNX1gMxwqNDXPPtZXt0EeKpECo
         Jg7QJQDJKUpG3EDWSH4IvomWVzxg0cU6VNE2EFrFCSE1N3obvJYMvhZRM5ntpXLjMW9o
         c0m2uaZFccVDaqvW2ksnIOfmRHehy1ZFIYYvPnD+DqxjW3Ad6Ai9XsLIA9Q396s2FllX
         HwhirHyVIQufnV/NjFhiyGGOFT5clCd8J6tJb/qTItZAkS8VmCi80uuI8jyi6Kwrm0D8
         OAvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Eb2VIgRjnt/ISMdhk2ZSwHryiyVNLls7EUZ3ELOEWlw=;
        b=Lr6bO+P49PDX5Ha/+lLbQ9QHpLI0gKWJECJr2WfpEA3NnIAAm+Qavj32bwe8wrfuVe
         2X/fELTQNtc31FmBqUQnqCu9lhevwH1FY7OnON205sWXxpgexGiXZe1k7vqn74C4PJbz
         NlwixjQ6iQCuIv9cNb0mqMNkEMWqOP7JcToZ0PI6co1OZnhTyiqgmgolaJ50Xhk3W1AF
         uBB+ixVTudKc+fngAxuM+WiON6SLG1gffqIqp0AMnwLAmKDwfFhDWI3MzPNYx8BrWfMs
         7gn4MYEMrh27K7G1Ihk7EN6rITuX2t78K6a2W2DPYMpEvqYwUwc7tQTSjnMmUHp2v/Mv
         PvcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="iec/aUPw";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f184si803838ybg.3.2019.11.09.18.43.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:43:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 698AA21655;
	Sun, 10 Nov 2019 02:43:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Steve Wise <swise@opengridcomputing.com>,
	Jason Gunthorpe <jgg@mellanox.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-rdma@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 126/191] iw_cxgb4: Use proper enumerated type in c4iw_bar2_addrs
Date: Sat,  9 Nov 2019 21:39:08 -0500
Message-Id: <20191110024013.29782-126-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="iec/aUPw";       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 1b571086e869395b6a11ab24186b0104fe05c057 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/infiniband/hw/cxgb4/qp.c:287:8: warning: implicit conversion
from enumeration type 'enum t4_bar2_qtype' to different enumeration type
'enum cxgb4_bar2_qtype' [-Wenum-conversion]
                                                 T4_BAR2_QTYPE_EGRESS,
                                                 ^~~~~~~~~~~~~~~~~~~~

c4iw_bar2_addrs expects a value from enum cxgb4_bar2_qtype so use the
corresponding values from that type so Clang is satisfied without changing
the meaning of the code.

T4_BAR2_QTYPE_EGRESS = CXGB4_BAR2_QTYPE_EGRESS = 0
T4_BAR2_QTYPE_INGRESS = CXGB4_BAR2_QTYPE_INGRESS = 1

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Steve Wise <swise@opengridcomputing.com>
Signed-off-by: Jason Gunthorpe <jgg@mellanox.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/infiniband/hw/cxgb4/cq.c | 2 +-
 drivers/infiniband/hw/cxgb4/qp.c | 7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/infiniband/hw/cxgb4/cq.c b/drivers/infiniband/hw/cxgb4/cq.c
index 6d30427940942..1fd8798d91a73 100644
--- a/drivers/infiniband/hw/cxgb4/cq.c
+++ b/drivers/infiniband/hw/cxgb4/cq.c
@@ -161,7 +161,7 @@ static int create_cq(struct c4iw_rdev *rdev, struct t4_cq *cq,
 	cq->gts = rdev->lldi.gts_reg;
 	cq->rdev = rdev;
 
-	cq->bar2_va = c4iw_bar2_addrs(rdev, cq->cqid, T4_BAR2_QTYPE_INGRESS,
+	cq->bar2_va = c4iw_bar2_addrs(rdev, cq->cqid, CXGB4_BAR2_QTYPE_INGRESS,
 				      &cq->bar2_qid,
 				      user ? &cq->bar2_pa : NULL);
 	if (user && !cq->bar2_pa) {
diff --git a/drivers/infiniband/hw/cxgb4/qp.c b/drivers/infiniband/hw/cxgb4/qp.c
index 347fe18b1a41c..a9e3a11bea54a 100644
--- a/drivers/infiniband/hw/cxgb4/qp.c
+++ b/drivers/infiniband/hw/cxgb4/qp.c
@@ -279,12 +279,13 @@ static int create_qp(struct c4iw_rdev *rdev, struct t4_wq *wq,
 
 	wq->db = rdev->lldi.db_reg;
 
-	wq->sq.bar2_va = c4iw_bar2_addrs(rdev, wq->sq.qid, T4_BAR2_QTYPE_EGRESS,
+	wq->sq.bar2_va = c4iw_bar2_addrs(rdev, wq->sq.qid,
+					 CXGB4_BAR2_QTYPE_EGRESS,
 					 &wq->sq.bar2_qid,
 					 user ? &wq->sq.bar2_pa : NULL);
 	if (need_rq)
 		wq->rq.bar2_va = c4iw_bar2_addrs(rdev, wq->rq.qid,
-						 T4_BAR2_QTYPE_EGRESS,
+						 CXGB4_BAR2_QTYPE_EGRESS,
 						 &wq->rq.bar2_qid,
 						 user ? &wq->rq.bar2_pa : NULL);
 
@@ -2572,7 +2573,7 @@ static int alloc_srq_queue(struct c4iw_srq *srq, struct c4iw_dev_ucontext *uctx,
 	memset(wq->queue, 0, wq->memsize);
 	pci_unmap_addr_set(wq, mapping, wq->dma_addr);
 
-	wq->bar2_va = c4iw_bar2_addrs(rdev, wq->qid, T4_BAR2_QTYPE_EGRESS,
+	wq->bar2_va = c4iw_bar2_addrs(rdev, wq->qid, CXGB4_BAR2_QTYPE_EGRESS,
 				      &wq->bar2_qid,
 			user ? &wq->bar2_pa : NULL);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024013.29782-126-sashal%40kernel.org.
