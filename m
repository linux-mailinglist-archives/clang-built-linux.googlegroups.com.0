Return-Path: <clang-built-linux+bncBD5ID66FXMARB5XBS6BQMGQEUZLTY2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8223516A5
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 18:12:38 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id o11sf2988126wrc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 09:12:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617293558; cv=pass;
        d=google.com; s=arc-20160816;
        b=icmRMwtTqMzHNcf+wRum5JRk6y6rVWY7NHcuBJUDAeYLfP8gaGLFDPBgqx4CW3UD6z
         iWJW8RfVuQIS4kfRscnJYdO8cq/2SCjT3f66KR8gcKli8EyntsiKLVMUCiEZSl2ENeV+
         sY85mxfuSY1whes7AL0BcKeMKcpFULN1opm/7skXp6V+Z1b/xfYKB6CkE+8GXmDx6Ciq
         d7qC33sRRQBSgAmJn0k7xpJzILQiRjoHhPLqAMRIH576j2dV1SWGlytfr4MhDd4r1NTJ
         3JvhIZDfWiYgA3fV0tqDJ8FeA+L1tyGqTNJfBEXbppxoC2NTWtKUm6AigeUO14Jj9II6
         zQ3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=uZdetElUbfRGn/ww93zQUEAmSRqBKAagqMc5QEGQP5c=;
        b=CExWowLHawKve7M5fPdf3IQzvdXwfRDlsXqi1E6fery1VlzPyID+c1chFZKrcW64Y/
         9DEeaOAZDCr25UssJmQ1x2YN5cXbJLNP3nztkhPI7MmwIlEHP8//mVLMnQec0NZgt/xN
         c5CojLxOXMrnwbpx8fzn+m8J/xF2SrNzP5Tyq/ttNAQO+ezAZQGA2Z5/p3zWyTEVvaXK
         jdtCbbl3PmezaFicl6DHa3Ig0y4Guk4BghYkxoMwES8Xt0nht5aMBV4viFjLFdMAfPSz
         gqV76K3Az7kyOxYnhtxy3/hqjpeTlQpi34ttXZyCnE4+KnpKOSk5CLRA/7LMupayLaHD
         5ROg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KyF3n3no;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZdetElUbfRGn/ww93zQUEAmSRqBKAagqMc5QEGQP5c=;
        b=rGlXwd2R5wwwrLWRKFkP5c65zcvwGdny6sv8W0UVrUl8IzS+9yG8ip63q7GVDw7ZOO
         Rw9vA40NtP/Qih51MHT1KiBjMc0PPXxul4EAOIX+7K3Gk1RZu4qKAieTf+TeBuE5ETo5
         iry+ucSA/BB8hXiA6+beFGECNp1WwCbDBfvrm0ZeZvd6f5vTWP7dd+ryGHsvvT1Nc/SM
         MtcicX8oDawAbqfyNBGwt9OvqtCC0NnObS89+K0KCCrR8ppcl3RY8stZ4VaNdD/YCKYN
         KdcaF7zbMVvMb//yb2Wd9fkDDaPuTV/qzD7uq4dfN7Q6z6JgTDHhI+NLyGdzBCw/wIJG
         IQig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uZdetElUbfRGn/ww93zQUEAmSRqBKAagqMc5QEGQP5c=;
        b=rjOdVQywUgcishE14M9ucemVv+YMfzNpcxshDUjWi62Hi0YHedHUv0I99BEPZ7SbxO
         aSxWWXlTZYT1FHEXw+32Q9EtR0QS7BglUW8/LTwYzy+RxNqpktU5vaN4jJAKH/rOdepU
         DicK4tiK5WzSSoP90QXKp7uX75MOyhRzVTcO8H9Ctv9QrrNdqbaqmUk0cb0VipmmI57s
         2dTAyvo+bDlsxE/6O4RFg9UZpk4/t2IAlu4e+QN24XmvzVfdRfzUwHVQYBbuqNeGchtV
         4AsrQ0g0hn5JnO/4Bt84lP+n3uS8v1Bl8XjnIezkhYimaj9L/3y3XgT4JQ4UX6qYshNm
         7hzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uZdetElUbfRGn/ww93zQUEAmSRqBKAagqMc5QEGQP5c=;
        b=QmiHG07p990Sqwm/gc5QBVg5E95TLn9daJ6JgfkjXU/NONomx0B0rqzxEc6v6RxUzY
         KBR2/ZXUe93uCLD3Eet5J2O5RKN6PIx1JZ9gKgrvD1QsspLgKyfkagkao7xXhEJQCkw7
         DqM/e99QjDBtC+WwujFg0Gp9a3Gszgu8SoYR5A5oG/UIqkPKm6dSGlPRTfnyqMkQsz91
         Lu+NO3E45AZAQvmwb+Tg3i+PCjn41syHJLo71SSNx+WrwxDnQ+xd8VobVB0gN6hCSUO2
         XFukrxh50gyh0joS3eYDmBDSiEXNjunju0thpyWa5TNY8PIpChRFrcg5VVfI2T8+r+yj
         4sAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y5e3jS0FH6xTe2f+rjQ4ANcBneGRoqa0YvGvibluHZEO28+A/
	KdxdVrYkgoamhx8k6fYa+CA=
X-Google-Smtp-Source: ABdhPJxRCUX9KgIl3PmDoNrcwr0ILfnoDczy9zJdY6BQBe3Y7tcHu1C/wnlJup6M1CJjvAUJu1aYiQ==
X-Received: by 2002:a5d:6a11:: with SMTP id m17mr10929226wru.361.1617293558333;
        Thu, 01 Apr 2021 09:12:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls3197449wmk.0.canary-gmail;
 Thu, 01 Apr 2021 09:12:37 -0700 (PDT)
X-Received: by 2002:a1c:6a05:: with SMTP id f5mr8674672wmc.75.1617293557393;
        Thu, 01 Apr 2021 09:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617293557; cv=none;
        d=google.com; s=arc-20160816;
        b=o80j+bAbZFRvI1OviJ0i8i4At96Sk+SIF58TCJu2PKN25qVUt/tDmQOEnM5r69Vv2o
         Q/9xCef4gkUMtvZUauXNY/uuIplcYzAODKYjyrHph93cZR5TkR7Z4QOaS0TKUvJu7O4O
         y8reG5pYiI4Hb8Y2qOGzdzYWgjVhCDCt3R4l4xpXf/t4c+g2ZBPsX9RlYVTIPBd0Oer1
         0iACW6b4Oabt3ryoA7WjtF6P1p5BXJqyKapGlr/2PCZuBsp1sM/hmNK/PWenVFM1ZC+w
         mCdCx2aVCVQBAQi92TlV0i0L6UFHPB7LTKa/sktSf1omXx+aJN+GjdAMFk3It5tYBP3V
         IPDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=r2enjizmpD/LJygPj4XEpQS/6/yzRXEF2wF7GTPmSXo=;
        b=PJU0D1KECrK0rVD6rjY3tPzIGdiRsZWOu3Yj+xSJqZwxWWxh5K4pTzWMmvbP/gviB0
         MltYLK0DPdBf5T7eFcdZQuvaQxfMAvwWtqooFh5h9galjC8saLviz9gL6iGxdrQXqbIb
         +oeriIgaKUhZWGF9gkULY740TP1eLkiCYpgL+V7hVKR9LhdhME444J+haZOmr4aB9KDx
         OjPc6aj46Lxq1RHlo+HNdrwSsRdZwLO2TboRe0lKRZ3HVMKljO5SqQCorwI/f77KwXql
         gFpLdtM1r7BmldbWbKu05R7KQObSHWVj44vC1eQsRY3PGMx4fyI5n9u+3Fkd/qhY0/Q9
         Ck2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KyF3n3no;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id z202si600835wmc.0.2021.04.01.09.12.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 09:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id u20so2800723lja.13
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 09:12:37 -0700 (PDT)
X-Received: by 2002:a2e:b5d8:: with SMTP id g24mr6094104ljn.64.1617293557129;
        Thu, 01 Apr 2021 09:12:37 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id l10sm586356lfk.48.2021.04.01.09.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 09:12:36 -0700 (PDT)
From: Maciej Falkowski <maciej.falkowski9@gmail.com>
To: khilman@kernel.org,
	aaro.koskinen@iki.fi,
	tony@atomide.com,
	linux@armlinux.org.uk
Cc: linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	maciej.falkowski9@gmail.com
Subject: [PATCH] ARM: OMAP: Fix use of possibly uninitialized irq variable
Date: Thu,  1 Apr 2021 18:11:27 +0200
Message-Id: <20210401161127.8942-1-maciej.falkowski9@gmail.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KyF3n3no;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
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

The current control flow of IRQ number assignment to `irq` variable
allows a request of IRQ of unspecified value,
generating a warning under Clang compilation with omap1_defconfig on linux-next:

arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used uninitialized whenever
'if' condition is false [-Wsometimes-uninitialized]
        else if (cpu_is_omap16xx())
                 ^~~~~~~~~~~~~~~~~
./arch/arm/mach-omap1/include/mach/soc.h:123:30: note: expanded from macro 'cpu_is_omap16xx'
                                        ^~~~~~~~~~~~~
arch/arm/mach-omap1/pm.c:658:18: note: uninitialized use occurs here
        if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
                        ^~~
arch/arm/mach-omap1/pm.c:656:7: note: remove the 'if' if its condition is always true
        else if (cpu_is_omap16xx())
             ^~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to silence this warning
        int irq;
               ^
                = 0
1 warning generated.

The patch provides a default value to the `irq` variable
along with a validity check.

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1324
---
 arch/arm/mach-omap1/pm.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap1/pm.c b/arch/arm/mach-omap1/pm.c
index 2c1e2b32b9b3..a745d64d4699 100644
--- a/arch/arm/mach-omap1/pm.c
+++ b/arch/arm/mach-omap1/pm.c
@@ -655,9 +655,13 @@ static int __init omap_pm_init(void)
 		irq = INT_7XX_WAKE_UP_REQ;
 	else if (cpu_is_omap16xx())
 		irq = INT_1610_WAKE_UP_REQ;
-	if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
-			NULL))
-		pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
+	else
+		irq = -1;
+
+	if (irq >= 0) {
+		if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup", NULL))
+			pr_err("Failed to request irq %d (peripheral wakeup)\n", irq);
+	}
 
 	/* Program new power ramp-up time
 	 * (0 for most boards since we don't lower voltage when in deep sleep)
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401161127.8942-1-maciej.falkowski9%40gmail.com.
