Return-Path: <clang-built-linux+bncBAABBZEA4SCAMGQEK4KLERY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EDA377FB6
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 11:44:05 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id t25-20020a62ea190000b0290229c92857besf10440039pfh.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 02:44:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620639844; cv=pass;
        d=google.com; s=arc-20160816;
        b=czKH7ATSjqFMjES0G4fxCpqwXLcFqGd5bb+0PufFymZuOEY7ITxbft+X+2PwBvFRFP
         jB5MJKnSzVMq7nl2UWXYYHiilQ0lei4YX/QpCa7ex0E6HHxKAalrPim0aXupUDYsDuPH
         Qtt8JDOvjwW7LCARXiFiAjG99Rm+zkLPP8anfcQtl13vaoATBpO432hWDrKYPstl7kiq
         qCJmAzjF/2YSAZ78ZiH3X+KIrUbCqgvykU0lgBqfmRhZ9RD1oyQHBN7IaN/fM+KDtfWe
         Aja+9Et8k2Ch9V1fef275AAFxbU+365b7PeCFGxWAaFqvHhLDsfqI0m7kckJynn7FCVV
         C71w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=NVzzHL8tRBNNGOUTZTxbSJmp4TJaq51dU5K+ccNizZk=;
        b=p4vu7Ogr/7kjujfrERTBiJsKfVeMvGb54Kc2QGo1NPWOub66owESzkx08w0R1j2sPi
         5tAZfTaaqB28rcavpvvYCiu8EWSD/8C0x1k3kqg757RVL98oEOpKhugzYN/hx/OujfEC
         /nRR+rD6KyZzdIn4kPIVKZMYup3cLEa81MGAovArQgCa6e2xKDaBy6TU6AnTns071Pem
         bGR5AFIXeJF7SJ+8xb3n+a5uD5hFJ9BgtiHMb0WjCOpVU/kJSRPfkvqJ492SsLAkw1Rq
         uWHBnt6CJ4rT3WX5OA8KgVD1h5DR9P9qXRr4vQ44V4AwoMnREZQ5V9KQd6XhJ2g/pwNu
         uasQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NVzzHL8tRBNNGOUTZTxbSJmp4TJaq51dU5K+ccNizZk=;
        b=IosFGfUkW2TG+CEztrvrN3SEM8w+zzKLaNQGiF1aPxaUcyfGZfN3wPZunhcWr6J3L/
         vgFYtptwBDmpCtr2NhmuQ4sdk0jmqem42gOBeET0pfY46PgXgX9pLUwhtGRPosTZdV2z
         hUr3zaBLJt3IAPtuME0lvnvkISCdnzIlD0aM/el914eLeJ32k+6jz+1PnIhCt9jWpqnV
         VP4/14aYux9UMA+QSI1d2PRJr9AujXjCjJlU9hjA7wdrUQJEAui3yj6TlAVfn95Gf3vT
         MSqMQ2j0ZDvF9g5RB1ZW8zzlbQzzcGdGKoFYStiJ5Azuie0w9ukpGWi/nyVGekHrG68c
         PwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NVzzHL8tRBNNGOUTZTxbSJmp4TJaq51dU5K+ccNizZk=;
        b=sslgzstkqFQ8lSfTaSpUahem7XcQFJdlWkVmx9OCQRsCicFa36WiORv1GpYoXWxlJl
         FIJZCqvbPoey+u7mFOYhYYoJZR2bE+mUmlWEAfAXKLdDNQFSxsl4bLHpuGbdG4gOvS5b
         2QRU7W6HTOQi4cyYkq3R/hnB6y7m93kFmQD4637ARKDkQNAQuY768PIF2/C90/+M2OaC
         op7pQDRrsHXjE6dvCzEvBqOghsoaevSRaqW7fhsU/qDJiSmfHy1Q3a8qJUSDqpdjfPqh
         lT+H4Cs/C6v7lWZtsYQWxFO7LGAAHyqEhsPIbc/+xOsmJv12SERNdAhnnO/cKZSvFwj+
         jf5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533m5dC/obFAwlXrUEkoOtxASkl7XCho+Wq4biE4q9NI/WqXcoG2
	iyrSxH6Rze7RgpPg64ltqxY=
X-Google-Smtp-Source: ABdhPJxGe04wzms58kTvMj+CiEmJ0BkY8xAnrK08nKH+xS3iFfsG2QReu8R4MFezLyu8yGr1TATJNg==
X-Received: by 2002:a17:90b:350:: with SMTP id fh16mr27177293pjb.104.1620639844544;
        Mon, 10 May 2021 02:44:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba08:: with SMTP id s8ls8380617pjr.1.gmail; Mon, 10
 May 2021 02:44:04 -0700 (PDT)
X-Received: by 2002:a17:90a:ad84:: with SMTP id s4mr40336710pjq.162.1620639843760;
        Mon, 10 May 2021 02:44:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620639843; cv=none;
        d=google.com; s=arc-20160816;
        b=hqRjAQ9FlRozWcwLB+AH2SSYX9NwVYGX6fJdBQEk63/TtntVvnzWKou0AWohsmvrMA
         jeiez1ItjKupGvZg2eXj20ZS4TqGeJwCgtoyLyGZF5pVylxf/ZqrW5ULT+DQw4j4F5BY
         FV3llLOkE9FxPV2RRMkrWRGW9/drPDdcBJWm6KSlrFsBKQKvmVHUCNBXF1SN98os3d4E
         cX5/6/hQjtH2rg1bIYhViLvchdFY3A7PdlYSNjdHgmcj6UzOyoKAe0eXwTaR503s+GtX
         fq6w6SU9BjQS95XC8Iyzq3DyFsq8ITi7qkIDdZVWLlqQvxYUjZgkkEub5ygfFpYaSbB9
         a4nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=CP3m8G73aUeLy/cOBXe3UHHOwsSgbBGDMoxTE42Ce48=;
        b=y3tHPrzKFxhzcaAzFZy1aNNJ4RpoYYa2dxXSyjHreIMMdMTK73QxyyWT+JgcazSa2x
         Hcycd+UcM2QDMkIw1JPkafO51vL8m/AIQMHAdW5pR0pyIJP9/PVTM1t+Li4LDh/53Oec
         95PaMsi4B/qsVzPqA9Uieo0v70GBlViXTjw756E2JHq/h7XQ7DK3e/4awmGR/VPWz8RY
         8eEdhHlZCJoFEyEiXMaiWXJSQJH0ImCO09p8faT6S1YEUQ9qDAry8OlciKQZ/8Nul5Ac
         TzNhi+yqZI/vVuZkC1LTNp9ihpvPjuvwn/xjPZ2P9J/Ey2hGg1Hjg1g6r1RF94KwBE1e
         X83w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id n21si1126279pjq.1.2021.05.10.02.44.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 02:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R211e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UYMytMa_1620639817;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UYMytMa_1620639817)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 10 May 2021 17:43:38 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: tglx@linutronix.de
Cc: mingo@redhat.com,
	bp@alien8.de,
	x86@kernel.org,
	hpa@zytor.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] x86/unwind/orc: Remove redundant initialization of 'mid'
Date: Mon, 10 May 2021 17:43:35 +0800
Message-Id: <1620639815-93579-1-git-send-email-yang.lee@linux.alibaba.com>
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

Pointer mid is being initialized however this value is never
read as mid is assigned an updated value in while statement.
Remove the redundant initialization. At the same time, adjust the
declarations order of variables to keep the "upside-down x-mas tree"
look of them.

Clean up clang warning:

arch/x86/kernel/unwind_orc.c:38:7: warning: Value stored to 'mid' during
its initialization is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 arch/x86/kernel/unwind_orc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/unwind_orc.c b/arch/x86/kernel/unwind_orc.c
index a120253..bb76f4f 100644
--- a/arch/x86/kernel/unwind_orc.c
+++ b/arch/x86/kernel/unwind_orc.c
@@ -33,9 +33,10 @@ static inline unsigned long orc_ip(const int *ip)
 static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
 				    unsigned int num_entries, unsigned long ip)
 {
-	int *first = ip_table;
 	int *last = ip_table + num_entries - 1;
-	int *mid = first, *found = first;
+	int *first = ip_table;
+	int *found = first;
+	int *mid;
 
 	if (!num_entries)
 		return NULL;
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620639815-93579-1-git-send-email-yang.lee%40linux.alibaba.com.
