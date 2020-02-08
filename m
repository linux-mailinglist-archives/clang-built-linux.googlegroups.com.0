Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7MC7PYQKGQEKTX6VDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC2D1564B5
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 15:11:11 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id w11sf1074178plp.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 06:11:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581171069; cv=pass;
        d=google.com; s=arc-20160816;
        b=rP01+wThB9Lcv2G41/qsiHdWAXXPoycjAc+ab1Yg/Zth+BlGT+2oPce2VYupBNx77W
         PnSaUCRgQvMEPT7N8lEu8KAmIFyZE9H5IJyW25y8vPFecU9no5plHosm2ljtBoa/Y2HY
         GLwyjA11oGByw+LK2BvShtw38/XCrXjx/g4ArRXO01hopMPLHNsHRFki0qpE7jczqzWc
         06Z3QERzM5BCxlmHwsPJm5ZmanXAjCctCXFnEO6Hu0EbbN8b1zDsFbsZ6hx6Q/C7y/17
         JVnr1sZqrVDty3xg1dTtOAvkz82Y6Xxy69xq1BgxKcZZOb7QF57xCnm6iosqAosV5h1V
         AEpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=zpHMy9fAW2CiNqU5qvXRyfSKGPFZyqOShr1SjVENMqE=;
        b=glaGjuil5o3vPIe8GpYztZa7LOuH0MHvi7ism68X37lGB7BymlFMBsmyQFSSaSw2Q5
         nZvBTXngqN2vrBbOch5LlgrcWPzwbY7WmtjSXkT3mA1B+ksR05+glTEUp0OAqTOP2myb
         GBS8MXDs0bg/SYkQspM5cpbpQQ9E7vLl105bCZ3p7cJcBgn5Sb1l9HHwnKb36TPDiXvD
         xcoD/arJRuPxtxriqQlbUMzL2IpqjvD9i4smaPnpCr2+xVZqXPoot81WKnEMGzc2fBXv
         bVKjkU0Ls7g/J9MZEDQbktJiMtee+MTquFy21WZxJNlmJ2UVmh4oYmkkIthPF3k6vmoN
         iFsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IhgngSOU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zpHMy9fAW2CiNqU5qvXRyfSKGPFZyqOShr1SjVENMqE=;
        b=m30l++/pXuS5lCh9/kjCQslz7oMRbnvvhn4jCtDRszfdrNZ8TDutsLCDh3+wQKySPC
         GB4XvJgmTdkJPN4ZCskWjtABFPKFwjWlWEbzhSDEFPvVJ9SrDJs8Edfh35k+94wojdB1
         g0F2LE+3sdx0fnp6aMvD/GObSmlDK7Dg3qYhbEDt9VXHD4ld76MKvtnmr1RNTbPHiCC1
         wv2K4Y1m9mR9EAOVo3fN9+oKFZzSW4UK/3zhVElS64YZqZm3OpJGNtzgnt6FzIJTQERV
         56fidDNisCibKmHWz1Sm+xgDrPGFUeSub8K9TCQwbi8tb4VhVqKqMIYaq3sEILjDMXDx
         xG1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zpHMy9fAW2CiNqU5qvXRyfSKGPFZyqOShr1SjVENMqE=;
        b=cMY1NZ3xJ2kvN3F4RM6EOQ+vCxTgjHjecAD/AFhmUE0iGVDB7YCD5F4DRhPWGAJ348
         GFKHEH8L8LcYFPLkPGRdFQbzyP34rSagrBuDogwdeiHiRTh0CszCaglsRp1KRhuy7Rkh
         HTzqC2bNz8myF2Auqj0VGnttd1hh3zJW+PeuwgCcEqLJbpJEZYKaFXYT5dMBq/Xd3mYx
         5kVPyoJKPtuLKc0MwwUisb9Vksm6tTS8lYh5yKxlbfCPaqSSAuWNqXyr5BzuhTsd2qKX
         jqjr7tCHeERkX+QY1M7rEr1jshIfxMDeFKf+Cj/lqD4lVPOTF9F3T/1q9WDaDdgI7o8R
         GIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zpHMy9fAW2CiNqU5qvXRyfSKGPFZyqOShr1SjVENMqE=;
        b=Q2YVffIOGboi3PgmR+kPXczNClBjQaJ03wDNZ9oux9gVQvnZS5sR1RW7xTafJBwqje
         /deq4lriWCeotVmITbq4gYG42pHtjbhJqpeZcExzE+unn3E4ae1ET4DetW/dYcAy/Uy2
         WHe+LOqoqsOvYBG1+spuiVe7EtUjCeXwuc7YKdQK0oraDTFcVRBCyeFVa5xtg3COtFLw
         XGtjbk/DtLj0eDzTEyI4BkM4pZqLm3S7TKhULQWiQrp8uYGGL4LFb/l4yHkMim+wq7AH
         iHCiuYpwQm8twFxn76fS1z+BNW2VOIB02g3WQKrtx+cLjY4wZqJMlo6ZTUjW5X2NkmXx
         7xlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiTzRX6mZf09TuBh9FxLbLFgDCWLMjxiux+UJ9h0+mBu3+9zXB
	w7NQd+/ueUIUnLJYQnw+lmA=
X-Google-Smtp-Source: APXvYqzWN9ElHUVSUJR6m8U3G1UBcaE3/LPYAlrRSN8W3V/dkAOFNbZyfEuWb4nyZ1GwJYcPGoEuwQ==
X-Received: by 2002:a17:90a:db0b:: with SMTP id g11mr10026210pjv.140.1581171069579;
        Sat, 08 Feb 2020 06:11:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2703:: with SMTP id n3ls1085806pgn.5.gmail; Sat, 08 Feb
 2020 06:11:09 -0800 (PST)
X-Received: by 2002:a63:e954:: with SMTP id q20mr5140003pgj.204.1581171069113;
        Sat, 08 Feb 2020 06:11:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581171069; cv=none;
        d=google.com; s=arc-20160816;
        b=Zs30xy5TIJEZ4g7KNzutdYkHUAkMh6cDCh5ymzd7H3uS6EdUSVgHNS616yrE6VWzdv
         Bt/U5EwgaMMqzrhG2JBTlcCvFSOdJqt1gYr6PVzesAVcWK6AC0vSjDE8PuyaXmyq2RC9
         TG7ez13nCU5o8NNV9Y4x/sCjllSZQtaLmuhXhKel50dLBERALW42naKFK1d2xHYEPbYH
         ObknFJRvvEjLiQSueoqqawqilP73ollD/31s7W8/60/nPjh2jKd5ImNu6aOKb//AYZlh
         9rdUscY7JS2LVUM5RfOmm/MpUbuiGrnf28gk8k4P90G0rsX7XzGDbzJfMKUAwijp/wnO
         tVsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=cWwOu9a6Z1tLizrwqoz4gJCJrtA9tbQqyQC9xeUEbAk=;
        b=AK2EInTSeIbhW5AohGzcPZ0Q+k3TmIMgD/JFBkpCK5yB7F2yyxroDlVXIkTSyyPJ1Y
         BwLzM4j62i6CHfzwLtq2tVeOEgxbhrj5iOkDO7OajSNUj47a0FuWXgDp8dLRvycnNMy3
         sSnP0U7XHZ4ST86OyzY2QiwQQEor2sEWX+5YgU+sofinMDpd/Vv4B8Zu/AJAZmWh4sru
         YDgK83mCMZMmUBM23xhByfShgHTCDE3Fddx93nMb8h8LE/e+ABb4mlznJFZNaIcAz/YR
         BA2KUY3PF4V+HKMp530rFY5Aelz0p49TGNki5ayCaAo5Rn/umnLq7qSMnN6ONgJiOXLv
         Fjkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IhgngSOU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id f3si615888pjw.0.2020.02.08.06.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 06:11:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 77so2062167oty.6
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 06:11:09 -0800 (PST)
X-Received: by 2002:a9d:6212:: with SMTP id g18mr3705409otj.187.1581171068359;
        Sat, 08 Feb 2020 06:11:08 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c36sm2294461otb.55.2020.02.08.06.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2020 06:11:08 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-s390@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] s390/kaslr: Fix casts in get_random
Date: Sat,  8 Feb 2020 07:10:52 -0700
Message-Id: <20200208141052.48476-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IhgngSOU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../arch/s390/boot/kaslr.c:78:25: warning: passing 'char *' to parameter
of type 'const u8 *' (aka 'const unsigned char *') converts between
pointers to integer
types with different sign [-Wpointer-sign]
                                  (char *) entropy, (char *) entropy,
                                                    ^~~~~~~~~~~~~~~~
../arch/s390/include/asm/cpacf.h:280:28: note: passing argument to
parameter 'src' here
                            u8 *dest, const u8 *src, long src_len)
                                                ^
2 warnings generated.

Fix the cast to match what else is done in this function.

Fixes: b2d24b97b2a9 ("s390/kernel: add support for kernel address space layout randomization (KASLR)")
Link: https://github.com/ClangBuiltLinux/linux/issues/862
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/s390/boot/kaslr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/boot/kaslr.c b/arch/s390/boot/kaslr.c
index 5d12352545c5..5591243d673e 100644
--- a/arch/s390/boot/kaslr.c
+++ b/arch/s390/boot/kaslr.c
@@ -75,7 +75,7 @@ static unsigned long get_random(unsigned long limit)
 		*(unsigned long *) prng.parm_block ^= seed;
 		for (i = 0; i < 16; i++) {
 			cpacf_kmc(CPACF_KMC_PRNG, prng.parm_block,
-				  (char *) entropy, (char *) entropy,
+				  (u8 *) entropy, (u8 *) entropy,
 				  sizeof(entropy));
 			memcpy(prng.parm_block, entropy, sizeof(entropy));
 		}
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200208141052.48476-1-natechancellor%40gmail.com.
