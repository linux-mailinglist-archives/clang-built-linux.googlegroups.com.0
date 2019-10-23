Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWFUX3WQKGQEOK4FWRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C41BE0EEC
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 02:10:02 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id i12sf9521007oto.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 17:10:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571789401; cv=pass;
        d=google.com; s=arc-20160816;
        b=STityk2NqbSRPyxhHhp3DqbLzX1qXK3qda58CgIOgYE1HYnnT1tXr4zvsCMXyIsfX3
         WPGNMZgmpomda5toIouZ1aKaM+5h7qG8JVU7EfBCWWPDp9GcWnGhcIIsQVMd9GHerMMD
         zWSyJplhawfe+O0kBNxNC+KnSEccj7HZDGE6zby5/ugKijV7kwr2u/JeIsMCtpJzKre6
         JQ+qQkubpN2uA3S7yxGFJMJV96dbyiSdLnOme1L5nLlnpg/tAyNF+U40Sgv1/bU387z4
         AQjtF3GZtg/b7xXtQ2p+ja6/uHoOQ6foHcEk0JAsGl0UsQ6Gz4kXhiR1zSXkUzU8Q/6o
         IPWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Sbx0S5mtCiOf13U2WRCjgyhGuZQTQorVy72r56wtu78=;
        b=bsJshtPHSmpvyT5+uxUZKHIZhx5Qv7vkKlkc+b94tGrsem4kUiKywunT2+hkgwreCZ
         /FSIk56SittJS3T3E7ioPXGwZ1nKE2mPi16Khk7/m++eEDVNiLpdmcNuPMmn5RaRhwfp
         tETCeoVizUmXm64RkkZz+umqbROTpAMRqkGb3xzPLJfGhpQi+ELgv5TJ+5Of6y06GWdE
         ikON0sHlTDhcUqFsjFw+rmOykWZgOIGRvPqhHewPE2X3DatoLnIZoZ/U3Qs8yhwiw8HI
         wtjAhbUgbM3JcfqHN/s9ecqyg0MiuJF5zL7a+rTRWdMGbCxXj5/AjjX2QaHqHz+lrfUZ
         NZZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3tUit6h;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sbx0S5mtCiOf13U2WRCjgyhGuZQTQorVy72r56wtu78=;
        b=aS6f52u8Fz7hGSvEVFl4c+/oZNKSBrYRAdASQImh0FE1QfuLXED/poqyAdYkArbyvi
         ypGZdSoI8ZEaw0DI2KODTCvicnm41SLF4D1EGKWA6qENgwKc0JinYee+5X+J2vzG4vXu
         kjnD+vM0Gtvv/GvbDPKtxzPtJPZB6rGl87pC9WgS33zVWBw9X8Nc/uTh64IHAlVJDrGv
         AZzAXmasBbHpZWZOOErvtxYwQjipz28mk9vDyYC9kISKSPv+x7X14zfsK+PMImNkD13i
         l7Cf8uVe/+gndCYRgWFRS2OZX8YhXG7e4iv8yiSq2q012tDlY9gRHrrlrfD5N6MzKGS5
         VKiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sbx0S5mtCiOf13U2WRCjgyhGuZQTQorVy72r56wtu78=;
        b=pOUMZjzm/sMMeIdN7mH/zbtLgdneAoj7QQF7bmlgvw2ImDRvbmxQuu14heDTHxvR4q
         GylzIanCc5HaWqXZ6Kb4hkccJULbHS9GDgmg42m1Hrrcb7XCF9nSwzfa1dVWokYWzwbj
         X0FnZNXWe7+lFTh+F6mHS4qruLUXWC9tP1TECxI8XRx8aLpmFB0CKE0Ld5A5pCkxWIJS
         pZM57nhjJtSv9jLGp6H/qAXI0sKOTaIQ022OeSg2n1RKTqWNCGtpi0tX8RvjHy7b9erb
         niztKjKQvqd4APSN60aJFsoJOtYVLby7MgXPPybjqgdNemXWXoYIfc0ZTi6PFH/yD7lG
         Qjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sbx0S5mtCiOf13U2WRCjgyhGuZQTQorVy72r56wtu78=;
        b=TvIALJViutf/r8Z8OOd3/S11nRlZPpguw8fZELtriIrnahXpzxKDNleDznwi2nzkIs
         TV7N7t2rEdSS9HhHl82coIDtyzDBHFSM5JnAybWTr5Th+r667hXxw6HwYnUe/upp0Afs
         1nTkCoTDlMKJv6l9Ge5Mm+xUwdmrsPGHf9cJuK6ZFdyJZDZiJgFZPhbS1uEZ8l9idmpN
         2SKAYqHR1Jf0migZ+e8INC2IFUI3na8NufDKoVIA0pNZ4aMncFaoTVSZzFpqTerU69M4
         065DV//cQgZbJHxApbkDMYcWc4fKSLqTOnHRKA8ISeqhLcOnsOdZfnKStTtbggqvr58k
         mxzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgflnulCP9Fkcc3VCn4uyYGmw1Tk9ZbiRa3e6GUuOqq/QKufiO
	KaxXH6pq0JjLLSZgIpelHmA=
X-Google-Smtp-Source: APXvYqxej2E0Tw3iPpm2dwG/ffCSnHKHmR3VQ9WEAVX14loqJGf77Mu1CPN4hrWcZlOKLtY8rVP/6w==
X-Received: by 2002:aca:2313:: with SMTP id e19mr5348408oie.139.1571789400846;
        Tue, 22 Oct 2019 17:10:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8d7:: with SMTP id 81ls100858otf.12.gmail; Tue, 22 Oct
 2019 17:10:00 -0700 (PDT)
X-Received: by 2002:a9d:4d89:: with SMTP id u9mr2024723otk.94.1571789400522;
        Tue, 22 Oct 2019 17:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571789400; cv=none;
        d=google.com; s=arc-20160816;
        b=L4Pb3qlysZIKboBsXAAOCVtP3po3SdBKzISSM46htohVJD1iZLZKiABmXYFcBWfMRK
         beaaH0p9+o6F9KOKo4YeH+aUUheCGM6qTy2vH7frYaR77pJgpqyupvrGW3p2tvkmdBdx
         9yAi/1wtqaLSGN6y0oPgDhMPwWChKb6/2GYpbjdB0GMh2ucD32cv07rJO5TWZifIEnLi
         c75bZsnNjudNbz/5KTtYPqupQ/MhAnQyQ19YfQGmAZojTew2eNCz3Zizvzz+a6JcrPfU
         oZn9LtloNqMj8gBcDUu13xX7qnKERUsYgYBIO7GstyaZmzwKhi8Bp6vOR1C/Ih2dxjsX
         h8tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=a9ez2CAEDRsC1P3a7h5jUoJezRgAM3yxFgvxTfyLf90=;
        b=imkdRqmrdKQPbXN6m7LaaIfs7S6ZGtpUX7IUlS30VxQudrAu75m504cJyJPOIutg9t
         WPe8w3iWXvKADKUfK7IhrhBtLjnm0Y22lhuuF/QNHNjCcZCLRqfDdI6F9Etl6ZCJQz0y
         p4Ew3ON2Q3YGW5pf9ymhE2TDhOTPmMovbBqRzRp3O8SHdDrbeyF9upImliGD9y7ey3ok
         m0dg4x7+APFxuAEIgq9Lbb5Y0elmIbsr8QKBrpmLshCvMuEFIj48UFOR19/2vy1mlrr2
         DzF5pLiWjQ4hlT6e9IyCWFH0dOmPSRsg6EDXB34dKNvGPZjdwyDTszekYS+yriZtyv/7
         Dv7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3tUit6h;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id i19si1123634otk.0.2019.10.22.17.10.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 17:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id a15so15849203oic.0
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 17:10:00 -0700 (PDT)
X-Received: by 2002:aca:180e:: with SMTP id h14mr5339099oih.142.1571789399995;
        Tue, 22 Oct 2019 17:09:59 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t18sm5637527otd.60.2019.10.22.17.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 17:09:59 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in s3c64xx_cpufreq_driver_init
Date: Tue, 22 Oct 2019 17:09:06 -0700
Message-Id: <20191023000906.14374-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T3tUit6h;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with Clang + -Wtautological-pointer-compare:

drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
's3c64xx_freq_table' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (s3c64xx_freq_table == NULL) {
            ^~~~~~~~~~~~~~~~~~    ~~~~
1 warning generated.

The definition of s3c64xx_freq_table is surrounded by an ifdef
directive for CONFIG_CPU_S3C6410, which is always true for this driver
because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
weren't, there would be a build error because s3c64xx_freq_table would
not be a defined symbol).

Resolve this warning by removing the unnecessary NULL check because it
is always false as Clang notes. While we are at it, remove the
unnecessary ifdef conditional because it is always true.

Fixes: b3748ddd8056 ("[ARM] S3C64XX: Initial support for DVFS")
Link: https://github.com/ClangBuiltLinux/linux/issues/748
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/cpufreq/s3c64xx-cpufreq.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/cpufreq/s3c64xx-cpufreq.c b/drivers/cpufreq/s3c64xx-cpufreq.c
index af0c00dabb22..c6bdfc308e99 100644
--- a/drivers/cpufreq/s3c64xx-cpufreq.c
+++ b/drivers/cpufreq/s3c64xx-cpufreq.c
@@ -19,7 +19,6 @@
 static struct regulator *vddarm;
 static unsigned long regulator_latency;
 
-#ifdef CONFIG_CPU_S3C6410
 struct s3c64xx_dvfs {
 	unsigned int vddarm_min;
 	unsigned int vddarm_max;
@@ -48,7 +47,6 @@ static struct cpufreq_frequency_table s3c64xx_freq_table[] = {
 	{ 0, 4, 800000 },
 	{ 0, 0, CPUFREQ_TABLE_END },
 };
-#endif
 
 static int s3c64xx_cpufreq_set_target(struct cpufreq_policy *policy,
 				      unsigned int index)
@@ -149,11 +147,6 @@ static int s3c64xx_cpufreq_driver_init(struct cpufreq_policy *policy)
 	if (policy->cpu != 0)
 		return -EINVAL;
 
-	if (s3c64xx_freq_table == NULL) {
-		pr_err("No frequency information for this CPU\n");
-		return -ENODEV;
-	}
-
 	policy->clk = clk_get(NULL, "armclk");
 	if (IS_ERR(policy->clk)) {
 		pr_err("Unable to obtain ARMCLK: %ld\n",
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023000906.14374-1-natechancellor%40gmail.com.
