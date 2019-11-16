Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFNXYDXAKGQEF2UYD4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CA0FEEB7
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:53:58 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id c198sf2051906oig.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:53:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919637; cv=pass;
        d=google.com; s=arc-20160816;
        b=pdkggnf6aEFgJqAh5cuNGjA1NIWTCmqq8n/sK/1ONmWjDim+9vgfTRJoTarlBHRu7B
         GNXFVj8pWsFLMPQrsdnGMdMEiF4ILirYhCbnlOZXiYV3ww4c5YWc2e4bOD2Mn7dV3nZm
         ZBiY4tAyEHzoz0vA6sOdm2SsNkImEbYFIYCeSGGdTE1pOzSMopdF0TNI111ahJvMLCVQ
         AWEeP52izRtwxOAWioeNK+4NLrMnIUmJeWxPrVJKWbD+K+zPy8bJOnCiKyDW8OexmqXs
         jjmlTmL7eh1hwWK4o/4XzWjZCN+91hTq1t8Ppf/jykX2mv9FKdYHH9y+wAQoatzzOUmO
         5SgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oQOMjPPcSw+bdKRegDavhnH9Ty8EtUSoMXErRz4RuyU=;
        b=JUvU9Qr9wbYXifLnaO9q5dMLI9cGbxnnffkcf7NMlyXVxkUmG+k0KB50TwWYSaznjs
         6TSEHSoGFLQg1Z5PgtZox55eAKCXLsS7VVwWyU8k0wqLdAckZlYgzvZ6wrXyoPM2zF4d
         YVwcvjAM6W9eN/2e8wouaC7Er+eZcx1rc7LeKdoDw0tu1/+ahs3qerzjsOS/ZfxqlMl9
         3eg8QwATH7MDzy0UAr6BUHqexC3f4hQwqk2iNAFIMKV4U8+XWfxnCHPfsLXlUGCw6sIW
         NXIK9p/Lq/l+2izjIMI7KOe42bCZuRpJshQyxpOo72slwslrh4WKfjI3pGU0wetNXOM4
         Y9OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Uv9E/aiO";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oQOMjPPcSw+bdKRegDavhnH9Ty8EtUSoMXErRz4RuyU=;
        b=XRCobMhy3HD+GCqhgd/ZE9FPoFmAqkH0N2hWDEXNurB4HQ22vZvPK5Crq6F9+1tNzU
         CjkeYbwm+vNK1LPpyDdwKlSEmGz0RLWMDVnfbV5Aa2A5oPenLjOWCN6ZlzIrM4CFD/zf
         BykSAROe7A43oZnHJl4Ydy2k+INYptFvUcKguSoCqOXH1Pmynfy8BAcPswdaxn4BglLe
         sPmfRFRRcWVNsT8xEJ8zfQ1U/d+q/UumNSXg7DeGhBJ9DsyWimVEKpgUb04Hf7M0/dxV
         NdTTLaamNV1lizSl0jXCGyd5LxULqOMX3S0cXY137Ytj1y2KmRrwrfeLoQNO5rZ09djk
         0WdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oQOMjPPcSw+bdKRegDavhnH9Ty8EtUSoMXErRz4RuyU=;
        b=G4y94a5OGuLzgMDWk+l9k1vWBgUhs/apOIvR+hKJGrcfJxBnaFB5LFpnas6rwM40mg
         vz54KrTGfneceQZrkYww7HXbBtm5O+z+9JHkB4Pz0olgWKZgcUMMSX6CyQhVZOMWH/5s
         NJH/o8SHo3lS2JVZjOqWLmhzU8MCwzWF/mPBcizZXozk+wEFmy4C65nD+c5A7nXOtf7D
         oaucmzyz+L/gYghZCDd3ZosdTQirLJpmM7UJJ7hh0uLP8o3//6e+v3G9Dvn0SxGqX5TN
         aNadd2KFmhaEiIFPxmPwr6/m0YVr0KB86iWBsAwrw1g+xOBcbFN5zkp0Wh52fYhXxxz+
         HTBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXc2XdioEGD983bNYTGcYJLr2IR8nCyH/mHIH35mkWQnGOW5xS0
	z8OAzP/o528GpdfgXrHJqx0=
X-Google-Smtp-Source: APXvYqzlRCp+5uk5RyCYWT8GOhnblhefNDt9OfdEg65ZVpPeO+9rnlxiCN8VhbwbzAvprYTxmbPnGg==
X-Received: by 2002:a05:6830:14c6:: with SMTP id t6mr6981679otq.227.1573919637245;
        Sat, 16 Nov 2019 07:53:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f4a:: with SMTP id u10ls3343396oth.9.gmail; Sat,
 16 Nov 2019 07:53:56 -0800 (PST)
X-Received: by 2002:a05:6830:1395:: with SMTP id d21mr3422010otq.268.1573919636923;
        Sat, 16 Nov 2019 07:53:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919636; cv=none;
        d=google.com; s=arc-20160816;
        b=JqlKKK61KTo+8e6Uq+dQY33IbSpAPmyAcWoNofTBccOchNajQR9Ae7O0ltwpComzPt
         5m+dIfKAo7i44X8GhMpk1UkYW3UqOKtM9s5LzP9upD1KvLtel95O00hWoxuN9qYHTyQO
         7O43+P1nwETiHlHZXDhiQ+DUsidOP47vWW/481rx7cBO/4Ch95x2E+0CPbFIIOrOvK/5
         ErnYJuGyXj2axDdQOJJf90b9cLlM58dMBwWdqOzgKfeDjArnSFc4w8NiBP5lK/323Rus
         qXQsH5gxqfB1JO8h2Ej2SZO//08u9s9sOvgDV/ZW9g2yMq7/i0HXw2JAjMhJS2bHkLrg
         ElOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/WHgX0HIu5twvvsvHD1TEiKfvQYcsS4p/CNruGSCvvs=;
        b=eRVsLULKd8kBqrxLBF7b4Y78qUqKzZTtCXXMJvJnlq9bIdjAYbyAux51VgMaY56/6X
         fI2BfUJsJpqZzlK6UwDEwoej9Efn1wMrs3a7N/DSoLmfCWnJ5cBt7/yWzfU5uGqPj4BK
         zhSsMAU4lm2GJEmZgh84mia9RcvFx0+G80pBcgNrG/7DNZatb0jRFN1Ko5BZA2jqWqlj
         6Ha8l+L1t2A0JAUkP5gBdu/rBYPVMBbU6svPcqcpsZY0XeMM24qD6RmWVzo0Hu1dDQKj
         DCWEkq4y98rWRFYbOMnIat1sFNyQnwUx4N3S2Yjwt+KbvWcnIpYK5HOUyYE/ki/tDE6H
         SRvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Uv9E/aiO";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p16si872595ota.3.2019.11.16.07.53.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:53:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C24A1218DE;
	Sat, 16 Nov 2019 15:53:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 16/77] scsi: isci: Use proper enumerated type in atapi_d2h_reg_frame_handler
Date: Sat, 16 Nov 2019 10:52:38 -0500
Message-Id: <20191116155339.11909-16-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Uv9E/aiO";       spf=pass
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
index cfd0084f1cd2b..224c9c60834cd 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-16-sashal%40kernel.org.
