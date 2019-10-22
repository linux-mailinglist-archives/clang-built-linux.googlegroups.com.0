Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMFNXXWQKGQE3XWBR5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA10E0C7B
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 21:21:21 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id 125sf5936399iou.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 12:21:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571772080; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTZh5CTm3eYMZfQ9Bfmfc4pH/yNQ3yCTvSDnOc2gpjZUYFSmkYf1pvkwtiTRhdoSbf
         nZ/ipwHvnGe3ADvVh/RpBylesiH8lbTQUHFLIJ5JSv9oB7bUmucd2J3u/yw2ow/IYgFq
         uFM7iCiCh2Exq5K9NLJnlMcK1b5mh7v+ekJTIRgkml90c1C841ZCURjnnEn978t9nmcO
         /6rxKmXH0TfmTrIUQUNu9xCuy6/mLdz0aSH1HIptoFveC85SUwK84Ad8ertgtJ7T7L0G
         OYWdM2oXbBp0apHWpEB0O+jkePYmszkSJV3FatPmmdmE9ygSHtC/EDySYNR4B8kXT5h6
         6Meg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=pmG7HC0bZhj6vDbFm0kqi1iPWPutM14+FhmD3x+w1qU=;
        b=hqrGGIIg9T1NPw9exEN7ebk2Fm+Foxc+ihPG34Y2FZ8kD6+o766c819zHrulr0aeMb
         zOCKlHYtRf0eipGbGKx+ePzP1ASkWNtRxJH1NwMuOeqTXuFfIaaxhLnInH9LgRBAzljR
         IM8vPmrf6TT3nwKBEScOLI3S5cOVy6ZeRZwAJe2wxPIKKXL6DlYi7U3Ir1QGVFT4YQfb
         SHKwa/+47CZRjnoSXpEbz4CSjmEAsDYvCO1RZblU55eFcEJDBkU2k+0GkRUJ833kaWMS
         aYXFjTaHSwMGzW57h24pCYbi2gUNANkuSTwDDZyCXktGv0jZ/ryn8GvRVFLDxz20orhS
         9l+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tRogLjAw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pmG7HC0bZhj6vDbFm0kqi1iPWPutM14+FhmD3x+w1qU=;
        b=fRblCMZkISs8cEi3YveVWiQiNVM5q4XkBqZZh60hYFUzZZn/2qH0OhbMmHRQlvthX/
         zaoyKJddGkzrfy7TwO1pe5ouKKuCnWsMZ5kaCtV1G+SuVT+2ltfbw2Z1zAff5R79/JLQ
         So2Z2UcIVfxv4x3XkcaU182iwUF1AoXOSO9S0fvmZWpDTGIoZKmCU0GObGClAZwe3M2S
         Sb6rQeFnM8UGMt5tXpxIkj+NuaZihNBK1EUYBLSFcGeNV+4Njv9cvFmcePaBoqm/fvLN
         MK95ryE1lTQaQDQFt045ZF6J95fb+93Bes4NGNhZOHBBe12JGkCnS+yL5iPNLFm17hcs
         +ArA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pmG7HC0bZhj6vDbFm0kqi1iPWPutM14+FhmD3x+w1qU=;
        b=MIjA2753VHIak3KkirX3ay/jdTx4LVi5lsF51l/J0Y5tY7dlaofAbaWwpnatOZr3Uz
         pCZKlLqcwa9Mmh61eFvIy2Yr21syVu0/iXML20DpA7S5G4uX/IlEqfeYAc8yn/CUeDCu
         zMopPnfVwBDV8j11q5X9tQs44Ra/hieLpal9EJp6YqHXMvEbzp8p+aL2Gpm8msKV2Ke2
         flHwiVgH0CliqmIMAa+7fKPecP3BdIlDoEaXVinygYcV9NyO6NQn23p5X1ia5irLPmf0
         kjFkF6Ck5e7tVEDmWL/KjN4JVt/F876HfnS6j5bUCSYIc9oUPvKcI9vle9Nzq9iqn9ve
         U+aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pmG7HC0bZhj6vDbFm0kqi1iPWPutM14+FhmD3x+w1qU=;
        b=odjqDEhPfPjcND8UEzNGeCSXNB9b3wSKhcMZNKCWtsNJJqP2KEKod6Yfd/J7OuhyjH
         kRvs+41YDbO5ZSjKRRsDTGJvNx4rPpIeBro5jloM0Gipfb5IJUgMBgfhLCDdUcAnHLq/
         GwNwxYIaxlQ8SX6H7945IEV6EG441vyWV7ZVSG1UzeQflQpV5xkbJRUcTyT6QnV8oOPa
         kdYHcxn/waiNmCPQ/0lq3L9+9ovcIFpHXY5Fm2yD2Wn0w5FDg7bGXfmpcYrCM3a5adw4
         FoEdvMgFu99GrRtSH3xV2nMJ1EbDih9bGd7f678WrqQc+AKIjJQ19okAK06JrTpVGbW/
         mNjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwDBheovBRdDN2j9/EUW1tXxCfEPbMUwH8/BwYWiWbpckR3mdC
	7r2licgBQ4FO1kNwauzbDYc=
X-Google-Smtp-Source: APXvYqyGszDwPh7N+tEMpxXiIoPTwpeZi5/nOK7KNwn3o7orlIuixAmlccWoh3sq475+SWHjEJpvkA==
X-Received: by 2002:a92:3807:: with SMTP id f7mr6893794ila.88.1571772080547;
        Tue, 22 Oct 2019 12:21:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6803:: with SMTP id d3ls3395649ioc.2.gmail; Tue, 22 Oct
 2019 12:21:20 -0700 (PDT)
X-Received: by 2002:a6b:770b:: with SMTP id n11mr1620927iom.113.1571772080145;
        Tue, 22 Oct 2019 12:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571772080; cv=none;
        d=google.com; s=arc-20160816;
        b=AUnrNIO5KppwAV4oooS40VBH4/UcF2AXHtZHQPbeIJ+HstC0v8lQDD2mmzinDjTyyi
         Xieb/J6T5OD9tnGR+6nXlqtGrOonSg+MIJ/W2U5tr6XjDZkQrDfe4PoxMPlsFQwb2iYu
         BbGHxFuPQ/SeiEKsEg/VZFgI/L8XwO5vqUohHlSlXT3TQ8UZOpKcCdEe98Sk02/g1Lvr
         CYfxF29w7UD+B0mx631RZMV3VPBTDZFl4yOEa8xs8i1RAg1pYkFIOEPaHbreKXy78F7r
         U7w6DCn4lHory3mOtYFbo0sLx6fpYGynoq1yjUt+C8WT9SgeHOMb0t4CLl76BsbBUy4A
         sAKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0f04Kxscv5o4C1QvArEzBOxFfUoH9rZElTm3k0F24Mw=;
        b=NIM8Izg2sxAVCrBFR/1YDEuiwkH9u+vHZEmgr7A9LaabBNyYWX8KWS9QDk1qLT8wXB
         sKB9gDGMGeB2v2+/ijMFVSwSqF7sUgDRSPYEDWCUiaUjXXWrtTwXEDm7a0O7SXEpbPLW
         raO6rgJCUcCR9VlZTwsY4n939pzxYs7HqU8WHplUTILPmRGkt3Aj6wJtUa6NjQy4aZ1T
         Cw7SuQyi17xsfXm020IpmBCawTixwARZDrLfL6xJJU5aWlUtBPqpF0ZzTeN4VbRzHQ0A
         hGzzLrEgtYigy7Y1BLRGnfwUxWxeW26FIc5XLuUshrSj4BhW2vobqVtR0abDn43YaQhg
         964Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tRogLjAw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id b206si1309423iof.0.2019.10.22.12.21.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 12:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id z6so15237009otb.2
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 12:21:20 -0700 (PDT)
X-Received: by 2002:a05:6830:4c7:: with SMTP id s7mr4096882otd.3.1571772079567;
        Tue, 22 Oct 2019 12:21:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g8sm5372074otp.42.2019.10.22.12.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 12:21:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] kernel/profile: Use cpumask_available to check for NULL cpumask
Date: Tue, 22 Oct 2019 12:19:57 -0700
Message-Id: <20191022191957.9554-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tRogLjAw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with clang + -Wtautological-pointer-compare, these
instances pop up:

kernel/profile.c:339:6: warning: comparison of array 'prof_cpu_mask' not
equal to a null pointer is always true [-Wtautological-pointer-compare]
        if (prof_cpu_mask != NULL)
            ^~~~~~~~~~~~~    ~~~~
kernel/profile.c:376:6: warning: comparison of array 'prof_cpu_mask' not
equal to a null pointer is always true [-Wtautological-pointer-compare]
        if (prof_cpu_mask != NULL)
            ^~~~~~~~~~~~~    ~~~~
kernel/profile.c:406:26: warning: comparison of array 'prof_cpu_mask'
not equal to a null pointer is always true
[-Wtautological-pointer-compare]
        if (!user_mode(regs) && prof_cpu_mask != NULL &&
                                ^~~~~~~~~~~~~    ~~~~
3 warnings generated.

This can be addressed with the cpumask_available helper, introduced in
commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") to fix
warnings like this while keeping the code the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/747
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/profile.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/profile.c b/kernel/profile.c
index af7c94bf5fa1..4b144b02ca5d 100644
--- a/kernel/profile.c
+++ b/kernel/profile.c
@@ -336,7 +336,7 @@ static int profile_dead_cpu(unsigned int cpu)
 	struct page *page;
 	int i;
 
-	if (prof_cpu_mask != NULL)
+	if (cpumask_available(prof_cpu_mask))
 		cpumask_clear_cpu(cpu, prof_cpu_mask);
 
 	for (i = 0; i < 2; i++) {
@@ -373,7 +373,7 @@ static int profile_prepare_cpu(unsigned int cpu)
 
 static int profile_online_cpu(unsigned int cpu)
 {
-	if (prof_cpu_mask != NULL)
+	if (cpumask_available(prof_cpu_mask))
 		cpumask_set_cpu(cpu, prof_cpu_mask);
 
 	return 0;
@@ -403,7 +403,7 @@ void profile_tick(int type)
 {
 	struct pt_regs *regs = get_irq_regs();
 
-	if (!user_mode(regs) && prof_cpu_mask != NULL &&
+	if (!user_mode(regs) && cpumask_available(prof_cpu_mask) &&
 	    cpumask_test_cpu(smp_processor_id(), prof_cpu_mask))
 		profile_hit(type, (void *)profile_pc(regs));
 }
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022191957.9554-1-natechancellor%40gmail.com.
