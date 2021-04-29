Return-Path: <clang-built-linux+bncBAABBFE3VKCAMGQEM5X3DNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E2E36E8FC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 12:42:31 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id 10-20020ac8594a0000b02901b9f6ae286fsf18938480qtz.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 03:42:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619692948; cv=pass;
        d=google.com; s=arc-20160816;
        b=qtCmZ7GX9jRkGxns8E+YeIx0uZTHr/GS7U8Knu09oyweEjgca5wIEdIFjHJGdAT/ie
         thWQ5eMtETJUAQUB9I6KTj69z/tdpY6p3pZQx6yUaPlvIr3U4o3tEQGHqiVkd+VIPRO8
         bES9clHJw4BxbmLD0G+nAkOX427LFRor+NLh64orp5FvTKjjzWx3qsitthnL4Dd8sdH9
         eLjjl3c/0YSraNUy1ZAueJkmlxYjc20MGV59KXeqAJ2/Womk4ugrS2/bjCQ1hQOoRPlZ
         AeZajEIgt50MQOuhVQtVDPJmBc9xgAuLFdbqNsuc/hLtCtNvzhMb0yVAm7Lru1Swgjh+
         mdZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=EnN3YXBlA8XuOKsGhUiSxUF6M46cgdhfRn7hMl3+oZc=;
        b=xYWVCrexdziOk4ghl5Mf+Z5S6FkR23K5JCn0L/5PxjWqDO3W4sNo03o37KXJARUmth
         ez2LUuPQBnOtNovG2tfdJjdMoFWLpwS4HM11YTbg/JsFWdkNZwcmoqPf+NcxxNTfHpQz
         uZk72jzKcno/3KM04Ilscv2y0P3zLL4enAyw+ZGk1H5EMXZaQmetoTOKsmB7d3GSHm/c
         ScDQTZW6Rhb2jetzWuI9HUvhkNSotpYLV8KmJzX/cTWqPBatRksStDtXn/6ld2waqB3h
         PU1LTgSggQqmL5RgyAIJwe3XeQDPwgP3ln4gnTN84ial1F28ycDqoE7ySHtjAUqzNez+
         8yLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EnN3YXBlA8XuOKsGhUiSxUF6M46cgdhfRn7hMl3+oZc=;
        b=FIwVXCbGH0HDIYIMB55YLBHuApjHwXNAUpegN/fkpKXlo0msou2h2V1wGpI+H1Q0XQ
         ljp8Ma9nk0emd5IEpBx2kb4ZaX9SK/xOy4PCkCfT2hgjrVONOBYSxrbcnEi9oaWYSdF0
         t7ZENDgxLS27+yJS6z2DexJxYGLIgf8ZbLuLti2tOEQmt/WfJSE5isZY9kA19JLuIMhP
         B8twDG87HQ/J275M+6yVKcC72IPAQdZwyjf2gLXkrXe1zpkc+dxm30vy5t7V7cGs0ucQ
         yfWEPVhb2bDUvB7YqkpHAcb/Skg98FzPL/6d6zYs8plxRFbxeqdoIVYAW1ek4r29lXmC
         ipGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EnN3YXBlA8XuOKsGhUiSxUF6M46cgdhfRn7hMl3+oZc=;
        b=egd1SViFrh8CKHnTmwgHSKsSBWhUjBgyASmKdufjph5oeuD9IBsCsRxqhihA6MP1my
         2xMU3Yu1R00CYgz4kWxTE8/vHtO1AXaRw7FxJv/w9eqg+fdf9assOJu+RhpooYOTgdX8
         iM0aPqrtJiLBhOW7TT+ORbGKt475W6q/RDbfzdyqE994t1b6RxpZbG9uVHXK5SX25EZy
         pBVncNvhcmyfR5lIPr+aN6uyCpWVl/Fk7sBf3XZ1lix9wrfKej6Mn4RnloN2MvULA+YT
         3ShyFfzOrrjI+VGWoa5zLPywJVCYO5AGo3aIs63SYKFw2UIdaDRpAyg0+VNVGOn58l0X
         ifIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FytBuInqd6YLUy1gHsye/tJq87VsQsKVSMUSONe0OTWAFqcMU
	SKqkz3oOnoijTVuDtRlFhEo=
X-Google-Smtp-Source: ABdhPJwGKn+6GulrUtRKom0gQ753R5qmtt/ji8d+LiS5j7YZpSVW66LAUtNreatejV0qWfDwjZM32Q==
X-Received: by 2002:a37:a5cb:: with SMTP id o194mr22101830qke.303.1619692948291;
        Thu, 29 Apr 2021 03:42:28 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:22a8:: with SMTP id p8ls1548246qkh.6.gmail; Thu, 29
 Apr 2021 03:42:27 -0700 (PDT)
X-Received: by 2002:a05:620a:444f:: with SMTP id w15mr32829195qkp.437.1619692947917;
        Thu, 29 Apr 2021 03:42:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619692947; cv=none;
        d=google.com; s=arc-20160816;
        b=O+peWAp1R8TUmKPZxg/vtr1L3Mho6pZXVPUJ2HLySxpU7RRoPxO2M3rnwokwgaNgkW
         MBS/E5a7yadrDEWhyVNn2NkU7eB570kGS3dh9T8qdXPp9p5xOTwzK60eS68p+Xqkl3dt
         LUsHwiTMgsxbHUtSjVvSC8fAmjsKHgoqGXItz79olq27vYg1kfcRlIhUM6TttM4rrLCv
         hlq92sPTGKMsUN4RL5twQtBJKdRDktrulJkjrVI0DaAGda1t0hH96ZW/KfkKEzllX6kN
         bNfeJB4HScJDp1YwAHnp/mtRCgE0wJPGO0CTArHegx7M2lp8H9Ox/6a+5WUGXVOexi6Z
         mowQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=ZtkwZ0S8NacwHZ8YN01kKwrEQhyqD6ET/nY7dgmx0J4=;
        b=ZGG1BWPkRGTT3tyFGGcOspAqNEONchCOYUUSjoWa3NWfU37n71sICZoVStIbtjqn/v
         n7ogtMGYr6tCwnzyUpsBY3MlBWedSlIve/8DLi9kn/Z1/4LpCkzpRpxoxwB4boIVTheZ
         egQsPHWcVj877DuZQ42avT0Rp5PQPrn0a0qWPss1ycSmE/z6/l+MJuTjqCxAdKaS4bCF
         +fxum0mJzIQSnMHYryXlWhQjTXu1Y7XGmiGYWyN+5+Oqm3ZtdHVa7ypvIeIwNkfv/UEH
         hfh5GEyEZD5QCbXXp5btpDgpNKfMTfSi0Tx2iq2T5gpqYKaRVyDnEffG0dGT0rPCGhTi
         Hb+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-42.freemail.mail.aliyun.com (out30-42.freemail.mail.aliyun.com. [115.124.30.42])
        by gmr-mx.google.com with ESMTPS id h62si216662qkc.3.2021.04.29.03.42.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 03:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.42 as permitted sender) client-ip=115.124.30.42;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R281e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UX9d.L0_1619692943;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UX9d.L0_1619692943)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 29 Apr 2021 18:42:24 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: dennis.dalessandro@cornelisnetworks.com
Cc: mike.marciniszyn@cornelisnetworks.com,
	dledford@redhat.com,
	jgg@ziepe.ca,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] IB/qib: Remove redundant assignment to ret
Date: Thu, 29 Apr 2021 18:42:20 +0800
Message-Id: <1619692940-104771-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.42 as
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

Variable 'ret' is set to zero but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed

Clean up the following clang-analyzer warning:

drivers/infiniband/hw/qib/qib_sd7220.c:690:2: warning: Value stored to
'ret' is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/infiniband/hw/qib/qib_sd7220.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/infiniband/hw/qib/qib_sd7220.c b/drivers/infiniband/hw/qib/qib_sd7220.c
index 4f4a09c..81b810d 100644
--- a/drivers/infiniband/hw/qib/qib_sd7220.c
+++ b/drivers/infiniband/hw/qib/qib_sd7220.c
@@ -687,7 +687,6 @@ static int qib_sd7220_reg_mod(struct qib_devdata *dd, int sdnum, u32 loc,
 		spin_unlock_irqrestore(&dd->cspec->sdepb_lock, flags);
 		return -1;
 	}
-	ret = 0;
 	for (tries = EPB_TRANS_TRIES; tries; --tries) {
 		transval = qib_read_kreg32(dd, trans);
 		if (transval & EPB_TRANS_RDY)
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619692940-104771-1-git-send-email-yang.lee%40linux.alibaba.com.
