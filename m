Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2MCTHZAKGQEJVYNSVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id D153F15D24F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:42:50 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id m61sf5192673pjb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 22:42:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581662569; cv=pass;
        d=google.com; s=arc-20160816;
        b=D84E0xDMOtVyTJVW768/5pNLnOfJOdNKU0O0ul1FW+e1shbGwdlEa6byx+88XyZYdh
         XYJLDHUOA5AXFnKjxAMifrEFkGq67cNovWuRan1DCtdEdgWKTfrRmMUsTPK5qTFZH19O
         zCvv+u8uSPQp76rCJjAR0JQhJ/pn0s/ivo7X6HSExEEtT/d//bpy5e4LMHeYgP3u618d
         guTv5kBdpJdch+2slrFQ8uFlRHwc2IKw3bqq8YRJOgCmm/nVIBjqLUcNv/jAn3lWXYNo
         Y50ZafpoGZLZHQJXiAIisgo4PhFLK5K/RZW5+J2vWw5Tos/GYza4TOUBxGBITuYvLgi+
         xxzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=vU5mOtMEVTT3Ptg6t+eVlFMOT6nhwML3bOddcwLBY90=;
        b=TsKRUUF1IwbJwt3SoPz8B3A2NRtaZo0nqzaya/+B4YHoZ+H9ILWbsusLLT5o155cpz
         Z22BHApjByvnz95HS3VD/rbiULzDzvA3PAxBUPjBSstFjenTZMkl/FLaDJdCH9WC3DMN
         938i3p7QJeofJtixImtIaUyfUs9qbH8UMeUpOalC9x+b0GMRGRiMTwRkxcLkCgpUPLKN
         42xLvgT+30lPAswot5iU8WcLiLgTqEKUss1aqG1rVlmfSw6jpqekvqZvumYowDta+KZ0
         7dUxH34eVP9bmNc72TxEfdqO9BvoGKYLpo7gPXnalsdvFWg5nwjL4KtVenfvNqGLeFQC
         MMTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YMQDTlFe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vU5mOtMEVTT3Ptg6t+eVlFMOT6nhwML3bOddcwLBY90=;
        b=a4vaGw3NQoHDIwBRSdDwLTrwvDoiUcAJs1BtQJpPb95K3eoKlV2fU6nuPlg20LeQKB
         Ktva5oA75Dgse5rZ7M3z81UZxfsTyJizspIkVPfbCL13jiU3HnhrSFtQDTsaNPYdZIjA
         CYyDMHlIxDPXPkIQrjv7B7ta1mey/BlApdL16kBQZf5LAdRFAWLfwYzzt+Vfm9DEiGvo
         tuR+g0xYO8j/ICos6XnCNNzMNM39XM2xhN0Qan5I2PRH8cIh2HYJn3KaggC98VoOWQcV
         KzCAuJdNI0BVRkHpybizs2e49sJenuCKjRf0nQys2kRuMVenhZ1miJ/7LkV4ywrMPHHD
         N7+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vU5mOtMEVTT3Ptg6t+eVlFMOT6nhwML3bOddcwLBY90=;
        b=HVeOtfBY/8cjVnktqlLg7tYIrWAfQH5hyFRcj2Y6bm0GsvanbFNn+VKnBU66kc2PVR
         BTft1I87QeL+3MNTlxbtz0XF2it8uT0bVuwD4Xf1SLBq+MPI3smfQbIVFrzVzTsRPXoi
         FmUti+gc62hcvP7+qarc1PXWEQEgtB94dRRoXjSssOMDrpPay8tyCS81IIM3LXIxy28S
         RpZtve/BQgzroGfHWgJABsJDq98tmPi/n2Id3gMFEyAurhyxzNd6BxY/5CVThjpic8tU
         AtlFNKyZ/Llhla5WzwL/HtcDy67Tjp3aka3KP2PPWgqAKLuK+ObzjDx7gkJVbBhLtabX
         hYsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vU5mOtMEVTT3Ptg6t+eVlFMOT6nhwML3bOddcwLBY90=;
        b=ThhXVr9KMPS5uNDI19y16JwaxlnfXuQ2Va3hLGJKYzr+ilwqCQJrV2cUPqWHeFZsO7
         GDuEtdo2HbqqqIZZTffOfa8kC/iPBw+y/2Z+PkJeU3S5V5/1Pif0g2KnXFGKusliC3nJ
         YTF/UCcSyvr7E0Wds0kbRPNUwJFHYShntSpZdtHFM0k/gqH/c2NuIZyaZSIvn6azHwLp
         KqFErgXd1HK5HSQ7cISokGCXEzXU3cLXaERg2FFC/w6mrveoghcPxzG/BkEQHkjB4lMe
         kn51Jh73va3rQ2pdGIxU+16+rg2UNqp/GCezU/ZDvwAOnJFg4aSyS5u9yQ3zskmWHQwk
         iQsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXufD59CBDiMTQcuu8T4w21MuhWMKM7fZVW2HaaPt32P+eKAr59
	MfzK1DDOMmalBA+9smicEJY=
X-Google-Smtp-Source: APXvYqyarQ+KZooksS7gBL+TFzv4uHCAM8ppkFRfJmZECQWjq3af0nPfls7eaW84wR+y/Sv+dnLWmw==
X-Received: by 2002:a17:90a:be06:: with SMTP id a6mr1713275pjs.73.1581662569311;
        Thu, 13 Feb 2020 22:42:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls910674plr.10.gmail; Thu, 13
 Feb 2020 22:42:48 -0800 (PST)
X-Received: by 2002:a17:90a:a48a:: with SMTP id z10mr1742470pjp.52.1581662568848;
        Thu, 13 Feb 2020 22:42:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581662568; cv=none;
        d=google.com; s=arc-20160816;
        b=yNZ0XUgweemYcgytiszS3+QNtkout8rnA+PKyWSGQ5GqQl+P4VDSyNwMn7M2yABAZe
         eldzMXP5bi57CBdb6zu+SFlalFOiD3hhtrAO7p6fnC5HkyjhkY2i+55aVV4YJYBTNrlF
         i8yUCj6+Yr/eM2DP27s3W2or2VGYV8DAgwzPjq/qFji4y1QNyd87wY612DSHNqM+1Tqf
         7DOeQB0UMw7vzIhMR58fdNMc03uhNXUQ5fc3PWTrWjJK8elWBqJDic6O2U+5L567HblV
         i1DUZ1sW1j60SwZeHLmj9FnPovmqYkymxuHWg3F5n/xZdBHnwQhk01Nyqm9gFrby4AS1
         kVZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YK5ShLRmBFVIyNa+AVJi5WDxNZ4pgm/RjqjDGl1K0Lo=;
        b=tU553VuvZU4cXgLL2znnBvKjT/nKdiFqFOeeonP3lU7hIV0WFbeUfSpGJ+ertD9QAC
         sdBEtBTYdyo5c0prbEo9jHDv268OgSvn+kLye/o3n/cngZH7yFC0ALuOJSYziLvB8X0U
         3T9XselGB/ogcUcZN3s2nOvWo48wvGpOsRwe4rGTPZuRhs14LGtBv8Oi4CUJXZ+k318C
         7ajdKLn/QjOZEDprhlZJx9gE1CHIA7RwvjAqa78qPGfyzHASdcXHL7CBvhASjHP2nTbB
         6JgC0Vpg6khtyYqFupQd3JxVH80zQeCzwdsY0/f3v7YWix7KPCmOd1tGXIafutTPqlBp
         1Jig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YMQDTlFe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t34si35673pjb.3.2020.02.13.22.42.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 22:42:48 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id j20so8186176otq.3
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 22:42:48 -0800 (PST)
X-Received: by 2002:a05:6830:1e37:: with SMTP id t23mr1143253otr.16.1581662568064;
        Thu, 13 Feb 2020 22:42:48 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m2sm1514544oim.13.2020.02.13.22.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2020 22:42:47 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-s390@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] s390/mm: Explicitly compare PAGE_DEFAULT_KEY against zero in storage_key_init_range
Date: Thu, 13 Feb 2020 23:42:07 -0700
Message-Id: <20200214064207.10381-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YMQDTlFe;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

 In file included from ../arch/s390/purgatory/purgatory.c:10:
 In file included from ../include/linux/kexec.h:18:
 In file included from ../include/linux/crash_core.h:6:
 In file included from ../include/linux/elfcore.h:5:
 In file included from ../include/linux/user.h:1:
 In file included from ../arch/s390/include/asm/user.h:11:
 ../arch/s390/include/asm/page.h:45:6: warning: converting the result of
 '<<' to a boolean always evaluates to false
 [-Wtautological-constant-compare]
         if (PAGE_DEFAULT_KEY)
            ^
 ../arch/s390/include/asm/page.h:23:44: note: expanded from macro
 'PAGE_DEFAULT_KEY'
 #define PAGE_DEFAULT_KEY        (PAGE_DEFAULT_ACC << 4)
                                                  ^
 1 warning generated.

Explicitly compare this against zero to silence the warning as it is
intended to be used in a boolean context.

Fixes: de3fa841e429 ("s390/mm: fix compile for PAGE_DEFAULT_KEY != 0")
Link: https://github.com/ClangBuiltLinux/linux/issues/860
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/s390/include/asm/page.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/include/asm/page.h b/arch/s390/include/asm/page.h
index 85e944f04c70..1019efd85b9d 100644
--- a/arch/s390/include/asm/page.h
+++ b/arch/s390/include/asm/page.h
@@ -42,7 +42,7 @@ void __storage_key_init_range(unsigned long start, unsigned long end);
 
 static inline void storage_key_init_range(unsigned long start, unsigned long end)
 {
-	if (PAGE_DEFAULT_KEY)
+	if (PAGE_DEFAULT_KEY != 0)
 		__storage_key_init_range(start, end);
 }
 
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214064207.10381-1-natechancellor%40gmail.com.
