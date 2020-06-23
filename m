Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGP3ZD3QKGQE55BXU6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D512058DE
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:36:27 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id k70sf6227887vka.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 10:36:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592933786; cv=pass;
        d=google.com; s=arc-20160816;
        b=ht5OJQ1He9eDYPJTf+sXIHPjteONuThSLBDH4MWLTIBr6ZRmeFJG9oQUtuDvHfyr1F
         DmJUZyf+CO/ur6oddspeMzyY6xNqyUsc1aIaCGLwo6VGpXF4FalQEHwR1u+VU2ku+3nT
         c15IczLofBDmYdPnmlSoCgaDlNTCKd7eUhaSf+glQAiBNPVZShoouOD5Gzc6OzzQZVz9
         0aJ+FXI6mqtzit1YSCfAKPvHVU7i+Rq04EZQ2xU2e/5rMps2DKbf8eng7lWjuwHYeLYq
         bjl1eIjIM67sqrVuXKqY4LOREJvz/9SBLiHHK+yt4Bso98RymYYqQ+N/qjp8UNQXgFQc
         cSlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=R2MFEUjv+jsVEU3XynFQIwcGgZUEcVU9177rB1Ari7U=;
        b=TTF06hh2drHMB7dIr1BLr5VoKBSfCRu/0SjZ3wbCly88dwyuYvET1OpvGB4DyTm0ni
         uXz4bgwlFN7SDNxnuf/RksHM1RHBuzlXhyrrvTxFyG6Rg9blDSIYpigHW+ZrBLv9QMzb
         pk50M12RCTwgBJspcnETd8FpYe8SLZa3ich9nZlKNeiNAKX4DKmszjYfVR7DqTQQCMyu
         XTBxM9ibytlT5/gFsla6ObDkXl+AOGdVK4Tdrz6YV8EOLLJhP91FodefTeAGet4bW9hu
         xOMEf67lapzHTbiJkIijLsu22in7NL8Fiwj/hOfViOpb4n81iDFkmZqneDU7o2wRiYmz
         TRKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gfxFBFzz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2MFEUjv+jsVEU3XynFQIwcGgZUEcVU9177rB1Ari7U=;
        b=hJaqg8uRBOIu3mO64zWX1PYl24poyKsMEpImJfxzmSQcHf8sxOHZwYng0HuXNyLNxO
         UqNvydMJQ3iUef4IWkBJ18oa4tXOW4iYrm9aoabCf70uArw5drJOY13mh1tZZgAw7D1k
         6Q+zOYHZPrOQ8MS4wxqEfRpwdCv4Fygvpb6eNcXL+kFYzVYLybHWz064nUNVuNDlGlAF
         bb5cGJRQunfAXeWYWKpoNgPfqiedqVkC9fTaYsR5M34Q2lXRnU4eyRdZ689FoGqb93dy
         j16EBxsOP6NWgbM976GzgECWtMtoRXCqVCJtJwddUZBrn9BkjAyn0vrDeGxCj6HSWbq/
         MxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2MFEUjv+jsVEU3XynFQIwcGgZUEcVU9177rB1Ari7U=;
        b=NSYr62i7q4YkLDI2LJbejVgldWvKHFz77JyDMR9Pss0g9hCUrYydEXPZoMNMEVfXdP
         mxTuiX0Mr1JXnbPpOYZTPwzXdWf8lb9A0SQnBwBFR8EBRKCCiT2BrLHIURDWkJP1mV4e
         deMOyaJKoOzEc/xSNHSA3ZAo3cOHoLRf8XT7ffzTSP0MBzeagVYI5MS6phlVmYm+w5mU
         hUvfc8mDUzqRcd39eDei3zBxGGsFstku8pmohFyZXB0V1HSywMhnLz0++pyW5VQGWt/I
         /Fes+MZ2ywtU2Ou+3XtgsymrEavewM+5CASAbnMwNSyhG45LKcevgMcPnRBt8yZ8mw2g
         t92g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PUjii8ENEBTIDywIZf9bZ6Wvp6i6L2fhIK8HlP35lbwQ+706c
	U9cK5EtTwTwp2DW3PJRV/+g=
X-Google-Smtp-Source: ABdhPJy+uF2l8SDZZy6RBPPC8ZD0Dv8qpunlsHc58ey+LgtqjjlfHwCgfF1cgUSEZp1OA444Fgw4sQ==
X-Received: by 2002:ac5:ce86:: with SMTP id 6mr20723393vke.75.1592933785770;
        Tue, 23 Jun 2020 10:36:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e89:: with SMTP id x9ls310585uai.6.gmail; Tue, 23 Jun
 2020 10:36:25 -0700 (PDT)
X-Received: by 2002:ab0:142e:: with SMTP id b43mr14696892uae.102.1592933785320;
        Tue, 23 Jun 2020 10:36:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592933785; cv=none;
        d=google.com; s=arc-20160816;
        b=M4g16IXgVZLHoNajn2DuLXfjs9kiRCYvl9wA+4acURPcDroO4wWiFhSV7Aez5bu4qP
         /6bTQQosTTkFBEeHbhuWHx6PKsGBX8vfH/tWVvoZLZ9OR+AC7wsYlPWNvix/4rqSeAJi
         hJJFxW5bgT/bYXIJxTztREbWflcjRBsh5xDHQYfRXt12cL+0rhdNabacT1td4bDHWDRp
         NmuGQg4RIKTZxZtbUx34mEY8tE3KkvlTx5qkZ53n8Prl3mPi8K56wTWaeoXdh6Ojjr7n
         HjiYqs5eFfC9oMTbcjqgHerwnt7MAngt49co1pPGTyUwJiIYnL+1RDZ87z9mxAMugQ2g
         WlZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gx+cSju8IGWJBahoqqPk05mTZGpy6QhzwA3Af84ZX94=;
        b=cHnS7b/Ves7MXsypCKgUCc91WwgVbagWdQ71CsR/EKKZ6lDhyblrhrLdZyps6pD6Z5
         tjgLQyngEjxvZUKOGRWde+jni3LtUWD7VYXtroQA6z5LRJmCOunnbW0dKQRKX88hPupf
         ucZuQ8qzqRlvC4fjZ4bqk9ggjNzqr3qTdhUUX0xN91mnQEhEMw5LOD1gJ9CfG3nAHIaQ
         VAh2Eu6Xbh9I967kklZgwOuc7fztR/YEloKhAcAmpzrDJpJhQTTYS6fq3yxsEKKnlf4A
         2xDjMwPkmLuIYp+mMBX+ALD5gwBDGch3iw46fbJ50XSV67waUfZ0p5TbY5bzk4SSZprZ
         r4zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gfxFBFzz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si940194vsr.0.2020.06.23.10.36.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 10:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 73C7320706;
	Tue, 23 Jun 2020 17:36:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	Matt Helsley <mhelsley@vmware.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 20/24] recordmcount: support >64k sections
Date: Tue, 23 Jun 2020 13:35:55 -0400
Message-Id: <20200623173559.1355728-20-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200623173559.1355728-1-sashal@kernel.org>
References: <20200623173559.1355728-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gfxFBFzz;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623173559.1355728-20-sashal%40kernel.org.
