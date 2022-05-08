Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCNL4CJQMGQET3E5NUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E9751EF20
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:02 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id k184-20020a6bbac1000000b0065aeedd4ba8sf1463771iof.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037001; cv=pass;
        d=google.com; s=arc-20160816;
        b=pamlSt0f0vjjt7sqc3hQ3lMORibFwvyfFGT2cKQriowm5RvV5LWpwyNIeWHJGeVZdj
         hjIIl0dKwLOtU6fnuO5a77IJr6kAP88sy7k/58it2najJ8x0JCvs3mlxD2UFxHaQ/xNR
         xbk4ApukH02cccE3Is3GpjtW/elxxkpvbsFGaxel5FJCHsOY2Lp37VFudY2hVtDxLDuh
         oAN5y2A4ekU8WD9O+RjKPh2SpcxsekvuDxjqMVbgQvFuhmvpx6ddhlzMf8NPZ334kgZm
         sRBYk20kz5Vj7tCzbJ/csDpdnJa++VY5sKWP3k7VA9Fv/sREy3HX7oX3nAqJvseKP4qk
         zhgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=Je9HZRWLu00S5Kju903e3pkv5w66gitrpEgpZwgtURM=;
        b=Q/1jnW4Y3RrTLkzi0hjg4YeC/im/ssdU0JnX+osYI6HOJ8AexpQYIao2P8dbAoBVe8
         CIMQBXeI7Zt6+mNOzzeQ9p9jMQJygTszj50ZwJUJlGmoV9xk+QAp80OzoVQtL3b4FcR+
         eu7nCD81V6eiuhjAqRlOGi1zQ2gXsQRqgtS9nwfAPGhkkUXTonBDrNDyBtafeK3yg8yi
         I2BQVHxH3If+uCRjNDtXT5Y74U6x4aqsBKP702ViAome8TnUppDnECZXkJDZrZXtLaV8
         X4Ns3+kfi60BF6aE7H45MXTS+QXn4veL8NIXXiJ5d3jNz34sEwQda3lgvOQ8csl+oWUC
         0IUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=v567Pj5G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Je9HZRWLu00S5Kju903e3pkv5w66gitrpEgpZwgtURM=;
        b=sa0BSADQ9lrohddGLMjp514Rpu32lGGAOaC/zNPN1Cstb6EANEfe8U7epoq6scYkLu
         f3EAI5J2c/n6VSGlDFLtzVXFKTKY14qsclwOSfs0z8/9ROC34aAncdv1QXf6y+6JoOPv
         JImWSTBHoqmyx9x9ekweYjFTVl6HwgCMLBXSsXj1kIjNwepLokDtiGjOSHIEiJJoRsGh
         +jNLx8Ka7JYIHpc0+GW35pNVVhkUNI29/UZGBzT4FiJgS/zIIOB987TrDt9BK6/ZQ8o/
         5TmePegdZHqc/HyUPGIQKReUrMAnzAfVvNBePWrkW4PcFVhdxF9VNcr4fWud/mGY4c1m
         P7/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Je9HZRWLu00S5Kju903e3pkv5w66gitrpEgpZwgtURM=;
        b=h27OqHQSjFA2+NriHuVtuBcBSRFUhO5g/VJsll5n00Lj64gYEhqNKSCmSlvmSQN074
         l+CKWnxl12Qk685pa5glOAtznavKFs19B5fwv51jCAH1QQLehPnX5+M/jwFhm2JQs/cH
         cLbFbf9SAzuJl24Rlv4Ep4vBSj9trrrtGOpidZXB/65hwrLCbjIP5iHLdA3lC+D1iFus
         GJNq1CBgfZRvjftjQm/iaaC58qiXP9XPAJ9MpvUOCAjOTl+YE3TXM1q71mM35gWqINXA
         HumQHFSxtrJg1p2rDx9gNqSAP0COJUuKXbPzdp0Cl7iKI2NTVDQbLBMnT1Fq8Qkj7HRF
         qYqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bsIY7KZlF0l2LynUGJoP1pMqTjWlbhhr4Lmar8Qz4gI6NSll0
	/6t2p/gvTHY3/zAavkzthig=
X-Google-Smtp-Source: ABdhPJy2XVyTxBiyMT65j08s2Ph69ol4rHKfmw7lLMUlhd76YnPWQAV2slzI0GuXpVV/WZ39JWrpeg==
X-Received: by 2002:a05:6602:48:b0:657:ccb5:1d85 with SMTP id z8-20020a056602004800b00657ccb51d85mr5045476ioz.217.1652037001186;
        Sun, 08 May 2022 12:10:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1490:b0:32b:5e53:67d9 with SMTP id
 j16-20020a056638149000b0032b5e5367d9ls2377651jak.10.gmail; Sun, 08 May 2022
 12:10:00 -0700 (PDT)
X-Received: by 2002:a05:6638:228e:b0:32b:4476:8e73 with SMTP id y14-20020a056638228e00b0032b44768e73mr5954339jas.147.1652037000807;
        Sun, 08 May 2022 12:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652037000; cv=none;
        d=google.com; s=arc-20160816;
        b=KvC9w6fNj4h53Hy5uWhNlIeJXyR9AckAXdNt/worcunUQT7qapGyFMoNSHdCelz8yJ
         +4e0PvMl7dqcYVpTbLyZkzAQRo/rdIKZ87wrwg/Dw74vxTIFoiW6nnbSd3/i24A/oHFN
         LnmEnK8dZkC8uRrGb35wEL0onCZMSubtz+fwKTN4BER+qUgbPO6njIiV0foCWdmRW7u1
         QNQdrewMbK8p+JR/0A0D1SENkbff1Ctz1vlJOWZqEtGmw460maDwJX4xRJ/kXAjtg31U
         HpDZjPoO1QQRjAJ3uPTYxrv2ZFLngTkSG8gPKByUHIpjDfv1PmP4DC61TCzklvlVDFW2
         AWEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=7dVosA98YsgJAc1+4NwlKOpt2daMW/NjA4iASuFudpw=;
        b=GKejUCSz0bs2eHkMUtOo2Toym/RtnAaeMH6+jrrn8C9FFMcZVkDdfUiIbGsUxNlMrl
         6y4pwNfbtHZ1bJcx2+jZpf8C1GxaFYSIsjdBz4OhNVOP7lfg/eMn2kMoQLifssGoGGj3
         IZEVyLrrbeaJVJYeHZHzPDn5+/jZ/yAXTCGTqMMeG3BGImtTS1dgfcP9PYf2JbsOukuW
         nT/Zb3GlaYdzzTIHCDdAHXAqTDFhhSugWOdizW8a/vgf9dzzuvaTcI6YyrMwu+qw++UV
         FLOMmhm6jZk1auLGzfP1RhMduyLDFT0e5oYeqWng8GFHRlbl/KIcAqSl4+f1YHXxpKMC
         LRHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=v567Pj5G;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id u12-20020a02c94c000000b0032660e40518si1217061jao.4.2022.05.08.12.10.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:10:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSX030019;
	Mon, 9 May 2022 04:09:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSX030019
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
Subject: [PATCH v4 10/14] kbuild: check static EXPORT_SYMBOL* by script instead of modpost
Date: Mon,  9 May 2022 04:06:27 +0900
Message-Id: <20220508190631.2386038-11-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=v567Pj5G;       spf=softfail
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

The 'static' specifier and EXPORT_SYMBOL() are an odd combination.

Commit 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL*
functions") tried to detect it, but this check has false negatives.

Here is the sample code.

  Makefile:

    obj-y += foo1.o foo2.o

  foo1.c:

    #include <linux/export.h>
    static void foo(void) {}
    EXPORT_SYMBOL(foo);

  foo2.c:

    void foo(void) {}

foo1.c exports the static symbol 'foo', but modpost cannot catch it
because it is fooled by foo2.c, which has a global symbol with the
same name.

s->is_static is cleared if a global symbol with the same name is found
somewhere, but EXPORT_SYMBOL() and the global symbol do not necessarily
belong to the same compilation unit.

This check should be done per compilation unit, but I do not know how
to do it in modpost. modpost runs against vmlinux.o or modules, which
merges multiple objects, then forgets their origin.

It is true modpost gets access to the lists of all the member objects
(.vmlinux.objs and *.mod), but it is impossible to parse individual
objects in modpost; they might be LLVM IR instead of ELF when
CONFIG_LTO_CLANG=y.

Add a simple bash script to parse the output from ${NM}. This works for
CONFIG_LTO_CLANG=y because llvm-nm can dump symbols of LLVM bitcode.

Revert 15bfc2348d54.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v4:
  - New patch

 scripts/Makefile.build     |  4 ++++
 scripts/check-local-export | 48 ++++++++++++++++++++++++++++++++++++++
 scripts/mod/modpost.c      | 28 +---------------------
 3 files changed, 53 insertions(+), 27 deletions(-)
 create mode 100755 scripts/check-local-export

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 838ea5e83174..c2a173b3fd60 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -244,9 +244,12 @@ cmd_gen_ksymdeps = \
 	$(CONFIG_SHELL) $(srctree)/scripts/gen_ksymdeps.sh $@ >> $(dot-target).cmd
 endif
 
+cmd_check_local_export = $(srctree)/scripts/check-local-export $@
+
 define rule_cc_o_c
 	$(call cmd_and_fixdep,cc_o_c)
 	$(call cmd,gen_ksymdeps)
+	$(call cmd,check_local_export)
 	$(call cmd,checksrc)
 	$(call cmd,checkdoc)
 	$(call cmd,gen_objtooldep)
@@ -257,6 +260,7 @@ endef
 define rule_as_o_S
 	$(call cmd_and_fixdep,as_o_S)
 	$(call cmd,gen_ksymdeps)
+	$(call cmd,check_local_export)
 	$(call cmd,gen_objtooldep)
 	$(call cmd,gen_symversions_S)
 endef
diff --git a/scripts/check-local-export b/scripts/check-local-export
new file mode 100755
index 000000000000..d1721fa63057
--- /dev/null
+++ b/scripts/check-local-export
@@ -0,0 +1,48 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Copyright (C) 2022 Masahiro Yamada
+
+set -e
+set -o pipefail
+
+declare -A symbol_types
+declare -a export_symbols
+
+exit_code=0
+
+while read value type name
+do
+	# to avoid error for clang LTO; $name may be empty
+	if [[ $value = -* && -z $name ]]; then
+		continue
+	fi
+
+	# The first field (value) may be empty. If so, fix it up.
+	if [[ -z $name ]]; then
+	   name=${type}
+	   type=${value}
+	fi
+
+	# save (name, type) in the associative array
+	symbol_types[$name]=$type
+
+	# append the exported symbol to the array
+	if [[ $name == __ksymtab_* ]]; then
+		export_symbols+=(${name#__ksymtab_})
+	fi
+done < <(${NM} ${1} 2>/dev/null)
+
+# Catch error in the process substitution
+wait $!
+
+for name in "${export_symbols[@]}"
+do
+	# nm(3) says "If lowercase, the symbol is usually local"
+	if [[ ${symbol_types[$name]} =~ [a-z] ]]; then
+		echo "$@: error: local symbol '${name}' was exported" >&2
+		exit_code=1
+	fi
+done
+
+exit ${exit_code}
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 018527d96680..fa73ddb6a6cf 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -212,7 +212,6 @@ struct symbol {
 	unsigned int crc;
 	bool crc_valid;
 	bool weak;
-	bool is_static;		/* true if symbol is not global */
 	bool is_gpl_only;	/* exported by EXPORT_SYMBOL_GPL */
 	char name[];
 };
@@ -242,7 +241,7 @@ static struct symbol *alloc_symbol(const char *name)
 
 	memset(s, 0, sizeof(*s));
 	strcpy(s->name, name);
-	s->is_static = true;
+
 	return s;
 }
 
@@ -875,20 +874,6 @@ static void read_symbols(const char *modname)
 					     sym_get_data(&info, sym));
 	}
 
-	// check for static EXPORT_SYMBOL_* functions && global vars
-	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
-		unsigned char bind = ELF_ST_BIND(sym->st_info);
-
-		if (bind == STB_GLOBAL || bind == STB_WEAK) {
-			struct symbol *s =
-				find_symbol(remove_dot(info.strtab +
-						       sym->st_name));
-
-			if (s)
-				s->is_static = false;
-		}
-	}
-
 	check_sec_ref(mod, modname, &info);
 
 	if (!mod->is_vmlinux) {
@@ -1318,7 +1303,6 @@ static void read_dump(const char *fname)
 			mod->from_dump = true;
 		}
 		s = sym_add_exported(symname, mod, gpl_only);
-		s->is_static = false;
 		sym_set_crc(s, crc);
 		sym_update_namespace(symname, namespace);
 	}
@@ -1383,7 +1367,6 @@ int main(int argc, char **argv)
 	char *missing_namespace_deps = NULL;
 	char *dump_write = NULL, *files_source = NULL;
 	int opt;
-	int n;
 	LIST_HEAD(dump_lists);
 	struct dump_list *dl, *dl2;
 
@@ -1459,15 +1442,6 @@ int main(int argc, char **argv)
 	if (sec_mismatch_count && !sec_mismatch_warn_only)
 		error("Section mismatches detected.\n"
 		      "Set CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.\n");
-	for (n = 0; n < SYMBOL_HASH_SIZE; n++) {
-		struct symbol *s;
-
-		for (s = symbolhash[n]; s; s = s->next) {
-			if (s->is_static)
-				error("\"%s\" [%s] is a static EXPORT_SYMBOL\n",
-				      s->name, s->module->name);
-		}
-	}
 
 	if (nr_unresolved > MAX_UNRESOLVED_REPORTS)
 		warn("suppressed %u unresolved symbol warnings because there were too many)\n",
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-11-masahiroy%40kernel.org.
