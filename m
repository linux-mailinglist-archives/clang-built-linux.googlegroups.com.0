Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6P2ZD3QKGQEUJ6KJMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA232058CC
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:35:54 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id o84sf25087692ybg.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 10:35:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592933753; cv=pass;
        d=google.com; s=arc-20160816;
        b=etAuVDfwOXGM6yKK+xQXsPvRl7AB/+wp7VTc5uR81yy/7T4wMyqpHifyiDswUPgXUP
         jm2fRAyeGUYQesOBm4OuHW8pUUjrc+VnSmSBJ3JLhQvtmJvKtwtUvkeG1PzstUV2eOqn
         n9SkpraVK/ODueNkSpHniEzWiL4voOi1pGUaJDMYKdSJ7JZSZLWT2xCy7wkTKQGc0kv+
         aqUtdKosS34rMeR32ooU6DDIcfy12L+EMqTPDrQDJz+L3aNaJCyagcKzfMV8yv6vcFOx
         WbpupXy2lSuamRzmkWlnw8foOsPW2eypZJdYSH9I5JOuJUhHRBZIut0dqufEQuUki85p
         4Sgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/wv9EUYsWGHE6jcYX57v58UHaEQpVA/hD/sSEUZSklQ=;
        b=gr55JE4WWGGFJygS0kM6nso/vVbOmuwzJK23N8Dc6z7gzF+6K1tEzdGJDeOcgiVs+D
         pScdhYjyunO8J7nwUI2ueRzCnPkvoONhQT2rmPWBq7Ax4qGnGwKgLUBLRqL4mlb5xTKH
         pcK9+y1wVMGr0j/sjNE1R4IftaJ5JDNyw+D5VN+HIUdEwQpQ2JG4DB8yIH/xsQFhJkiD
         3kIE4CEKIj0J9KokJqvh8tQ1Yc5iLNL4Kakc7OH2j3OndO/iBhe2zl7V9+QTBBjMLi9E
         R0Z943V0fHD7Wzgq+Ldp4NFVaB8agMJ8X5A+Xj87XRITBm4AYNpnkgvTMjkD6T9ENxHT
         Y6AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZqUpkiem;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/wv9EUYsWGHE6jcYX57v58UHaEQpVA/hD/sSEUZSklQ=;
        b=m50ujUgzcb5sFwRT1lAmP061tPcw+IXGw0o1N4x5nOgZpGs7ux5N8plRDag/guhtcY
         5yq0tmg0zMocU1vc5HGk8NLNwsWj4KL0QTNC7m1Cwu2/X9X5P56RF+T/iBvmxiHeJ4bd
         qTJHFnNnsXPElYSgbw3jWP21XYF9edaALGqbQJyZ3gNUKmKcY7kk7IM3BqfSMFoXXEQu
         X+c7q/8CBQ04S2a43zP+Sn5Fu5Jn9rZ2ZLM1OqCYrBlUY2z8nH4jxwORd9Or8hUg4JKg
         42gjqr/9HPqw/FaIpq8c00EcjnP66yZ99mE64MhUbb4JxpZtOqeas/MkdHZVCaXzOag8
         RHFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/wv9EUYsWGHE6jcYX57v58UHaEQpVA/hD/sSEUZSklQ=;
        b=dqQxv6aCGS6WdeuNflbXPYeDEZbUX3vMOYFIeVzf82VYKKanaoeDN/4apvZTE8V30W
         +QxMET78x0KbykmHx2/I6E4bURCIT37dn5JGubTEoK9mTVsWjIsu2LfB46GwO4zyNYVz
         Agwc0gqdvpII2Q2yHysRxY6HfOLi5I9n89q1z876nDAevbVwbSgOtSO4S3Q8LsCUSspE
         9CKt0a4dnoZzd/hqZBISjROdi2gIivRgF36m9aRlF1qgh0z8oOVgaFIt3r+p4rBfaTFN
         P7BoI1+hMpLrpbhn+dYHXD29ueRgTkiC2xnrvBBy8XrSIsEs51nuWjMoUf5hebS2AixD
         tCVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530syYWsuA0lQRTrt4UhXiRV8OrwL2jE+DCfsktZ+kAI2worR5dN
	dd9JW/50FhvoVKqKxfNlS1I=
X-Google-Smtp-Source: ABdhPJyD1Vw5lHzcVMTjXXAhlJ8xdKU3bW5jlxWGxFaFWugzc2swZsGngAH+ghgtEL27o/xrroFN1g==
X-Received: by 2002:a25:da44:: with SMTP id n65mr40095152ybf.387.1592933753358;
        Tue, 23 Jun 2020 10:35:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls8090457ybg.3.gmail; Tue, 23 Jun
 2020 10:35:53 -0700 (PDT)
X-Received: by 2002:a25:c304:: with SMTP id t4mr39523225ybf.26.1592933752946;
        Tue, 23 Jun 2020 10:35:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592933752; cv=none;
        d=google.com; s=arc-20160816;
        b=I6moquNSZNYiC/5JQFRzai9XrtLtnHiHu3VcE30MQqBMnerCZhoaF2OkmsyhQgbi5V
         +RZiFRNcOuJ4BZ/RlnRhAVskRg/IHEiucZ/NqeUuOOVJ/QZGtgcgrJOqHswqsyYsAIy9
         XycnXznYL8pAAJZIGbOr4zh5IDR0uWqUQd/Bk4MmZXOz0asds61H6vA9ooRBf4DCX+Yf
         tfDq1e4C93aHbQ1bZniNT0ZuXRIYy+dW8vtBzBfRPE6R4nnmn7ApA7zAAOQDKnTfSKWY
         WmJMorTQ3DZRXa8pFG7VBZlXZwpYe4f2sWBQNvU3XAWLDYL4DacNZf5G7iYiP0flV2IM
         L1Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gx+cSju8IGWJBahoqqPk05mTZGpy6QhzwA3Af84ZX94=;
        b=cT9mWyk6AF1CbZhI+AxKwFlBbrEaeluAujxJGONuixu3qmK7cdjD3TeJ3HQZs9EmfX
         t6Nsn7PGrACFV+z+XcxemNNE9t1MbLa7z9Zm0jAn93EINWYPMvWO8dWHnBrL45ht53tM
         wDFNgiFAM5HDs56OxcVGYATpkKNKb/eogS2lAF6TsB1SELGGeldus5oAAMioPFohHyJ8
         YvfCOt/15l7AXpIkYGz1zxyEOfUPJ1VjQPCELoqaRkLFINk1eN5SwIIjzoByFJNbxZv6
         b36Z41W+lbRo3wYOcZ8LV5ci0LX4DH5VHfP12pTYS7g7d+0a8G3fYsoqPe/01WKuW1C4
         drZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZqUpkiem;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n82si1188707ybc.3.2020.06.23.10.35.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 10:35:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 27D0720706;
	Tue, 23 Jun 2020 17:35:51 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	Matt Helsley <mhelsley@vmware.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 23/28] recordmcount: support >64k sections
Date: Tue, 23 Jun 2020 13:35:18 -0400
Message-Id: <20200623173523.1355411-23-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200623173523.1355411-1-sashal@kernel.org>
References: <20200623173523.1355411-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZqUpkiem;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Sami Tolvanen <samitolvanen@google.com>

[ Upstream commit 4ef57b21d6fb49d2b25c47e4cff467a0c2c8b6b7 ]

When compiling a kernel with Clang and LTO, we need to run
recordmcount on vmlinux.o with a large number of sections, which
currently fails as the program doesn't understand extended
section indexes. This change adds support for processing binaries
with >64k sections.

Link: https://lkml.kernel.org/r/20200424193046.160744-1-samitolvanen@google.com
Link: https://lore.kernel.org/lkml/CAK7LNARbZhoaA=Nnuw0=gBrkuKbr_4Ng_Ei57uafujZf7Xazgw@mail.gmail.com/

Cc: Kees Cook <keescook@chromium.org>
Reviewed-by: Matt Helsley <mhelsley@vmware.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/recordmcount.h | 98 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 92 insertions(+), 6 deletions(-)

diff --git a/scripts/recordmcount.h b/scripts/recordmcount.h
index 74eab03e31d4d..f9b19524da112 100644
--- a/scripts/recordmcount.h
+++ b/scripts/recordmcount.h
@@ -29,6 +29,11 @@
 #undef has_rel_mcount
 #undef tot_relsize
 #undef get_mcountsym
+#undef find_symtab
+#undef get_shnum
+#undef set_shnum
+#undef get_shstrndx
+#undef get_symindex
 #undef get_sym_str_and_relp
 #undef do_func
 #undef Elf_Addr
@@ -58,6 +63,11 @@
 # define __has_rel_mcount	__has64_rel_mcount
 # define has_rel_mcount		has64_rel_mcount
 # define tot_relsize		tot64_relsize
+# define find_symtab		find_symtab64
+# define get_shnum		get_shnum64
+# define set_shnum		set_shnum64
+# define get_shstrndx		get_shstrndx64
+# define get_symindex		get_symindex64
 # define get_sym_str_and_relp	get_sym_str_and_relp_64
 # define do_func		do64
 # define get_mcountsym		get_mcountsym_64
@@ -91,6 +101,11 @@
 # define __has_rel_mcount	__has32_rel_mcount
 # define has_rel_mcount		has32_rel_mcount
 # define tot_relsize		tot32_relsize
+# define find_symtab		find_symtab32
+# define get_shnum		get_shnum32
+# define set_shnum		set_shnum32
+# define get_shstrndx		get_shstrndx32
+# define get_symindex		get_symindex32
 # define get_sym_str_and_relp	get_sym_str_and_relp_32
 # define do_func		do32
 # define get_mcountsym		get_mcountsym_32
@@ -173,6 +188,67 @@ static int MIPS_is_fake_mcount(Elf_Rel const *rp)
 	return is_fake;
 }
 
+static unsigned int get_symindex(Elf_Sym const *sym, Elf32_Word const *symtab,
+				 Elf32_Word const *symtab_shndx)
+{
+	unsigned long offset;
+	int index;
+
+	if (sym->st_shndx != SHN_XINDEX)
+		return w2(sym->st_shndx);
+
+	offset = (unsigned long)sym - (unsigned long)symtab;
+	index = offset / sizeof(*sym);
+
+	return w(symtab_shndx[index]);
+}
+
+static unsigned int get_shnum(Elf_Ehdr const *ehdr, Elf_Shdr const *shdr0)
+{
+	if (shdr0 && !ehdr->e_shnum)
+		return w(shdr0->sh_size);
+
+	return w2(ehdr->e_shnum);
+}
+
+static void set_shnum(Elf_Ehdr *ehdr, Elf_Shdr *shdr0, unsigned int new_shnum)
+{
+	if (new_shnum >= SHN_LORESERVE) {
+		ehdr->e_shnum = 0;
+		shdr0->sh_size = w(new_shnum);
+	} else
+		ehdr->e_shnum = w2(new_shnum);
+}
+
+static int get_shstrndx(Elf_Ehdr const *ehdr, Elf_Shdr const *shdr0)
+{
+	if (ehdr->e_shstrndx != SHN_XINDEX)
+		return w2(ehdr->e_shstrndx);
+
+	return w(shdr0->sh_link);
+}
+
+static void find_symtab(Elf_Ehdr *const ehdr, Elf_Shdr const *shdr0,
+			unsigned const nhdr, Elf32_Word **symtab,
+			Elf32_Word **symtab_shndx)
+{
+	Elf_Shdr const *relhdr;
+	unsigned k;
+
+	*symtab = NULL;
+	*symtab_shndx = NULL;
+
+	for (relhdr = shdr0, k = nhdr; k; --k, ++relhdr) {
+		if (relhdr->sh_type == SHT_SYMTAB)
+			*symtab = (void *)ehdr + relhdr->sh_offset;
+		else if (relhdr->sh_type == SHT_SYMTAB_SHNDX)
+			*symtab_shndx = (void *)ehdr + relhdr->sh_offset;
+
+		if (*symtab && *symtab_shndx)
+			break;
+	}
+}
+
 /* Append the new shstrtab, Elf_Shdr[], __mcount_loc and its relocations. */
 static int append_func(Elf_Ehdr *const ehdr,
 			Elf_Shdr *const shstr,
@@ -188,10 +264,12 @@ static int append_func(Elf_Ehdr *const ehdr,
 	char const *mc_name = (sizeof(Elf_Rela) == rel_entsize)
 		? ".rela__mcount_loc"
 		:  ".rel__mcount_loc";
-	unsigned const old_shnum = w2(ehdr->e_shnum);
 	uint_t const old_shoff = _w(ehdr->e_shoff);
 	uint_t const old_shstr_sh_size   = _w(shstr->sh_size);
 	uint_t const old_shstr_sh_offset = _w(shstr->sh_offset);
+	Elf_Shdr *const shdr0 = (Elf_Shdr *)(old_shoff + (void *)ehdr);
+	unsigned int const old_shnum = get_shnum(ehdr, shdr0);
+	unsigned int const new_shnum = 2 + old_shnum; /* {.rel,}__mcount_loc */
 	uint_t t = 1 + strlen(mc_name) + _w(shstr->sh_size);
 	uint_t new_e_shoff;
 
@@ -201,6 +279,8 @@ static int append_func(Elf_Ehdr *const ehdr,
 	t += (_align & -t);  /* word-byte align */
 	new_e_shoff = t;
 
+	set_shnum(ehdr, shdr0, new_shnum);
+
 	/* body for new shstrtab */
 	if (ulseek(sb.st_size, SEEK_SET) < 0)
 		return -1;
@@ -255,7 +335,6 @@ static int append_func(Elf_Ehdr *const ehdr,
 		return -1;
 
 	ehdr->e_shoff = _w(new_e_shoff);
-	ehdr->e_shnum = w2(2 + w2(ehdr->e_shnum));  /* {.rel,}__mcount_loc */
 	if (ulseek(0, SEEK_SET) < 0)
 		return -1;
 	if (uwrite(ehdr, sizeof(*ehdr)) < 0)
@@ -434,6 +513,8 @@ static int find_secsym_ndx(unsigned const txtndx,
 				uint_t *const recvalp,
 				unsigned int *sym_index,
 				Elf_Shdr const *const symhdr,
+				Elf32_Word const *symtab,
+				Elf32_Word const *symtab_shndx,
 				Elf_Ehdr const *const ehdr)
 {
 	Elf_Sym const *const sym0 = (Elf_Sym const *)(_w(symhdr->sh_offset)
@@ -445,7 +526,7 @@ static int find_secsym_ndx(unsigned const txtndx,
 	for (symp = sym0, t = nsym; t; --t, ++symp) {
 		unsigned int const st_bind = ELF_ST_BIND(symp->st_info);
 
-		if (txtndx == w2(symp->st_shndx)
+		if (txtndx == get_symindex(symp, symtab, symtab_shndx)
 			/* avoid STB_WEAK */
 		    && (STB_LOCAL == st_bind || STB_GLOBAL == st_bind)) {
 			/* function symbols on ARM have quirks, avoid them */
@@ -516,21 +597,23 @@ static unsigned tot_relsize(Elf_Shdr const *const shdr0,
 	return totrelsz;
 }
 
-
 /* Overall supervision for Elf32 ET_REL file. */
 static int do_func(Elf_Ehdr *const ehdr, char const *const fname,
 		   unsigned const reltype)
 {
 	Elf_Shdr *const shdr0 = (Elf_Shdr *)(_w(ehdr->e_shoff)
 		+ (void *)ehdr);
-	unsigned const nhdr = w2(ehdr->e_shnum);
-	Elf_Shdr *const shstr = &shdr0[w2(ehdr->e_shstrndx)];
+	unsigned const nhdr = get_shnum(ehdr, shdr0);
+	Elf_Shdr *const shstr = &shdr0[get_shstrndx(ehdr, shdr0)];
 	char const *const shstrtab = (char const *)(_w(shstr->sh_offset)
 		+ (void *)ehdr);
 
 	Elf_Shdr const *relhdr;
 	unsigned k;
 
+	Elf32_Word *symtab;
+	Elf32_Word *symtab_shndx;
+
 	/* Upper bound on space: assume all relevant relocs are for mcount. */
 	unsigned       totrelsz;
 
@@ -561,6 +644,8 @@ static int do_func(Elf_Ehdr *const ehdr, char const *const fname,
 		return -1;
 	}
 
+	find_symtab(ehdr, shdr0, nhdr, &symtab, &symtab_shndx);
+
 	for (relhdr = shdr0, k = nhdr; k; --k, ++relhdr) {
 		char const *const txtname = has_rel_mcount(relhdr, shdr0,
 			shstrtab, fname);
@@ -577,6 +662,7 @@ static int do_func(Elf_Ehdr *const ehdr, char const *const fname,
 			result = find_secsym_ndx(w(relhdr->sh_info), txtname,
 						&recval, &recsym,
 						&shdr0[symsec_sh_link],
+						symtab, symtab_shndx,
 						ehdr);
 			if (result)
 				goto out;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623173523.1355411-23-sashal%40kernel.org.
