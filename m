Return-Path: <clang-built-linux+bncBC2ORX645YPRBOXHQOFAMGQE4YH3VQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id AC70840B784
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:10:52 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id n26-20020a05680803ba00b002695053b627sf239270oie.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:10:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646651; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/Bu335NQArUpDoLXYq77S5roH+pNVQxEhdoL8yQOa6nRpY/H3+yhg63djfcY4uSAc
         WrmiG8pBxUbvpnusz3dPiStVQhYOj24Kg4Tn/doQ8ndVm51XWyq8urANzDPCg3sTert7
         QFvsorR0YgNYAQ0ju//eAh6qKoZ4eSr1A4v6cUcgnDSndVKJbzLe6A9yWSjZz8cST1h8
         aGk+FgzAsfuGFljJFdxaTekyrxST6UOMU3LbKtLuXoJTwdXGcvWm6ZnyqaPaBGt0HACB
         XNSav9nraabeYvU4HpSrc3HyCQ8g2ibhYjB6aVZm0uuyLdNYJ8wjDdVTOkjpCaVuzpUO
         lrCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=okPPAUljQkXYp0mCplyjSBVoLwNUmFIK2Yj36g8e0+w=;
        b=WgWDqudooY5wSAlNtLMCtXEYpzVDN0LOk84T13IkrhAOQiNRPH/1gFFFW4tVS892ei
         FNfwsRFoMzwzXoowBKmeL4vpNce+RNEdugSuFI3pP+wxO3D0C/9wPbdTIh1qsPJtJzxg
         tUPC+TQKl+Y4iOwBbK3fPBa3Uqo+qfLEGmIHCj5logcgRXCuWE/AHXzCTV0u/7ALgAXP
         vcOkajp4YH88dVSwTzPLAwP6T9+XN7ivCOKKjuIyv7kXSkn0oi/HANT2VFuhD1mDVr2F
         kMzHsqlkq9pofYsDJdlKVgA97ebZgyMdEwx1TooA8skWmm4CRiAF8eSheYp/NWXkfPMT
         3X2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=SltRY0Ph;
       spf=pass (google.com: domain of 3ufnayqwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ufNAYQwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=okPPAUljQkXYp0mCplyjSBVoLwNUmFIK2Yj36g8e0+w=;
        b=As53xcuoVpdSRJrwdZdbSSsnzgsAEcSEFYyf6TtkTrteFaAzWZ2nbhei7Kj8bm7Y19
         2V9n4RidkCSvy9rG28qnQl3l0a19qQ5iXbubNf0rAD22Rw+HlYMw7AKkvCVRjsKzGZaj
         QLuog3Sb7mRc36CO4lLlqtDIbV23Ee30D/S812e5biOt/XSqA9bv8VSHCrvD/14UAJk4
         m1GYWQinVTF/O8hcT+pky7EkFD4d95vm6xfqWgN4pwX70eOwz8lBX7p7VXqbGT6Prvx4
         dG+h5oNvQQitPjR8h8O/mG8lnb3MTYNimhHVlWQMeFt4O7fzn+sZ1N8gKaznjyVtbpEH
         CH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=okPPAUljQkXYp0mCplyjSBVoLwNUmFIK2Yj36g8e0+w=;
        b=G25I9S1wIQkBmmrl+ti1feHntyKfk3zPg0as4BuG2UG+GZwooBEUwVHW4W0YeSTxyT
         p2PxhtAbCZtORvHLs8MuHVjAmdyWAbyzoRnBoC6ZLHQMvuJcy584eHL2M7sLpnybTPSX
         UdOwhdhysWaq24K83cvhyS3JA91kgP0oqlVxoGin0P7Vz3s9sDw6ar+iO/EIfO6KZXUx
         d7eryEc30NR4svCrafp+7tbmbjpVWsaDJegoxH7k1Sg9YTb6XOBTJSVkTVi7+zN+K+K3
         K3pamrtlQkiCPNqIt12tcn72t2Rg0id6+rCHlJUXgApcbDLxxdECwQq+fdhjfmy7Vk/u
         lGTQ==
X-Gm-Message-State: AOAM5323oNA2DE9fD2e/MpXMI2aRN0xw/3c/e4b9SRCu5fmP4lfsNPIT
	oc8M+j92RTJ5G9CyTN82r0c=
X-Google-Smtp-Source: ABdhPJzjTSoQED8IspUlRiYrUZD3A0v9L3hphGORVcsV9mRhQBfXuNDJpV5w2hpJ4AWdx6ZRiGGtUg==
X-Received: by 2002:a05:6830:1e4d:: with SMTP id e13mr16367500otj.195.1631646650536;
        Tue, 14 Sep 2021 12:10:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b4d:: with SMTP id f13ls3441675oto.11.gmail; Tue, 14
 Sep 2021 12:10:50 -0700 (PDT)
X-Received: by 2002:a05:6830:156:: with SMTP id j22mr15836953otp.75.1631646650146;
        Tue, 14 Sep 2021 12:10:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646650; cv=none;
        d=google.com; s=arc-20160816;
        b=HB0QpnBqv5OPSIhiGKDUhfCBnw/29Oos4Mal+Y2BobrgpJ4SOr0hsCe5aii00kJXuh
         PHB6UdSKiffzPPtFvfCMTp8TY1Q8F2A13cbVS2eB45fpzrltn04ZTRLb/asu5I6WBJZn
         agJ4ttMjGD7gu375pyoy3KKLbq5p3YldWmXFCxQFNOSpQ822Fz4mkZ8sRhSMhykJTEtX
         uAPsH+YzCFObrf2cCAhckASgc2LqEdbWdXu3w/aTJxkMhACmkuUYqzcptYe50qwMIxIE
         G0BmnOuh9PKTCeQ32FlHChFASym+9idUfF6R3VjqZ1NvjaBkKf9e3D/8dr0NaO26AHEb
         cSjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6wsaeVs2pKdYr3cjE54GmOMKWkqFIYtd4ul6D2XgoZU=;
        b=hjfjI7nEYz+JEvyz+INV1a5QSh13zojGdD7jXyagDAV6uU6m8uyLatybHppX+6Unnx
         zvfFm77AiuY0nyC3482C2Yhhnls8xU/tJhHLh+amZIgOX9l4lQPHwweUe5GupRps8/Jy
         ylapyFxygBXR2FxabjbPU073jRejKWtnStG5qQBOLdIFfABZY+A5an6JUJtyAzTAg5el
         +PrtI6a2USstfbRTBtgzjzgSR2D/QEQzcg+OWWXKOEtRYkZfzJ54H276KWl5m/o5AGoj
         PUOX1xM63Rrp+j48GG+MGn0k4KAeZZOCT/t0Ldh7gzypDj2iTw8eBT/ZGrOunhBJrIz5
         cKgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=SltRY0Ph;
       spf=pass (google.com: domain of 3ufnayqwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ufNAYQwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id w16si1025784oti.5.2021.09.14.12.10.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:10:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ufnayqwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id w10-20020a0cb54a000000b0037a9848b92fso959138qvd.0
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:10:50 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a0c:aa01:: with SMTP id
 d1mr7115315qvb.47.1631646649694; Tue, 14 Sep 2021 12:10:49 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:30 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 01/16] objtool: Add CONFIG_CFI_CLANG support
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=SltRY0Ph;       spf=pass
 (google.com: domain of 3ufnayqwkalqmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ufNAYQwKALQmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function references with
references to the CFI jump table, which confuses objtool. This change,
based on Josh's initial patch [1], goes through the list of relocations
and replaces jump table symbols with the actual function symbols.

[1] https://lore.kernel.org/r/d743f4b36e120c06506567a9f87a062ae03da47f.1611263462.git.jpoimboe@redhat.com/

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 tools/objtool/arch/x86/decode.c      | 16 +++++++++
 tools/objtool/elf.c                  | 51 ++++++++++++++++++++++++++++
 tools/objtool/include/objtool/arch.h |  3 ++
 tools/objtool/include/objtool/elf.h  |  2 +-
 4 files changed, 71 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
index bc821056aba9..318189c8065e 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -62,6 +62,22 @@ bool arch_callee_saved_reg(unsigned char reg)
 	}
 }
 
+unsigned long arch_cfi_section_reloc_offset(struct reloc *reloc)
+{
+	if (!reloc->addend)
+		return 0;
+
+	if (reloc->type == R_X86_64_PC32 || reloc->type == R_X86_64_PLT32)
+		return reloc->addend + 4;
+
+	return reloc->addend;
+}
+
+unsigned long arch_cfi_jump_reloc_offset(unsigned long offset)
+{
+	return offset + 1;
+}
+
 unsigned long arch_dest_reloc_offset(int addend)
 {
 	return addend + 4;
diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 8676c7598728..05a5f51aad2c 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -18,6 +18,7 @@
 #include <errno.h>
 #include <objtool/builtin.h>
 
+#include <objtool/arch.h>
 #include <objtool/elf.h>
 #include <objtool/warn.h>
 
@@ -291,6 +292,10 @@ static int read_sections(struct elf *elf)
 		if (sec->sh.sh_flags & SHF_EXECINSTR)
 			elf->text_size += sec->len;
 
+		/* Detect -fsanitize=cfi jump table sections */
+		if (!strncmp(sec->name, ".text..L.cfi.jumptable", 22))
+			sec->cfi_jt = true;
+
 		list_add_tail(&sec->list, &elf->sections);
 		elf_hash_add(section, &sec->hash, sec->idx);
 		elf_hash_add(section_name, &sec->name_hash, str_hash(sec->name));
@@ -576,6 +581,49 @@ static int read_rela_reloc(struct section *sec, int i, struct reloc *reloc, unsi
 	return 0;
 }
 
+/*
+ * CONFIG_CFI_CLANG replaces function relocations to refer to an intermediate
+ * jump table. Undo the conversion so objtool can make sense of things.
+ */
+static int fix_cfi_relocs(const struct elf *elf)
+{
+	struct section *sec;
+	struct reloc *reloc;
+
+	list_for_each_entry(sec, &elf->sections, list) {
+		list_for_each_entry(reloc, &sec->reloc_list, list) {
+			struct reloc *cfi_reloc;
+			unsigned long offset;
+
+			if (!reloc->sym->sec->cfi_jt)
+				continue;
+
+			if (reloc->sym->type == STT_SECTION)
+				offset = arch_cfi_section_reloc_offset(reloc);
+			else
+				offset = reloc->sym->offset;
+
+			/*
+			 * The jump table immediately jumps to the actual function,
+			 * so look up the relocation there.
+			 */
+			offset = arch_cfi_jump_reloc_offset(offset);
+			cfi_reloc = find_reloc_by_dest(elf, reloc->sym->sec, offset);
+
+			if (!cfi_reloc || !cfi_reloc->sym) {
+				WARN("can't find a CFI jump table relocation at %s+0x%lx",
+					reloc->sym->sec->name, offset);
+				return -1;
+			}
+
+			reloc->sym = cfi_reloc->sym;
+			reloc->addend = 0;
+		}
+	}
+
+	return 0;
+}
+
 static int read_relocs(struct elf *elf)
 {
 	struct section *sec;
@@ -639,6 +687,9 @@ static int read_relocs(struct elf *elf)
 		tot_reloc += nr_reloc;
 	}
 
+	if (fix_cfi_relocs(elf))
+		return -1;
+
 	if (stats) {
 		printf("max_reloc: %lu\n", max_reloc);
 		printf("tot_reloc: %lu\n", tot_reloc);
diff --git a/tools/objtool/include/objtool/arch.h b/tools/objtool/include/objtool/arch.h
index 062bb6e9b865..2205b2b08268 100644
--- a/tools/objtool/include/objtool/arch.h
+++ b/tools/objtool/include/objtool/arch.h
@@ -81,6 +81,9 @@ unsigned long arch_jump_destination(struct instruction *insn);
 
 unsigned long arch_dest_reloc_offset(int addend);
 
+unsigned long arch_cfi_section_reloc_offset(struct reloc *reloc);
+unsigned long arch_cfi_jump_reloc_offset(unsigned long offset);
+
 const char *arch_nop_insn(int len);
 
 int arch_decode_hint_reg(struct instruction *insn, u8 sp_reg);
diff --git a/tools/objtool/include/objtool/elf.h b/tools/objtool/include/objtool/elf.h
index e34395047530..d9c1dacc6572 100644
--- a/tools/objtool/include/objtool/elf.h
+++ b/tools/objtool/include/objtool/elf.h
@@ -39,7 +39,7 @@ struct section {
 	char *name;
 	int idx;
 	unsigned int len;
-	bool changed, text, rodata, noinstr;
+	bool changed, text, rodata, noinstr, cfi_jt;
 };
 
 struct symbol {
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-2-samitolvanen%40google.com.
