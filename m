Return-Path: <clang-built-linux+bncBAABBBEHZD3AKGQE3BLT7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f59.google.com (mail-ot1-f59.google.com [209.85.210.59])
	by mail.lfdr.de (Postfix) with ESMTPS id 365B11E8E46
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 08:56:06 +0200 (CEST)
Received: by mail-ot1-f59.google.com with SMTP id h26sf2365093otl.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 23:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590821765; cv=pass;
        d=google.com; s=arc-20160816;
        b=q7ZYzErwNEUY03H/zpW+G/ra6PXO0ZPLILU/s3hb4SaGHy3UMDEM9y4HQv8sxHGv7Q
         vhSpn4xsrYKgPycHHgUt+LcrNBnuOJSgbfXdUx6AIrTZW+TtLwqAJYMCvs2BylqyCuMz
         XNbs8Od9UtoW5N194HBIeflkVuld62s9zt00RF1hUpTRKHZ5dgGYBG/NbXRlnP1t6nwT
         z72A26VLbAcxnuWZvSO2f9RZm4JkO9j9wPoU/qFkgwjstZYaqlZfp0IWZ/0aRAegBrA1
         1yz5/bGGNKXvpKnfhwA3sE5+fLu6AQCdkVp79BIyFSyxBCSVHdxU0U6Qc6ItbEourmhz
         ZEJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=NfL2hm87LE6VIvv5LzpGEWn4Py9SKegRUNol99xdJ4g=;
        b=QcOVq3pVRht9RBtoF6fdRv0VGmsMnnvKFH8cfF9S5UjjJZ9CUIeVTCb5vCuy/9ncPH
         0jRERW5ZOnHPqxOvbjplTSGG0uxnP46RZbAUVwIYFFgxkEK3RR1bcfKdsnepclYIJL9a
         VpRPxrtfQ4DE6lkWJkaNgzzG/w/hSQv26B0/AaqjVyxPf/oFFf+IJLN5s80tth5crlDx
         6r9J7w0I/y1KSPtpFs68cjCT7G2m5gp17IruhRxcuGPLz8alAANTMaqUfCV1OLY+498m
         9AI5amct08LH5vHWV+XwaLvUbYNv7/EzRiK+dNGAp9ipL/8WO2svR0PQCdkjfyj9WCOa
         U5oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AHPmroCK;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NfL2hm87LE6VIvv5LzpGEWn4Py9SKegRUNol99xdJ4g=;
        b=bLH3Nudf03paPpSgTEw3acGBhTHEm1ypWl1oBbNYQ6o4LJ3AvkoRqRm7V/WYHZHnv8
         spmtANiHVnCNfObEzCeGGQjNIxN3wQrbUgBX/F8F/f81R1HrmtMrhVwq8VwwMPNEjS5Q
         6f2oTlIBnHrBvTV4glGsRPqcVMAdEOzvFIS5bju6POCBTW7m+HfwwlVWinD3Z+apJQr9
         2v87QgOIQpxTRxDAHYqWRjKcW/aersn8Hu7dr7BWjdxadt/VkQnvCayGxHcU8vnd9bVe
         vQ5Ed35rZ7eks3rXj+T7dW+gD66sivYFsGbOYlnnBtqoIjXi0c6yIt90zQnnKPhTKwZW
         QLkA==
X-Gm-Message-State: AOAM530nZlc0RISjaFPAzDiM5ax7jPk6EdCNlzoCblSXyxC1DLSDaWHS
	Jj1jMFw/Q2R89ttkbHRd7BQ=
X-Google-Smtp-Source: ABdhPJyFWG7d0f/1W5jbs+lFS4+ThAwPL8lw8mYbt+aBiKQcBmRfdVT94fkQFvsfqeq8fHtrogOpSQ==
X-Received: by 2002:aca:f303:: with SMTP id r3mr120674oih.0.1590821764950;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:cf0d:: with SMTP id l13ls374600oos.9.gmail; Fri, 29 May
 2020 23:56:04 -0700 (PDT)
X-Received: by 2002:a4a:8890:: with SMTP id j16mr9687584ooa.60.1590821764627;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590821764; cv=none;
        d=google.com; s=arc-20160816;
        b=FYoreNikOLJfXvdnFiavUQegAyy6Z6Crw+Ur7rBtJyIvgwp/KeogVGLQUOiSqULnjY
         FU3/B7OHxH5/iGZ5GOMLtjbZ5Lot8R5vMaUn8RyDwO9URNbM2JKCSTqJCVTPyfuclcn0
         6bs4VAMgLmU0ni8myh+brTdYLgItXj4hnwwkgnJFHaUPRU1bj/qi2T2FpvWyb7xdY1aW
         DQCRsNEJYyjMJEmBYLIv6S6j7IE2lvZPv9YuUc7I9MbpGBIgX1Ke+beaVPxqDZ24CAKC
         7qJPWiM/oS0QBgRcJZMp++is3Iwqgq07frO4beXU0BepzyGartjyd8v7CVZu4BYAqpDb
         gnHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Em/o3782FK6Zo3wtXUINRo8ufvvGiw1ooTHVyWcgwE8=;
        b=Iy40oiBndYxADIHrqd/Lu/q9coedxOb0x5j5vEi8TJg4zXupXamsoX//T40kSSJWKk
         nWrxLoV+Xzvyy5OVYg7WVI0J3sqkaahQM4C8mdSAoJ7nf0QLueWTqVtCKVxTaDZYObnU
         pMTU3dLEtnq5NrXnNziPfnSexqlSaJwdrzaHLl2D1WKYmr/v9EKm4TqXIzHVcVBKKUPf
         2cQQRixa0cmJmX9he7CQbNurPFCpuM+wF2IfVDMX0QAjdLa4N3UJ7XEFh5SFx6e/90fO
         Tww0K6cgGbjOUUzhnH25VFGDv8HsJmyID2CYr6SVCvd4fW0hxUNyxYzfs+G1cViNQhjR
         TWDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AHPmroCK;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n140si731743oig.0.2020.05.29.23.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 99E14217A0;
	Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jevPV-001hpt-GN; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v2 23/41] media: atomisp: Remove unnecessary NULL checks in ia_css_pipe_load_extension
Date: Sat, 30 May 2020 08:55:40 +0200
Message-Id: <9a2bd92d43dc2571c90acffaa1a520af71aef287.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AHPmroCK;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

../drivers/staging/media/atomisp/pci/sh_css.c:8537:14: warning: address
of 'pipe->output_stage' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (&pipe->output_stage)
                ~~   ~~~~~~^~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/sh_css.c:8545:14: warning: address
of 'pipe->vf_stage' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (&pipe->vf_stage)
                ~~   ~~~~~~^~~~~~~~

output_stage and vf_stage are pointers in the middle of a struct, their
addresses cannot be NULL if pipe is not NULL and pipe is already checked
for NULL in this function. Simplify this if block.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 6e18841db58a..4269c16ad4f1 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -8491,22 +8491,9 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 	}
 
 	if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
-	{
-		if (&pipe->output_stage)
-			append_firmware(&pipe->output_stage, firmware);
-		else {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		}
-	} else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
-	{
-		if (&pipe->vf_stage)
-			append_firmware(&pipe->vf_stage, firmware);
-		else {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		}
-	}
+		append_firmware(&pipe->output_stage, firmware);
+	else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
+		append_firmware(&pipe->vf_stage, firmware);
 	err = acc_load_extension(firmware);
 
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9a2bd92d43dc2571c90acffaa1a520af71aef287.1590821410.git.mchehab%2Bhuawei%40kernel.org.
