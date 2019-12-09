Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2HBXLXQKGQE62KPTWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E50117787
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:39:06 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id q5sf9938579pfh.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:39:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575923945; cv=pass;
        d=google.com; s=arc-20160816;
        b=kgLwCwTmUlbZPkz0GYWgqKmw+bCW1/W+Z5t4B8HuZnKfD079fGEVR2+WAHG2bReMoq
         vUBfz67Uxb0VYj4/lxMi1e1iHne0EoTJNjLv31074WEW5u+YoSZQXC7qipoSS5rOJe1J
         6TK/rBDr0Gc63lPUDAz3I4R4qHl4aFF+Vns6zgM+ZczFkyo2TczfoKXeKQECVFaQV0gh
         fRIkHyDNANtLmFAdrRBNt2aQ4jmIDoFT/oZ5BbbX3PdRktSJaZ+oQoOJFPvJnJR25amX
         klOB44p/vFENuu0zZaOoa6FLhH7XU5jawHOPp5idSWYCZEe3BR/2UJAcCVNMENdCdnUV
         kBPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=NNag8Cm960IkfMIeEQQC+KwiMf5htB7qQtyzb80kZ0A=;
        b=cfq9ZbdQGtaU6AkdR+JHfOBmK35eBkd7CKQzoYkD2oUVCDS6bq9DacWXKhWxyT3qkc
         JhxnRiT941tXRYzNpQ5QkoDUMms8MR665sO4RLBM+6SP3CJyfjcrWTp0GzMOJYk2LyPo
         g+evgdCFS9aKESILjZs2L+tm20krUkrTVqfbLRFfdU7hIC/dvF1ZY+01hC212936TGY0
         +fHuzaMHAFSmZ+4/39hcQdpnxjcq/1gzyisjgXnWCdkFPKTroZ1pn7tNtb1OTIeFYb2o
         7JOh1EghP2KFiJ4BjCBBZrXdlYZSj2Z79CvZ6RDm4hMQ4yQpsHu/yJftI08z/JBQ4J6G
         Nh6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bb8zFyZw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNag8Cm960IkfMIeEQQC+KwiMf5htB7qQtyzb80kZ0A=;
        b=dd3S7gMFx/WkQMsrHCAS3By1KblUZAiBxgFG9zcI39Q8tYK//ck+fH1ACxeN6qv05q
         lpRjv0P4QG2t2RQqhlaM5/Yuc3PdkmZ+AHjdEYwy7H3st6oUh6np0S9Ce9f4dzZewYPj
         iGKYtRAPRZd7aOGrMjqBK3yvmN7ujNl5SxRKcsNedcGhCUj+Z91eqXQ6ZvMhFxUhcxGB
         qetB+u4KvTL+TCnURNxr+OO85oRP92iswP7NzYrGX3nGlIQ2gYhtI3Sdd/S1J2anLlfL
         zX6baSGAWOq9oKwCmqlcByuMBmamRFMLw3h3n0FUWPWlKAYkkb9FeiMVuJjWy35x9ooj
         M8Iw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NNag8Cm960IkfMIeEQQC+KwiMf5htB7qQtyzb80kZ0A=;
        b=ThYm0IB7RlSpWWrdZM2bYTznqvvBx5kSYnwLGcNVv1GlB2tG476WbWkp7AF8D+FQIz
         MGAq4HGahIYV13FhMDH4vTYa3ooOoGt2jWlDcU+q8h5gaN3FLUp+2TQezKfJifcg3VUM
         vMCJ0HTmZwUWD4A1D9pWbWdaM+lWV2jBd2B9ZWyxYBGpFbgSEvqyy4/VfC4X4yDsJERc
         cRuQkhifv8T8AbzS77hnD1LZHy9bPNR9mfgRQG/EY/+nSb5A8CL5hmGPX4nSbrt2vPwb
         cpDbhvsUYz/fVwYKinU8gYzLiQfskwxf5o3eM89LIOVUu6eLnsiebbF65PxWzStPc8GH
         0aLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NNag8Cm960IkfMIeEQQC+KwiMf5htB7qQtyzb80kZ0A=;
        b=MFEmoLIfhIWHmf+0g3yUz+EVr3HItNcwOrWhkUGzk2whFPmdERb8bScYz0eDWKbi/5
         EoSCaGHUq60aWIKezcgs3PB1ip151pmHm79s9T7DtcLAooo7Wgl+KY/UQSbZjp0Tylsw
         cgdJQmzZbYuCsZPSvXb2Qw1ZHNhsZ2kxOp/sRk6RwuCbjPOCsmCLesq8xd+Jg3YvDSOo
         tREChAhU1m6WMK03JCOWxVVmKL5i269KBSp/sF53oEx/EyecJFB1Er21i9AlL9WFbeZ6
         6Wi8//6czOoNWckpMMIBTVVh7M3nCxBXWkKuHO7id/zd50MTDKXIDau/m6uuGVo4SZ3N
         DQvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRgQxyhSuWBc7q83qYsDdfMqZtYHiysZo4kaTYFrhhIBYsQrax
	OX0KqFoq94rE42tQMwC4j7w=
X-Google-Smtp-Source: APXvYqyFIeXXVyY80tspiynu9NikzOy9qdcRQZZMaprq0A2oOxnDt7j8LZWEyejdfGgFwbzk85X/ug==
X-Received: by 2002:a63:d153:: with SMTP id c19mr20102750pgj.78.1575923944763;
        Mon, 09 Dec 2019 12:39:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d43:: with SMTP id s3ls1161543pfe.14.gmail; Mon, 09 Dec
 2019 12:39:04 -0800 (PST)
X-Received: by 2002:a63:1322:: with SMTP id i34mr1625188pgl.163.1575923944373;
        Mon, 09 Dec 2019 12:39:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575923944; cv=none;
        d=google.com; s=arc-20160816;
        b=oXoq2C1LGisSw11JrbkcvOc8HibCngzF9OL0xEWr+sApTn8YQqjulCSm89svG4Wifi
         56EUGlqDgjDHmw8WHTgaF6EcIwA/AHCb01rECdrugTAHHpBDEl55hQdbkvSUKMbflepN
         sDCk79jvLFHfRlJ64Xb0VygrDsmq8rPeS3xoAR9u3k04qq6iPDfrzDHpKyp2gGOj6s/T
         EEiwPeZVFJcTPjqPny1i0MOPZTJVKXk+Tl1w9Mmeg9RZsCzv5XWzmYaKUq0rQAWYHqfR
         7Ms4q0IOouYk3jvyFg6bJU6rXzgpsQ6Ktnj6QuuJu6fG0gOR+YKvFZLURrCjy79nsumB
         pDKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=37oZTgoK/rHPkvQpIwtmm074AngHLngksVgGvWUxYhk=;
        b=J8TnPGFRRCe4whRUzCeHcujGefB4gXGRpN+wx92WTwmxs+/3oqWuVXVHkx64XHVZji
         GEI3EcoFnLRgVis29kdynjZzqXCBs/Um8XNAXqYTczZlK56BDTk1XIEuxueQQW9wxfCZ
         Ie7IsEpartBEe/Abq0+BKYV1Ya95+1GQguBVOyvvKvdYtjFlPKy8R7Wdu8Ovy3nWIo1v
         D6q0S3auGQ3cHr+F6nrQughUVEpdJCoyK0CmoPIG02QA2NRvBqXlz1WeEjibBI+P4Ldv
         gsSVPXNFZHzOb/HnWVvZFYVnrsku506QMfZVo1V7FvmBtFqFU6vIic0YVJC0omaNbzaV
         j5nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bb8zFyZw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id h2si86217pju.2.2019.12.09.12.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:39:04 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 66so13449217otd.9
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:39:04 -0800 (PST)
X-Received: by 2002:a05:6830:1e5c:: with SMTP id e28mr14328632otj.293.1575923943676;
        Mon, 09 Dec 2019 12:39:03 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 17sm376776oty.48.2019.12.09.12.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 12:39:02 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jiri Kosina <jkosina@suse.cz>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>
Cc: linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] HID: core: Adjust indentation in hid_add_device
Date: Mon,  9 Dec 2019 13:38:55 -0700
Message-Id: <20191209203855.25500-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bb8zFyZw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../drivers/hid/hid-core.c:2378:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
         if (!hdev->ll_driver->raw_request) {
         ^
../drivers/hid/hid-core.c:2372:2: note: previous statement is here
        if (hid_ignore(hdev))
        ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Fixes: 3c86726cfe38 ("HID: make .raw_request mandatory")
Link: https://github.com/ClangBuiltLinux/linux/issues/793
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/hid/hid-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
index e0b241bd3070..9c7f03f23eca 100644
--- a/drivers/hid/hid-core.c
+++ b/drivers/hid/hid-core.c
@@ -2375,10 +2375,10 @@ int hid_add_device(struct hid_device *hdev)
 	/*
 	 * Check for the mandatory transport channel.
 	 */
-	 if (!hdev->ll_driver->raw_request) {
+	if (!hdev->ll_driver->raw_request) {
 		hid_err(hdev, "transport driver missing .raw_request()\n");
 		return -EINVAL;
-	 }
+	}
 
 	/*
 	 * Read the device report descriptor once and use as template
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209203855.25500-1-natechancellor%40gmail.com.
