Return-Path: <clang-built-linux+bncBAABBVWRXHZAKGQEKGTA6GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B02165C76
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 12:09:11 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id b8sf2292660qvw.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 03:09:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582196950; cv=pass;
        d=google.com; s=arc-20160816;
        b=ounpWRAcxYDSyJ/2i9iPdlwo3trxgvZU1GgcMuTUSd8frPO8Cs39vRaFymhh/HK+MX
         wAb/Ys80aXkKTKR1W2xZiS0UKzROeLuINXS7I19T4luFrSIYt1GlOFHzANiYWTwK0ZwX
         E97PhHtpuOZTKjLv9Ati2bIHnV79oo9CLYNOHMqbv70E9aRmODTWDpPHkwQRIO4YY70Z
         RDmw9ANJx2mQnZPJKeSI27qVgt/QenHa80F6L4AvXSDAZGBg0smVxFI341rHxDwG9YxU
         R1Yov5rZFM2aTZ4Z1dQ07jg1fSfgU5kUOKe1au+GnPsEdc5AU1xI6DS73dYBKzCx9KNU
         cEeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=Fh8FYW0t93GzeO98sWc8lfTHG0E8a3uFp4nYI9zcYuY=;
        b=Ha79FzphrrNtgeYeZd5qL3X/dtHg12JzrRGn984DzZSk+VgGeuAgFDhFlKZoqB+Xgt
         krgxc+EzVrwLU9tB99iRbsK1IB2KtcWScHEeIIS6frQLCumgQ3js7TOgK0PZACqAXqmF
         iBEkFa6cWpQf+uvT4Nl2D5d0KNjeIAdZFi+u+XsK3ZHp+qEZSHX6UTgz5jvmUclvFpX4
         kWCkt+LedugN329keg5qLBqGdt8ossP/9sB/Eu2ZKuHQ5DS8EsWM/+pDqpupjKzfbxaK
         hHo8HdQ+S5XD27IgSAq23ygzC1EAXL/VL9dwF/AmrMnK9CJbQSV6eXCvIAgdahYTywMC
         hTQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0XC8q6E5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fh8FYW0t93GzeO98sWc8lfTHG0E8a3uFp4nYI9zcYuY=;
        b=e55aThsOk+C0NMymeXJePF+wFL3GZ5D7quKi9vtiBDXPgiqIJ4Yb8dr8k1KfZqYVrS
         6s8JpFzv25Fp4oRAK+RQwZv3aVxeADUNh8rrB7IZmJheEsfSNiopCLx6HANsJ6hhW5aj
         oYFTw3zVzbU3xEqs84qzyvXMnYfVB0E1a/nNpJpHhKB+52x7dsdRBYjaabnM1ERnsp81
         f5Kp+o7FMaIWObN/Ls6Unqnn4/jY/QsdYVI6mwVzvQVJ3EsM+le4IKBS6BrQtGSBzTtD
         TgMYcwIyigiZN0A/7yyViJSrRJTug+WR/I+hkdMV0zHyc5jXqvtIugvTiTYz6ioTG++z
         YSvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fh8FYW0t93GzeO98sWc8lfTHG0E8a3uFp4nYI9zcYuY=;
        b=Kqsw8Gm1hnbqQK/PTJL5TSRSJ6YIFqIOZL8XbeUUVQQFnsR+wdP87oTmIUkM2PsJOq
         2/PPnBqdWwxUnUN4BHxjO45ddwbKZWSJobnOb5TCwrNSOU3Y1vDvSASLxolzI8b92HM0
         Yvxrlo670ImbjZ3mqHURQpkJIBQuB6WMYPfu7Ue0Jzd4MrKU5nDJMA3eUR5XOmdqg/74
         zDFEwv+F6P5+rnuakfVEXlkkZjwvKWnaMRtMnGGmaY4RBLCD2o6I1GAwRiOZ3yhvj6Dl
         xB4B7hFHST1N5289Sd5quUr+JjXcq3Q+2BUC4XyFhV6sRaf1Q68CKEeMlgQC79naFPtv
         O8kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAULP1vGDe/NqXVYH5DrDpUIB2ZAB9fd7rkEVQ3u6/AOtIsNCVIy
	o4UtDFBfxLfkgurB0oJXjEI=
X-Google-Smtp-Source: APXvYqyj4BexKyoYpPvtqjnJnN9VJO79cdW3L8/A4AAYlUUnq9Z3VfokqchilA9vweskJs95unsmpQ==
X-Received: by 2002:a05:6214:1433:: with SMTP id o19mr25428746qvx.87.1582196950709;
        Thu, 20 Feb 2020 03:09:10 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a84a:: with SMTP id r71ls429102qke.0.gmail; Thu, 20 Feb
 2020 03:09:10 -0800 (PST)
X-Received: by 2002:a05:620a:1037:: with SMTP id a23mr26140342qkk.82.1582196950413;
        Thu, 20 Feb 2020 03:09:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582196950; cv=none;
        d=google.com; s=arc-20160816;
        b=Htyp4O6BcM/pD7wz240udZTUTH2ce4oAuvnnyqaENmE0KYWsoN+TlC2syuFZjcqt8W
         +e9lG+UoFD77d9V+W2h1jTN6Eon8UMNJfOn7qs990HqC5VK6CL/4kDR/IBRwF8HHsLJG
         KcPn5Mr0hDb7VL8NnKnd/40RjAtMEzSwPnVOWDi9tiYuSgtJkzB40O6NX6MnGrsYGPV3
         CfYAKCsc71FrsLFzgSGkWdvJpVKBJMjstov4+/iYfasB9fgSnE9JL5NUooiexXEDWI3y
         R+HaMLagG1RGEMu+UYY8hMkELyFMh55J4/NPsjlYyN/JAul+wxAU75gTtKmhMgp8RUoo
         zvHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=on/7DtPgewgJQ7ODuLQlJl0YcJIgV+9otF/QOdXIumQ=;
        b=Ial1DbnsTJHdn217kxN1/gifwwM0kalJxghac2tkrR/HUHNv5cKDMhQeG5DxcOuTtP
         vVho6U5hsDxGb2KpqJG6abe/KnZr7llSmPdBLklrCND27QiZJiKyGYIVQCSfqZ9w+fUd
         cG/3TiJGJflQ84rg9d8LSkELFVZuRryyor7SXXY4h9qf6qn29Q1Fo/RDYjh8Q/ynRVSi
         C1vELpFmmM/YCJfIydBkPYOCkxGwaEuJawE0FPNylHVrRW/M+5sRzpzoAuNZhKLUcjHk
         sVdrVTG71DtUTsp7w5tpYQErRR7JKEOB874yeJkyKtxPiw6RyWEZ1YoDmgNaJGXt7zbE
         1yXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0XC8q6E5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id s25si198561qtc.0.2020.02.20.03.09.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 03:09:10 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 01KB8BM8031854;
	Thu, 20 Feb 2020 20:08:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01KB8BM8031854
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
        clang-built-linux@googlegroups.com,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        sparclinux@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] compiler: Remove CONFIG_OPTIMIZE_INLINING entirely
Date: Thu, 20 Feb 2020 20:08:07 +0900
Message-Id: <20200220110807.32534-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220110807.32534-1-masahiroy@kernel.org>
References: <20200220110807.32534-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=0XC8q6E5;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
forcibly") made this always-on option. We released v5.4 and v5.5
including that commit.

Remove the CONFIG option and clean up the code now.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
---

Changes in v2:
  - add Reviewed-by

 arch/x86/configs/i386_defconfig   |  1 -
 arch/x86/configs/x86_64_defconfig |  1 -
 include/linux/compiler_types.h    | 11 +----------
 kernel/configs/tiny.config        |  1 -
 lib/Kconfig.debug                 | 12 ------------
 5 files changed, 1 insertion(+), 25 deletions(-)

diff --git a/arch/x86/configs/i386_defconfig b/arch/x86/configs/i386_defconfig
index 59ce9ed58430..d961d831c266 100644
--- a/arch/x86/configs/i386_defconfig
+++ b/arch/x86/configs/i386_defconfig
@@ -288,7 +288,6 @@ CONFIG_EARLY_PRINTK_DBGP=y
 CONFIG_DEBUG_STACKOVERFLOW=y
 # CONFIG_DEBUG_RODATA_TEST is not set
 CONFIG_DEBUG_BOOT_PARAMS=y
-CONFIG_OPTIMIZE_INLINING=y
 CONFIG_SECURITY=y
 CONFIG_SECURITY_NETWORK=y
 CONFIG_SECURITY_SELINUX=y
diff --git a/arch/x86/configs/x86_64_defconfig b/arch/x86/configs/x86_64_defconfig
index 0b9654c7a05c..4826254c6140 100644
--- a/arch/x86/configs/x86_64_defconfig
+++ b/arch/x86/configs/x86_64_defconfig
@@ -285,7 +285,6 @@ CONFIG_EARLY_PRINTK_DBGP=y
 CONFIG_DEBUG_STACKOVERFLOW=y
 # CONFIG_DEBUG_RODATA_TEST is not set
 CONFIG_DEBUG_BOOT_PARAMS=y
-CONFIG_OPTIMIZE_INLINING=y
 CONFIG_UNWINDER_ORC=y
 CONFIG_SECURITY=y
 CONFIG_SECURITY_NETWORK=y
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a8c1a6c..e970f97a7fcb 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -129,22 +129,13 @@ struct ftrace_likely_data {
 #define __compiler_offsetof(a, b)	__builtin_offsetof(a, b)
 
 /*
- * Force always-inline if the user requests it so via the .config.
  * Prefer gnu_inline, so that extern inline functions do not emit an
  * externally visible function. This makes extern inline behave as per gnu89
  * semantics rather than c99. This prevents multiple symbol definition errors
  * of extern inline functions at link time.
  * A lot of inline functions can cause havoc with function tracing.
- * Do not use __always_inline here, since currently it expands to inline again
- * (which would break users of __always_inline).
  */
-#if !defined(CONFIG_OPTIMIZE_INLINING)
-#define inline inline __attribute__((__always_inline__)) __gnu_inline \
-	__inline_maybe_unused notrace
-#else
-#define inline inline                                    __gnu_inline \
-	__inline_maybe_unused notrace
-#endif
+#define inline inline __gnu_inline __inline_maybe_unused notrace
 
 /*
  * gcc provides both __inline__ and __inline as alternate spellings of
diff --git a/kernel/configs/tiny.config b/kernel/configs/tiny.config
index 7fa0c4ae6394..8a44b93da0f3 100644
--- a/kernel/configs/tiny.config
+++ b/kernel/configs/tiny.config
@@ -6,7 +6,6 @@ CONFIG_CC_OPTIMIZE_FOR_SIZE=y
 CONFIG_KERNEL_XZ=y
 # CONFIG_KERNEL_LZO is not set
 # CONFIG_KERNEL_LZ4 is not set
-CONFIG_OPTIMIZE_INLINING=y
 # CONFIG_SLAB is not set
 # CONFIG_SLUB is not set
 CONFIG_SLOB=y
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 69def4a9df00..5abde39c3c69 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -305,18 +305,6 @@ config HEADERS_INSTALL
 	  user-space program samples. It is also needed by some features such
 	  as uapi header sanity checks.
 
-config OPTIMIZE_INLINING
-	def_bool y
-	help
-	  This option determines if the kernel forces gcc to inline the functions
-	  developers have marked 'inline'. Doing so takes away freedom from gcc to
-	  do what it thinks is best, which is desirable for the gcc 3.x series of
-	  compilers. The gcc 4.x series have a rewritten inlining algorithm and
-	  enabling this option will generate a smaller kernel there. Hopefully
-	  this algorithm is so good that allowing gcc 4.x and above to make the
-	  decision will become the default in the future. Until then this option
-	  is there to test gcc for this.
-
 config DEBUG_SECTION_MISMATCH
 	bool "Enable full Section mismatch analysis"
 	help
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220110807.32534-2-masahiroy%40kernel.org.
