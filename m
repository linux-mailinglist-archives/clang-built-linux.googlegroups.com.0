Return-Path: <clang-built-linux+bncBAABBIN4Q6DAMGQEYU33OLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 174A03A2890
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:40:51 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id nl8-20020a17090b3848b029016df4a00da9sf3418713pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 02:40:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623318049; cv=pass;
        d=google.com; s=arc-20160816;
        b=ixZBnOCKkOhvZmNOCcnEaSVg5XMxRrs4HLdRFjz/Xaj11pfKG/LBTP9WocaEw6GsyY
         skarTSVmpYnUAAHhDR9rebIOo+lS7PwOdehyD3GyhbdBn5DP/OkGiUYVbMGkqwPky6Ad
         S/4UiwPouXHAUwu5aHy3v/Npl/FWmn+Abrd1MWaCD5Vi3nswZF4Xo1SFbZ7WfHg54Y1k
         oO8j9orz44UyYrf5UFBG4iopytptK10Pjma4shCaKijHOmITUnQvykyyUbT9QpQm4rv1
         lfZ0twyiwGlhd5A655y6WmNDizAmzp/LII+F70y2JUEfjt8Nj421P2NXbiD2G+0eJl64
         +v+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=LhWl8cIvqonKdOCrSvWmy9PyQG9ISM4/TLii3G3pHcc=;
        b=K6fErhQGhd71W+4ljHah6PPGmYavB6RCAwW3oUapBe9pzssqFdsaAdXemn+6UGqV4q
         HzsArhe2ol29mIGNhwxqeuIeGCTQT4upP9/KgWtaibIxXOOcLTIqsXqJ6F7enpUnVpjf
         OO0K9PlhMiZ2oxV/pflqKeGT1qZJPe4USb9bEH4+i9Vnmxf8oD4Y/w5Xdw3PBdeE8DYP
         IAQkvTDVlD5mrT1PcGd2r0iiQChH94PAZ3SoGqXOUIowofXjmapNFiZm+OcvzsLhp5ir
         YRga7zUOCraqRVvzIORyK/NEAI1vhxdaTwsSm39H4+GyFy+I5U/ECHF49Z/SqG6p8aUJ
         kUpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.54 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LhWl8cIvqonKdOCrSvWmy9PyQG9ISM4/TLii3G3pHcc=;
        b=Pp/ZK8TX8DqSDLLutwdLNIGzoOdcVfsf5O51BLZs11ujHRldbX1Ee+8mw3Kbl4j7SO
         qSfTWHe9+zv7w8g/ng89U7AtcoQFV7EmrZ6OdQSyi85yj1kc49syKftenSe0BcoXU75z
         4JwHEqD6iHpSElxbdYvsqnE4ISizPRlJqe+crztRjMTrftXCcd6MrBK2aAKPnceT1gwI
         atrHQwGtgShn+fzsHqRvuWLEggdV7urzr5m8j1WZ4+DfKdarNEhbvufubmPOxUJ7w0iD
         ftDuiEpv3A/8MKAyAUqt9/Pwhd2NF/fwmZrwN11PqaGo6nNVJBLDahV6vdg4widh0vlT
         wJIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LhWl8cIvqonKdOCrSvWmy9PyQG9ISM4/TLii3G3pHcc=;
        b=aVal80/TupduXdBffBNB8GLZlikp2+7gCSZZl1CZABZZVbg/98ELnc9pqm7QE+29Ra
         X/bZdHJU18SSkZbdmhnOD0/TzOesQqsFRcMpUXcHTqNq/cqXx5PVXOi8sAFq6NrdNENp
         LaypFMboVDNixXSxpxWfIMoC5dtYLLHTd8did6diOvOXk1DIej0/3iMbYvGU84MAMUIe
         sOzPSK/MtymGnM1AOxCmAGknef/HxTcuMLpUCSz4xD5AMKz+kh8D96fB028DzaFqnd85
         diOM/oT4RMjrjIvWXhAOosPCJlB0HpxbyogM16o2WaJ1Lm7Ui0HvlYg2YKzg0lMXTW+W
         +iJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fIjJgnpQbKr7Fdxb4azx9bJMjuUKHnOqbXYM1yCzamN1xNjGQ
	wJLdsv8fZ2udXX5F8oHXU2c=
X-Google-Smtp-Source: ABdhPJzOEd48kPAPjqiRxjyhHxgYVqLMDGr2QksY1zEtcb53V910DJ3tGA8X/WsxrOs2zGN2IXMfvA==
X-Received: by 2002:a65:64c8:: with SMTP id t8mr4166326pgv.96.1623318049790;
        Thu, 10 Jun 2021 02:40:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb11:: with SMTP id u17ls3556445pjr.1.gmail; Thu, 10
 Jun 2021 02:40:49 -0700 (PDT)
X-Received: by 2002:a17:90a:ce02:: with SMTP id f2mr2538880pju.162.1623318049361;
        Thu, 10 Jun 2021 02:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623318049; cv=none;
        d=google.com; s=arc-20160816;
        b=OkVqZzXQ9Tl+IJ2X8kleChpNVbIX/P6s+70ynEGaZTO8wImzpXoO6UNeN4FR0lug/1
         w0aVZWGmzlhkI/SHDv0CTxJJf/Wl4ZCmRmWICdIdGPv1mN2EvW7BUZDHGkiOxdN7oDK+
         pMaOnWfzzDGLg6gvOc6ca3+aWOPjWW4fSUfcHorp2/C+zfvO4bmc2uRqoB/TXBpNnh21
         ezjlHu/xiGosh16h2xDjWDmNpFR8lKeJOgCYhRtIlMbZiSY3iTgaEN6cuZnM2SUWVIPV
         zCbYriBVD+nDZGO1Hl2tfOWg7OTtbXeIILnW3XuwdHRmwN9em4H3QIXo4EgBxjKJswcr
         /3yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=6JSBYDn/jYPFtzKfmiRcglz6svJpy5Qp34kwVxFQ1Ck=;
        b=J+890kXEiFM3EGjS8F4yaIskpkgefpeb6mHyqD6bee0lt81nDs5YJ8XYfEDDyKg6i4
         0MIwbUmmNkAZ04Cw7mk8/joFiYQeX+AvFzQxt5/M1mKJ2Rm9sFESFRCh+PLjK/Y3FEXK
         l7IlMZKM1hB0pQK6wdEmb5JA8RPelkwoF9wbA5EMH4OmhLemiZNh4VO4wfuCuMUx1XY+
         aNWfOw4Nxb5KOapnoyOcvgj97ZxUC3F6KtpsY3Lon7cT8dCMCyvlcBW9CeniMIV7Y56Y
         iuZvKTml1w5kBdMBOzyY6D+i6YF7J9C1vN1Mm5ESIQWSk98FPeT2aE6nB0CoPRDknvKj
         i+pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.54 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-54.freemail.mail.aliyun.com (out30-54.freemail.mail.aliyun.com. [115.124.30.54])
        by gmr-mx.google.com with ESMTPS id t6si202510pgc.4.2021.06.10.02.40.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 02:40:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.54 as permitted sender) client-ip=115.124.30.54;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R121e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UbxKN6e_1623318041;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbxKN6e_1623318041)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 10 Jun 2021 17:40:46 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: rjw@rjwysocki.net
Cc: lenb@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next 2/2] ACPI: sleep: Fix kernel-doc
Date: Thu, 10 Jun 2021 17:40:39 +0800
Message-Id: <1623318039-57133-2-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1623318039-57133-1-git-send-email-yang.lee@linux.alibaba.com>
References: <1623318039-57133-1-git-send-email-yang.lee@linux.alibaba.com>
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.54 as
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

Fix function name in sleep.c kernel-doc comment
to remove a warning found by running make W=1 LLVM=1.

drivers/acpi/sleep.c:413: warning: expecting prototype for
acpi_pre_suspend(). Prototype was for acpi_pm_pre_suspend() instead.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/acpi/sleep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/sleep.c b/drivers/acpi/sleep.c
index aaea10d..3023224 100644
--- a/drivers/acpi/sleep.c
+++ b/drivers/acpi/sleep.c
@@ -407,7 +407,7 @@ static int acpi_pm_freeze(void)
 }
 
 /**
- * acpi_pre_suspend - Enable wakeup devices, "freeze" EC and save NVS.
+ * acpi_pm_pre_suspend - Enable wakeup devices, "freeze" EC and save NVS.
  */
 static int acpi_pm_pre_suspend(void)
 {
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1623318039-57133-2-git-send-email-yang.lee%40linux.alibaba.com.
