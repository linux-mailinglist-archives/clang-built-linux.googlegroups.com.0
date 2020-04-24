Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2FURP2QKGQEIYJRS2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B2F1B7406
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:24:10 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id t2sf8193106pfc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587731049; cv=pass;
        d=google.com; s=arc-20160816;
        b=JdPTiLi8T8YiHPfPbwtUDDYqs8P4XM7NswEJGTkN7sRw32yciCCFwDiyn5+/rpLu/3
         BkdqU8c6sefrjvZs+npnigVmiv0e+JoxdTdShEQRAli8gqa1DR4Nc6KvTp+acYr47ink
         /FXGyYQYpkZ7Y1DrD5t+9Zb9CTrrnuL3zjzfujeWkRxyxSMO/wVpLvGPz0UI4MPQngfL
         LudENoVbGxwEBUG0TXMCufvf6vFszhTHYArrD+qdC8O0E2MqV9VHJeVYVMCu4IclPwgV
         tLOFtvLU3mPKsitl58j/REkNx8aRmK/9vnHyOHkBxWQBeFyFltmpcNOXe14Fgiu2LZre
         eu1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VMR31bfV48C9FCxT6Ie30PND41/EtQ02pmYnUZZVGeM=;
        b=SALJais6dUb89ZScvyyRTkC2RLo9zbqdKtTINeh0/wmHhSo1JnO/xBF2zthm3sPBOx
         JB8WgUvbRcWY8H/LohBDk3HIdlRAw5VJoKOK5K3K3Rg16x7ZEpR3RP7VQjReIyOw9Wfs
         C6MHIXGvrrtVaNyL9L/YKL7jhruu91msaFFQbTBRMZnHMq/GeeZO/KFJhmcMbxnxBbtQ
         ornElyA1uslALZLacf3kcxe8MqPePbzTR+bLcVPjDIIG9dO7bYuTZp79qTuQ+xQVvBm+
         Lys8qtozN5EBfEkScATK1BKEfQp4GVKLkc3fhWJUeK3d21vKj1khHGYtgufTHgAGNhyD
         mFMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=atC9LHXf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VMR31bfV48C9FCxT6Ie30PND41/EtQ02pmYnUZZVGeM=;
        b=RJdDAFYTR9lsFbvZn3NEs20GHHCtb4wtMXMYCMjKcqg0AxRmGXlUj18YgKMQwizCSk
         l68uG6D6bwRC5vnlvQDAuE1XAJ8/N/eralV71dDZxTVBaiJnYDTAWSetrqVArZ48kezI
         ON3dIBOeJPZgkbeMNmQ+PibBLqSirLqyWRNR3K6JN+Jr06MFEnz9vOlM7kqeZ0BztsMI
         SAjcO7VwkzmCQvlloXbW8BWAN8HDCm/wiB5YZeINQWzFkNKwNZONnL0ZfyWMbv4DSd/H
         ysZ44vgtQqIx9ozNa8FgH2tU6NkguWQm/ZnI3gE6Ov5WeOsAaP3S0T1Q0TiKvChMVzV+
         +Ocg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VMR31bfV48C9FCxT6Ie30PND41/EtQ02pmYnUZZVGeM=;
        b=pxc9EhntZMsxDwaizKdv+EojFLqkKtMCIg+KO3xbpLvKC7HO1aPUtG0PDuiZGm4rB6
         vfwt0DUh0iu9DkcFjSE0ptJgCds3zlhi93wvIYUEIMd4Rxsg7FEoWOYN35aphxG3dWsK
         t5Eob2r/UsrPRulRFI+Tv65rErm5VR2LsnFDVYAAjmaJk61caQd2kxavf2WhwlUG9Lmb
         buMeADNColSlc6RycIKGKuPjsCDc6oPIKlwwaAfy3hawO9Miy6mq2vqCTxn+w5afpRNE
         yIL9mqcOf3aybioz5rrsJOnIvVjwCytM7m3R/K+9xrNR70vIThnt1gqvio75CcrrzDjf
         ksQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puavf4ejCG4pUnym9+rUXHK7ADIYBZ6EQqdq9ZNiYFWwv/zY2odU
	ji4nmkRngIM+N2tumsjrw4U=
X-Google-Smtp-Source: APiQypLMGrW0Ihvp8Pa2qvdrM/tK6V0MScYddgLNz72WBnJgjWRN1ay2rmafwN4gFz+2D87CgeLuig==
X-Received: by 2002:a63:2143:: with SMTP id s3mr8875282pgm.20.1587731048858;
        Fri, 24 Apr 2020 05:24:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls6580157plo.8.gmail; Fri, 24
 Apr 2020 05:24:08 -0700 (PDT)
X-Received: by 2002:a17:902:aa09:: with SMTP id be9mr8700609plb.341.1587731048460;
        Fri, 24 Apr 2020 05:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587731048; cv=none;
        d=google.com; s=arc-20160816;
        b=MFu4gDVf5XDPVtugtThlMMl+TBLyuJhGszYvxVz6K07t8ADhreh5MPRWEOsjvwOZ2B
         +NRMxW/bZzhM5q15QsB0KoZzrxY1UFrsMfucaVCbSQQvJsGEre86arTwBFzKSbxUljS5
         Tg123w3VbgZDS3IoA1HDUMirUa6LEE1UGu3dh7c+uauGE3CAC4AZXeYPM6V7U0lgj+a/
         TUoiS9bb6VOKSuOBx5HnnTY4rW71nj3JJlMRX5CV0NqH39XvypGfkrVfVrt6hnvymXQB
         nKQsMjriUm5rioCeRvWWWLTvYx1ojqDqPKA9LUiFT9rAW2tVdCz62XC/+Fd1R4vMQm9s
         vXPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GFNlmPAAL+ObYDKHfA7+VeKcWI2v/cNsDa9u1DHybIY=;
        b=sgPuAVPb2uYl8gegu2+05ut+rd+LN/NY8z+6ocfWZTIzTaoWVNfRZoCNr9wPAbRrJa
         06pwPY+iS48rEDrj/ZYSBmbiDBp7KI07kh7yWmJ/bzla02LSeJ1bER9exb3NX5QV8hxm
         nzBz4GF0Ejg5tTvDYYHrF6icZns1bhMnPsMEQfsqZSrbNo149feYmzazl0mudiMxKgy0
         wFAZZt4Vmb+69slK9DQcWhIzcVaIm2uxPQZaV7y3TsK3rRWPI34mDizqkfIi0dRvWD0N
         TX+B2VcEL2363ZyOPbum9a4Qb/ZZDRx6MhgTP1oXbk2IqB2egvS+RzY2vMdxZ+Vr1fxI
         J2MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=atC9LHXf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a95si1052389pje.1.2020.04.24.05.24.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 647C621835;
	Fri, 24 Apr 2020 12:24:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Borislav Petkov <bp@suse.de>,
	Miroslav Benes <mbenes@suse.cz>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 10/18] objtool: Support Clang non-section symbols in ORC dump
Date: Fri, 24 Apr 2020 08:23:47 -0400
Message-Id: <20200424122355.10453-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122355.10453-1-sashal@kernel.org>
References: <20200424122355.10453-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=atC9LHXf;       spf=pass
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
index faa444270ee3a..1a3e774941f8e 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122355.10453-10-sashal%40kernel.org.
