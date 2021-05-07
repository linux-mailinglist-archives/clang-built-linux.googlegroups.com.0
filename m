Return-Path: <clang-built-linux+bncBAABBQU62SCAMGQE3HFW6LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BB137632B
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 11:58:27 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id p23-20020a67d7170000b02902276bd91076sf4138467vsj.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 02:58:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620381506; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7oPCJjFMQORdxe/m7u9wzdbfDMIrAUkSHl10Vb6t03J5q7WrWM+8Ov6/i7nUmwZqf
         IbyzZeMjOCR1R2ZHkEOSL2QqyXjYZ99rgVBqUuRyFtfkCA7x6U1GHWiboOrM4cnMRqcQ
         /Xs4PDvofp+83uacJOrJ8L0Wh+JjzY6M7YcSaBsLc5r+8h48Y5bL2VW3F/TLcYftriwh
         Yy3FOQDGwAx1PkwnTF4pj4X+ugbjE9PHJ1nzj5fCXIhEMHAVhLrzaEFYMjS16u0pbslZ
         itR0BPpvXocWthJQG3cAhPh3ihlD6PBmzgIOrE10TpDbmArc+jYxpQ11XpW3lp+a4OVg
         hMhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=0D3YFkzBnM6Q7JxOFN/ySpFHq4Cs+SlTZigDuYhlmt4=;
        b=iYBnWQby452vMDQhGBmNE+r7htyc+YgTd1ZIMGNcuPdThcY8HO4YYMf0BSeUrjlx/M
         dqBALBXoPOhwnlZNbUGkVTKStSEcyx+NlukDdJWKj190lyoU7QI7RtTBxRP8iKF/Sjzo
         7/7d/eOwogGG3SIppz3Deop6QmKAbUB/cMx1yHyMJ6Qc6Ip9HL15nSLVq1MPMvc+IeST
         hYOQPnh+5+J9ZGRqXIXpb4BWOgSRqB96XgFYagBaEcXHsDJsDKvAUStuCfBipu3+TTKq
         CapOmX5ph8Y6hpoTjcfvSzbLog1zSHfxXSZm4Zhqgohh1Z59qWO/jPVzc939BXBjW5d3
         3R5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0D3YFkzBnM6Q7JxOFN/ySpFHq4Cs+SlTZigDuYhlmt4=;
        b=E9ANapRJ+cSpMGaNZVZdmKpE65DahQg2KqdCqgLK4WEExAyuwiyz4J3UanKgV8tdxq
         MTj1INkj9vFHegXw3My9M+N5BV0Qt/Kn308hvUAHOSAkF19dcclVwZEHzzcyx1PfvFdI
         TJ18MPv9CTh+dUv8T8zign1Oy7ePOnnU6eZZQ11sHW6za7/I7YaG4TGqL2QcKRJRzxR3
         InE2MKSZ15R1mLg71Nn9RAJPyyGFql3chv0oL6GBWalBcQYDBINj84ngTnaWD79fpm5s
         6+ihAFOOKTOUxypxDaVE4P0fj+MZPxexuSv51j+s8Z7nL5BFkP+k8JmrUCSJEF/7j+zk
         McUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0D3YFkzBnM6Q7JxOFN/ySpFHq4Cs+SlTZigDuYhlmt4=;
        b=GBNztsuN85qsjIOeEwsPqDwdGUVftkmD6eK06GOisKD1H8zHEF1DNPMdVRS2hrmoA9
         QivAauobezpCggv+Q2yTx1Qj10/tBy++VDwhO6KjKEakdOT5kvynI9sheRwtCPcNeI/1
         R5hUs8uyy9QcglR7cyjgyqu4/cfGc2JfYmNK2XoluczjPtuo7h4WsVkuvwtg7zXrZf+9
         eCHj8GdqoYK+7uhIdKUdHeO+FRczotqQBnV0KqtDJ1Lr9tpAiZk8ihSLKRTZdoFEwBlU
         Gvn+62GYCufnP3PHX/ZxdpTLNVD4XJpoTCktNr+Y24QEUc10rnSwIslGvNCIOJ/nsAkX
         dvOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531U7+RPRMct3SCEN6EQ78ts1XFQtkmKiTH6G05A6bP7K/dlCVhI
	iUqn3FAluX4S6ewTe+QQ+94=
X-Google-Smtp-Source: ABdhPJwP5VoH8QjswqPbB3ndP1i9dRJQt8lTvKUTL1WkR6totvpkqGr4anvFfgMv8OstGg12pMvEfg==
X-Received: by 2002:a1f:21c8:: with SMTP id h191mr5250888vkh.1.1620381506170;
        Fri, 07 May 2021 02:58:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:31d0:: with SMTP id x199ls1033870vsx.0.gmail; Fri, 07
 May 2021 02:58:25 -0700 (PDT)
X-Received: by 2002:a67:ab01:: with SMTP id u1mr7220294vse.57.1620381505730;
        Fri, 07 May 2021 02:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620381505; cv=none;
        d=google.com; s=arc-20160816;
        b=UlDT0DGuuDoI2qXmE7qRcaBP1FnhlRvrSlcm+T/uzYa7AjCFDyyTGcFj9j/zOV6mfN
         xy7J9KOIydhaHE35q6R4gDIIapVwJdPbGwReLJrXtx4H/3DS0sloAXgFrlxMRkKb/HEY
         KDcw3sXgi+qqwqFXwppSn0CllMPPtTPGhbEBcpzvdckg3P+Ili6V/tMZHNKWK/Mp94xP
         ayTqrEhTzgDwu9iFgWvmb5S1K3ZsicnoPPkKxenNvpmiTtQPeWYNERo79+CNrbAuh+9y
         KCkyTD1pWBkE8ptGkRonHkT/AQpM5oglCNSPnL9uVSvJ0icGASP18SOuaO4V6ELcMxUZ
         uEOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=DD8x6n648mj7EEIiWaenQ6z5B35WV3nRxm+rRgKvPaI=;
        b=CXoVi+cbmgAKuhw5qNe0eOMC5fn/hxvlFOkaaLy2qGj+jtH+6BC/5Y9I6uSKBvOnXW
         yg7vhFBNENjW46hzXmDAr7eYLZTH2v/UhjXBAKi0Q9ALjTeBAETwmzrMu+EiiItXkUzM
         GMK7AOcsfOr/bIItWL4Z4wbjob3KK9wTPo0PpGJJdMlZnd8xx9+KXQIgLo8kP+7qjojk
         p7eJeVlpaMXlnhytIYGNmRa4K8dpaUlVH03ERKQJhyLxv77y5KIaw+mQJA3WsBtYj9H6
         a1OOV3MYrySQTnsYjmQiNnpAdemoPqAlPokdSGnOEnWXJ5NrhcSbsI8zra7Q6fH+XnD6
         tS1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id a1si275932uaq.0.2021.05.07.02.58.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 02:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R511e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UY2DqqE_1620381488;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UY2DqqE_1620381488)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 07 May 2021 17:58:09 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: herbert@gondor.apana.org.au
Cc: davem@davemloft.net,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] crypto: cavium/nitrox - Fix kernel-doc
Date: Fri,  7 May 2021 17:58:07 +0800
Message-Id: <1620381487-45311-1-git-send-email-yang.lee@linux.alibaba.com>
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

Fix function name in nitrox_reqmgr.c kernel-doc comment
to remove a warning.

drivers/crypto/cavium/nitrox/nitrox_reqmgr.c:382: warning: expecting
prototype for nitrox_se_request(). Prototype was for
nitrox_process_se_request() instead

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/crypto/cavium/nitrox/nitrox_reqmgr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c b/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c
index bc35d4c..4434c92 100644
--- a/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c
+++ b/drivers/crypto/cavium/nitrox/nitrox_reqmgr.c
@@ -369,7 +369,7 @@ static int nitrox_enqueue_request(struct nitrox_softreq *sr)
 }
 
 /**
- * nitrox_se_request - Send request to SE core
+ * nitrox_process_se_request - Send request to SE core
  * @ndev: NITROX device
  * @req: Crypto request
  *
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620381487-45311-1-git-send-email-yang.lee%40linux.alibaba.com.
