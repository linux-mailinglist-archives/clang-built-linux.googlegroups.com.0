Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB3XMSXZAKGQEIPZXIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B6115C79D
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:16:47 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id g20sf5203424edt.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:16:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610606; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZIYS+MhL3he/njbeg/4GAxrE/UWOyc3kNjfd8YHJ1VPLhGvmvxpVj0npss3xI1x+f
         /dWQAJc+oRTw4NR5dSS3tzkicrU8YzKNpWXiE2SF1B329zYUKX96uPtXcsBaGD+VhAuU
         K4mUfw+FEmqSw6QPdUR7CEXzwQQcG08SS3B3Adf9cqVrj1l//APEGGuFKHhaQXLOcEzS
         CPoNP4oRt6HuX8wyTbkHuX8AcXzvdosFUdIVipgxfbx8/q2MPsYg5HCfFXCi0eMp7uCt
         j59OVDKJnUlZD4bQ2rgnVATcPAk1wm88RqQjujXDlpY90bj+PKc387eS8Xa420iBJ7NT
         g/fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pKUVNRiTKsoGwGYl8y80UnI6YGUX9JK8ZLkI/gpPgxc=;
        b=J5uz51FlhIzfPj7CJifF5p0T++TZCiYgM3WxqsiUuKwDksWb2rvbbvMd60lZsDpO3V
         lEqkUnXMLhAuNKdkYalqfTiHNe/PMYaRJ7TSLGfNivFRO/SQFqD5m7gxNp1cMTGDVJPL
         OasX8UqJ7nIH4Icp8OIp9NxpMvJ0u25sxZhMEH/9IixQ+ukiV2SUUs0z5bgJ7557fLmH
         E3tFI1f/IvLpMoj9dd0cTB16OByDx6JjLyjjxVDXIXmL5HT12YjhXXuhiagDHC894QS0
         KlsXtu/ZFp2gjdaAK9sIx7cdi3rVaTwyJPYYoS1BIkfbB3Zu+kk7LkHsVKA/ZrwJx1tt
         KITg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pKUVNRiTKsoGwGYl8y80UnI6YGUX9JK8ZLkI/gpPgxc=;
        b=f3y88wu31mca3zsJaQLjNxOfRqwbhQw3apH+We/J50/cbKN3Og9LjEtlnYWtnl8V3a
         ViCCVPTnZg4YxvjHLgS5ZOV6Wox9FZJbqiYr8mw399hOxrR52fZMqHcmU1k/XSauLSRy
         KXf7bPFPQEID82ycuKmIqQ6uzHR6EuvrTUpGV5uGrV1qiftRvt153SQ2XHugizoOARA0
         SNruanwTTPR98GWIoJmSlEgXk8SYWkhTsNvPs5taJ8URVsERyz8u5DsXU82QIuWu5G1p
         F2Km6fk2EvpJOSEzqedd//I85vTqbrQ7K0prEwLuJBwF8IBW/v5cIL0O6ii3MjF+W4tP
         6faw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pKUVNRiTKsoGwGYl8y80UnI6YGUX9JK8ZLkI/gpPgxc=;
        b=ZDK0IPGayNY3OrDQPeewa9lZ6rwge698Gx1QPB+qam9coFNRrdg5OmfwZrylhzwo6n
         E3x+FVbDPIeMppcuZUrUxA0FUSkAV4ZpvN9iNlHZVXl+uIKq34E4AN7BUGntrG//7YUq
         FSrQAHV+SnS9/2RGKpywRGNiTbytCV8MRMalpRl5J0frDIqtiZ26owoKv1mjX6eFJEZ7
         31vC/PUJDSQp2A9AJIqzwiyv0bcQcXMtNx39RZMlFYkxWJ5PngO8RUocTc4RTYKF3ysE
         h7Ot9dJilxAhPyGrrPXdNSEfzQKLS5yGyYzN1wk6PqEa4OVxeelqEHUlK0p62j6u3d/x
         aN8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqWuFo0XLPa3vAoruTPQx5WCqiyIbpKJSeeRoETyyPaPzkxUhQ
	CYnoD5BiW1mto1uxt4c9Bsc=
X-Google-Smtp-Source: APXvYqwoslWD+Ib/rGHSitFx8qaWTU/KZKsA88Vq62XgVaiNYSF/xcGK7ANVpo6f3+IcHAoJhuhGtw==
X-Received: by 2002:a05:6402:38c:: with SMTP id o12mr16256160edv.273.1581610606857;
        Thu, 13 Feb 2020 08:16:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:17ab:: with SMTP id j11ls11281515edy.3.gmail; Thu,
 13 Feb 2020 08:16:46 -0800 (PST)
X-Received: by 2002:a05:6402:1595:: with SMTP id c21mr16572797edv.32.1581610606336;
        Thu, 13 Feb 2020 08:16:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610606; cv=none;
        d=google.com; s=arc-20160816;
        b=wLAljPj1k1e71CosJut6P41lWTXOtTO3m258mlGb/Gi8cOMRUiNXusf/k3VPuUBjvc
         MdDbPFlA/T7AjJqWZtWHn5L44NVzhLRP4gkTm7IW/93lHgBZtXhzcAzpaF4gFxYH8xaV
         drDRz5mI9ZSjNfuuIHanodxfrQXyDKQSoitgYLCjHvFYnTZ0g42VdObAkVLjgaixGh2A
         zIxEeTAmNHWkRjkmM4BKDQdZnuvnN2WB9XJCLouRPQg7/Ucwyt+FHe9ySdlNHyS6jc2y
         qMtQFRni/dzJf4wGTaWmcClZ/oDHsEl7dbZIKQPOEf3yL5Mw+sOT6yqa7Hxt3X6ZT/Ma
         SoBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+MpPWqWYM1faDbTOS1bdajhfM6E9cdD+oj31KrtICrA=;
        b=uSxxbR5NL9Uu8T+66Xn1qx7e2EhCziSU+mxr41+BjkjjdOu4FbN+Lvp8itMMrzn9Xt
         jP4qTASw1XoHIlN/3vlWHe7Mki6UtdIshFH95UmTdlXvv0hPBF4FabTkxXWFS7XLVvif
         tH5j1GkCX4qfLb6xh2PNUwyBYiOEd8Ze5LEwJj+LDBEypPre76i8SkYh6XEM/UopbEaa
         UemCMxNx60jEF5HLy0M8YGEcayY2l+geqmPveD+Ahw/Bb6ifMvndNytb6+oWJicwB1gs
         ANYc1i6HznHG/d+OdBsXlekfFCeJIo6C2+CPFRYMHNElIAQVC6IH1g+y3BrgfhkK0fZq
         6emw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id df10si173501edb.1.2020.02.13.08.16.46
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:16:46 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A69F41045;
	Thu, 13 Feb 2020 08:16:45 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 235143F6CF;
	Thu, 13 Feb 2020 08:16:43 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 01/19] linux/const.h: Extract common header for vDSO
Date: Thu, 13 Feb 2020 16:15:56 +0000
Message-Id: <20200213161614.23246-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Split const.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/const.h | 10 ++++++++++
 include/linux/const.h  |  5 +----
 2 files changed, 11 insertions(+), 4 deletions(-)
 create mode 100644 include/common/const.h

diff --git a/include/common/const.h b/include/common/const.h
new file mode 100644
index 000000000000..cc209eec47a1
--- /dev/null
+++ b/include/common/const.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_CONST_H
+#define __COMMON_CONST_H
+
+#include <uapi/linux/const.h>
+
+#define UL(x)		(_UL(x))
+#define ULL(x)		(_ULL(x))
+
+#endif /* __COMMON_CONST_H */
diff --git a/include/linux/const.h b/include/linux/const.h
index 7b55a55f5911..447a5b98d5a3 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -1,9 +1,6 @@
 #ifndef _LINUX_CONST_H
 #define _LINUX_CONST_H
 
-#include <uapi/linux/const.h>
-
-#define UL(x)		(_UL(x))
-#define ULL(x)		(_ULL(x))
+#include <common/const.h>
 
 #endif /* _LINUX_CONST_H */
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-2-vincenzo.frascino%40arm.com.
