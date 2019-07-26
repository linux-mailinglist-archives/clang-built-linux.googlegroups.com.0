Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGMH5TUQKGQERR7WEYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD4A7684F
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:43:55 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id 5sf45220115qki.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:43:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148634; cv=pass;
        d=google.com; s=arc-20160816;
        b=GclfvBZbm/7TdugO/Q0d6jeO8QSoUW/pfyxuYm8HYN/mNkbOp7puq0nq+pKgJxwLjA
         KF8JHTwaSRGuspmzq0TcisT3rzyard2LyAFKaeDT9SeJLrPY8QssjsQgS+uKgPjFlSP4
         kdFlD+uvyUsb9umq2HX4y5STxXcirOgE2CzHojepufCrcvcYkggGOKgtlZfpeBNO8M4o
         IMFuzsg6VLkfk5BXEYZ8fUZYtQU/mC/C8i4ql+tbopDvrODdeI0nMCTgl3NnWuRe8q4H
         sbEGLJzCiIicQfHMi3dgNnxaHnqpYYVurOQclEDwLpAneD/UQs0Hr1af2PboWVyz1OrE
         rKvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5t5pA38QgOlfUjImK9HQAxF0j0+49EhOLtkBb78YU3Y=;
        b=zaa+T5OYi69pKniDZry8l73DQ5zfYARYbO5FgkyHCTQR1folOIdD16grJRWYkZ6tqE
         SxVUKD3BsQjUiUhVsbmf/rYn0u8gspYtQStTgiuugpJsgvLcnehtW+EdWeLIr9SyHp0E
         PS/SReoRmdRkeH4oTyBbTuM0tdLC1fOz50XrTB64bLcJ3kk6nWFpW3xZkIQU4iUXjjyU
         1pO0v2az8YMdncm6aQxpIPuRz9O+042chYjuErAL8APjbfVDHE3nSM97YfONmsO3jIiN
         S5ZViAW31brYpLJmgJHsMSlah5crqCo1FT30gyKH/5Py81Wq3HpcbhIxx9f8Z86Dp90r
         RwAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YOmDqrtj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5t5pA38QgOlfUjImK9HQAxF0j0+49EhOLtkBb78YU3Y=;
        b=c2N8foG+mAa/QG7A3oKALzPzrG5FdZbME1p7So+M2ynLAAbcWXsO9IHhZHUb+5bkjW
         id4RgqAkvWVQZ0u10eYnHvsf8o3DpAPeWCZuwXx5SAnTu8e9TKMH2FYtoOmdpU6PsetR
         5iTnR26aVGlQbre+Zp0xc2Qn0p7JZJUuRuakUTCdphifk7MBZzyBACJ3xyMdS0bA0iJq
         B58LdGwPpDoxyIosZyV8TESiX6kmnL0M5FkK4dZus1yqcLEsYB1cuUcM/9ZR5CZm2iEH
         V+y/CGqChP1f9/I5RFMS9lhJQOV7C6vbuxI+5SveVGYLK71QC0NoXVFt+L55AceE9h/Q
         yzfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5t5pA38QgOlfUjImK9HQAxF0j0+49EhOLtkBb78YU3Y=;
        b=qNqhfCDLHyBxjcnFI2o+KAtKgPUmC46OJEj+bsqbAQEzqGfg+Z9O3M3dQyjmAjS2Oj
         GONLii74U7Q8RAuBqnl6dQwh0b7s9alGSK1zgFld/SC80LI/xHW2HhPbrrfeTjKknz18
         gDaKWLNSi5ay2r9Ocx4mpx1quVQup5Loxqj/4yEgMQkz3Fu7fc1CoJz9ydJea6SZw61s
         BuVgwUyqEQcbxVaPwg+SBN5jAyeXywDhpHnb6AHdBaHyj7AJzr1LJYbBZzczMhDg8OP9
         Z+kH6P+O6DQGpHGMHsWzHFTUmokVqYF8z2gcEwRC0Q3vX0jlaDI4wjoSJWL8osste0TM
         0NLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXmI2GmZ54xDgLtoeuFLYZyxYUNjhdrhQhc/6LlFourvp1od1HF
	czqiIsHQ+UOdr31h9OQXNSw=
X-Google-Smtp-Source: APXvYqyjzTwBxrvUyJtWSf8PWZo0Z0vEq0jXGPV63Dmvh0jepKFTAEqdlwdepM4oFZxmMvliN2t2SQ==
X-Received: by 2002:ac8:25ac:: with SMTP id e41mr67166905qte.101.1564148633999;
        Fri, 26 Jul 2019 06:43:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls1371130qki.1.gmail; Fri,
 26 Jul 2019 06:43:53 -0700 (PDT)
X-Received: by 2002:a37:6146:: with SMTP id v67mr46805834qkb.493.1564148633804;
        Fri, 26 Jul 2019 06:43:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148633; cv=none;
        d=google.com; s=arc-20160816;
        b=JHYw+vdn3BuO0b15bX3fNjDohlzG0b+g17E49eIpn1QBKQ3frf5vW1eaNjhM7dpN1f
         Rsv+2/jAaJiv9hFBL5R6giH8qXqv/KsVdb+R11nBUDkz/FLF9EtG09HsXWbNRORypDSn
         AVEFfTw/G9ZkAjasxjxaICUvU9kb4qtK/JjTK6XhFPwxkS+35DxKNP6WEBvDxB7EApVp
         dJ5ErHbCo/OFQurA05j6EiEr9TUycBDSEQ5eyZWHm9A6+4naXm9KxHQCnk+enIcQ5yVt
         DcSdZ1rxLTTbHL//r38sqRrPecuhcIyjoP9fIBNg1sl4f67lFL1W8NmLIeWHzqhCh32B
         6xmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PBkHSXazkDxZ1OUpHhqs/52Ojm7eD4qGIfmVJCw4asY=;
        b=snotvfNoDPsiQtTJ1qyDXyDEnb0IQEY+IKgOCMRnDhHWqLA7x9ML7J+AzmEnjZiR2k
         ZCZdFNcmorvvGvZU6YYwEUld0O4rZcP5YZt8Ag390VKsQlu+erVOn4KAtHTw8O+uRyDq
         Ze5sm38z0pu4ViVFFKL2zH1bKel2K6SeRIbGq0iWMVnkqwzG5ScRRlHYcZI76vf0QEZ3
         KLRC3Gamlj8RshODRjAYQeYF2CEhPMVJVj3qVzPJhI/+nzRPusRvO4lpcyKGQZ5FJgqK
         NFbXvGTR1lV+wX7ZOVT4GGVL33IAFHXsByf7tzspxKl7tudaT1LXvjGA8jAFUrPx/fdZ
         5hhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YOmDqrtj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c79si2400100qke.4.2019.07.26.06.43.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:43:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EB44F22BF5;
	Fri, 26 Jul 2019 13:43:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-acpi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 15/37] ACPI: blacklist: fix clang warning for unused DMI table
Date: Fri, 26 Jul 2019 09:43:10 -0400
Message-Id: <20190726134332.12626-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726134332.12626-1-sashal@kernel.org>
References: <20190726134332.12626-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YOmDqrtj;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

[ Upstream commit b80d6a42bdc97bdb6139107d6034222e9843c6e2 ]

When CONFIG_DMI is disabled, we only have a tentative declaration,
which causes a warning from clang:

drivers/acpi/blacklist.c:20:35: error: tentative array definition assumed to have one element [-Werror]
static const struct dmi_system_id acpi_rev_dmi_table[] __initconst;

As the variable is not actually used here, hide it entirely
in an #ifdef to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/acpi/blacklist.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/acpi/blacklist.c b/drivers/acpi/blacklist.c
index 995c4d8922b1..761f0c19a451 100644
--- a/drivers/acpi/blacklist.c
+++ b/drivers/acpi/blacklist.c
@@ -30,7 +30,9 @@
 
 #include "internal.h"
 
+#ifdef CONFIG_DMI
 static const struct dmi_system_id acpi_rev_dmi_table[] __initconst;
+#endif
 
 /*
  * POLICY: If *anything* doesn't work, put it on the blacklist.
@@ -74,7 +76,9 @@ int __init acpi_blacklisted(void)
 	}
 
 	(void)early_acpi_osi_init();
+#ifdef CONFIG_DMI
 	dmi_check_system(acpi_rev_dmi_table);
+#endif
 
 	return blacklisted;
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726134332.12626-15-sashal%40kernel.org.
