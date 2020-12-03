Return-Path: <clang-built-linux+bncBAABBXGPUX7AKGQEETNPYQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACF12CE1BA
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:34:05 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id v18sf983455uao.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:34:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607034844; cv=pass;
        d=google.com; s=arc-20160816;
        b=b2+SHfSQe3UvyECjUD1JQ5BPx5Xu+rnENVtFsFnSP4nqnNv365W0gYV2uef1NxrRM6
         lUVi/E+iIVyf13NQyJq6lB/3VTDmQbnTlVHEHgPzbt4v65VcDTTQ+QYb+uplQXf8Hu0b
         0dqx8wcacE/5nlbcGazJ4Ww/basGsxTjL9qn8woKBcdkyrSVPFtn3IX4xbfuQJZitUvN
         mwCwrEaTHOQGFqxuJMvlMoTI3c1804lheaV+XcJel5eg9jjKg5cY9MxBVgYU0VHk5dkK
         7A0GAIedHJhJ7cKsncKQDbFSYSCvkXKd2N69JT50VK5X6zGmm6Cai6IZLgvjMp5SkyBG
         26rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=r/d1/S7bChK2bdOA15ZSbgBiVjCzn6KBW88QjDcGoSs=;
        b=Jk6jXsa0OVL3AthY4ZFUDq/5CEqhy5f8h0DZFANHmiioy9+v4VMmu8Af/PHPrVte9L
         4mcIqVIhnDgf2jU+TZbu/Q4C2YodMdCjJT9LcU8jA1gt9fuXxCPWuqVNbERpXxjtHtdo
         DqU+wkkjc15IehPcgDuMxn5U52ncD4v8dZdMl8/UbtyERYVvU6zhEJZsWFuAKE7z0WOF
         SSsNDz3dVDIUbW+uG0CLCUxCgeXUSBwhHKVQdxVn2TBYKFoNfqq+afWwbjy50hrQz0aJ
         QkEq9PUwHTOOMzPrhGrw0LHjuG+T9+4abU73OdNZbOPN9vedcVyejXxBiSfeaJZHMVWf
         XNDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r/d1/S7bChK2bdOA15ZSbgBiVjCzn6KBW88QjDcGoSs=;
        b=kWj2dz1o8GH8vBVQr+YxJ7/4g1rCPDvVHdigfwnPLnJiR9+pI1QtuymCC1CiWnnCgR
         r9/YGWSB85Rq+AV6FKLv3V3EEFbNqC8FheD5czquw6JPNVFjEPRfDxP6ay9bYLzWnpFZ
         sM2kv8M15sLQ7H59DSvB8BhC+Z+0KCX4VD7qvmBrkmCX0XA7CQgIaWshitKs140QQSU0
         DUZZsctZ4EK1mYPSwiwbJ6CTydaF/AksM8VTXN8Mg3PCjMDJL3MULYHlwGruPPL+oBw+
         0vXpdVxMH91TroAWZtmKSLNz1LKJ/cS/fOsfYF9NfTdbqKc4w7yvTQybpBfVcZKZHfMS
         /UIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r/d1/S7bChK2bdOA15ZSbgBiVjCzn6KBW88QjDcGoSs=;
        b=lHVXWa/0069/fKS4ZMJX7HAruWBsVFbdQecGoZQbpbA9IkFPlnSqBSBpGu7K1i10SB
         4rsx+34tvFNDnT8edFlw204Tdq3ESQqA7Kd+sObMr72CwoflHy+PRVRdnj8UpU+KzMqf
         eZd/JGx/375yT2V/9l+ZEWkUWh4Pm/scjMhOZfJ2v+8a9mSBeT+9uslqmkTCCgG97jHP
         JsuSV4ugnaM5MRKM7D9Xpq7gWvbMUkNULQF23RJKQeZDjeiWXvi6a5wEj5GSIb0bvVDV
         b/JST/oAjlPUl1foCEzYBe/jTtX3V0JtcdPBbLwvYH6jLdnWQq1GcWedHX1quhQK1NP5
         0DXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vuff5PWONpdux7+b4qSB9f4PThqj1/8SiNC20IGBehPLrFUVd
	4DvkRtt92oAmdyNEaeGYfHI=
X-Google-Smtp-Source: ABdhPJwuWre63QLXDjF2R9ZRR9cydHlM22NT84/sWFCd8oLWcDHEOBuVh+TmXM8FCnSPE5FiK01WdQ==
X-Received: by 2002:a67:b647:: with SMTP id e7mr1096787vsm.4.1607034844329;
        Thu, 03 Dec 2020 14:34:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ef8c:: with SMTP id r12ls1025338vsp.7.gmail; Thu, 03 Dec
 2020 14:34:04 -0800 (PST)
X-Received: by 2002:a67:b905:: with SMTP id q5mr1601563vsn.16.1607034843988;
        Thu, 03 Dec 2020 14:34:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607034843; cv=none;
        d=google.com; s=arc-20160816;
        b=jF+vhfCDIP64/dZZ7OV0LVb2y2t+O+zFPZsJKkuZWiKCDg6fxl6osuN/fz2Qx4UUqk
         TKjgCUEA3j7l1yG0eadj1wyQaLJ/zZQZKlu5u+B59tahCITijMm0c+GBCGNZWeRDhH9w
         fQBOzwO4A1NUTNUNb5445D6cr7KIgu6Q8XYvl+GbJ8BZIYpFf2yLoNJ5ePTfQDViND7a
         LJ1e12vZOjvOpJ58sOZ4w0mjet9I/gAfN+FbVHSdmF6jCbHNWTqG4fwz6gAg9OzlxhEu
         B6AfwRYaL65Z3q+78Rp2lZGodgdiwIS0ERzpe80+/EOGoEgmTZm1BJksjH99GKIlUDiY
         p/1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=vgS5QGifSsfp1J0koapQme0k08NRBHSalGfb+17XE4o=;
        b=PSg0pkx08nnZliLymmfB2fcX/3NXWhVw6iVM7ignzvBEymItNngyJQoGovwT+SrEWd
         No+Em6rHHsmTF8pxG+z1BfSsUhxeJvaDmZ6lAwseD5fclE0c++QwvQSxQSPYvlb7MM8i
         wGvU9YCEvKy5l8HtpOxz4BJWyEENbWaZtfzxljtb874hKwrzcaIHSH2WIH96ClBjFNZ5
         bLbWZYW6gEd1E9pE4R1jlelhP9frQaOSE3DMUxtC1EGdE+zyH2Cb0a6+ehjRDaCIjW41
         dFGDeUetSMI87mENiWpYdn1B+1pQOAbwaZUFq+acr46yBZtB9ScMAqvNoIEnDfeXJLAa
         8wYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y129si45709vkf.3.2020.12.03.14.34.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:34:03 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-watchdog@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] watchdog: coh901327: add COMMON_CLK dependency
Date: Thu,  3 Dec 2020 23:33:42 +0100
Message-Id: <20201203223358.1269372-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang produces a build failure in configurations without COMMON_CLK
when a timeout calculation goes wrong:

arm-linux-gnueabi-ld: drivers/watchdog/coh901327_wdt.o: in function `coh901327_enable':
coh901327_wdt.c:(.text+0x50): undefined reference to `__bad_udelay'

Add a Kconfig dependency to only do build testing when COMMON_CLK
is enabled.

Fixes: da2a68b3eb47 ("watchdog: Enable COMPILE_TEST where possible")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/watchdog/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 8bdbd125821b..32fa6de7b820 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -631,7 +631,7 @@ config SUNXI_WATCHDOG
 
 config COH901327_WATCHDOG
 	bool "ST-Ericsson COH 901 327 watchdog"
-	depends on ARCH_U300 || (ARM && COMPILE_TEST)
+	depends on ARCH_U300 || (ARM && COMMON_CLK && COMPILE_TEST)
 	default y if MACH_U300
 	select WATCHDOG_CORE
 	help
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203223358.1269372-1-arnd%40kernel.org.
