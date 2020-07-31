Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6WISL4QKGQE4JHRD3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7138B234DF0
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:43 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id l189sf5778085vsc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236922; cv=pass;
        d=google.com; s=arc-20160816;
        b=lqdI1+rYmX7jELEVKwKlGnLgzgXdqVR1WwI107fU+XTfojtkmJDPB8U/bQuU21J8Fm
         7M5pIV7sZLEUVmXdL/F+AXT+DNMnhspBfOyUfB/a4LTbfAzjw0klidXrMqBVzHjEHHqq
         Q9l7BpeGV8K7lEhtQoa3cPINh2kCRy99YUnEBwmCOjewcsCg80nbVHOk1qPBdeyTrSj9
         BmXSmdPE8CVhAn58KnD6NnpIjlptmS9yrYXNrngMkk/usJNWqRwhhlRXfRmdKTQhVmCV
         G9hvrpae1o5fVwpSRlFbmxhDee86bIIuvznu3p557o+XqC47SZcW4Ni7LNn23sODLW83
         GyEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=R7FCRVxXkCe3smmeeMxg9yH8GcUJKXdawnZgBH9ilMA=;
        b=n+lDJHSIPpc7n0KqELEaGGF79JeIKsh77TJGvlMi+EG/JhjZqYZq3Z8I9tQlD4OiLR
         UmkMTsqmteE2oUoYsA92sZvtM9R1x82NiX6xpDWrIAIVTzeh2RBKnxeMPUXumHQk8ImW
         ND+4uU2+TA4tAvMeHIPvCas5z1GjpcgyX5GzLEUt7iuECAZoWvYugNIWaeThzotx9Jvt
         Fztr91NZB8RNtcmuAxaa8dXqJww6bFxIG827MSBIKaNrqREdcZIlRfFGGXCKLMg4eRvw
         tvND//Kf+UUiaGLkFzludaDvvlOOTmeCPqsLeU3thegDhK7PZVQpVqR+M8Xdcq2zaZFa
         TPug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fsdMY+h/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R7FCRVxXkCe3smmeeMxg9yH8GcUJKXdawnZgBH9ilMA=;
        b=jjebQvgULM6DIkLm+xwjFttowE97ilMx34jPtdD2DDXhqmJGv87x+FNGpkjyOgoZng
         QkofWQzFKfXy/wZ4hz290Vj+sAZgWW5JldOJWi+RDi/jk1zrRIXmr7Rn35ACXG9U9GHd
         Xmjb+Tmz0Ym/ZxaGhwt6fNndLmn6SRK/3hyLeLq6eaN+TPsp8TURyinik695RZhGUOdt
         cdrEHbNvyRJLi40gUGn8YT1XrLNQq/IrleAzGQ9vqQe1py3G+jqcKQk0NnZ0AfkQ4Iwq
         IW/twaP3x0f8bmYa+y8u01+aepjz9Mdaswj+zmy9rmaZTVRrfyY4dAAT0iMMBTgaU9do
         6AXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R7FCRVxXkCe3smmeeMxg9yH8GcUJKXdawnZgBH9ilMA=;
        b=sBaPU5otplPbZwGIw4HnL6AAyhSHNq5McWu4ElFLJAbg2Oz32HHVDDJOu/xFX3RzOX
         b13VTZw4yvAxAQ3QjCkX3hGG50z29Tra57YNHeJYC+vL+w3aOJKOkbcTv0kkBYRPeFIx
         AqxZ4BkfjLYwXRNx2CLm1IVLvDUf0DHtthXvsJgeddHvvCvNrTL3QwUC4BwamroRSC0e
         ApUrfTxDzFrC4Nkk6iQ/WVzegto7T0RZQvukw6A3dLxDaqo02hl4vdnIvNLQnLR3PB0o
         sx4a/4pYp1B25qORYMELRRIfRxoSpCLw6rWFOG5kT+dYj+rhsTsZKkWib81mIAyAGD0s
         odxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yk0i5/9z9MtIvLdPKa26ys8g6ZLY1U9pIRyHYAbFfKcF3vnoy
	5ThTglSVhSOu+sVRYZayhEA=
X-Google-Smtp-Source: ABdhPJwsmj+mnRiwp6N+HEtA7w9dZtjh0CZSfdonaN3sIGYGcjDl7ym6XDWLRpSLNRwoeFqIYc10gA==
X-Received: by 2002:a9f:24d7:: with SMTP id 81mr4664199uar.68.1596236922160;
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:211a:: with SMTP id d26ls758512ual.3.gmail; Fri, 31 Jul
 2020 16:08:41 -0700 (PDT)
X-Received: by 2002:ab0:1d3:: with SMTP id 77mr2667219ual.13.1596236921861;
        Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236921; cv=none;
        d=google.com; s=arc-20160816;
        b=BH1b5qDbY2fVIC6ibkIZGvP4UVQknVPDQhmh3wJwA7F4c+1SpHn7PNees3VlkHSd1v
         7tFiaktXe3fwDQaBnTunL/6Vi02NGxbmwkRwK3i+NjWCFN97ntsS+7pPDlUAGLZj9Z4w
         d+P079ivBxODbPyGJFXaG8c/EGryPpbaLbFfep8NdzXEDQdYpp6pIupn2aqc/1f+6VHS
         y3AZPf4Cu8QyjXgmSC7hjS1O+GY+mWrAENdpNw9V+QqoTKZYiMeYKeuIg7YCTjvH8Xxv
         g+uP3QKM6J2zvbAQ2zN0JmlNe3qlt4t2fhurebbWpnP+OGx7h0v0T/zvN31+vqUZt1F1
         OF+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KU7M7UNmTUanucRcVkgs3oof+flMLCjuo6z/HYA95R0=;
        b=g2Or4yCvTKNdmdQCe2Q9QQVkPIEcdqqkVBC6fuB7ncFkwkGh0m2ZEWFmc2c3TTHLfn
         XJJe4LzUTpCCn3QMegjBNXVGOukCThsljlYmLrkNWDOkmWvCK0Aw5ogcHLKn1CM4P7t1
         GKniSlTDv8tRF62RA65PRa9qzZ7AaV2MbNg8E7li5NsrbVHQy8zXwiHUn/pecoChPsA/
         vEoOYjqSuLelqX/uPwJf6gsnxOgy9EWDFRNGpHxG4Jfvt9dU7OQtR6vAy2enRqcMQPFE
         IUsCezhXvg2Y8mAvhXYG5QylYFCia7RPztNAk8e/2e+3THiKdrKD2g+hnMu8Ky8qZBeW
         pNig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fsdMY+h/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s143si790329vke.4.2020.07.31.16.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t10so12767911plz.10
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
X-Received: by 2002:a17:902:221:: with SMTP id 30mr5688593plc.222.1596236921012;
        Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 17sm9984876pjl.30.2020.07.31.16.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Marco Elver <elver@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 10/36] vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections
Date: Fri, 31 Jul 2020 16:07:54 -0700
Message-Id: <20200731230820.1742553-11-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="fsdMY+h/";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

KASAN (-fsanitize=kernel-address) and KCSAN (-fsanitize=thread)
produce unwanted[1] .eh_frame and .init_array.* sections. Add them to
COMMON_DISCARDS, except with CONFIG_CONSTRUCTORS, which wants to keep
.init_array.* sections.

[1] https://bugs.llvm.org/show_bug.cgi?id=46478

Tested-by: Marco Elver <elver@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 22985cf02130..f236cf0fa779 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -930,7 +930,27 @@
 	EXIT_DATA
 #endif
 
+/*
+ * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
+ * unwanted sections (.eh_frame and .init_array.*), but
+ * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
+ * https://bugs.llvm.org/show_bug.cgi?id=46478
+ */
+#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
+# ifdef CONFIG_CONSTRUCTORS
+#  define SANITIZER_DISCARDS						\
+	*(.eh_frame)
+# else
+#  define SANITIZER_DISCARDS						\
+	*(.init_array) *(.init_array.*)					\
+	*(.eh_frame)
+# endif
+#else
+# define SANITIZER_DISCARDS
+#endif
+
 #define COMMON_DISCARDS							\
+	SANITIZER_DISCARDS						\
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-11-keescook%40chromium.org.
