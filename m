Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBX4M7P7AKGQESLK6IOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 576682DF2E5
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 04:34:57 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id x14sf6197112ilg.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 19:34:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608435296; cv=pass;
        d=google.com; s=arc-20160816;
        b=lr8eB1Td8ZEARGjB7bKmKX94J7MJOJAoSV0rmt6EFs/g3+cyScA7BzTQibtjJI40GW
         rdPrQgkwPs2IiyF24b3ZnOhLy2BL4cvnFZibPOAcpMJLyUS46skTEhkyqnbE4aB7anpU
         Ib7Jj/Q2fSgLwTZq+ucW5qpASoRvFeoj4QrkgaEuCOCkPNoukpnS6i6DN9CCmZJo40gt
         hG0YO0+I8ejbap6xcghpKgAqlI7yM4R+97VFqbRROcJ7kMGVXuyWoy4IL0boGnymk+aE
         6cuLlzzfCcU7Na35xD2PsHw5ai1DGnRNqea6a91DjIZTtpA05zp3NJHdGr2tBxLMo5w5
         tZew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pGo/O5sJGv0K9tt5y7kmtC3E6G2pZIGR4V0hh5GEkrA=;
        b=n2xVVHVZlHA9+nFlmro7P2BK1td1zEsIqBK6iNpFMOu7f7O/fhJQVUPxLR9UpjdfEX
         xuPWFAhwvuHOv1mQPRzgXwdH/Px+2FCwua+/b2vjwdZK9H+bZlgIh/T7EP0tFHMPAVaY
         wcSYzlJGtwl3m9fw4RHiadK9fCNQaUYF/zCXnYOIU3Q6FMjc2ImaZcMaaZKXfjgFS2pc
         D372Ra+JFFeRr2kN8HEG+f48gAtXdrtYCVCo+9GRBcQIDJPMQeSnS9pqxqkE6wYNZ3vb
         jiega4ZHSPT+wlWG22Ob1aJ4if2VFAJz/uAg+OI7kPQLLrgSu5I+Me8f7Ky7xQOdssrT
         Fd/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGo/O5sJGv0K9tt5y7kmtC3E6G2pZIGR4V0hh5GEkrA=;
        b=g2ytaDMVO5bl7vsorDRq/QLVCrfbSKuZLHiwpd7OdJAN9JuoXwWJDifEjBxQ3aVy29
         bghirRZKR6I1LI7prliaRGqHZJQ7SSSIBBjjrAVUr0yGH8noUMfNgeF8X118EFjfEhGx
         sZQMNwmI9r8wvzDeZjBOhd/vCKTMgCXGCyEN9IlktNE7lm/6jGXXv3iGg+y/oGDkOJ7w
         Te1DGJgZSQjTGVOzsaLB7T7Zwba6TuevDMdKrPcySDh5ToiKztibrG7RT2eRTOLI+469
         4w1sSPwHrVp3DoicCGXlOeePtMhhN9J7XqAf/Hs4Sz9AmKXyOfQCZY7AGHoOWb+HU5ZG
         boTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGo/O5sJGv0K9tt5y7kmtC3E6G2pZIGR4V0hh5GEkrA=;
        b=gcbv5slGHgYO3la5AYDSs41Uv8xFO50hxa4AY9++FRpnlQ2qpjytzKmIRjNUw85luK
         903Iv86npRhfFTNPxmkguITyPlaig8Cb7QrhQlOZg6LZyZXc6LeMLmbID01F1BbKCpFX
         7oU+rSflWub44jlgY7+1H4VaZk1h3KKBjLw/VIfeUGAHC/LKJcf1Pa/l15RNsDiuz84H
         fXoUS+95enf0l9VxAl090ENJ0q/usMNjkFJCCIWgYRfKn/+sUvfg+9XhQRfEq4l/nAHA
         FJJlrua0lO2507x9hTLIDkEDf1+0HBeD59M5TpLDGvTZUsHKeTQ7usTvdyYKH/eiZDaP
         nGHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531D//O163ds8u2IPADuwHXUCm8YSEfKV4Rg6Jtt2d8ZMuujOT9i
	JnxFEdPDr/K1/yeNhLefRSY=
X-Google-Smtp-Source: ABdhPJwFAxyL+vs+dMRYaQHTFbGI4kl5CHPUERvGgbSVzI0OOvetmi5n0Do1hQZB1CQwPSH6igVd5A==
X-Received: by 2002:a05:6638:3012:: with SMTP id r18mr10258621jak.13.1608435296025;
        Sat, 19 Dec 2020 19:34:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e54:: with SMTP id s81ls4376212ilb.8.gmail; Sat, 19 Dec
 2020 19:34:55 -0800 (PST)
X-Received: by 2002:a92:6410:: with SMTP id y16mr11524822ilb.126.1608435295643;
        Sat, 19 Dec 2020 19:34:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608435295; cv=none;
        d=google.com; s=arc-20160816;
        b=V6OfkCiyk98jr9hkwKGN2g2lrfoIWBFYaPWWoyfxUU9Cyh2iagTsXwOzOiE+mdqevQ
         eLqwcsXqOH/Kwp1jCDNN93rNOI5faXlrUsOOJj+H4BnCMI3VybMWUz+h6kd5ExrdRNYP
         cX/U5xIpmAs2ryU/RTWU/QHxLBL3mm7s5af6keHBrXYXCb6dlzP9ZxGE8zHMmfqDwb6l
         NYglRCtn1APDM7iobD48Tl8aUaWB7LgpY1BcJRDBPUunZjABYxt76znJwcCPMbKLgeTT
         i+OUKUukP8/MbDZlXUhW6huCpwrlJ4E2Xjv78jldUGw/qSkBt/AopREMlfuMrpOFrvCc
         ExvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Yg/l//oQ+GbhMqrS0QGLD+0IK5IvlW86BgGNfLXzgOY=;
        b=xmkvYTuDIynDtBl8JyODaw0wgshhQFgL14cZPiSYKG9qXVZ32Y5Xr0fLgYJbMZf2Il
         Ym5bsHXmkDQ4Gp3UNVrpd8SUVsjvv5THZGc7lk0WBJeYvyeXDYhAWekgmcFOp2gBsqnF
         92Tr7d2i4ZjZa0UCLxIdE+0uQFJBHQMisMM3HNy54p5vTuoi0JcNQXjjUzgHD5ebkbtL
         S63GHidxI5ghgbdv9sqx8jdqy9s+mSH96JJcNl6gK6VMIn9Jo6OcY7Zm+3m+vwBMIiEL
         wwKXPH4Fcnkce79Hgr09wK649yA8liuNqZeU6EdXJIACAneFklE2vPuLe8AjBzwIMzwS
         ItnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q4si929251iog.3.2020.12.19.19.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 19:34:55 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Barret Rhoden <brho@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.9 14/15] elfcore: fix building with clang
Date: Sat, 19 Dec 2020 22:34:32 -0500
Message-Id: <20201220033434.2728348-14-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201220033434.2728348-1-sashal@kernel.org>
References: <20201220033434.2728348-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
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

[ Upstream commit 6e7b64b9dd6d96537d816ea07ec26b7dedd397b9 ]

kernel/elfcore.c only contains weak symbols, which triggers a bug with
clang in combination with recordmcount:

  Cannot find symbol for section 2: .text.
  kernel/elfcore.o: failed

Move the empty stubs into linux/elfcore.h as inline functions.  As only
two architectures use these, just use the architecture specific Kconfig
symbols to key off the declaration.

Link: https://lkml.kernel.org/r/20201204165742.3815221-2-arnd@kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Barret Rhoden <brho@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/elfcore.h | 22 ++++++++++++++++++++++
 kernel/Makefile         |  1 -
 kernel/elfcore.c        | 26 --------------------------
 3 files changed, 22 insertions(+), 27 deletions(-)
 delete mode 100644 kernel/elfcore.c

diff --git a/include/linux/elfcore.h b/include/linux/elfcore.h
index 46c3d691f6776..de51c1bef27da 100644
--- a/include/linux/elfcore.h
+++ b/include/linux/elfcore.h
@@ -104,6 +104,7 @@ static inline int elf_core_copy_task_fpregs(struct task_struct *t, struct pt_reg
 #endif
 }
 
+#if defined(CONFIG_UM) || defined(CONFIG_IA64)
 /*
  * These functions parameterize elf_core_dump in fs/binfmt_elf.c to write out
  * extra segments containing the gate DSO contents.  Dumping its
@@ -118,5 +119,26 @@ elf_core_write_extra_phdrs(struct coredump_params *cprm, loff_t offset);
 extern int
 elf_core_write_extra_data(struct coredump_params *cprm);
 extern size_t elf_core_extra_data_size(void);
+#else
+static inline Elf_Half elf_core_extra_phdrs(void)
+{
+	return 0;
+}
+
+static inline int elf_core_write_extra_phdrs(struct coredump_params *cprm, loff_t offset)
+{
+	return 1;
+}
+
+static inline int elf_core_write_extra_data(struct coredump_params *cprm)
+{
+	return 1;
+}
+
+static inline size_t elf_core_extra_data_size(void)
+{
+	return 0;
+}
+#endif
 
 #endif /* _LINUX_ELFCORE_H */
diff --git a/kernel/Makefile b/kernel/Makefile
index 9a20016d4900d..55e25e1739a31 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -100,7 +100,6 @@ obj-$(CONFIG_TASK_DELAY_ACCT) += delayacct.o
 obj-$(CONFIG_TASKSTATS) += taskstats.o tsacct.o
 obj-$(CONFIG_TRACEPOINTS) += tracepoint.o
 obj-$(CONFIG_LATENCYTOP) += latencytop.o
-obj-$(CONFIG_ELFCORE) += elfcore.o
 obj-$(CONFIG_FUNCTION_TRACER) += trace/
 obj-$(CONFIG_TRACING) += trace/
 obj-$(CONFIG_TRACE_CLOCK) += trace/
diff --git a/kernel/elfcore.c b/kernel/elfcore.c
deleted file mode 100644
index 57fb4dcff4349..0000000000000
--- a/kernel/elfcore.c
+++ /dev/null
@@ -1,26 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-#include <linux/elf.h>
-#include <linux/fs.h>
-#include <linux/mm.h>
-#include <linux/binfmts.h>
-#include <linux/elfcore.h>
-
-Elf_Half __weak elf_core_extra_phdrs(void)
-{
-	return 0;
-}
-
-int __weak elf_core_write_extra_phdrs(struct coredump_params *cprm, loff_t offset)
-{
-	return 1;
-}
-
-int __weak elf_core_write_extra_data(struct coredump_params *cprm)
-{
-	return 1;
-}
-
-size_t __weak elf_core_extra_data_size(void)
-{
-	return 0;
-}
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201220033434.2728348-14-sashal%40kernel.org.
