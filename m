Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBANWYDXAKGQEY33N53Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBF2FEE65
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:51:30 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id e5sf11768324ile.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:51:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919489; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oj8kYWG0i6PEblzlOvWbhepKeDtiQ6tD1BYT8Nu0I0Y7OQElY+5hPl/Lv2uF+3SRwC
         1Az5z9XNKNcbguKPQ4+bCXmmFpkIU9lHwf2Beuuvqxd+uUnrqYChrOPXMcqNxqY6iMZI
         wBDRGmSQstyBND3udw/IoPMi+/PonQ81tOlag5KHgjUt7aZOZPDPvMWinUL2fumrev+T
         mFXIT+cfYfBe2y5ajDdoCHHhUxzrW4FNUl8yl5+4x1CO3Sp+xG/CV2xsSLB7uyJ1gyJz
         YkV3UaEElm8ysEDK7NsmB4+X2sfsDWLcPPADXnp6aRyKw8X7tdNE0r3try+wcDyuFCEE
         sjag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dSdk4Oiow8rtDgFLGMARUO6PGVjN39fYcVdVJ97OqnI=;
        b=bnXz/IvLrQGzTcDxDIXvEg9+j1XIjQCYCtIrnTbzstUSu2D+M6uQSW9wss5bFdyyxh
         YUEne/qQjsJYTZL0Oo+HiOJU9U7DNlVLyga0wNrcyM8cWqE1nklky9QzJEsJtLQZOhes
         klWnWVcM2gQWVSWL1ehRpYJv/EkgZelN4qDm7027zk1e0pOUlDUGVzHUfXtc5n5O/Eza
         4yh2KlwdboE75Ll2w17Iz9i0P2pvHgJ4r40L/VYAz2BPZ11lOko4M01oNbBsZ9iWnbkR
         X0m+v5JX7KCBdTOfjZcKVlXy3lmHgrARLw+jSFTUjkLYPPEgHuwzeof5xVzbApB3/BWe
         lCXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tB6lN5Hj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSdk4Oiow8rtDgFLGMARUO6PGVjN39fYcVdVJ97OqnI=;
        b=OrfNqQKHZm3NW8sv4NZMeDGG2oiUYpAZ9V1BkWdjyhDpFD1RM+rbidz52sf9UgoLfA
         v+IDSg71tc0CgnbR+3pQgqK206JZH25kFRHLV2J9YyCcLTNfZ9pmDURSGFGEAkzMh9Dl
         Q5+iPDL9NOPyMW0jiO+feFCVs+UNqNW2Vbnb2/OW2nPGFyTeWkSniYeZ1msf0nAG50b3
         GWqs5wGLQ1hkVeY7tMcmsyjAhKM5WlAgM55Hl64jzD1+g6B3n3h3j4u4OJINbpEVvb6u
         VTXcSlw2ynTSVna+LEEAHoasEpCn2ms6sHPYyiG8TkLMz0/EddQnnc5jbp+Ty3Lqv9YG
         FM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSdk4Oiow8rtDgFLGMARUO6PGVjN39fYcVdVJ97OqnI=;
        b=TQDEc8lyAaj8Ktt208A6Jr51tsAxydlds3h7G09NRJYoMg9XGvleXdzbxAxlcEBzdG
         JuLluAei2UcbU9j8y2H2JDvyVWdu6F3y1wuXa9CC2qlHeQmGEIx/KvYA0KDMQ5Oj5L5E
         3FxGYlGwrNgmjXPS3sM6yYXmgA5cd4hxeAwCZJKx+qRtPr7l59+5fMx1Yayl6jdB58V6
         EQIhy/oxxTvBhCT4keR1U7g65HzJ4oYc4T5OSWNjqp70w1sxirCmctHiOo6UHfVrv4MA
         a78c6Bk5Yi4zBo2q2ANHsrzNQNicyodBvtxEC2rrDoJrkJDyZwmlmnCUAA9/zcyG0wth
         tqsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3ZmC5XBT7Mh+S3WUAasxl3B6g4BPmgYbLxUNMUAw94HpSlOuw
	I8Pbx0CrxjE9lbux9gLgqBE=
X-Google-Smtp-Source: APXvYqzBv+/rQFm5AWMdiYBdVIJiFZSQi+8XVMdxIVsv47+nxSCwBG2OE6/K3SUeN3PwO07WqB4x5g==
X-Received: by 2002:a6b:e701:: with SMTP id b1mr5695822ioh.119.1573919489257;
        Sat, 16 Nov 2019 07:51:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5ad5:: with SMTP id b82ls2400743ilg.2.gmail; Sat, 16 Nov
 2019 07:51:28 -0800 (PST)
X-Received: by 2002:a92:48cf:: with SMTP id j76mr6613021ilg.189.1573919488893;
        Sat, 16 Nov 2019 07:51:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919488; cv=none;
        d=google.com; s=arc-20160816;
        b=SE53FZyaLCYLJPoT1LrwvIep+f5ws1S5YtAKWrrtGoyQeY2b62DH+ZuIMACJh6ZWwi
         p/9fz4pXiUupD52yG56zzjFPwCAw+AmGtfiKpQHW6cdoYyYkM4cMBD9IF05vwJdxE1YQ
         9Ocjf1YJtRWKlb335WZenmxEPVZpRe/bqqPPaZDgdH0EQBuVdKYlotg0hDeMF8gBpqAt
         VkmSv27XJdQBELQRKoBaZi2kOX/KAaZhwf8OgQ7V7geUt0VXFHgwFkaJre5uPjFlxJjC
         ruOGCbYPLM3O1ZXS7RJepwe6a51T7q1/olOWU0KpDYVbLCa6RdudUbH6Xnxq5l4sZW52
         HZFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tXw16BFDT2zjWFdBgZwpM511geHgNliyoe1t+QRRIIk=;
        b=xBoE/0EUMhDDEiBwoNzgVrYfN8VWYB30BTbXrNPudQfEWR8tpPauv+gOQ7I7K+XwOq
         S5VHj8o9C2481h7PS3zgqdIp+6CgolFrefsFSG4H7a/0vzHTXBeqMFHrxwHVH8Hv110b
         kxiLAO1D8lE2Ckg+qwBzrKC71NjTUyCocN+tvwAPlHB7BFdBFozTmqcLz9hynvhkj8Ec
         tsWi1HaDGB6Q0BlU6zONeuBPnhdlxUtfLOcHzUkD1AL24ijmWhkgRdsxUqGcvWV2LKpK
         Vm1gpcBcQPqDQcBeMKmBf7N3Viajt4fWiWxX+imiMgdAZV/5ioDuo4MBFpk3/3NUCpsc
         xn3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tB6lN5Hj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n6si373874iod.3.2019.11.16.07.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:51:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D4E0820857;
	Sat, 16 Nov 2019 15:51:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 19/99] scsi: isci: Change sci_controller_start_task's return type to sci_status
Date: Sat, 16 Nov 2019 10:49:42 -0500
Message-Id: <20191116155103.10971-19-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tB6lN5Hj;       spf=pass
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
index 22a9bb1abae14..15dc6e0d8deb0 100644
--- a/drivers/scsi/isci/host.h
+++ b/drivers/scsi/isci/host.h
@@ -490,7 +490,7 @@ enum sci_status sci_controller_start_io(
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-19-sashal%40kernel.org.
