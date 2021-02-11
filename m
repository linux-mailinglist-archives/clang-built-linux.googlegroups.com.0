Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT5XSKAQMGQEAVIVWEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FB93183BC
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 03:52:00 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id s12sf4788403ilh.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 18:52:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613011919; cv=pass;
        d=google.com; s=arc-20160816;
        b=uW8vyoSQZ8IuSk3PfXoGkone/uPWYfvJaCGervi0adT2jWky8HJDTy5PexS0vA2bq4
         nMPcebNbK+crQK0zDAeZ5NOVjggH5KKdBuRoFUKDECbyEdYXKqGtswCFFfWFaz446+gb
         VuztI2aTcpoPA6ucXUAd/6ci53JS4LAKduoyQgl3sfBuZ/Pf2O2m90CVI2r1o6Pexy16
         3v/pCkKLed2cnC3GPD244QxEG9BYgR2wkE77Ref/u7Pb9eIX+QTPAx+7rA4jSinU7Uri
         JYkX4TGPRHR11At8hkv8467MkvQ7COLekvIZyuxRRs7Z8zw3+lvWmd5KQoHLsbf0x2Vu
         g1vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Ndb2kz58zDLQLCnl++ZzaKT90yr+KYePFMmx6fWNqBU=;
        b=DRkEJSzPKx2XF8wI4cj2uUUkcNbzbvVnWBaQUAbYGevHQfaBG4OKgFY80aEEGj7KQA
         eBweCk0TPO8wof+MFCjdUhSRwUOCZTYlZTRRjsCl3a//MU9preyaT3CJFealpPUCePWa
         p1r5nCW3xTZuMJngMWoO0lSNiDc7fzyMDYgvQMYSeXl/4zlM5H5P1dIfZcPdT/a2oOhR
         uIZnvqr5qDChs19Wo11MwLIgu0NwiWYhPqpXRKnoCNYgKi0vik7NYExwlTNfvjmq5z+5
         EVD7NYBMzdEKd3WG8pd5L+QHclApDUmHy8/887km48sWFaopPrtI+BizouPbJJ4PL9Ey
         YOUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JERg3RTi;
       spf=pass (google.com: domain of 3zpskyawkaj8mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zpskYAwKAJ8MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ndb2kz58zDLQLCnl++ZzaKT90yr+KYePFMmx6fWNqBU=;
        b=rBhXKPVPOvgsb2vP8LTchCyOsYrZPjflwumz9vEPWQY1LpGAd/fFrPt6sQO692Cjzo
         5RAT7fFagbTX5na6Pz08fkh/ru4mbCyCbb18Lz9Dcjl35Wqv1Toq9qTzeN7ZrvLjxFku
         mgnNGQc7LQrkxmnYxV9PHId4ptzbST44gwhLuazwV6oaULDU6f+ghCiuL+fKIRTibSG6
         jMaKX+QLOYcLcwDigl22lQgNIsGUZy/Zp9aL4qZ7gBztu1+EcBJy3SvdTyKZJ+XQNuIc
         KTX6N0AI3PHwQ0YSFatOh8y1fTY0sRchFOISzeoeLaLC7IoAaHtYQsB8WhnCrGyZiDHk
         Ug6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ndb2kz58zDLQLCnl++ZzaKT90yr+KYePFMmx6fWNqBU=;
        b=j1oKJQAA74qmNTkSbCyvj8E8ZOaz02qcCECyyYy5YDymNttxBINPlo1ovmgy0MUY0Z
         F23EV4BLhUbnJl2uTR6OK3+U7ipAEhzlKFzuRDTNiUqodHIU/trZau7TysrEb+VvILd2
         RabVQ6Q084WrP1DAYvBaAatuwk7BqCsY65MBQAj6i9xGNZ1SI1VpvPSt45VdWePlFt4M
         9PwkbjzoiO0kFDdoTtYAZ24Yk1pOq4G8MyOE4VZ/uo6CvAIbK77D5+NRMUJETvpquBdV
         xSB7ThoNhzgwORMa/N9L5atNgDFcpssjwzMHByQ+TBhfH+JtQOJQibolOcZrmPP/WgtF
         g8Uw==
X-Gm-Message-State: AOAM531sYMJY2Sp/Vj1fWPlj7GbhC1+Bvf0KzU/BZi7ThvDhpYryANrd
	uKLYgNbJtFpfhfuw6ZWHE2c=
X-Google-Smtp-Source: ABdhPJxF5bG++/YD8rtj0UseXg+zcc/kzG/89gMNLcpnFYidVQjXb2rieWY+Re2Mu+gGGrgpNQp8Uw==
X-Received: by 2002:a05:6e02:20e4:: with SMTP id q4mr4028327ilv.197.1613011919528;
        Wed, 10 Feb 2021 18:51:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:14c7:: with SMTP id b7ls745852iow.5.gmail; Wed, 10
 Feb 2021 18:51:59 -0800 (PST)
X-Received: by 2002:a6b:144c:: with SMTP id 73mr3588997iou.69.1613011919042;
        Wed, 10 Feb 2021 18:51:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613011919; cv=none;
        d=google.com; s=arc-20160816;
        b=peMuyz/WU9OMN2LfZwk8xcfxIz889TEc8Lzc1gth2Wkptwx6BG3GzAJRtfOgiWTuJc
         9tG+///oObkT0ddikCXxM2HZCt1utQMFE3958LKry6WDRTheTc3K3fYpZA1FtHIzyN2g
         cjHVTU/VnQ4p8jRsXhSQ9fejkilgw4ioy1WxmwoCzAKWEjK8vv9QxALP8UBbz+lWCi7B
         a7Ujnygx3EPNdEzdDkA4y6VEKLNvaozfflo+7J4Zgs6nQLXMid10bDPAp9eUJn8pL7Xt
         t009HZDzzo2QzuhoyIx7AaiT99GDd7hy4jFqTN9XdDkJwv80t4IzGXuqoMfXn5gSgcdh
         Gn3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=X7hsd6YoqSU3QOkH9Rww2PvhQN7iVOHiNC9z6sY88Qw=;
        b=c9L/+4huHdXvYHhNrHY2pQVtTBeGj0n0051umGB1FmvNLAMoPU1lc5Kyd/ZRIj8GOY
         dQZ9TLaf8TcYofnpQR1QsGevtwABzkm2vPAfkkQuDiTftFIm0QzwHdpfIFULWV8uxAYj
         f52ssFFX48M9lKBxK4c20gGwlQa0kHduJoHretFDqoytSPTKH2GKehoDRoaMaLuIfLgB
         9lCufMNthcvWI803eM4Sny9r0W6bbjIhLtel+lyMgB7LONQWT4qVJaxW5u6mIAF4lEdE
         yUxvnL1gJvlimnWi7v+O2Xv3VvC57AM6irVSe3tsFEL8fG2n2qSt50pkYPgG820IIoat
         D/8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JERg3RTi;
       spf=pass (google.com: domain of 3zpskyawkaj8mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zpskYAwKAJ8MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id 207si160730ioc.2.2021.02.10.18.51.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 18:51:59 -0800 (PST)
Received-SPF: pass (google.com: domain of 3zpskyawkaj8mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id f5so3193521qtf.15
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 18:51:58 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:1dc:8608:b4eb:4dd0])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:ac43:: with SMTP id
 m3mr6010448qvb.37.1613011918613; Wed, 10 Feb 2021 18:51:58 -0800 (PST)
Date: Wed, 10 Feb 2021 18:51:48 -0800
In-Reply-To: <20210211025149.3544593-1-ndesaulniers@google.com>
Message-Id: <20210211025149.3544593-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210211025149.3544593-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
Subject: [PATCH v5 1/2] ARM: kprobes: fix UNPREDICTABLE warnings
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>
Cc: clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, 
	Peter Smith <peter.smith@arm.com>, Renato Golin <rengolin@systemcall.eu>, 
	David Spickett <david.spickett@linaro.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"kernelci . org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JERg3RTi;       spf=pass
 (google.com: domain of 3zpskyawkaj8mcdr9tkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3zpskYAwKAJ8MCDR9TKMHDQRFNNFKD.BNL@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211025149.3544593-2-ndesaulniers%40google.com.
