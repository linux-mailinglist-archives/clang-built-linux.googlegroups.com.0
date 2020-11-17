Return-Path: <clang-built-linux+bncBC543RMV4UOBBGMV2D6QKGQEYGLZG3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CEC2B6BE7
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 18:38:33 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id i8sf827828edy.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 09:38:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605634713; cv=pass;
        d=google.com; s=arc-20160816;
        b=ip18nydI6emdVzCoQkDAxE+p7S5/8uyhyqkoNrBZ0i9pE8SUS9SmIjXk64giNBZHIO
         dgLkRVEb75MPagcfWobIH/sJIQ3Fjkxk+ventwJ6+vfjNVNJYA7tj5HuJVJtxLAZ5EeN
         zbvetJKkaVH1hOwzt/LzddDYe/hLppY/ItMYvx1HLCfQoNA2wdQAViYTfqHTI84CVIrA
         2JvqHEpvRAWlrkI29f7axtEA1uO7gDUvVGfYaIXnxubCsHAmdfuc7jg/5iqQskyY1LSC
         TH0cgsTpVl0Hjw2MARQ2OsfaYBON2ik7LD5t0WZFb64E4j0/prFiJdAbWDrFYXn/WAEd
         8xWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=CY4ioy/VAHdJJdcnMGFTc/8De+yr8XGJycvzYvcunmI=;
        b=NYf1Yhj+vcFrpZC1ygbM7J6QjJBgLXvGwIkx+B5hGKukNd6mO5zmX4datUroK5beG/
         rQ7/Og3auatPi/PZtzHiDzktrh3zh2FWAPGLwxjxH4MA3XM6qugzIh1wnHdg6BnUVU0g
         3ywuRNb+5HZA6XteeK6ofY4DzbWyz6zh5hNZEPobbkJmYuDtLeQA6SZBDuW8W4z7AVLF
         9eitDULT1ZtdxQwdNhG5TB7tDNOyrCQalr3rGz4trgftJDqEYr9g5kwFqjU1t+wO+j2W
         Pp+d/6x/RXwA2s206nDqM2m3iw4jr7b3LSWjovWW/82zXRk6ZgVzTcu9bKB3NHr8mA/+
         RCmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CY4ioy/VAHdJJdcnMGFTc/8De+yr8XGJycvzYvcunmI=;
        b=JsmUHgoIkoPBIQmj3tkEx3sknUXoFAdhMTSY4zaUWXIgvDgExNBK8QtjZZmudFCeof
         widb1PkM7hjjZ6AWTg39ZpXKv9JLiG+ZWxWIiXJUsOrPpGy9EbNILa2TjitHNlBkNKGr
         l+IDRVwUCodeg0C15r1rgJ66HqZ61EIJqdAhHfqHArCj2mTc+X5NxS6aUzYJf4j5lxiO
         3NLL+bkF9TZFE78HIloI/47cj60LMpXPLpKdTjDtEVZFGuusR8RRTdc0wok9Yr+dKXvN
         Onzkv5iljwsIWkTsumee30Ne/9UBgnnWWibAplXaLsOFo3iKjF8607zkCscMgrLNwRzQ
         K2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CY4ioy/VAHdJJdcnMGFTc/8De+yr8XGJycvzYvcunmI=;
        b=MSeJBCG5heQVrdwrZdpk730cyk9k6abLu5kqjUzaUg/XLMP4Pk/sKWWpQie62Px1e7
         8UjdcJFe76EsMj0ME/41XDrLC3G6DmDW3VtNStdgr6Jx+1vZwQleg3yQWlD23MxL+JA6
         1uzo8ShOVdbfXTds0F/MnhnbKm1xKQE/8fsFRiym2wKsorKa/CwRv/4j1zNo0pkCYW0q
         5TAd62d4glOTN0oTJ0ax/3DKKyU+EMw1S36Dm4cy73u4d1LTghTuMAqAMjSgO9/BZapJ
         CIB5F6s+A7mG4qRL8ZKzhDjXk+mERP+AKj7haXNp8QDZy+SGp9DBpF5IQ8utNXw7bXgF
         KAyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tRYRg282pJYRR186Z2ikNG364eDA73AvB5W3QxuC6bS2lMkiO
	fKBpPLLj5XmAdAjgaBudgos=
X-Google-Smtp-Source: ABdhPJwS9z1H+PnX7lpneelvtRrbq+25XRqX9bIcpCZ/UtuoAc9cgJ4QL8Dn5UcopVAphjcTOCP6Kw==
X-Received: by 2002:a17:906:a00c:: with SMTP id p12mr21289734ejy.249.1605634713234;
        Tue, 17 Nov 2020 09:38:33 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1743:: with SMTP id v3ls8819270edx.2.gmail; Tue, 17
 Nov 2020 09:38:32 -0800 (PST)
X-Received: by 2002:a05:6402:17b4:: with SMTP id j20mr23186410edy.24.1605634712308;
        Tue, 17 Nov 2020 09:38:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605634712; cv=none;
        d=google.com; s=arc-20160816;
        b=hQmjdxuCg1UKmNBDkIS/1zENIaZ7DuL9RyhEClVEAuqYGRHoBJyhCySECpC80zLExA
         3oGUO1Ds/Bo6vRuXjgUZYun0SDMSYOVwcpAAA9Wk6PVR6aFwO1/NWB+H49oZ/HhatV/O
         jc7NZxhAL1hnUAHsk6o+Bw7P2AXniOrCxySBvhtsOUjywg55EkurL6BoFUhIf9V2dHJU
         005tRa/R9YD5+Zu+p6MeaVSU5R1WPwg/L2ttZgNkmiZqayOiALJ6oK1TMZcakpHT46cm
         Jntg1CV5cYspGOskJHbaAJSvQn//wDimyJQovBBI0A1vM/zCBBQxzx9UWhZV4RAdTkUA
         nzhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=cNO90BxjtBAsN9fixVN9btvLFGOQwzbTzKGRsCNMxUU=;
        b=GrXdlOqh70Lk0YKbNhWQYKJghTUJH5eUHgWHDgLPTTsWz/W1XsLXSuCGqibf7VtHWe
         lc+DKwNhZXJnJAkucG+zasKZd9csoTMXW/s1rBpXrCwTejL6XwXJW/BMjEHO5GieQIUQ
         dXit7CfeP8sh1t+mMhHnugLczOkyPHKo2Tzr9AeRO+afswZUJeOvc+Ec5g9nsSa35Gu6
         gtnm5jQB1HLRQ8hkFAl0QqaxNr0q58BnBN2N/3z1gC+eDWnnKhspG3JIxR6rXtGHvGPD
         Oki0/wfQrX2UPazqVE6uKQmtzpO7Lj8dKVfM1H78nAIL4vMTVHyy2L0zTQErD23cFq2l
         SeyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of info@metux.net) smtp.mailfrom=info@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id c11si595932edn.0.2020.11.17.09.38.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 09:38:32 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of info@metux.net) client-ip=212.227.17.13;
Received: from orion.localdomain ([95.118.38.12]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MNtny-1kuYU13N4S-00OE50; Tue, 17 Nov 2020 18:38:29 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Cc: alexander.shishkin@linux.intel.com,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	andrii@kernel.org,
	john.fastabend@gmail.com,
	kpsingh@chromium.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] lib: compile memcat_p only when needed
Date: Tue, 17 Nov 2020 18:38:28 +0100
Message-Id: <20201117173828.27292-1-info@metux.net>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:WLtI2dhe23NlCGvRD0bQU5TmYycnzy6Pd31ukZBnKNWCoAnPQ7O
 wObf9KlfjUMJ0j5ttfV0Q74UhV+inNsIH7TvyxkfNy2AIF0ZrdN1cYKC4YfchqlEZAdWjup
 SvAAIiGZOC79vLc/ecuz96pt1yxUR5+SgeKA5j4A2OWQMQh964LirWKxUy0zuM7ZuvQFdlq
 3QnhrViK1QozM6MA8as0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Mg8iHrkpY3E=:i3JQ1DnnD2/k2sjtlbn7Fw
 wvqz2OILSVqTvWZS2Eo93Yti4ukgOmRCXtyyNWc34KOdzHLZU8nVMevyy7TYcIJGT2cPsFgbm
 MxVWzqd5TNKHTecNbDZ2qhC3H+DeheFHhNzpx7Nmj3TGwM4Cfse2T+piD3dkESbfHFMqkPAMn
 0UuAh0lXTiPx5p69puuU0PgD18Hd5zTZ2zadvUmILu4+rX5YVzShY8kuknQ98rGmKFzN6icsq
 S0BpuwPMFX9E/ah2pEoW4kT68bNbEKlIttyabbNwonekwBRXbckOpc9GEv17DTjLbXAmapxxI
 WCvk4A67e2tBev/NSgxM5OoDnLUvS5BvZqsX+Q3IdqLMu1PflPSX5eqTWQZeK9MKzZINgbCLP
 EwYf/wKk7T9TqigL26LNgQ1MRyTqtC2NbyuXI3vOPjdDeMKxye+cdZrtgeJdZ
X-Original-Sender: info@metux.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of info@metux.net) smtp.mailfrom=info@metux.net
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

The library function memcat_p() is currently used only once.
(drivers/hwtracing/stm). So, often completely unused.

Reducing the kernel size by about 4k by compiling it
conditionally, only when needed.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 drivers/hwtracing/stm/Kconfig | 1 +
 lib/Kconfig                   | 3 +++
 lib/Kconfig.debug             | 1 +
 lib/Makefile                  | 4 +++-
 4 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/stm/Kconfig b/drivers/hwtracing/stm/Kconfig
index aad594fe79cc..8ce5cfd759d1 100644
--- a/drivers/hwtracing/stm/Kconfig
+++ b/drivers/hwtracing/stm/Kconfig
@@ -3,6 +3,7 @@ config STM
 	tristate "System Trace Module devices"
 	select CONFIGFS_FS
 	select SRCU
+	select GENERIC_LIB_MEMCAT_P
 	help
 	  A System Trace Module (STM) is a device exporting data in System
 	  Trace Protocol (STP) format as defined by MIPI STP standards.
diff --git a/lib/Kconfig b/lib/Kconfig
index b46a9fd122c8..b42ed8d68937 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -686,6 +686,9 @@ config GENERIC_LIB_CMPDI2
 config GENERIC_LIB_UCMPDI2
 	bool
 
+config GENERIC_LIB_MEMCAT_P
+	tristate
+
 config PLDMFW
 	bool
 	default n
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index c789b39ed527..beb5adb2f0b7 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -2334,6 +2334,7 @@ config TEST_DEBUG_VIRTUAL
 
 config TEST_MEMCAT_P
 	tristate "Test memcat_p() helper function"
+	select GENERIC_LIB_MEMCAT_P
 	help
 	  Test the memcat_p() helper for correctly merging two
 	  pointer arrays together.
diff --git a/lib/Makefile b/lib/Makefile
index ce45af50983a..18fd6630be0b 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -36,7 +36,9 @@ lib-y := ctype.o string.o vsprintf.o cmdline.o \
 	 flex_proportions.o ratelimit.o show_mem.o \
 	 is_single_threaded.o plist.o decompress.o kobject_uevent.o \
 	 earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
-	 nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o
+	 nmi_backtrace.o nodemask.o win_minmax.o
+
+obj-$(CONFIG_GENERIC_LIB_MEMCAT_P) += memcat_p.o
 
 lib-$(CONFIG_PRINTK) += dump_stack.o
 lib-$(CONFIG_SMP) += cpumask.o
-- 
2.11.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117173828.27292-1-info%40metux.net.
