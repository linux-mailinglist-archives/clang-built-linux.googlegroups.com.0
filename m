Return-Path: <clang-built-linux+bncBAABBQXFUSCAMGQEDLUAGPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EBA36D555
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:02:43 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id w9-20020a0cdf890000b029019aa511c767sf5449220qvl.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 03:02:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619604162; cv=pass;
        d=google.com; s=arc-20160816;
        b=rTPw9UvqDZkdu59/6UHrMT5m9qkJ6heiEm8LY5YyDXGn7+zU6pI2XPY2eyimUaUqHo
         wmFEnrRmDa4pWOKK4vHHmjJG3xcRuCqZ4HVWrw66Gh6rn4xuxkNAN3/n1N+lB9WwOggJ
         YV83CrIuMWzhzwqwAeQoL2d5mcyuLi1pU23VAZy3xITcKl9py7y3isZjp+uqPLUo9KBB
         cVehvD3lruC8tL38+LwS8Nb6VdiFnAI/6QWNOofOwgAnA9h5s/vJmUS9GOv+YojEN78y
         tbJJdyJ9cdmSe8rbIfu2uU8hNrtt2i6ZnGSSUGrdOrKO6a/D8Cn8msNkCJvzsHUbiRUx
         t18Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=xyY2s6RzWa1OPCrXR3xGi55G9+pDBHoKy9Kmgy1sKTc=;
        b=zQesp4FIj3nxfUymIicFQaspKZaZltbvrxMicHq0+UmfJBPyacUDR+XDajrMg+BmFH
         fugzOatHBjBcB4Vo/Pf7vBclF1Ei2dlKsRQhK4FybURS+A2X5jhp7mWSe9jo3J83aiWy
         /7kxmC9f1pSuHrrx5H6/GALmO5tMz+regbsZ5txHQpHptwIKAMDzSysKHyTW3DRjnfaX
         AU55uWKLSSkcajechpm0DwAbYLH6LUQKCdMc3y/IDXtX8dEGQ4q98rORvnxe0tTiVE7m
         BuPJtqZmRht8x1altDSSgZnpcCw98+98hkX5ufc5bidcQiWj/t/vRph0l4ossg4Yk9VY
         SFvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xyY2s6RzWa1OPCrXR3xGi55G9+pDBHoKy9Kmgy1sKTc=;
        b=mNW+y/ZMGu+ESzGQmSCQpdhl/MXNEiqdc4vF5r7ql3I6VH/0wkRu1B4abHyOV5Rkgk
         1p7UTrQTFIeAhfIiaTt4CwT2KL29zq1YKajbgEIYFQbSuNi54ppbGjvZZauD0stUOghJ
         sOwt8g7BKh5yJ91JCb8I5JGugPLZjl/VQd2+JPt8//+qNFHG5WxKvMIrh2oOhfdh0xPR
         p21l9yAx1GwnOU8xvdXClM/Owcptx8gyI9QnWvJP8F08KMMNMm4DeDFhQ8F10Fy1Sj6G
         Y3GL0EoqoTvklT75ZBsGeNOeUBr5fZ2zmIW4t7qObmq3PhZD6jMOu9Bt3TtPl+pqWEMT
         hMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xyY2s6RzWa1OPCrXR3xGi55G9+pDBHoKy9Kmgy1sKTc=;
        b=PxyTh8xVq990sT1YgdGQdHSBKdap7LwUwuGYiOJcQnPex5FvgVD8VRHlPtH1QxD6Uq
         iOuqu6vfVNfO4Ss5cNnBdB9sV6Xp/obO73z0CiwVjad5OawAkEQPYvpyowXBI91h07Jr
         siHRgST5uyvrMrvjm0BbWpKyIpKbNIiS435LGfSI45I+woh89JBC6STuAdcRePZl0Q+V
         jbBr4SxzMk2He5XEZi8sxiJh+Shh3CvphfZKRdT4z57mdtRhwblQP4mGDRnBdv9ovWO4
         w6HxH5R2O+QiTSdk8fT2veOkQ1v7kBv2hMUe0N3ggOs9dEf1GCWW98aZMMXs7MdQ2D6D
         SSFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TYuvsR8H0MZEDbgS0NOFEzmDoXJhrRHTkWzvwKF7wCO6juXqI
	QN5roNMKcDdfe5fYxvf2owE=
X-Google-Smtp-Source: ABdhPJw/DezO80lUOpViIn2/egPCTWZ68W/mAPmQ4axvH6SRq2gbBNN1GkpQPb9GKTy5QaIT5MkC/w==
X-Received: by 2002:a05:622a:170e:: with SMTP id h14mr25417740qtk.287.1619604162445;
        Wed, 28 Apr 2021 03:02:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls13045694qkc.3.gmail; Wed, 28
 Apr 2021 03:02:42 -0700 (PDT)
X-Received: by 2002:a05:620a:a9c:: with SMTP id v28mr15442709qkg.105.1619604161975;
        Wed, 28 Apr 2021 03:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619604161; cv=none;
        d=google.com; s=arc-20160816;
        b=CbH1E7PNCgthFLT+9tJNPLCPFKo8xQRBfDaLCb0OmPjaJvYs3oAKB0NQwnrVstUfBo
         1EyuLhI9fcN2oW1UiE1Rq+gPGUO8KqjNoYCz5gjirHvQ3Z3bQzcioCDB7rRScP3ghwMD
         F6sn2xNYTALCXkSOThEovZzgi4QaNON1qtosqlvjRZJCvMG0n2Ol+rgOmd2Magp2o7ca
         LBr718ftkedK4keKG9xcC+/Xrl1IOF3c/zKDTOCqMjzS7s+2s+XD+rNMiq9fEMzRXuM+
         2Ogj7vkW5ctPdvY1S0JZPf8UOk/hRIMZ43aCDbiaMefNZ/iY4Q0tfCVJ/UXqrZDGUIbb
         nHrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=E7bETbHtYP75m/X4AaA+oI4NtzS4fT7gq/ei6Z7g43w=;
        b=IVaizIE0gyIG05fRbDSxd+xCEcfgHwADp688h+ZOu3zNaEGivm3vcmEPh0zoUUqYU5
         7dYPYG5HyUCa2NS1ub7/4VJBv3ksex4P/grlGwyG4IdlU1NspL2tLT7/JfdS8g80nREU
         9P1FV6pvzAf1Qwh2GhB7knsfyzlpCwUixHsT3TU0taFdH3rv87hWmk8lu6FZ1Cyn1EyI
         izjxmBPR18aDbeZPNB84pW0zwCHLRzbtT0zOTXvaeC7fQgpafyVetyYVLFNW3tP+/3SY
         LgtkwLCuf/ZYemX/p4RmReZ6HdflyYNecl2sA80ZfiozWzO4spp7m4cpSYEoqjm137iT
         NZUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id g22si2007262qtx.4.2021.04.28.03.02.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 03:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R251e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=9;SR=0;TI=SMTPD_---0UX3IHwS_1619604144;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UX3IHwS_1619604144)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 28 Apr 2021 18:02:26 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: miquel.raynal@bootlin.com
Cc: richard@nod.at,
	vigneshr@ti.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] mtd: tests: Remove redundant assignment to err
Date: Wed, 28 Apr 2021 18:02:22 +0800
Message-Id: <1619604142-119891-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as
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

Variable 'err' is set to 0 but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed.

Cleans up the following clang-analyzer warning:

drivers/mtd/tests/torturetest.c:233:2: warning: Value stored to 'err' is
never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/mtd/tests/torturetest.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mtd/tests/torturetest.c b/drivers/mtd/tests/torturetest.c
index 6787ac5..841689b 100644
--- a/drivers/mtd/tests/torturetest.c
+++ b/drivers/mtd/tests/torturetest.c
@@ -230,8 +230,6 @@ static int __init tort_init(void)
 	if (!bad_ebs)
 		goto out_check_buf;
 
-	err = 0;
-
 	/* Initialize patterns */
 	memset(patt_FF, 0xFF, mtd->erasesize);
 	for (i = 0; i < mtd->erasesize / pgsize; i++) {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1619604142-119891-1-git-send-email-yang.lee%40linux.alibaba.com.
