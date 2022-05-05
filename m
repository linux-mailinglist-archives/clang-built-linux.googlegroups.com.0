Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUHXZWJQMGQEIAJFFWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A94D851B8BC
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:05 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id s19-20020ad44b33000000b00456107e1120sf2601967qvw.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735504; cv=pass;
        d=google.com; s=arc-20160816;
        b=brS4bd94GUGL/ylCBMwTwwFx2aNLvwgZiD/g0mzHXzNNZwAvAteqKtNshwiQGZRFhU
         dY/xQQp3eoenemIiGt+Vsy3cHQcUAb82JjR6+Qf1kefFXWIrO0KsL/HrYMRFI65+SEap
         wwogHTwuaF2Q2ibAdpwqaHZ3KHgHLq1T8FRdW4pCpQMeAlprJ6G9Q8qduUNfy2MwUI40
         6K2P1QI4dIVShl88gep51YPE6t4VW4XrbyDyOY6VyIdsxfHltRRSpFx/3ZgZSj5Osq/x
         ApkbNV8b43Zhga8GwP5xDbgMqLfneF1ewCstGZkOgiPbCKCp3HrUk6v3xYvpW7qIp8qn
         8hLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=pfBQ0Kri5RP+cnG5RaSj3CDZ9ymZhkztV89+muhzxNA=;
        b=c83Z47IyiCj58FWFt7M69yM6ZtAd4XHlyWpnro5qV0Wf1GitD/9H6Y/ACDAz27Ahls
         hsurYAlGk3m6SGCcehyE+2Frr7IFR6nnCDkxB9OQQWoJSMmQQR6+VufPkXc2BwdvD5zc
         /wj1B7IU6H5ySso6rsaxhBWdWDBG45q2TY/U2coWTMLG+a9R6fL9QjUgI5KYNXQ3Pko3
         HbykwiXVoUxMtn06YXAPxhxZJOvtjioIMQdoIJ+4fvwUkHIW11pAqZHHs4TuVkAUyGXX
         P9FrqkY0ZuilLAS6Y5o2Mua0Ykje7jFvZs5RRQF0pF+/MbLziM0+jRr+QOZqAhDr/9IY
         hfFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OHcV5xhK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pfBQ0Kri5RP+cnG5RaSj3CDZ9ymZhkztV89+muhzxNA=;
        b=NtAw3iISeK+eSt3LkAk3PoXBiMtu0BXYIxH8ZbicakJO3DW8ZVmj+UsmsTxP5FNdGb
         TTh5kKiiiRSErX5zkRx5Q3New3eT8sZ8y2d8pVwD4qjKdVaqyV3ckRZ8wbokPgbW4wWy
         eV7qte3sur57rRUMWxm5oQBgDGjVyFbkZP6efl+Hjnm3pixM55LTy5qtJ7OHMcjzDwCb
         FeO/4FebC9REJrdnoruviCpmuwum1rix07zBXJDJf0RIRwsHNvg0retZqVdgajBCSZYk
         qD6hvfKxX/CzGTAap6PI5dBbu0QoT77Zyq1sEGZUMjagg4n3Qpg+EQGFaG3YZxpf6IbZ
         nvGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pfBQ0Kri5RP+cnG5RaSj3CDZ9ymZhkztV89+muhzxNA=;
        b=0/1XkGfL1+fyjwh53EloTReBCaAOg55P9457RlPYy8iFdJMTNKBni4TApnj0WVp5bI
         X59oQuIgMOljUSgzrMRS3iKg2nXPw1Kkkrc8CCx/OLLWh+bOuJ9UGUnDQyygiAD3vudY
         dPU0ZCRx23ONkNG8O86szyKn/KWzHmaGivT3IpiOQCnbrYEcTm05jqDqSs02lUSRhrHt
         tImPdl6s3XeeSR/QT1oZNCqW8+Q4aAL7Rvn+KQ24vWGsm/OXMVcguApKjDJI8tAj4jTG
         jO1hPwqdlOk3RVUzBqN+czkUzXDqz/AuFe0tnJ3NxImDMLabl9Bch11tv6zJ6N4zijcT
         +d5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/ubobOJMlaCX9/wajVpBET3XAYE4TzwwhmaFAuRKTV7A4+KMR
	kGYcMjrYX/esIPvx9mp5CLg=
X-Google-Smtp-Source: ABdhPJyGePr1Ypr4FiCbHr8m6XRuLAKauyYh5oyPMAomhlKHFKscfaR8VR0X9LdVKuYIfs7TA1U8Bw==
X-Received: by 2002:a05:6214:2342:b0:42d:7c8b:9eac with SMTP id hu2-20020a056214234200b0042d7c8b9eacmr21010473qvb.5.1651735504804;
        Thu, 05 May 2022 00:25:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:25d:b0:6a0:1817:3d24 with SMTP id
 q29-20020a05620a025d00b006a018173d24ls2326653qkn.8.gmail; Thu, 05 May 2022
 00:25:04 -0700 (PDT)
X-Received: by 2002:a05:620a:24c5:b0:69e:e777:4323 with SMTP id m5-20020a05620a24c500b0069ee7774323mr18702759qkn.465.1651735504373;
        Thu, 05 May 2022 00:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735504; cv=none;
        d=google.com; s=arc-20160816;
        b=WeWdPPwgw0Pgig3yHw9R8AnCdSvv691VXpFtrOPbtjc+CiuZhwZbQBCnKzMYqF/PlM
         32swCsI+x7Jj+7alJYK0ZDi2Bf569hhL9qZmYSeg/7OYNf7+7hxrA7eVElRV99iQ+o4t
         Jgo1kZ4XJKoxZWxh0DcAxp0Mc3LgZDyqWfUAuRjxBU0oBPY2qFq2ZDnGkQaqYZaGwXXb
         uLH/UQDbvx4wCtRF+PbXtLQERAzS0/mW/C3rWk11m6SgAFB7VdXW5GeGsKCJxQ81+itY
         clxAxeTDRTImHwk59Paml/7GsvTA7NnWoZbC6aBntsdGld2eIwjgDW8qTrsBFyXkKV95
         LmfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=2CHxbipFjHlbz2O5iW/rNzyobuLxsHB9/jS1YJ/YnkI=;
        b=N7si18qfht14rvGH7tMQ12Hg+jC4d6W9sOrw1/R94um95pGPLmLldRp7WE/6Hdh1OP
         7+0pDZNOcEDFUh6roIT2MiOlMKxlz7nl6kcyA9B0ObhWQM8U85dilJjZMgu4XXmv/bYE
         lrbeSqrMidVtcyH2yDGb7JNXGCYVWLxvDIAErDA6X40MRQ7Slrb7LdHo9oWP5EkvoI+j
         Euf6l0bQw5h98SC1SbFwXiyYtwOXPVEklayB/rwcgCQyhiu2thAY7D6CqKvzreMTPkJm
         YJiKIA4Tg+77U5kaWW6Vc82OKZJ3V4k03ozvLgdAIhE5KQ5Opq/SoRTl0NuZnogNWvcl
         ybNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OHcV5xhK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id o2-20020ac872c2000000b002eba0cb25f3si26591qtp.4.2022.05.05.00.25.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:04 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenp019426;
	Thu, 5 May 2022 16:23:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenp019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 07/15] modpost: extract symbol versions from *.cmd files
Date: Thu,  5 May 2022 16:22:36 +0900
Message-Id: <20220505072244.1155033-8-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=OHcV5xhK;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Currently, CONFIG_MODVERSIONS needs extra link to embed the symbol
versions into ELF objects. Then, modpost extracts the version CRCs
from them.

The following figures show how it currently works, and how I am trying
to change it.

Current implementation
======================
                                                           |----------|
                 embed CRC      -------------------------->| final    |
      $(CC)        $(LD)       /  |---------|              | link for |
  *.c ------> *.o -------> *.o -->| modpost |              | vmlinux  |
                     /            |         |-- *.mod.c -->| or       |
     genksyms       /             |---------|              | module   |
  *.c ------> *.symversions                                |----------|

Genksyms outputs the calculated CRCs in the form of linker script
(*.symversions), which is used by $(LD) to update the object.

If CONFIG_LTO_CLANG=y, the build process becomes much more complex.
Embedding the CRCs is postponed until the LLVM bitcode is converted
into ELF, creating another intermediate *.prelink.o.

However, this complexity is unneeded. There is no reason why we must
embed version CRCs in objects so early.

There is final link stage for vmlinux (scripts/link-vmlinux.sh) and
modules (scripts/Makefile.modfinal). We can link CRCs at the very last
moment.

New implementation
==================
                                                           |----------|
                   --------------------------------------->| final    |
      $(CC)       /    |---------|                         | link for |
  *.c ------> *.o ---->|         |                         | vmlinux  |
                       | modpost |--- .vmlinux-symver.c -->| or       |
     genksyms          |         |--- *.mod.c ------------>| module   |
  *.c ------> *.cmd -->|---------|                         |----------|

Pass the symbol versions to modpost as separate text data, which are
available in *.cmd files.

This commit changes modpost to extract CRCs from *.cmd files instead of
from ELF objects.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

(no changes since v2)

Changes in v2:
  - Simplify the implementation (parse .cmd files after ELF)

 scripts/mod/modpost.c | 177 ++++++++++++++++++++++++++++++------------
 1 file changed, 129 insertions(+), 48 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 78a7107fcc40..92ee1f454e29 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -383,19 +383,10 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
 	return s;
 }
 
-static void sym_set_crc(const char *name, unsigned int crc)
+static void sym_set_crc(struct symbol *sym, unsigned int crc)
 {
-	struct symbol *s = find_symbol(name);
-
-	/*
-	 * Ignore stand-alone __crc_*, which might be auto-generated symbols
-	 * such as __*_veneer in ARM ELF.
-	 */
-	if (!s)
-		return;
-
-	s->crc = crc;
-	s->crc_valid = true;
+	sym->crc = crc;
+	sym->crc_valid = true;
 }
 
 static void *grab_file(const char *filename, size_t *size)
@@ -618,33 +609,6 @@ static int ignore_undef_symbol(struct elf_info *info, const char *symname)
 	return 0;
 }
 
-static void handle_modversion(const struct module *mod,
-			      const struct elf_info *info,
-			      const Elf_Sym *sym, const char *symname)
-{
-	unsigned int crc;
-
-	if (sym->st_shndx == SHN_UNDEF) {
-		warn("EXPORT symbol \"%s\" [%s%s] version generation failed, symbol will not be versioned.\n"
-		     "Is \"%s\" prototyped in <asm/asm-prototypes.h>?\n",
-		     symname, mod->name, mod->is_vmlinux ? "" : ".ko",
-		     symname);
-
-		return;
-	}
-
-	if (sym->st_shndx == SHN_ABS) {
-		crc = sym->st_value;
-	} else {
-		unsigned int *crcp;
-
-		/* symbol points to the CRC in the ELF object */
-		crcp = sym_get_data(info, sym);
-		crc = TO_NATIVE(*crcp);
-	}
-	sym_set_crc(symname, crc);
-}
-
 static void handle_symbol(struct module *mod, struct elf_info *info,
 			  const Elf_Sym *sym, const char *symname)
 {
@@ -1955,6 +1919,102 @@ static char *remove_dot(char *s)
 	return s;
 }
 
+/*
+ * The CRCs are recorded in .*.cmd files in the form of:
+ * #SYMVER <name> <crc>
+ */
+static void extract_crcs_for_object(const char *object, struct module *mod)
+{
+	char cmd_file[PATH_MAX];
+	char *buf, *p;
+	const char *base;
+	int dirlen, ret;
+
+	base = strrchr(object, '/');
+	if (base) {
+		base++;
+		dirlen = base - object;
+	} else {
+		dirlen = 0;
+		base = object;
+	}
+
+	ret = snprintf(cmd_file, sizeof(cmd_file), "%.*s.%s.cmd",
+		       dirlen, object, base);
+	if (ret >= sizeof(cmd_file)) {
+		error("%s: too long path was truncated\n", cmd_file);
+		return;
+	}
+
+	buf = read_text_file(cmd_file);
+	p = buf;
+
+	while ((p = strstr(p, "\n#SYMVER "))) {
+		char *name;
+		size_t namelen;
+		unsigned int crc;
+		struct symbol *sym;
+
+		name = p + strlen("\n#SYMVER ");
+
+		p = strchr(name, ' ');
+		if (!p)
+			break;
+
+		namelen = p - name;
+		p++;
+
+		if (!isdigit(*p))
+			continue;	/* skip this line */
+
+		crc = strtol(p, &p, 0);
+		if (*p != '\n')
+			continue;	/* skip this line */
+
+		name[namelen] = '\0';
+
+		sym = sym_find_with_module(name, mod);
+		if (!sym) {
+			warn("Skip the version for unexported symbol \"%s\" [%s%s]\n",
+			     name, mod->name, mod->is_vmlinux ? "" : ".ko");
+			continue;
+		}
+		sym_set_crc(sym, crc);
+	}
+
+	free(buf);
+}
+
+/*
+ * The symbol versions (CRC) are recorded in the .*.cmd files.
+ * Parse them to retrieve CRCs for the current module.
+ */
+static void mod_set_crcs(struct module *mod)
+{
+	char objlist[PATH_MAX];
+	char *buf, *p, *obj;
+	int ret;
+
+	if (mod->is_vmlinux) {
+		strcpy(objlist, ".vmlinux.objs");
+	} else {
+		/* objects for a module are listed in the *.mod file. */
+		ret = snprintf(objlist, sizeof(objlist), "%s.mod", mod->name);
+		if (ret >= sizeof(objlist)) {
+			error("%s: too long path was truncated\n", objlist);
+			return;
+		}
+	}
+
+	buf = read_text_file(objlist);
+	p = buf;
+
+	while ((obj = strsep(&p, "\n")) && obj[0])
+		extract_crcs_for_object(obj, mod);
+
+	free(buf);
+}
+
 static void read_symbols(const char *modname)
 {
 	const char *symname;
@@ -2015,9 +2075,6 @@ static void read_symbols(const char *modname)
 		if (strstarts(symname, "__kstrtabns_"))
 			sym_update_namespace(symname + strlen("__kstrtabns_"),
 					     sym_get_data(&info, sym));
-		if (strstarts(symname, "__crc_"))
-			handle_modversion(mod, &info, sym,
-					  symname + strlen("__crc_"));
 	}
 
 	// check for static EXPORT_SYMBOL_* functions && global vars
@@ -2046,12 +2103,17 @@ static void read_symbols(const char *modname)
 
 	parse_elf_finish(&info);
 
-	/* Our trick to get versioning for module struct etc. - it's
-	 * never passed as an argument to an exported function, so
-	 * the automatic versioning doesn't pick it up, but it's really
-	 * important anyhow */
-	if (modversions)
+	if (modversions) {
+		/*
+		 * Our trick to get versioning for module struct etc. - it's
+		 * never passed as an argument to an exported function, so
+		 * the automatic versioning doesn't pick it up, but it's really
+		 * important anyhow
+		 */
 		sym_add_unresolved("module_layout", mod, false);
+
+		mod_set_crcs(mod);
+	}
 }
 
 static void read_symbols_from_files(const char *filename)
@@ -2214,6 +2276,23 @@ static void add_header(struct buffer *b, struct module *mod)
 		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
 }
 
+static void check_symversions(struct module *mod)
+{
+	struct symbol *sym;
+
+	if (!modversions)
+		return;
+
+	list_for_each_entry(sym, &mod->exported_symbols, list) {
+		if (!sym->crc_valid) {
+			warn("EXPORT symbol \"%s\" [%s%s] version generation failed, symbol will not be versioned.\n"
+			     "Is \"%s\" prototyped in <asm/asm-prototypes.h>?\n",
+			     sym->name, mod->name, mod->is_vmlinux ? "" : ".ko",
+			     sym->name);
+		}
+	}
+}
+
 /**
  * Record CRCs for unresolved symbols
  **/
@@ -2429,7 +2508,7 @@ static void read_dump(const char *fname)
 		}
 		s = sym_add_exported(symname, mod, gpl_only);
 		s->is_static = false;
-		sym_set_crc(symname, crc);
+		sym_set_crc(s, crc);
 		sym_update_namespace(symname, namespace);
 	}
 	free(buf);
@@ -2554,6 +2633,8 @@ int main(int argc, char **argv)
 		if (mod->from_dump)
 			continue;
 
+		check_symversions(mod);
+
 		if (!mod->is_vmlinux)
 			write_mod_c_file(mod);
 	}
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-8-masahiroy%40kernel.org.
