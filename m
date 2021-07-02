Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB7VV7KDAMGQEXGGY2HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5A93B9BA3
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 06:50:07 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id t20-20020a2e78140000b029017b7b63ef30sf3479477ljc.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 21:50:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625201407; cv=pass;
        d=google.com; s=arc-20160816;
        b=CnFbhzz8PAvCud001DnYsiBd6Y3GvXvKE+DO/Qz1yCun8FFTLMLqNEzsc8Q13IeM+n
         oLJ82EyF/XwGPvgYS/EkP0yNeplbm+9e7x58VpbE0DTeY/Y+Jj4NdXugzYRPeJNKMuyj
         CobvCzZTJ4wRNak2S2vHQVXjbz84YKSko/DYhkkVGHWrrM8GqG7qlneC59VuO7ccY9yp
         Lrr5bYnb2IodpAguxOhf8pErFDkbEDRkUQL58w+wTAd/phaL1eqEWOB/IqX3OwYd0O0F
         r5/Y/+siNc5fuBqe86OekmFEKewZNWHEQoEazbpjlrrkB+H0j6eVA73m/B0jhaoXn9s6
         eUAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=PhpoSGKVYj74JLPcmAVYqmGuA4Ze59/E9J3iDTXqQg8=;
        b=EMc5Iq2n79x60h7lsG/x7PTAFAny60Iir2j7FJpfvTlpA5f9X00E4ce+N+GAq68niu
         SUyvp+rBQGlfDpG5W0nXTaGjFYgAQdTP0MxqOD0A6AI9EfTxT08yac2QFm8IEz04Ell3
         VvmNoLOe0ijJNhmHkYbJliezLHLaKLPCSftGQO5RwsnKa1lQet4OB49FpWDIYWYNpQQX
         315xpwQ0jQEHIbLKdJ3RLgcCuJuuFJBiAppJTiT+8FWU6KHz5KoeEOUj6Ma59Okd2Eb4
         LudqQdpzx8jR64EunZ0mM7J+EhxZqHoHgyoOiFVhqgkjg7xrAzYUWWI8Pm4zAREgohv6
         rK7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tzFwN6+M;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhpoSGKVYj74JLPcmAVYqmGuA4Ze59/E9J3iDTXqQg8=;
        b=oajwgNoAHMkAlSV4NclFJotLNlW1g8P80QF0/pD4YV+4xX0A8AtxqAxp4Js1d1HdIF
         OnnUUzE9Mzk8dZd0ru7Z6jM5Fi8mL5MAEKetPg0ZDK2tv8XGhQrqY1r5MtCpCkZp7eLh
         xniR5MGC9WlSeVFcEX0dSN1li2j9wjKTViSTMufOrEs2YTQWjubfTh31hoqaRIrBYigt
         UwnPCFlhBAM50UOU3KQvTFrjNK3dhxpSf3PoDt5vnrf7WoFsNuf8nfYI5AL5KlGfnRS0
         4UxLFImiyY3GblU99dGhtm1VMXD4QUm9a/9p5xSxOmz2m6Q1SG4yfBeCcF70ApLnqgS8
         o0aQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PhpoSGKVYj74JLPcmAVYqmGuA4Ze59/E9J3iDTXqQg8=;
        b=lklfmP+rv1rH3pihY6WramZXsXWyTJYAs7RtWMjZ3dnfyIqVPrUTv1g4yvk4V2OhZj
         GkcTJHkl+Gcu61F5uYT6i7IIuFDQk9L5JnVt4t6CfWX68cTawd8f+HcnIgWdJXtV9Nxm
         ILtQNosKeODwwRejhbPP9ScetUSveapzxvkxI0/iThZ5X+Y24TSFaBMAQMuoZdOskHh+
         MaR29gLKb5Oy4/m+6TroKQzo7ZrdMUX3Qed3t4GlBdYE/mlvtHEJOc2wLATCJh6Z1gn6
         ux/uLBRiJMNCxt7YIkU6bjF4BuszA8mqRrgdgtRwC2EZQrb0q50Aliq6QB3CIEOqP7sx
         ji1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PhpoSGKVYj74JLPcmAVYqmGuA4Ze59/E9J3iDTXqQg8=;
        b=ihupFnpy0+BFDTNvwPWVtk3UL+vxJhM+CofXkckyPbVH74sBRY3hxkhSavJPif8man
         u5HFclDlvXvewQVwjYm+Qje3Pbb4F5IvZMfnWmfq3/hEDcC+wNRRCUdIzEP3FRG58crK
         tarmzTQWl+7n7Duc41HmsQPrsy30pNtjW06C7oEVSthgni56TfIGh7VRuvM/0F95m/aZ
         v21mpElnOXU41uKh5lRhiDkCoYzCsrsxBQnLVyyxqWUT5kqb1N27NKfTxM6f3SOR+TMJ
         wvB72A9Sztr1QVr3bupusQYBLHcGAogWaqA5icYTZTzO6VTus+4t1CSKiQF0b7FDqHuv
         Fwug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HDUFZJJf6DA+vEyf5Xkqc78vNXtPfuQrrKIRuuJ8ZD3/F9fa/
	Tp9ECkOSHXWvGPfwef5Qqj0=
X-Google-Smtp-Source: ABdhPJxzU3qk69HkD81+pn9cDy+onqsT292XkLAKVyy3Y9M19CDwp6buOj/jU37ytGwEu8m4uIE0pQ==
X-Received: by 2002:a2e:2a86:: with SMTP id q128mr2375534ljq.181.1625201407103;
        Thu, 01 Jul 2021 21:50:07 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:444:: with SMTP id y4ls7786lfk.3.gmail; Thu, 01 Jul
 2021 21:50:06 -0700 (PDT)
X-Received: by 2002:ac2:491c:: with SMTP id n28mr2498842lfi.230.1625201405933;
        Thu, 01 Jul 2021 21:50:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625201405; cv=none;
        d=google.com; s=arc-20160816;
        b=wC/2PfLWy9qGWKu5wAip7BJoIZlJhoVzcwYUzi9pBg4PBKzsLAZmJaG2usxFaIyoDM
         Tz26fT1eW1GPXzBsUulQnlEMDZN+in6rn5OI+zPKT5I4A2LBLMXBH3eSDebr/6aAMB4+
         c24RXYxRF/lvYWjPxNMxp5Fh+c4YxdlBg024r+VEJThksxhY1O3vlS6gNud4IXNkfEG3
         4QinmOho1SC6c3Cr0QcePteZy+UWAJ60qvq7bker7xRldtPbA4NgfsCz9wVV1ZDOA8mM
         cBpJrAkbuhhaQhWezxQFijRJXCgfvYD8HJpF+WuX2jRuXQfxlFYwIKOlfAGRowu9+4z2
         mtIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=W3XAzBcIgnUxyFMAmxxdlqQo/wCBISZyi6Hw8WfdbJ0=;
        b=BttyJAq5eVExRNi6rdZ7HqryC1c8QUIIG0HBkboyO1SqolAmD00KNYPHXqzso0CKuR
         kXePBTNzZdsPkSZ4JMH6hSJwk+yW8XOcv87bgvBfSPGYWSL4yrV/HEh64A2uzNPcD0vQ
         gKyHGz2iXt+Fnfs6utBAWElrg1tMRG9atriBMjzIYPgUJDp6yuzqbmXdhUeDH5kMmORp
         TyKbNS47RgCsgS6s7YMhwI/2nUkbQkIH6WPaG4e3gWOAAJbv73ealcon8pXIWKHiazXJ
         tUWIUGNrHm/FEhCaJ/WjY4Gs8o19mVaOHFoSNXv9RAz5pL57/uktGFEBEO5eeTNIWFTa
         hZbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tzFwN6+M;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id z16si84392lfq.13.2021.07.01.21.50.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 21:50:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Received: by mail-ej1-x62f.google.com with SMTP id hr1so10735013ejc.1
        for <clang-built-linux@googlegroups.com>; Thu, 01 Jul 2021 21:50:05 -0700 (PDT)
X-Received: by 2002:a17:906:28d5:: with SMTP id p21mr3437635ejd.358.1625201405601;
        Thu, 01 Jul 2021 21:50:05 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d6c:b200:425:6af1:c28a:24e7])
        by smtp.gmail.com with ESMTPSA id yh13sm606074ejb.28.2021.07.01.21.50.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 21:50:05 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] gcov: clang: rectify gcov_info_add's kernel-doc
Date: Fri,  2 Jul 2021 06:49:50 +0200
Message-Id: <20210702044950.10411-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tzFwN6+M;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62f
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

For gcov_info_add, ./scripts/kernel-doc -none kernel/gcov/clang.c warns:

  warning: Function parameter or member 'dst' not described in 'gcov_info_add'
  warning: Function parameter or member 'src' not described in 'gcov_info_add'
  warning: Excess function parameter 'dest' description in 'gcov_info_add'
  warning: Excess function parameter 'source' description in 'gcov_info_add'

Obviously, the kernel-doc's and function's parameter names slightly mismatch.

Adjust the kernel-doc description to make kernel-doc happy.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 kernel/gcov/clang.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index cbb0bed958ab..214696e28ec1 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -264,10 +264,10 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
 
 /**
  * gcov_info_add - add up profiling data
- * @dest: profiling data set to which data is added
- * @source: profiling data set which is added
+ * @dst: profiling data set to which data is added
+ * @src: profiling data set which is added
  *
- * Adds profiling counts of @source to @dest.
+ * Adds profiling counts of @src to @dst.
  */
 void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
 {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702044950.10411-1-lukas.bulwahn%40gmail.com.
