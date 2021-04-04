Return-Path: <clang-built-linux+bncBDQ2FCEAWYLRBAX5VCBQMGQEG7EX7ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-f191.google.com (mail-pl1-f191.google.com [209.85.214.191])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A0C353A14
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Apr 2021 00:32:36 +0200 (CEST)
Received: by mail-pl1-f191.google.com with SMTP id s17sf1270340pls.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Apr 2021 15:32:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617575555; cv=pass;
        d=google.com; s=arc-20160816;
        b=CV+SWC7DkjMQf63W2yR9kNiOGMlahL5VehQEa/eHwTGDLehHjkQ7PnlXsaHOzsmcL/
         +dPwpo+P3zF9mTpl690h8FDB7Kxalcim3BjNQxElsIH9eWpQboj3Y0FKPOQ3YYFGudpT
         A4JpRHbDY2LQYFt+OYhW/dn7IM/RLfilT8HSlX/WAkH7+2KVOCJD4dnmYQJC4DVqDCWt
         LTUpBusHNDIYx1C4sjI6EjB5LqDD05ikYiAn7o+aJ0vxDRevOtyce3VRRCgcFu981jVB
         iqOyeP1cH8gNbOd3DTAZqDyJIH4nFkcJ7CntqWZvBUPW5qXINAwSefjoBg5EAjjhdPPB
         pP3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:84;0;0cto:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :from:date:sender;
        bh=esSxqdwVePLVad+I7V6G3j3m/3fIxORHlA6lQ4loG90=;
        b=HpuylwxWb7iJcxRmzUdGf+jGj1HXvrk7J8Mv33CYnsfFzsIRrhX51BrL1IVQMq7P9A
         PGQYrHIooUVTrli6+/HG5NJXEddjszX9Smw5zpMow/ELXYff2xH1CCQ1yuWGHL/JTZuI
         1VFI5QtySuKU9GC7qys/dqk7P555jMxxE4SWKo14CHtoKJ61qGe9dgSWNNKcDy7cRttI
         h9sNshr3wPrkA1ps+dCvzWhnSIzWZHixYpEqQvZn1XPM2+uhiHqEoq6UtyA6zJbiLnQE
         Gne3eLEWKBgGno23ezvdZ6r8nQK0z3G4PHAbbnsuoIAwTZ6GRlo+GnudiCO8bMtc7q1t
         4E6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=neutral (bad format) header.i=@gmail.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:84;0;0cto
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=esSxqdwVePLVad+I7V6G3j3m/3fIxORHlA6lQ4loG90=;
        b=Ko4NB9oisQa4SLLCkHvGRV5FrW4XNIFEZwT4DlHou4eHflkk80yKH81qEcyu2iVNlG
         wWhIT9tF51K+60LOImCNKMOUnI1sTm5AR9YqHwEeDDQc0v0X0I8LFerDRmv+rXWfVfQ+
         O++MU99TAJyKwNcLOzpLOi7NK38NhZWf6ei8oNWIQVjlkJnBvQrUgtUIdHoy0HhWh0C5
         lYYjwTq8yAktRHnTGlJUMDO/bXW3vj3BeIUo/HWaOKhjotlQ0reV9vwC8e1rMT1iDu8N
         0noZxlOynnfnKWKRD+CkI305OqTWIp+bZ7DsTx/+PPy+F45IStl82KbAXSS6qTW46hab
         y+4g==
X-Gm-Message-State: AOAM533Za6wqz9Sg4UMqn/6di+IEIkFZ+4qnZADccXB7gZptEPUCnEFS
	2Q/YA+7v643kUCJDin1STHs=
X-Google-Smtp-Source: ABdhPJyZdCbv7UtuQB3LQA81u8Wj/9GRRgduHNljHVkkC+MO19+viGVxzEUqHFE1ugJS3WUsQ8s8eg==
X-Received: by 2002:aa7:9299:0:b029:21d:7ad1:2320 with SMTP id j25-20020aa792990000b029021d7ad12320mr21309301pfa.22.1617575555011;
        Sun, 04 Apr 2021 15:32:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1393:: with SMTP id t19ls5706633pfg.3.gmail; Sun,
 04 Apr 2021 15:32:34 -0700 (PDT)
X-Received: by 2002:a65:5bca:: with SMTP id o10mr21320362pgr.248.1617575554473;
        Sun, 04 Apr 2021 15:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617575554; cv=none;
        d=google.com; s=arc-20160816;
        b=vuWmfiELlvTDovZog41VeNgPRb/Fo7g2nntl3JcC62LVV+pVvwhjqsBRtfV5pvuV/1
         ZZu7QhGbMdKLG+VXuGnqTKqg32s9cPvU7vdDCqGq4+KjgkCQlMFchxADeX/P1LObmQPk
         H7IFp/SdNQUTFvPp02XLFDZiV1Y+FSWEmzPLnARbFoeEm3mw0IJ0NUypmJbWQTRZXziB
         YFPkMtthu3t3yhom54IbgmmDfrJ3GknM7healLnCIaMIWTpwKZHYmrw5hh6QFAWH39hy
         nupDf/9wJZyOlowGnKg2ltiYxllerPxg+mCUFIKBUMd6xDHH7R+J0B78PuS0Sasa7tQH
         LpYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=84;0;0cto:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:from:date:sender:dkim-signature;
        bh=SN4VFWPC+wyT3rAIlOFAZrVOzwF1f5acphi1J3LvQE4=;
        b=UgxXuCchC94JXBvxPK56t26Dt7j6CE0t4e8x+fQes4N/k08F4RiUsC72KV5YvUzIx1
         lVAVzdo3lfvihSUZ6WKb47A/Ck4xuMdRXyaUaIrvUX0MoOUtxhG9RScJZJoZNXgjgj0l
         gt5+HErvSIE8W9dbunGxjrqZRJYmuyVx1wpO4e0xuNpoF11Oaa2Prj21l6Z8QZRGcgiQ
         JEuvhApb/cgL9tS5B84MmT4doAg/GwAzhKKLoOLASmPo+7wT/x4CciJr+etml2UnFfr8
         Hxftq/ImVlg+K2eBuBRgv8zOLcQdIg6S6oOo8DROs0HsgODL4NLPToNKNbXNV0Z2SYgs
         +afA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=neutral (bad format) header.i=@gmail.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id ft8si1218254pjb.0.2021.04.04.15.32.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 15:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Received: by mail-qt1-x82a.google.com with SMTP id i19so7343905qtv.7
        for <clang-built-linux@googlegroups.com>; Sun, 04 Apr 2021 15:32:34 -0700 (PDT)
X-Received: by 2002:a05:622a:1701:: with SMTP id h1mr19104342qtk.86.1617575554031;
        Sun, 04 Apr 2021 15:32:34 -0700 (PDT)
Received: from localhost (dhcp-6c-ae-f6-dc-d8-61.cpe.echoes.net. [199.96.183.179])
        by smtp.gmail.com with ESMTPSA id e3sm12879193qkn.99.2021.04.04.15.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 15:32:33 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 4 Apr 2021 18:32:31 -0400
From: Tejun Heo <tj@kernel.org>
Cc: Vipin Sharma <vipinsh@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, cgroups@vger.kernel.org,
	David Rientjes <rientjes@google.com>
Subject: Re: [cgroup:for-next 3/3] include/linux/misc_cgroup.h:98:15:
 warning: no previous prototype for function 'misc_cg_res_total_usage'
Message-ID: <YGo+f3XoA4CtRAPt@mtj.duckdns.org>
References: <202104050523.t4Om6TmY-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202104050523.t4Om6TmY-lkp@intel.com>
84;0;0cTo: kernel test robot <lkp@intel.com>
X-Original-Sender: tj@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=neutral (bad
 format) header.i=@gmail.com;       spf=pass (google.com: domain of
 htejun@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender)
 smtp.mailfrom=htejun@gmail.com;       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Applied the following patch to cgroup/for-5.13.

Thanks.
----- 8< -----
From dd3f4e4972f146a685930ccfed95e4e1d13d952a Mon Sep 17 00:00:00 2001
From: Tejun Heo <tj@kernel.org>
Date: Sun, 4 Apr 2021 18:29:37 -0400
Subject: [PATCH] cgroup: misc: mark dummy misc_cg_res_total_usage() static
 inline

The dummy implementation was missing static inline triggering the following
compile warning on llvm.

   In file included from arch/x86/kvm/svm/sev.c:17:
>> include/linux/misc_cgroup.h:98:15: warning: no previous prototype for function 'misc_cg_res_total_usage' [-Wmissing-prototypes]
   unsigned long misc_cg_res_total_usage(enum misc_res_type type)
                 ^
   include/linux/misc_cgroup.h:98:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   unsigned long misc_cg_res_total_usage(enum misc_res_type type)
   ^
   static
   1 warning generated.

Add it.

Signed-off-by: Tejun Heo <tj@kernel.org>
Reported-by: kernel test robot <lkp@intel.com>
---
 include/linux/misc_cgroup.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/misc_cgroup.h b/include/linux/misc_cgroup.h
index c5af592481c0..da2367e2ac1e 100644
--- a/include/linux/misc_cgroup.h
+++ b/include/linux/misc_cgroup.h
@@ -95,7 +95,7 @@ static inline void put_misc_cg(struct misc_cg *cg)
 
 #else /* !CONFIG_CGROUP_MISC */
 
-unsigned long misc_cg_res_total_usage(enum misc_res_type type)
+static inline unsigned long misc_cg_res_total_usage(enum misc_res_type type)
 {
 	return 0;
 }
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YGo%2Bf3XoA4CtRAPt%40mtj.duckdns.org.
