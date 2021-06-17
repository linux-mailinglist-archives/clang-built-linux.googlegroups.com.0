Return-Path: <clang-built-linux+bncBDB77PFGVUPBBDGEVWDAMGQEOEDU3QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8853AB689
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 16:54:04 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id cb4-20020a0564020b64b02903947455afa5sf1713937edb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 07:54:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623941644; cv=pass;
        d=google.com; s=arc-20160816;
        b=S7Sq1V8fhmY4ml1+s/tIWzjBOGWt64V0H37lj8zSTp/kIugz+h9iip0huNweHoJFZi
         6cOqR92P8cGEMBWuI8FTQperEry0jXLsXqld3U2JAl/5V13R044hGneHHh80MPJaP9nM
         EbgmrpKLRuyhw673ePFnHepXdYgdIMHCRT/i0IZAAAY9UW8ru68231LDvaxfy7L8yo2H
         0mSzlEq1r9gnbHITdDor+5NKI1VGv0sEp3v0JtzImgvzIbVRs4tHzILg0pucH78o3SI1
         By0cVLwx0/lfWq6INOrS9IuaSaVzaDMxriKbVqJDpc387RxFmBb3K1pw2QA1GmX9s65H
         /ahg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OcsnrBBSzzkt5++VJkkLuoM8WGWbtWz+12ah+sZlOos=;
        b=uqWpJEU1kNwfNM6pyyzEtNWeRqkg9HX26SVTuX7qfI24m6NR82t353U1qid36sYz3N
         0y8zr2o+hV2t5ZB1x5HW2m94HHbiFW9iIHzWK3Z6JN4FS7oqkEVOygyFyatUOu0sI7PD
         CiQOmSVFOcHu/Cso5foNMHC8kK9CJXI8cScvqu9Maps5h8Yu/9QsyBc7spnojOV0YeMN
         /nZw6dUg56XmZn1M4r0Ol/iZIFh9jv+O8mRvyUPC2BRLsUQVgHx1qVBGGWyBNQO+D6Mp
         TNEPW+yogyY+yodyLiBJkr6a+edToMuiQvDYhLltzfHirJLL1LKU/jCvs8RnWaOFA0/s
         Fb6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OcsnrBBSzzkt5++VJkkLuoM8WGWbtWz+12ah+sZlOos=;
        b=C0Yujd1TUDrJMH4f1674kkubJ+RhjHiBjrb00P/WEYA3F0ESf4U0H8L2ddVIaP06uh
         EwdrEspJYAWTntuaAtml9LxaVkbFViaqwML/yf4fLhubiQErYZAl3uEAsRqlezMP99xI
         dO/2v1InHaPENSZPqXEQ4Z7HUz4wlbmA4Sd2MIIFX89RYfqaxAsJp6ieXdGV0KtH6M7V
         /WrHGkCIKnl2VK0IpiWy7d1qzy+kN2K4Jguacnx38q9rBjrgM2yP97ipOI5vFIeVObg0
         nz51YusXdOfckDaaIhWjTvmWSlZmxTa8jSfJUQvx8XxTU2oCe50kAj6UZYwrLZgB17wy
         EagQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OcsnrBBSzzkt5++VJkkLuoM8WGWbtWz+12ah+sZlOos=;
        b=Pyi0PT+qu3v8+r3AOW3Fe6qYZMy1Y16amnm+5qCqQ30ZXhWcvAaXjonJG1WgzAI2LV
         gaqbfB3Hi5rLmwZx8D9nIoBUgFJf/6nDWuZA9gJZveJuH742E5m8cObHAfphk/TBU1lH
         uF6Hw+sZkRabN5yOgHQERq/+e0jrus6ClbmUP9T5NKyhopNKIzxNeGxo4PwEU/cXUyVR
         YO2iQhlJFWA7+y92uvU1Gv/RNCQq8zvKspg8pwl51MzeI5pP2v4kIYvA2cwpwypcva37
         YkT8Sb1MmzHXIwZ0CD0AQQu11WZ6SRKTGmdUO1I7OWA8CgRnsZcDPMAO1/cfhdjgqURG
         qWwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iV1hBI2wW1B6zOiJWHX7H1yVEn2jHgvO+mlx3teeTH2RutoOR
	GFwG49Fzu0ovrR9Y2LsvlYM=
X-Google-Smtp-Source: ABdhPJxWvyYnpuhYEnadSuOupTSIVsRAFPtQe9E6Jo+aXr51XF9haB4NzUDMp+qkcrPM2JabtFO/fA==
X-Received: by 2002:a17:906:a95:: with SMTP id y21mr5790534ejf.522.1623941644584;
        Thu, 17 Jun 2021 07:54:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1c97:: with SMTP id cy23ls1578503edb.0.gmail; Thu,
 17 Jun 2021 07:54:03 -0700 (PDT)
X-Received: by 2002:a05:6402:5256:: with SMTP id t22mr7326684edd.54.1623941643713;
        Thu, 17 Jun 2021 07:54:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623941643; cv=none;
        d=google.com; s=arc-20160816;
        b=qHkGhGU8Oi75OqPteXxYXb4P20oD68ACkBtPVa1sDwC/6ixaChx/1gAlK0tZfcdqrv
         BmcZLyqMmq5e3eypTKDY9jfsORcRahFOivnVR7gQTeNskGPeF8n7hj9q8kRjkbZOvF5a
         8wvrAC6CdEiFLBfRQGz5FXNQ2I68LEVwe0pH2z0uXqnjZLBEpkfexefV9sV/NeRCmy/y
         vKlV18WzA0L0V05UPrEjH4ianA8qyVczh50jAYa2dLsoor1qpDhLjfqcQXXbMuOKFm8r
         IpD4YX3NweEer1YEjSHac6P0JLfGCBhkdQjomaUUR0gMaQbm1VnyiWSSGhJ228Js7BHw
         HlSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=OIa0MiWvch2xhlSEnBMw3u6QUoelwzcLvu2xLQC6xE4=;
        b=xrXDv4Y9UdWvgCbFlm2Jo0K1f9FBbZ3xzHTsseq+nJsqUyUKhcgYsrXrz0ZAws/uVO
         DMnRd4LF0s1hsv4X1cejJjWRXmE2i3fLhMqYJJM3D8gN/Qy0+ca7l3NoT+C0hplKlG19
         gfkkYw9ADIloR0ltfodYb98AboUUhfueLzKt9n32u1+/LpA96LNR74Re2cPqanUcXwy/
         PWGTGPsoxU9EEiaa0PAzpzdyNE/+Lspq1YGCrmFwih/93ljMhJ0oZJIORt4kvCX4OD1W
         auzorld1l3pd4nvTpXybMiVWSeZmhlQmR35Mlf7c2IIjJljhFXZHLwprJGCNyjBZxyiU
         +MiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted sender) smtp.mailfrom=joro@8bytes.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=8bytes.org
Received: from theia.8bytes.org (8bytes.org. [81.169.241.247])
        by gmr-mx.google.com with ESMTPS id w2si325399edi.2.2021.06.17.07.54.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 07:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted sender) client-ip=81.169.241.247;
Received: from cap.home.8bytes.org (p4ff2ba7c.dip0.t-ipconnect.de [79.242.186.124])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by theia.8bytes.org (Postfix) with ESMTPSA id 2512B90;
	Thu, 17 Jun 2021 16:54:00 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>
Cc: David Woodhouse <dwmw2@infradead.org>,
	iommu@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Joerg Roedel <jroedel@suse.de>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] iommu/vt-d: Fix W=1 clang warning in intel/perf.c
Date: Thu, 17 Jun 2021 16:53:39 +0200
Message-Id: <20210617145339.2692-1-joro@8bytes.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: joro@8bytes.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of joro@8bytes.org designates 81.169.241.247 as permitted
 sender) smtp.mailfrom=joro@8bytes.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=8bytes.org
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

From: Joerg Roedel <jroedel@suse.de>

Fix this warning when compiled with clang and W=1:

	drivers/iommu/intel/perf.c:16: warning: Function parameter or member 'latency_lock' not described in 'DEFINE_SPINLOCK'
	drivers/iommu/intel/perf.c:16: warning: expecting prototype for perf.c(). Prototype was for DEFINE_SPINLOCK() instead

Cc: Lu Baolu <baolu.lu@linux.intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Fixes: 55ee5e67a59a ("iommu/vt-d: Add common code for dmar latency performance monitors")
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/intel/perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/intel/perf.c b/drivers/iommu/intel/perf.c
index 73b7ec705552..0e8e03252d92 100644
--- a/drivers/iommu/intel/perf.c
+++ b/drivers/iommu/intel/perf.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/**
+/*
  * perf.c - performance monitor
  *
  * Copyright (C) 2021 Intel Corporation
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617145339.2692-1-joro%408bytes.org.
