Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4EDYXUQKGQEQTW3AHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6478A6DB1C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:07:13 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id t5sf26321688qtd.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:07:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509232; cv=pass;
        d=google.com; s=arc-20160816;
        b=w0QcvVu90l5+ylbdvI8dLX+xffcGcCaVv7zQlBpUtblP901tcIYO2HHpPuZlyX7Kt5
         /xjdQYQkAfo1BMKVlvucLn8pTCsNXoyPm1FCHFwKsQeJExuwVMc7m946wYrBI29JNvz/
         NJc8k+drgm6cxtKVzPhn9FoXHSMyldqQGK9qhKMtxh8EQQn2xsHwXDSO1aLI5OPCLyoL
         cQxoBK1whiRItfLZ+jahufYchlGaC+lKjU1zUneSkZg54vw/6kvt1gQYsXooggB61BU0
         IrWQiyHzOjwuemSRCDWpg8hXePHsxXa4PXGdyiQc+ZZsNwSjd/kGPaE3JtZ6NduRgihZ
         VKNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lwDeDuTnZy/SYQe7hM6qMLtegMt22I39TDsc4Lf45O8=;
        b=XnNtzxmKZO+pYHBM8TdMOpuzr/iojmcNCoIR4Vg8nPZR8adRUDlEd1dPIYZZsvp959
         Vwp8bZHocnlIt5tKULpm3n2evcjxIv6X4i/8PMvfgSWdWNrDGr84ZIN6xg91XphWRAAv
         EKVGdB759/UKQv92HSebLJ+2WB6m35swfmfqj1kuMw/JqCplx4BzVeGG9BfNLQSEenor
         Kq7J3s2eNxD5FDyavm5WeOnePVtl76SN1pKvAmsy3ikYooFQBysEPestErJUlqHlsgsC
         Ahr3VQ1/cHjSqAPjCIgQZr26k8V7mzR5azaZljldSP/DJB9SV301b5l545RtPHHExEKh
         p2eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s7zHFC+c;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lwDeDuTnZy/SYQe7hM6qMLtegMt22I39TDsc4Lf45O8=;
        b=kETz3jU67unHpwUELYrTteR1BqA6PDI2n2iH4nSNJsJpgp9uY2XciuUpvxnFs/+7uc
         nukGS+8BujsASHpCyh6WnHNrfQuDz3r35yCiy1Lm42B3vHpR0ip6H8Cu7F0F+sUCQtXd
         8AwJU8qeIuYTZI8MVm+gNMZa4/vG2H8tWSre7YhTOR/LuHDO1NWT7+mMQkibVq9jkBfP
         XxVa6855N71rzRsYiaNI3Iss66BGXvMmEyIThgGK+6xyUOix6GqtbNVGrHnp0lkzOQOU
         mfPA6Sf2kR4bk1uVQY8CoMBLEyvtlLyuA28Koz1oj/G00yZk30JvETwqKvT6zxhUO32r
         J66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lwDeDuTnZy/SYQe7hM6qMLtegMt22I39TDsc4Lf45O8=;
        b=fpj0NMKODbYIn2XqdE+iRzG3F+1RK2HucvumcbFguZNL9/akUVtCeiFofyo38Hmwl2
         6Hv0oQYtTPGja773bidNG/avo/VjYR2nZIUND6GrtvtZetYcnri7TZ2qITrQ8kvHbCnU
         /HiJ29lTo+PNRWWEuc+ltGYnQfOnDM8fZLoKhYqF72L9rg0l8NMLKcKo61VpujUmTqbD
         oXjvOtPCp+OwQzqMZjOhmgNHWPcS+RtaunmnMXWr00X8nBKRiifPCm2GWy49CLrcS8uH
         8ozxuehMj+pgkp1Y77jXeD0bOr5RfI5+KQpUHiDUz2srHfgcreCJXmcP11iIDuytRQU4
         r0tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdmyMgc00XkLj3TIW0fCW1G6JUODU6uy98owVR0tdXmhKJ46Mf
	G1OPQOYh29r/jOKQgNe81sw=
X-Google-Smtp-Source: APXvYqwQZ9KLmRel6Y41OVzw2u5h1kljT31Z3OkEao7sOva9ubFnWPShVJn5mzj2EFSSP6KU8Hly1g==
X-Received: by 2002:a05:6214:1274:: with SMTP id r20mr34418000qvv.127.1563509232530;
        Thu, 18 Jul 2019 21:07:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:664c:: with SMTP id j12ls7687378qtp.12.gmail; Thu, 18
 Jul 2019 21:07:12 -0700 (PDT)
X-Received: by 2002:aed:21c6:: with SMTP id m6mr35840984qtc.173.1563509232301;
        Thu, 18 Jul 2019 21:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509232; cv=none;
        d=google.com; s=arc-20160816;
        b=W2BYCBoTLJiBQOVaccWRsEPW6jWVwnpFC3pgxHKXfoBMbKUKTAbsNFGUjW3MCtTdMC
         jqHKClG4V6ROMN3QLgl5rXMiOIIonoEp1jKqctDZ1V2my6njzY04bmYNPWJBW/KBDQVp
         0rXEG48zq9Mw/zQaG6tJO6vQvGx2A8vv3J6ZB6hv+v5FQqtHAFE9ETeaWC37YwxFNlzU
         +FJIUoV9AX59HKvCUnycIARBXHwms9Z5N+u2PRKr0v7FPeSxPILzs6g3O38EGwcBaWw1
         19/PaVg8mXbZ83ZJx1UUXnII+EZzHlXi8BU48MYrZunjaRPKPztD87Qm27WkFckhSx/t
         O3IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7uWL+i7vfn1a0W9tVd/zenJ9uWf1rLml+3w8K7MqpfU=;
        b=DDu0LU/74jxn3aS+pXrz9Dfe7XtC54CQemelVJ5occxiV4FYiBoAWvQjxRjW/VSg8x
         QfRMUrHZu5hyxiykQNmuq28FQCFomeVDndvYCNSQURKY8XTk3pHuniE+uiVtzp5tMAMh
         DRkt6/xCB+Pm9jxTp3Q4zmgkMxcovpi6g1nZEEcK2UPaqU6EJym6QmSMn2PQW4yYIV0F
         UFV20NsE9BSYmwopxrlSZKvI9TmDHRtqIj0l/Wc8zyCqwPwnAvcZzhITxA2Ljq1iw7gA
         sCqc4beBcczLY/0LIvhFD7nJPFHpIjPOZ21UF9+l+DTIUTrkRPbDxY24pVRAjScZDx7r
         yfyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s7zHFC+c;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z145si1236992qka.3.2019.07.18.21.07.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:07:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7667521849;
	Fri, 19 Jul 2019 04:07:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.1 137/141] cxgb4: reduce kernel stack usage in cudbg_collect_mem_region()
Date: Fri, 19 Jul 2019 00:02:42 -0400
Message-Id: <20190719040246.15945-137-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=s7zHFC+c;       spf=pass
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

[ Upstream commit 752c2ea2d8e7c23b0f64e2e7d4337f3604d44c9f ]

The cudbg_collect_mem_region() and cudbg_read_fw_mem() both use several
hundred kilobytes of kernel stack space. One gets inlined into the other,
which causes the stack usage to be combined beyond the warning limit
when building with clang:

drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c:1057:12: error: stack frame size of 1244 bytes in function 'cudbg_collect_mem_region' [-Werror,-Wframe-larger-than=]

Restructuring cudbg_collect_mem_region() lets clang do the same
optimization that gcc does and reuse the stack slots as it can
see that the large variables are never used together.

A better fix might be to avoid using cudbg_meminfo on the stack
altogether, but that requires a larger rewrite.

Fixes: a1c69520f785 ("cxgb4: collect MC memory dump")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/ethernet/chelsio/cxgb4/cudbg_lib.c    | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c b/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
index 7c5bfc931128..f46202288837 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
@@ -1066,14 +1066,12 @@ static void cudbg_t4_fwcache(struct cudbg_init *pdbg_init,
 	}
 }
 
-static int cudbg_collect_mem_region(struct cudbg_init *pdbg_init,
-				    struct cudbg_buffer *dbg_buff,
-				    struct cudbg_error *cudbg_err,
-				    u8 mem_type)
+static unsigned long cudbg_mem_region_size(struct cudbg_init *pdbg_init,
+					   struct cudbg_error *cudbg_err,
+					   u8 mem_type)
 {
 	struct adapter *padap = pdbg_init->adap;
 	struct cudbg_meminfo mem_info;
-	unsigned long size;
 	u8 mc_idx;
 	int rc;
 
@@ -1087,7 +1085,16 @@ static int cudbg_collect_mem_region(struct cudbg_init *pdbg_init,
 	if (rc)
 		return rc;
 
-	size = mem_info.avail[mc_idx].limit - mem_info.avail[mc_idx].base;
+	return mem_info.avail[mc_idx].limit - mem_info.avail[mc_idx].base;
+}
+
+static int cudbg_collect_mem_region(struct cudbg_init *pdbg_init,
+				    struct cudbg_buffer *dbg_buff,
+				    struct cudbg_error *cudbg_err,
+				    u8 mem_type)
+{
+	unsigned long size = cudbg_mem_region_size(pdbg_init, cudbg_err, mem_type);
+
 	return cudbg_read_fw_mem(pdbg_init, dbg_buff, mem_type, size,
 				 cudbg_err);
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719040246.15945-137-sashal%40kernel.org.
