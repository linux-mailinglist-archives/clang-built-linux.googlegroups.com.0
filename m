Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMVUYDXAKGQERCY3F5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB98FEDED
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:04 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id 6sf8897625qtu.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919283; cv=pass;
        d=google.com; s=arc-20160816;
        b=tiBQpHjCFKt2aL5xb69FmyodqiJT2xRM3l9OGKNbwR1ypV62ueS7Jhn7b9nuEuzx1B
         wUoeYgQQFSA6k9pyLKRdYzjGmqpxEZwAQOK/W++sBSS21/5PEbOfz0NqsSH69hpVNBMV
         kp+MFiu2O4X1jFHrIOlFd2FcgnMn17T6tR9mGOydJ/BiFKVsR7XAT6hfptXIVVfH6tuN
         HVfITLOxFcvJJIhIRqNv6zEzjTquIc8m5Sg73UsQV3gzaQvTK7wD9xd1USCycasd+j6P
         23NIQ6ziPeeiacTUwSbGzxoinlh3c6Sg3ItZ859nIobPibQeBn/CA5mXOBS4DE/Cb7x4
         mZYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=SbRp+ChdV7gTtLwe8uUqfAHU4LzxD9sBcYoQtkRq2C0=;
        b=b5go+jhaiCtkPPw9KL5J73si2DF5usV30J3bgedQEnZqqf660Pg7bJJG1Xkd698pTj
         B9jwdYSXrZTGPeZWtnEz83NDCsRuEnvNVPV1b7wvP/OY6B0RayiaI2cWFE8tLxsMLVfQ
         VO5kOeZpqQm3+WIOe70yP+kTxwkgcamzRINrkaEbi8m7wcr9Bh7WhmQWyajZh69w5A3K
         3CSp3iND5nKFXj1j4YqFjGWgZGvsH5tUZ3UbtE846XU3PKoY/qzimhjQQAUoqjl9PPAl
         1hpAD6UfH0rpXrOIaaiB1AC5bJDN2ARaUDRxnJvBDnmlAz/AbPVqcfQL0Un5YHzvrVoL
         uIKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="03/AV6rI";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbRp+ChdV7gTtLwe8uUqfAHU4LzxD9sBcYoQtkRq2C0=;
        b=h3X0IyRCsL1tdL5WUOH9Rt0hIwuHjPUmGbu6OWmrZ+bszOkMFVJ4GkIKCUHALYkN4t
         mUiuLECYwYwD6U+Y1MfiTm4B7EpN/nP35zLH3s2URRdRpq9MOVQ/uYJJN644Wh8fydK+
         HrLGoG9lkn/qTcsBPg4Buj7GKKyF5k98XuvEyr+jtmOTbzJQSQ4KfPfdaUDlf56pCPvG
         dVeZnipknCVKwrFgw9XtzHMHRY4/bRTXiHZgkcISfRSZWCzLZ7R+rxH3jCI+yIfwOgbx
         NoZWHw6SjgTTll8zM3K+aWOhQsmqr4qNSdygi+iDtdw/Zicga3VZ953V6a4ZT/OLn7H6
         ea/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbRp+ChdV7gTtLwe8uUqfAHU4LzxD9sBcYoQtkRq2C0=;
        b=FFy74cED8J0ViOzu3gKqKPGtOvCqI19WtOflJv8p5CGgtrTG0xKaTyxszoF74YYcyx
         x6hni5ful1jGiG6RZ7QURp6xPzeG5KMCpJzyzjFAEcNWb77/MSJpKcTie68lWivf41Dr
         P9ZhPhS1LSt7lTm50RfADx7aPKFdDH2RuO/JROoB5xWQw/S/KFGTc59OvUj5ZvyBB8tW
         q5XDy0Sfxa4NcMeM8NGsD6RWhAbtri7pwq9Vx7qlxysYOotZpYEoHYLC60QgIi7Lflhc
         5z4nJGlxg7BiFK9o6UYMWgRMV4+msExfhsrKerzIdqkRihdj3sKFdgR/jP1J6I/wtC+r
         rDZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjPbny9q2qtOBa4Ya/6pHPizxpoi9446Ax16/h5J4Lr07wINxG
	5DTUQD8uP/AqFfR31YuBgCs=
X-Google-Smtp-Source: APXvYqyvpbOkhdY5IIU+aGAhqmJVyYE21AdyyjQschOOg3FRnwnF6BUZYWtNMbHlvxa77IhKsGi7eA==
X-Received: by 2002:ac8:758e:: with SMTP id s14mr19574601qtq.288.1573919282969;
        Sat, 16 Nov 2019 07:48:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2f7a:: with SMTP id k55ls3342807qta.8.gmail; Sat, 16 Nov
 2019 07:48:02 -0800 (PST)
X-Received: by 2002:ac8:729a:: with SMTP id v26mr18456049qto.124.1573919282426;
        Sat, 16 Nov 2019 07:48:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919282; cv=none;
        d=google.com; s=arc-20160816;
        b=Ze4xthgMz/jvU8O/jPRYHFMWYM9jJSguEM/NGJAjpget4HW5dtfm1wv2vBFFXA/nyb
         sECV36eKfCaf4Zk4zxi/jJRBLXFnEInhRvN6aVsmCr8d0qOWDU4VTqz8WGd4tZf18nKL
         MjW6RjQ9ONLpaTM6PCVExL93O3HDXoBaZpClIiKY2f9miBAid7oXye9pIbOeZdM6QkYr
         fiU+8K3acLTli8epX6cuNn6nSDC6DOpko8pST6zTsCcd0etqV9SwjEHZxb8x83ZoK5WO
         Mss0uICrD3YqtQsusav/tr2SxlRxk54zVXjrnw3sFSrSnybyDxV/hyeKy7NK+x11T8vT
         LTSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GPJmx9GUiRCDtqvkyeBsa5HIw5FLW95iAh+fz38+178=;
        b=N6YQvbzln+vLPwoTb2k1tEQ5dfU2BqiMfWGzG1Ds2ZyOX95xdIBuqYM9KdWjNZPlKc
         5v2UIpqzKQuZJcTy6wtSTLliFP9shwO9rp//qMHa4z06kn2bnvmtAbpc7zPPkQ55erYE
         9gS3eWI0wee0sVMw010QTOf0TQrfnXs5oMRahk9AMCn8ywA7gWF5sOrrzKdtsAW6Wm+j
         9dG104+UZ5AW/fNq45OKNjphiAhlKDVqrY4xzB4aRh6qBcTSbb3JVlXW1NDK/zegNWLH
         ZrehWzuClf6ZwQ9SrjO1UKsmXLT3rViFWLllZAQV3lpXMGvwlRrZW/EZ80wHKlTHVqiK
         iQNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="03/AV6rI";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z90si572569qtc.3.2019.11.16.07.48.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 14D7D20815;
	Sat, 16 Nov 2019 15:48:01 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 033/150] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:45:31 -0500
Message-Id: <20191116154729.9573-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="03/AV6rI";       spf=pass
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
index e11eff6b0e97d..045207b5560eb 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -798,7 +798,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-33-sashal%40kernel.org.
