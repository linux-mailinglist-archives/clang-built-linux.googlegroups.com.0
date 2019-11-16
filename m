Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFNXYDXAKGQEF2UYD4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6DAFEEB8
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:53:58 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id b12sf11837912iln.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:53:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919637; cv=pass;
        d=google.com; s=arc-20160816;
        b=g09UKHaXwPQ7tekhghCyNB0J95xqBfMykU8vKdsn1T1Q0AELifc4VsZVgCj9aT5MUn
         6RhU/KVcgANYh8zohyYehVlLFWiRiql39T9/YHNbBmxWDSoZCkBt6gx9gAlBQ63d5xNP
         ijKwIdoFRkY5lXNunzcn9tiueYrwykAdRmBSOp3qFuWlj8wv2ZKkPdyUmr1thTf0s5YS
         BBXos3gYDTvLeKvDnnQT6Wc2StecFsx311hFvxOQdvFSw+cT5qKJPYDrkG2/ZxzPFEgP
         PlzHeNQWnkqrJ+oGLuP5roXMbIHT/pLKwGiVfCY8Qm4Cw1xJmaRqqjt49aGw5V4X6/XW
         6fjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=z7crMloLn8VKul2PktVHmVT8ffXJ3R65ye2uPUorpLc=;
        b=cYJuTwDKTM0yG282YdJ9v5vpl+EE5vHGZ80UUl0w9xu0sIi/BHrGzh22kc1knoUgd6
         Nzw9sM7+CMtB9G90YgH6zI24RWxQnIUkdh1b4+eCSanzSwfL2h6STSr2EJPRgdcW0DZK
         1dV+L4JhkTcIIWoWxvZQt05cAY1cG853v5OO6OQMNSwc6BsQFt2DVpMOO4+Oj8FFnwbE
         ZBNiXk3HLAz7kY+u4o8uPFrn4gUN5xR+DJhCDX6pGBZhnvWZ8qcvzFESIL6tVZS4mN2n
         k0GfLwZ3BNAUnsijztiaGvxg1lBdCKbzRz27E4hqBXLH9XTJTLbgYH54a1OKA0mVJoEs
         XrzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rv7SEE1a;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z7crMloLn8VKul2PktVHmVT8ffXJ3R65ye2uPUorpLc=;
        b=rtbm9JB/c/7McxQD80ckNRdrpDPb/sYwwO7UX2EnzWACp/JxKv+hshPjagcxWoVia6
         n5IG9R7WiWqcn/IWB/bEm7W8cOCnq6VE1UnfyGb83+zLUx2u1Cd8KgPnpNvsA/e0T+YN
         ZkXpGAfqtMQf3Rke9C3L1M3RLkWrZIpyabYBowi7w32w3RqisG6vKjvKzHlpb3g64jyH
         XtiuS4Jzn2I6dkRf5ni7T3P9CQyi4LV2Xgu18s11gT+QmtXjVJpFdyS9mDSOYHGlSfAh
         1WROohp3s0So9IJT8AqKfd+WGMhH6OHPyDvHGnjObI4CSJaLsumsQF0Kun6pPEgnQgjd
         MX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z7crMloLn8VKul2PktVHmVT8ffXJ3R65ye2uPUorpLc=;
        b=bHc5Gn8h80JyXsIg0KRBUVnH4URIaSjAfUdPYV7AzzQJmmy6XCW4McHIQmTEtt/Ujr
         m6hYqgAme2/4f62dyfiT+g0POsuBHqK6kll73C6W64DbYOWNz33rFE+5GU1sAlLzkKdl
         sUwCbTBmnZXo/qdAX4/+5TZ7jkky7P9vf74L1J7UN2OXK899fpgm5mqOn9uVn9zEy/3F
         xzgP4qB9eUixQMWWkX3hUSwdC3VrlaldP4FjeycmvLlEqKNjbQNnp02Y2T7C6cqqV9+Q
         iD4whh1RZB+C0xLPJ9ZGxxZdZKowsJGrqWMbpx5YpL3tEGXl/j21LsowwmMjl07bosOX
         FDbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCwFkPsQISVAvM7MPvDIYN40QusqfZ/25ViLmCWrsoQEdbO4aY
	dTuCGXzEpcK0TJxAGRs0aCI=
X-Google-Smtp-Source: APXvYqybpjg5dFagFOh1TwqNtTnNJqaVw7NQbEv4xBt32hk8nJdoujwP5zp4PuLLTO7/D7hR9S1I9A==
X-Received: by 2002:a92:1d52:: with SMTP id d79mr6780303ild.185.1573919637792;
        Sat, 16 Nov 2019 07:53:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:b89a:: with SMTP id p26ls976492jam.9.gmail; Sat, 16 Nov
 2019 07:53:57 -0800 (PST)
X-Received: by 2002:a02:9144:: with SMTP id b4mr5768078jag.118.1573919637529;
        Sat, 16 Nov 2019 07:53:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919637; cv=none;
        d=google.com; s=arc-20160816;
        b=M4b8m9pbCxq6oGFJ/Ndqmy57ZCEihv9gf+bPns5Ab1l57//K2YfU1zLkAg9wl+9OaR
         E3MCVAVk0UkTOUuJEciabxMsZchO264gq+7jJhEW2au2JbF4EHanXqRKHPLVtB+b/j8M
         6QighbgLuuPFXOLG7QcXPqhZrhwVLP8XVVQIE8cG7JwJDBPH5V9IGJiaZNKGXKBQsHBr
         Gm3L3CYQD9hAiAByhE+9LZU4DZrjHADhMs+XdiQJPG/P8v4RQd+39b8qGYPnNyTaSJBz
         q0/K1RQCPxVUJRuEHPr97hILvPPygLEKBu5smw+0g2I9L7NqDqFaew15xJsbH28AfLWd
         Ka+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tXw16BFDT2zjWFdBgZwpM511geHgNliyoe1t+QRRIIk=;
        b=XPGGoXJM0C2Fqbmh1EeZE9F3OZJGKgqwiJhXLhtWkd4xMmP5pf/VIJwu1QgInct8qJ
         OhCYZn4+jmsRXLgoIiE64W0FBo4S+oxfVqKdX6Q5EljzjkTmXA6vFfo7NdXbxFvlrwgk
         9AZAlMSJlfkxARQi7AUHjt/ST+IR8qvtqeGAF3NdJae6/ZyskF0A+d+xUYiJJSjruCNz
         DZshJIvp2+ljYJcaZZH+ok6etk8fxkZjFQElIOV7Le/1G1XBZhsvILyrJeGkdZySL0Ov
         oMxYrTHxKedj6iAVQQpJEikVMf+s/zW2E/uBNz9sdpApSi44M9RzxOSzQ81pAeLR76oF
         BnqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rv7SEE1a;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r10si555468ioo.4.2019.11.16.07.53.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:53:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8F4C3218BA;
	Sat, 16 Nov 2019 15:53:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 17/77] scsi: isci: Change sci_controller_start_task's return type to sci_status
Date: Sat, 16 Nov 2019 10:52:39 -0500
Message-Id: <20191116155339.11909-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rv7SEE1a;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155339.11909-17-sashal%40kernel.org.
