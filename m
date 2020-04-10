Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBKXOYD2AKGQEHRW7U7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id A68F71A4435
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 11:06:52 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id l9sf1420930pjq.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 02:06:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586509611; cv=pass;
        d=google.com; s=arc-20160816;
        b=PfymGamOyyx9G/l6lhH7zzbAAutSRzJDaALVwDSOWRz42LwXQhUo9u5UNjiKLKg0Jd
         VOshVc0oWduDDLeHtey7XQHPCWkEctuzmdvx9wMEk15JyXeP9V4hLq04LykVgho27Ips
         Fcu/YfoMGlIAYCHw9R7LUR3sDRFB67lbE+d1G9Y45SQbxwQE8XPdM/sadkr7508HG7uJ
         3+CSYw/V84Xl9tED4KZYalYb2/pQHpofASAiAyrglQox6VY8cLUacPYpgD6bpC4afPei
         O6zO/3+oNQTRUw43Om23pOuETK0wPpfv7fqTgYM11iTE4AF4+t8EHL4hbv3DCHXLo3cW
         6lvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s0BI55uFBBnAOlI04A13OBKFvvXBL2BBgMNbwCdEWDw=;
        b=c+H5Z81PIGW1/1PfrQ/4q7BhUrbnQbOkVs972SAjg874+BGFSrA00wQ9cbquLc9pQu
         4GrXu9fCpiALHlhD6uMQqy9TQB9KzxFijiNXG9kPbJ8suOEWpr3cefKXait0Rt15RgOk
         gCD/L9F8gYILJt3/tfTLdXeKFfCGtr4742FMqo42Fh9av3GPwX/ipU+AhxLIOvFlvJBh
         aVXgKfINJ/9nAhyWTmVTfwXFw+DlAFuNdj2lme8sbsyr5cKIvbFSfcm0xEbu0PFLhi/B
         N3wNemszOY1mjIykm3ALpMj7Uf3OcB0pckT3OOHnI9oq/D9AiO7mVQ+R5PxCzuRClP/k
         dtww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b="drnb/M7b";
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s0BI55uFBBnAOlI04A13OBKFvvXBL2BBgMNbwCdEWDw=;
        b=nG7lr3zkaGn+3Ru3EdQZZP36XAq7a+Tq8BxCJCTx6CGsUzzCJRQe3PwZEzgK50l0mu
         ZZCyjCzUJlNHden6nWX/GzqNaFmltTskIDGRQapFOsSRL4z+/3wijfAsLFZGPNzianZk
         LEiM6ISKRIXsriGmnM+KobMFuQGqIyetan46J31/a1YJiSp18Ffa2ja/Xo73iJDKvQzP
         y9ucZpQViXsm+qPN0llybA2lVyyXq3SaLqHhuK4/MrAlzlNzD5i/ipFYWP7ZIjkPGH7L
         SbHOxHeTB+PIHgzoZ3sPMfxaOl+CDrAobll+R2dq4tuy+HGP6l13Z9Qc6V7ywuyiuGKp
         3NGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s0BI55uFBBnAOlI04A13OBKFvvXBL2BBgMNbwCdEWDw=;
        b=ixMMWb3/Km9PFCFyg/sdUeaofecZSRauVycZ/h1q1SNIKnDm9H8Fwbsr0LMqmg4yG5
         7XjJiJcC0xtknfRvSeXCyBn++VzW11M0puboTdPjrETtGqM1kfhHjqFdruj9A+lCEEw3
         ARDcEbA2nJQE/hhJW6BFMyEx7u1QxKhmwkfsO/gRtWU7omV82oHxbA8yQxwBf0sJpsI6
         hkiK9oO9RMwu8qDmmc+ahDZwdUYMS1GQjMUT7d3Ha55jWseu8vsLGUaqIUMDtVqCDFov
         +duXE4wwBtG4PSBWicb+Aisqta63S0Vgj0u5Va9/KbxAAGzYZb/hitIZMWqjUR12PxaV
         habA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuakggnR32Aihs6gyqF3HA9sk+xz9SN23iR7o5oWEzun9lGnjXDa
	E57ap7c1nnroXBnp/34IFms=
X-Google-Smtp-Source: APiQypJf44746h7iKfED1nXlTEbJj8Ez/OF1qNfpHMp+ISrq2eSqGjfNtdiq/u0KOWduJCBYYsszhQ==
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr4132987pjy.65.1586509610988;
        Fri, 10 Apr 2020 02:06:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:63:: with SMTP id 90ls9188980pla.10.gmail; Fri, 10
 Apr 2020 02:06:50 -0700 (PDT)
X-Received: by 2002:a17:902:b594:: with SMTP id a20mr1860293pls.282.1586509610513;
        Fri, 10 Apr 2020 02:06:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586509610; cv=none;
        d=google.com; s=arc-20160816;
        b=Yg2l1RjaugVt+SXgaw64DqUeh5i8qZaS82IoHP9/h5gkK5XdLCTbSdJKLtyt83F45q
         S9ghC3LaokgJGehvtrPsPpH7+tXUbNdHpPBH5HWhK+23GlRrD+I7xdOZqPjRWB6x6WEB
         5uOe34NA2u/wVDqj9Qs8VMyVR8UybRdKpGZIJZGPh0vInMs1lVUIobVtrfrw6VRw5JA4
         isMu+hhr092uQuCWDMOX9P9F+dLYu2/DTUGnnEXHUgEbUA013pyIjR1jj7eozUs1Rbxl
         9LRjanKxtyccZvtnQOG7oAaDMcfmlIpDaloDdkal58J/OEM0gzTVXuF6rdLuwzE4Xi+u
         QM1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=62B5Q8PAKecr1OoxczSRE3+/srYJQsxZv5OVnvpf2o8=;
        b=eXQqvtxtigSDfDkZ6Fk8/UtLapXZ+7NRwUiwth2uUgBrVPpd9790RKsKEbye0yffe6
         ABn5ZCW3y1l8s3TgH74YsCwj8jK5LN4K6OTgejjUKGlappot5YdSHU9T10BkiYz9VFGH
         XybCAgVBFsGz8f06yAde7hyBBYVdoNjtf9ggVWuc+LO45etHqXamsxz5/S7+ghJsLEqE
         NHUhLLp2I9otX8Ub/UYvlgt2Sd37KMNpF+S1cz9a1DYcBz3WOdCOXPYyBUjIoRPpgQ1y
         ILUzClwo4JJ7cudxKu/rdUtQblKvOeakhaNgHo+k6i+ibPPAX3AMh2uYzQ3VmrBJxdn8
         Ah0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b="drnb/M7b";
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from vultr.net.flygoat.com (vultr.net.flygoat.com. [2001:19f0:6001:3633:5400:2ff:fe8c:553])
        by gmr-mx.google.com with ESMTPS id y5si46657plr.4.2020.04.10.02.06.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2020 02:06:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) client-ip=2001:19f0:6001:3633:5400:2ff:fe8c:553;
Received: from localhost.localdomain (unknown [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
	by vultr.net.flygoat.com (Postfix) with ESMTPSA id 87CF12022B;
	Fri, 10 Apr 2020 09:06:46 +0000 (UTC)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: macro@linux-mips.org,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Paul Burton <paulburton@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Kees Cook <keescook@chromium.org>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Fri, 10 Apr 2020 17:06:23 +0800
Message-Id: <20200410090634.3513101-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200407080611.859256-1-jiaxun.yang@flygoat.com>
References: 
MIME-Version: 1.0
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=vultr header.b="drnb/M7b";       spf=pass
 (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553
 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
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

LLD failed to link vmlinux with 64bit load address for 32bit ELF
while bfd will strip 64bit address into 32bit silently.
To fix LLD build, we should truncate load address provided by platform
into 32bit for 32bit kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

--
V2: Take MaskRay's shell magic.

V3: After spent an hour on dealing with special character issue in
Makefile, I gave up to do shell hacks and write a util in C instead.
Thanks Maciej for pointing out Makefile variable problem.
---
 arch/mips/Makefile             |  2 ++
 arch/mips/kernel/Makefile      | 11 ++++++++++-
 arch/mips/kernel/vmlinux.lds.S |  2 +-
 arch/mips/tools/.gitignore     |  1 +
 arch/mips/tools/Makefile       |  5 +++++
 arch/mips/tools/truncate32.c   | 29 +++++++++++++++++++++++++++++
 6 files changed, 48 insertions(+), 2 deletions(-)
 create mode 100644 arch/mips/tools/truncate32.c

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index e1c44aed8156..633e9de4d262 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -14,6 +14,7 @@
 
 archscripts: scripts_basic
 	$(Q)$(MAKE) $(build)=arch/mips/tools elf-entry
+	$(Q)$(MAKE) $(build)=arch/mips/tools truncate32
 ifeq ($(CONFIG_CPU_LOONGSON3_WORKAROUNDS),y)
 	$(Q)$(MAKE) $(build)=arch/mips/tools loongson3-llsc-check
 endif
@@ -261,6 +262,7 @@ include arch/mips/Kbuild.platforms
 ifdef CONFIG_PHYSICAL_START
 load-y					= $(CONFIG_PHYSICAL_START)
 endif
+export VMLINUX_LOAD_ADDRESS		:= $(load-y)
 
 entry-y				= $(shell $(objtree)/arch/mips/tools/elf-entry vmlinux)
 cflags-y			+= -I$(srctree)/arch/mips/include/asm/mach-generic
diff --git a/arch/mips/kernel/Makefile b/arch/mips/kernel/Makefile
index d6e97df51cfb..0178f7085317 100644
--- a/arch/mips/kernel/Makefile
+++ b/arch/mips/kernel/Makefile
@@ -112,4 +112,13 @@ obj-$(CONFIG_MIPS_CPC)		+= mips-cpc.o
 obj-$(CONFIG_CPU_PM)		+= pm.o
 obj-$(CONFIG_MIPS_CPS_PM)	+= pm-cps.o
 
-CPPFLAGS_vmlinux.lds		:= $(KBUILD_CFLAGS)
+# When linking a 32-bit executable the LLVM linker cannot cope with a
+# 32-bit load address that has been sign-extended to 64 bits.  Simply
+# remove the upper 32 bits then, as it is safe to do so with other
+# linkers.
+ifdef CONFIG_64BIT
+	load-ld			= $(VMLINUX_LOAD_ADDRESS)
+else
+	load-ld			= $(shell $(objtree)/arch/mips/tools/truncate32 $(VMLINUX_LOAD_ADDRESS))
+endif
+CPPFLAGS_vmlinux.lds		:= $(KBUILD_CFLAGS) -DVMLINUX_LINK_ADDRESS=$(load-ld)
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index a5f00ec73ea6..5226cd8e4bee 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -55,7 +55,7 @@ SECTIONS
 	/* . = 0xa800000000300000; */
 	. = 0xffffffff80300000;
 #endif
-	. = VMLINUX_LOAD_ADDRESS;
+	. = VMLINUX_LINK_ADDRESS;
 	/* read-only */
 	_text = .;	/* Text and read-only data */
 	.text : {
diff --git a/arch/mips/tools/.gitignore b/arch/mips/tools/.gitignore
index 794817dfb389..58ead412c8d3 100644
--- a/arch/mips/tools/.gitignore
+++ b/arch/mips/tools/.gitignore
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 elf-entry
 loongson3-llsc-check
+truncate32
diff --git a/arch/mips/tools/Makefile b/arch/mips/tools/Makefile
index b851e5dcc65a..69debb18bbb4 100644
--- a/arch/mips/tools/Makefile
+++ b/arch/mips/tools/Makefile
@@ -8,3 +8,8 @@ hostprogs += loongson3-llsc-check
 PHONY += loongson3-llsc-check
 loongson3-llsc-check: $(obj)/loongson3-llsc-check
 	@:
+
+hostprogs += truncate32
+PHONY += truncate32
+truncate32: $(obj)/truncate32
+	@:
diff --git a/arch/mips/tools/truncate32.c b/arch/mips/tools/truncate32.c
new file mode 100644
index 000000000000..82c19b4c32da
--- /dev/null
+++ b/arch/mips/tools/truncate32.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+
+__attribute__((noreturn))
+static void die(const char *msg)
+{
+	fputs(msg, stderr);
+	exit(EXIT_FAILURE);
+}
+
+int main(int argc, const char *argv[])
+{
+	unsigned long long val;
+
+	if (argc != 2)
+		die("Usage: truncate32 <address>\n");
+
+	val = strtoull(argv[1], NULL, 0);
+
+	if ((val & 0xffffffff00000000) != 0xffffffff00000000)
+		die("Invalid input\n");
+
+	val = val & 0xffffffff;
+	printf("0x%08llx\n", val);
+
+	return EXIT_SUCCESS;
+}
-- 
2.26.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200410090634.3513101-1-jiaxun.yang%40flygoat.com.
