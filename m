Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKX36PZQKGQE65MBJIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B90619471A
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:08:28 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id x25sf5970274pfq.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:08:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585249707; cv=pass;
        d=google.com; s=arc-20160816;
        b=jNvdCs7kgqwVPiaRI2CwgKfVMuOAtcUtEI2x3TWZk59pWZMLd17f7D7FI/pUrT+4Gt
         ZQTNm/u0k/PZUIZedwNf5d79Aiks3oxIGvjpo67ajyLhpd793r1DXgKnproYZF5ugnGs
         P4yjlB+lZtA6T9m0IbsIIyMyfsex0b5NUKLrn3Mp65NTUUXOXjxXfMIv4waYnUwgNVcq
         SV/1mKl53W5QZ6lV/oDncJKGXlz7dr3964pDKBJtWDViUYyX5Sq+sw97L/KnCNodbP2q
         H1yPt2gh/qZX0/w5Lnr7Fa6P6CHDvAuZAo6xWaWot7+DHImheWOzRG044V9d6X72giyh
         l9Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=gJ8YqoiT7EZSvPtProuQZYUueFkg8yUMn0mFuNLTi74=;
        b=rHpkm8k1C/d+el5MXZAteejXmFraq506vyYNKmMWKtvE5BnVPGvL5i2N+Y9luCPvBo
         AkltUwRziN+L56ZrD0FL6T4K4AEOXi8UjPIuIBV3vgb4dw6nHKHRdT0mSpyNaoNajsIO
         xRVgLrmLqmWXr5oFltL4guftSGCubNbe/0B0Hi0E7TE7mkr6lwiRPNoQAVhoB1AxZv+K
         oaERupBKdZOR0bU3wLHuHv69qKQVM4l97a78XxoQs3F6R5lkM2kZcN0BwWEg10Mn0cga
         gZTYCzVRnW6jRnHMANxpIwlMv3tuNSwb3t8XpVLostqqQTHNuQbm9TL0I9dNc5Rl3nYq
         OK5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HnfiJQjT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gJ8YqoiT7EZSvPtProuQZYUueFkg8yUMn0mFuNLTi74=;
        b=loRlAzVirYwtSFVKjy/LO/DcYEUb2tOCUk+xioiN8iz9o+YZ/M3/H+OSdEAwvDcm5s
         co8okLY3dOpf/Wf2SvrZDKGJ+mx3pHKJMNTjDIvv9wVTzQSG3eD2VdUJEt+Q4IAXIxfp
         JyNtwUv7dUlQWmD27ZqZkZHgGV0qSjHLO3B35M+huSpT58N/AF1CxIEzWWlU1BcB3+qb
         Icj8B4+1ThAQiFHsfThWeuDbW2guHnhqBS5zS9dh02WZ4sdkQYf1WgU/OAF4hMm3BkQQ
         jz2gjAnkad9Zzn7d8e1QClHmMCWyDJKl1rW1cXgK1GXJEa+2xOZa8SR6c+FmFl42U86X
         BIrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gJ8YqoiT7EZSvPtProuQZYUueFkg8yUMn0mFuNLTi74=;
        b=mu90Gyd2kg7fVuXaAMhxobOEjjBWDT9AJwTSuZbBBtMAMxC7ADDXLjBMyWPhhjxIjM
         ONQuRT0uk+kJ7lKk9vBI4BcAaR0mFmMmaomt6HUADjJzLPvpDwmkjS5pEcaYTGU/kH+v
         DLkx6wJrdC0limHJkwkErzn0CSz93uN6ztPRLXVipHCCeRauIKyKVicsYtoOf4MDg5z3
         8x4pLB3VzTWflj1ooTWCwG1ulOHP40x0NZ86YkG3SVmLW0JYuKpNWrpRcdAismerMOxp
         ktVF21aVqPBfhkVyNdRq6fp2r+XG28StrLT7nmGC9hki4NbJvx0ZBgzbj98sEfStLoMF
         3ebQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gJ8YqoiT7EZSvPtProuQZYUueFkg8yUMn0mFuNLTi74=;
        b=uUUeDCtTX8fjoIreeGVaeAcwAmnftL0ekfP15Dv+3pMFS3k1pYQR3fKICMBfV8GCAG
         rK7B5MtBd5mMkOC5+c6PvH7RWiRXJgktCfp/+yVRB8/RuO0AQHhrJq2xOzDCz8lYR7NU
         pDtOqyyq1DNIIQZDBiMaVtcIXQhOQwLEw0lV0l9oo8tVmDRA9nv8M9zdquz5Y6ESeAwF
         gr4WrzwzeMI9aOR5q//96K8u9oNhVNIvKAz5wb7lEUN+ZlBXyHQGcQ/eSDgQlwrm2ouz
         EW3NdC97g7KmAs8S048Vy37Lsr2j81Um833uqrn3ft9GvkY2kPRd0ZDWRKVimIZKg1rY
         6uEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1YfLXEgepuZClvjcC1Myh4OGBNI4Eq3pFo1h6+5RZnzdPdsG6E
	gw2xhQdLj6yXGFMBIg3phzE=
X-Google-Smtp-Source: ADFU+vs419inUIy5MhSiz/tPcgdfb5kbrj7MFEP1/YuRSfTtTcsaEORj7kqm4Pk8bDUkSZ22uxaZCg==
X-Received: by 2002:a17:90a:c986:: with SMTP id w6mr1602397pjt.111.1585249706763;
        Thu, 26 Mar 2020 12:08:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls4168309pgn.6.gmail; Thu, 26 Mar
 2020 12:08:26 -0700 (PDT)
X-Received: by 2002:aa7:97a7:: with SMTP id d7mr10481601pfq.194.1585249706345;
        Thu, 26 Mar 2020 12:08:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585249706; cv=none;
        d=google.com; s=arc-20160816;
        b=MiR4SSJTFMlcTBQ1QOp7czMOonDrb9OkBXxWT66lUmoCy01iyL/pPWjMxNGM3RvsQR
         QTK1mSsUaauO3zcHoNQvK4gZaB+LqggZh2KmyK8vKZyQlbKBG0zdY1gUBtCEv/bT49k6
         7LK+XzXtE5wrL1AU9lf9CnqeRWLzrGGxMW02Trf3jac4uzbYFVr8XbZ1VADtZePx3m2h
         yYjNIkdNGUfA84g8RS6rAW3/xGS6AYbhXYyh88zfhhKyUNBXV5Ef2gmWe6ww+HhVfWGf
         TzmX5bzzXdvIf0PiE1cJ1w2ubahpuadRpITODhDc7Ovz2Lkcp20dsorJQxu4wyWfl5Gc
         7Yug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dl6TS6QBvWF3TrGsODa6YxrD+hVpbT53C2smrTPgLT4=;
        b=fsL5BA26wBT1nFhlJraD8qUBTdEbn7j39D9N0DzOS4yzYjEsBXNe7tczFlbidmWLjH
         raubOfvdmFdKNOSh10AvY6kq2UAHjRR86VC9v5HPI7cdcQZv9DFE3awGiM4oqC/DcLvZ
         /NIk9MK+UhAq8lMyBWTMDVhFqptXrAWigo7XGEaxT2dubcWLq7HBikWIzbuhMpa6D9W/
         dqoP3TkLziGmOd9D2CZdWRx1cjfdUS2xXbpW1UpKjRUeRrNSKfjf0yTsKcMMbPRzyZ7+
         hC7T6Gxth06imp0eXJsE4RfmIKxFijOVk45jws19Wy1Y8xahFv7UNmNx6Wz9baVewVug
         qHdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HnfiJQjT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id 138si240475pfa.6.2020.03.26.12.08.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:08:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id t28so7126553ott.5
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:08:26 -0700 (PDT)
X-Received: by 2002:a4a:3bd7:: with SMTP id s206mr6363529oos.89.1585249705771;
        Thu, 26 Mar 2020 12:08:25 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 76sm823838otg.68.2020.03.26.12.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 12:08:25 -0700 (PDT)
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
Subject: [PATCH -next v2] s390/ism: Remove PM support
Date: Thu, 26 Mar 2020 12:07:44 -0700
Message-Id: <20200326190741.24687-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200326190549.24565-1-natechancellor@gmail.com>
References: <20200326190549.24565-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HnfiJQjT;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Link: https://github.com/ClangBuiltLinux/linux/issues/950
Fixes: 394216275c7d ("s390: remove broken hibernate / power management support")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Fix issue link in commit message...

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326190741.24687-1-natechancellor%40gmail.com.
