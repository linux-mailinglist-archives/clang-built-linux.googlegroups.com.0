Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQUHW74AKGQEJHLPCAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B05721F44A
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:40:03 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id x18sf11741981ool.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 07:40:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594737602; cv=pass;
        d=google.com; s=arc-20160816;
        b=AosN8lVyqM5SESn0DCeIJNWoYBTumgvg6wiUBooFh3TMv9YW+TWMNd2ct5exPnkdDi
         vcrZWt3BlL/U5yYVFRwNZxNVROE9peEo/Cf6ouWob5DCHJicMaJVI+BnWbUY6z3D6H1X
         pEFAyz7cGgFe8ihILscx17EgDi4TbJHi8qc3NA6H+5FASJxyZSHNiJCbta5AWtWg06KR
         jdOPrpEOUctAumsaS38VR+go3SV6S2e9kPhyHCV0VnSkrulqDq/D4LvpR+pr/xqwZjK0
         N4hdUnZWvNS0BnuIOS22qp8v9qAseWWfMDHaOqY4WpXyD4XwaVdOS7Me3Bg+l+YSgQA6
         oP1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DKyO2tvCeXaNLLuLXg2MyVZutXRI9/W9GMC8pzA9T58=;
        b=MFEBkYBD3kdAfT4xZLMETlrDoIEUBiMIcTttPutlwOUh6kcPGiaewnE/B79eNdQ1sf
         T81tbKOP7jCUNhYSkQeLWms0qTAbfMV0RRwg7T1W3cjUD6EYmbsXUNgMVYDprVzJXiea
         fbBAUOMfO1YvK+iZ0YCmuXqpEzjTL2C2Ix2lS13SflT63h5brE2gnfzID/7rWYHoSEjf
         O7uwz0YtFBbNmUAZmEDanlbRI2cl26kMX46I8328ZGwtHhFlN90dxxHmPiHVAG+SKXa/
         7Ujmi0Cta7kjzLY2xo3bRjoz/96KjS5FzJs87Vrj/nhaahNqstpibCYmidLmApiJ1IFH
         T5gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mfMM6Rgy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKyO2tvCeXaNLLuLXg2MyVZutXRI9/W9GMC8pzA9T58=;
        b=nHVYeCkOVKa+g5DKMhISC7R0Ug2XCbN0k3G4Ga2nk6mLBj0Jq7XQEonR0KRWlpMGr9
         HpSNnXhPOUUPz4+uPkbvkeJn1rhTCI+ZbMMWiHErh52MjghSJTKXcUMo+clDYC/y7DEl
         K+sbV9raA79wjPAsmohc2XaEsG7/j7nNVah6VQCuw7GRIN0VNEItX9MrY1BRQUx7kke7
         flgzoSowdrn5u+6kBC5nUvmBvtGiI8oI/2XmOgdYKHG8ZF6l1jNX1X2gqV6VS3AUIX2W
         2wfTgGrQTB39rGhozLcWy5CqlGGao0cCSpHcfCOjgiYBs2CevY6XhSnOVT1Q7nNFRe7U
         g+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKyO2tvCeXaNLLuLXg2MyVZutXRI9/W9GMC8pzA9T58=;
        b=t/JhE44gRMNd99K+Q+l0W3wsjqCuA45TK4JcBYSDgGmBwZsJ8nIAE+pQPnutF9fY1G
         mvIYJSY7KyDVtoKwaJ9z+EyPwXZLSxV1HjYunhuicmBnwWoUnpgrFubaAh9qv9Ocgt9j
         qqDy+oFG8CBkCx6xZJCnqoGt3y8YyCdm+OnDxI6I5lxCFO204RTjsjMGiNsq+45GOom8
         0Plcny144YRANeMW6dW8ax1iUfUyt2wjAMOUGFsiD4ObplrAur7QhGE6bjcTfcZLLPHD
         3WNTRb1p60l/RX23IBcKmHeWtCWEwkX+cdtliRh0Sp7PuZrl0bYrNTy+zSkg4EIBiM7N
         8l9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531C1exxarq+OTuhqhz4HF16aN2d0AG1JlpBCpyDFpN2RboJjUu0
	kVcNSOo/tDemGVqkRx32Bzc=
X-Google-Smtp-Source: ABdhPJwxzba53WimaO1pw03sTyrRQ8ACxgvDZq8L3r+W6lj0XRDJKrzdFD4ByqDwhGnhxaqb6K72og==
X-Received: by 2002:a9d:1c7:: with SMTP id e65mr3996635ote.147.1594737602573;
        Tue, 14 Jul 2020 07:40:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls4150262oib.9.gmail; Tue, 14 Jul
 2020 07:40:02 -0700 (PDT)
X-Received: by 2002:aca:3ac3:: with SMTP id h186mr3933861oia.145.1594737602248;
        Tue, 14 Jul 2020 07:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594737602; cv=none;
        d=google.com; s=arc-20160816;
        b=KsjGWL1ni1t0lZSXLpgNMHUz+uqRPmEv7aJ85c9qpUPmIrLHESHCqQ+symEaerZoLy
         oVHKjsrdbIDAbGsPG5I1NaBnCluXrxQ4W3JRm3OTLkamnDIwXYYvm+Ln7lhZBXQoGmFf
         fYkL64ovbSVL+a72ucCEFSJgNH8Axbk8WvgNOWwC5+FMcxMxbGC9UPQGSTGs0181u9aM
         uJ22vWCHznkOHkYdooOAvOWUXDHG6vSe88D2Lt313GRRie/xYhoRNvPFV5F7n0pjy9JS
         YCUlCsnAEDtgcl0WDdGo5k0DA03CxhNd5QlrTqqxrAugNWWpRC/1v99uDDqzWg84zw9D
         57lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+SY7uWO6EExHGrLWZ6gC5zpqGS/8if/TgsL/EeXfLvQ=;
        b=v8Bt66RXXDHHQ5l2wZLH3wy1k5Hq43KjlQDh4qsuVoHW+nF1c4GHzhBjWlpTPRj1+N
         +IuZQUZhtXISA7TzJLPanST4S34hqTBNEfu+lSMTIEA1BmfuHs+LleUqOPBWM5g4FjCU
         hj45PUKNMzWrbFBI4vKPkJM4LzwIGObz73VYfPIha7u8qn+52Cb910QmRwuyGRM7Enbn
         C6xYfnv6X77YhvqDeU3rX2S69tO5QMnNIA+WaEmtBZd9VDU7HWGgAs3GA7au98GUJPK/
         ez7mw2Hlm15ZQhxVromVwcuRvRpC5sc7rxTqShwqABpi4rFu7d0F+dsWd4a7NFEq2yYr
         CbzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mfMM6Rgy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n26si1131860otk.5.2020.07.14.07.40.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 07:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FA0A22519;
	Tue, 14 Jul 2020 14:40:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	James Bottomley <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 05/12] scsi: scsi_transport_spi: Fix function pointer check
Date: Tue, 14 Jul 2020 10:39:47 -0400
Message-Id: <20200714143954.4035840-5-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200714143954.4035840-1-sashal@kernel.org>
References: <20200714143954.4035840-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mfMM6Rgy;       spf=pass
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
index d0219e36080c3..e626fc2cc7813 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -349,7 +349,7 @@ store_spi_transport_##field(struct device *dev, 			\
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714143954.4035840-5-sashal%40kernel.org.
