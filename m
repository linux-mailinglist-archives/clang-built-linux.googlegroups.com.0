Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTVURP2QKGQEVY737EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5B21B73EE
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:23:43 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id c3sf9459850qvi.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:23:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587731023; cv=pass;
        d=google.com; s=arc-20160816;
        b=YnEv+gacg5j9AvFpwqziibBX1AwFce50Kd0S58gW+4tn4avj55h5niSgOZZZtL2QOF
         /KTANODq/ojGA7qKYgkqp2PRsFxJCHyRNdPgZ/wbK1+kk3dg5OScWh2IvjIK0eWqc/8j
         9n98AHZmSRSNopwSuQzeMzPYMs4gND9YBiR4T5OaYu/Gf6840KZQpeO7btZ/uzM6twde
         CRIXYwk18POxM03HTESX5WMo/TxoDWxni03zjGXvFCrvJuEKgBYzRPgI8T0Pb+CXy1pf
         0JS0vNl69DH5reQaw0WR3BGOqBeEYBquwZqg2u5nzTXVHDzAeiWWM9zaFAREhUU6ibn0
         RU9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rlcU36PJLB53HSLaRzS8jvnD0nfuAHun86iaWWfZwyM=;
        b=hyTJoA2ZZlwHWm8Lyo02ZN8LUMCT3AyaZRmMl8KI586JhTOA+l+UNOJ7zeoiAVhsIQ
         sMSAjrsXSDWEevn+42dvENlU2qEu9MUe3yCAXCT7TesY/qwneN/8lytYswgipukkZutr
         eCGHEwLiSrDWKwXs3cX2Ik2oCWLegdmaNRoskINtkVVdbvnQ3RseewFtEKlx1UuJKAoi
         4qIw5ET+clidrnNwCwkzu+RPw4J6tqyanFBTY3umakTm2yTND0f1LtOVMQv0estGXrBH
         kMI66grrTjRzpJ1ahru6P+fBmTI6HksjoDLk4Y0KpBaemNWc0edhsYs7ZSyf4Wtlpxyt
         YAqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HvG2inPb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rlcU36PJLB53HSLaRzS8jvnD0nfuAHun86iaWWfZwyM=;
        b=R3TrrubCK/Gn5OgVinZqxwbzGOw6lA5ZGyu/OnYagEBVOXXLuhwJeSufV4lvq2fFsd
         Lx2Pfdj06jB3VsKqEWs+RY1Be1l6Sh7NvV7V6JpnqaxeT+RAQXXWb6tP7kzcBrl5yrvs
         dyibpjUzLEMMiHppcHv4xqPWOJ/BxlCl1jGjzJEihIQyZP/F+OjPS7JzEh9hxJByCmUk
         UEl6rTt5H+hfyRulcdES6PHEvajlYHObJcxUl2es37zXma7eWZUp/w2U6FqtrkVfhwNO
         w5Htp05IyQVyLdS7Oo4NcOoEyQ+7tJVNtq2mjxPLvl6SKndXMYFmjZvhM8AivOIUDPW7
         2VXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rlcU36PJLB53HSLaRzS8jvnD0nfuAHun86iaWWfZwyM=;
        b=TFiXHb+EH8S+rc22FwpshEpLES8PH2RMvWboYDu7UmnYEpueQVym8dxVwspS6t6XRM
         EAkdoBwxj1u7+ztbMhFBDE2BdwVWpU72Xm1AKvRt5UnVSg7faAFrinOSK1CYUM2ZLYZR
         55e3JW0oY1ICwbNbGWfplNh7c5T2vine812Pi9NGcETnekDOOVySmxJTasS2wPpgYZU1
         JrIB6tQB8uuzlXuASnvpe3ik7DMb2GiSGMf8/iYUJozvoySAiTC+hgcNuutVVcyAzSRf
         q53wAjGcZTvaI2B52LlkSYp1eQz1DeofuCGXEZ48oUhi5PuclWbx5gvAluAmE9OLhhJd
         iNFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYt4lzIZZRLg5ZCpgCRBFTlcU7XLlf8lOCsFjSt++l7nFEGSXt3
	Abfmcc/07TeVImLE6+jCrwo=
X-Google-Smtp-Source: APiQypJXpu4Wn3+aaX3pEeTPHdVdN3qCMcYCRJwKimkc7d9qwXXdNZXEH0XqDc6O+qwziprxtRHWTA==
X-Received: by 2002:a0c:fc0c:: with SMTP id z12mr8566851qvo.41.1587731022922;
        Fri, 24 Apr 2020 05:23:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d8b:: with SMTP id g133ls2851452qke.11.gmail; Fri, 24
 Apr 2020 05:23:42 -0700 (PDT)
X-Received: by 2002:a37:7c7:: with SMTP id 190mr8793611qkh.477.1587731022574;
        Fri, 24 Apr 2020 05:23:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587731022; cv=none;
        d=google.com; s=arc-20160816;
        b=Z2VYHd6byiXofDqQp8jECfA6x6BTbmHwQW51a1G4+/tS719XpbwhtBnt9CE8P9n3Z0
         iy1MfglutflGtdp6oBtifspV2sWIOPMBo0lvWvn0TjFsjoSNxDUIcceflcO/7WjSF8G3
         lVT1Iio1A4HTl+iqsxP0gIr/atPrUVJ1BaBlXO3SQQWGmoHjIl4kVuX3gfFzWBH6p8GQ
         7buEH7+UERTFMpJfpDdHzQMySSH32FqXmlygp/BzlsAd23fvbmblv0dIGht/rd9ce27F
         /JpltENtIA5aecJ4LEtJwTSZ8q9vmQJKwZXgM/bK2PfhLGVL7EDOHtIiIr6g0snoBPq2
         z0jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=62Ht30VxJgXT6F042IU11EDvL3V27qOnbvbCzm2Nyn4=;
        b=YmWkyb80ANWrcAW+66RnaFQWGB89SvzyM6M8CJgcwiaIP/76WljUsfh5JBn/RkxiEP
         YRgfnW182oTfoIp6nYEV00E26/ZYkJTZiU+l9FGbBp6PaSx1q0vrb6uokrrYreJKLXZh
         5fP2pdZlh4nHHXciuha9f1yw9xo6wm57bbwz1jUVCJ+eSJq1hCnhkaIrA0rvKZVxbRv3
         a4nnJk9/syOuikiAmoEE++MPz8+WxtmeHbLkF8iHGY85oQ9vPjGjfSWowQnNOqTxNPfO
         zaML+YPdQT5buAI3AoOlhMxURQQ6wGr+8iVDtCJIaFqAlFFlAu9hUN2/Sy3t8mJLAPb8
         54Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HvG2inPb;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g38si404966qtk.4.2020.04.24.05.23.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:23:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A086221707;
	Fri, 24 Apr 2020 12:23:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Borislav Petkov <bp@suse.de>,
	Miroslav Benes <mbenes@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 15/26] objtool: Support Clang non-section symbols in ORC dump
Date: Fri, 24 Apr 2020 08:23:12 -0400
Message-Id: <20200424122323.10194-15-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122323.10194-1-sashal@kernel.org>
References: <20200424122323.10194-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HvG2inPb;       spf=pass
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
index 13ccf775a83a4..ba4cbb1cdd632 100644
--- a/tools/objtool/orc_dump.c
+++ b/tools/objtool/orc_dump.c
@@ -66,7 +66,7 @@ int orc_dump(const char *_objname)
 	char *name;
 	size_t nr_sections;
 	Elf64_Addr orc_ip_addr = 0;
-	size_t shstrtab_idx;
+	size_t shstrtab_idx, strtab_idx = 0;
 	Elf *elf;
 	Elf_Scn *scn;
 	GElf_Shdr sh;
@@ -127,6 +127,8 @@ int orc_dump(const char *_objname)
 
 		if (!strcmp(name, ".symtab")) {
 			symtab = data;
+		} else if (!strcmp(name, ".strtab")) {
+			strtab_idx = i;
 		} else if (!strcmp(name, ".orc_unwind")) {
 			orc = data->d_buf;
 			orc_size = sh.sh_size;
@@ -138,7 +140,7 @@ int orc_dump(const char *_objname)
 		}
 	}
 
-	if (!symtab || !orc || !orc_ip)
+	if (!symtab || !strtab_idx || !orc || !orc_ip)
 		return 0;
 
 	if (orc_size % sizeof(*orc) != 0) {
@@ -159,21 +161,29 @@ int orc_dump(const char *_objname)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122323.10194-15-sashal%40kernel.org.
