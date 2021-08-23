Return-Path: <clang-built-linux+bncBC2ORX645YPRBNFOR6EQMGQESW42RYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A602B3F4F08
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:25 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id b202-20020a6bb2d3000000b005b7fb465c4asf10518806iof.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738804; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPhaj6ee4mSIAg0rD/FuVuiFMuluQXgGFlXMmYcsLzimKgIX8TDltV32K8UgzXWHFg
         QxaPSCfsfhbOvie2nei2YOxeRNs+8Nwp6g12Hln6c/RE19yaQPXSZR2xcC3m6nbpY0Io
         ys2SUV3rmXEexlcQe+qLUCUPjAfsKtYETclRartZe+113h9hDiwlsEILWasUBSRvzGmB
         ca6Nk6gFC+vTUSm/clcefzOroL8Ji/iSvP1/3lD6yl19H3pv6CHhy2NX46ZNVZh2q3dx
         ysUHJalTbpc1dgcJ5vEP0AFkmB24NXdAH6PM1bVe7E+YVIPxpvyr2kmsjmqRz21dveeq
         mT1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Fi8vT6eROp8e0MkP8M0bMC8/paVp7qEUqEB8JAWTobQ=;
        b=VTMP8pSSmUEB31mNAQwqGjpWktHDfMNVuIKJ/1y0MolHlxuRD1PG/o0cSFq0HnoxOV
         cWmGmoKibAM3IXUQQv5uXsieQFubN7N8gLYp3Myi8AxzBeF5dTWcqz48fsyinbVqW4ln
         lY2cFOB9mFDQ/jxkF+AwxX4HRItPu44jwO0bjIIf69goWY9PHI1F520Z7y7KCu3UwMLR
         5wB6fgSYSmn8LdG54wBUftdZETIQd6S9cYT9IV8R8OAPBaGcImou9ykvnBlw6GUWynkp
         QNdLAQFG3tYn492oALjtQDbyF4upUABhxhQ3vrsesewr84/UXNe1bdtc4euzppC+hjVS
         kkKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ixZPqytD;
       spf=pass (google.com: domain of 3m9cjyqwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3M9cjYQwKAIAweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fi8vT6eROp8e0MkP8M0bMC8/paVp7qEUqEB8JAWTobQ=;
        b=gl5t/ySFIusD6mpc/4krpJdgqTlBK5B73KYG/ahdJe+JfuO3IPomxkrkZ/2dkZgd1l
         k/emUTRHtLTCELdz/W6oy1XHJeuOibF2rSiyK9cSBskEc+h8Fjz4ovF9LXRAfvCEhZC0
         Uf4jQiCbyxfvjb1MmIg8Pl82M8HQyEHg1c279Uy5Wp1U+miP7292PhJmhS8Z9rNzA6l7
         7KZsF2kH6DKHcnCARJY4FyNq3rGAaOMd/ZcqZIaPja8JkT0sgLru7vxCgSufGtrbae3+
         7QoCz63UF1ggDLpLCYnjbAcOT0qqRPCN1EBeegMqLuoEiZEtmN5JonHfVEgEYVPzhAP5
         RbpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fi8vT6eROp8e0MkP8M0bMC8/paVp7qEUqEB8JAWTobQ=;
        b=oAXWqHrcUPCTEevOBPvajaNK7dYtS+iy/R9k9D0oAW2HaTTm2/1WQdxy6fbIPHarQv
         ZOXeGoq9jUbvKMAi21cLI7A1KXWR0nhld86VIT2xgh8Gn6d2qOw9+drkINUC6DahFHS9
         w5UB/TPOXO/m6VUdaR5NNBwyKlCHKbWHAdgOUWsDg6MggJi2UlQWGmvIraZE0+qvmhYk
         tbQjeDaQKFO5HYWMMbLMCAGN7dCLaqhkA2mkzzumepjMC3Lt8wl3A/5CBsqO4P7+UkeW
         hYC9NGd/+FDWrIKqWDaxOKZXVfgZeMD6+oNFY/p+7ATd3fzb3JQUYfMgIZOH3oAnE8uM
         hGog==
X-Gm-Message-State: AOAM532X6MfyaZ/EjCnnQi8EokAeCldtlh5tPLZagJDXVhnQLeSp29a3
	rDHFcUV640K3y5Crwv1AFWE=
X-Google-Smtp-Source: ABdhPJzbWDVwe+VPdRyRQ3pOX5tf2sSnZEsH4oRCADbHeYtPFX2+3LDcsU5YCKtI9xUr/vIGoKKMNA==
X-Received: by 2002:a05:6e02:160f:: with SMTP id t15mr24692362ilu.60.1629738804326;
        Mon, 23 Aug 2021 10:13:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f710:: with SMTP id k16ls2668276iog.4.gmail; Mon, 23 Aug
 2021 10:13:24 -0700 (PDT)
X-Received: by 2002:a5d:9b99:: with SMTP id r25mr27693627iom.104.1629738803956;
        Mon, 23 Aug 2021 10:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738803; cv=none;
        d=google.com; s=arc-20160816;
        b=SdG4GrrfEaSLcB3EgacvIGBjs6JEEc7pvR5phlw/idmN2IIB3KxOmFg89yM8GzeHrt
         K3jdoYcoldjEoIcjmOcUSkDVuTiclPzcHgDCRVmeZW8MqWU8GdXezgjefjJ19sIXxK91
         9yImcC9A6tP+7AZeEmuUjyS4Mb/3K8gtkCS7cjH0tZ5bg+5z716Bq/P4c8b7SyV31YxB
         kXLYgHQwfYeqegWfsl2/X4Nmu8Tjz/4T7spBcBhMN6bHIxEiol5BrzFrq/7+oePKg8Eo
         Qx7vrsCC1L6rCmSho0PNFwLrHy/jFAlKwQZ5LJ7+sSV7sC+6dgIOz/7xR4Y5sZzCA8D5
         y9cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=BMOEEwZTh6kWZcClZ1xfFJLdcX1zczi/t2HYJexMlig=;
        b=ggKSR838Vz92lplmSBBhsDQlV0xS8Lim9zrgpom8eepxfoNuX0RiLEKj7NtlS/Xt+g
         5zW7m90adFBjf4jC0E3BCVirW9xe+FRGJCQ74mXLLZDfdh17UKRA5STgeNLeInQ7Pzw5
         BOTV95INq75LGk0iFVURjMQjsXCZq2WIiqtV3E9vSf470WTbm+ducjP8Pvv+HF+NoWNP
         /k/q46x50jo19RhWwU4zrbmu/lX4s97cfcxpkg8WiXhHyYCYfFUM7gSxY8VMpKs8+Ra1
         RAHHbctSb8ugGaBsLnnGBPc6pzteufrhF4GtpLq+NNX5KmE259+Xu13/doMoPeXKmT57
         6RfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ixZPqytD;
       spf=pass (google.com: domain of 3m9cjyqwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3M9cjYQwKAIAweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id c81si919892iof.3.2021.08.23.10.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3m9cjyqwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id d78-20020a256851000000b00598b2a660e2so7139889ybc.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:23 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a25:da13:: with SMTP id
 n19mr12374471ybf.127.1629738803432; Mon, 23 Aug 2021 10:13:23 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:05 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 01/14] objtool: Add CONFIG_CFI_CLANG support
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
 header.i=@google.com header.s=20161025 header.b=ixZPqytD;       spf=pass
 (google.com: domain of 3m9cjyqwkaiaweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3M9cjYQwKAIAweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-2-samitolvanen%40google.com.
