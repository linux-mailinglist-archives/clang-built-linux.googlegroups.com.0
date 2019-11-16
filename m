Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBT5RYDXAKGQET6ENJZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C76BFED15
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:42:09 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id v1sf492723otf.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:42:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918927; cv=pass;
        d=google.com; s=arc-20160816;
        b=aBUpVWK78kpsolwQIDiJOrYw9tLkDnGdVj5+e/Ih6bdAhe85bj7nWl8YXCt76+HbhE
         HYsbJ2FJLLwdFKiUmsNTt6ftYV4A1AZWwXM1XToYQFxye8cwHmiubFivrmp194/TL8b8
         wF2tKgIeZlHO8mTug6qTvA97KYp4BAzDs2EF1OMT1rgMkTlp1VVK9DNB95mkLEO5+58x
         24XYGKOOAe6zgstOcXnOaNRMF06MZUPHD2H1C+YVzSvo/6HAs0gWV+GPUruJifHt4Jb6
         /gyO/7yT7EK5mU2BOTpoPmUKTKPu4v4ytWhBWqDrNsiHaPQg5G7ZHJs3i3HUt/TvOMXa
         zudw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TUBdSk7tE49QpIms8QycWy/ELVH5H5M37xnQftk4rrQ=;
        b=bt1eBf05bixFSlWYaORrzRVWUTSfSCEJesnNiyPo6bIXK+kAgNQgMfVWzsM/UULTdz
         kdApnlYNUfMgA3gwJkublY6BhaeHV20N4FICm7g+ZgBlnL1XeX6hKRBtQJ/Zf92GCbSN
         ksM1bMFH8ADy0qmk6Xt3QdRqAiA6UQCOzxA1ofCfqn7NHpKoEUL10ufzhCYkbH/1pPjQ
         W8SnBTZhqKZIOSovqJ72jOA5uYfCGCDzXWNl1JVRRxYR0tdcGMh3x91RopgquDTzMGLl
         Np7LrpTLTs9Gjt3t6R/a9BTBVQ82pFjjLNJT4WB9yZ8F8AGh6WTtCBuSQD2ugpNS+viG
         N34w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I0ZPuJPd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUBdSk7tE49QpIms8QycWy/ELVH5H5M37xnQftk4rrQ=;
        b=CQxX4O0JhfFjFdFLvEuzWcofGnjCU3YUk0jKbFb+beTafvvfhgt8memaBm675Xf1oY
         8UIPlu99BiI6fR9Hp/PYia1cq77/gXcL1r+xmoTUGOw9SXYAZLyVm/HCNUxQ0SlLEEM+
         9yeegqXYWbANGU2WL3zdxUfyWso/tQtGKcai/uMtE1M53ezRMSkd2TI6gb9i4DkjHnIn
         OBI7racCpEMfdiDDuf2uDz1oMo06k+fykuilastp65c3A5k95s2Z/50aFy8ILSeoCiTm
         +pJ4lbUaX19HzRFu8EPo/LJ1q1/s3bv8+LCyZlHzg3HruSZPN05dyZxY7XrCjMKlpl4Q
         UZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUBdSk7tE49QpIms8QycWy/ELVH5H5M37xnQftk4rrQ=;
        b=YIJKKcfkwD56A4Q6ESAu0aV4uIUPFo33/s4CC/8v/xMCNq23QTCD5bMU+MahItSXy5
         zGmlNsRKvBYIV9VLdk0taNwNje9YABcCtmH4Af0EtTErpM8Q6gCx0+Is2CpG1SSpFcls
         q+NQMNfioXu5faDb6cuphn4qEan1N5P3j/MSjl94XGmB5l8jZflmer0J67OeXnRZ5Iqa
         mxZrpwLTZy1AZ9KhHF9T3ZVsCjFgXRycL48YqA6sZ/m2mgkxDMTh/aLijvKBG55xZPE0
         bJhKVKWSVJi+YjfgVRtv4MaucO96mftPsKJjjsu2Wu5w33ZP8Bw5VS0v3ps0+2hxCOx4
         y7xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZN6IqCvymG/dFvxkq+I7xim0RZdeyER/ODNPWbmteiscJXvYx
	Xal2lD/Qyt/QqxHm+DTzm0w=
X-Google-Smtp-Source: APXvYqy43AIm8viFd4ZM/29aZGRh5Pm8MeWne0iyAwTixjyQZP3it9YKc4x3JqpPpw4/uimOmV0gxw==
X-Received: by 2002:aca:ab05:: with SMTP id u5mr13286330oie.28.1573918927304;
        Sat, 16 Nov 2019 07:42:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d410:: with SMTP id l16ls3668437oig.2.gmail; Sat, 16 Nov
 2019 07:42:06 -0800 (PST)
X-Received: by 2002:aca:61c6:: with SMTP id v189mr13083065oib.72.1573918926929;
        Sat, 16 Nov 2019 07:42:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918926; cv=none;
        d=google.com; s=arc-20160816;
        b=aFsT1FKwETvtKUPI6y4XDgVB/W0iTkpStdOJFMyDGQPaZ1OiI/8ETyNjPMFuuBaP+s
         9e1SvSsIX7oSa+D2I2JcFc4kaqdMWK2pGEmVhVwFKbnUCU8voNJXX+HEs0K77GuYQh8H
         4Wl1MoVJpCG6AiZTtGJt7X8a64TwlMNr+h9OgL4klLrnrBUEaqs3njlmfW5Y0IxADZk/
         /6Q9QiQ4Z+aquujyQ6qWBr5VPqnDnha/ZsZxyMdIFEsPVCGXgxUyYQf/lG4Sl24TLJRI
         CAH6UKRp1FFz5t8tFB847urqp9rY08mlSLicw95z+0hjDUfw+iTCMx6xNqQZkUUiC6g2
         dFtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=knPQWi6cMQnWEnmXiTDv9M8ZFTxN2XP0Yvs0frUG6do=;
        b=Hj40jkrIok32DyKf/tG0nL9MBz1QXFZqV/vnJciI81i/+j5dvNkDYCcWkwNqJN0YDn
         iZDPXpRuj8KYbAuDTLfvjNTwXmJeuRU+0OHAUshN7jKQFmbaXCQktK86A29GiggWGCto
         EImN8h8NW5mf6Z0XJQtqIVr5n+sqrSjM+99EsvWPlz2Y6neUrhGId5RSA8x70KI1HO8x
         zUaKWAhfBDJQFi25Cwder8hmXIKRTghxzjNew0KHLG+UiVhYJAg03uE+d+tF6SDLTPnE
         gkRF+yeHdIyZCZooAXaVi+FbL0zZwr5gZktRBV1oqI3e/rw8BnA9Xys9gcxAbgg4ThgR
         m7pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I0ZPuJPd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si629109otk.0.2019.11.16.07.42.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C22602075B;
	Sat, 16 Nov 2019 15:42:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 052/237] scsi: isci: Change sci_controller_start_task's return type to sci_status
Date: Sat, 16 Nov 2019 10:38:07 -0500
Message-Id: <20191116154113.7417-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=I0ZPuJPd;       spf=pass
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
index 1ee3868ade079..7b5deae68d33b 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-52-sashal%40kernel.org.
