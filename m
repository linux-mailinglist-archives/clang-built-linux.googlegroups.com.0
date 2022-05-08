Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBA5L4CJQMGQE3NUBFVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E8551EF1A
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:09:57 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id q12-20020a0566022f0c00b0065af7776ee7sf1086986iow.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:09:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652036996; cv=pass;
        d=google.com; s=arc-20160816;
        b=AfHXvt37P0eNRpqI0TvVAzJFm6XJqUqOMyS0pCLqC4naojeTegD5Y+cZ7tYw0jpfQ2
         dV1Irt9uY8O8p/55j7YxC3a+gbJTRygLcP56wn1Y/JzlStvpVoEY8NGm2XEuwNoIW9Zy
         hFdaX04jXV+Qg7qU3Iq/314KvXHp9hZ8ByvYagcMQcezHLhhpmiCpBrcrwqg3e2VU2mr
         eh8P3aWAzr1884FhZHyT7Ifxyf7Vsa3zgSS4Ci2/JNAePnLr/fKzE+3fdPwBz/6sFqbX
         hwYAA5HS1he2m1wsPu9YrpLYyTFPtf/E0IMbHiXUxe4dMhw1PZdtyPiXplES46yyH/ow
         4MWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=GvkgT9xJ4YAGOI8gfHnu86elyxbz5i33dDe2/X7He+4=;
        b=DdgMbI4SF4kbBhhSuO5Cb82/JQfd6LUoG0qBUD+hLUUD6I08JganlhEFjdbfxX/gZx
         Svi+WxUDsEy3uEcabNsafkAvPMZgs7+Xqb7OpiK6VasfopmkoflTTJiVfRkrPzSI/oiY
         qC2th6rfz4kNT9bRuzf1VbrzzKf885sZjZz3jxyC2gXFodue+Jq9tP2BhbrtUFjo32t2
         s642V6+TqOU1SuG3lSE0oOEhzZBBYO4CTQgm1xaVV9RifEtTiozQnycwQ9GqOxZXvFNe
         1XARpeSJirrwe2XdcRXw3zoyufUTTgilmwpRY3W5FG0FyKh+qkfp+Yaj16Nfba9Dp97u
         RXlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="ztPH/8k6";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GvkgT9xJ4YAGOI8gfHnu86elyxbz5i33dDe2/X7He+4=;
        b=WYjTBdumvEREVw2tV4+5t3QzRa2V+EebYdY8gJ2QdCh7HdDsmfP2aqV1+rDd8cf/RK
         KOukLSH1mAXzlkwTkvo4rhhaTEjgGmAxnsY1cF0XaIQpOBGLiOlzXAOxZ+HqLZTxhqUK
         RKLXV9bgm174Z7CtDiFa0ytwIyKhvS131F+xKhdnFxrq03a6MscgtVTQV6f71nmyI4bl
         FXmwXCIlDMZ6cZxzpPhwSJrrSiPkaRy2z43lyLtMW/O3szHa+jSfopv/+3j9kOT9QReC
         XWyEwgg5DYTHCOyiPdRYnVMjH+9Z/0uvi02OeeCL0ZemeJEKLyKyKSoyl8pBA0p4ii7U
         kM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GvkgT9xJ4YAGOI8gfHnu86elyxbz5i33dDe2/X7He+4=;
        b=3LTJLVHskogyDUVJVAdRpbZI6HHSUqkFdTXI7Jo8zDtgd362EMvDlQo6RKmLHh4vuW
         bJngztqRX72/eAS501e42pQR/yX8F028lCWtgXy0ChBfms9sIUB4CsyAZSWOJd5IsdOc
         SsSBoIpWj9uzjHu9ZsPBPP1zuxzaftgINZe1MocPxcKwkv39YtcnvXw6SRk9rARBMrhp
         vsTYOGNghupGyDBjhRd5o//0JOBhqDoX1SdbJcNiUNamce+3/WoY/H8xI5l9LVnwntTN
         VZuawTkC5QnRGARWkOZPBojbIl3HHKku7kNbT2yjUr9V2PdlsKpUAdkxfbsxM/D5AwQC
         z6Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531N1AMGKBKGokLVG4TX6fpuTEH/G3cwLc8G8Zm2ehIjDd1MbU2g
	mTTP/pYiY3T2kpsKNNcdnZQ=
X-Google-Smtp-Source: ABdhPJwyatcXww1HX92RrzKkaMt/mY/L39ovIJu5cHygLYYsBPBkVhlH4rsdH2nZEmkpIv4FSI0DPw==
X-Received: by 2002:a6b:2c46:0:b0:65a:4d2f:53 with SMTP id s67-20020a6b2c46000000b0065a4d2f0053mr5071801ios.149.1652036996111;
        Sun, 08 May 2022 12:09:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:27c4:b0:657:2805:929 with SMTP id
 l4-20020a05660227c400b0065728050929ls1344072ios.5.gmail; Sun, 08 May 2022
 12:09:55 -0700 (PDT)
X-Received: by 2002:a5e:820a:0:b0:649:5b8:d02c with SMTP id l10-20020a5e820a000000b0064905b8d02cmr5301322iom.50.1652036995676;
        Sun, 08 May 2022 12:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652036995; cv=none;
        d=google.com; s=arc-20160816;
        b=K9+iYC3/6CMZ9M03FBjj3Oa7qOfTR7Gfc+vQN82N5QvQhAl4K+3YJk3XvgWfEGisKR
         V54APqCfed5JMhNa7IjTU0LoiUrKunDpy+gLUMsidY387sC/K3XnmUt9Y2bb3572Tlvf
         kOgg/GOotpgb6c3Mj/+t7LeKDx5TwndHaEifr5v6LlRoKlYIDC+p/UPcunINHyVb4rKK
         LiCqN/RdPKQmRg7tWxR7kQtB3jCVKIE/7LddX5YC9maL5cq4oDME9Y1Oz66/36zzUlVG
         TU5C6dg609NCWHiUdllulJfK63ZNDSJKekipOl9slfBkgknJWjpxWJD4WdoaelJW6OYK
         V/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=Ql9G6KPWQ5/mHxdBx/eeInIlMujjp41xuyJMJCRCA5c=;
        b=pSEMfKKdZ+CzVZmj/fT7XUBjn9WsulBfeufcVxIQKHGjMO/LmxSWs0AnXpllDUGZXF
         j/sIzX36WNEXO2CNq4BZxCvIpWOj70w8SejBf+wf6GTShU5Aysn1tmqGyn7UFxvOxjSm
         OaZInVIyJ57d3/csTBmI4j9z+ZhHAM/ZH22jL8BQl7RT8NwuBM8A72IbXm2n9E3uV4T2
         ppx6P9WVNlsbkOhjEOcpXhtGTopVDaNMPApdgU3O2LdpR/ICGLbZIS9D5ix/6XoiO4ig
         i69qBHa1+aFMblGh2UDMEn7tNB4kjpPd4EoVOkNKTiOTRNtYMxqfamRJjndi9gX9dHBm
         1ncA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="ztPH/8k6";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id k41-20020a056638372900b0032b399f3bc6si908512jav.5.2022.05.08.12.09.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:09:55 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSP030019;
	Mon, 9 May 2022 04:08:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSP030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 02/14] modpost: change the license of EXPORT_SYMBOL to bool type
Date: Mon,  9 May 2022 04:06:19 +0900
Message-Id: <20220508190631.2386038-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="ztPH/8k6";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

There were more EXPORT_SYMBOL types in the past. The following commits
removed unused ones.

 - f1c3d73e973c ("module: remove EXPORT_SYMBOL_GPL_FUTURE")
 - 367948220fce ("module: remove EXPORT_UNUSED_SYMBOL*")

There are 3 remaining in enum export, but export_unknown does not make
any sense because we never expect such a situation like "we do not know
how it was exported".

If the symbol name starts with "__ksymtab_", but the section name
does not start with "___ksymtab+" or "___ksymtab_gpl+", it is not an
exported symbol.

It occurs when a variable starting with "__ksymtab_" is directly defined:

   int __ksymtab_foo;

Presumably, there is no practical issue for using such a weird variable
name (but there is no good reason for doing so, either).

Anyway, that is not an exported symbol. Setting export_unknown is not
the right thing to do. Do not call sym_add_exported() in this case.

With pointless export_unknown removed, the export type finally becomes
boolean (either EXPORT_SYMBOL or EXPORT_SYMBOL_GPL).

I renamed the field name to is_gpl_only. EXPORT_SYMBOL_GPL sets it true.
Only GPL-compatible modules can use it.

I removed the orphan comment, "How a symbol is exported", which is
unrelated to sec_mismatch_count. It is about enum export.
See commit bd5cbcedf446 ("kbuild: export-type enhancement to modpost.c")

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

Changes in v4:
  - Rebase again because I dropped
     https://patchwork.kernel.org/project/linux-kbuild/patch/20220501084032.1025918-11-masahiroy@kernel.org/
  - Remove warning message because I plan to change this hunk again in a later commit
  - Remove orphan comment

Changes in v3:
  - New patch

 scripts/mod/modpost.c | 108 ++++++++++++------------------------------
 1 file changed, 30 insertions(+), 78 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index d9efbd5b31a6..a78b75f0eeb0 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -30,7 +30,7 @@ static bool all_versions;
 static bool external_module;
 /* Only warn about unresolved symbols */
 static bool warn_unresolved;
-/* How a symbol is exported */
+
 static int sec_mismatch_count;
 static bool sec_mismatch_warn_only = true;
 /* ignore missing files */
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
 
@@ -316,34 +310,6 @@ static void add_namespace(struct list_head *head, const char *namespace)
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
@@ -374,18 +340,6 @@ static const char *sec_name(const struct elf_info *info, int secindex)
 
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
@@ -405,7 +359,7 @@ static void sym_update_namespace(const char *symname, const char *namespace)
 }
 
 static struct symbol *sym_add_exported(const char *name, struct module *mod,
-				       enum export export)
+				       bool gpl_only)
 {
 	struct symbol *s = find_symbol(name);
 
@@ -417,7 +371,7 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
 
 	s = alloc_symbol(name);
 	s->module = mod;
-	s->export    = export;
+	s->is_gpl_only = gpl_only;
 	list_add_tail(&s->list, &mod->exported_symbols);
 	hash_add_symbol(s);
 
@@ -689,8 +643,6 @@ static void handle_modversion(const struct module *mod,
 static void handle_symbol(struct module *mod, struct elf_info *info,
 			  const Elf_Sym *sym, const char *symname)
 {
-	const char *name;
-
 	switch (sym->st_shndx) {
 	case SHN_COMMON:
 		if (strstarts(symname, "__gnu_lto_")) {
@@ -724,12 +676,15 @@ static void handle_symbol(struct module *mod, struct elf_info *info,
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
 		}
 		if (strcmp(symname, "init_module") == 0)
 			mod->has_init = true;
@@ -2140,20 +2095,6 @@ void buf_write(struct buffer *buf, const char *s, int len)
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
@@ -2192,8 +2133,9 @@ static void check_exports(struct module *mod)
 			add_namespace(&mod->missing_namespaces, exp->namespace);
 		}
 
-		if (!mod->is_gpl_compatible)
-			check_for_gpl_usage(exp->export, basename, exp->name);
+		if (!mod->is_gpl_compatible && exp->is_gpl_only)
+			error("GPL-incompatible module %s.ko uses GPL-only symbol '%s'\n",
+			      basename, exp->name);
 	}
 }
 
@@ -2437,6 +2379,7 @@ static void read_dump(const char *fname)
 		unsigned int crc;
 		struct module *mod;
 		struct symbol *s;
+		bool gpl_only;
 
 		if (!(symname = strchr(line, '\t')))
 			goto fail;
@@ -2454,12 +2397,22 @@ static void read_dump(const char *fname)
 		crc = strtoul(line, &d, 16);
 		if (*symname == '\0' || *modname == '\0' || *d != '\0')
 			goto fail;
+
+		if (!strcmp(export, "EXPORT_SYMBOL_GPL")) {
+			gpl_only = true;
+		} else if (!strcmp(export, "EXPORT_SYMBOL")) {
+			gpl_only = false;
+		} else {
+			error("%s: unknown license %s. skip", symname, export);
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
@@ -2481,9 +2434,9 @@ static void write_dump(const char *fname)
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
@@ -2604,9 +2557,8 @@ int main(int argc, char **argv)
 
 		for (s = symbolhash[n]; s; s = s->next) {
 			if (s->is_static)
-				error("\"%s\" [%s] is a static %s\n",
-				      s->name, s->module->name,
-				      export_str(s->export));
+				error("\"%s\" [%s] is a static EXPORT_SYMBOL\n",
+				      s->name, s->module->name);
 		}
 	}
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-3-masahiroy%40kernel.org.
