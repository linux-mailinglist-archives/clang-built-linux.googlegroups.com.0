Return-Path: <clang-built-linux+bncBAABBAXZ7SCQMGQERHTCGLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8180639F2BF
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 11:46:43 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id f8-20020a17090a9b08b0290153366612f7sf12887566pjp.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 02:46:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623145602; cv=pass;
        d=google.com; s=arc-20160816;
        b=BHx1cPMFW6BwkI9W6hVOQb4Rew8T2P3fmVbOLSAIsYDI3CkXAnsNXcasLdiDGA0Nq8
         I5WE5lw+ZQEU96yvyHSpiMOtr4c113ZjRJmCO31xEfsk2ppNrjv+Jfznf4JZ37MBBHoc
         u4+D/GpI5vht3JGVueV9f9YI494HH/NyAB53iBuSswDJ8s/RbCHgHsRWqmuroaz2M2i1
         Yu2S/py+3XdaqYcOlcangfAy7e4hbp+QnoWRpJOVweJHWaQubXEhxdicLgBw9VZuoHf/
         RNGO1QwQ4SJTO9zXoNKjxuESy6BEJmtxbw7g6TcvvaFYFNJoIEkY57LLxDeSDcaT7hyf
         VUgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=RPO1qkLd6/SCVJLAnxocwKdHlVGFrwKR4iEraRcMSkc=;
        b=a6TA1D0cmTQqtLXIauq+UNkXJ1vTROUxOPLjbrFpA7iIr+qiZTCsVfyDeZdcVzgt3n
         DolOGDtofUBY+I20tPysPBJi7g/DF9GDCwflLLIuJv6m4YUwb5nIXtHH6BUlcxHoDQe4
         7oLv61ZQD+gy23UzgauBMfrxH9O/Z7Bjdcr4Bk+sunynnDaQmEOkN3ZDR1TMONJGE7QO
         rindVGak/TOQNadZJE3/i1aeZ95KDHxTWjbZBTeXuIIYQe/oUU0yepkySptf2Fvrs7R+
         Ir1ftcrFqnrkD+ce+Bb7olZSZ2pH8MTMnpXxJeU+7w0Wu+/dNmIX4fiGl38Q4iZ5Novn
         jlZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RPO1qkLd6/SCVJLAnxocwKdHlVGFrwKR4iEraRcMSkc=;
        b=C6BkZFExNEffFLYMr7jI63sWxCQUahQslqg/SunLbVhLGteqnRj1KhxZmXxyG7i9fq
         FzfDv5Pep4maQsf8HoX8xO7gVeI58j2IEvYOxBakPzz+HM8x6sEOWec5sKMmpJHBewHJ
         zyoPC/5RRo7IfXLlBJQ+MlJcwDwzR4zPt5VXajEbNgrR79/zasB+++fmuxG8O9uX3oyZ
         F5ZMJ/Fj4dIFqG1bBPbIvqIavDb+bBqw65DFIHCZYTuncTL+ymxCEQtuUaHShJl4TpNq
         30baL1tZt8YQiiPGdPX1bvdT4yjC9UKe+FdBwMhDife4l8F9cvGl55QuXyiOEeN159Pi
         VKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RPO1qkLd6/SCVJLAnxocwKdHlVGFrwKR4iEraRcMSkc=;
        b=ROtz7q3myiloaFqb6H7SsnVpEdM63dMwrYMdZQSJE29RbYLtPnnLyofgcmrKVMPlin
         U43TGkjbBl8rx0APFNr99DWGjs4C71X7iIy/lW4puQq8ZZZUvKbFIZNJ3y68rrjfpPaQ
         gCYmA4uP71bKJPGolpNJXW/qcAIkAUqjhVM9+KNZ4yA0TOzX0HrMRY2H/raMGkJOxWpW
         TuD/liaTLyASO7TGsSVbLkILtY+vhZ8VxpYW0v/dwgFMq+4XmUmbn2rHFLTyyUuiCzLa
         u88QQFRyXBtMZTs9iIy3y6BsO1Ds7WTvwKM08wvCqKPIdIkvbIp8Ova10Qqm50IjbwzH
         lOWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bo3p8uk9w5HUIs+Ty0ppwbMC5lNYlLXBTKPJSDvl6YyIahV1l
	T91P6p1B2qJc373jzUcM1Wo=
X-Google-Smtp-Source: ABdhPJzI38kpmUG4UUaGpmv6LSmBZSlIKHfGllM6+/VCOem89xu9DiQOBCJNjl1GTgOZXr8/9zghEQ==
X-Received: by 2002:a63:798e:: with SMTP id u136mr22439993pgc.264.1623145602227;
        Tue, 08 Jun 2021 02:46:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774d:: with SMTP id s74ls2980161pfc.11.gmail; Tue, 08
 Jun 2021 02:46:41 -0700 (PDT)
X-Received: by 2002:a05:6a00:2151:b029:2ec:81eb:518d with SMTP id o17-20020a056a002151b02902ec81eb518dmr20538354pfk.61.1623145601744;
        Tue, 08 Jun 2021 02:46:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623145601; cv=none;
        d=google.com; s=arc-20160816;
        b=MVCrLGVBz+sLvgC2iQXnXtex0fU7+vwEq36MzXPNFNUiBmojLci4UNe1eHTN3K5184
         His8t0Ua+G7K680VBUBPOL+aSOLaMwQbI05fzQqDSFx8vAYu+E6T7Q+W1FxfAd7Toiox
         +UgqM2ALiw0NRWIEVPJM0HtFAj0Qa5PNdzDcsYfYxBUtDoOVy+7LYi5+TDhkQwzH54OT
         bx4/NVOLlzYJbkxKYgY8KeFzMlumWsgmvF7j8FSkgLUt5eZA9J0SbX+ZpX1b1cc2Mhh6
         7Gl/HAV9Vr50bsw7Pz06CWNe8UjdMdgYcv+h4LDJOwFERqP0WlLh5dv7+/5rqWfs5cL+
         KZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=KGCOJcPsKgFO+45dy6XKdwG77lBulYF4enuM2iA+v7Y=;
        b=H/lvPUZ5P4xyoHeg4qsBzmLyCPrOP3V4hK7dIps3xxPyVCWNQBVySs4M1Z89fTcgHx
         2q16iOAEKZjq7vM7Lw9yBbMZqz7Ui2Z6yFzVh//11I4Dd1P3niCePgVdi5HyM/qERE19
         C1MuAokONrpFscKU4SQLKHK9LscBT1l5s3zLdvH21EQ0ZPTiPf5OuNXEoON5YKsarjQP
         DpS3Vcn+SFwo8U14TfZ8fblZ4P8p2oywXIaMUjJBGQu1OT82WBOZDhyFBDUjacHZdOcz
         O6zut7BMpA7Q9+oVvHSsd4MUr9XF2ayvGDylgyUW2Kf40VEOa9iMucEFtrnZzaq5gQ5t
         nBoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-132.freemail.mail.aliyun.com (out30-132.freemail.mail.aliyun.com. [115.124.30.132])
        by gmr-mx.google.com with ESMTPS id u24si1335668plq.4.2021.06.08.02.46.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 02:46:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132 as permitted sender) client-ip=115.124.30.132;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R121e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=9;SR=0;TI=SMTPD_---0UbkdQgs_1623145597;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbkdQgs_1623145597)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 08 Jun 2021 17:46:39 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: rui.zhang@intel.com
Cc: daniel.lezcano@linaro.org,
	amitk@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] thermal: devfreq_cooling: Fix kernel-doc
Date: Tue,  8 Jun 2021 17:46:02 +0800
Message-Id: <1623145562-111662-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.132
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Fix function name in devfreq_cooling.c kernel-doc comment
to remove a warning found by clang(make W=1 LLVM=1).

drivers/thermal/devfreq_cooling.c:479: warning: expecting prototype for
devfreq_cooling_em_register_power(). Prototype was for
devfreq_cooling_em_register() instead.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/thermal/devfreq_cooling.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/devfreq_cooling.c b/drivers/thermal/devfreq_cooling.c
index 3a788ac..5a86cff 100644
--- a/drivers/thermal/devfreq_cooling.c
+++ b/drivers/thermal/devfreq_cooling.c
@@ -458,7 +458,7 @@ struct thermal_cooling_device *devfreq_cooling_register(struct devfreq *df)
 EXPORT_SYMBOL_GPL(devfreq_cooling_register);
 
 /**
- * devfreq_cooling_em_register_power() - Register devfreq cooling device with
+ * devfreq_cooling_em_register() - Register devfreq cooling device with
  *		power information and automatically register Energy Model (EM)
  * @df:		Pointer to devfreq device.
  * @dfc_power:	Pointer to devfreq_cooling_power.
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1623145562-111662-1-git-send-email-yang.lee%40linux.alibaba.com.
