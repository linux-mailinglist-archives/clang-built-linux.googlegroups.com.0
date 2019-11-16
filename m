Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMVUYDXAKGQERCY3F5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id B2075FEDEB
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:03 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id w5sf8984197qvp.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919282; cv=pass;
        d=google.com; s=arc-20160816;
        b=j7rLb/wsmZ/agbio0lDV4X+Xg2TRo7O7Aui88c+0feFcnggSg9Y8+2Vbib/7mZIQGH
         2GUG0td6KS64R9HY74/lnY2GArmsExt7ba1hPOuca3hBT+gfPJGHS3Di7lj3VPX7M9bX
         RroJHgi821xeqcnKU1OHjUZXQgr8SHsfHFm111PnVUNh7qmr0PVKEBBbClk7ltotY86V
         PO4E3s5pqciwfDoVvRfKBWS/T6S/xkoaw8ZOxCtOBJEZrJqVyqO4cV6dp93GWyCbsr9t
         o/Mxy2d6mv5EC98BTdS0BDk3Wt+iCvAvB3C3lOWx0qsrw4zEe0pjknIbrWlGwYeNENdT
         LBQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TmMCB0KrXs9c1eJUCbwQPX+tfglmGagBVK4GrdXVNL8=;
        b=cwgfWCQXmdQBbA/TUVVCdTsJhZHtyLa3X5qe7QhfyTGZOmuRHSayW8YYdE3LQMzP98
         d47N6uOhCWpqZ76CXHxB0LuMxt/5L8eA3nwsKdWF9q2jgWX1IALeFqGqzCjQhzIMOqbh
         yCkYlsaz221RaZ0/LVCVcxRhRyxiOuCTkQjAUP3gU3ur1ONlNrgh98KE2QQsWw3CjGAj
         H00x92u6hf4t+754kmgQs1zKQCU07rE0EnnJ4FZU1Hib1x/ltJoQJJOhFEo8PKANz3Ji
         Sg7zeYuM0XmnWgJH7QJNzX0XvnI6DjUC/GO55WyDqxTqabZWF6wwcQAqZjrpI7Xg6T7n
         rgbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xyEDT8Yh;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TmMCB0KrXs9c1eJUCbwQPX+tfglmGagBVK4GrdXVNL8=;
        b=Cncp5t7A52e6T6proYC2rZSruNs3CpodHuzqTC0SJJBZrtntjLASMSqIHTubNtd1Vo
         B9Pc2ZmW+DAt+mSZ79i7EhndgVHQzvPj8t+Y8yxdPx7yMpzf59uWlI7XFRBdAUvwI7WY
         hg7LVHrq4Aawpj2F+HiG1yH56YTvl54IyZ4jD7oY6Xwc6/JcfiKw5PvlXjbdJt3WQuW8
         JeoC+n6fFVpXVu+KvV73+qV98ZvJz+cuC7gTQ3W6r9PM0ih+lyFm9kZ8U7MKIapeAzTT
         vsnUo1o13RPdGU2bd210ZpIL2zV2zOflyJXBvfUMqF3wdxfKbm1E/RHcTbe+Ue1gA+HX
         PhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TmMCB0KrXs9c1eJUCbwQPX+tfglmGagBVK4GrdXVNL8=;
        b=md5kpZ0Oz/CfFUU1c/UQJWH5DEOvRY3DP6KsbiHo+9BBwhRznBpcslviXEo7E0JxrX
         B8OwsM0qxOYNPhxiiJFK0XqB/QYH/QLxquoq43lw9hGCTOmjaE+4FK1I1uTx9+XpFwcE
         zt2yA1UUauUtrIPzBOi0Rz9RQbCffnvu7GH32KB1zFiYKx+tjrki3HqhgpsTu13M8rYi
         U6PqphW3GPfKMfTjZaw+maUL5UtJM8tvwyDnZts54VuA0JHbUde3P4xiSHlA3jWn+8b/
         Qj1PmpqI1uM/7V3Y2e7c2u9R93WrW35N2DljKlPYHc3uTeVVyUTC/0xEgq9WLbOQEFYB
         TLGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVcNWDOylEO86FsAn85V6N3X/5kzuperdzFqNTDaIQoR5HETeNw
	Vo6Pbud0VTt/LM/4md8puu8=
X-Google-Smtp-Source: APXvYqxcyDV0mNSmFT2zxl8XoFv5kDJ8ZF9YUvXdLCtMwvoyd8c63pVGyaqPO0npp2JfHEXC11Jr7w==
X-Received: by 2002:a37:4cd4:: with SMTP id z203mr17083152qka.459.1573919282209;
        Sat, 16 Nov 2019 07:48:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c7:: with SMTP id g7ls3293561qkl.11.gmail; Sat,
 16 Nov 2019 07:48:01 -0800 (PST)
X-Received: by 2002:a05:620a:708:: with SMTP id 8mr18242307qkc.369.1573919281786;
        Sat, 16 Nov 2019 07:48:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919281; cv=none;
        d=google.com; s=arc-20160816;
        b=wnT1JxMKnqOZjJXtPqnClbL4lE0/BWsgto89IVkuIXjIGPA09cTPPGA7POdi4m2fq3
         lwycDV909NriJM8x0CgKtSW7tbITNaRSpyEJ5XRQQQJLkTLtqcGGlN02ml4NfkGntpcE
         TURHKgHuoiIBF+wL98FZXXIZmiuGjfqAiP0C671IGSeMNX/HiVBQnlEG/HsC5mvEkl+I
         m03h38Foca7SmLFtU35at8z6pwKf1wAJekRxYVGnphHvUnx4ZgAuvZNydOmrpRQxsBSA
         QjA8WHlWZgKi5hdvIapmkHW4nSq2h/sWXbEjGee4jHIf+auFla+n8xJcAnLQ9gKbI4lS
         95LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=orUldhnXjg4SaC57+BnuimYizbCcfmeHLo/dVAiCShM=;
        b=0dvJtVP02QJJ2rF0/Bv17sByB4k5X9vtBDnrlUTTA5aKT0e2911o5D9iIp1vOLNU+m
         JzrqzJ9ASJIti2+8Md3SQ9Wld4ycHzHOOazo3su3lQ9+78ObX8HwmIXeyP50zOYscxSg
         thfzrbOmecDU0r4jQGLxdLjpPRC6YZqvzETlakv5uvbLvztLTrFCLKz/BYZvSPhiSkkf
         eVTR10/FSrijZD6S8RVTSPapSunRKeswDW7yBEXf4twrQmjDLm/Cll7KtCWWGVAEGLIH
         LKhQ50O3FGJq/m/iaL2ksToW7f8zbU+u1P4YBQj+fr2kppa4bGFy/ytqdNNU/VvlEsqb
         ZylQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xyEDT8Yh;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r204si652296qke.1.2019.11.16.07.48.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:01 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 71E8420870;
	Sat, 16 Nov 2019 15:48:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 032/150] scsi: isci: Change sci_controller_start_task's return type to sci_status
Date: Sat, 16 Nov 2019 10:45:30 -0500
Message-Id: <20191116154729.9573-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xyEDT8Yh;       spf=pass
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

[ Upstream commit 362b5da3dfceada6e74ecdd7af3991bbe42c0c0f ]

Clang warns when an enumerated type is implicitly converted to another.

drivers/scsi/isci/request.c:3476:13: warning: implicit conversion from
enumeration type 'enum sci_task_status' to different enumeration type
'enum sci_status' [-Wenum-conversion]
                        status = sci_controller_start_task(ihost,
                               ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/scsi/isci/host.c:2744:10: warning: implicit conversion from
enumeration type 'enum sci_status' to different enumeration type 'enum
sci_task_status' [-Wenum-conversion]
                return SCI_SUCCESS;
                ~~~~~~ ^~~~~~~~~~~
drivers/scsi/isci/host.c:2753:9: warning: implicit conversion from
enumeration type 'enum sci_status' to different enumeration type 'enum
sci_task_status' [-Wenum-conversion]
        return status;
        ~~~~~~ ^~~~~~

Avoid all of these implicit conversion by just making
sci_controller_start_task use sci_status. This silences
Clang and has no functional change since sci_task_status
has all of its values mapped to something in sci_status.

Link: https://github.com/ClangBuiltLinux/linux/issues/153
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/isci/host.c | 8 ++++----
 drivers/scsi/isci/host.h | 2 +-
 drivers/scsi/isci/task.c | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/isci/host.c b/drivers/scsi/isci/host.c
index 609dafd661d14..da4583a2fa23e 100644
--- a/drivers/scsi/isci/host.c
+++ b/drivers/scsi/isci/host.c
@@ -2717,9 +2717,9 @@ enum sci_status sci_controller_continue_io(struct isci_request *ireq)
  *    the task management request.
  * @task_request: the handle to the task request object to start.
  */
-enum sci_task_status sci_controller_start_task(struct isci_host *ihost,
-					       struct isci_remote_device *idev,
-					       struct isci_request *ireq)
+enum sci_status sci_controller_start_task(struct isci_host *ihost,
+					  struct isci_remote_device *idev,
+					  struct isci_request *ireq)
 {
 	enum sci_status status;
 
@@ -2728,7 +2728,7 @@ enum sci_task_status sci_controller_start_task(struct isci_host *ihost,
 			 "%s: SCIC Controller starting task from invalid "
 			 "state\n",
 			 __func__);
-		return SCI_TASK_FAILURE_INVALID_STATE;
+		return SCI_FAILURE_INVALID_STATE;
 	}
 
 	status = sci_remote_device_start_task(ihost, idev, ireq);
diff --git a/drivers/scsi/isci/host.h b/drivers/scsi/isci/host.h
index b3539928073c6..6bc3f022630a2 100644
--- a/drivers/scsi/isci/host.h
+++ b/drivers/scsi/isci/host.h
@@ -489,7 +489,7 @@ enum sci_status sci_controller_start_io(
 	struct isci_remote_device *idev,
 	struct isci_request *ireq);
 
-enum sci_task_status sci_controller_start_task(
+enum sci_status sci_controller_start_task(
 	struct isci_host *ihost,
 	struct isci_remote_device *idev,
 	struct isci_request *ireq);
diff --git a/drivers/scsi/isci/task.c b/drivers/scsi/isci/task.c
index 6dcaed0c1fc8c..fb6eba331ac6e 100644
--- a/drivers/scsi/isci/task.c
+++ b/drivers/scsi/isci/task.c
@@ -258,7 +258,7 @@ static int isci_task_execute_tmf(struct isci_host *ihost,
 				 struct isci_tmf *tmf, unsigned long timeout_ms)
 {
 	DECLARE_COMPLETION_ONSTACK(completion);
-	enum sci_task_status status = SCI_TASK_FAILURE;
+	enum sci_status status = SCI_FAILURE;
 	struct isci_request *ireq;
 	int ret = TMF_RESP_FUNC_FAILED;
 	unsigned long flags;
@@ -301,7 +301,7 @@ static int isci_task_execute_tmf(struct isci_host *ihost,
 	/* start the TMF io. */
 	status = sci_controller_start_task(ihost, idev, ireq);
 
-	if (status != SCI_TASK_SUCCESS) {
+	if (status != SCI_SUCCESS) {
 		dev_dbg(&ihost->pdev->dev,
 			 "%s: start_io failed - status = 0x%x, request = %p\n",
 			 __func__,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-32-sashal%40kernel.org.
