Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL7TXLXQKGQEDI7DOCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D49117830
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 22:16:32 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id r6sf576495oic.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 13:16:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575926191; cv=pass;
        d=google.com; s=arc-20160816;
        b=liGdBj/qOrR15lbHCJ3kHTcV4FbrMo/1pzymlSVemwIwyBAZvUPosmDyJOOsYjZ6jx
         5JCWyNLDbRJ73oMXsleZVc9330mkAemuzBKP10K2svstjNQ8mTsRVy+XMoKSYxMsY9iu
         li+qQi49oJDfESDKOi/3C5oOqVCGlGFIBNeSpi2Q3pVHNX4mQMxDVTW6Lfro7j/W4kFz
         mIHdXwFAmEpgiSRsa771JE79L+zeXtNfS73kMTpG65agz9Zkjr0oEb5lWZSSHq9aO98o
         gwqa8Jtknu/Isf6oQrPY23pnnsLEfbT/M/jR+ndXtpc29kUdRD6Z94VWrPgNjwY+gIvD
         N9Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=58wHmzAXfRRAUxdyac4l8LAZ5GDKQHxuPqXmRSNSbPg=;
        b=ylc5v7IxUk8YmlSYGl9TqmaNfCM8JX/IYyFhwEAB52K2xk74JE54+81nasH8Vcv9hW
         CchgDDsoflxdF/8ClXs8yZmrCw1GKDF6fkoiBtzMUh/Be/pUstkZcVrfu/Wry06lTd0S
         kERyCGuxSxtt8yY6ZHYtcLJM5C6othE4zYHo8cro0k2/Qb533/3UdC1CeI0uvoJW55pp
         VjMEZf4dB6Kyv6n+f/3wEVi6Oc9/SZ0DnRuAW8zFwT7Ps84OfjRRf5jrop5ZpyP5E02U
         DspHA0cZMStNOda8q6Er++KXAt+sAx6tJQEl+3U7+yMyVMkuPlPBRRzEN3rDjLv2FRI1
         uRWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QjS6ZYwg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=58wHmzAXfRRAUxdyac4l8LAZ5GDKQHxuPqXmRSNSbPg=;
        b=HeLB+hTiuwMThJnne4QBCyYYYXqcOMmGHc80Zf0ijyBwUxfabPC/mD7BZctOkv5kwQ
         meSVBVDkGurwNGb0kZnwP7oPA/Usumv6v60OZLtWv8LbuZxnGvq778NvFV/7XwPDW5YQ
         A1/8AB1S6sogS2UC27JnU+28ciT5cuxH58mdHuyvfwhLlZT83NrXCr2bxcg+GGX6tCrG
         QoFlYyy7cIlGLWTo8pOnEzjzZj+IjkmgHb7Y4klkGouP3ss4g/N5Gwbatnzd726RJJEp
         yoYZnia5KaAg7YjC5cMpIodRrs91MfIwpGtBIsDjsSXuD7LMUzFvo7TJYIyu9sBdcnCS
         BuAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=58wHmzAXfRRAUxdyac4l8LAZ5GDKQHxuPqXmRSNSbPg=;
        b=kLRdqou036t7vkTjtW5iDqb0OZ1qsxD4+eVmq/v2N9ml+0fERbuP5B/QViVEyigTrk
         rkIPz5xSQeZeZJytNhNSg2W1W2DWa46buB8gfSNf/3c0/BJYyEgfYFnJk0nYbtAvWss4
         W7WO58csv1Ify0vmEgNPB1kxqADaK9fTrNXaW5kUieH8lkTZoSlk8wlZ2dsEcpTjwd7T
         7pRjTWFSazTO2X5AqcBwZKMDYeYkIFYcKgCNFhbt/s/vN3Mz4USVixLWGbyyYTlH79+d
         yWsjcmwZd6LVxEUmoVI9BdSda3KuAEGXqKxZMGeDpLJ8OTqahAIv2gbakMcstbB/fOA+
         vO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=58wHmzAXfRRAUxdyac4l8LAZ5GDKQHxuPqXmRSNSbPg=;
        b=tGwYLm0DnBkdXSbILh2NFj3Ako4DmiDLh87JsRmAfOhyhrWYDeExaJb5NZBRb63RKs
         kJaBnpCDFe+PJHYlkkHx5Z2JdyvMfFu6r2EXvpBGAM4NZOsrhiXFTUTU1QBTKyVFURiQ
         EoDmnvqWlenVmbWcgb2rZ3zD5MWbFPju6IiNVAaQNZBtw3c2FXOe9hasBZkUdt6BL0EZ
         uZzsWB1ktigCC91ttimwECElOGjeoGsWVTPqDtn+dRQ0LKzs2eVm8ahxgGKOYd1hcMHY
         aG1v+GRq0hC8qmfuWQX7CMZOL+q4fLXhK1A3CEuxenRSIkZLPlm+wFvCO6jnaEq0zn91
         jqvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVX1Nbn7hjc1KO2PbbMMhNReVgrmzLtRh1vNFZvr6uON3LWw+DG
	DFG+hk2eU7gOLibiDKueX6I=
X-Google-Smtp-Source: APXvYqyk3H4y6uEQAxk96pWipL7Sk3oSKNnsQ6p9w5clDPBLFe6/gcb3duQnItzK6+4nAnW3zodmug==
X-Received: by 2002:a05:6808:191:: with SMTP id w17mr983340oic.29.1575926191078;
        Mon, 09 Dec 2019 13:16:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b445:: with SMTP id d66ls2777028oif.11.gmail; Mon, 09
 Dec 2019 13:16:30 -0800 (PST)
X-Received: by 2002:aca:2207:: with SMTP id b7mr1040250oic.109.1575926190695;
        Mon, 09 Dec 2019 13:16:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575926190; cv=none;
        d=google.com; s=arc-20160816;
        b=hvN7LvNFUUeAOVx0fp3aWYaKOI1oQVBTK1zhlWf6nDMpxGcgBlVdDAZovFC7ATHGvY
         fnKn68wLdi7HCe63r4bc6Fcq2VmiBlnCRZdQfL+oX5ciUdKa5i//7dQbf8Gjt5Tf/bSk
         1lDadUKHIgj2Rh4eq1oy+rprHIkiwxzvFGcibrytEvOGQzSQOVm71zqMpRgYw7Kj5M2z
         RoC0XNbuiAD6Z7qPntrdGmIWlxVkPn2Y5u0P//nI1wjxmZK/gLu1nS++XGgHfpt3iZOD
         fMET81CjDdNOafPhLLAI8Ku6RC6g00T1/J+Fsjj/EPKs+1gal3qKb9fwaMtpMXJZBeYp
         xjsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FPQYv1CbF5PEoyV5DeRvhLdH9ApHt5XdOf0DWTue2HU=;
        b=PB1D/WQM2UbYePu/c4Lp6z26XbhU6uS6oSEloeOlF1DiUVEvJe+gVRWpNR8EZ6DDL/
         UrbWYmj47AuTGA6Iak5hERb5eAVK8XFa6X6+gE4i3okaj2asWIDdUx9QPA+9AYvmJ5R6
         9rbq4Ye2ZciWrxSO8eXYSbvGjfhaSzrxWz9edbOMee2F2PUmquWEL55GhzzTl+kJm4WR
         Q2zb41AguTfP47W2W55MTFwnulYWRXax1ZOcn6hL4qs5x77FL9fYYRXyy0MAHRiUyqhj
         uwHTbz6FWOqvOHHDtywvOGPNaiaqHn1Pyy0Qm+fw+BY6aMUwB1TSmWlMu6hxt43PilnA
         6KEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QjS6ZYwg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l1si41645otn.1.2019.12.09.13.16.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 13:16:30 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 59so13527575otp.12
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 13:16:30 -0800 (PST)
X-Received: by 2002:a9d:74d8:: with SMTP id a24mr24272190otl.100.1575926190314;
        Mon, 09 Dec 2019 13:16:30 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 11sm461647otz.3.2019.12.09.13.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 13:16:29 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: "David S. Miller" <davem@davemloft.net>
Cc: netdev@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] net: tulip: Adjust indentation in {dmfe,uli526x}_init_module
Date: Mon,  9 Dec 2019 14:16:23 -0700
Message-Id: <20191209211623.44166-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QjS6ZYwg;       spf=pass
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

../drivers/net/ethernet/dec/tulip/uli526x.c:1812:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        switch (mode) {
        ^
../drivers/net/ethernet/dec/tulip/uli526x.c:1809:2: note: previous
statement is here
        if (cr6set)
        ^
1 warning generated.

../drivers/net/ethernet/dec/tulip/dmfe.c:2217:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        switch(mode) {
        ^
../drivers/net/ethernet/dec/tulip/dmfe.c:2214:2: note: previous
statement is here
        if (cr6set)
        ^
1 warning generated.

This warning occurs because there is a space before the tab on these
lines. Remove them so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

While we are here, adjust the default block in dmfe_init_module to have
a proper break between the label and assignment and add a space between
the switch and opening parentheses to avoid a checkpatch warning.

Fixes: e1c3e5014040 ("[PATCH] initialisation cleanup for ULI526x-net-driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/795
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/dec/tulip/dmfe.c    | 7 ++++---
 drivers/net/ethernet/dec/tulip/uli526x.c | 4 ++--
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/dec/tulip/dmfe.c b/drivers/net/ethernet/dec/tulip/dmfe.c
index 0efdbd1a4a6f..32d470d4122a 100644
--- a/drivers/net/ethernet/dec/tulip/dmfe.c
+++ b/drivers/net/ethernet/dec/tulip/dmfe.c
@@ -2214,15 +2214,16 @@ static int __init dmfe_init_module(void)
 	if (cr6set)
 		dmfe_cr6_user_set = cr6set;
 
- 	switch(mode) {
-   	case DMFE_10MHF:
+	switch (mode) {
+	case DMFE_10MHF:
 	case DMFE_100MHF:
 	case DMFE_10MFD:
 	case DMFE_100MFD:
 	case DMFE_1M_HPNA:
 		dmfe_media_mode = mode;
 		break;
-	default:dmfe_media_mode = DMFE_AUTO;
+	default:
+		dmfe_media_mode = DMFE_AUTO;
 		break;
 	}
 
diff --git a/drivers/net/ethernet/dec/tulip/uli526x.c b/drivers/net/ethernet/dec/tulip/uli526x.c
index b1f30b194300..117ffe08800d 100644
--- a/drivers/net/ethernet/dec/tulip/uli526x.c
+++ b/drivers/net/ethernet/dec/tulip/uli526x.c
@@ -1809,8 +1809,8 @@ static int __init uli526x_init_module(void)
 	if (cr6set)
 		uli526x_cr6_user_set = cr6set;
 
- 	switch (mode) {
-   	case ULI526X_10MHF:
+	switch (mode) {
+	case ULI526X_10MHF:
 	case ULI526X_100MHF:
 	case ULI526X_10MFD:
 	case ULI526X_100MFD:
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209211623.44166-1-natechancellor%40gmail.com.
