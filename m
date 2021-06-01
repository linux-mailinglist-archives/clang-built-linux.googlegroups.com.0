Return-Path: <clang-built-linux+bncBAABB5MC3CCQMGQETFXND3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FCF397084
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 11:44:23 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id n12-20020a0c8c0c0000b02901edb8963d4dsf11035925qvb.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 02:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622540662; cv=pass;
        d=google.com; s=arc-20160816;
        b=LpsHWGtnie7OKGh/A4iWK+L4GUzg2t/rN0iv0aCD9EM16OhMjyy9/qCZq6g1pvmah/
         gaK8kSKPDqrTFkYnABXZ8ulPgY4ykZW6wAyDf7T212IemFDBIJCrzbNlBDDpaZfTHVeo
         KVj0qrIbmjqWN0aenV+3zXFKQAfjCtWvFa3nq2MKFuiPcgwutqxq7Q1WNdV5zJa/KpDn
         uH0ziUsIkG5/SNj/48iARGD99TgIX44xA3zV0h0L21GwPc27zRanUzCiV+fpITfqzDT5
         95KfcpWRuSXO0BMOpV/1+BmtEOPeGdJ6TB849Fx++VJfsRVI5VzY+fn+o7mfVy4QQCNx
         0/Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=DoDtQVZVmYM1dBdtbXY3YQfuI5oshjFhMlr0tmD9mfI=;
        b=DEpIUimZkHDqkHBsqchLylQ+btcM2LX39CKr1xndq4OhYb/XXpgw7HF/CJxToskolQ
         /FJL4enMG7iPyWIqtkTwJOX8+mBKlHRER8biJprV5WBuYN5CT+l8cOyX6sOKGRBUnaby
         6C/ERg8uPzbItqQPZA7yJJnpGr+DujoNjc+Yn70DoyTX3JX7DlvgcS5ExijYqcEjuvNJ
         B1daYLpB1RJmRqDku1c1vTR7PD+y6ZSCRRrSCyLXYaCmbkpejIqRMbthqYoE7QHWYksI
         8PibRrHtbrQz7BCmg9dnLyTJdpJS+/5V8MEtXwrv0QTAOXqMPQvKoR+4ukhbPrkNiHOZ
         460Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DoDtQVZVmYM1dBdtbXY3YQfuI5oshjFhMlr0tmD9mfI=;
        b=keLUsEcE5j4tWRXR9wJcVpysWUVVrWnGaxQQwzNTC4VrRJ5ApbO6CzvZpmaFGMmV47
         tCnXkxLiRJ3qc3wr0Ex8U1DoCO/DP6/7nCvtvXfYPCsYBmN477l+roC+siU3iIOWC1+D
         yWeUoYpZLPqJE5WR1C2bevClNinuekAvpT23qINq2QlPu37Fhq0LdfzjyeCk2vKeJCnI
         autDxZuGirYRnbw8z/gcfvRoOCYVo4LVoE05qkXOd2aZgEYHpMeU47PTXbr/IwDSj0K2
         4u4dlD/fvkbkW/em72Fz547gteMtue5rMjyS3OrWCddMD8VWZeerHb+QEDy7ZUMVd7qt
         ZyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DoDtQVZVmYM1dBdtbXY3YQfuI5oshjFhMlr0tmD9mfI=;
        b=pUDNCCz/0yo/rAy9i9uqMY0Gq2GlsRL6Lk87YlyTB/q4p8ZET0oT/Oe2YJ8wOJq7Dw
         1bdyO1LHf9xrdyP+G6NxCcCzDH8QTHsFNh5fnziWUJx90vBOqnMEoXpctRJu7ojh+uFz
         a1o5UqMuFGhF8CjAFlveNOQeIOqT3LCXkoEjf/knu41pZ9nfZtVjp+yhkoGUBgje4Gu2
         QuPV+A8GgvgvNWgaWVyOEXILcJgCc/YN7Ig6Vid/KJc/6wo5ZZFAnGVJX0RNUUg0leCe
         wBfP8aWXdy3NucxZlUAcXCaYCxKAnM74pE4EWxSvul4xUgPWanklGvBAy+Oybj3yzPPo
         fb7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301eU1VHQmMq2PnE9Crp3wmqzfJQA+zR+XZV1P4XOiiV5NQxL1i
	8bMUOVJh1RvsopcLUt94dMc=
X-Google-Smtp-Source: ABdhPJyrajNWZ3wlJAXkdBfvABz4a3AIkhgLVMJlcah6X15cgt/cQOxoWUqgPEcf3+gyXDowT66S9Q==
X-Received: by 2002:ac8:7348:: with SMTP id q8mr18370687qtp.55.1622540661948;
        Tue, 01 Jun 2021 02:44:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:84b:: with SMTP id dg11ls5446522qvb.8.gmail; Tue,
 01 Jun 2021 02:44:21 -0700 (PDT)
X-Received: by 2002:a05:6214:848:: with SMTP id dg8mr6132247qvb.2.1622540661595;
        Tue, 01 Jun 2021 02:44:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622540661; cv=none;
        d=google.com; s=arc-20160816;
        b=jmB9e8WK4pi5aRmc+2nyOAo/WiIoaFtAEGy/t1v2grrel2bZvZjzFqnRMcTApLS2gC
         ACsQq3qqohPH6rDKWNZAdj8GaqKuYZVvNHS9TnmiLwgIjJ969Cxm21H0x9QRgfsgxGq1
         GXtFNfEZ1uNGfSUnyMlOti8oz1PpkvOXxPailVpGoNgl7qS6QTaK2Y6FZS1+f0RxctDO
         xblJQ+vxjhv/szwkZSMVALUkyGnAiS4bB0L5Nyc+PlADs9/zyJTGXfk6bO+6SHVKbxmJ
         0jz1dcYchSNhSe1SVdNoH+aHIUnSfvKl86DMQv7ARl5PRsGuUdcL5aiWlWafgmFyhuuA
         yFUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=CiSFeMdRMWyyQkmJjKE0OLiQeFzd1KQW6OpnimNR00c=;
        b=HqKCyiX2v8jxKw8RmgOlG8vVgySs3COQ1x39Z7Sz2huDmWxd4Wd5xCb+cefPe4EqmW
         CuKe1JPuQhevoGfZjTfYMj4p0aP7YCuYCOMVEUc0JY8n0jbF8ih+4uOV1vY4cDT4vaLl
         hX43VE3jR0MJtOYdiusM+Lvld9Zf38S6hLA2Ao1EXP3/WKfvo3Z6FLeMUxPzwZUld5U8
         3hU5SiDoPVBRBpGB/jl29ZVuKa/XBXVFduEjW320WsCzDTVyy+Ppo8zfqTTbaQZ7nXVO
         kHPuPqsZGXjWcZGe7VeHPrieAqQ6jUjR6+W2W8RkUvuHvXvbI03Ao1us/H42/98uMbw3
         3Ppw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-43.freemail.mail.aliyun.com (out30-43.freemail.mail.aliyun.com. [115.124.30.43])
        by gmr-mx.google.com with ESMTPS id p16si1009450qkp.7.2021.06.01.02.44.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 02:44:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as permitted sender) client-ip=115.124.30.43;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R691e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=9;SR=0;TI=SMTPD_---0Uat98i9_1622540656;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0Uat98i9_1622540656)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 01 Jun 2021 17:44:17 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: paul.walmsley@sifive.com
Cc: mturquette@baylibre.com,
	sboyd@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] clk: analogbits: Fix kernel-doc
Date: Tue,  1 Jun 2021 17:44:11 +0800
Message-Id: <1622540651-99141-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.43 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Fix function name in wrpll-cln28hpc.c kernel-doc comment
to remove a warning found by clang(make W=1 LLVM=1).

drivers/clk/analogbits/wrpll-cln28hpc.c:227: warning: expecting
prototype for wrpll_configure(). Prototype was for
wrpll_configure_for_rate() instead.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/clk/analogbits/wrpll-cln28hpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/analogbits/wrpll-cln28hpc.c b/drivers/clk/analogbits/wrpll-cln28hpc.c
index 776ead3..3b19475 100644
--- a/drivers/clk/analogbits/wrpll-cln28hpc.c
+++ b/drivers/clk/analogbits/wrpll-cln28hpc.c
@@ -198,7 +198,7 @@ static int __wrpll_update_parent_rate(struct wrpll_cfg *c,
 }
 
 /**
- * wrpll_configure() - compute PLL configuration for a target rate
+ * wrpll_configure_for_rate() - compute PLL configuration for a target rate
  * @c: ptr to a struct wrpll_cfg record to write into
  * @target_rate: target PLL output clock rate (post-Q-divider)
  * @parent_rate: PLL input refclk rate (pre-R-divider)
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1622540651-99141-1-git-send-email-yang.lee%40linux.alibaba.com.
