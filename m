Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBT4HW74AKGQELIL6QKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6B921F44E
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:40:16 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id a6sf2524729pjd.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:40:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737615; cv=pass;
        d=google.com; s=arc-20160816;
        b=XfcbLlyzcMhYuAeuDKI5FKfkDa4NwzNyvJyuIYPBddRV1MZjwPUGOa4bGbKRtEAxzx
         gDdf3U2Sv5VmSlXWYWMz1UKwfpVgAa8O8PWGkypZvPina5j1wjDWxWVrL1znfpU4p7g5
         Mkg5byuOmuHwqhULR9Pc9jXhNH1vdjCqLcdywBMIM1y7bhfSx9DhUpO2lCElbCJXcdW1
         mzBftT1YRmv22iq8O8xaXI0btim5/CgHo0gA0Ao4ju/LUJoxJXSSYIlb9i5pxQ9DFIly
         sB1PQ4TeG2tojbHG1VYzz5jSyaywsRTGd7n/L3F0BziYAukmdALuZqy1Sos7MAxrXZ34
         FCNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wLJCA2d3QcQCWb3588hChdeyh/30GnTY8s624lwcfWo=;
        b=FAkUs2AEc6SefNMilbUFf9BsJCCj99aSyUqeSL2JCQBA3jD+bTEwKlppv7Hq7N7c03
         YZjcgPWNnwXJ6oVFxF05MFP7firReqmGcdt2eqfjEIXtWCrTtBmRSZrxvGj8wRSq9Nku
         X5O130X14LiDtV2IOiyOXSZ6u6pllZFq3iLGf5qz+ZrfFt2y0P0RXPSQ6f2b7NZ4WLbX
         k1uqFft5wfFU3f3g4hg86v6N9xNAM6KV4xPAcsWZYbUHPKaUIgMVPeLD/BFih54EBqtv
         WUAHP4xJi+lmbiKoVwuHleBlY+mYl0kEZJOBFekzLiv0vShk953oVtlhNh/TcB+tiqTm
         ywQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L3eF37xB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wLJCA2d3QcQCWb3588hChdeyh/30GnTY8s624lwcfWo=;
        b=Adx6p/iSX4BBOkJxITrPqJkwwWvWaXuqKpDMRm+GX6zzLLHyWp1s0LyrrvVJe7c3cF
         kJukhs43QYIeMpb97uPTgJodqT98/iz8hMuvZqLM6sV6rVHrVKNclYXwTu7RfBE9kQ/V
         lCokNY1McylIC2r3oogg5IAzkYQBzfc6RO5uWaBbeYKyentvgYBg8OpchDLlWS1J7LsJ
         XGXu8NP58O3avGf51o9M5f7Za56mXJAMlTCN77Pn6OsWiQEVM/w7ddBrqkTgVvmtFWy0
         EhDqrQNeuBK+Sxjyc11lsUL336Ra32QAiVMmNcpKypW/HF0N65wCQ13ys4wKBHzQ8uTF
         aLBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wLJCA2d3QcQCWb3588hChdeyh/30GnTY8s624lwcfWo=;
        b=mIIKlFI5+WdRtzX3jN1C1GnwMRgoe1+Xi4wPUDpkUfQdFNZsefV2uET8ecjZZdTKnU
         NbIV3gzovmHABzJXQO7U5OEKJHzVeWFAfuaUhFu0tmd1OaUz7in+3zCnptqyXNGgEdam
         pVVPPfPuzzivzCR3S14RkZ3plvC6zCpR+fWUrxfB7/232qsgpNRINT5sjSXlY0/SEqRe
         NGabNcdBSVUI0+wWr82IccLb4WfGuFzJeVIPJhg7403ofKZxw2So5Wa/jnGbmzJHLU+9
         PNIkOX6uao1Atz7aAOg32umcb7POitsp7RrL+HcEYb/VRzbCk5Ur5MFL9EHCbu6naNu9
         GW9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yhqMwXNw8BqJY0qOfOIbxWNjQjiw+S4OHC2WNhRHXSLJyy6WT
	K7CJ99/T2FyXkOvo2slP6OM=
X-Google-Smtp-Source: ABdhPJx37oPT8axmwK4N7Ihd9S3grVGDN3c1vfedoySvKKONO+zRMw1cgK1bmA1IxDth/FXlqNANlg==
X-Received: by 2002:aa7:8555:: with SMTP id y21mr4615659pfn.75.1594737615548;
        Tue, 14 Jul 2020 07:40:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9798:: with SMTP id o24ls6635047pfp.0.gmail; Tue, 14 Jul
 2020 07:40:15 -0700 (PDT)
X-Received: by 2002:a63:fc52:: with SMTP id r18mr3745341pgk.334.1594737615167;
        Tue, 14 Jul 2020 07:40:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737615; cv=none;
        d=google.com; s=arc-20160816;
        b=GFtbGl0gyW9WoAkUdPhSA7lqWV1AgO1Zp9VCFsXDi/dAFRNye+Ty/Esv01ZwJ3TmN4
         4f8BlM7sUd+3LpQ3jSNYe5ePqv2qi93S6TUQCq9Y+aJu/rvC6nN2oyIkyCT/nWb3CiEv
         euFt1D7GDWyeLNaqEr1Jgc4WILc9yrQNrnAtGYL+dV3cGytFFCF9zIS3XUupm3oPGoY5
         UMhwJJ1ZamWbre0vKPJWnmLcfop1SCJmd0QCbOnaCRQsZ6vvIyMeXWSBU0jmyU6r/2d4
         0Eu7wztIm5gUia2/dgDgjBA357soKDWT+sTZnB5ZHA3oXvc7zgzpjjkMb4Kebw8fVoIM
         pdkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9CjcnrlwCMPnBwFn3vnSoIaDt2xWhCNMDZkzdgiacMQ=;
        b=uyonCmEib95HEacQAJlXYQiLqxKvuwV6owbq8vgANujkHtZ8+YxwjGHCKAD/meOJA0
         vY9UuxIbh+1XCEJplXccO/8pE9GJU6vKgf22pfIeL2eSOkfApG7CeDkxnv0oj7gr94R8
         4Lh7mjyJUjJrGkoWB320OtmKyx+/PFs7oo0aZnUcIDrgY4HjzDW57zp1DEIvAHE9qp9y
         FIt/l9tYlNIhAftBT01TVybCaBql8yVjTb205ydZjDPEcrV5Z493lb8gONM19WzPdhXP
         p0yVs290No1ZhZQ6pyFT7PF1gwktdqdFwj2afFnv7Hr1DNpSsdp/Hd9Bvc7OIw+WQFm3
         IMWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=L3eF37xB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si96310pjc.0.2020.07.14.07.40.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 150322256F;
	Tue, 14 Jul 2020 14:40:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	James Bottomley <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 03/10] scsi: scsi_transport_spi: Fix function pointer check
Date: Tue, 14 Jul 2020 10:40:03 -0400
Message-Id: <20200714144010.4035987-3-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714144010.4035987-1-sashal@kernel.org>
References: <20200714144010.4035987-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=L3eF37xB;       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit 5aee52c44d9170591df65fafa1cd408acc1225ce ]

clang static analysis flags several null function pointer problems.

drivers/scsi/scsi_transport_spi.c:374:1: warning: Called function pointer is null (null dereference) [core.CallAndMessage]
spi_transport_max_attr(offset, "%d\n");
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Reviewing the store_spi_store_max macro

	if (i->f->set_##field)
		return -EINVAL;

should be

	if (!i->f->set_##field)
		return -EINVAL;

Link: https://lore.kernel.org/r/20200627133242.21618-1-trix@redhat.com
Reviewed-by: James Bottomley <jejb@linux.ibm.com>
Signed-off-by: Tom Rix <trix@redhat.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_spi.c b/drivers/scsi/scsi_transport_spi.c
index 319868f3f6743..083cd11ce7d7d 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -353,7 +353,7 @@ store_spi_transport_##field(struct device *dev, 			\
 	struct spi_transport_attrs *tp					\
 		= (struct spi_transport_attrs *)&starget->starget_data;	\
 									\
-	if (i->f->set_##field)						\
+	if (!i->f->set_##field)						\
 		return -EINVAL;						\
 	val = simple_strtoul(buf, NULL, 0);				\
 	if (val > tp->max_##field)					\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714144010.4035987-3-sashal%40kernel.org.
