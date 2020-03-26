Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN726PZQKGQEX3PXIOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 880D419470B
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:06:33 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id l5sf5372459pjr.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:06:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585249592; cv=pass;
        d=google.com; s=arc-20160816;
        b=o3xzkjtLqMXl3eELPvGOCTcwKipFc96DkJ37eYlrNBo+SzBxvWQp9R6zezan1sfeIg
         272qq7QQOwTr5k6MX0CUm/ByMAidtS/hu6cTl7tUoAnz1EI6T1w/nwrXoH3n/Sl3vMwb
         OTIrqnQ1w+pGBcv3Vt9yRjsX3ckSCiMKsRiAuEv8kaw6Li8BylRQicsMuWbk3yDCMNMl
         HyBJtbCIWKgPiFU0oUCeU5qPlIxKvxmuHxyJuUa0c/CroHTdsrp/m9oTNT5fJOZ8P2c/
         /DnxtjXIsOgc5/g31F4kg8OiezcnKD/bGKvNBESAO8CjoL6v+7y9xTa13fdIB0HyuAIg
         n1eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=PS62hsmu3OIOoPDPrI+/pLikviY44SQpVFs1sEr1GbA=;
        b=KIjL4Ok6Npb+sYCPVWnEua8157x9Ml2HmcZ3u/5pz9RThML+IHcrj9Zrqyjo6FECde
         2zIpwe3S6pwrTugXAEDpSIyq+Zv0pf2WwrWiZxH5CL3kD1Rq2hXShnM3ej/hFh02TaWP
         eM9n+e3rIu0NERAusoGowrNn1KU7AviTi0rE6g/tcYe+DOQ8a9YpfcWSYlsMnXM8H5Oe
         W4ELpOf5IlrPqI5NpePi/M13vYZsomBJQZW1Krd7zPWdK8KHMCPVgkbMnX+f8nL5pGZl
         PfmZ/b+0rYFI9lK1tmzvyS94bg31y8+7JHkse7BUIMJqEKdwBfygZ2VRg1SK692g9yRk
         7RNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bxm4Du0K;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PS62hsmu3OIOoPDPrI+/pLikviY44SQpVFs1sEr1GbA=;
        b=dDazkmfib9xlC/GDkQfhtXkFNWtAgrof7V/XfWKD/3SGiJ62leP665erlMREg4oqpb
         g/thGj1qXs7TYjsoalLe6KDWGZtfKGW9U6ExxS8qaM/LXVr74qDYy1s5cNj1u0aT+iQv
         lmEPSx1E7h+iGeeu8xPdsO2nW9D8reJVIwhNgtQZwD6z/T6V+Dq1+y6zgILqkYwkpyeA
         t5zoCb9wUJsOJYQIya5YdcsbWKFUlUpOl1nxMqBPA6fneayIL4qVJSO8o7MiW3T12BFB
         nhPFZf+XYsPMmg50m3HIy9roKHE1wOo5/2HXiukdn5pLu6NQWcCvvlIkdexPn39UZ59o
         3+nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PS62hsmu3OIOoPDPrI+/pLikviY44SQpVFs1sEr1GbA=;
        b=lhvEg12mGrIFM/R4DMq+mRn9+v+zVMo6K8Cpcsi4TouQ24kO6Lufc8aj8gWenqGTWW
         iwHtJ5owkVGwXnzu/89HW6SnslMRZIqd6feK2cOgsOIwyR1P+e+vZpvb/plZdC12Rqmf
         Sna3FoMNeQmDXKmO1xgQIVQ5lbFXzh12KH/CGksMSXe3o16CiI/d63JKkpphr2/19AWw
         nBrjmE/xtWTbndE0BOyb6gya5UyRyVcMAtQ8dKG/Lm/mWwILTq7wenK4TS0SmJbp1R9M
         5SZNy/gE8owDjG8HrBzg03CNgyaZKXw6IdeWxLuvWn6d2Xo1yx75eUHwO9CzbqRoaEDx
         p/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PS62hsmu3OIOoPDPrI+/pLikviY44SQpVFs1sEr1GbA=;
        b=AvupI0JT7BsT6VaSvhglepb1cyxTF3AGdi5a0XsfDENiY3HecNd7cGczrtChUwV64J
         6Gnnllzp5oopq29Fs09Fw/uD2rDZ6GSB7+Suz8dQgjpXkuXzZO+nJFOATWhK/jw2a9DQ
         0Q14SJPI0hWmZpfcDXnZY+2dDn6co3YX2OzL6hyEJ/fyD0RAr6vz6N1gIow9xVkeg4RA
         Vt9blAal8Cl3IxVorfuh1iyrBYhC1M6ynSh3g1XDxfMQBxusFQliOxs2ZLoSB9//WcyG
         OC8oaSg1lyh8awYe/k4b+pKTDyI/06o1293sCEuYgzfTtpACx/X4yAKhY0z3h/Fxo31K
         a/vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1hGoxDBvbyr2rPMQf6bRaadqRnv/ZA5Gu18/uu5u0zKy8NLwkM
	EK1a87JuV/r13Xc9SdfartA=
X-Google-Smtp-Source: ADFU+vtwJHxO9S3ZxrIL+GdPDzt9wIoy16dxQozZumBWluiXNYCnvEgWNAhdJrkRzEtlohOUeFOfwg==
X-Received: by 2002:a17:90a:cb14:: with SMTP id z20mr1532018pjt.170.1585249592072;
        Thu, 26 Mar 2020 12:06:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls4005067pfg.9.gmail; Thu, 26 Mar
 2020 12:06:31 -0700 (PDT)
X-Received: by 2002:aa7:8a99:: with SMTP id a25mr10306114pfc.76.1585249591581;
        Thu, 26 Mar 2020 12:06:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585249591; cv=none;
        d=google.com; s=arc-20160816;
        b=02DDH6FE29e384AkrGIgfTyfxqbFir8fbqu0a8hgOFs865WFkqClIjUkzKo/nDFhph
         Cnrp3nJSADMY2UkB0e2GkwsGvdTyrUbVm+k4Sp6vG6GdrLcqr6WD7450cm8coN5v5mNO
         ByaUZlTsioY+BZ5FdVAsJ34HGTv7B+iuZZ1cpN351PUp/Yq723g59yIE9kOEeyqBNx5K
         OkEEJwDUZPtOD/YQDVy8j9GjbqUMyn9bVZhxln10VpNUXvhlbKPcl1E+T4FDDgrFTo5a
         nZd7aeIoEZZ+9H6hW+wCgDo/T3lvyTF8SiM1C3RvZlVWrNSe0f+sk0KTYH20UQoV+wcw
         XDyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YILw0WnEbaGR/H+Uju7JRNfDS8c3EZXLZHqmGXa7a9k=;
        b=PLWXtrO8rpPsSHMMYWPgfRr6bqykNnVoKOg9anWwI3YzF2ZSttFNsfkfTD1zQ8u9Us
         ZbzsVf7DkIVkOVmpPlpZrJAmbwz/sD4Nr/p6l6Bz06+hLp9hvnUcGDha/JN3EjxdYa5Z
         Gv6w1iDf56S4+w5XSctFXwlVJo59KKCQ4oFnwfA5zTz31rewplcKS2uCKuA13gNsSRu4
         9SEeDa3inbDtmqV/S9XIzQvMeuOUOuGa/i9sWN6TPPftctvstSvx1g1uCVpjbbg0DEbT
         B9zUapWboYqZxyAwV8dMVxNQxz9PfEoMbKOPZCiWK2yvECRCIGkVfLEa0Tpzn8fhHJy4
         KTxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bxm4Du0K;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id np5si95824pjb.2.2020.03.26.12.06.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:06:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id y71so6537387oia.7
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:06:31 -0700 (PDT)
X-Received: by 2002:aca:170c:: with SMTP id j12mr1281904oii.50.1585249590751;
        Thu, 26 Mar 2020 12:06:30 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j90sm818321otc.21.2020.03.26.12.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 12:06:30 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Julian Wiedmann <jwi@linux.ibm.com>,
	Ursula Braun <ubraun@linux.ibm.com>,
	linux-s390@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH -next] s390/ism: Remove PM support
Date: Thu, 26 Mar 2020 12:05:49 -0700
Message-Id: <20200326190549.24565-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bxm4Du0K;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

drivers/s390/net/ism_drv.c:570:12: warning: unused function
'ism_suspend' [-Wunused-function]
static int ism_suspend(struct device *dev)
           ^
drivers/s390/net/ism_drv.c:578:12: warning: unused function 'ism_resume'
[-Wunused-function]
static int ism_resume(struct device *dev)
           ^
2 warnings generated.

When CONFIG_PM is unset, SIMPLE_DEV_PM_OPS does not use the suspend or
resume functions. Power management was recently ripped out of s390 so
CONFIG_PM will never be set and these functions will always be unused.

Remove them so that there is no more warning.

Link: https://github.com/ClangBuiltLinux/linux/950
Fixes: 394216275c7d ("s390: remove broken hibernate / power management support")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/s390/net/ism_drv.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/s390/net/ism_drv.c b/drivers/s390/net/ism_drv.c
index 4fc2056bd227..c75112ee7b97 100644
--- a/drivers/s390/net/ism_drv.c
+++ b/drivers/s390/net/ism_drv.c
@@ -567,31 +567,11 @@ static void ism_remove(struct pci_dev *pdev)
 	kfree(ism);
 }
 
-static int ism_suspend(struct device *dev)
-{
-	struct ism_dev *ism = dev_get_drvdata(dev);
-
-	ism_dev_exit(ism);
-	return 0;
-}
-
-static int ism_resume(struct device *dev)
-{
-	struct ism_dev *ism = dev_get_drvdata(dev);
-
-	return ism_dev_init(ism);
-}
-
-static SIMPLE_DEV_PM_OPS(ism_pm_ops, ism_suspend, ism_resume);
-
 static struct pci_driver ism_driver = {
 	.name	  = DRV_NAME,
 	.id_table = ism_device_table,
 	.probe	  = ism_probe,
 	.remove	  = ism_remove,
-	.driver	  = {
-		.pm = &ism_pm_ops,
-	},
 };
 
 static int __init ism_init(void)
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326190549.24565-1-natechancellor%40gmail.com.
