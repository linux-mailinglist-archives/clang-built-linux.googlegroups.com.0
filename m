Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBA5L4CJQMGQE3NUBFVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3918351EF1B
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:09:57 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id m11-20020a056e020deb00b002cbde7e7dcfsf6504744ilj.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:09:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652036996; cv=pass;
        d=google.com; s=arc-20160816;
        b=vqby1Bes0zNjRgSDVeODxJOgzxqhZDcXFg5N+RGV4xTgymV5/7GPoyms6S3uFlWKFt
         uk4crRpBWKo+wiRpdCzmS/J2Cqd5u0HrosHJ3W9Xrz7RvkMsMq80rjP0F9aeSoAjZ8I8
         hx6ZQiKGjCKC1LXASXICjzde/vjfvqM/ut2FPoGfvXocuw/jMcRxQrNyr65bIfEkei8r
         fv2zCjw0TBCYe6ljeV4bGSJ1rd95cRypcvCe3CZH4dRETpd9Z7vuZtv80iFX3n7EOriu
         iwvhD6BfA9x2p/1gRkTC7ckrs3YI2c8MoGNPR/K3HrcCgzxe8eC+agjtogWBigxTY3w0
         In4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=pMbHzPUn5uol+E/0c41xnQCo6Cgbu6S/PvIhowqWj/c=;
        b=oA5ZJEVML09SMWIafXCH5joCUoL3Ld06fTQNaJDknqrcM6nm+YunvaBNqC1U0LgAwS
         MZmmeblBttOp/57Vu7QDvff7R+L7cyTFyglVWugYcdkinKgDQuL8SvcwxNEy/Bs6DLDy
         WhGL9NExXEpklS/bL5n9X3+1JKSG/pdutGbxpJVfVSeEcPXQqtF/XQsz9ba+SYy6KEAC
         ookECqezOkaaov69BUFz04kQ9KZP0T5fm166j4AUln6hrX+IGn35ZeeHKO11Fm1NkHxL
         5LHeajKzXINI14QN6IpgOwSjOaIAwZbunkQbA12Cts6ncx0BX5ZprqWWauXJw7OnQKV3
         IzOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HmOzBgE3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pMbHzPUn5uol+E/0c41xnQCo6Cgbu6S/PvIhowqWj/c=;
        b=tQ8oaS57km+FeRbCcjG63hS17I6foCRc+umev4kzcDObn2bM/RbLENlpIL/CL8M6eX
         uI2i2Q4OztUgWbt2ig95TPnFjPJAy6H2u7AS+qSHl7b0M5Ukq2WM0BY+Z067OBgBsiWt
         x5LOMXq2KaiR8U7/kGnbEEeynUGJwUfysfVG4f0SOBxhbagB+yom+3KFWRV0yBoZqL/0
         /9KGrH+otfCzKOoNpAUlVwUHGhLk1KDxLHJwl8HQFRr59PCwYnFoTncrgtrPrH1UJu8r
         rvJB2nDawZN+ekCVLALfjyIdmsnKUiomtatakjN3HYylhwfCRIZB0lFroTLaWc5Smkyl
         3anw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pMbHzPUn5uol+E/0c41xnQCo6Cgbu6S/PvIhowqWj/c=;
        b=j7/KeVsNwtZhIhi6QyBUufy3zj7bpadsQIfOTUBq0h7GHaRNzpgqW7UyiOC2aWGX18
         26AEd0ex6gvRQz5BK6B1rXlYOm/rmS4X27B7hLymdH9NpIHqRz/GyHrY/dhtJmEdF7kA
         7suJ0R92zagtSZ09cSYN5TPYZpe+9gO2nf1IYCQ6kEpzlXiaGUN5wMRKQvQQk8uhftYK
         Wuo3vrG07nxi/16lq5GQ8FImZ3VPMT+a984sRRK5ZFfGr4/15JXoI6k5AF0yGPPqwZmg
         kMPHGgeXW8uC6at4E53xVyVr4qzHHv5xFwvct+M72iMTdwgVegwMU2Ju3Zso0nd1pxgS
         LPrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SWPaiBUvJaY8OcaYIP71DgzQQoAYIj+4sZgsqu/Pf6CoIpRqS
	40qmIDsqJa30DSspZ9nhMSU=
X-Google-Smtp-Source: ABdhPJyHPHfhkCOJzy4sSVSyYvys8C95nO/a5zyzlKfQLkoXSzVqreE5vaVA2PC55Hevh0ygGFUWVw==
X-Received: by 2002:a05:6e02:1c87:b0:2cf:2d3d:dd89 with SMTP id w7-20020a056e021c8700b002cf2d3ddd89mr5618933ill.36.1652036996137;
        Sun, 08 May 2022 12:09:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d88:b0:2cf:7f58:d1ab with SMTP id
 h8-20020a056e021d8800b002cf7f58d1abls976196ila.2.gmail; Sun, 08 May 2022
 12:09:55 -0700 (PDT)
X-Received: by 2002:a05:6e02:1c4d:b0:2cf:92c1:eddb with SMTP id d13-20020a056e021c4d00b002cf92c1eddbmr3034916ilg.196.1652036995674;
        Sun, 08 May 2022 12:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652036995; cv=none;
        d=google.com; s=arc-20160816;
        b=g2jttwBNDsbFvmATLFWhYS/7sDtNeduqFEoeaODTV+VADRGusB1ZPAEa5xBqeNA9rX
         BPB85KxJsM1txeWqRZyzLD0Hk1pedHtCxHLtoJrW0JprsxdAx8srVim39Vhryl31xDFv
         0ohy0qxMi+arluaSbBpr9xrypx8D/EusNixTrxUg3j9hMaQm+pQYgR3QxBJmINN2mNYP
         svpxH2zkXREP5wgzxWTbPig+gEInohu2DM019mzoKesWm7deY/DMQ44cEkQOiOiH8mcX
         1+Pxz7ZPFM6cf6K/AAivEoq7MBB3RXYSrYlragqU7yhRH41VMj5pqfJHuvcI3qm/Ij0o
         aA7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=T233+M5ZMF8rUMgorj/Lt/jCSMW/kSv5PBB2geiLwtk=;
        b=ODM86ZefO6f4NAX63Pn1QwvxV+tXelt7uac9/M2kSry5IW8Syb4oL9MpMdwWyGcpkE
         83ZoqLiZvn8x1OrRdu1fnx/xx5My2T5CCZeNWd+26Hd4QOGsq0zhJAMuVrrog7nu2LhN
         mvFpUDxbgJzelzTbGATiAjezzbu691tF2q0yueCQqo3OYp10Zcx+ZKmB3bcLVWDQvpFR
         vE/7M767Wct7fNnGEhcqDvwoYJ0wmTky80kfBzoiGPIn4Lr02XpTJ0vp/9+5aSjBLv19
         Yd0EkOMXkR3lBvsTwnP+IYfRSRzytDBHucUYezv4zPKRy1djDGA3KPxYCWaHaAp8Szcs
         /i2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HmOzBgE3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id i21-20020a056638381500b0032b603bf16esi1253738jav.2.2022.05.08.12.09.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:09:55 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSS030019;
	Mon, 9 May 2022 04:08:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSS030019
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
Subject: [PATCH v4 05/14] modpost: extract symbol versions from *.cmd files
Date: Mon,  9 May 2022 04:06:22 +0900
Message-Id: <20220508190631.2386038-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=HmOzBgE3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
       $(CC)       $(LD)       /  |---------|              | link for |
       -----> *.o -------> *.o -->| modpost |              | vmlinux  |
      /              /            |         |-- *.mod.c -->| or       |
     / genksyms     /             |---------|              | module   |
  *.c ------> *.symversions                                |----------|

Genksyms outputs the calculated CRCs in the form of linker script
(*.symversions), which is used by $(LD) to update the object.

If CONFIG_LTO_CLANG=y, the build process is much more complex. Embedding
the CRCs is postponed until the LLVM bitcode is converted into ELF,
creating another intermediate *.prelink.o.

However, this complexity is unneeded. There is no reason why we must
embed version CRCs in objects so early.

There is final link stage for vmlinux (scripts/link-vmlinux.sh) and
modules (scripts/Makefile.modfinal). We can link CRCs at the very last
moment.

New implementation
==================
                                                           |----------|
                   --------------------------------------->| final    |
       $(CC)      /    |---------|                         | link for |
       -----> *.o ---->|         |                         | vmlinux  |
      /                | modpost |--- .vmlinux.export.c -->| or       |
     / genksyms        |         |--- *.mod.c ------------>| module   |
  *.c ------> *.cmd -->|---------|                         |----------|

Pass the symbol versions to modpost as separate text data, which are
available in *.cmd files.

This commit changes modpost to extract CRCs from *.cmd files instead of
from ELF objects.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

(no changes since v2)

Changes in v2:
  - Simplify the implementation (parse .cmd files after ELF)

 scripts/mod/modpost.c | 177 ++++++++++++++++++++++++++++++------------
 1 file changed, 129 insertions(+), 48 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index fc5db1f73cf1..54f957952723 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -381,19 +381,10 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
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
@@ -616,33 +607,6 @@ static int ignore_undef_symbol(struct elf_info *info, const char *symname)
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
@@ -760,6 +724,102 @@ static char *remove_dot(char *s)
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
@@ -820,9 +880,6 @@ static void read_symbols(const char *modname)
 		if (strstarts(symname, "__kstrtabns_"))
 			sym_update_namespace(symname + strlen("__kstrtabns_"),
 					     sym_get_data(&info, sym));
-		if (strstarts(symname, "__crc_"))
-			handle_modversion(mod, &info, sym,
-					  symname + strlen("__crc_"));
 	}
 
 	// check for static EXPORT_SYMBOL_* functions && global vars
@@ -850,12 +907,17 @@ static void read_symbols(const char *modname)
 
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
@@ -1012,6 +1074,23 @@ static void add_header(struct buffer *b, struct module *mod)
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
@@ -1227,7 +1306,7 @@ static void read_dump(const char *fname)
 		}
 		s = sym_add_exported(symname, mod, gpl_only);
 		s->is_static = false;
-		sym_set_crc(symname, crc);
+		sym_set_crc(s, crc);
 		sym_update_namespace(symname, namespace);
 	}
 	free(buf);
@@ -1353,6 +1432,8 @@ int main(int argc, char **argv)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-6-masahiroy%40kernel.org.
