Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBXU7UXVAKGQEZ5INO4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D7582F31
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 12:01:04 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id i6sf34290194oib.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 03:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565085663; cv=pass;
        d=google.com; s=arc-20160816;
        b=B0OhlNpMryjszjMerzJbHxcqwmGNTPCHHulW4D1+45f66eeWYUk8GN8SYGxiSULKhb
         3TipOKcPKtTvTmEUlfgFxcJJGf3g070RorELnOotOBWMBnVkbp8WlSXX7D/BRx7Y33tZ
         gyMmJoUnXMYPhpfZI99ZlLvDxyn0PAQTkbiHarEp/0TUwRPcaR9WGvGqPP2jKoo28u+z
         /rVeFw6Wi9lCFjQ4Q5DJgO2Mfay5pi4jGTLUNigWlsqFWi0n0NmKI7RSMFkh+n4MEn8h
         fLVAEvOu4ALD6bvmCALmPTh+Snn3a7OlMoBs0kwSZC6hUGCjY9b4EezfmNDBhkuJGAv0
         6cLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Sl8h5UVJ4Tq67iiicKe5oYIYJ6IJUlSxwlkhevzw6HE=;
        b=o9MHU5TgqEIFANTBqTRi8iQfb59wDEjK0ngI3H1zagcoojszTJFS8jabA3m2wCjJnr
         rVS8xcIg+C07gI/TFCD2tcgQZm1iihjJsUGH/4mF407zUDzABU51blCBVf5WYAbk9VEM
         5nb1Btx27m6I0PuF1SAxD2XrhnN187vKOEsjoTkiDVMGS0rmzHIG/mGrB2pd/cHDnyG/
         b3s0YV86HMZqLMTqXrbtGMWKtErtk1AKrA6tvocgd8KJQXKHMBfpRdlHam8bWyO3GwsN
         0cRG2U8/96M5e649Dr4SgoLe8aqHiLJcuVvgw93RL2U8rxFgy34Xt7y6KA9H15MTtmfh
         +5NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Un6oFivG;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sl8h5UVJ4Tq67iiicKe5oYIYJ6IJUlSxwlkhevzw6HE=;
        b=Y3zN0Pm1MzgkQVHC53LZaN76ELoOF52dGXxQMzcDx3SQ28cPicMHndIOXNxsrFu22H
         iro/qg7wmqnyNpJf9pSu/sRlakEEy4aCeQsKGMKD1T/7/xR0HBrhDg7UIF25328jRjFG
         +pjqB4gwbR4QOyXnYkJkqlUAc9Ny7rlf05smF1vwJggzT2YEvBvbM0I1Aqt/bp/ZS1UR
         YAQ3sGULclzZy2F0voHHejwtF+ReJRyyyVNsJpgrctWnMTdSMCBjFav9ALI7g3gKSlHc
         iVlCYEKu0ExwiFLU1gNH/Z7jh9JaONRswPwpeicGmqbbwHwpOyx6kH96mITJYrLdvQy7
         PkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sl8h5UVJ4Tq67iiicKe5oYIYJ6IJUlSxwlkhevzw6HE=;
        b=aBGwtnynBr0YOYkT08CsPR7+hQBfVGrptsXTUrqYgrZO74jeU03HiX9mleWQyaeWeD
         fMQ8fZgKLDG7hxCrOPRH53s1VsJpYIhAREGv+gYzejz9C2VVwPngK20QsOqKBHZLikqG
         JxqGQ1wp1msDnGdGRSqwhw1blVm18cKOrqHCXOcH4eWZgg3Qv1+g0wA8t+DeixTOZDWX
         z0fWv+4PAdxEHaRqw9KOcyIYEl8jiNlYol54HBTB0Lr8GV/tYN5/51F3JvjUqQpPTlIU
         xj5W7sdN4X/5KEBAdTlDv8MQ31hFw2YadhNi8wcrZoo5Mr3Sm7iTJzmOZI8hu+t9q6BZ
         qdOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWbm5dr9Igh9dVUvQZkfzSiTOpVchs5nxrc4zI5rF3TuKE9ymCR
	6slcqDJLqTGbLmRx5m3dQTo=
X-Google-Smtp-Source: APXvYqzKzra/6z98cfWALZQA6kZfhtED5545dZFKSztbv9MatLBdDjO6ddN4bKftumojssO1F128gg==
X-Received: by 2002:a9d:6042:: with SMTP id v2mr2093264otj.73.1565085662879;
        Tue, 06 Aug 2019 03:01:02 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12c3:: with SMTP id g61ls988562otg.16.gmail; Tue, 06 Aug
 2019 03:01:02 -0700 (PDT)
X-Received: by 2002:a9d:7a4e:: with SMTP id z14mr2566747otm.258.1565085662574;
        Tue, 06 Aug 2019 03:01:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565085662; cv=none;
        d=google.com; s=arc-20160816;
        b=BmWP7KL7QZnx3TeAi3DyVt7GdbUlZsPLud/APKM2PaJp4Sumxpj+TOv5ylPiSYe134
         DaFxv7ZXSnxXP8cHCRPqOChw0NL5CjKU929WAs8RnLZ+ktug6ntrFfx9uTK3mJDg8fzD
         yj0tqJtnFq8pcEPjyt8LCRuNKW82C8XHByLfvLeT+1sMoKLOE9/iytYTbrcQCw9Qac2A
         hTeVSUDkieu+L8UarhfI54V4FQzodZ5GCmrgbwfGHGTtxNFOa3/F0C7ENFouWT4MsYJy
         X+6Wm5AxuvTuiADs0lfPIKByo7vny3y5Om86CnYrnpHmb0oXxyA2tO/9190pomZw7CsT
         BW6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BrBBFjqsIPWSTPOwNEcUeajfoMogUhxNa7dexawAwRQ=;
        b=AL+NCbP4CfzsNQq4cHEUUB333mcaQYzxYLTiI82EqyAxSepzrqitwmD1qMbrS+G56M
         N+uo/hgUhqpgSoj3F/9VknIsaZG2BZkXZLqSU19CXuInS7pjo/1CFrVvGmgEYAJgaxXN
         Z9wURGZhrDTS4it1wdJcz3wJUuNdSo+L17VpQn0+rNi6t4OL02KjiOd0PnWfni5qiJxZ
         1wA9m5fa7n3HV5VwQq81wDXzxQklvVdQ1fRMFYFEUe4bSERDESmEXau78pHuNKCuwR9T
         3EunUSAOThA9GeQto/WmGyUwy3xR+EIunS8gcJXhUWfPOKP6+sOh0Qp/ir8oPBsKVLWF
         lU9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Un6oFivG;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id p6si4815049otk.5.2019.08.06.03.01.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 03:01:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id i1so23097526ybo.4
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 03:01:02 -0700 (PDT)
X-Received: by 2002:a25:8410:: with SMTP id u16mr1788923ybk.466.1565085662057;
        Tue, 06 Aug 2019 03:01:02 -0700 (PDT)
Received: from localhost.localdomain (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id h12sm18316685ywm.91.2019.08.06.03.00.53
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 03:01:01 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>,
	Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-arch@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v2 1/3] error-injection: Consolidate override function definition
Date: Tue,  6 Aug 2019 18:00:13 +0800
Message-Id: <20190806100015.11256-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
References: <20190806100015.11256-1-leo.yan@linaro.org>
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Un6oFivG;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::b42
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

The function override_function_with_return() is defined separately for
each architecture and every architecture's definition is almost same
with each other.  E.g. x86 and powerpc both define function in its own
asm/error-injection.h header and override_function_with_return() has
the same definition, the only difference is that x86 defines an extra
function just_return_func() but it is specific for x86 and is only used
by x86's override_function_with_return(), so don't need to export this
function.

This patch consolidates override_function_with_return() definition into
asm-generic/error-injection.h header, thus all architectures can use the
common definition.  As result, the architecture specific headers are
removed; the include/linux/error-injection.h header also changes to
include asm-generic/error-injection.h header rather than architecture
header, furthermore, it includes linux/compiler.h for successful
compilation.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/powerpc/include/asm/error-injection.h | 13 -------------
 arch/x86/include/asm/error-injection.h     | 13 -------------
 include/asm-generic/error-injection.h      |  6 ++++++
 include/linux/error-injection.h            |  6 +++---
 4 files changed, 9 insertions(+), 29 deletions(-)
 delete mode 100644 arch/powerpc/include/asm/error-injection.h
 delete mode 100644 arch/x86/include/asm/error-injection.h

diff --git a/arch/powerpc/include/asm/error-injection.h b/arch/powerpc/include/asm/error-injection.h
deleted file mode 100644
index 62fd24739852..000000000000
--- a/arch/powerpc/include/asm/error-injection.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-
-#ifndef _ASM_ERROR_INJECTION_H
-#define _ASM_ERROR_INJECTION_H
-
-#include <linux/compiler.h>
-#include <linux/linkage.h>
-#include <asm/ptrace.h>
-#include <asm-generic/error-injection.h>
-
-void override_function_with_return(struct pt_regs *regs);
-
-#endif /* _ASM_ERROR_INJECTION_H */
diff --git a/arch/x86/include/asm/error-injection.h b/arch/x86/include/asm/error-injection.h
deleted file mode 100644
index 47b7a1296245..000000000000
--- a/arch/x86/include/asm/error-injection.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_ERROR_INJECTION_H
-#define _ASM_ERROR_INJECTION_H
-
-#include <linux/compiler.h>
-#include <linux/linkage.h>
-#include <asm/ptrace.h>
-#include <asm-generic/error-injection.h>
-
-asmlinkage void just_return_func(void);
-void override_function_with_return(struct pt_regs *regs);
-
-#endif /* _ASM_ERROR_INJECTION_H */
diff --git a/include/asm-generic/error-injection.h b/include/asm-generic/error-injection.h
index 95a159a4137f..80ca61058dd2 100644
--- a/include/asm-generic/error-injection.h
+++ b/include/asm-generic/error-injection.h
@@ -16,6 +16,8 @@ struct error_injection_entry {
 	int		etype;
 };
 
+struct pt_regs;
+
 #ifdef CONFIG_FUNCTION_ERROR_INJECTION
 /*
  * Whitelist ganerating macro. Specify functions which can be
@@ -28,8 +30,12 @@ static struct error_injection_entry __used				\
 		.addr = (unsigned long)fname,				\
 		.etype = EI_ETYPE_##_etype,				\
 	};
+
+void override_function_with_return(struct pt_regs *regs);
 #else
 #define ALLOW_ERROR_INJECTION(fname, _etype)
+
+static inline void override_function_with_return(struct pt_regs *regs) { }
 #endif
 #endif
 
diff --git a/include/linux/error-injection.h b/include/linux/error-injection.h
index 280c61ecbf20..635a95caf29f 100644
--- a/include/linux/error-injection.h
+++ b/include/linux/error-injection.h
@@ -2,16 +2,16 @@
 #ifndef _LINUX_ERROR_INJECTION_H
 #define _LINUX_ERROR_INJECTION_H
 
-#ifdef CONFIG_FUNCTION_ERROR_INJECTION
+#include <linux/compiler.h>
+#include <asm-generic/error-injection.h>
 
-#include <asm/error-injection.h>
+#ifdef CONFIG_FUNCTION_ERROR_INJECTION
 
 extern bool within_error_injection_list(unsigned long addr);
 extern int get_injectable_error_type(unsigned long addr);
 
 #else /* !CONFIG_FUNCTION_ERROR_INJECTION */
 
-#include <asm-generic/error-injection.h>
 static inline bool within_error_injection_list(unsigned long addr)
 {
 	return false;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806100015.11256-2-leo.yan%40linaro.org.
