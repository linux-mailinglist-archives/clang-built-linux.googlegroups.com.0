Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB2UZ3GAQMGQEU4BDHYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F62E323C70
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:56:12 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id gm17sf1830483pjb.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:56:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614171371; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yza1ecwwsZ75oYKNyvaHtH9IddGpI/fwuyAFaSw9aChn7+rz7Inm75tJPkuds6LISZ
         3TYNpaheQJSds98+UiAQcjXdQ3n+XN2Ot2INrA1upkfZRoktJkvwBDBl74wOcSaFVSu3
         eiVoEYUfVRlB6/Ig83FHS4KGa1oTsXe43Kmee+jjhmXfw/4f/lVuHucl8r7WVttpNzCq
         ReIOOx/R1d6rgSs2fTUpEebHgwwQOxZW0afmv7NCLtf2Pd1rdOnZ+2JOlCupHdNPRpVl
         jKSB9d06dMsmcdSbfMG/eQiqbItjBlE7u7olEhWh1ro0nq3g/7CQy14Fva1WaRv1YqWu
         OGAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=c3H3kwCuwemMd1m5cJiAt34dmChivt+oa7PHaG4RYwo=;
        b=eNiHWctnMBPlfZhCR6dmPpVUvnhuRCCStItSgZ0LDAOAFTYrfvVIP+JzODWQCENASB
         tzCZdDCaVCrZbNCkuqz9BLwLQmh8em7WydAKeqPjwCDJVZ8k7PmtLUUhO5wMrLe/iLNJ
         ZJe6w1EgSikZ/vRNlPjxGH5dN0cZ5sIFRrKBMBsFFwX+aIFIKTsyF+YoVzqeYXQDLnMD
         fSVqyPKR3gCB6Q+F2EaZtoKWz5pgMal+dv8HU9zkxaUPIfS9rS7iNZdn1aTiRzzwIjbL
         3lzJPVtfvnwj2rRw2azzw49mq4CKa/8PWYWIgMwrZ4del4CRNinRUz7lqKkXTIW1k8u5
         rdig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FYWbJhT1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3H3kwCuwemMd1m5cJiAt34dmChivt+oa7PHaG4RYwo=;
        b=tc0ntIK0nI5jlxmI2GqAuky1s4M+WIBKfpGjavSr9iTz1HKF0CYe6VKcn3UEN9Y6IM
         ekvwU/5cUlRKmzY3H+1XEbQoT8USVgi28i4rw3AzT+B7ZUsRceKRQYqoy7cx+pU/7Zc/
         shrtiuoCAEqwU/wKAlyuGZanWZeZ37AttMC5zyZqQu8jMQ4kIejUhCMIbQF37PvRQQ9j
         22XpAVbBx8SApgSkdqfPj6hFlM9iiD7/n9uvkkD7cRNIEQzxHh04Gx/YfxC87r4fmwYC
         ZRiy+L72cFkQE8wFXQ/Da4cpaILc0M85XXYYAIS7W5/xlfn+RX0KBAz1xQ2VHsVkfISv
         zjOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c3H3kwCuwemMd1m5cJiAt34dmChivt+oa7PHaG4RYwo=;
        b=qhGkffmkfnYKLLI75jHj7HDDEbbxKebp0Em5CHRegeoBUat43KG0IUQGBOMBPs0fsL
         U0ZbLG0rLF58LYCyNeW5VAc5Jq7VNuVF4F1A+I2uMtpICzDt9T72yAfLp6DRJr1jWngA
         qzD8xi1uE+qmeFeqW/7Z+AznDkjtuVshhRaSvZCAn+vrBOmFscDOqJTndgEL5bY4c8iz
         xQsAzhePfF84t53gPzkza73I0nQyPCCSB+b5wy4N/w1lIDTUu0SyWSQQ6AyvFbETf4CW
         nv62wzRILZJSPFSoA2Onf/QS8SMez0J3D/lsal0a0lrFuVQGVJ6Lt9OGGEBkXHMiXJki
         dtBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u3/hJaRV9a4P2kU1kmpkGwVLVR+WW00QYxR471oSOQrZYFNvm
	xSSXky2TA0bxjHIZq0CNUmk=
X-Google-Smtp-Source: ABdhPJzevfOn2xupmhrvC7dIFc9gB8LgqIFi9DNetxtQ91m236XdzB+NP/byGtCSrpd1FANydKk4Zw==
X-Received: by 2002:a63:4909:: with SMTP id w9mr28953453pga.343.1614171371067;
        Wed, 24 Feb 2021 04:56:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c204:: with SMTP id 4ls1334172pll.1.gmail; Wed, 24
 Feb 2021 04:56:10 -0800 (PST)
X-Received: by 2002:a17:90b:350b:: with SMTP id ls11mr4372787pjb.166.1614171370487;
        Wed, 24 Feb 2021 04:56:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614171370; cv=none;
        d=google.com; s=arc-20160816;
        b=YkmwzymZAUwMwETo30RgOb85SxqOmKs4NLoetHZI33Rxc/K6zKuHc1qkjbZELbl7aF
         hrFLsNilZ3qrkyBqJV/H95Ncq9kRgJReaYRxwN5upDyun16cdOx9lgx6B3qpCPEmbhMc
         ElVYpmfGCi1TJQ7EF1aW2zW5ZGnWj+tlp4joqAMWpUBTpj7H2CpUAQvN7b9NgoA/JwXw
         IjUtlfOQPIfVK8skdOpUVyvsxTiDJtwX3ASqX1gPfoOF8PoVpCUrluLoC76p58ixrUxG
         DSfhIrPun3v2JpqmY7bXOEjK3aAeoeKyUB1AINL3/VM0rubwX1DwQIHNKafnB+WbnteB
         BM+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6iHu64wVUjRrSPZMR/a9bVlYTS1zfG594cR38u2XblA=;
        b=JXjGVW/H/hcpm3xIm8SnO4Q4M6RPjsXiAADbA/6LRcy6GJIj4y9tDzbzQSDkEJIn0j
         hBKzdrAnU1aqZ+8lhRk3fDXbx8HiPBnzoZ+xCKmPeMssxz1V2x5+YjI2/7qfptArh4ee
         HHW7Ku+PVcfw3mzsI9oCPN8KXJAPhPZ2rE6pVK5oqrr3ClAx/wkCHehG1VP9iGQ6lYGs
         tdtonh05lVwpqQ0gU+msnXAVyYSjjmdGt2yOMkwCaNVsDpMoFq55NBP8TJ+JLs71xk1e
         mTEfPQAw1gAOPOBxXu7ZkghhylsGOVscKkNJxsfl+0iPooseNDdoll4IjVEaiqgzkLX9
         vGlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FYWbJhT1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i23si84668pjl.3.2021.02.24.04.56.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 04:56:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C643D64FBC;
	Wed, 24 Feb 2021 12:56:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Fangrui Song <maskray@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@suse.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 07/11] x86/build: Treat R_386_PLT32 relocation as R_386_PC32
Date: Wed, 24 Feb 2021 07:55:55 -0500
Message-Id: <20210224125600.484437-7-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125600.484437-1-sashal@kernel.org>
References: <20210224125600.484437-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FYWbJhT1;       spf=pass
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

From: Fangrui Song <maskray@google.com>

[ Upstream commit bb73d07148c405c293e576b40af37737faf23a6a ]

This is similar to commit

  b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as R_X86_64_PC32")

but for i386. As far as the kernel is concerned, R_386_PLT32 can be
treated the same as R_386_PC32.

R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types which
can only be used by branches. If the referenced symbol is defined
externally, a PLT will be used.

R_386_PC32/R_X86_64_PC32 are PC-relative relocation types which can be
used by address taking operations and branches. If the referenced symbol
is defined externally, a copy relocation/canonical PLT entry will be
created in the executable.

On x86-64, there is no PIC vs non-PIC PLT distinction and an
R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
`call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
This avoids canonical PLT entries (st_shndx=0, st_value!=0).

On i386, there are 2 types of PLTs, PIC and non-PIC. Currently,
the GCC/GNU as convention is to use R_386_PC32 for non-PIC PLT and
R_386_PLT32 for PIC PLT. Copy relocations/canonical PLT entries
are possible ABI issues but GCC/GNU as will likely keep the status
quo because (1) the ABI is legacy (2) the change will drop a GNU
ld diagnostic for non-default visibility ifunc in shared objects.

clang-12 -fno-pic (since [1]) can emit R_386_PLT32 for compiler
generated function declarations, because preventing canonical PLT
entries is weighed over the rare ifunc diagnostic.

Further info for the more interested:

  https://github.com/ClangBuiltLinux/linux/issues/1210
  https://sourceware.org/bugzilla/show_bug.cgi?id=27169
  https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6 [1]

 [ bp: Massage commit message. ]

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Fangrui Song <maskray@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://lkml.kernel.org/r/20210127205600.1227437-1-maskray@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/kernel/module.c |  1 +
 arch/x86/tools/relocs.c  | 12 ++++++++----
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
index 94779f66bf49d..6f0d340594ca2 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -124,6 +124,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
 			*location += sym->st_value;
 			break;
 		case R_386_PC32:
+		case R_386_PLT32:
 			/* Add the value, subtract its position */
 			*location += sym->st_value - (uint32_t)location;
 			break;
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index 5b6c8486a0bec..d1c3f82c78826 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -839,9 +839,11 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
-		 * NONE can be ignored and PC relative relocations don't
-		 * need to be adjusted.
+		 * NONE can be ignored and PC relative relocations don't need
+		 * to be adjusted. Because sym must be defined, R_386_PLT32 can
+		 * be treated the same way as R_386_PC32.
 		 */
 		break;
 
@@ -882,9 +884,11 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
-		 * NONE can be ignored and PC relative relocations don't
-		 * need to be adjusted.
+		 * NONE can be ignored and PC relative relocations don't need
+		 * to be adjusted. Because sym must be defined, R_386_PLT32 can
+		 * be treated the same way as R_386_PC32.
 		 */
 		break;
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224125600.484437-7-sashal%40kernel.org.
