Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB75URP2QKGQE4SSHB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 679411B740B
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:24:32 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id r10sf9437406qvw.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587731071; cv=pass;
        d=google.com; s=arc-20160816;
        b=cCoDZwRVyhwnU9yeNQRxpk/1SCi6zWqLEaSe+MtcCPlIc8qzWbYGKLOcZKx7876vFR
         Da6sy7W0ciFrbMIV9iiwz67jCVG6mUSS03JYxI2xb1eAbnjkKMZYUkSryPwthaE2mDdo
         yqkPhWzgPm+BmTN+xI2Hzq47i6AGan9ktbZDl7774L9sXIWb/H/chEQq4i/cC2pCSa/W
         bParDfav86R6F03tFmCVCf8c3TRA7p/w5ez9AhUGeuP4DehX8RW6QYic1R40fv5oSd+Q
         am94dDwlmCKVa4uHt7ncZ8K2mj0+mq+G90oMgJuKqcY8FaeBJndsOflpqGAyBiHyjGhH
         JmBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=C2ixFvcUyQ4zuWuhvcCn/vJqAMOAoW9nGIMzRqGfZjA=;
        b=TFHedEKb7wNQ4tAdR4XBVJNroR1m4g9kyt8KPDg0tA4rwIwStMujfaCvaZeQgBrSEZ
         06urppXzeNKTl7FSrLux4QUr96D5bTVezZ69WsHvT5xiscJtP9/8qnHWl0DGZckxdkzc
         OAgdT2OMRMCDGlcJ2gxfJry9ZJbbBaCxTde6/IlUjI8+X8W8l5/h1g67fZhiumRpI17b
         VrCFEgWILLYLyCcMmYswfZVDfZB1i3EMJl660uO9lA4aY+AsmyEzlsme671rEX5h7TiY
         TBhRqDAyCX1AnSTVAf8zJMDI4Hfrd7lhdsnD3Deq4Itxu0Mg70Mcs5s+ucg/F9cTHlhB
         x/1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yxajhCBi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C2ixFvcUyQ4zuWuhvcCn/vJqAMOAoW9nGIMzRqGfZjA=;
        b=dUMNKG1QCpyYCNR4jIQ5HMAE13Jy0Oh0bU7bvLPY0SR0CKfaWVclHPZ5szDJpTIuA2
         OPfIWumMOIV061miIB4U/VW+qDTCkJl+AVHIXmp7xBtDs3hLcFMkYHtwtNbnE5dQr8a/
         22AsGFD2tx4nBqkgLvzwTF++4TpGuwjg4usBU4BLo5hHdEBnEynDH7s8G1Ho2XxO6jbb
         eahjIGKmj7W8mHkDYhhbWG+jDWIw1KRADccv+Ggan33Mdnylk1A0Ojt29Zqe+PXrhCF6
         dweXojRZ/yq35yDiEg0vSVmgTnH73+BnlaKjt0Dv5Sq20Qm9uyNUzt9hMF+RBLYjjSGl
         Gsow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C2ixFvcUyQ4zuWuhvcCn/vJqAMOAoW9nGIMzRqGfZjA=;
        b=eaTDmZDrjtYD9ZmYEtmAuIMcyY8uN024wKoXU7RlFBPfG11KqjHdgFb6BsBvUCmmwk
         aaTLh9FS0xnBGFdM5WMT0VLBI8kyS5weUxshXzde/lJvt7OC5zVt538PbVkNexOLJdqG
         Q2eEqa/NfqAxDqOo67nSlQyYfVJ/pWMyWeJ9y4UAHHqdcwXVpRcgw6ykwYKIplfrR5Aa
         q/hrx6G6wBdCOmZivQGmm89/JuoR8ojf8q0D38ORmoyIa9m5OBCHpjIQ5PpUv977kBI0
         n4ojWc0FI7adsRhzhyd86CnYVQ0KxDANmDOIsl1vqcQm17gRvI8VOOOH38F7qCMp8kiT
         CP+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Publ+pIGmXdymRwl1QvQyogoyf3DaY5dfxvBi9lJFuMJtQwCqovH
	5Dn9b22FPKH2RYgBYnzqK/c=
X-Google-Smtp-Source: APiQypKj8R8HggnMWDrpWmuGL7uEI5OnH1EO8hFjmd3sTmTb5IKo6lCcW3cYPSQ2PbS8aplJkdwFQQ==
X-Received: by 2002:ac8:6902:: with SMTP id e2mr8701487qtr.214.1587731071454;
        Fri, 24 Apr 2020 05:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:7d4:: with SMTP id bb20ls2861605qvb.3.gmail; Fri,
 24 Apr 2020 05:24:31 -0700 (PDT)
X-Received: by 2002:a0c:e88d:: with SMTP id b13mr8813747qvo.245.1587731071166;
        Fri, 24 Apr 2020 05:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587731071; cv=none;
        d=google.com; s=arc-20160816;
        b=HBXlaQAEmdfknJUSVRxvVrMTFjsp8BUnn2tYEpE0Xuj/4ZUpjSKH7dYAnCzjzTTs3g
         zqM5lwTJVBY416fLTsfXIwhEzSCiii3owl31SyVeVOyz1HlWDo0oDKKtWeI5AO16Jer7
         BEAKEQJgxMlEjAGWTt3qaBZgPNXvrL+pAo0GGneTL9a5V90FeJ9bRQR+g3PQblBpJ8VR
         +VDIEW79UBGIlXbFUVr62HfH+MVdz624LTM39YNipHR44R+nfoJQ/E1crSoIFlqud1LK
         izyR4MGDsf8hg9LZvIQzywG3STt+BQuUpg30ysP5TBDlbHsm5C9GRRSwRszBjupw4Rsa
         o2JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nQ46E/Rfsw3NIBWqbsvUayMwPODV36fGdXTJAa/yKS4=;
        b=J87TkG9UjUu0cV/hrVh/5wWBXXhY10PvdZ0QAqpYeRwRSh4ljEqLbUyvl18ofHV6wc
         KEpzh2wZUmuO42pqvaKF4fOun9zPCOPch+h3IiFZuMo82kVg6iWOMgRDmax7TvwFd3SI
         BdEM7TT5eJRGGDRumILkr2P1aabPhQ1W1Ah3VcJR0sg1F83BHNl11psZScHrU0I5E90U
         qPPdfkhvmP3DGfajdZ7Y7MUuOi1fauuOJ/fQNz/vbbmMgV9ixBGkYmy1GprKsfXaVHSd
         TpDDDPG7jOuG2FKy8Z50jYAku8a3+NITGrEWfGx2SUIMuEyZwvlG5EjlqzqzEsjTNmQz
         x0xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yxajhCBi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g38si405162qtk.4.2020.04.24.05.24.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5A0672168B;
	Fri, 24 Apr 2020 12:24:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Borislav Petkov <bp@suse.de>,
	Miroslav Benes <mbenes@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 08/21] objtool: Support Clang non-section symbols in ORC dump
Date: Fri, 24 Apr 2020 08:24:06 -0400
Message-Id: <20200424122419.10648-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122419.10648-1-sashal@kernel.org>
References: <20200424122419.10648-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yxajhCBi;       spf=pass
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

From: Josh Poimboeuf <jpoimboe@redhat.com>

[ Upstream commit 8782e7cab51b6bf01a5a86471dd82228af1ac185 ]

Historically, the relocation symbols for ORC entries have only been
section symbols:

  .text+0: sp:sp+8 bp:(und) type:call end:0

However, the Clang assembler is aggressive about stripping section
symbols.  In that case we will need to use function symbols:

  freezing_slow_path+0: sp:sp+8 bp:(und) type:call end:0

In preparation for the generation of such entries in "objtool orc
generate", add support for reading them in "objtool orc dump".

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Miroslav Benes <mbenes@suse.cz>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://lkml.kernel.org/r/b811b5eb1a42602c3b523576dc5efab9ad1c174d.1585761021.git.jpoimboe@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/objtool/orc_dump.c | 44 ++++++++++++++++++++++++----------------
 1 file changed, 27 insertions(+), 17 deletions(-)

diff --git a/tools/objtool/orc_dump.c b/tools/objtool/orc_dump.c
index c3343820916a6..7cbbbdd932f1d 100644
--- a/tools/objtool/orc_dump.c
+++ b/tools/objtool/orc_dump.c
@@ -78,7 +78,7 @@ int orc_dump(const char *_objname)
 	char *name;
 	size_t nr_sections;
 	Elf64_Addr orc_ip_addr = 0;
-	size_t shstrtab_idx;
+	size_t shstrtab_idx, strtab_idx = 0;
 	Elf *elf;
 	Elf_Scn *scn;
 	GElf_Shdr sh;
@@ -139,6 +139,8 @@ int orc_dump(const char *_objname)
 
 		if (!strcmp(name, ".symtab")) {
 			symtab = data;
+		} else if (!strcmp(name, ".strtab")) {
+			strtab_idx = i;
 		} else if (!strcmp(name, ".orc_unwind")) {
 			orc = data->d_buf;
 			orc_size = sh.sh_size;
@@ -150,7 +152,7 @@ int orc_dump(const char *_objname)
 		}
 	}
 
-	if (!symtab || !orc || !orc_ip)
+	if (!symtab || !strtab_idx || !orc || !orc_ip)
 		return 0;
 
 	if (orc_size % sizeof(*orc) != 0) {
@@ -171,21 +173,29 @@ int orc_dump(const char *_objname)
 				return -1;
 			}
 
-			scn = elf_getscn(elf, sym.st_shndx);
-			if (!scn) {
-				WARN_ELF("elf_getscn");
-				return -1;
-			}
-
-			if (!gelf_getshdr(scn, &sh)) {
-				WARN_ELF("gelf_getshdr");
-				return -1;
-			}
-
-			name = elf_strptr(elf, shstrtab_idx, sh.sh_name);
-			if (!name || !*name) {
-				WARN_ELF("elf_strptr");
-				return -1;
+			if (GELF_ST_TYPE(sym.st_info) == STT_SECTION) {
+				scn = elf_getscn(elf, sym.st_shndx);
+				if (!scn) {
+					WARN_ELF("elf_getscn");
+					return -1;
+				}
+
+				if (!gelf_getshdr(scn, &sh)) {
+					WARN_ELF("gelf_getshdr");
+					return -1;
+				}
+
+				name = elf_strptr(elf, shstrtab_idx, sh.sh_name);
+				if (!name) {
+					WARN_ELF("elf_strptr");
+					return -1;
+				}
+			} else {
+				name = elf_strptr(elf, strtab_idx, sym.st_name);
+				if (!name) {
+					WARN_ELF("elf_strptr");
+					return -1;
+				}
 			}
 
 			printf("%s+%llx:", name, (unsigned long long)rela.r_addend);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122419.10648-8-sashal%40kernel.org.
