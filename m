Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYMUXP5AKGQEPTMGRYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id CA22525A167
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 00:25:38 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id i18sf515133uaq.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 15:25:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598999137; cv=pass;
        d=google.com; s=arc-20160816;
        b=cvTVg6fTzhIyUHr9Be1eOfhRPCOu1NMzqzPwGd4glITDlx8gmtAl1Hb3ZvUKdI8Bhl
         10+qX/bz5BLa7/mrT5px2xHz++gqkvFjnvOoPcDZfPBv3TY5Y8By+6uZQ35S5llbu+nY
         xtFLS0MYgWbSGSe4S4Uqcq7Mk1TKm/yHHeJJ2O2Nmi/OxfYIEd44d58GPcwFBf8dlEAC
         MIEuYqZucxFz3bojiNyy/s63vgbWOTvsYtuo+CgOOP6C7PJwl8Dwh8t5j2DvliZpV4yV
         /eybYh4l6BbwdZSK9+Dm4sbFUaAkwm+Kf79Upj/RZ1VEa221935zD0J8whdQITOt7ZgM
         XmFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=YcW11vdwzGm0gVpN6ZNAQSuiBzAJ/ROuYruefpyPjzI=;
        b=IYChZQ1CljmFluuviNFR+pCd2q3rTUbbZUWKfmQy1+AX3Sucft/RSzu/rAbEzclWT8
         6UidzP2f3VYUxqOA0GQG2WxV1CIjq9Lp/+lu821vLneQ5L6cKFtABj0ui8H30N36Zcw5
         WOq2tasrQWpk07LpdijnZ6aGFo9g7ESO6a0fzX8nNU/GmsU2C7SBx9dPFeMywxb+SGoj
         fu0tQZB4eqKGwJrdTg1rP7iWMywwjzwl/OcBbYnbFZXbZLEWPBkMoJcXh9Pnulc6IJ3J
         NesI7bjN9riRKGv6POWQ6iqoXjGsq1DUzAzN28H/9wm9tWFn7U70F06ophzxfgywpazE
         CVcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G1fcxj7N;
       spf=pass (google.com: domain of 3ympoxwwkadeaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YMpOXwwKADEaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YcW11vdwzGm0gVpN6ZNAQSuiBzAJ/ROuYruefpyPjzI=;
        b=jihQBuZP+KWXrvHvoDETi4In2EwVsuMeA/KnfqyRCU00SzS9WNFwxY4e/IVKmwbp1A
         D8Q3nJNEzkgX+uOF82yjb+wQkIh57YZqj7CrwUZAFsxiWxOc/Il+xCgjemHhgLweD0Bk
         +zJrO5TR6IuOFvE/yQ73z6ufQHbTijUJWRSq08CALZ8iLCaS+L2aRm7JjKdcUSZ/Zudj
         Pp0Kk2eEosFZGN/yBRzTmDEGpfqOnJSqWb4L+I6C09jPh+wOf3RBm2pnN2YEwqjzLxof
         nbrdiXLD1W+T6zuSvVMy6uWHFOGx0aGfOvCLdnB7W8C1tPvfYrOMiltO18EjyFCkUVrO
         KKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YcW11vdwzGm0gVpN6ZNAQSuiBzAJ/ROuYruefpyPjzI=;
        b=o7F4GbLNtqKsqwjJ5K5RbRd/WKMkWXLilRPCL7iPPfM/LnSLnh4dmHxKntfKCJ8g2Z
         /gEeQy5UJ3+3Rr/uDW5X+kGOGQeb9g8UlhXc/LGsjmg9SzYNAi/ImuZ9QMb+NIWAuMkm
         B89XwxdsnXiq7KauCno5WEBA0pnFI4xUZ78tDG+lz61C27bA5joorAEljnt0z/rhhdAc
         O7ZRy/obhsUT8LKz65xiwvU82tJFQ1t7z3Ia2iNffh1SrfriMV6OwuoN5YwemW5B2IUC
         W0gKYuweGglDLPMDvmcOVDAb73iyA8CFCBk0m7U50ujfaH+1WYIbVvXgGJ6wFE+AhIEK
         yM2Q==
X-Gm-Message-State: AOAM533LRL2QjPDA3ltkGNgT4OCSDd+A5jyh1xkcLclSqJHdaINCzgqi
	FgNMEvuUOFBtbO6FMClDSLQ=
X-Google-Smtp-Source: ABdhPJzhgQiu5+y30ktYHZrMvRC0TLUYa0qmPS/FR1SUdRaVBMNHo5DC2sRl/XIxj6hZvym87XRUgw==
X-Received: by 2002:a1f:d6c4:: with SMTP id n187mr3555965vkg.65.1598999137582;
        Tue, 01 Sep 2020 15:25:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c295:: with SMTP id h21ls16306vkk.5.gmail; Tue, 01 Sep
 2020 15:25:37 -0700 (PDT)
X-Received: by 2002:a1f:ecc3:: with SMTP id k186mr3448235vkh.26.1598999137296;
        Tue, 01 Sep 2020 15:25:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598999137; cv=none;
        d=google.com; s=arc-20160816;
        b=rTO1KXsi6yBjfNAnVcVjR0KD5E1eQM02AHCyVC6INuLTgo9OD0hOuzg+FrnEOIHwbA
         1gZsR09/gAvFeubDwg/Gp0QQj2RAQJLAuIKfxFx/T5M5WY3jhgqZFxAbpPSaVcLasjj6
         jznedZ+V5N+w0NEE32g0RRPQ2fgk8Fu2BaOVYufIMsr3Rdp2QDjhbBqYZiqRJmUyKOfD
         s5mz8onVkVv8/OJc10Td47ebZlocgjPKKMa+H1l/YfVg0br6e/dAmr/yLlWBe2dYAWi7
         nwhuzacYdnFi2kuvpgO/GnSItL4syQeyDkFcH4ANeqdqRGJZ3ietTLS7A0Mj+tlfFCSg
         ktIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=1Vm2QqyX/OUi6RR2IULKGjS+daCT8Blmd+/gKY17G40=;
        b=pV6TfPrA2QSEaycLxdxhWeDhbtft7Bd3i2689/Poe0xSEkc5jpLvzCEO+lwIRdlMDB
         KPbroHKtXKa8f4dii/EtM3ceoxRNExji9O+A9F0hUUgBM4egfJlhbeKKTBXONgcoPRkt
         tT9EnVH3uPQFB2F2aQMu+8DXXHfrR/oj/9YuP8MaRICM1C2MGG+AG6O354fpxsJ4Xca1
         n821qcRcwK+XRchevjKOveJhq+eq7mo8URRIiWlQE2ePPqwA9j+PBe0UKTXLNIUWg0W8
         Kg0vckPsEz25MRbyoiVWjqinWYsF/qzSJ0X4/1G8wqI8/rb82hpDAoFj5cFJAlyJpi4e
         CqVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G1fcxj7N;
       spf=pass (google.com: domain of 3ympoxwwkadeaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YMpOXwwKADEaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id t1si85586vsk.2.2020.09.01.15.25.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 15:25:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ympoxwwkadeaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id p138so2812173yba.12
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 15:25:37 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7509:: with SMTP id
 q9mr5300885ybc.317.1598999136478; Tue, 01 Sep 2020 15:25:36 -0700 (PDT)
Date: Tue,  1 Sep 2020 15:25:22 -0700
In-Reply-To: <20200901222523.1941988-1-ndesaulniers@google.com>
Message-Id: <20200901222523.1941988-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901222523.1941988-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Joe Lawrence <joe.lawrence@redhat.com>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Kees Cook <keescook@chromium.org>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G1fcxj7N;       spf=pass
 (google.com: domain of 3ympoxwwkadeaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3YMpOXwwKADEaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Rather than invoke the compiler as the driver, use the linker. That way
we can check --orphan-handling=warn support correctly, as cc-ldoption
was removed in
commit 055efab3120b ("kbuild: drop support for cc-ldoption").

Painstakingly compared the output between `objdump -a` before and after
this change. Now function symbols have the correct type of FUNC rather
than NONE, and the entry is slightly different (which doesn't matter for
the vdso). Binary size is the same.

Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
Link: https://lore.kernel.org/lkml/CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com/
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/powerpc/include/asm/vdso.h         | 17 ++---------------
 arch/powerpc/kernel/vdso64/Makefile     |  8 ++++++--
 arch/powerpc/kernel/vdso64/vdso64.lds.S |  1 -
 3 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/arch/powerpc/include/asm/vdso.h b/arch/powerpc/include/asm/vdso.h
index 2ff884853f97..11b2ecf49f79 100644
--- a/arch/powerpc/include/asm/vdso.h
+++ b/arch/powerpc/include/asm/vdso.h
@@ -24,19 +24,7 @@ int vdso_getcpu_init(void);
 
 #else /* __ASSEMBLY__ */
 
-#ifdef __VDSO64__
-#define V_FUNCTION_BEGIN(name)		\
-	.globl name;			\
-	name:				\
-
-#define V_FUNCTION_END(name)		\
-	.size name,.-name;
-
-#define V_LOCAL_FUNC(name) (name)
-#endif /* __VDSO64__ */
-
-#ifdef __VDSO32__
-
+#if defined(__VDSO32__) || defined (__VDSO64__)
 #define V_FUNCTION_BEGIN(name)		\
 	.globl name;			\
 	.type name,@function; 		\
@@ -46,8 +34,7 @@ int vdso_getcpu_init(void);
 	.size name,.-name;
 
 #define V_LOCAL_FUNC(name) (name)
-
-#endif /* __VDSO32__ */
+#endif /* __VDSO{32|64}__ */
 
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
index 38c317f25141..7ea3ce537d0a 100644
--- a/arch/powerpc/kernel/vdso64/Makefile
+++ b/arch/powerpc/kernel/vdso64/Makefile
@@ -32,9 +32,13 @@ $(obj)/%.so: OBJCOPYFLAGS := -S
 $(obj)/%.so: $(obj)/%.so.dbg FORCE
 	$(call if_changed,objcopy)
 
+ldflags-y := -shared -soname linux-vdso64.so.1 \
+	$(call ld-option, --eh-frame-hdr) \
+	$(call ld-option, --orphan-handling=warn) -T
+
 # actual build commands
-quiet_cmd_vdso64ld = VDSO64L $@
-      cmd_vdso64ld = $(CC) $(c_flags) -o $@ -Wl,-T$(filter %.lds,$^) $(filter %.o,$^) $(call cc-ldoption, -Wl$(comma)--orphan-handling=warn)
+quiet_cmd_vdso64ld = LD      $@
+      cmd_vdso64ld = $(cmd_ld)
 
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
diff --git a/arch/powerpc/kernel/vdso64/vdso64.lds.S b/arch/powerpc/kernel/vdso64/vdso64.lds.S
index 4e3a8d4ee614..58c33b704b6a 100644
--- a/arch/powerpc/kernel/vdso64/vdso64.lds.S
+++ b/arch/powerpc/kernel/vdso64/vdso64.lds.S
@@ -11,7 +11,6 @@ OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
 OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
 #endif
 OUTPUT_ARCH(powerpc:common64)
-ENTRY(_start)
 
 SECTIONS
 {
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901222523.1941988-2-ndesaulniers%40google.com.
