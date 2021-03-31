Return-Path: <clang-built-linux+bncBAABBK6YSCBQMGQELLCPWFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EB134FAFF
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 10:00:45 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id w11sf728060plg.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 01:00:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617177644; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/26tXu2EBu390R/TjwQCyJDuAJa//fr3/9LMjM0DV/7y5rtMVxm7+0r54toqP68Bt
         ERUTIKRWr7EjauMf9VSoXl1FTRrrLwiKTOiiLlmFilsJGRkrY8ADw4YGhYD6ck3MX6ro
         xKl1dFIrvYdtWevcA9dt+wQlqIg6ktB8O2AniH8x3NKe2aJMuGwONyw5njVSzMzSZYor
         7kTb45/mZor6wHHMgilV7btYmnVqLv/QUuzAHlcDxWPHfBWL9rT/qgBx6RK7+yHaIN9C
         W7IjCZCBdmuTywBQnc0HTK/sXsDMAWxS5U4YGmDFQhttnzjbrO06/2dCouets16xW3cO
         cASQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=ASi3BO0FPkxEpBqiIOLeJNOglfJSaB1Mg2IvtCcKDSM=;
        b=Vw8IB8RbG4IfrVoxtixZEPVa/CtWaasi9Ep2CiPPmmQoMwL4a4VqaBPRxNE86VmNqi
         n9Uds56swi+hsudT1YoC/rfd/ycH8nmc53dDPWeq9zCChNa6yV1UQtKS/l4QJ4Nj8i9H
         9ylrxABh3YUZpvt+O6WXo7rEqtFcnypVZj9TM2yRcgtAcqTr2qc1xMnZkuUxnIZhxHGs
         VqwjyIhrWUl2jvPQge5HbV6s8HXyFsjnEaVpkE+ZHkZJ7omCXGSr4lUwE8tZXFC5F3WD
         HX0F5oIHtpUstvanhdtHloN5sB0yAplKRCj+PyzVmNkqCv9GmWBu8Uq8BUdCIp1CWPAu
         rlOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ASi3BO0FPkxEpBqiIOLeJNOglfJSaB1Mg2IvtCcKDSM=;
        b=hbUbBAARqY7uuksZuTLqdX1sPUas3YUGhMrQ7Cz3cVSXQzBzwclb9v+F0LAcUxzIAh
         3kOZ2dpMUOJlad8yM5MjbXvLLVvbgIPv8H6NPCFBOBwGfvbMcGXGTg2++UTUTPJNIoUW
         LQYOacdwwtmFt9KTGxBE+TtrW9a9vbtEcHf2falJrWJ/5wNgVP6Ee3BMp4VjZnjj1fJk
         bkXKNtfijorV7jUqtQXwBdd72o4lQiK4HglvwHYD2B91wmh7OJEmEKmAVZ6Rbtf9KjnP
         8vCE9SbMMsj7Po5lxah7L/Y5c7LTXDL7PJ2LuXSJjYPjrh5GOGrNVXMtGUauvHuGWzOS
         tw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ASi3BO0FPkxEpBqiIOLeJNOglfJSaB1Mg2IvtCcKDSM=;
        b=ikCUMKzCLBBJDOw4qBHPAYrfMkgVEUUzqDHjnfkYx5rHl/6KE9pOqza5BIruSqQ0ox
         eA8guSjaRHyxV8rgc8PDU5IHQu70U8l3dn0bDJJRp+im2rH6NdYA+vIXM3RPJEol2oAY
         XWny9iD4h59oKJ8ddVqDYHaKAp84V/A6KPmT8H2JN34UAKF4+zZODuZLiP1oAqFamq2B
         OVKrg2aDQa3STcUn0L1CMAU4DjnfkBktPgs1diW5voVWGZeIe+yQgN9V9US/OQzY5aya
         h2D65+XwxVelt4IpmxpYJYCqq+NqYtbxfjCCvWqmQQsk1nXpxuv1eLwhYa8Q8FiAcy1e
         oiJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w03O3kD59zbuWl2LuSFJ8mEBS5JtzwCefsDZ+4O3viNM/mK/x
	pT2yOSqW7lVbXqzxi9ltFSk=
X-Google-Smtp-Source: ABdhPJy2+lPagaVAjYQY/n+SAOLSKDdnHQI5yCVinWHpGa+SUwJ+oG7XTb+ZgpIfnNu2tr0uzBSiuQ==
X-Received: by 2002:a17:90a:6282:: with SMTP id d2mr2220776pjj.168.1617177644071;
        Wed, 31 Mar 2021 01:00:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bd8b:: with SMTP id z11ls968836pjr.1.gmail; Wed, 31
 Mar 2021 01:00:43 -0700 (PDT)
X-Received: by 2002:a17:90a:e647:: with SMTP id ep7mr2429080pjb.122.1617177643615;
        Wed, 31 Mar 2021 01:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617177643; cv=none;
        d=google.com; s=arc-20160816;
        b=m97/RNjPcauXutqaoQZ+1LUx+emNLiBuvMR6Md9hGM8EoVs0Ly4pJhbfKxBEa/oA7h
         hRPW/Omz+HJeG2YJEPMzJXVcZu+3Etg+3dGRFgaGKmzCXquee4d4YNrnAv5ozQlQRAPs
         vMP62ZLjmBsD+dVSXEveWIb9pphEHgMHgfTCFvwhXUM0DC/N+bssmRRbrlzuw15Qil7E
         Sk4htCgdQNmyrQkHa1AXvzitPbjcH/khtnYQnF/LDzruAwzOuWb+aEM/su67Nj1uCRg+
         3f60VgVZUoa4XrXmKfapxWSbw/l0za+/l79oBC0HD3GpamqSJdSW1uq30zPQwafxDsuL
         9MVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=lB3hXPcX9QfQq7ttkO9W/Vv0VRUqFArRmX7rLZ0S4F0=;
        b=OMwx6Enns1Ma5FIJwrLOgv1KAMPcIO9A3B2mc386pWXvToa8E3Lvb2jKLVlX8IF33C
         6wsUTE9svCjWBy1UYWDV5z7+zTEgtNxM91M5jNgca5OLs7VRHwT6Q70Zb7qw39mrXj46
         IO+KJFfRwgTRhsvjH/ip6yXxVczKrlF1rRKp7BawAxBJZahXnyjZtDzIn9xsq90bRifI
         ym3hxi93ztIxi2q/bC5KC+MkNr0KJy/AZG+ucUNX16mnr9RcRQ8HjplyB8vKT8N46TJl
         Ugjwoxss01gXwrlCnm76bTG49MvoO5d7J5MjDQvrw7i5kyUJFRxGBANtAgrt3VKtrQuy
         QDaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id t5si132060pgv.4.2021.03.31.01.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 01:00:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R111e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UTwL9zf_1617177629;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UTwL9zf_1617177629)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 31 Mar 2021 16:00:29 +0800
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
Subject: [PATCH] x86/kernel: remove unneeded dead-store initialization
Date: Wed, 31 Mar 2021 16:00:24 +0800
Message-Id: <1617177624-24670-1-git-send-email-yang.lee@linux.alibaba.com>
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

make clang-analyzer on x86_64 defconfig caught my attention with:

arch/x86/kernel/cpu/cacheinfo.c:880:24: warning: Value stored to
'this_cpu_ci' during its initialization is never read
[clang-analyzer-deadcode.DeadStores]
struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
^

So, simply remove this unneeded dead-store initialization to make
clang-analyzer happy.

As compilers will detect this unneeded assignment and optimize this anyway,
the resulting object code is identical before and after this change.

No functional change. No change to object code.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 arch/x86/kernel/cpu/cacheinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/cpu/cacheinfo.c b/arch/x86/kernel/cpu/cacheinfo.c
index 3ca9be4..d66af29 100644
--- a/arch/x86/kernel/cpu/cacheinfo.c
+++ b/arch/x86/kernel/cpu/cacheinfo.c
@@ -877,7 +877,7 @@ void init_intel_cacheinfo(struct cpuinfo_x86 *c)
 static int __cache_amd_cpumap_setup(unsigned int cpu, int index,
 				    struct _cpuid4_info_regs *base)
 {
-	struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
+	struct cpu_cacheinfo *this_cpu_ci;
 	struct cacheinfo *this_leaf;
 	int i, sibling;
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1617177624-24670-1-git-send-email-yang.lee%40linux.alibaba.com.
