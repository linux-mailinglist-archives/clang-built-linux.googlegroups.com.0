Return-Path: <clang-built-linux+bncBAABBIN4Q6DAMGQEYU33OLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 106A63A2893
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:40:52 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id d17-20020a9236110000b02901cf25fcfdcdsf926397ila.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 02:40:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623318049; cv=pass;
        d=google.com; s=arc-20160816;
        b=OfYzfBdY+Ze/k2PmwTu+nfho6iXWZbRdXgdERsnDKE8rBdBIYNMAozZtexOGIuPx9m
         8tzLORgF/jixrRauUHSVVx10ExuL/3u8RJKD6AgK14RQeqTxBarNkrYItOm/xuzVXnTR
         yNlPhqKlXjZL7OEELsLhR4StzIW6vI1EkiWkmSFNCWA4KtM/igBDkhfInY+hb0EHhGRm
         6aNATyPbKjhjbjUpp99fAP0NDzrIRPUHWmtkv4WP9zuyEyNJqgvSJmDz81rcy30Uac1/
         dm8zPjmDVSJnDYZnlRSxZ1DwUThL5TmOZh1hVhZV1VHvXiLSdr5YMzT9ctwJkmoA+svj
         jkVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=DNV5z9Pe41QXzIK01GsVrFmsrb5XidVqyZ2KjWX8TqU=;
        b=ngyKzKBuUx7JSE5zBqaIXpYBy6JQkQACI1APwGuCnCIpYmeovY38i5UduOLuaOEuJ3
         EO0gXL1nMQ4rk2NbF/fTLFfSFcEYk1zjy3WrCTaBYubYhLTaB3S1sK9tt6CbKSOllo21
         wxI3TR+8iG8kfunMHG9qeVMDnS4Qyv6QcTFL0g1r9Su35wSFFy4cgKDX6zFOpQICtxoQ
         7mm9o0KlX06fXlrNyS1LUxnRgvnepxgy9qP/9IjPvJe5fdgRnjmnbisB796482/80PXe
         8SeK7hqmPFy9mtUo+P+K/BDD2BOnNwSd8p6MCmtYj5qpDBX9+y2CixK11rxbkKo32+1r
         T1Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNV5z9Pe41QXzIK01GsVrFmsrb5XidVqyZ2KjWX8TqU=;
        b=sWtYynEPDJUp1i4gEdAKnlnJlQBzVtdnI83nI4O8I9qcZso0cl5N84A7ETQd1NPR9I
         T4F6IA7lPOghLeaTshrBXz4AezVQPrqGlra6NwBgox5kyxDgZ5IkKqL1986VpsRn0PcK
         KTBY2LO7zpRjb/zi7h1f+SRyqCEyhuzkH9AHtvN9xk7pXHcY+fOZME27Bzxhbu6hpVE9
         f5d5v3QAQMO45wOoFl4Ev/rh+rlI8R15NM3+KoJcWeTvsCdQgWStAm8x9leX+kH6N7L1
         h/4wVq8jdA5q/arYb1MeIRlbIlk0t0pi8PtuUB2Zl2e2zAOpY0cBsDTOi5ezaOAAiqY/
         wAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DNV5z9Pe41QXzIK01GsVrFmsrb5XidVqyZ2KjWX8TqU=;
        b=mmOgjq6fzPHahFerFveQ9O8m6g2a8bUdmmRIWVeEO4GaXpiuezZ40Pzd6pXUWc/1ns
         crAu6fbXBBwRyWDjbLAzfZzWX/UK8kCVwCm65ZsEnAYs9/uncT6FYLF/o8aBeFw2ZvCA
         aLQ9XAEmUdP1lOXEbFzyqi/TYUcQngfNNEvCRMbwzeDYVSM67QTQUfdwE+hW9YE+YdSv
         rmSGJhWPP3mT7ab2syXRJN8uYnSiVPRHlotP+I2Fii/hLD+UwxuDn2yhweLK8TDpr46h
         7nB/UxgGBixj6LPD9U15WgS0twHZXKvROnJokyPZdj7aSLYWWixcyvR5Y23hr8siKnkC
         rNGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xmeXYc6vqGJ+l6VFZ+aTN0zr7bTAXhFw9fbD9KPk27RXjyujG
	L8LNcfgt7ucyEyFlE2niTPE=
X-Google-Smtp-Source: ABdhPJz9acH2k42o32VQazco8EKt9c1RFZcThRe4qzxgy/GMLuq/n2ob3RVtJL0fKeeyWjueVCdCxw==
X-Received: by 2002:a02:9a17:: with SMTP id b23mr3862664jal.10.1623318049643;
        Thu, 10 Jun 2021 02:40:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:106f:: with SMTP id q15ls342426ilj.8.gmail; Thu, 10
 Jun 2021 02:40:49 -0700 (PDT)
X-Received: by 2002:a92:c7b1:: with SMTP id f17mr3025435ilk.34.1623318049387;
        Thu, 10 Jun 2021 02:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623318049; cv=none;
        d=google.com; s=arc-20160816;
        b=VazLa2XlIguNDvv3ZPXUebbPKBWhenE6n7ALbBfJuquuXbtm/exX14FLjtO6WTyPsk
         /WTDByamkFfl5LOs9HHQKIKr+76+z7ZMXXZGB5LI7BKAxOgve0cAfudzj/1SKDftbCVj
         1pBxb0LDI/ptxMgXiEkQKEy+EjY6CQuzzZQG20fBSHIha5H7F5X1L1GB4qG/1gllg+ma
         F1IHy7s4sHAGbenT3Ls+1dwzZxV97Cnhz1LmcJd0tBZsPQEllRIhMfEzSJupLGUqtDdQ
         dvJfP1XkyYkfoT9wJx/ek/jm3WBPZH//PUYoioloirvtu7+Y5D6guY+CL2Qul0wivvXp
         51Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=kboTGaOY9R5IDEHn9xO95wD3InqFhV3wGtJ5TdZAUq8=;
        b=T+Htg8LGMIYXS1xGltC2HSFVLpGCdtUu3B3pCGJFmvbpb7bvI7YM/N81KR2Ircwwjf
         ob7yQ1fYQR/f5dqZkCLaR40Yva0NaFd65mgEPjixMjnJIL2VD9qoJKl0lgztAkJssgdY
         tzVG9Efq7SD6nTXEd4pR/LJiIUNjsIK1AhuTe/9KKnRZvoDZ3zpB4tUSk4pWC28XtWEL
         srZ3qou/H9d2V64lkJ7/Ypz35ZuB4gO71L8+HCDlsXxG7HWegDWZT6lB9JJddMYLiyQV
         uyUk3sxhxs/FPHZWc3FX7G+AfxW0PR7mTq4uOtTz1mCqpIyq1Ig42CjPCFpuZZEnOBmD
         Rclg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-44.freemail.mail.aliyun.com (out30-44.freemail.mail.aliyun.com. [115.124.30.44])
        by gmr-mx.google.com with ESMTPS id f9si282493iop.1.2021.06.10.02.40.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 02:40:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as permitted sender) client-ip=115.124.30.44;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R471e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UbxKN6e_1623318041;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbxKN6e_1623318041)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 10 Jun 2021 17:40:43 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: rjw@rjwysocki.net
Cc: lenb@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next 1/2] ACPI: processor_throttling: Remove redundant initialization of 'obj'
Date: Thu, 10 Jun 2021 17:40:38 +0800
Message-Id: <1623318039-57133-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.44 as
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

'obj' is being initialized, however this value is never read as
'obj' is assigned an updated value later. Remove the redundant
initialization.

Clean up clang warning:
drivers/acpi/processor_throttling.c:409:20: warning: Value stored to
'obj' during its initialization is never read
[clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/acpi/processor_throttling.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/processor_throttling.c b/drivers/acpi/processor_throttling.c
index 0086afe..017fd02 100644
--- a/drivers/acpi/processor_throttling.c
+++ b/drivers/acpi/processor_throttling.c
@@ -406,7 +406,7 @@ static int acpi_processor_get_throttling_control(struct acpi_processor *pr)
 	acpi_status status = 0;
 	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
 	union acpi_object *ptc = NULL;
-	union acpi_object obj = { 0 };
+	union acpi_object obj;
 	struct acpi_processor_throttling *throttling;
 
 	status = acpi_evaluate_object(pr->handle, "_PTC", NULL, &buffer);
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1623318039-57133-1-git-send-email-yang.lee%40linux.alibaba.com.
