Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG4T2P7QKGQEPRYQL6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB3B2EB40B
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 21:18:36 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id c69sf445932vke.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 12:18:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609877916; cv=pass;
        d=google.com; s=arc-20160816;
        b=iwOZWVGmH0yfmYq9WkI9kMKabmNZe2wjxp2cjaQzKnSYKT4Ud0OA4+MJLkbLMGkZsr
         8nGj1GdAt+6vLaVdOxzy7hXQiuEm+0bQWBgmac3P22W484dfSGHMTg67PhQnyXZuT6Ad
         2eBTGON9oHaLzyf50/QDT8upnm8f4HoMNKU1HMBthzc8p0V+IJ7dNC6QlcW+JDnjq5tV
         ZgdpcIa5nuBOQR09RurRwdfIrdESthf/8OOhJpJWO0KfT9r/wDVDwq+5GqDQmy//McZ3
         roHChzdUSUL7NLC/Lp/SGJDO2RPerpgthphzVV6m+tKXB8ETGqD2LPMY6AuP7Dt+0L2S
         0kQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=FNylYyx1vDH7Mt6Vd9wiWQyeoFcyM3/rRPcLIZAhQ3M=;
        b=w14CTVIe49uyBMnefiwdcwMol1nKJR1hfXJMtpTnZhVdk81oZCBxXqhWq/1wIRSAWt
         KN0sm3kraTpsJU4+DK/BvyP+WvNsO8l8aBLmDUDWe9bsVtkAd+BjTVlEQJX2fDGivFjD
         dWe6FGmDfISmC9qUbuOB+CLSAYGCw6N7v9bwjWGrCaS0rJ5/jzdARnltUQZJYsVRhaTM
         yF4Z8wuWuS1nQythjfdFbMS9ZpgrXtqMVe+oCu4lkh7h96GE6K59/8EVrMM7c0R7yvve
         NOhP4wh4w5YCBwAdCRxvz7zgzwQTyhwbe3g3bddsvlVkTOzsPY6SDwqIqar28dhCpcEY
         Lrkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjKr0rNP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FNylYyx1vDH7Mt6Vd9wiWQyeoFcyM3/rRPcLIZAhQ3M=;
        b=dgS8k02DTczWsctWZIFhsIK99H6Vp3Px9exVfohdNFajr9OGxAmxuHM1ng3tzha+bo
         BH8+kAsCwzXr7fkVc+M+g12mmXR3/fqlyELtqVOYFZDfuFBp+uhMJDz/RxRmwhNE3+fX
         PD2v8uee2SFZx8a7XvRrrWKOo1UMyIZihSUPXp6Q5SR9dYEuQeoxzToYWmaRj11OeNQh
         nmulBYKnHASrJ7RqqKIFbX89aEipZndZE2zJn/0fvwjJvLLuH0hbg+N/J5MMdNuxqA1T
         E+a/BrPbV6lc94S41sk2OUvp/bUqAO4I16g3VBrQkB3iCncB8Nue21k3vIwxXGRd4NQb
         KxaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FNylYyx1vDH7Mt6Vd9wiWQyeoFcyM3/rRPcLIZAhQ3M=;
        b=emZTdpnBYyQOABLxrAMagM/XpxNJp08Kf3qYixdQ5haTFP+kikEs2IkEDLGbzYx2AM
         +ri85St8MlpqpOo9LOXdOEUKexOhYeZolyzzC8150h3pqq3m8Qn1jmGdKkj9jpFyd44V
         2WCODVztVlUD8x1xHd4Xph0vm6J+tq6dgBUDUIRo3gmekVD2jE9cZXWMjpAAjpuPsKgJ
         VPZTvWHg/Tn4RJWmjY0YOj4RkECJNUeqUBeOuIgQFg310eoOp08KkEjRJOmQQNM1FYMS
         /EzI7VMj9MXclUd0JQHzi9VYQdRZSgIFyZgBB2okM7K00walwrYWR8qGJFATqmHn10hJ
         TKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FNylYyx1vDH7Mt6Vd9wiWQyeoFcyM3/rRPcLIZAhQ3M=;
        b=C+pkbeySviDQE5EWdT/06vE0LX5Xr7ChLL9tNy2aRm/7VdbiD4Vsco7MUNAY8BNiKT
         jwizTLJnI/0/qnWjWuBLa3K9UlDK/wL/KOJ4Ie2j8+cPIHaupejN3yq6lNhtRu6q/8dp
         vOJzQtJwdAUqlskM5k++sUBDv+nsChVq5DRjRo+crXM0zAHMX6Jdq2ttB9pOacfDJyVh
         bKYUo0ZRpcyWwSks4l4Mt/fGZlNzEmjBFkIJJ9RQktdr4HKyQ0LOuTXKfBWhPibh4Hre
         tz+drJuwcyBgOdmVP+2yR78xPeAXyq8UJwguru8JEEzUhUcNSlD6ToMZcWxq8H7800lb
         S0Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aHch0e2wNl+mICp9xc7JDHL0QoPTT7k3s/TDLs87poJ+o7AnR
	crSNr5VVSX/fuZRs4X/ijb4=
X-Google-Smtp-Source: ABdhPJxtDjuhGMJlWMQGp36I32APqko4mP6pPDujwRP8L8sAEj5YW2EauSWl8SeM+2ZVChMUxA4eig==
X-Received: by 2002:a67:c89e:: with SMTP id v30mr851372vsk.54.1609877916003;
        Tue, 05 Jan 2021 12:18:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4c41:: with SMTP id z62ls40528vka.2.gmail; Tue, 05 Jan
 2021 12:18:35 -0800 (PST)
X-Received: by 2002:a1f:4595:: with SMTP id s143mr1270300vka.6.1609877915398;
        Tue, 05 Jan 2021 12:18:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609877915; cv=none;
        d=google.com; s=arc-20160816;
        b=V2pb/Gy/tnDZYS6SOU066Pt7DNIjtHdlE08fUoYm1Vvd0Wjo6gMCEOPLepaKVBHYdw
         ishtG60C09Kh9lc+8l71FQDtglo0jofb4MLu5pSDanugn2/r7/osObPfFRUiN1nCxrWn
         eD4sSA6LOnulYybP62vmW7kYzmkTJuGhwgoQWPoKrrFDusYEOMHb41YiM1uykj5LE7pz
         IbeY9ZhkiwvU4GJ/H0jb2Law1J22FDB87zU+sqaSoW1x4+q1vdUELbxaFoUPok04WWhl
         Jz0gkvniZ3FKJ/xJjO0LM1tDau/wS+PCL+DCz7ENeHeTNdDkCz9GJo/p2AoaWeiyOADy
         EIsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6NEnic80tcUo3+yVoxdPk0SMP2vGpWUPUrthjFQDkyc=;
        b=rH4FYaZ+MWYr1h127YXuhFuHnxEViET8W3YUIAJP0zuXvzVfdzs5+kXuBoblSAee6C
         TVWGsudvYaPpTO0hGF19zyutt1wlVXqPfKaC9r/NYRnwC+RX283mtGTNoqZHIF4M9Ubs
         TUhRFi3+ba1DAA1g7hGRmBW9i5EtD3trnfH7xinehdBetf3j07MatLf53WyJkL6RWp8F
         X6GfGzvvLQTngGEkkdaZ7DbyyJMzddcFFxQPtdMZ5fZXKl/lacCKj334Hd2c4hWnPkj0
         eQ7TQW2vIlLRz37hJr4oD9dg5jDp2mOa11ryra7lhqcSy8/t+QAE16WTxUqiy2MYJ3gD
         zmgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bjKr0rNP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id h123si37187vkg.0.2021.01.05.12.18.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 12:18:35 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) client-ip=2607:f8b0:4864:20::72d;
Received: by mail-qk1-x72d.google.com with SMTP id f26so628909qka.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 12:18:35 -0800 (PST)
X-Received: by 2002:a37:a40d:: with SMTP id n13mr1238262qke.47.1609877915054;
        Tue, 05 Jan 2021 12:18:35 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id d84sm235057qke.47.2021.01.05.12.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 12:18:34 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	John Crispin <john@phrozen.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] MIPS: Use address-of operator on section symbols
Date: Tue,  5 Jan 2021 13:18:27 -0700
Message-Id: <20210105201827.51766-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bjKr0rNP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building xway_defconfig with clang:

arch/mips/lantiq/prom.c:82:23: error: array comparison always evaluates
to true [-Werror,-Wtautological-compare]
        else if (__dtb_start != __dtb_end)
                             ^
1 error generated.

These are not true arrays, they are linker defined symbols, which are
just addresses. Using the address of operator silences the warning
and does not change the resulting assembly with either clang/ld.lld
or gcc/ld (tested with diff + objdump -Dr). Do the same thing across
the entire MIPS subsystem to ensure there are no more warnings around
this type of comparison.

Link: https://github.com/ClangBuiltLinux/linux/issues/1232
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/bmips/setup.c          | 2 +-
 arch/mips/lantiq/prom.c          | 2 +-
 arch/mips/pic32/pic32mzda/init.c | 2 +-
 arch/mips/ralink/of.c            | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/bmips/setup.c b/arch/mips/bmips/setup.c
index 19308df5f577..1b06b25aea87 100644
--- a/arch/mips/bmips/setup.c
+++ b/arch/mips/bmips/setup.c
@@ -167,7 +167,7 @@ void __init plat_mem_setup(void)
 		dtb = phys_to_virt(fw_arg2);
 	else if (fw_passed_dtb) /* UHI interface or appended dtb */
 		dtb = (void *)fw_passed_dtb;
-	else if (__dtb_start != __dtb_end)
+	else if (&__dtb_start != &__dtb_end)
 		dtb = (void *)__dtb_start;
 	else
 		panic("no dtb found");
diff --git a/arch/mips/lantiq/prom.c b/arch/mips/lantiq/prom.c
index 51a218f04fe0..3f568f5aae2d 100644
--- a/arch/mips/lantiq/prom.c
+++ b/arch/mips/lantiq/prom.c
@@ -79,7 +79,7 @@ void __init plat_mem_setup(void)
 
 	if (fw_passed_dtb) /* UHI interface */
 		dtb = (void *)fw_passed_dtb;
-	else if (__dtb_start != __dtb_end)
+	else if (&__dtb_start != &__dtb_end)
 		dtb = (void *)__dtb_start;
 	else
 		panic("no dtb found");
diff --git a/arch/mips/pic32/pic32mzda/init.c b/arch/mips/pic32/pic32mzda/init.c
index 50f376f058f4..f232c77ff526 100644
--- a/arch/mips/pic32/pic32mzda/init.c
+++ b/arch/mips/pic32/pic32mzda/init.c
@@ -28,7 +28,7 @@ static ulong get_fdtaddr(void)
 	if (fw_passed_dtb && !fw_arg2 && !fw_arg3)
 		return (ulong)fw_passed_dtb;
 
-	if (__dtb_start < __dtb_end)
+	if (&__dtb_start < &__dtb_end)
 		ftaddr = (ulong)__dtb_start;
 
 	return ftaddr;
diff --git a/arch/mips/ralink/of.c b/arch/mips/ralink/of.c
index cbae9d23ab7f..2c9af61efc20 100644
--- a/arch/mips/ralink/of.c
+++ b/arch/mips/ralink/of.c
@@ -75,7 +75,7 @@ void __init plat_mem_setup(void)
 	 */
 	if (fw_passed_dtb)
 		dtb = (void *)fw_passed_dtb;
-	else if (__dtb_start != __dtb_end)
+	else if (&__dtb_start != &__dtb_end)
 		dtb = (void *)__dtb_start;
 
 	__dt_setup_arch(dtb);

base-commit: 36bbbd0e234d817938bdc52121a0f5473b3e58f5
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105201827.51766-1-natechancellor%40gmail.com.
