Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTVRYDXAKGQEDIGOTNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4897FFED14
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:42:08 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id b184sf8888420ywa.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:42:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918927; cv=pass;
        d=google.com; s=arc-20160816;
        b=vHbwXbRG35LWF+iGOxKUCRT9GhnML4FaDtUu5s590xmQRAWXU4N8DbhayFc+cyOHu8
         4zPbh9xLsw8xdm9wNhcgPi7AiMcBoNitcHxQWzPqJjSSg8FhrHS/859KRrJL0UEDeY+h
         KdUGBeBzvJw6tL0kvz43EjwSXw4+l2mciJjEpt8qzZw3MBJOP4LCRDewMNkDL2mSOnHg
         WVaOxuilwXHZtMamonM171xq1gOl4kgoSbnNQkYvOJPul5s75VGOFBgPhXoIioRiIl9E
         q9WAaeYZO4NK0DUUrY5Uqlg3911MrhBKkk+QycfzSnBQNrrEZrtS4QOjkfWOV7EqdAaT
         URHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JvUfiuM10i6XKPZQ8MJQd+hhN9CWzd63a48qO03ER7g=;
        b=Upm1k+3xqYo4mLXFmdVBkJ3nOqT8Itf+xUNTpNt4b9A4TA6YsISmT05rGcQdVP5KtK
         tziaRl28GIBqJFAWpcomjqFy6Uxv1OcTIflLbpp8RnHx4dKs0vMVCq/GP2OtkHEkX0ur
         4GVI+Wk9kRZGMHLXLl58ms98Skqn2aQu9GD7KyVSwIDK614QC9JC0Wp31NbgVFYD+HuA
         MGs1AVlTlk2rz69PBVruReg3xxJVZoRkvvT1+Gq/EZlaUI1BEr1u6IYjI7XEqCzWL2/E
         q7BuvmQJ5WgN9VPfUeh7q4bHKYlxbczd2ksLabocWc2bYJDt8gcFtnYiiRIcUAPbOsQ0
         HIFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qH3kyZFs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JvUfiuM10i6XKPZQ8MJQd+hhN9CWzd63a48qO03ER7g=;
        b=Lu57PrYU1bppv537sp/7hnpVgIt8U/nXdKBpxzyJRwNO2SE/EqvNIuLNCtnNrOSwGH
         /tmGRkY0ZKp+YRHwhhMK/Q3cWSImKIbMCxFeJT4Lvc/bv08sXtvIyKFd8sIi9BTKu7si
         O6NYKKclZSODyagkAhbP41uS+urzJtPttZZSdmg6dxsPA/sT8YA6+wncPyXbeDJMxB4P
         q6QQUleNvFZpG6n1Vey3Lcu1PWpGxTZQLFxLCpcnNVKNCjZs8ViOC3Yk4IMwH3VXQSdj
         iQx7DtlTZNfAu6k6rTOyjtGlOTU5HiYcayuz7/JCCKOolGiCZQxFzadAs3nKDCookoNm
         RRCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JvUfiuM10i6XKPZQ8MJQd+hhN9CWzd63a48qO03ER7g=;
        b=WZSkH6bDW3QT0FffxfxPXmv5zkYYtDp+7ppPlj8PYCVPqw7uurswfluVAaOh6Q55px
         +a4EcHdnHcwtWAwLVhzRkQ/Ikzs0qd6oAMIMHldqwyr9zuFM2T2u0fDnOJPZFwp7ztFv
         tppNe31vNVvbMs9nnTdI/cxE88YvGs4LFhfC2L9uB5PnlP5SaLz22Myc/BuSod5aKZrF
         Pgx1WekCqmwjG8dJZLDwbVxIpECZsdLZTjIf7e0WOERqnhqYPeaa3cWkRTa/3k5mHdJK
         U8YzQYkSCTn51WhXePefN2LxynU3Vgi3CyK/yySRRpbRCd/OAfUsYD283wbFgYL2884r
         Ij7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3xSi3/zR4g/iV3sCgJmg93f2lURBpXxpF/j/bcsOFaPO9fpfs
	3FBvS5kQNQhpS+IYCNVa2z8=
X-Google-Smtp-Source: APXvYqxi9KZ+AefhWZFO5ET8YZ8a9gAZrlCCULhv7vPo5IMdBt7AE05utGXEuKnth+M1WP6XIs44kg==
X-Received: by 2002:a0d:cb89:: with SMTP id n131mr13218373ywd.316.1573918926712;
        Sat, 16 Nov 2019 07:42:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:edc1:: with SMTP id w184ls1243694ywe.11.gmail; Sat, 16
 Nov 2019 07:42:06 -0800 (PST)
X-Received: by 2002:a81:4bcd:: with SMTP id y196mr13652086ywa.175.1573918926111;
        Sat, 16 Nov 2019 07:42:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918926; cv=none;
        d=google.com; s=arc-20160816;
        b=ldJdny4qFi3IhqhyEoX+jkgFU09w1O6ruYt3KWBCbDuSBcCjWjiEfSugr+oBY23Fsg
         r6Ec5wQ5PzJR079Sg+H872ttEDyXPhWQA0yz6DyER216gkIht+Cdeygrozo94Jl6g8yA
         KwI3ULEFVsujTR1q5fa7QcSFy3D1f9KeESEoBYJxHpP+pH1GlxWYgg3E1Ned6+VBYRMZ
         484qRLrHzppM8AzJYlhyKpDuMXaXG83PCumriTQbFDIE1AfBjjbFF9KzKmUEhDbLgLMV
         5yEGEGatgf6JdYEHCllS+A9ECJJK/ay183O6XR9ZrJRVPTYwu2hIVy23KaLlTEvbiZUV
         dDkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HcXT2KvdEpbsVpLlYSk5PHWVzKqV1rt5PkHafnREkgA=;
        b=sXolWIX7u3YsOOStfnEbybYF8yy7H9j6EQV3DN3GmBYTUMtitbqGNfbCk/ta5Q9jC8
         2yNkV7NwkH3OGKHsaGX/h3b8K6OL43EAX4n4nemC+nLwilUQd7iLMCKdtl6eym2sumUx
         KATFTm/n8s/DrZ86kjC6GTanZxSC0QhlugQ5jnfmIxMO2OEfVdG6g8WbjTiyOUExgoIH
         ElTCF79CWOysla9lJLGs6MQ+8K4KoPAcNf4S4nmiBFY8HMWlO1HRfr25uSwfmorjhERH
         O31QbrZUcgvw6DdFAYcZZ71tRnKS2t5mBL2WTQhmuZnp7J3/Y4EMJs7f3pNMbmu3hEFG
         OOIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qH3kyZFs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f184si746327ybg.3.2019.11.16.07.42.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E05C82072D;
	Sat, 16 Nov 2019 15:42:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 051/237] scsi: isci: Use proper enumerated type in atapi_d2h_reg_frame_handler
Date: Sat, 16 Nov 2019 10:38:06 -0500
Message-Id: <20191116154113.7417-51-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qH3kyZFs;       spf=pass
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

[ Upstream commit e9e9a103528c7e199ead6e5374c9c52cf16b5802 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/scsi/isci/request.c:1629:13: warning: implicit conversion from
enumeration type 'enum sci_io_status' to different enumeration type
'enum sci_status' [-Wenum-conversion]
                        status = SCI_IO_FAILURE_RESPONSE_VALID;
                               ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/scsi/isci/request.c:1631:12: warning: implicit conversion from
enumeration type 'enum sci_io_status' to different enumeration type
'enum sci_status' [-Wenum-conversion]
                status = SCI_IO_FAILURE_RESPONSE_VALID;
                       ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~

status is of type sci_status but SCI_IO_FAILURE_RESPONSE_VALID is of
type sci_io_status. Use SCI_FAILURE_IO_RESPONSE_VALID, which is from
sci_status and has SCI_IO_FAILURE_RESPONSE_VALID's exact value since
that is what SCI_IO_FAILURE_RESPONSE_VALID is mapped to in the isci.h
file.

Link: https://github.com/ClangBuiltLinux/linux/issues/153
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/isci/request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/isci/request.c b/drivers/scsi/isci/request.c
index ed197bc8e801a..2f151708b59ae 100644
--- a/drivers/scsi/isci/request.c
+++ b/drivers/scsi/isci/request.c
@@ -1626,9 +1626,9 @@ static enum sci_status atapi_d2h_reg_frame_handler(struct isci_request *ireq,
 
 	if (status == SCI_SUCCESS) {
 		if (ireq->stp.rsp.status & ATA_ERR)
-			status = SCI_IO_FAILURE_RESPONSE_VALID;
+			status = SCI_FAILURE_IO_RESPONSE_VALID;
 	} else {
-		status = SCI_IO_FAILURE_RESPONSE_VALID;
+		status = SCI_FAILURE_IO_RESPONSE_VALID;
 	}
 
 	if (status != SCI_SUCCESS) {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-51-sashal%40kernel.org.
