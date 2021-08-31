Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBXH7XCEQMGQELRSRWDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EA23FCA1F
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:37 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id k18-20020a4a94920000b029026767722880sf8845302ooi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420956; cv=pass;
        d=google.com; s=arc-20160816;
        b=eTdu5R0Hy7k2zkYTzlnrHgNqKsHq//k95Mh1Bn6WD6ar7HPSKys5Kce7jc0JkNkp/3
         IBepUFRPw8c/MWNuf+b5MtVm8kidqHUdcZUM36e+evrnz6nWpJEOKNUYI0mRnKhRtCwu
         QpPELYlUP6o+F4tMEO8h78EguThEMquNmS9DZ83NMNajmvRgyWxzNKr/QpKN1MEWXsJ8
         +OlO0s5Ndju+yQdROZLelLJyPVz4dPOCm6OzHJhq46kgbjNUJVtaEfP5JbApTLL3Oowb
         hfuI9UAI2ktC4aWNb1tyD1xn4Ev+QiqDgbqrqe9ouaK1rt70YzzYA6yVQXLa+e0bVrcy
         Iliw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UX9hybII4N3H6FQSQjc9S2yq2a3t2N2wGFFeb0hVuxg=;
        b=XackcfO2vL+Z1yp7WwJMSvWi3k6WO7CxKVteIbXk7nSmbQjLOpWazhZWJcRPEW99TY
         G70ECl7cqqmL5SNcFVLmZueXk7juUmrVXb3aA46Uwp61uBJYEQL6KqccHhNNBDDmBlSL
         LTtcF8g4D9rFSqr0buAKbBc+3rgvHnuSLg3SL41LTODVFS+bO0WKNzk5HULlhqi7D232
         KtqUP+pDfbYJ8NRN7M+bS5U01ZubPeyhGeVhJJiM5RrbSWi8tiPW24dTMlA9FxLIe05O
         5bxjbTOUf+5uunCD+z3C8STq6CG83O0nHtKAucd+yURdY+WfWRWndJcSzGyhgz+y6MPR
         UbsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UX9hybII4N3H6FQSQjc9S2yq2a3t2N2wGFFeb0hVuxg=;
        b=tRbk+05IUnSlaMH2mB6Spujxr/h23L8StGmDzVLooFTJKYvlYuUhBQevt/bSdxupbw
         /rWTyVNHacRhTEDWkDBTZnogwREMkbpmQQ5rskcoaTi9nd2ZxVSTNbUqIN3SkFV8v9SZ
         60bP4iAvsuMmTQ/0uUXDeEBefcArsCaOWxzaPrMqWmZl5YsQ2nHAePQHAmVgTFQY7LbH
         57nK3i1tR4K6HHV9qvdLESfrxug3U+yynD8slpKwhryY8hmr6bLJxHWFOK+2Evzu+zZ3
         sxR3gQgqXWxV5nKwKF7y/AYovQzqoFqVZBqEdRBOyLJDH3J7BdrMnLkd00tdy7cVVyNo
         VxmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UX9hybII4N3H6FQSQjc9S2yq2a3t2N2wGFFeb0hVuxg=;
        b=nS3z+5y9hhIF23Hqx7eYTGQV27ZXG5PvDZWyrJJl92Q2sKnpEoe8uGyCl0LQG+NM/x
         TDqieg22Cbfm6307LwbHsPujGwPypOmN2O6aKbNckfr7DxL8Y/KiNePMLr1eVxUmTrXF
         jEj+GyHUFLPXNt4d/PwmSjyiWC8AVpRWmeNR1dnnNCeHHmuoWicwQi40Y8bqed9mMZwg
         k3JPv2TwxL2y9+1Nzb0gjXca7FR/i4rJpq5pJW96yf/iUo86rMjN6kBNQR6P93VZBSTE
         Cf6cPNCzD0p6Egq/eErQDba0EGB8yb4J944WCx/l1yRBhxop82XbyWvAdb0tVgY0Ayl1
         i1mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CtHM1Kzn4yOUSKl0I0OR3he2JO+RZwJjh/cKBXWUXV68YIF+y
	zMj5/6WC0TZzAv28l78Kd0g=
X-Google-Smtp-Source: ABdhPJxD6wub44DvVss0uoo4FrsrjR7O55MCbku52RtwaDHU2v9rV/yzG7a+/kURzqaCQROLbbskcA==
X-Received: by 2002:aca:2310:: with SMTP id e16mr3553631oie.64.1630420956180;
        Tue, 31 Aug 2021 07:42:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:11d7:: with SMTP id v23ls5049930otq.2.gmail; Tue,
 31 Aug 2021 07:42:35 -0700 (PDT)
X-Received: by 2002:a9d:6391:: with SMTP id w17mr23141073otk.19.1630420955630;
        Tue, 31 Aug 2021 07:42:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420955; cv=none;
        d=google.com; s=arc-20160816;
        b=P5Vofz/1XmEayZWj5+Lna6Z0B64v5WEOCN7WFuR9sM2454NVKev3hHgyXmekJ1B3oO
         qpGD7zrVMpAHhSp9xJvTms//jIMipetw7DX7pQN0btiFT2mN0dieFperIGIH+VbQuGPA
         5JWS8deOxQ/HykZ+ovGC3x1LeaBogFXuNXhOnJPBBrdDcUsdwHkkvKR6m4qFoPu7M4TH
         23jyqSFqkv8a7DKoA21eV6GzNx/KRWPfMnCd1n5TPGnBe9KzgfbjSev76tCAc0+sJXAK
         DMR9LiHU8a9Y0gfrob2qeJVFcVwM/pWP5R8BYpxDzQO8XBqaR2ebLjNPtMmVFr7Kaz3V
         JFdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=OJd4c2Yf1lWAaUS7Elqrqb32C92I59uiMkTYv4edNw8=;
        b=YstBOaUx4zpK3xt692bUDLtRaXVgmPJ7w7L5iR7P4C+D0sQoBBBfKcDD3lskiWTtOg
         qfzMenznM8zhw31YDmf2zEAWA+Hgdj1j486YxEwZlbse/2R3AKMO7lBHYCpP+XCwrwCs
         IVPKVYiPYo2rqLL/Huf7e2ZRk5+l8RT85b7RdYcdPLaZgDhyRpbaOamxSIokXvAZB8We
         l57JC0Gkb02sCNrj+8XX+WEvSStY8en/Uv3SJDBuW/zNWl08LVdLZcXXE+F6p/Fmhm3+
         nVOIQBzXefoBv7AFb3rSKCisGFQEfbpifRbJE3iM+yjyE4qU3aRDyTpuC8d7HrSot9LG
         tdjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id bf14si235307oib.0.2021.08.31.07.42.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218496946"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="218496946"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="466478336"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga007.jf.intel.com with ESMTP; 31 Aug 2021 07:42:29 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfj002209;
	Tue, 31 Aug 2021 15:42:26 +0100
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
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        kernel test robot <lkp@intel.com>
Subject: [PATCH v6 kspp-next 19/22] module: Reorder functions
Date: Tue, 31 Aug 2021 16:41:11 +0200
Message-Id: <20210831144114.154-20-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.24
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Kristen Carlson Accardi <kristen@linux.intel.com>

Introduce a new config option to allow modules to be re-ordered
by function. This option can be enabled independently of the
kernel text KASLR or FG_KASLR settings so that it can be used
by architectures that do not support either of these features.
This option will be selected by default if CONFIG_FG_KASLR is
selected.

If a module has functions split out into separate text sections
(i.e. compiled with the -ffunction-sections flag), reorder the
functions to provide some code diversification to modules.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Tony Luck <tony.luck@intel.com>
Tested-by: Tony Luck <tony.luck@intel.com>
Acked-by: Jessica Yu <jeyu@kernel.org>
Tested-by: Jessica Yu <jeyu@kernel.org>
Reported-by: kernel test robot <lkp@intel.com> # swap.cocci
[ alobakin: make it work with ClangCFI ]
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 Makefile                |  4 ++
 init/Kconfig            | 12 ++++++
 kernel/kallsyms.c       |  4 +-
 kernel/livepatch/core.c |  2 +-
 kernel/module.c         | 91 ++++++++++++++++++++++++++++++++++++++++-
 5 files changed, 108 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index 283876e170f7..2bde66addb89 100644
--- a/Makefile
+++ b/Makefile
@@ -921,6 +921,10 @@ endif
 # ClangLTO implies -ffunction-sections -fdata-sections, no need
 # to specify them manually and trigger a pointless full rebuild
 ifndef CONFIG_LTO_CLANG
+ifdef CONFIG_MODULE_FG_KASLR
+KBUILD_CFLAGS_MODULE += -ffunction-sections
+endif
+
 ifneq ($(CONFIG_LD_DEAD_CODE_DATA_ELIMINATION)$(CONFIG_FG_KASLR),)
 KBUILD_CFLAGS_KERNEL += -ffunction-sections
 endif
diff --git a/init/Kconfig b/init/Kconfig
index e72633f4f8a9..e8158c256ee9 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2330,6 +2330,18 @@ config UNUSED_KSYMS_WHITELIST
 	  one per line. The path can be absolute, or relative to the kernel
 	  source tree.
 
+config MODULE_FG_KASLR
+	bool "Module Function Granular Layout Randomization"
+	default FG_KASLR
+	depends on BROKEN
+	help
+	  This option randomizes the module text section by reordering the text
+	  section by function at module load time. In order to use this
+	  feature, the module must have been compiled with the
+	  -ffunction-sections compiler flag.
+
+	  If unsure, say N.
+
 endif # MODULES
 
 config MODULES_TREE_LOOKUP
diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 5ffdcc2fb88e..6906cc726149 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -841,7 +841,7 @@ static int __kallsyms_open(struct inode *inode, struct file *file)
  * When function granular kaslr is enabled, we need to print out the symbols
  * at random so we don't reveal the new layout.
  */
-#ifdef CONFIG_FG_KASLR
+#if defined(CONFIG_FG_KASLR) || defined(CONFIG_MODULE_FG_KASLR)
 static int update_random_pos(struct kallsyms_shuffled_iter *s_iter,
 			     loff_t pos, loff_t *new_pos)
 {
@@ -985,7 +985,7 @@ static int kallsyms_random_open(struct inode *inode, struct file *file)
 #define kallsyms_open kallsyms_random_open
 #else
 #define kallsyms_open __kallsyms_open
-#endif /* !CONFIG_FG_KASLR */
+#endif /* !CONFIG_FG_KASLR && !CONFIG_MODULE_FG_KASLR */
 
 #ifdef	CONFIG_KGDB_KDB
 const char *kdb_walk_kallsyms(loff_t *pos)
diff --git a/kernel/livepatch/core.c b/kernel/livepatch/core.c
index 852bbfa9da7b..15c4cd25592d 100644
--- a/kernel/livepatch/core.c
+++ b/kernel/livepatch/core.c
@@ -177,7 +177,7 @@ static int klp_find_object_symbol(const char *objname, const char *name,
 	 * force the algorithm to require that only unique symbols are
 	 * allowed to be patched.
 	 */
-	if (IS_ENABLED(CONFIG_FG_KASLR))
+	if (IS_ENABLED(CONFIG_FG_KASLR) || IS_ENABLED(CONFIG_MODULE_FG_KASLR))
 		sympos = 0;
 
 	/*
diff --git a/kernel/module.c b/kernel/module.c
index ed13917ea5f3..08747e5f2442 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -57,6 +57,7 @@
 #include <linux/bsearch.h>
 #include <linux/dynamic_debug.h>
 #include <linux/audit.h>
+#include <linux/random.h>
 #include <uapi/linux/module.h>
 #include "module-internal.h"
 
@@ -1527,7 +1528,7 @@ static void free_sect_attrs(struct module_sect_attrs *sect_attrs)
 
 	for (section = 0; section < sect_attrs->nsections; section++)
 		kfree(sect_attrs->attrs[section].battr.attr.name);
-	kfree(sect_attrs);
+	kvfree(sect_attrs);
 }
 
 static void add_sect_attrs(struct module *mod, const struct load_info *info)
@@ -1544,7 +1545,7 @@ static void add_sect_attrs(struct module *mod, const struct load_info *info)
 	size[0] = ALIGN(struct_size(sect_attrs, attrs, nloaded),
 			sizeof(sect_attrs->grp.bin_attrs[0]));
 	size[1] = (nloaded + 1) * sizeof(sect_attrs->grp.bin_attrs[0]);
-	sect_attrs = kzalloc(size[0] + size[1], GFP_KERNEL);
+	sect_attrs = kvzalloc(size[0] + size[1], GFP_KERNEL);
 	if (sect_attrs == NULL)
 		return;
 
@@ -2416,6 +2417,89 @@ static bool module_init_layout_section(const char *sname)
 	return module_init_section(sname);
 }
 
+/*
+ * shuffle_text_list()
+ * Use a Fisher Yates algorithm to shuffle a list of text sections.
+ */
+static void shuffle_text_list(Elf_Shdr **list, int size)
+{
+	u32 i, j;
+
+	for (i = size - 1; i > 0; i--) {
+		/*
+		 * pick a random index from 0 to i
+		 */
+		j = get_random_u32() % (i + 1);
+
+		swap(list[i], list[j]);
+	}
+}
+
+/*
+ * randomize_text()
+ * Look through the core section looking for executable code sections.
+ * Store sections in an array and then shuffle the sections
+ * to reorder the functions.
+ */
+static void randomize_text(struct module *mod, struct load_info *info)
+{
+	int max_sections = info->hdr->e_shnum;
+	int num_text_sections = 0;
+	Elf_Shdr **text_list;
+	int i, size;
+
+	text_list = kvmalloc_array(max_sections, sizeof(*text_list), GFP_KERNEL);
+	if (!text_list)
+		return;
+
+	for (i = 0; i < max_sections; i++) {
+		Elf_Shdr *shdr = &info->sechdrs[i];
+		const char *sname = info->secstrings + shdr->sh_name;
+
+		if (!(shdr->sh_flags & SHF_ALLOC) ||
+		    !(shdr->sh_flags & SHF_EXECINSTR) ||
+		    (shdr->sh_flags & ARCH_SHF_SMALL) ||
+		    module_init_layout_section(sname))
+			continue;
+
+		/*
+		 * With CONFIG_CFI_CLANG, .text with __cfi_check() must come
+		 * before any other text sections, and be aligned to PAGE_SIZE.
+		 * Don't include it in the shuffle list.
+		 */
+		if (IS_ENABLED(CONFIG_CFI_CLANG) && !strcmp(sname, ".text"))
+			continue;
+
+		if (!num_text_sections)
+			size = shdr->sh_entsize;
+
+		text_list[num_text_sections] = shdr;
+		num_text_sections++;
+	}
+
+	if (!num_text_sections)
+		goto exit;
+
+	shuffle_text_list(text_list, num_text_sections);
+
+	for (i = 0; i < num_text_sections; i++) {
+		Elf_Shdr *shdr = text_list[i];
+
+		/*
+		 * get_offset has a section index for it's last
+		 * argument, that is only used by arch_mod_section_prepend(),
+		 * which is only defined by parisc. Since this type
+		 * of randomization isn't supported on parisc, we can
+		 * safely pass in zero as the last argument, as it is
+		 * ignored.
+		 */
+		shdr->sh_entsize = get_offset(mod, &size, shdr, 0);
+	}
+
+exit:
+	kvfree(text_list);
+}
+
 /*
  * Lay out the SHF_ALLOC sections in a way not dissimilar to how ld
  * might -- code, read-only data, read-write data, small data.  Tally
@@ -2510,6 +2594,9 @@ static void layout_sections(struct module *mod, struct load_info *info)
 			break;
 		}
 	}
+
+	if (IS_ENABLED(CONFIG_MODULE_FG_KASLR))
+		randomize_text(mod, info);
 }
 
 static void set_license(struct module *mod, const char *license)
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-20-alexandr.lobakin%40intel.com.
