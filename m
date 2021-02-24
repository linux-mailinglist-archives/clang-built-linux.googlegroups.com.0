Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBV4Z3GAQMGQEY6BFGHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 90645323C6C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:55:52 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id q3sf1420538ilv.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:55:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614171351; cv=pass;
        d=google.com; s=arc-20160816;
        b=jwdfwilAhaXJUy8m1JGmAOI99gWf9+SOi4E5sXLvPIViDgzM7yQbfKW39l5IHaPlZR
         QB99Yc/OLv9mpWflBqXJhRTZzzQ/O2cxJpnL4skfdR7YASy1aebjZNnWPn5w7350aBWa
         D8IzsQ1qDoP6IERQRDTrmidaRLMizj7MO51RUZRvg9PEZX4shZkyR2c5VauehJFN9HK7
         jKdpMsiftv3+eXOdBr6jN3Zpsn4ZBF+l09HbMB+CeCW0+1xjpdeubMvJxHiJxVkRF5Lt
         wj2VyBXAY5tBm0S3d8qTdN+4vsgJT5w2PoezcixG1dMJ0KecjvXImj7zuZRtO3PX0eKZ
         k7cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FSjy+XNkR30wxev4dRNvC/hIAIaKwlBVNyNf0/kX51U=;
        b=Lir8RpMTK8e+OYP8bnQ47houPzVawQjqqvczCqRkANMusJMEY0t34JBVeiHN9SQlRu
         f0oogUkP6Pm0x91MUtl549NhOIgaKYpMtvlgh9e83x+VelNimTXUCQu34mfygcGqfjeU
         HumsVdBp7DlsNlc22MCmnAQf1QG850TL5AjhcgqLVdYguEEXVABLVfwm6AaszcYwCxVj
         8WofsHpbT/IWBQ859KgcTUWpXbY8//nBVi/CA8FmtN21qDifPQ6B19mWVZWc/IT9uQAG
         5q+3YYZeTmThIdk1mHoS98t+3FecNFrlRrpgLT+p053IjPIoqsMo9VJlv2qmjTkZ2pSn
         GPhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VEBS2anx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FSjy+XNkR30wxev4dRNvC/hIAIaKwlBVNyNf0/kX51U=;
        b=L8Q6McdNxbGzq0t5nR9GUbCLXMa1gJAFceSnKq4PBPdOAc8xnvOgBucreL726jPQc6
         h7DpNf4DKw2jlC4ac3YlkUuQeud+LC2qrMJBu6Ot7u28Y0SAhU5BKL3CkzA1Yz8itrqt
         CUF0hRw4BFR5FfDXqVXhsesoG3AdoCAoiPl0NOCQMW/h62jbb+y2mfBLwHRSkJ4l/N+L
         AAmffBRnkssOmTITKOF95au1yUS8wR9MdjFHeOKRTmlk322W8TTtEqskaxL6UX7PP8x+
         k6YwjNO6NwItkBTzOGxgDwHi6TZv4zIAjlVea/XDoeBPyTWh/PguuKBVTJjGNsgLZ62Z
         J33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FSjy+XNkR30wxev4dRNvC/hIAIaKwlBVNyNf0/kX51U=;
        b=WI+JaUGVvsWumQIbFmrJb58yVjXoAbcOo+FcPbZ9ykN3fWcVoV1xVAPuMX4OdZsB0v
         I4HkXWY7SQlQY+eJhjKFvRLuTutzcUAaPem0mKRfja9lqvsbn3MZHqziuT1o2n2cuoF+
         422e/0IyMzlb+nvqsl7wdmnLGLDoHRDasEtn9qWxZ3wcBgJIVtRJxNAKZfniM0ZhBsjM
         cKdtVY45obzviKya69QGk19ZEjTWl0yAAZ0w7fpZwrhChroYVrqhFdCMb/KmV8DQtm/g
         vbgHI102xjfwVk0RCqaIpyFpehVTS0jlo73eurxwjgWYeoIwqfCHmxlP9CCfJnYBx+0I
         RMVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uDz33zihz/1VIqoKOlDaUpOcZu9vAapgWjyt+99d8dw6vCezC
	n9kW8Wi8rgWtV/SpHr9qIns=
X-Google-Smtp-Source: ABdhPJxoNCwETT2zEmYjWKe7Da581CL20NPcG+filzLA7dNLAFzCqalteJrHZUyMNIu1OQ23VUDWwA==
X-Received: by 2002:a05:6e02:1c2c:: with SMTP id m12mr24883682ilh.173.1614171351624;
        Wed, 24 Feb 2021 04:55:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6d04:: with SMTP id m4ls282507jac.9.gmail; Wed, 24 Feb
 2021 04:55:51 -0800 (PST)
X-Received: by 2002:a02:6f47:: with SMTP id b7mr31984060jae.64.1614171351282;
        Wed, 24 Feb 2021 04:55:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614171351; cv=none;
        d=google.com; s=arc-20160816;
        b=pGL1qtl7FnKGuteVtr/itErhc+wdX3DO0dQ1hoyYwsBxCruYFX6Jp42vdS1MDyuj9S
         iWM5E4Hdj3cKFyBdKIjrnoZREdPI23kZPtgnGDtadiwO+84Jk9CzGE/xzz1nsypywuhX
         jwdzKRWokmM2mHrzQuxngTQ2iCCEtv91HRga5N5Suc7AJVQwnt/B2lvWj7Eu2rTjKKSP
         IsEH3DvWDNhrL3momWSTG2FjhhUc7HabTu+VkHJBuoM3/WvK4IUhifXiINd1DvsQpeCV
         wN5v95HPexV5AdRTC18uIexx/cc0i0jVpezXZJXnLCRd8Pr20obXABxzCyMp3ET5gy6Z
         4kKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SGD9j6gUpINX4lZZcRcbNaZi66FJJd81feGgHQ3ZOSk=;
        b=gIOmB6EGbg23wcRlgfKFnLdTOXmiOKYgq3sJ6zDeVxtsWIH9eMNzkL47httEql+vd9
         IWBUH8kjt/xB+dmbgFC4W/yo6z/XTYIP2JaFlRr1GZuszPTeOwy0QjasALJFMsX7lsCK
         DWCfkNs5v1I0BCeoMYfIVIctLTQ19nmc9KuCD6aYe9hT+BNvi+GzrET75TlCa2g10Zpw
         aEivKEKdBShFFWqQkT6RJXty5F/1Vzg5JCwexzwK46S27Eb3QkRPXusSDK3PnEdC8zKW
         6PYdYaMSDtchOGNBKFEwURkSR06RKLNi8FwHhRHkDNqeCDFayYmUFn3Ka2RNsqhKbhxN
         3Rdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VEBS2anx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si111824ill.1.2021.02.24.04.55.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 04:55:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 30BFB64FAD;
	Wed, 24 Feb 2021 12:55:49 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 07/12] x86/build: Treat R_386_PLT32 relocation as R_386_PC32
Date: Wed, 24 Feb 2021 07:55:35 -0500
Message-Id: <20210224125540.484221-7-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125540.484221-1-sashal@kernel.org>
References: <20210224125540.484221-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VEBS2anx;       spf=pass
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
index 19977d2f97fb7..3c09ca384199d 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -125,6 +125,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224125540.484221-7-sashal%40kernel.org.
