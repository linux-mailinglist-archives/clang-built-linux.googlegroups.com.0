Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSPXZWJQMGQEHE5NZVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F61951B8B1
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:24:59 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id k2-20020a0566022a4200b00654c0f121a9sf2394468iov.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:24:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735498; cv=pass;
        d=google.com; s=arc-20160816;
        b=cZToqzZD2GGjAZGFrkgvO91US0TbHrzHi0AK8ywlJugCk62o4GTt39tJPKh3c+y/8o
         TEa6AYYgQcAsB7/s7L50S+/ECdOQctJQlrjRQthKixZAm3BaPNRUz5y9NH/mHWU5ONTc
         54zWnmo3JV4yosWtHcVYL9gBxSHoPBmzrDHUmbyGrgve7ntzMhuaAz/sVxb5zVxX1GfU
         ePrRjuO8wPFXPBvZ1UrPD/lS0qGCPyMw+aTPvCw1i+ZdUuLVLhsFIDFbxS6/VCq4cqGS
         JoGdxSFI3RBaABOlt0iAr2SCbiGh0CdovxVsRPH92ubW80EpPWtCivmpTb6dihtqzvnf
         tpiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=SIO1AVYYiDZmtfDNd37RDhNqnMpNekN2WiuH4WsaiSI=;
        b=sMl6qxH/mP2MaCUtmhhag4vagjv+y3w46I3VbRHtJX+V+037SUxE0KfVj/6i4HXk9G
         +6R4laQU4GEfXz3FS1Xmfpm5tZSur2/d3g9yhIt46MThvV3/1hREt0s2xLDXWSKG/5gF
         w0g1MEXTlrV7zW/cMXIrym/6GWfX2jx2HZbnAsBOf68uC0CGsWVo1vd3BjS+5P6DaSYE
         xEW6Zk/Qwko0QZC7M58e3P8wTo0LCWkCV8iu2WC8chXFljFaJ+LfR9MT5ON3G08ziQ+r
         HH1XHU3aRJlrdmAG6BHmvq6YjlGlM8X9Ai9c9euxp9yVxrrf1YLdg1oEDf/5CIVJliTn
         J0dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=lnhRgRnl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SIO1AVYYiDZmtfDNd37RDhNqnMpNekN2WiuH4WsaiSI=;
        b=JKGku1z/IKaiYlPdKz41wa4xAMa6PdvkkQ33op5NHchX5paqBVicnhnKjnz2dMXG2z
         qLvER9WViuu6e2FdsjI1r6S/01/JyURCHYkyTCZmCGETxv/jlkLh4g28Z0gerWWxmzVG
         JsAPQpIZsEDbEkbxbIAFNdxkMKjN8prmAnoIhZ04td4uqjn3lWq71JtBoGHVlEVCKsN3
         0cxvCR3I/s+4zx7Gi4zLPWZKgN2tGQW1KgYe8vRMZ2itfy9tDb4OFYYgEyAbdEIcnXnY
         KDw/nGFw9za+p6YkotOoDQ8e9vLUkzx0BQ5DvSKNdW/9Wk07lEMTbGQgTde4ySCsd+oE
         JofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SIO1AVYYiDZmtfDNd37RDhNqnMpNekN2WiuH4WsaiSI=;
        b=YuksT32tu9EJn9Vuoz4CZXLiset0iDAeAQK81cezQ9RJ6oIbeU+JOIT+RAUtI00kU8
         VPSbSMuJDcRJkCC4PZ0aJBSjHE+Bpkw9Dshkpud2XsBt+0TrZh59oc37AmSItokIfL6c
         DWgYd2jGGD3z43vC5Vd8pPGgsKneqnvNGteK0dXbEp1ivylgoDB0LOxu5PpHz3yncBXF
         Omz0z2oZn7eQAQwyDMXq9rhuTbKyXX43qNXNWM0WdNY6IPOYmSWZ5NEjzbll0nlpNIZr
         1Wu+R/G68jQNuSUGC6gtgHxaNRU1hKJyOfyzL3Q2f3VbeK4YNuPBk5H/mYkHcacbRXIj
         Mqhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MEiZfa38SXz7PX9G9l8WQtbKW4dkyYinsF9OHqToCsQuMhK4t
	awVoyJ8qKtuE21z8NZU6vj8=
X-Google-Smtp-Source: ABdhPJxhDvVGa9KxkDLNzZ6BAoM8j7jVaYhcx/gM4HytXBvwGWtjkhu/IJBkIC5wyV1OR0jgFLO5nQ==
X-Received: by 2002:a05:6602:1485:b0:65a:a5e6:1ec1 with SMTP id a5-20020a056602148500b0065aa5e61ec1mr2433505iow.33.1651735498038;
        Thu, 05 May 2022 00:24:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:130c:b0:32b:8cba:d72d with SMTP id
 r12-20020a056638130c00b0032b8cbad72dls728628jad.5.gmail; Thu, 05 May 2022
 00:24:57 -0700 (PDT)
X-Received: by 2002:a05:6638:345b:b0:32b:171c:e98a with SMTP id q27-20020a056638345b00b0032b171ce98amr10540620jav.157.1651735497573;
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735497; cv=none;
        d=google.com; s=arc-20160816;
        b=AsLrDDuiyZ2Jys0Vu738ihFNdBQ2BgchjUC16yWRkrJI+SFxwJBv5z6QIuiB2yIhYn
         k5hYvGxjl2MLNAyWTxITP1yK8KNvql8xkxuqej4F0DzAFdANJvBrxd7XE9cksCQX3VcM
         pOsNVsCzz64Sth2Sbh6xzvnti5UcBwTh7ZoKfjhHE6JoFTYzjzoiQ3ZDtMOpATt0UkwX
         ZZtXzul4NXKqo3q0S4lDu4ibjZGY0lgyIKwdK00mf7AyL9NRSbxo1k6Irei220Metjkh
         ZZjWtssyqS1mG/l/sDlj2KGe8c7+gGhZIK6R8gkSHwce4tnfoPBkoSS5EZTa03eepUnb
         77fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=H5IgqTUvzvIAQNbWlA80TiHii36q0B+qbmYPDwvWwHg=;
        b=oil9VUtjQRACapQ4u1JNPQvvjeoeGFIJX5+LobfgzpSl6ohAHJckoenaUmb9n9/y7S
         Nny8mC548ca0H7HtvMwKi5tCRBCF8g3qCfLHrFC44CDGBNJsjC+IAxjv4r5SeSRNADoz
         9B+AgO7BOaRjmx3i1kCXf6fXfkgOxKG3hjE/Oazz2/IxPIXFvj1vUgQp2CMY7sQQoITJ
         LvRwFAfVhD/L8XX69bSln3TIjeUyIIrtJ/DyUes9NdWH/QcGYhgvySirUtLSU8ytkGbc
         2nr9Em21HCnVyPxrgN0iUiXw2mNoSyAljA+VdHNtY+AJ19o5EWxz/5FvWuK+bdvrIM0G
         fOFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=lnhRgRnl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id u12-20020a02c94c000000b0032660e40518si95176jao.4.2022.05.05.00.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenk019426;
	Thu, 5 May 2022 16:23:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenk019426
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
Subject: [PATCH v3 02/15] modpost: change the license of EXPORT_SYMBOL to bool type
Date: Thu,  5 May 2022 16:22:31 +0900
Message-Id: <20220505072244.1155033-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=lnhRgRnl;       spf=softfail
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

Currently, enum export is tristate, but export_unknown does not make
sense in any way.

If the symbol name starts with "__ksymtab_", but the section name
does not start with "___ksymtab+" or "___ksymtab_gpl+", it is not
an exported symbol. The variable name just happens to start with
"__ksymtab_". Do not call sym_add_exported() in this case.

__ksymtab_* is internally by EXPORT_SYMBOL(_GPL) but somebody may
directly define a global variable with a such name, like this:

   int __ksymtab_foo;

Presumably, there is no practical issue for this, but there is no good
reason to use such a weird name.

This commit adds a new warning for such a case:

    WARNING: modpost: __ksymtab_foo: Please consider renaming. Variables starting with "__ksymtab_" is for internal use.

With pointless export_unknown removed, the license type of exported
symbols is boolean (EXPORT_SYMBOL or EXPORT_SYMBOL_GPL).

I renamed the field name to is_gpl_only. If it is true, only GPL-compat
modules can use it.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v3:
  - New patch

 scripts/mod/modpost.c | 108 +++++++++++++-----------------------------
 1 file changed, 32 insertions(+), 76 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index a55fa2b88a9a..ebd80c77fa03 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -47,12 +47,6 @@ static bool error_occurred;
 #define MAX_UNRESOLVED_REPORTS	10
 static unsigned int nr_unresolved;
 
-enum export {
-	export_plain,
-	export_gpl,
-	export_unknown
-};
-
 /* In kernel, this size is defined in linux/module.h;
  * here we use Elf_Addr instead of long for covering cross-compile
  */
@@ -219,7 +213,7 @@ struct symbol {
 	bool crc_valid;
 	bool weak;
 	bool is_static;		/* true if symbol is not global */
-	enum export  export;       /* Type of export */
+	bool is_gpl_only;	/* exported by EXPORT_SYMBOL_GPL */
 	char name[];
 };
 
@@ -321,34 +315,6 @@ static void add_namespace(struct list_head *head, const char *namespace)
 	}
 }
 
-static const struct {
-	const char *str;
-	enum export export;
-} export_list[] = {
-	{ .str = "EXPORT_SYMBOL",            .export = export_plain },
-	{ .str = "EXPORT_SYMBOL_GPL",        .export = export_gpl },
-	{ .str = "(unknown)",                .export = export_unknown },
-};
-
-
-static const char *export_str(enum export ex)
-{
-	return export_list[ex].str;
-}
-
-static enum export export_no(const char *s)
-{
-	int i;
-
-	if (!s)
-		return export_unknown;
-	for (i = 0; export_list[i].export != export_unknown; i++) {
-		if (strcmp(export_list[i].str, s) == 0)
-			return export_list[i].export;
-	}
-	return export_unknown;
-}
-
 static void *sym_get_data_by_offset(const struct elf_info *info,
 				    unsigned int secindex, unsigned long offset)
 {
@@ -379,18 +345,6 @@ static const char *sec_name(const struct elf_info *info, int secindex)
 
 #define strstarts(str, prefix) (strncmp(str, prefix, strlen(prefix)) == 0)
 
-static enum export export_from_secname(struct elf_info *elf, unsigned int sec)
-{
-	const char *secname = sec_name(elf, sec);
-
-	if (strstarts(secname, "___ksymtab+"))
-		return export_plain;
-	else if (strstarts(secname, "___ksymtab_gpl+"))
-		return export_gpl;
-	else
-		return export_unknown;
-}
-
 static void sym_update_namespace(const char *symname, const char *namespace)
 {
 	struct symbol *s = find_symbol(symname);
@@ -410,7 +364,7 @@ static void sym_update_namespace(const char *symname, const char *namespace)
 }
 
 static struct symbol *sym_add_exported(const char *name, struct module *mod,
-				       enum export export)
+				       bool gpl_only)
 {
 	struct symbol *s = find_symbol(name);
 
@@ -422,7 +376,7 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
 
 	s = alloc_symbol(name);
 	s->module = mod;
-	s->export    = export;
+	s->is_gpl_only = gpl_only;
 	list_add_tail(&s->list, &mod->exported_symbols);
 	hash_add_symbol(s);
 
@@ -694,8 +648,6 @@ static void handle_modversion(const struct module *mod,
 static void handle_symbol(struct module *mod, struct elf_info *info,
 			  const Elf_Sym *sym, const char *symname)
 {
-	const char *name;
-
 	switch (sym->st_shndx) {
 	case SHN_COMMON:
 		if (strstarts(symname, "__gnu_lto_")) {
@@ -729,12 +681,18 @@ static void handle_symbol(struct module *mod, struct elf_info *info,
 	default:
 		/* All exported symbols */
 		if (strstarts(symname, "__ksymtab_")) {
-			enum export export;
+			const char *name, *secname;
 
 			name = symname + strlen("__ksymtab_");
-			export = export_from_secname(info,
-						     get_secindex(info, sym));
-			sym_add_exported(name, mod, export);
+			secname = sec_name(info, get_secindex(info, sym));
+
+			if (strstarts(secname, "___ksymtab_gpl+"))
+				sym_add_exported(name, mod, true);
+			else if (strstarts(secname, "___ksymtab+"))
+				sym_add_exported(name, mod, false);
+			else
+				warn("%s: Please consider renaming. Variables starting with \"__ksymtab_\" is for internal use.\n",
+				     symname);
 		}
 		if (strcmp(symname, "init_module") == 0)
 			mod->has_init = true;
@@ -2146,20 +2104,6 @@ void buf_write(struct buffer *buf, const char *s, int len)
 	buf->pos += len;
 }
 
-static void check_for_gpl_usage(enum export exp, const char *m, const char *s)
-{
-	switch (exp) {
-	case export_gpl:
-		error("GPL-incompatible module %s.ko uses GPL-only symbol '%s'\n",
-		      m, s);
-		break;
-	case export_plain:
-	case export_unknown:
-		/* ignore */
-		break;
-	}
-}
-
 static void check_exports(struct module *mod)
 {
 	struct symbol *s, *exp;
@@ -2198,14 +2142,15 @@ static void check_exports(struct module *mod)
 			add_namespace(&mod->missing_namespaces, exp->namespace);
 		}
 
-		if (!mod->is_gpl_compatible)
-			check_for_gpl_usage(exp->export, basename, exp->name);
+		if (!mod->is_gpl_compatible && exp->is_gpl_only)
+			error("GPL-incompatible module %s.ko uses GPL-only symbol '%s'\n",
+			      basename, exp->name);
 	}
 
 	list_for_each_entry(s, &mod->exported_symbols, list) {
 		if (s->is_static)
-			error("\"%s\" [%s] is a static %s\n",
-			      s->name, mod->name, export_str(s->export));
+			error("\"%s\" [%s] is a static EXPORT_SYMBOL\n",
+			      s->name, mod->name);
 	}
 }
 
@@ -2429,6 +2374,7 @@ static void read_dump(const char *fname)
 		unsigned int crc;
 		struct module *mod;
 		struct symbol *s;
+		bool gpl_only;
 
 		if (!(symname = strchr(line, '\t')))
 			goto fail;
@@ -2446,12 +2392,22 @@ static void read_dump(const char *fname)
 		crc = strtoul(line, &d, 16);
 		if (*symname == '\0' || *modname == '\0' || *d != '\0')
 			goto fail;
+
+		if (!strcmp(export, "EXPORT_SYMBOL_GPL"))
+			gpl_only = true;
+		else if (!strcmp(export, "EXPORT_SYMBOL"))
+			gpl_only = false;
+		else {
+			error("%s: unknown license for %s. skip", export, symname);
+			continue;
+		}
+
 		mod = find_module(modname);
 		if (!mod) {
 			mod = new_module(modname);
 			mod->from_dump = true;
 		}
-		s = sym_add_exported(symname, mod, export_no(export));
+		s = sym_add_exported(symname, mod, gpl_only);
 		s->is_static = false;
 		sym_set_crc(symname, crc);
 		sym_update_namespace(symname, namespace);
@@ -2473,9 +2429,9 @@ static void write_dump(const char *fname)
 		if (mod->from_dump)
 			continue;
 		list_for_each_entry(sym, &mod->exported_symbols, list) {
-			buf_printf(&buf, "0x%08x\t%s\t%s\t%s\t%s\n",
+			buf_printf(&buf, "0x%08x\t%s\t%s\tEXPORT_SYMBOL%s\t%s\n",
 				   sym->crc, sym->name, mod->name,
-				   export_str(sym->export),
+				   sym->is_gpl_only ? "_GPL" : "",
 				   sym->namespace ?: "");
 		}
 	}
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-3-masahiroy%40kernel.org.
