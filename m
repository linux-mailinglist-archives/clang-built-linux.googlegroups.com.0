Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBR77XCEQMGQEMCFN5NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FC23FCA04
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:17 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id f1-20020a5edf01000000b005b85593f933sf10919676ioq.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420935; cv=pass;
        d=google.com; s=arc-20160816;
        b=O8kQcJDKTnQ5FU4rmhKzFh8YRaIV2zPIr3n1ZMAv7JzitNlmtEu6PUOuSNY6zgFE1Y
         tPddKCT9Ek631Uy9SrtBDJSGy+93jYOFOHz7wgI44sdBMoKLZ7W1SZUFsFgSwlliOVXW
         R5JXYHI55Z7covQj+Zt3YRsGF5nOCRCuaVYvXsrnmagenBaB5F5UYyFVeYdPFeOQXdEO
         +T2zrPL3lqSWvaVzhQ4dPg4ddGdz2ozR8fOHQ2qWrjolXFg1VU2sKnZnqDam54ZrAU9A
         ynyCKRrIm30Nrx7efy+S+LbTdH7gmvIzxSyY+YRU0fxUHfxwnfjPV7mGmkzWSvI8qy9c
         NN8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aULCR1Gbaj+EwNaNRxn5dC38Jb2cEqGCIalOQjvTlMM=;
        b=ShovSCl0XB8/gNnHUI5izWiw8SyuS1HoJWAVUn4zrToePkQw6K5Kn1yLaPKNm+Jk4F
         6QMtKRf8jKc1A8//H3wl2A6yq/Lo6+/aO++WYTrJlWVVVsEZaJSVYQ7k8BEsNx3EP03z
         TZVIHOrgTnxfiTjlvz3q9aJqayqMjdsxgovkU+yaAqv8AeabJQD2lz41MOOJbFz3O4as
         xbQQVlgPkP63DbW488ZEadXkAwIsVWePdds09y2pjemfdcFI11sjOeFg/zaT8cAoNd2E
         VpmSRNL0gZ/NngJBE6meUWTpr9maeRgjmV/NKO5SmaweZtAmUZ0uGU5c4FVr4WIzncPW
         ORIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aULCR1Gbaj+EwNaNRxn5dC38Jb2cEqGCIalOQjvTlMM=;
        b=QjBsMNFYuE1vADn8qc5mtE8i43N9G0LatcsQPBh8WkWuil4EO2cv9ZcijV7gtymWen
         XiSEGfJTd7n4U/ztkQpoqNvOaIN9Quc8NoiHonRLbTdE9IQo+h9DtgEJnM6ALNYr4QqK
         nrXsDnzArWmzyze7JcZV3r5yxaCazdA7ukqetnCpGl/C2POkpNBwKBxAGMLzkp5s0J9J
         Gy5bIcUNIwFj2g4qrv7jB4djXRjLr4a4bOn5Hp1Ln5wgB1y1DLHo9SraDjuoRORLBBMJ
         T7r+9LcVSHIYjtdnfq0P9PwbHZQOG53Mt/j73DQObxJSy3Ye+Awcgyg3w3W1MUxnvMpE
         7UAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aULCR1Gbaj+EwNaNRxn5dC38Jb2cEqGCIalOQjvTlMM=;
        b=LCfMf8KfvKp9Dz1112y43xmzVWanC8dlGsK4ZDpvCgt43ZB6A8Jhzl497iYfGWsrfF
         qR7N0otYz+NzfcmDhEf7TjJOg0g0rxsqwRfHE6jT9GKRw4SfHWkzGH/YeF7A3zFZn1X2
         X9+IguoyMoWYbpoS2JOL1uMHfswB7wRrAbudweeYQRyHysMVrIZlliWi7zFsUV2iojRM
         zZ5J8YhP9rGYH2pLvLfI0aVvKiqABw4DqSQGK1Ymn8IHwjT+bs+ImWL6+Vlw3UidTQ+q
         OnAT900nBVmgINp2xkcun8cDpG0/OYZuIQaGgUth9yzBuQFyNMgOjYL0Ox3GTCocSfPK
         bVZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lZkcKSWa/K4ZHtscKv2OH5lqZr5P0S2Vfn3Yr8LVTE2ITDVPh
	RKytVYCM3LrN9sRb/uPlLJ8=
X-Google-Smtp-Source: ABdhPJxORV7cCes4NIhuhfXAwVCa6iE4UByCP75RaOtzLLRN/CVadc4Ocd6GWOYUQW4/jKwQeZU0qA==
X-Received: by 2002:a05:6638:34a6:: with SMTP id t38mr3178986jal.19.1630420935882;
        Tue, 31 Aug 2021 07:42:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:410a:: with SMTP id ay10ls2577374jab.3.gmail; Tue,
 31 Aug 2021 07:42:15 -0700 (PDT)
X-Received: by 2002:a02:8189:: with SMTP id n9mr3132268jag.107.1630420935499;
        Tue, 31 Aug 2021 07:42:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420935; cv=none;
        d=google.com; s=arc-20160816;
        b=ILLl9UZU2akF9qZRCnYoCVjItvtDuwYfXoP+wNCJltoVadY9Aq1lKSGSSGTYazCF3Q
         Fezb1ul8vrSz1zTdIa+q46Zq3jaFkc4LiOSloPE1/GFynrl92VbiMyDpqqFV0TXbQmVZ
         xNqCGDFOkC86l7PJ+1Pl8ouDj73OC0avdHF9Hux8ZS6kOpK7eYaz6mv9IDLPqLZ2+CqS
         lZFn1rfioI7VcC7itu0D79eu3oOp21ec6l6qhfGSSrwtFHgb6txV+VZG/APeq+6uCqgv
         FWStuGz6UAxc7toFBHLGTBIK96m+5zuIQQNDuux5ijKNU9VtbK/B1mvoAO0V4CjgmY5T
         9Qyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=4WKs8/1CW/nUo+4ODzJaXx7+BaP2pexm774RQE0tIu4=;
        b=Ze4H4j2l/yPHsQlMKv33KcXYLIYDouULShCRWHUNAhzLgrvKqUEyOEy6RRHG1PNxc5
         MnPr3geGHzLXlzVnBW0mZC5t/Aqb07UAyRAo06YM7MRW6YwjgMbvLbXIeKQ+4jjfR2nk
         1bIIiElDCIpD5P4pFCl+VphZOUHwD5zGb7Z9xw5u1QmnFj5y5CV7LbsvDXNkLOvZVT3p
         NG5BWHHWq+oxgzdyzwKPG6OjzA8LDJ3Ln5GISFcqsPfpljGUJYzF0HWXrcbmBEIl8yb9
         UKwqQqwrNcfNsSqbobfCrpHJkYj4F+FZDO84Vpy4h9W1aHmGw0hz4MV4NScH1rZBXnOW
         viiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id e16si1214067ilm.3.2021.08.31.07.42.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218532943"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="218532943"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="446126180"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga002.jf.intel.com with ESMTP; 31 Aug 2021 07:42:08 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfZ002209;
	Tue, 31 Aug 2021 15:42:06 +0100
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
Subject: [PATCH v6 kspp-next 09/22] x86/tools: Add relative relocs for randomized functions
Date: Tue, 31 Aug 2021 16:41:01 +0200
Message-Id: <20210831144114.154-10-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65
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

When reordering functions, the relative offsets for relocs that
are either in the randomized sections, or refer to the randomized
sections will need to be adjusted. Add code to detect whether a
reloc satisfies these cases, and if so, add them to the appropriate
reloc list.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Reviewed-by: Tony Luck <tony.luck@intel.com>
Tested-by: Tony Luck <tony.luck@intel.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 arch/x86/boot/compressed/Makefile |  7 ++++++-
 arch/x86/tools/relocs.c           | 32 +++++++++++++++++++++++++++----
 arch/x86/tools/relocs.h           |  4 ++--
 arch/x86/tools/relocs_common.c    | 15 ++++++++++-----
 4 files changed, 46 insertions(+), 12 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 431bf7f846c3..c31a24161fbf 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -106,6 +106,11 @@ $(obj)/vmlinux: $(vmlinux-objs-y) $(efi-obj-y) FORCE
 	$(call if_changed,ld)
 
 OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
+
+ifdef CONFIG_FG_KASLR
+RELOCS_ARGS += --fg-kaslr
+endif
+
 $(obj)/vmlinux.bin: vmlinux FORCE
 	$(call if_changed,objcopy)
 
@@ -113,7 +118,7 @@ targets += $(patsubst $(obj)/%,%,$(vmlinux-objs-y)) vmlinux.bin.all vmlinux.relo
 
 CMD_RELOCS = arch/x86/tools/relocs
 quiet_cmd_relocs = RELOCS  $@
-      cmd_relocs = $(CMD_RELOCS) $< > $@;$(CMD_RELOCS) --abs-relocs $<
+      cmd_relocs = $(CMD_RELOCS) $(RELOCS_ARGS) $< > $@;$(CMD_RELOCS) $(RELOCS_ARGS) --abs-relocs $<
 $(obj)/vmlinux.relocs: vmlinux FORCE
 	$(call if_changed,relocs)
 
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ec50dfad407c..5ae6d1b8ea03 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -42,6 +42,8 @@ struct section {
 };
 static struct section *secs;
 
+static int fgkaslr_mode;
+
 static const char * const sym_regex_kernel[S_NSYMTYPES] = {
 /*
  * Following symbols have been audited. There values are constant and do
@@ -818,6 +820,24 @@ static int is_percpu_sym(ElfW(Sym) *sym, const char *symname)
 		strncmp(symname, "init_per_cpu_", 13);
 }
 
+static int is_function_section(struct section *sec)
+{
+	if (!fgkaslr_mode)
+		return 0;
+
+	return !strncmp(sec_name(sec->shdr.sh_info), ".text.", 6);
+}
+
+static int is_randomized_sym(ElfW(Sym) *sym)
+{
+	if (!fgkaslr_mode)
+		return 0;
+
+	if (sym->st_shndx > shnum)
+		return 0;
+
+	return !strncmp(sec_name(sym_index(sym)), ".text.", 6);
+}
 
 static int do_reloc64(struct section *sec, Elf_Rel *rel, ElfW(Sym) *sym,
 		      const char *symname)
@@ -843,12 +863,15 @@ static int do_reloc64(struct section *sec, Elf_Rel *rel, ElfW(Sym) *sym,
 	case R_X86_64_PC32:
 	case R_X86_64_PLT32:
 		/*
-		 * PC relative relocations don't need to be adjusted unless
-		 * referencing a percpu symbol.
+		 * we need to keep pc relative relocations for sections which
+		 * might be randomized, and for the percpu section.
+		 * We also need to keep relocations for any offset which might
+		 * reference an address in a section which has been randomized.
 		 *
 		 * NB: R_X86_64_PLT32 can be treated as R_X86_64_PC32.
 		 */
-		if (is_percpu_sym(sym, symname))
+		if (is_function_section(sec) || is_randomized_sym(sym) ||
+		    is_percpu_sym(sym, symname))
 			add_reloc(&relocs32neg, offset);
 		break;
 
@@ -1163,8 +1186,9 @@ static void print_reloc_info(void)
 
 void process(FILE *fp, int use_real_mode, int as_text,
 	     int show_absolute_syms, int show_absolute_relocs,
-	     int show_reloc_info)
+	     int show_reloc_info, int fgkaslr)
 {
+	fgkaslr_mode = fgkaslr;
 	regex_init(use_real_mode);
 	read_ehdr(fp);
 	read_shdrs(fp);
diff --git a/arch/x86/tools/relocs.h b/arch/x86/tools/relocs.h
index 43c83c0fd22c..f582895c04dd 100644
--- a/arch/x86/tools/relocs.h
+++ b/arch/x86/tools/relocs.h
@@ -31,8 +31,8 @@ enum symtype {
 
 void process_32(FILE *fp, int use_real_mode, int as_text,
 		int show_absolute_syms, int show_absolute_relocs,
-		int show_reloc_info);
+		int show_reloc_info, int fgkaslr);
 void process_64(FILE *fp, int use_real_mode, int as_text,
 		int show_absolute_syms, int show_absolute_relocs,
-		int show_reloc_info);
+		int show_reloc_info, int fgkaslr);
 #endif /* RELOCS_H */
diff --git a/arch/x86/tools/relocs_common.c b/arch/x86/tools/relocs_common.c
index 6634352a20bc..b1072e63175f 100644
--- a/arch/x86/tools/relocs_common.c
+++ b/arch/x86/tools/relocs_common.c
@@ -12,14 +12,14 @@ void die(char *fmt, ...)
 
 static void usage(void)
 {
-	die("relocs [--abs-syms|--abs-relocs|--reloc-info|--text|--realmode]" \
-	    " vmlinux\n");
+	die("relocs [--abs-syms|--abs-relocs|--reloc-info|--text|--realmode|"
+	    "--fg-kaslr] vmlinux\n");
 }
 
 int main(int argc, char **argv)
 {
 	int show_absolute_syms, show_absolute_relocs, show_reloc_info;
-	int as_text, use_real_mode;
+	int as_text, use_real_mode, fgkaslr_opt;
 	const char *fname;
 	FILE *fp;
 	int i;
@@ -30,6 +30,7 @@ int main(int argc, char **argv)
 	show_reloc_info = 0;
 	as_text = 0;
 	use_real_mode = 0;
+	fgkaslr_opt = 0;
 	fname = NULL;
 	for (i = 1; i < argc; i++) {
 		char *arg = argv[i];
@@ -54,6 +55,10 @@ int main(int argc, char **argv)
 				use_real_mode = 1;
 				continue;
 			}
+			if (strcmp(arg, "--fg-kaslr") == 0) {
+				fgkaslr_opt = 1;
+				continue;
+			}
 		}
 		else if (!fname) {
 			fname = arg;
@@ -75,11 +80,11 @@ int main(int argc, char **argv)
 	if (e_ident[EI_CLASS] == ELFCLASS64)
 		process_64(fp, use_real_mode, as_text,
 			   show_absolute_syms, show_absolute_relocs,
-			   show_reloc_info);
+			   show_reloc_info, fgkaslr_opt);
 	else
 		process_32(fp, use_real_mode, as_text,
 			   show_absolute_syms, show_absolute_relocs,
-			   show_reloc_info);
+			   show_reloc_info, fgkaslr_opt);
 	fclose(fp);
 	return 0;
 }
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-10-alexandr.lobakin%40intel.com.
