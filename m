Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBP77XCEQMGQECIXB4GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D50133FC9FB
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:08 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id g93-20020a9d12e6000000b0051b1ee4745dsf2453586otg.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420927; cv=pass;
        d=google.com; s=arc-20160816;
        b=ocHikW892SPJjH/mIEfmcvnwqxyXGlljvGL8/mLFmsvxH7wB7uP/W1O5MkyCrfTQkP
         n+A0Tb5rx7GRm2/te0UulAM3QYx2z/Vky6sNi+71qcbxxBk6lePEYe6E1gvfx+cEib3P
         o8ZszgEI4Ouw8bu42k7qR03cgMtxrPujChVN3Hgm8Ulo2MTvlh08c1P22tVpH53IyQDO
         WEzkv3XMC5N1WTbYNeuYg9nIWLjRpmnFQg7kpDrFJuB2RH9F9hFxx0GA4CS7pwuUPHnE
         KSzTv5IEO+gCSygHzIe+ye71C3zZr+rugcfPqdQde+XRmSAPa+RHkrIXLbvCXmTyXGEJ
         x0LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VU8YYVkOqszPUvbt9D8+UA/5CXGvdfkIOMa5hXyqb2Y=;
        b=ysyfuCihpSEK5gVT1l31REkp/GtdQM6nRB0Q0rt96JmT6ukaVXm3sfnKL1FRNqxWOi
         LmG+t1NJ/L36bPHGAZqo90TiIBpAIz+XZzvQ/m4DXPAgPTm5nfmxmOokzFEJtPQNMKYZ
         fU6GpYUB12I8CKN7K+5r3GVxgUNlj/jKyGb/YwW4IIOVJdxRpHqF9FVKFelS+T/BuT5R
         wN8n5wwiX1GuzkEmsJdUjvVhT2Dw5BaK4Uu3PUzFSTa78z8h73INaApMYANDAXEQnrAy
         ShJ79tqTT/M39nwONvSwcNvzwQW01mAGJc6FOHIqlLUy675MJOE6WSSagPMC0FU7/BI5
         Wzqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VU8YYVkOqszPUvbt9D8+UA/5CXGvdfkIOMa5hXyqb2Y=;
        b=aEd9U1J4M/UAIFGxX4tXO+O95EDrrGC/IKXgx0hwK2STGDkS+DW8a5JDZhyvXlrEe2
         rrb1DemjhT3h3Wna9Izzgz6oVJcQDtQnUtDnywuuGPqu9u4eSOEOAOmdZ3nVPajg+dhF
         7WIwPqh11cZovrbz8X2v3ccnPVRCVMJZ8QOhJlRoXeiMhm/SDyfC3NS4gzbdPP2iPJW8
         dLuai0UmszmlADZMsZPPFMrotGkyr5/W5wfsRdXzvI1t1sf6oXtUL43iM8pTKSuboBvv
         g19ad0kfmtyxVoyxAp9SqP0xf2/9aPeROOs04IZjIOSZdROuUGRDPvy1GBD4/96aP9T4
         k0CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VU8YYVkOqszPUvbt9D8+UA/5CXGvdfkIOMa5hXyqb2Y=;
        b=pLtQkxbfQ1CqYDM3ah67Jkef8/aIAKbKP15BysSJTR4/LXyddILUFch23k/sO9QjXD
         g1c9d1Ax4LYRHhEXGutOcSBK7XRKuyBmdPijVI3yzcKYu8v/etkKJzRpbxP8xw6HoaMl
         1BrWIm/wPM3BH/xaDg9vWPLS1HfTvSIgcCx2Fd8BJcEU5Gz9L1k1+xz8EvrT3MUihob9
         39UPzW+H5RT77M/DM7IUTMAwjXuOWRr+EwEK8do4/VlAx2NGKa8g4MUnhFM6QBXoX7TS
         mvyD1Lug/rV9OZuF6DVCRMFHRVr/P7cC7gy4UgZsyGGPHgrkPqsXTHkf+bRMPInoZIPi
         JafA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JlJChJeUQK6adOUg8XKdIRV395aG/x9+nRU7pX4S5YmAp0QPt
	dGBAInNhXuHaTpy8JgghRLQ=
X-Google-Smtp-Source: ABdhPJyZ0VKfWMGMfLzSH+GdOJGiJH/nQXdlyNrCNb9uSATZkRiqAbB2cCI/B2Au6opBWF9E65aqgg==
X-Received: by 2002:a9d:615e:: with SMTP id c30mr18792127otk.134.1630420927587;
        Tue, 31 Aug 2021 07:42:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2689:: with SMTP id l9ls5449965otu.8.gmail; Tue, 31
 Aug 2021 07:42:07 -0700 (PDT)
X-Received: by 2002:a9d:7d15:: with SMTP id v21mr24002406otn.167.1630420927210;
        Tue, 31 Aug 2021 07:42:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420927; cv=none;
        d=google.com; s=arc-20160816;
        b=l2ouci4CyFaUedvGFyFaMKwHLRSUjAcJUXVaiQbPkwVVm/8naBGnmV1NM+aq7Ch8FB
         xnv45cOU9AjN2oodapDcDn4S+aGjOIDva/lcabMVAeZmucYWT+4y+/R3gZVUi/lcKnXp
         gGkkt39AIBkFouKw+qnNmYVnEMGB43x7D9KgsHJo8tCssX0vhB0i2OppXD2ZkMgiPXCO
         FrCKwWP5i1ybnOB6uVaincBwk+D/9AN4Z81itj+LS0rRoqXRH8sQ5SNEjRhdqrPUOOll
         foR15VttQhmBfq5jDrpfvZAx2u3uZmaUDH3y5iDFmKRb8eWIe2VqbU/qI2/LwcuYKQlK
         vAGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=eevSDoWd3JHh3Vi0N5zt+IbmAQy/ZKMM6yPwwj1Eo5w=;
        b=z5TJkDgyzq4thqIIjmeylyc1wDajXlmC+cUAFCS1Ttrg0JUW/edXtfJzZ4kPZS2zRR
         d85Zk16MVSdvZdvj9oLqMeiLllV91ktYkO4EYl565c8AL0eqMQuhuVqvPtBUxRAubL42
         M+AZSnDJiqD2jeX7ZehQM9U0XHmIb1eXW6XMwzU34sbyEjWt9E3iaIRxYkI27afs5y2X
         tQ+vm86+U0znL++3gdZpDoFmu9NlrKOVIwvQUtq3gYibOK7oJ2rieEGmnwllRZmDB6Sd
         p9+4QtGS0PoTA13cVe9bvLRESTtyNgzSw3p8EV1A1RBfAseZVaLZpVByGXcEVBKn2HvG
         Gpjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id n25si1114473otq.2.2021.08.31.07.42.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218532904"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="218532904"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="541035073"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2021 07:42:01 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfV002209;
	Tue, 31 Aug 2021 15:41:58 +0100
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
Subject: [PATCH v6 kspp-next 05/22] x86: tools/relocs: Support >64K section headers
Date: Tue, 31 Aug 2021 16:40:57 +0200
Message-Id: <20210831144114.154-6-alexandr.lobakin@intel.com>
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

While the relocs tool already supports finding the total number
of section headers if vmlinux exceeds 64K sections, it fails to
read the extended symbol table to get section header indexes for symbols,
causing incorrect symbol table indexes to be used when there are > 64K
symbols.

Parse the elf file to read the extended symbol table info, and then
replace all direct references to st_shndx with calls to sym_index(),
which will determine whether the value can be read directly or
whether the value should be pulled out of the extended table.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Tony Luck <tony.luck@intel.com>
Tested-by: Tony Luck <tony.luck@intel.com>
Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 arch/x86/tools/relocs.c | 103 ++++++++++++++++++++++++++++++----------
 1 file changed, 78 insertions(+), 25 deletions(-)

diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index 9ba700dc47de..ec50dfad407c 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -14,6 +14,10 @@
 static Elf_Ehdr		ehdr;
 static unsigned long	shnum;
 static unsigned int	shstrndx;
+static unsigned int	shsymtabndx;
+static unsigned int	shxsymtabndx;
+
+static int sym_index(Elf_Sym *sym);
 
 struct relocs {
 	uint32_t	*offset;
@@ -32,6 +36,7 @@ struct section {
 	Elf_Shdr       shdr;
 	struct section *link;
 	Elf_Sym        *symtab;
+	Elf32_Word     *xsymtab;
 	Elf_Rel        *reltab;
 	char           *strtab;
 };
@@ -265,7 +270,7 @@ static const char *sym_name(const char *sym_strtab, Elf_Sym *sym)
 		name = sym_strtab + sym->st_name;
 	}
 	else {
-		name = sec_name(sym->st_shndx);
+		name = sec_name(sym_index(sym));
 	}
 	return name;
 }
@@ -335,6 +340,23 @@ static uint64_t elf64_to_cpu(uint64_t val)
 #define elf_xword_to_cpu(x)	elf32_to_cpu(x)
 #endif
 
+static int sym_index(Elf_Sym *sym)
+{
+	Elf_Sym *symtab = secs[shsymtabndx].symtab;
+	Elf32_Word *xsymtab = secs[shxsymtabndx].xsymtab;
+	unsigned long offset;
+	int index;
+
+	if (sym->st_shndx != SHN_XINDEX)
+		return sym->st_shndx;
+
+	/* calculate offset of sym from head of table. */
+	offset = (unsigned long)sym - (unsigned long)symtab;
+	index = offset / sizeof(*sym);
+
+	return elf32_to_cpu(xsymtab[index]);
+}
+
 static void read_ehdr(FILE *fp)
 {
 	if (fread(&ehdr, sizeof(ehdr), 1, fp) != 1) {
@@ -468,31 +490,60 @@ static void read_strtabs(FILE *fp)
 static void read_symtabs(FILE *fp)
 {
 	int i,j;
+
 	for (i = 0; i < shnum; i++) {
 		struct section *sec = &secs[i];
-		if (sec->shdr.sh_type != SHT_SYMTAB) {
+		int num_syms;
+
+		switch (sec->shdr.sh_type) {
+		case SHT_SYMTAB_SHNDX:
+			sec->xsymtab = malloc(sec->shdr.sh_size);
+			if (!sec->xsymtab) {
+				die("malloc of %d bytes for xsymtab failed\n",
+				    sec->shdr.sh_size);
+			}
+			if (fseek(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
+				die("Seek to %d failed: %s\n",
+				    sec->shdr.sh_offset, strerror(errno));
+			}
+			if (fread(sec->xsymtab, 1, sec->shdr.sh_size, fp)
+			    != sec->shdr.sh_size) {
+				die("Cannot read extended symbol table: %s\n",
+				    strerror(errno));
+			}
+			shxsymtabndx = i;
+			continue;
+
+		case SHT_SYMTAB:
+			num_syms = sec->shdr.sh_size / sizeof(Elf_Sym);
+
+			sec->symtab = malloc(sec->shdr.sh_size);
+			if (!sec->symtab) {
+				die("malloc of %d bytes for symtab failed\n",
+				    sec->shdr.sh_size);
+			}
+			if (fseek(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
+				die("Seek to %d failed: %s\n",
+				    sec->shdr.sh_offset, strerror(errno));
+			}
+			if (fread(sec->symtab, 1, sec->shdr.sh_size, fp)
+			    != sec->shdr.sh_size) {
+				die("Cannot read symbol table: %s\n",
+				    strerror(errno));
+			}
+			for (j = 0; j < num_syms; j++) {
+				Elf_Sym *sym = &sec->symtab[j];
+
+				sym->st_name  = elf_word_to_cpu(sym->st_name);
+				sym->st_value = elf_addr_to_cpu(sym->st_value);
+				sym->st_size  = elf_xword_to_cpu(sym->st_size);
+				sym->st_shndx = elf_half_to_cpu(sym->st_shndx);
+			}
+			shsymtabndx = i;
+			continue;
+
+		default:
 			continue;
-		}
-		sec->symtab = malloc(sec->shdr.sh_size);
-		if (!sec->symtab) {
-			die("malloc of %d bytes for symtab failed\n",
-				sec->shdr.sh_size);
-		}
-		if (fseek(fp, sec->shdr.sh_offset, SEEK_SET) < 0) {
-			die("Seek to %d failed: %s\n",
-				sec->shdr.sh_offset, strerror(errno));
-		}
-		if (fread(sec->symtab, 1, sec->shdr.sh_size, fp)
-		    != sec->shdr.sh_size) {
-			die("Cannot read symbol table: %s\n",
-				strerror(errno));
-		}
-		for (j = 0; j < sec->shdr.sh_size/sizeof(Elf_Sym); j++) {
-			Elf_Sym *sym = &sec->symtab[j];
-			sym->st_name  = elf_word_to_cpu(sym->st_name);
-			sym->st_value = elf_addr_to_cpu(sym->st_value);
-			sym->st_size  = elf_xword_to_cpu(sym->st_size);
-			sym->st_shndx = elf_half_to_cpu(sym->st_shndx);
 		}
 	}
 }
@@ -759,7 +810,9 @@ static void percpu_init(void)
  */
 static int is_percpu_sym(ElfW(Sym) *sym, const char *symname)
 {
-	return (sym->st_shndx == per_cpu_shndx) &&
+	int shndx = sym_index(sym);
+
+	return (shndx == per_cpu_shndx) &&
 		strcmp(symname, "__init_begin") &&
 		strcmp(symname, "__per_cpu_load") &&
 		strncmp(symname, "init_per_cpu_", 13);
@@ -1092,7 +1145,7 @@ static int do_reloc_info(struct section *sec, Elf_Rel *rel, ElfW(Sym) *sym,
 		sec_name(sec->shdr.sh_info),
 		rel_type(ELF_R_TYPE(rel->r_info)),
 		symname,
-		sec_name(sym->st_shndx));
+		sec_name(sym_index(sym)));
 	return 0;
 }
 
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-6-alexandr.lobakin%40intel.com.
