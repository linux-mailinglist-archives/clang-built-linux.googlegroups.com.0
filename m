Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6UA5WDQMGQEWW6DIBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 857553D42C8
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 00:19:40 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id k11-20020a170902c40bb029012be3f5cde0sf1191991plk.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 15:19:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627078779; cv=pass;
        d=google.com; s=arc-20160816;
        b=fdRIcduPB0zmhx0JUeg4NWElNVZJ3kbhJvv2opDqPfX6Tw7BBXJdO98iGLYgtIfdAi
         iOMkmRgCgDuEoNHSgxdFf+CJteCLh2bN2wKgR3dk5Yxi+IJtjncDL16aqeAcbpQV3vII
         Bz7i2tHj0Zb/hONTET9FGDApaij3S7UQCs+9YZ/YeF3p2g8XG/ZfBgObWRcDJH0jx5Nx
         AmWH3X3D/rJX0T2/+b6N0HAoIAJtZkaci5gaDpMsF3Ki1YBoNvkPwR15znycZhgiIsq3
         U/+HtkC2PIOCKdCAsUqX8KsDpuZy8nRY1qn6/7iqQtUvPzzg1+Q5DL9SNyD0jddPFTBS
         aO2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3ZRYTK6qd3ub759NOrhQ4LPSHm9LYl3kOOAAsT+7Ong=;
        b=ULXJCGMOQoxZEGQdydLsTd8PZCcbOLMX0gz/LQqFgQIOtcOa6eO+qT7B/aRVQOjAzl
         lCZBAPXN6AseyHrytaFIvPOvt71rJxH5dlTcaU0MZZ/cfoLd1tgWIQF1YqLm8MSsZ5H1
         flYIfviXBeN4hvo718Or6b7PF/e0Pyw5gIhe8h9AwjJ19VlEl7ZAiK3d4VlbxHiMi/kW
         ovs4JIKxgg3cLO33WHUdxebIsSvhV6X3arKOdmAP0M0WtPM+PnobdMvpBdunsa3HWb8+
         OTSw8LJYf1ibn8i/IRXmg64X1rK6P2P7ns7hA97v+aH6v1SZsJ/lXo3LNtzb3tFjpQL1
         4K2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="LmAU93//";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ZRYTK6qd3ub759NOrhQ4LPSHm9LYl3kOOAAsT+7Ong=;
        b=MLKbBp6FHzUp6jOkB1QWtp61DMyh43jKawjKMVHwBjWiRN/VaXyaz0jPu0UvuQkEKt
         +4CSeuVe0pqKnSrbt2NbohPkVJkNpXBjHPx5lUuka4KCDZDXOeqFpAdtTr+oRfca4tdM
         NVSdwTVGQuZwYfItk0fgaKoD2udwPVyUt1+Bjou1qwupIZsG+Bun2qBrjwsYLEKNxb8s
         +5nF7O3lNJoolKoLqDdAMMr/x2ZY1bmIveojFLs7EWMC2xw0QA2zFsgHfFrb34KBkzCt
         LfqAQcZNWaNXLgPdkO/SlOrPEgIbm6Ncvwv2yPkpnaEvC3cYZ2VNe3ebnaF7yszol7XQ
         K9TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ZRYTK6qd3ub759NOrhQ4LPSHm9LYl3kOOAAsT+7Ong=;
        b=py17leU7QDKSkdKgVJtHlFFznwe3MC0TKjE2lAKMNRQ+ZwC/E6Msia85kHwQSaL9+Q
         GQzrRh4Y46NK/NSM1ZktK/uhepZJAdjr+ljtj/Pt53biQqhTkk5l2lr40xnju84jNlO6
         mI7RBm38DpMsVsTyuic4/h+MmOTGq0PtuL3sOUFWHhcadZi09zC7dKhFkzjwXEXbpFlW
         Z/aN9emFfdt9tIBvCFXBTb8e/+prf7Tm4te79S5TN+dF/jGyyaSaLo7qk+Wz2ovuwxNV
         sGe3mBtLaNNws7NR/iJfFlhAxK22DsezJTc6diF4AWGS/7PYEfA+jmesF526m+ynpEmI
         3w1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TV9CwxzgWV1RddThupn+5JIOOed03q+VUJIcVOAiGJOdD3R9l
	/eaC0YqV2c/5tj+6YUXBlHY=
X-Google-Smtp-Source: ABdhPJzNnwTOXuvX9WzT2oO+Dmz4CcSKYN1ix1oIxYGVlDG/RkVc6cU+74jhcUXf5Rvzjo+2hE57vw==
X-Received: by 2002:a17:90a:1109:: with SMTP id d9mr6409851pja.183.1627078778923;
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6893:: with SMTP id e19ls5394828pgt.2.gmail; Fri, 23 Jul
 2021 15:19:38 -0700 (PDT)
X-Received: by 2002:a62:dec1:0:b029:32d:1f6:3890 with SMTP id h184-20020a62dec10000b029032d01f63890mr6397739pfg.13.1627078778384;
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627078778; cv=none;
        d=google.com; s=arc-20160816;
        b=UQ9EOQ+lIdctLALm9MFkN8yTNFPqHsJhcAicdKqt9PWXulAZeA4iS0Nunb+M6zIw45
         EyEXf/+MhjnZCcdel7PHK/E1+11cElx7CG9sgwskoUm5xaFesQV7NJLpAOIfKzHN0ZMB
         O5HIwoFv9jcAmkgEV3Cwzvu7dTGSooV8VxnpftuefeteejIYKoXW1+IOP0KphRKrj0VE
         TbWDUD/qjyoZwjBW/5RYOOiMU+hLA1et1cVTIbkB2uIayvQZKJXIK45eS4CB1egb4Kg4
         vATMM51IL1SF0Ix7hJiGwREhvfyqqsdMPSKBMkx8zWsl2MMURiyy5lMcJzld8JmeVK9v
         cY+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=X/ASYPs7VaNj0QAq9RJIUt4E8PSy8bEnQSnLutDDnAs=;
        b=J8ooUw+O7DUtRusgFhXePdEGj0daTWMWoA0iLQ3IvjbfjB8Z2zHQx1gm49MbQ2wVcy
         o5f8TQ8nDwYnLOJGJXDM1DKuRi0lerVJMjNuL8/kLLju+dYgxQqLPQMFczY53RyF2o8Y
         GXiGI/zgMpb7siCU+0uiC5fexwiFdi3fJrJAmQqoj/Rcz1oWnYEXZyHnkHP7a+8Gw/ym
         rivEAReQMw7fcfkmGykHZ4aPANXti+mHVB/2qtiDt1sYgZ+BnYSUn8fQTBZfi1OJwIDs
         A49Y77rv7rMA224713T3S8jgGfaGdenPFezYJp5gIC88XIdADtObcKnGEnTSDc0kIvqB
         LX1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="LmAU93//";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id j24si659525pji.2.2021.07.23.15.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id e21so201320pla.5
        for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
X-Received: by 2002:a63:fc02:: with SMTP id j2mr6853691pgi.235.1627078778184;
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v10sm6646111pjd.29.2021.07.23.15.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:19:37 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/3] lib/test_stackinit: Allow building stand-alone
Date: Fri, 23 Jul 2021 15:19:32 -0700
Message-Id: <20210723221933.3431999-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210723221933.3431999-1-keescook@chromium.org>
References: <20210723221933.3431999-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3737; h=from:subject; bh=3lYzQ022kqofeiv8Bxt7mX9QNwglkjHSyWGR3RJjA7M=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBg+0B0h5Kxky4JEE+qagiTFCrCVbncY0VpuCZ+26tb Hyh3146JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYPtAdAAKCRCJcvTf3G3AJmXREA CqKTlQGiMX7fbKVqtxQHoA8w+R1fnPSzpcyipP0/LRNzXhSEU2t4L4OewSofLyk6r8q+5efLnfbCpr eWZDvgl2cbAYrbHtFKqqmerusuYxt5Zn5Rlxt29pguPzNh/qkjxmFKdFOI6FqSne/Z+ukuBX7KpSFf KJHs+y3xefTotd6IR7vz45DzBPzXsmcKjhziAdGaIgv8UwgyXEDeBeBLjnNzoWbamukwlPmO4e6OOY EQXW94EmgaZ/v2tEDojJiBH5KHOlc1hx77h644IC3XbZOq0jJR5KznIsBpEfeSufnaCM0KH0PigwoJ PiunnpoNHnGoiQxFW/RNbSEvVVE5LHLmP0GLq1f97GPEVUdRc6Ntr56xtiivEF0qVSdVZNONUS9vhm zxLVb+XrQCyDOfl12ZTEVA4MpP3AiBVhYwLek5R2dUdT6XbjgScJW4NGx95fSekZordWO7bCKIRzHx 5VyiXxLhopj81NLDCAk5PMlfbgGtEExWtkjzRAGFoAQklBAU7BU7X1t1hhe5TzL2oFA/2Fy7lmXcd9 XR0lQNMoPGcafC3iGoimjij9YgqCxK+bYZLcfWZPOKc+q8t6WQFORHTlPLqMn4v+sLqwJu2lVk7mRk 6vH4Cw+aCoOpDPhA+ebQXJyieObFH/f8ULdDMFxvDxHI59+5MIe5mj1WJbcA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="LmAU93//";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
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

Especially now that GCC is developing the -ftrivial-auto-var-init
option[1], it's helpful to have a stand-alone userspace test for stack
variable initialization. Relicense to GPLv2+ (I am the only author),
provide stand-alone kernel macro stubs, and update comments for clarity.

[1] https://gcc.gnu.org/pipermail/gcc-patches/2021-July/575198.html

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/test_stackinit.c | 71 ++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 68 insertions(+), 3 deletions(-)

diff --git a/lib/test_stackinit.c b/lib/test_stackinit.c
index 16b1d3a3a497..e2713b639873 100644
--- a/lib/test_stackinit.c
+++ b/lib/test_stackinit.c
@@ -1,8 +1,13 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * Test cases for compiler-based stack variable zeroing via future
- * compiler flags or CONFIG_GCC_PLUGIN_STRUCTLEAK*.
+ * Test cases for compiler-based stack variable zeroing via
+ * -ftrivial-auto-var-init={zero,pattern} or CONFIG_GCC_PLUGIN_STRUCTLEAK*.
+ *
+ * External build example:
+ *	clang -O2 -Wall -ftrivial-auto-var-init=pattern \
+ *		-o test_stackinit test_stackinit.c
  */
+#ifdef __KERNEL__
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <linux/init.h>
@@ -10,6 +15,62 @@
 #include <linux/module.h>
 #include <linux/string.h>
 
+#else
+
+/* Userspace headers. */
+#include <stdio.h>
+#include <stdint.h>
+#include <string.h>
+#include <stdbool.h>
+#include <errno.h>
+
+/* Linux kernel-ism stubs for stand-alone userspace build. */
+#define KBUILD_MODNAME		"stackinit"
+#define pr_fmt(fmt)		KBUILD_MODNAME ": " fmt
+#define pr_err(fmt, ...)	fprintf(stderr, pr_fmt(fmt), ##__VA_ARGS__)
+#define pr_warn(fmt, ...)	fprintf(stderr, pr_fmt(fmt), ##__VA_ARGS__)
+#define pr_info(fmt, ...)	fprintf(stdout, pr_fmt(fmt), ##__VA_ARGS__)
+#define __init			/**/
+#define __exit			/**/
+#define __user			/**/
+#define noinline		__attribute__((__noinline__))
+#define __aligned(x)		__attribute__((__aligned__(x)))
+#ifdef __clang__
+# define __compiletime_error(message) /**/
+#else
+# define __compiletime_error(message) __attribute__((__error__(message)))
+#endif
+#define __compiletime_assert(condition, msg, prefix, suffix)		\
+	do {								\
+		extern void prefix ## suffix(void) __compiletime_error(msg); \
+		if (!(condition))					\
+			prefix ## suffix();				\
+	} while (0)
+#define _compiletime_assert(condition, msg, prefix, suffix) \
+	__compiletime_assert(condition, msg, prefix, suffix)
+#define compiletime_assert(condition, msg) \
+	_compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
+#define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
+#define BUILD_BUG_ON(condition) \
+	BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
+typedef uint8_t			u8;
+typedef uint16_t		u16;
+typedef uint32_t		u32;
+typedef uint64_t		u64;
+
+#define module_init(func)	static int (*do_init)(void) = func
+#define module_exit(func)	static void (*do_exit)(void) = func
+#define MODULE_LICENSE(str)	int main(void) {		\
+					int rc;			\
+					/* License: str */	\
+					rc = do_init();		\
+					if (rc == 0)		\
+						do_exit();	\
+					return rc;		\
+				}
+
+#endif /* __KERNEL__ */
+
 /* Exfiltration buffer. */
 #define MAX_VAR_SIZE	128
 static u8 check_buf[MAX_VAR_SIZE];
@@ -279,6 +340,10 @@ DEFINE_TEST(user, struct test_user, STRUCT, none);
 static int noinline __leaf_switch_none(int path, bool fill)
 {
 	switch (path) {
+		/*
+		 * This is intentionally unreachable. To silence the
+		 * warning, build with -Wno-switch-unreachable
+		 */
 		uint64_t var;
 
 	case 1:
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210723221933.3431999-3-keescook%40chromium.org.
