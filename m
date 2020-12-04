Return-Path: <clang-built-linux+bncBAABBHOVVH7AKGQE36LK6HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EC22CF274
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 17:58:07 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id k7sf3893661pgt.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 08:58:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607101085; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQCo1oZc40wK0+xSj8bhYRgtUWVyQnkzxM7Narb7WlCc691583+ZXV0q2H/9kwWgMq
         yaIydzJVzw1zVgvTYyry7bM4TRgULi56Uy4HnMhK0FUhWM5OO+Dwj/DjnSsaRFHC6VqG
         jjCpqwAG2mNCTQUEg4GiodOzH7nGL62TfU7PuKqIbCh/6GW08wDUq8nQ/U2OypN42MAk
         Z3h/1APcrf+botA0mk/O/y7lx3zJAGpNVVnVAuO/La5rXUTUn2CCFyUkmSd4efBg2QhZ
         bZwTpyvTEIShCK3ZlDELK6+H8NTAI7K8EvZo/lxoChjoX3VoRWaSV4gPJmCJs3QqVsWn
         wdVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NZ8uIHQLAZob5cBExLh0XU6jlNRWLJkMjTCIHyYrXEo=;
        b=UlRcV8cOWdvrEHUGmULTog0E1BRSg5MSMCRXcYHSSXTNxAq840MPIjsxCINue9nwuh
         sv6mmPbVIRpZI5C8KyfD6vC4jTHODwf3D1okq8STwuO6UHv1OvZlSVcnjvkIFTPFGz8h
         ZOy9i6oWinPaaJ9Z51Ns7+gbPU0lUvGL95/qwrzDdBqhUMQgHQ8W0+df+99/jzynCw4+
         c9TSENQaxuwpLmXWpfw1nXWBtB8pCDHQdhv7L57sYONQEdzAOERmmiXY2F5+wwE3AmAX
         Exbh41klrhIOPRxAABEBXQk7GBK1krsIxwcSoZhsJHU+luG0P7LEkQ+W39Qsqz1iafWA
         qGpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NZ8uIHQLAZob5cBExLh0XU6jlNRWLJkMjTCIHyYrXEo=;
        b=jrYuLcu7Dw07xfvpFkaR2uzZdY2X5UoBGqpq2SDix4wXdBbhywB0lPyZlzx3chkSM0
         UIOAP+n7sTwYtg2yjU/ep/GnZ7cObQnfrlShnWVqQ45XH4i8RRS/nfh01zBXTsc1Lelp
         w0R7V0L1kMh9CR8I/0ptdZWYp0z+8ft3hNT5952DBkBJuk1hKtFm4Qiuf4OOwOi3igPo
         IAoTWobNCspZAZKAzH63Extffob4/zGlxrB2CaekzyjF1A1CCigDO1/zLdQKLSQV1+8g
         HuK/6muSmOJm/syWbw5x+lgPFT1vxYZ4/CvcgOvcrxPOlbRXzcz1f2CNFCFUKLrHTONN
         I0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NZ8uIHQLAZob5cBExLh0XU6jlNRWLJkMjTCIHyYrXEo=;
        b=KWGIK/aTmY6QcxjjsvJ6XiXh9xJUtTy/ncZWh1lFFztgnxzrDZayDgnG/Zt3XoPZWH
         5OKQDsf/fGQ4A/L747k8V7+uI4AF0yWfZ+Xqk+O0aiwSUcR1AjUIWCZCqs8DiL/zQSkg
         yTmYyL5XyOgPgK8B65NST3Ohq0FI8wk4Hn7GrdJUNBSgnTGB5zd57ox3SQI5b8HjwMLn
         CTKpWogSaPYj7dCMEJGDFT8WinJHyHCvoM9uH0xr2X+JhXQV9ACDTUuKuu6MrGxjcSD5
         A3pXw44XN4bNwMckWgzKcqAIQ6V7EjWM5RhE4mIqUUMpaT3PAW7s1WAK/oJD8DeJ5BIm
         WIhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zEeu+cL2yXuPZoAciMo/BwZPzaesg7/SQHBihFDIHxXWYcuAE
	8bTVH042uLIPG7cJFXAe2RQ=
X-Google-Smtp-Source: ABdhPJzn8lOVwPv/5IBO8duNZyMqI1yvKPNg4xbVNudPS8YIHYiGlv8CfeYPgyRJzsKQNPiFh4VBfA==
X-Received: by 2002:a63:2163:: with SMTP id s35mr8195810pgm.224.1607101085595;
        Fri, 04 Dec 2020 08:58:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls4113800pfc.0.gmail; Fri, 04 Dec
 2020 08:58:05 -0800 (PST)
X-Received: by 2002:a65:6383:: with SMTP id h3mr8150046pgv.309.1607101085043;
        Fri, 04 Dec 2020 08:58:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607101085; cv=none;
        d=google.com; s=arc-20160816;
        b=weZFQIt0HmeVuQgNx+vNTF9l7KYOB1VJEpZQkyRPvIjQLatVcXDKPkt5geyxrNgaT9
         f1LjVItTwBDtiWDEGprbhzrd3e0fCmKf+YtCKSWljsm2bJSymXu7oAC8vNJpqurSYCRm
         WEk/71nXpY/rrjTz8qe8wWqSX1lmydGpalG1mqoYOvN3+EkCGXZ3vzLk85E726ywpQjG
         vPoKMIX2XI/6wzm9RhczEW0Cm0pKHVz+LY+3Uiwq3SEVXthUzTNFyCFAXts5e+UmMf0l
         RhuyCjyjFREd0gs9YDShrPicjnFJb/2e6BGWdGn1NJDG5H142Y6v0fDYqZYQNEjDK65e
         HGpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=EhKKPK0ZR5zpcmGsfB9Yn9HOicFa+DWjbLKhkMypVCk=;
        b=fMpdDA4lGLQWT3UOYn+kuVq5xY2+no4V3IJrqNgfzWvOJFVe1LKYCabQgpnzEkYGvb
         Z3zTtdkLmfH+Ik1Tzy49IYEw9coK+qFr7ECFEYe9yA1wSuSz0GQENkcqk7mCCx5CSETo
         b2AOiXx1mVXcuxmwxse8X4EVw2Ae0oz+7WkfYKfnGucJ1+Q5ByGAuZY+f1QFl0aE10Oh
         +0kcelDxU8W4VLt/fO6YgC+S09bAhOVCxsPgWwermL9iNIGF7ZP/1PoNCq5pIg5NNTbX
         +WKtPi37pvpPlBVfi/HN2W1BSa8HZx9QsfgnmoPvtT0QQTRKzJAhs+GoguHLa5uc41Rf
         okCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si643400pfr.4.2020.12.04.08.58.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 08:58:05 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Kees Cook <keescook@chromium.org>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/2] elfcore: fix building with clang
Date: Fri,  4 Dec 2020 17:57:34 +0100
Message-Id: <20201204165742.3815221-2-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201204165742.3815221-1-arnd@kernel.org>
References: <20201204165742.3815221-1-arnd@kernel.org>
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

kernel/elfcore.c only contains weak symbols, which triggers
a bug with clang in combination with recordmcount:

Cannot find symbol for section 2: .text.
kernel/elfcore.o: failed

Move the empty stubs into linux/elfcore.h as inline functions.
As only two architectures use these, just use the architecture
specific Kconfig symbols to key off the declaration.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/elfcore.h | 22 ++++++++++++++++++++++
 kernel/Makefile         |  1 -
 kernel/elfcore.c        | 26 --------------------------
 3 files changed, 22 insertions(+), 27 deletions(-)
 delete mode 100644 kernel/elfcore.c

diff --git a/include/linux/elfcore.h b/include/linux/elfcore.h
index 46c3d691f677..de51c1bef27d 100644
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
index aac15aeb9d69..dddf51266719 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -97,7 +97,6 @@ obj-$(CONFIG_TASK_DELAY_ACCT) += delayacct.o
 obj-$(CONFIG_TASKSTATS) += taskstats.o tsacct.o
 obj-$(CONFIG_TRACEPOINTS) += tracepoint.o
 obj-$(CONFIG_LATENCYTOP) += latencytop.o
-obj-$(CONFIG_ELFCORE) += elfcore.o
 obj-$(CONFIG_FUNCTION_TRACER) += trace/
 obj-$(CONFIG_TRACING) += trace/
 obj-$(CONFIG_TRACE_CLOCK) += trace/
diff --git a/kernel/elfcore.c b/kernel/elfcore.c
deleted file mode 100644
index 57fb4dcff434..000000000000
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204165742.3815221-2-arnd%40kernel.org.
