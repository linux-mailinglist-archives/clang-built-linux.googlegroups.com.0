Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBSXJZPVAKGQE6HFPYJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 465D98BFAC
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 19:35:08 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id q9sf5151032vsj.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:35:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565717707; cv=pass;
        d=google.com; s=arc-20160816;
        b=iYJ4RyB3GELHs1hEk2oqbJEvAw6+WMc8+JrppqsWmu88HRk72YAfhZh2UG7kiPkgMZ
         1IWhHhErzlVWcFzRB+Ob5CKfk5ERRhiK715fKlYe0QxcmHq2/DPryFDzBIUr6SGHdZpU
         jFz54sPArcrkjH9BhG6+6zNvJC8DK7/dZNwjAD0v3oJdTH1k6TyAKVp9OuHeB+ZDWRaa
         kRcags72zzONm69Z3ue3XuICzu83b82N9nKN9qOSDKCp54pUcDOiXWR1UFNvVAkJRUt+
         QpteOITWVb27/mo81O1WeQjOcVtgI9AmyN9oZojxdoguCE0J7pMovv0qKiPfnNaHRBoE
         fkjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=xRes3M+M2O71J38c4J3D6N8kAvvfgEq6gjT4flbyCpY=;
        b=k0JXH7WLIp5cEE+2nar1TiAySSTcs2RCtQCLpOvFo7vOCKg/i/TFKmozsfHI9o3FRI
         r/MItcKB6vSepIb9T8vF/QUZEJ4i56abGkfnTb49/5i9wVg1jFd00+fj3FvtTGZRVN6X
         XBJghLYf8g5an1SF01BThpVQLXC3b6JsEUGW165Ys6Aw4p8hO7bdKKaBUr/RRZV/28At
         ed2xK/JrQA2/25A5ulqTRsgy+wXS2UtFZJgjq8D3UYIIfyYTeRpvoaZc1xuxI4ZKe+DD
         O0YjKQzPRLv9JzRK5Ix2J9rw5aKbGwSnYbTEOXsgv3UH5zzuPfInjcDexOv2uvD6bwdp
         f30Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K1FmOmZ5;
       spf=pass (google.com: domain of 3yfrsxqukee4dxksaweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3yfRSXQUKEe4dXkSaWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRes3M+M2O71J38c4J3D6N8kAvvfgEq6gjT4flbyCpY=;
        b=RXyCUk3xYJXNgrh0HxRkw68UCZRVLzJy+y6fUkxo9qE+DIrNQDRp7ktK+/c4LkKSIN
         4CiSZ0YDCwzlu2ujeqO3tQgB9tW4uDhOjjVGaNmCRvpcN6lygd2t62xr60qJoGrOXPDZ
         MNb74McQJg/WAGiVCDD11KB+638D/7LpkZ/7xxAI2ny7wzmoqavhg4CkI8qBCJLF+mZl
         DZ8duqYZrIyiaM35S2aU4sjd6b8+7V2yWNLmikjoVD1dtku+rR7AA0Qy0VknC93kWw0u
         +9b6AW6IOa6Qcyclcs8VVI/mZErWpvqNeZBKQIx0r4KZUq6tvBVSTaaVys41xu5srqWO
         aftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRes3M+M2O71J38c4J3D6N8kAvvfgEq6gjT4flbyCpY=;
        b=OBbVfVr7bBL7QwET1wBmwyTy/FJB7fzii8u2+hzAtAnpBivlNJdcp5nu5VcE+gEiTx
         HezDq0gYfwoVo1ngoIB+HovesuKIsg95lsQd3UjyQOE69hAtdu484qSdH2HMlYIVymGm
         /tYJ9m0O/3hrUc83aBEvYY2KMWGbp+SrZ4CfcDHpes8/tCuWRscSSnZ9HV684ptBbUX6
         e4AuvU+5uS70Nnq4pnLBui1XZdwwIbX4fF3mnNoSrT9ltIpFkzwjG85xIfi0RonQRnZZ
         NMPHG425iKNDJXsMmdp0Z76jSOSGiA8x/dfbXMGbg0G8Z91GWF6St77b8Rltg6vGIMw2
         zq0w==
X-Gm-Message-State: APjAAAXqD6k8LHMwEEQZzMdzdiyer5f+Kpdm9/gsyFIj5b8i0rUfIHVq
	olA2RKKz6H5U9OVdE8t7UCg=
X-Google-Smtp-Source: APXvYqxehAPJDozqrXW9hEZxL79zMSzrO//ajaY0F9dcgPlPghQyAKgOLI6WFZVechWDgbBVVpKB7w==
X-Received: by 2002:ab0:7782:: with SMTP id x2mr23127957uar.140.1565717706801;
        Tue, 13 Aug 2019 10:35:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6913:: with SMTP id e19ls1895153vsc.16.gmail; Tue, 13
 Aug 2019 10:35:06 -0700 (PDT)
X-Received: by 2002:a67:2fc2:: with SMTP id v185mr10242204vsv.3.1565717705934;
        Tue, 13 Aug 2019 10:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565717705; cv=none;
        d=google.com; s=arc-20160816;
        b=Hcwvpd3oJTR15GqAFaBWl2JOCFwNMyipqVQRJ7nietxOvUMscCnw88FSbaKIl/HrAg
         cpQ9zTromrH3VY3ZOyvCzoG1Ukg51jOFo9YEweEhJHFo20JhgXXTWZ5eAzzU1bhc7Or2
         KIcOyAqzmgxieSDnReoRzkBO03sIXnBnbVxWfxTYtu66s9Ut7+2Q6ik7S09JdCjQ/O0f
         k9u0BYmH0AXkNky7n5vpYkOshBDdMJFZO+PN5iWOs4+6Ujybwr5KXCrRnHlGma/5wDFP
         T4/gYcbvdj3xtyJTu9U0Xfe+gNL0scru9YdTldiFxBGyjazz4/Y0t64vEujHTnpZgaEz
         axog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=K1Nopzn8E5w6xxPX8EZ7wQNhZHTJKAbpf6C6skqulkU=;
        b=jLPx6CykfFygvpiedoxo7Wvz1rir0gFzUdutskMPTWe1/0FxBul6ezDkGHeDJnAZwb
         gDncBtJ6q0Iqeur1hsw447wzXUo5PLM4vIqlyHAKHtPBPmbobYTxJN3lsKT9YcQztNNL
         svgKTxUCb8OolbFyrdbsmZpBSJ8ofFrjLjd7pvdv/hZH/pPGAVsw6+Us8/7GB7V5FpLf
         BM6NUTvNjDCT1p5THfZkTR4BczIUFNf3CzfZAibJp0l98h0k1WBnCwoA9jxAibH3TvQ8
         DLdJKzTZzghwNdaDz9d0gPiIvagCxcojOTzGtEcO1f0df0bEYuic5a4nz27rTWoRu/BG
         +4Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=K1FmOmZ5;
       spf=pass (google.com: domain of 3yfrsxqukee4dxksaweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3yfRSXQUKEe4dXkSaWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id a8si257980vkm.0.2019.08.13.10.35.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2019 10:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yfrsxqukee4dxksaweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id y198so45860684vky.9
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 10:35:05 -0700 (PDT)
X-Received: by 2002:a1f:22d5:: with SMTP id i204mr8797732vki.90.1565717705476;
 Tue, 13 Aug 2019 10:35:05 -0700 (PDT)
Date: Tue, 13 Aug 2019 10:34:48 -0700
In-Reply-To: <CAKwvOdkAJcOCGvveBYaDD2kf4vx7m=b+Nxyn3_n=9aCBapzDcw@mail.gmail.com>
Message-Id: <20190813173448.109859-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAKwvOdkAJcOCGvveBYaDD2kf4vx7m=b+Nxyn3_n=9aCBapzDcw@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] dmaengine: mv_xor_v2: Fix -Wshift-negative-value
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: dan.j.williams@intel.com, vkoul@kernel.org
Cc: dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Nathan Huckleberry <nhuck@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=K1FmOmZ5;       spf=pass
 (google.com: domain of 3yfrsxqukee4dxksaweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3yfRSXQUKEe4dXkSaWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Clang produces the following warning

drivers/dma/mv_xor_v2.c:264:40: warning: shifting a negative signed value
	is undefined [-Wshift-negative-value]
        reg &= (~MV_XOR_V2_DMA_IMSG_THRD_MASK <<
	MV_XOR_V2_DMA_IMSG_THRD_SHIFT);
                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
drivers/dma/mv_xor_v2.c:271:46: warning: shifting a negative signed value
	is undefined [-Wshift-negative-value]
        reg &= (~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK <<
                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^

Upon further investigation MV_XOR_V2_DMA_IMSG_THRD_SHIFT and
MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT are both 0. Since shifting by 0 does
nothing, these variables can be removed.

Cc: clang-built-linux@googlegroups.com
Link: https://github.com/ClangBuiltLinux/linux/issues/521
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 drivers/dma/mv_xor_v2.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/dma/mv_xor_v2.c b/drivers/dma/mv_xor_v2.c
index fa5dab481203..e3850f04f676 100644
--- a/drivers/dma/mv_xor_v2.c
+++ b/drivers/dma/mv_xor_v2.c
@@ -33,7 +33,6 @@
 #define MV_XOR_V2_DMA_IMSG_CDAT_OFF			0x014
 #define MV_XOR_V2_DMA_IMSG_THRD_OFF			0x018
 #define   MV_XOR_V2_DMA_IMSG_THRD_MASK			0x7FFF
-#define   MV_XOR_V2_DMA_IMSG_THRD_SHIFT			0x0
 #define   MV_XOR_V2_DMA_IMSG_TIMER_EN			BIT(18)
 #define MV_XOR_V2_DMA_DESQ_AWATTR_OFF			0x01C
   /* Same flags as MV_XOR_V2_DMA_DESQ_ARATTR_OFF */
@@ -50,7 +49,6 @@
 #define MV_XOR_V2_DMA_DESQ_ADD_OFF			0x808
 #define MV_XOR_V2_DMA_IMSG_TMOT				0x810
 #define   MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK		0x1FFF
-#define   MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT		0
 
 /* XOR Global registers */
 #define MV_XOR_V2_GLOB_BW_CTRL				0x4
@@ -261,16 +259,15 @@ void mv_xor_v2_enable_imsg_thrd(struct mv_xor_v2_device *xor_dev)
 
 	/* Configure threshold of number of descriptors, and enable timer */
 	reg = readl(xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_THRD_OFF);
-	reg &= (~MV_XOR_V2_DMA_IMSG_THRD_MASK << MV_XOR_V2_DMA_IMSG_THRD_SHIFT);
-	reg |= (MV_XOR_V2_DONE_IMSG_THRD << MV_XOR_V2_DMA_IMSG_THRD_SHIFT);
+	reg &= ~MV_XOR_V2_DMA_IMSG_THRD_MASK;
+	reg |= MV_XOR_V2_DONE_IMSG_THRD;
 	reg |= MV_XOR_V2_DMA_IMSG_TIMER_EN;
 	writel(reg, xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_THRD_OFF);
 
 	/* Configure Timer Threshold */
 	reg = readl(xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_TMOT);
-	reg &= (~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK <<
-		MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT);
-	reg |= (MV_XOR_V2_TIMER_THRD << MV_XOR_V2_DMA_IMSG_TIMER_THRD_SHIFT);
+	reg &= ~MV_XOR_V2_DMA_IMSG_TIMER_THRD_MASK;
+	reg |= MV_XOR_V2_TIMER_THRD;
 	writel(reg, xor_dev->dma_base + MV_XOR_V2_DMA_IMSG_TMOT);
 }
 
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813173448.109859-1-nhuck%40google.com.
