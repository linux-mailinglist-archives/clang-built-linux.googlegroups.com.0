Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBSH7XCEQMGQEBGR6QYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 5511F3FCA07
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:18 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id r21-20020a63d9150000b029023ccd23c20csf1391392pgg.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420936; cv=pass;
        d=google.com; s=arc-20160816;
        b=dahg4dGzieOqwftDzvkDOU9QHp7WjvmnlKoMS9P0nP5nK9xv652gEhh/QxeOoUF0ys
         2pbrkG+T5ycCWGnzciHwtRjacXFLVGTEzAdgYlmBTO4L5q6pW8t4Yx6ZLdD2ERV64rQp
         BWDkqOiRpPqXlWXPQjuxQwiyhIS6V9Z4nIlOuRYxMph+Fp7+rk5FUnGkmfuPCNpb2NlQ
         U+j0u38xImw+n3QpSm0BbADxgJo9uOgSsf5vlQHJY6Yq07xQY9tYuxQPpxDd1Qebt7sV
         f7BCkpLouw74y8hH0v3r6ozFOkS+Srd3pec3I0oB1xcZyKUt7fkANSetWgVaagSGLxM0
         lCNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=75kTyIhdZf4BnGcbA0DPsZ+5tyum7i/HwW3XlgswGrM=;
        b=BWna+YrfDX1YuUfJKTQ5+SgwwgwcnWVpt49qud0iVEKOyQiDgjXGvf9z3aOQGOYs8i
         WiMe/I1l98Ky9+155xnePZ1R0HCsbp431OjLkbkRvDQfcN79/1XhQ8rypAPDh0BjhIcm
         I94eFwVEpWjMnL6L9rDDF9yBvJav24/lZTzLFUqMpIWFzH3kVWKl2C33LJ+Iq8B178gX
         Bg/609wtBD7VmTeO+8CZNmnwzf/BoS2uqHYhlKy7ABQOm1vc2GcZh87CsuvNmdo8YYmM
         Gh/isWzznbmwLa7x6Bs3GqJwOhZNVsr53LexacZzhjFnz0QcEvmQvJzaB/QEWG9aH3NL
         aTQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75kTyIhdZf4BnGcbA0DPsZ+5tyum7i/HwW3XlgswGrM=;
        b=ahVRmWYUg1D7xRcjhvV/6vFDMsnfvCfyClTvY9VJqzpAqxKCC+cz1oD8UHadoFAORW
         0ioXjVJppIQac7jY49Rgj/4tbCMhF/NJY0fLAU0IaCCY155cSg5kQM4LOy3adf7DlXbx
         HFlBlQOpTxXNoLYEvhx2c///LC5NMeqe77Nvkl5ASDLUOm3AVS5uPVesS7mggF25qqVh
         hB4ydi+RwbqRuOmBHsEy0+SHRdLB3ehZa8+X1RujJrPkL9wsZB2SJHRkbrrZsaxzkyuC
         UnnkV8+o1AIVcb4Pl5hC58RV/8WJh8qdRSCqev8dDo7kEpWshzeswgwncSqRhI6Cjn4B
         5Jnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75kTyIhdZf4BnGcbA0DPsZ+5tyum7i/HwW3XlgswGrM=;
        b=CK4byjwQtnXD/M3Fv85xcWZjO1/uHPbP9wozBiDsPtXr/fnxOfnfuVaiGRuX+DDMz/
         c4dE1YTdwi/NebzdCCX95QAw/J5bUeXUbzuSDuDVOqnFotgdI3VtAKqkJgNE374zGwTu
         sz56yXFbsd80BB/Ol7GXZBFoOxHkU5lQRk5dl55baKbr9ENcLV8B7IZIf9dq/WvmEeUW
         5roeTjBRnmVi9euZNrpw0F+GimGdpytJMIQ6RN1De/ztiDlyeLuzkYAdMFHugMiP5Rh9
         qPJ6LWchKrq/0jlZO672bY4fU971oxu4xbPKxsKOeRYw0x5t+uvEiPOWWtNU0ZBdwD6E
         pHRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Mr0H9TJV+EVIiSZtydlWWUVsLHWhlcbhPnLfxi733tJ3NfA72
	HSvEVxbGpl4yBszAihhpEqI=
X-Google-Smtp-Source: ABdhPJzYV5/Wf+TMIGcgiowsB865I+HSkfSAWXbldBaoBlguYOw9YlynCiWM3gYIbWCvjpW4nesapw==
X-Received: by 2002:a17:902:c3c6:b0:138:80f2:f642 with SMTP id j6-20020a170902c3c600b0013880f2f642mr5043092plj.42.1630420936776;
        Tue, 31 Aug 2021 07:42:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6643:: with SMTP id z3ls8409642pgv.3.gmail; Tue, 31 Aug
 2021 07:42:16 -0700 (PDT)
X-Received: by 2002:a63:4f54:: with SMTP id p20mr27174292pgl.437.1630420936269;
        Tue, 31 Aug 2021 07:42:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420936; cv=none;
        d=google.com; s=arc-20160816;
        b=p6WxxYd1tF2ZSf7AWHyksIhp4nbYv+1QPfB3lm2h3vebCEwaKQ7CXi4z91qzSlh4C+
         1XCIiG+AXs0kz0AzBbLnxxLnsr75qxOPsthdde2ar9vu16QolQHN3O/iJMsEcgobF2hH
         3nNRtPGiO0CPKPbBS+yvD7wdGSuJ5d+Ac5u25tlH+b91KRhMo/KT92t2nS6KAzxUfV7J
         19310ud7oD7ksti+SmKxxcpDZcGy3wyWvc+NDpkqMkztN0XRFyXXO/DbTK54JsBEVymv
         OjjeYj8s3ynvltAnj0LS0GkrlSt9yVOcppNhqVgvXfZywDkFrsMP8D8KXaqbiKC0KcZB
         gSeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=13dsaBHEf/f87psmCDqw10jgtG7BPdzATMBxaI4erH8=;
        b=EAc7MBAphaKyCeq2YoK+/VxhIKHOElLLthgJybZ/J3qScmVgf/zVG21YwV31BlHQl9
         Ycyfq0LsfmA873vgREpXk+oM5KV44BUfj6SbBIUQewcpMIju4VGnQE0UCO4ZdhTFhO8b
         fXr0wtNn5lfBVtXlsN6sHF0kvpN8HwwwIdVhq4w6IA+1MgBElKXX9ENpnTPl+7XkiDO5
         v09DFSfFL3WvS6yGO6Ulnj3Xnbfg4HqVudXQC0K1cWmalLpnXD0ZMD+3Pe2Ai/K591il
         RzkeVUSfqV0nday5L9Vmv0O4oBK+FtpgoPayORTOVV4jjkZj2sQVnR1x+kOTy5C2e1UP
         2Mtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id u14si1180644pgi.5.2021.08.31.07.42.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="240740649"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="240740649"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="519710705"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga004.fm.intel.com with ESMTP; 31 Aug 2021 07:42:10 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfa002209;
	Tue, 31 Aug 2021 15:42:08 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 10/22] x86/boot/compressed: Avoid duplicate malloc() implementations
Date: Tue, 31 Aug 2021 16:41:02 +0200
Message-Id: <20210831144114.154-11-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Kees Cook <keescook@chromium.org>

The preboot malloc() (and free()) implementation in
include/linux/decompress/mm.h (which is also included by the
static decompressors) is static. This is fine when the only thing
interested in using malloc() is the decompression code, but the
x86 preboot environment uses malloc() in a couple places, leading to a
potential collision when the static copies of the available memory
region ("malloc_ptr") gets reset to the global "free_mem_ptr" value.
As it happens, the existing usage pattern happened to be safe because each
user did 1 malloc() and 1 free() before returning and were not nested:

extract_kernel() (misc.c)
	choose_random_location() (kaslr.c)
		mem_avoid_init()
			handle_mem_options()
				malloc()
				...
				free()
	...
	parse_elf() (misc.c)
		malloc()
		...
		free()

Adding FGKASLR, however, will insert additional malloc() calls local to
fgkaslr.c in the middle of parse_elf()'s malloc()/free() pair:

	parse_elf() (misc.c)
		malloc()
		if (...) {
			layout_randomized_image(output, &ehdr, phdrs);
				malloc() <- boom
				...
		else
			layout_image(output, &ehdr, phdrs);
		free()

To avoid collisions, there must be a single implementation of malloc().
Adjust include/linux/decompress/mm.h so that visibility can be
controlled, provide prototypes in misc.h, and implement the functions in
misc.c. This also results in a small size savings:

$ size vmlinux.before vmlinux.after
   text    data     bss     dec     hex filename
8842314     468  178320 9021102  89a6ae vmlinux.before
8842240     468  178320 9021028  89a664 vmlinux.after

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 arch/x86/boot/compressed/kaslr.c |  4 ----
 arch/x86/boot/compressed/misc.c  |  3 +++
 arch/x86/boot/compressed/misc.h  |  2 ++
 include/linux/decompress/mm.h    | 12 ++++++++++--
 4 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/x86/boot/compressed/kaslr.c b/arch/x86/boot/compressed/kaslr.c
index e36690778497..7d94f95c84dd 100644
--- a/arch/x86/boot/compressed/kaslr.c
+++ b/arch/x86/boot/compressed/kaslr.c
@@ -32,10 +32,6 @@
 #include <generated/utsrelease.h>
 #include <asm/efi.h>
 
-/* Macros used by the included decompressor code below. */
-#define STATIC
-#include <linux/decompress/mm.h>
-
 #define _SETUP
 #include <asm/setup.h>	/* For COMMAND_LINE_SIZE */
 #undef _SETUP
diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
index 743f13ea25c1..a4339cb2d247 100644
--- a/arch/x86/boot/compressed/misc.c
+++ b/arch/x86/boot/compressed/misc.c
@@ -28,6 +28,9 @@
 
 /* Macros used by the included decompressor code below. */
 #define STATIC		static
+/* Define an externally visible malloc()/free(). */
+#define MALLOC_VISIBLE
+#include <linux/decompress/mm.h>
 
 /*
  * Provide definitions of memzero and memmove as some of the decompressors will
diff --git a/arch/x86/boot/compressed/misc.h b/arch/x86/boot/compressed/misc.h
index 31139256859f..1a2e422dc357 100644
--- a/arch/x86/boot/compressed/misc.h
+++ b/arch/x86/boot/compressed/misc.h
@@ -44,6 +44,8 @@ extern char _head[], _end[];
 /* misc.c */
 extern memptr free_mem_ptr;
 extern memptr free_mem_end_ptr;
+extern void *malloc(int size);
+extern void free(void *where);
 extern struct boot_params *boot_params;
 void __putstr(const char *s);
 void __puthex(unsigned long value);
diff --git a/include/linux/decompress/mm.h b/include/linux/decompress/mm.h
index 868e9eacd69e..9192986b1a73 100644
--- a/include/linux/decompress/mm.h
+++ b/include/linux/decompress/mm.h
@@ -25,13 +25,21 @@
 #define STATIC_RW_DATA static
 #endif
 
+/*
+ * When an architecture needs to share the malloc()/free() implementation
+ * between compilation units, it needs to have non-local visibility.
+ */
+#ifndef MALLOC_VISIBLE
+#define MALLOC_VISIBLE static
+#endif
+
 /* A trivial malloc implementation, adapted from
  *  malloc by Hannu Savolainen 1993 and Matthias Urlichs 1994
  */
 STATIC_RW_DATA unsigned long malloc_ptr;
 STATIC_RW_DATA int malloc_count;
 
-static void *malloc(int size)
+MALLOC_VISIBLE void *malloc(int size)
 {
 	void *p;
 
@@ -52,7 +60,7 @@ static void *malloc(int size)
 	return p;
 }
 
-static void free(void *where)
+MALLOC_VISIBLE void free(void *where)
 {
 	malloc_count--;
 	if (!malloc_count)
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-11-alexandr.lobakin%40intel.com.
