Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFVXYDXAKGQEVTVXH6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E27FEEB9
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:53:59 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id p4sf9876036ybp.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:53:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919638; cv=pass;
        d=google.com; s=arc-20160816;
        b=oBYXFlEiOJ1+GmGpsN8jGk1jjlRnQTtilWGBncFfdzQ9mpxQbZdJ6Fdysvnvw8zSWb
         w7cN58W8eEhWCm1ViGeOJMufBkiPtuA5mZRGZ9weowkykMOfaDX25qeIyWj1ILpJAaHu
         XUjunLnzdV+daB9ILYDX8viLDij2rmLRteePlMBvmA83An/fkTNobuiUxO2gPDo4Q+su
         xx3OyerMt1IEZnekF8EjDfhh8FZ6HQIcRlwj10c4sUXahwy9ugxd21Yj3+1WnKkJn9Gj
         aB/Ycym9EDa54c1cLUWj5Svmbr9oID38/JCncYdAfXXoPS7CmuLd4BVDWrdpNPFvrCUs
         hmnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aoDv4Vx80e9UY1oFefbQRR6rJ787d6sKSkKAl8q2Qok=;
        b=YDf9B+Eej5Bfj0Ukl+yQ0WZsJUSefNpSwyIKhEHANe9HOcaYtk24BApXl5cstuB289
         6UOraKpjlEjEDEIRnUG83XyEMR5VfnU7VF++R/ObXvafxtOxTEyx35cJ052k6qw4a8wS
         /Al7ohOANT6C0FWI4VcR5EPLN3SJae1Ecs5QDL2I2Qp1kCawnykF0wEANHEnErc6sohj
         wBDm69Nokjuzh1MXM0eX/8IX/KIaCY30eIsi6Axs7ypo3ex+Tcno6tpnMS7JUz7/HqZ2
         TYlHqxD4eUGwm/NSZ2KumoneAk11VcWGZEYuf69OVStMbf2kiv9urwekb5yI5F9DdQYR
         5V+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2A2UXtSJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aoDv4Vx80e9UY1oFefbQRR6rJ787d6sKSkKAl8q2Qok=;
        b=W/+G0JPXA1Qtg+1AHHge+HNpaK8WF8A4QQML73pOufcmwdjykRMXxiiX9gX3rmqpAo
         SWe7tUhGn+zw9BtLZ4EOh7+uzv7eL43pQ/C8e6q6eijxwFkHJ+kbqRp6rySq4gw8XC9n
         WHBIokJpX4GJhyZdzOvcIWL7/bUmE9RImoxBOVE44+NjF3ckMYmSibzmVyTaijEQdifV
         Lgicu84WLM9AW/jxuivHwIM+t/knhgDUPu54Z9V3w3vpVxD/+8r9FdtxSCjlrg5stpz6
         WBy8IzEnAikYm5W1vw9Z7OcbkecrMvVACQIX6yiaw5KtUSesN/0IYyhmn/y59Q9V6MVc
         7ySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aoDv4Vx80e9UY1oFefbQRR6rJ787d6sKSkKAl8q2Qok=;
        b=qVtABT6RUnrTK1W9xPfYF/g851zcbfSsHSOOeZ8NW/0or/2rjxARNo7LUjjQNRbpih
         0hM0TXCkru7UQhbdLtDIM2tcGGsEJ1xDdRci4eJxS/b7IfzVuh3XcKvDXo0LRZhyLkts
         vIV/nNZv/HwYLsYTci2uDoBQ0VhKZ9OK+Btr/01e719OodG0GMZbKcwPS2XVaqXq39jS
         K5YNhHIHqtgQl+UZBB+hcxK02VuBWjvNqZirVF7Fp85dxR+EyIvtPeiUU57pQddvYMcC
         1ixAMEG5vxtYIruxf8rrHFO2YoeF+J+rMa6jUo4XEGgC9LDwB9WeipSxCr8b0AS9PHyZ
         ZT5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXBKqPlQ4eeTi4ENUWmv19/EefKfJbmmg/zZOtYDByKw9Y+7FLI
	VZoZGSA1FwBIM8TUy4B+pRI=
X-Google-Smtp-Source: APXvYqwNz4v1NviEb2W64V4MaHIqg3b3rz30umRJVuQsdb3jfoPDZSONpCmp8x6CTTwbShB9ylcFUQ==
X-Received: by 2002:a25:af50:: with SMTP id c16mr10618705ybj.381.1573919638810;
        Sat, 16 Nov 2019 07:53:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7910:: with SMTP id u16ls1243962ywc.9.gmail; Sat, 16 Nov
 2019 07:53:58 -0800 (PST)
X-Received: by 2002:a81:1d93:: with SMTP id d141mr13840884ywd.338.1573919638428;
        Sat, 16 Nov 2019 07:53:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919638; cv=none;
        d=google.com; s=arc-20160816;
        b=VfMal+iha6ZCn4P1vNhRG0jJp2OZ+Xaq3I6CAgTgqJrwsKMfAGNJk9wogtYrACdF2X
         ytZyGtzdPXkVyscxTbo3mfZ5B4PNthPJJ4LUIkftxLeHmnoUvVK0n0SqW7v7CG10kSv2
         /N77HtD/dWQ5qA6v8GR+dyjSIhtxHTXbdazOJME8M5iD1OVzQSvpYlZ0BuqwxNIwwQ3A
         Q+0ii8frsChbowlx+8KS9L/ba+zxb7mFAhyEtmJCn+AXNlPf6oTRjd29GCf+wEt6G0MN
         KwuPzKxHlKqW9KnYNAcEOUBAyFLf5kFivHFv7N8fO2RVzuEEXzt8tZOM+1/daC8J92NQ
         +QdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WzlI7XGW+Nhq72ky0q+UeYjm1DvqgF5wxKFTvsGrI1I=;
        b=w1esFuuwAbafx4saJx+EbTFcxH0BCd/VD6/3RvWPk8xjpc9qAvX9XbJSf0x+FMD2Oo
         Pps3zImFc726mPiXgqLsr/EbqyiFlo2Dzc/a4qU+qOcVpz1JcW1UU6N7G+HCl8+YpecC
         iwr1TLUmgfbnzmp7FmayB77qstt32cdw24uXbtSdY2spfmVqq718Pf689DxeRT4CfNWK
         i1SO7AtZCLaF5NQI92uP3/G/jxrOWFt8fQGLdgI8a2oAnNfpFrSX7MFDasNp3b5minC4
         bBhqa4IXSwKlJWuS2jWoX0H4cOZexMFNldG4xJ/phCQaeK8McHdmkfPrjhTn36aS6kTD
         mDkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2A2UXtSJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si792789ybk.5.2019.11.16.07.53.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:53:58 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3BCDC21920;
	Sat, 16 Nov 2019 15:53:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 18/77] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:52:40 -0500
Message-Id: <20191116155339.11909-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2A2UXtSJ;       spf=pass
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

[ Upstream commit 20054597f169090109fc3f0dfa1a48583f4178a4 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/scsi/iscsi_tcp.c:803:15: warning: implicit conversion from
enumeration type 'enum iscsi_host_param' to different enumeration type
'enum iscsi_param' [-Wenum-conversion]
                                                 &addr, param, buf);
                                                        ^~~~~
1 warning generated.

iscsi_conn_get_addr_param handles ISCSI_HOST_PARAM_IPADDRESS just fine
so add an explicit cast to iscsi_param to make it clear to Clang that
this is expected behavior.

Link: https://github.com/ClangBuiltLinux/linux/issues/153
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 0b8af186e7078..fccb8991bd5b7 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -788,7 +788,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 			return rc;
 
 		return iscsi_conn_get_addr_param((struct sockaddr_storage *)
-						 &addr, param, buf);
+						 &addr,
+						 (enum iscsi_param)param, buf);
 	default:
 		return iscsi_host_get_param(shost, param, buf);
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-18-sashal%40kernel.org.
