Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4OBQLYQKGQELZ4PJNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC3313EA6C
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:44:18 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id 24sf13422921qka.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:44:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196657; cv=pass;
        d=google.com; s=arc-20160816;
        b=JPS99kfaEMRv2zZ4yApsN9oNl0XyRwUC/YuacdAFQSvdHXRJM2zMK+RK6i3l77wcIe
         nWA/mLv/iUOQvsy+1qQlUOrWYAs+NbEOYrgloh9B5517goRqGtJzMfcvZRFLB+M3Liwi
         fWB63bC8dmqlC1DSUWhuKa2W+1m+prIfnXh1qRAr8VJx2ExR1U3T27YnfqfZUTybQb1Q
         DK68l6nGw1nyG+30ghQUFRIyLgxX/T6sTp4rE85d9z2bXvwyBB3B0ollBhzWDIjaOYAH
         DPzy4mQpAlXexQIo9u3WOH2kEgnEGb3sEAeWJGzskmj+GI/cDpBlG4GGaTLt8udY6QZC
         EM5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DPaHlcTyOuKwZ9natC6kSsX1JqKrMica3R0ZNm7ve9I=;
        b=O7o5olQHrV5TonxOEOLnr8ySjO9ElWtVzj42y6Vnr6RFsB0ZA0cFbDvw9NNdUNI0rs
         zHH54OPP5xKEe6jUSCbtH9Fd2SrOFWwLi74EIvWib0HV1G+H0V5bIdmM/2jFIjm4M3Uo
         ABDRS3vFiUVlwlfJxZX7CN2/ucTeR9t5jlERuBPHhg1V4AtJicaqY/4766bu+V9JGOJy
         CUqvjJzkVqijmvluBi4OFCMtlVz00kBjsHVH4gkLlwdHwC0+3CX6DZT1nQ1aZdNNBY1C
         G/J1wXt4bN83FMlQc+QhAjzKGDNDQ0J4vQHJC6RPZipRPOgAfGe0NAniEZNrGVwK5Qjf
         U8xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LKvDpKbf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DPaHlcTyOuKwZ9natC6kSsX1JqKrMica3R0ZNm7ve9I=;
        b=Y423FFM5FM/VDfzz0X5jYU70CqqMZCMBcDtGzz/HekanW7f94LDm/lDevM5hhK/3T+
         gGm342Ez0kiX731iC2ap4vRu9sx6IbimV5e//3OLuUXTHsDOqVm8qSOW3p1dK/4m4feq
         xcblxrICLI7JlfGvulbn7rfD//rdoGFo2M1Es9qs+5+mxCtoK+3QPK74JB3phn7tCCcJ
         FFfGr50hcN3oMYbvPFw+pBjSMrVIGr2IZMsoZh/RyEAubna1eV5byCiOb9kBMXzJtqIY
         w4CpRMudYLijptSupMUVT6pck29ejR9cX1gcK+AmfR8fVHALv2DbU12FC5IpTxOCtqa6
         YhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DPaHlcTyOuKwZ9natC6kSsX1JqKrMica3R0ZNm7ve9I=;
        b=eRC+eBhtFGhFgoP7XcKH2K/35LAGCny3vYLatvZostoWfuVOk6twZtdvW7gWUGzunF
         TomAx/Sgat3sJy9GTjSLPGTyfIaGqgjuQv7iKHVl3y4itVw4LAsdx2u1Nmcdy+oTBxyL
         jw2YOdOy0nvxI8Taat2PdsKm0LNs+gTUGpeAukdBAAkQbAaotM0UVKmtdxdOJVlzDr+J
         E991U89j8Gup16t176/Az9aeXguDnx5lwL3kqr2mu2TcbCzqYJLvrI4BGkp2sXRw7X9w
         9tnruHrCqoDKeD3fTDDhwYe1dsJAF5TqKVRByX3Vm4K1nQRSwbdpZsv0vVfgxclOUQkt
         /T5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV3N+ugs1i+GO/GCtex8DMBI3KFUFHN8g4OpAmyCTY9OoZ8ehlE
	fdu1g4L4aq0JmbnFvkgHXkM=
X-Google-Smtp-Source: APXvYqxtFa00K8dfMIZbq2h4EAuqBQZExEU+j/pmAvq/4CaVG20a6vjz9y2Ld8Fb9p2uW8UtSOu77w==
X-Received: by 2002:a0c:e7c7:: with SMTP id c7mr3814508qvo.222.1579196657782;
        Thu, 16 Jan 2020 09:44:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:108:: with SMTP id e8ls4915483qtg.4.gmail; Thu, 16 Jan
 2020 09:44:17 -0800 (PST)
X-Received: by 2002:ac8:86b:: with SMTP id x40mr3599780qth.366.1579196657370;
        Thu, 16 Jan 2020 09:44:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196657; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQZUJWtk2MuiY2ArxDWUwz8fkbMJHW1L3dier8+t1J6zTnt+geTrO5qYMKZ9344S7D
         Vfo1TQYHAB6rZEDLztqKRrK/Djy1IdjQke1dyVxAVXK4GToaSxuQ+P+gWMpYQvlUINed
         iJzA/u7n223jla0sSa2gta2O+5g/WJ/Bd2cvbihzAJqKCA+NvRUk2/lNdfl/DNI4vHGE
         S1wfsQ+RwH0yfvCtkPmc3cAh+kQj3ZEjlq/Ib9rguXMuuzZXkjrTlrDFm69xXZ2fHFC6
         EKZ/2QbqQdgnLi+KazaJXEuBXoFvupnmQzrVCEUaR6fQjeDPF7Td+2vD34CjtcSZdv0d
         Hk7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=E8YG6DTCZhDff8AB5qK2BON4ZZlJ5VmQOBTPKmchxxE=;
        b=mQmai63Z9IvWqmzvnWdK2Kc9UHLY67EJcU3RU1inWuECyRy8GGWdHcomNav9cLAyTq
         9yeZSkSjxHZsyh2aXFOv/YgHc69KYOm+a5P7Gc+n9qixNfh9h8H23+dHbFHf4ITMnWTN
         8yv4GBEo6izdgE6tYBh4OYXzeRPpUwimA0FtKSXuJWllyBgGZ0zhOLVZWq9Wp3MZfyGO
         7NPsLieiXpVgERH3lDlASYt3oGogr3PQC0TpaENuBtuHWqDgMxUZcpvnU601CFN05IQB
         gkvmcnpIZMFSlKSJx4NcDiJmkCesFwzoV+rFJRUCnciPZAbLL6/d0YLgT3MPp4uY12BC
         junA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LKvDpKbf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i53si1085366qte.2.2020.01.16.09.44.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:44:17 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9068D24764;
	Thu, 16 Jan 2020 17:44:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dave Kleikamp <dave.kleikamp@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	jfs-discussion@lists.sourceforge.net,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 063/174] jfs: fix bogus variable self-initialization
Date: Thu, 16 Jan 2020 12:41:00 -0500
Message-Id: <20200116174251.24326-63-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LKvDpKbf;       spf=pass
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

[ Upstream commit a5fdd713d256887b5f012608701149fa939e5645 ]

A statement was originally added in 2006 to shut up a gcc warning,
now but now clang warns about it:

fs/jfs/jfs_txnmgr.c:1932:15: error: variable 'pxd' is uninitialized when used within its own initialization
      [-Werror,-Wuninitialized]
                pxd_t pxd = pxd;        /* truncated extent of xad */
                      ~~~   ^~~

Modern versions of gcc are fine without the silly assignment, so just
drop it. Tested with gcc-4.6 (released 2011), 4.7, 4.8, and 4.9.

Fixes: c9e3ad6021e5 ("JFS: Get rid of "may be used uninitialized" warnings")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_txnmgr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index d595856453b2..de6351c1c8db 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -1928,8 +1928,7 @@ static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 	 * header ?
 	 */
 	if (tlck->type & tlckTRUNCATE) {
-		/* This odd declaration suppresses a bogus gcc warning */
-		pxd_t pxd = pxd;	/* truncated extent of xad */
+		pxd_t pxd;	/* truncated extent of xad */
 		int twm;
 
 		/*
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174251.24326-63-sashal%40kernel.org.
