Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR5RSKAQMGQERUXRQXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 476F23183A2
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 03:39:05 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id t196sf3435883pgb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 18:39:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613011144; cv=pass;
        d=google.com; s=arc-20160816;
        b=h1X2e9st5KmmqJwS8M9YncYqj6exiFQVc6LPwUvHIhd+x7Qd3tHy2QWkS/EazqDTIK
         bbfXLELSfDEjY3ZV6q2+PhheIfJiUle+qz8Wh0o1AvjRN0MW8bogXy52H0pOAZ4td2SN
         FIsjFcOBV/sXfHkWcNM5MsdFeyIbePFwifz905ZUpu8kWCaTvm5iWlwXGXWtuTzgL1Ua
         krf1bjJoeBRPNwDFGQ9blj1yeEElbD5/8sWF5UFuakQCLVDCbFBDTlVCryaKWL0DwXli
         CU7mZ1A4yoT6FqKiCK6hdGrXHZsdR6Qd8lYXrColYi202nq1BAraaLTKhP1LzaPeLxOu
         FoZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=sAVrNu0UIxRpIpnyXONqNvp03Lx06lpJn4ZVRI7vCZY=;
        b=ky3Q3pdXgQH8iGtMUOVFmB1qpQpjpi57NtdiTsIlO9pGfgdPXkRbVg0Dd3/PzBurhw
         gWLjeweRRbSf8/8a0tj0BAE0Ag7+T+2Lk/zqGjZRBFsPJyTI46K2XVQ0xN5G2WXqNpKa
         INF9T1H48cAtBn9VGFF82rde4KjT6Nuv/VgIjmBRcTuYt/4aAzJ7mY4Znyq1Yl+P6+Bu
         HppmRb5aWzotyvEODUgYaBx9eFP3EMJ13R85GLwnVwDtesV5rT86ZGPN1WD4vsGharUJ
         Pi32fsH9QWfh0x/+8fnHRBn/abKG/ckRpuE8mBi89S6H2Qth6clXRWB4DiyuCg1KDb32
         rlEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nO4C2y/3";
       spf=pass (google.com: domain of 3xpgkyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xpgkYAwKAJE8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sAVrNu0UIxRpIpnyXONqNvp03Lx06lpJn4ZVRI7vCZY=;
        b=Mu3DY2qN0kFhwPeoOwHesToOl7qV4kr8btAB2tunxEwjIkj6JXDBS3xndIwpQ7h+0o
         wG3vVtsmHcCBJ1ULhn2SPh93iA6exTQ3mlW8c9sP9meSjKL6R7yzqZLr0dNUgS3bB33e
         C8Xygpk9Bf7ytrSGfulEwPVio9IS5Zi4qChUULeCOvEMCmjZeCM894DXnsuiPwXavRi4
         h5QgSSAC+eC5PuLTV9NyowAIxGh4Rw2SYUZ/PxPMRVSC+bvpa9EAcYL0GYQJwxh4lKlA
         +al+XjE/5iY7Vfr3CtS+SPJMoOLEg+0pcIOHRt/PmkElqeJ92fQ6fNHKCzMWsW9rMxxs
         IcKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sAVrNu0UIxRpIpnyXONqNvp03Lx06lpJn4ZVRI7vCZY=;
        b=IR7EfQmCMxOPmNK5W+04NEovF9LBjk83OKv4smmtMxXYpxl3nO0hC163ajjAmaHvl7
         1jb4u6zvDCEsXi/myuh2yv82ElLHjFgEEuVau21USW+NesYxMdP8reB24O5gscnxw1QW
         hDIiDTgImwf6LxGPIbAnuKT023Lq3ISPeJ3hgio4Btp2YnP0bX6GHP229u719aK69MXZ
         cHzKRbbkUfNN0XPb5tJaX7hNt/kPJTjsvtLjVcNUixcOpp9hfTJ3O40guUS0/BlLTVam
         r7VVXkzTC6G6+sHRiBjAVQTuIT2wnz4p0c+nAUV+gzh0/X/BAe/woVEeH5nS3CV/ZzNV
         5P9A==
X-Gm-Message-State: AOAM53274NUwXzNYIkCnkGGgtv7M2dK4oUGEwtswGygSzlGhbHYssrEE
	Dy37skQLivOobnlJMGyxX9w=
X-Google-Smtp-Source: ABdhPJx/AfycJP+vPU1vwUPQUnGMoeoFIc20mG/gu1KyhKlXpoWOOzq9l6yxCeBMXezwdZMNe8JFgQ==
X-Received: by 2002:a17:90a:6707:: with SMTP id n7mr1963727pjj.88.1613011143941;
        Wed, 10 Feb 2021 18:39:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:31c7:: with SMTP id v7ls1851659ple.2.gmail; Wed, 10
 Feb 2021 18:39:03 -0800 (PST)
X-Received: by 2002:a17:90a:f416:: with SMTP id ch22mr1858742pjb.61.1613011143301;
        Wed, 10 Feb 2021 18:39:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613011143; cv=none;
        d=google.com; s=arc-20160816;
        b=IHTAlJON4WexAwJS0e/bw/1r8TF6sK2aNlElqzxnpFxqcYI0loOAecQ+0vhtuRvBmH
         h/ipLKKx2T5fSIBkEGZRnmiwAo+UF1KUwSx39+8Yi8odsAz/JEQypUndRtnlN+aMUPD1
         yYQ0jItOGyu75H5IY34WvlCyvNmBopwhaah9idjIocDZihTcZuMmgcEFutdflK2+qrKM
         +EWyzJVJRb27sW8+UQwejQe/ROmwSJfs8g9/N19BC3iv67kGYZiLdhbfkbaYWqChY3Qi
         iXwKjttUNlJse4oE61bonPMd6d6GvT4rzqw+43LQ46RJVbLJ9PcNojW++dCKQDBie8bf
         kebg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=X7hsd6YoqSU3QOkH9Rww2PvhQN7iVOHiNC9z6sY88Qw=;
        b=hcANszcM3LKOJrekFu1rUxAc7bzPtFBMNIumigTemprsjPInrPR915GrRVu7QH7Lvb
         DnhFprS/ndUocjx0v/aQ38Z8aekwZ+oEk9R+pomadeS12+K28mgCdsSNLWYmD8xGXbwj
         bR/YM4CMXkCtaE9ALeIaADKvAPImrJfCemEdgKtHlqd2jLTsR7ZyjmfaUd2m/vMpwujA
         ZKOqHuvqH5UyhoUV0iHJlRIvLS50JMlyfvb5q9yZPqAcL39RHFpA0EhCGUqcZ3fK39Xf
         jZoQW3JU89OigPf3GkJYhCJrxiazAMrKklj1JPJ/368+6dPbwIFbQkMoBorKJJ6XLxXF
         iKlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nO4C2y/3";
       spf=pass (google.com: domain of 3xpgkyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xpgkYAwKAJE8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id y16si219275pfb.3.2021.02.10.18.39.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 18:39:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xpgkyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v17so4750367ybq.9
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 18:39:03 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:1dc:8608:b4eb:4dd0])
 (user=ndesaulniers job=sendgmr) by 2002:a25:4981:: with SMTP id
 w123mr8572056yba.123.1613011142450; Wed, 10 Feb 2021 18:39:02 -0800 (PST)
Date: Wed, 10 Feb 2021 18:38:56 -0800
In-Reply-To: <20210211023857.3534210-1-ndesaulniers@google.com>
Message-Id: <20210211023857.3534210-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210211023857.3534210-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH v5 1/2] ARM: kprobes: fix UNPREDICTABLE warnings
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Peter Smith <peter.smith@arm.com>, Renato Golin <rengolin@systemcall.eu>, 
	David Spickett <david.spickett@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="nO4C2y/3";       spf=pass
 (google.com: domain of 3xpgkyawkaje8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3xpgkYAwKAJE8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GNU as warns twice for this file:
Warning: using r15 results in unpredictable behaviour

via the Arm ARM:
K1.1.1 Overview of the constraints on Armv7 UNPREDICTABLE behaviors

  The term UNPREDICTABLE describes a number of cases where the
  architecture has a feature that software must not use.

Link: https://github.com/ClangBuiltLinux/linux/issues/1271
Link: https://reviews.llvm.org/D95586
Reported-by: kernelci.org bot <bot@kernelci.org>
Suggested-by: Peter Smith <peter.smith@arm.com>
Suggested-by: Renato Golin <rengolin@systemcall.eu>
Suggested-by: David Spickett <david.spickett@linaro.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/probes/kprobes/test-arm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/probes/kprobes/test-arm.c b/arch/arm/probes/kprobes/test-arm.c
index 977369f1aa48..2543106a203e 100644
--- a/arch/arm/probes/kprobes/test-arm.c
+++ b/arch/arm/probes/kprobes/test-arm.c
@@ -166,10 +166,10 @@ void kprobe_arm_test_cases(void)
 
 	/* Data-processing with PC as a target and status registers updated */
 	TEST_UNSUPPORTED("movs	pc, r1")
-	TEST_UNSUPPORTED("movs	pc, r1, lsl r2")
+	TEST_UNSUPPORTED(__inst_arm(0xe1b0f211) "	@movs	pc, r1, lsl r2")
 	TEST_UNSUPPORTED("movs	pc, #0x10000")
 	TEST_UNSUPPORTED("adds	pc, lr, r1")
-	TEST_UNSUPPORTED("adds	pc, lr, r1, lsl r2")
+	TEST_UNSUPPORTED(__inst_arm(0xe09ef211) "	@adds	pc, lr, r1, lsl r2")
 	TEST_UNSUPPORTED("adds	pc, lr, #4")
 
 	/* Data-processing with SP as target */
-- 
2.30.0.478.g8a0d178c01-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211023857.3534210-2-ndesaulniers%40google.com.
