Return-Path: <clang-built-linux+bncBC2ORX645YPRBA7RZ33QKGQEF2SKC4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A453207D05
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:08 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id f18sf2469506qvr.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030787; cv=pass;
        d=google.com; s=arc-20160816;
        b=ns7i2+CFgMtMitBE0eoOjNGv6NMRg26RvUtBtfWjfE7y7P7/xQUZtaY23IRouFQYR5
         a9OnBZcrLtotY46pcOn554NPWsoVidYSuZvDwHemjMOfs+vozueYToeIYaO2INEIPUil
         vZfgG7WJTlvTaLTGC0DeKJslwjHYdLHHMOE06cHIGwlc2+cyH6kFG8trNBg/EUrxb9Eu
         Ij6pJAxrFWm1XpYZjrdGOpRpLwPxfCOw7py6je82wuKIskGyJLtoTxDugNLJY/UOwJTR
         Sx8HE6pxYyxGwGMbUplKwRw6Bg0tBPMCFiFURgRY/A4bNOeBTJcd3LHkeMuUBQYshpwj
         52wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BDeYz6DqWsvdL/v6xAYZwxr10raS3OwBT0z8hX2ivwY=;
        b=hM2Rqm1sxmfwJ6qG8b8iC6yepW7RDIaE25hn3xLzB8vXMDY9UsCSoUPx/3x8EmboFz
         xuRUcCb+rBxNBPO+nw7z8SS7ZGuyJHVu8/69/75aijmXPDGLqY7Ys+6X7tYdC+Umcp+P
         Jjiw7jyHIrvz07oJpS8BANmnmVxPsiDMlAVAJSKRFKfmSKT8mDIR9rthPKTiP2CHtJ+n
         Ve2wt4sK3pW7q8L1cDnkffuEO5D4BXvnjZbs/CVMkXf146FNtRJpwJJhYsmbJF7n3yhh
         KTDknLtYKtWyE071LbXxo1mfEYptIng9YUrKXkwkQ2Bi9LSNuzDaXZ6chLaEtYGxdiNT
         yrwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IfZnlNH6;
       spf=pass (google.com: domain of 3grjzxgwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3grjzXgwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BDeYz6DqWsvdL/v6xAYZwxr10raS3OwBT0z8hX2ivwY=;
        b=PuGid0V2CXK5kJ97JDGWz57oH1qRiDSUkzck53aGgCb2fwVWwd2qOJt0nS+BV3DJkB
         HX/vYkN5YAHb+8kp1Z6pR8Sjg+k9NHmPoi62fA9Sf0lcdOTGaTI++l5DPXfqQtlqQCGh
         Q8z447sXYpiTyJvVMxNzjFeyuDHJdip51s98wgOTkoc/e4eGm2dxvWNvKQzRnOVf6eVM
         OolQaQYcV+c6sxLQgf0DqYAxZw/U4TBBfNoT3OcOI//S5mIFpAArCvm8R/8oMvm+ZkOx
         om+ZQ39fu8Og9KNMeKqVmGJKdhuldebEfwd3d4M89Ti9ECyJVW7d7spuKxlIyuRBORpH
         Yvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BDeYz6DqWsvdL/v6xAYZwxr10raS3OwBT0z8hX2ivwY=;
        b=HTWhiGg1Aa+jcCr1G4AqC9JtLjz/mitPt15jFQuLXS3BjJAg/6mSMRvoF8mR8LpdIM
         asa631z29uKhchptPzlkvM8F3g+texzhPzVq11r73qxJAa8qlmCTx7AXEZcg8lf0uUhy
         Feu7vRZdgKL02gS3NdglNGipSi8iAaHzzqLNECqKiM4b9rCovtmGYXLJgP/zQO95+M6R
         /MOPr6pU9rgZxsrdCYcNixT6yhOQ3PlaoIvk/1q4F+g0dVU0zD+suQUFSOTqJwi1/vY4
         ruA38h1wsRxGdyU1yAJZ/C/8zyc6NObexzCkXAz+9RharRfO6F49LaC65amvz3B4a9xh
         1akg==
X-Gm-Message-State: AOAM531aPaXirFFCogY3lHoFVVuyQ/3mUyVPdb00wMm+6ziBx6aXzfxe
	7cdAtUftEyWi6ijacl8H/RI=
X-Google-Smtp-Source: ABdhPJxQuul6liOD/MQDxcIPJHHz+1TxnD15499G4ZzmwRMrzJMHp3gpJ09C68DoenHi16CVDorSUQ==
X-Received: by 2002:ad4:4b34:: with SMTP id s20mr11536953qvw.177.1593030787411;
        Wed, 24 Jun 2020 13:33:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls1652516qkd.2.gmail; Wed, 24 Jun
 2020 13:33:07 -0700 (PDT)
X-Received: by 2002:a37:5c81:: with SMTP id q123mr11099390qkb.403.1593030787074;
        Wed, 24 Jun 2020 13:33:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030787; cv=none;
        d=google.com; s=arc-20160816;
        b=zfihtCYt80hIqprmCirG755fL0SX5/Q47VLbJBOIDol5C7MnBzmVyCsjwlffcCS6Ej
         R1PjC4SWO/SZXNWHLtpbZ9KEcf7HtIBzCB6cYcXI9Krq6sCRLJINYEkatnLA070xpCpo
         P6D9lnDHtoHj0oQWE5yF1fZsvRF50HI6SJa3imlXoo+FHFmYiFLsQ1z+0tgznc7tw2AG
         uNNBGtd/XIAubkCu9hRFSaScV3hkJIfC3OSEHL8HsawO7PLzBiniLaGLkGWwDCfHFxcd
         RT39ITe7QRQ58u+TIfb+0t76Z/vPNkoQkbCbJMmJoFoKK3E6y0xYVMXn+qqmeKdSfveQ
         pKTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=E72RKePZ9QWe5v89HuDG9dmOi1TM58THK6MPfXGAxFQ=;
        b=YFPSMZypepn4EROIQ7baOg1zzssMxJL+WoZ5Rw+e3tGDDMn/DaEO5hcmVeIOUpKg6L
         w2/Po1Wf8a7wtiPSQTA9fuQPhJXC1ND9xOxz3Ubv1nkMUqiGD/7lNqn1lpocOonUXByD
         Fsq6Fz4aJdL+euClEFbGNycC0z44OmQczqKThGGh0sABfQyQOUVR6szZl0RQkRJPMp+T
         fRIqfQHHhcwwGqdcS6nFPx8y+opQmt+oGMg47hm53kluRXADY6UsH4lXgyYcbmFdCIll
         +fPHWKq012R9ccRxhmZD7qZiQu1CrSFgoTkFENPASusRf5+BuIIg/thpO6upysnIFp2A
         9ntA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IfZnlNH6;
       spf=pass (google.com: domain of 3grjzxgwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3grjzXgwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id x78si1124885qka.4.2020.06.24.13.33.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3grjzxgwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id l26so2423675qtr.14
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:07 -0700 (PDT)
X-Received: by 2002:a0c:85a3:: with SMTP id o32mr8043763qva.189.1593030786670;
 Wed, 24 Jun 2020 13:33:06 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:43 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 05/22] kbuild: lto: postpone objtool
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IfZnlNH6;       spf=pass
 (google.com: domain of 3grjzxgwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3grjzXgwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With LTO, LLVM bitcode won't be compiled into native code until
modpost_link, or modfinal for modules. This change postpones calls
to objtool until after these steps.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/compiler.h  |  2 +-
 lib/Kconfig.debug         |  2 +-
 scripts/Makefile.build    |  2 ++
 scripts/Makefile.modfinal | 15 +++++++++++++++
 4 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 30827f82ad62..12b115152532 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -120,7 +120,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 /* Annotate a C jump table to allow objtool to follow the code flow */
 #define __annotate_jump_table __section(.rodata..c_jump_table)
 
-#ifdef CONFIG_DEBUG_ENTRY
+#if defined(CONFIG_DEBUG_ENTRY) || defined(CONFIG_LTO_CLANG)
 /* Begin/end of an instrumentation safe region */
 #define instrumentation_begin() ({					\
 	asm volatile("%c0:\n\t"						\
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 9ad9210d70a1..9fdba71c135a 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -399,7 +399,7 @@ config STACK_VALIDATION
 
 config VMLINUX_VALIDATION
 	bool
-	depends on STACK_VALIDATION && DEBUG_ENTRY && !PARAVIRT
+	depends on STACK_VALIDATION && (DEBUG_ENTRY || LTO_CLANG) && !PARAVIRT
 	default y
 
 config DEBUG_FORCE_WEAK_PER_CPU
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 64e99f4baa5b..82977350f5a6 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -226,6 +226,7 @@ endif # CC_USING_PATCHABLE_FUNCTION_ENTRY
 endif # CONFIG_FTRACE_MCOUNT_RECORD
 
 ifdef CONFIG_STACK_VALIDATION
+ifndef CONFIG_LTO_CLANG
 ifneq ($(SKIP_STACK_VALIDATION),1)
 
 __objtool_obj := $(objtree)/tools/objtool/objtool
@@ -258,6 +259,7 @@ objtool_obj = $(if $(patsubst y%,, \
 	$(__objtool_obj))
 
 endif # SKIP_STACK_VALIDATION
+endif # CONFIG_LTO_CLANG
 endif # CONFIG_STACK_VALIDATION
 
 # Rebuild all objects when objtool changes, or is enabled/disabled.
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index d168f0cfe67c..9f1df2f1fab5 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -48,6 +48,21 @@ endif # CC_USING_PATCHABLE_FUNCTION_ENTRY
 endif # CC_USING_RECORD_MCOUNT
 endif # CONFIG_FTRACE_MCOUNT_RECORD
 
+ifdef CONFIG_STACK_VALIDATION
+ifneq ($(SKIP_STACK_VALIDATION),1)
+cmd_ld_ko_o +=								\
+	$(objtree)/tools/objtool/objtool				\
+		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
+		--module						\
+		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
+		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
+		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
+		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
+		$(@:.ko=$(prelink-ext).o);
+
+endif # SKIP_STACK_VALIDATION
+endif # CONFIG_STACK_VALIDATION
+
 endif # CONFIG_LTO_CLANG
 
 quiet_cmd_ld_ko_o = LD [M]  $@
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-6-samitolvanen%40google.com.
