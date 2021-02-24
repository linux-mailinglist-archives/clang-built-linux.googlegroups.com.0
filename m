Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBKEX3GAQMGQEYRUTAMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C4E323C15
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:50:50 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id 19sf1802822pjk.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:50:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614171048; cv=pass;
        d=google.com; s=arc-20160816;
        b=EBoGfreYskk1YBHIHAv+nOIzesrFN1XQ0MzPhZ4cw7cqa5aWKv825eI0rgBS6BEVMA
         z3QHtU1J53G3kigumtjaPcYKXDHqFcoEkPpKTy3accfdJ68PczS6U4WWyHiJDOBhTa5M
         mPAQBR3RKFAlsTR6Y1K8IH3xJj+Fiaz9LEAToGXHRb1ZkfzGBVQmNtxtXPIun7G3Caj4
         Zd5dWma1CycYsKGGjbcaP6Rp/bZa9mJljtEQbfQ4nwmJMuft3OnobGdb1UgSLfiXQb7M
         dlHTstE8NUQQpYirGpPmiKXb1GD/ehi0DbPjU2AczrwnXUn+jT2f2jB96nvr18ItS8LR
         mAZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8A1ykuShXsMIqr01OBmAWBkAnRUO0+9rLMtqiBs753s=;
        b=m3Im1vxo3FIO33ZUvBF5St+VtcP0qqetVH+18W7yvec4PWb0kkXA5kq3pFPTji7X/m
         QWCA4TKBd3Bu2PSU8fvXhufQ9/eBjYqJEzStr0GIFkvikT6N4YQBQmvq8MiKcMRg2Wwe
         AiaO1NhMf57jjr8I4h3SAZNJEX7kg9P6wJzY1jymxIrYgvIy3+u9XtYLrLyNaZORW1CP
         nvfsMK4TKRPwsTUcREm7+2c3WX2UHITmBdwlKXoKt1KkpTi5ftZAmIhPgnp/+zvR+zEu
         WJNfvG8UO5inwl4viDv87Q8IlybeJe4qhT92a57uG9k7OyKX26OzXp5EDEsqpi+vP+f9
         h5tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GzUXNmEN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8A1ykuShXsMIqr01OBmAWBkAnRUO0+9rLMtqiBs753s=;
        b=Q8NbyYSyOA8CjGCcwoBQ+nOOGlXWOb8cYIUiBHySPMUDHlmEoRwgJJl6Uh4juHMYFS
         fM9OEJ7eufgUHrEPQEU7ArUwRYS5/jLK3Qb1kq54zbx7ZieKt8czsABf6ug24gsxApZv
         10IJSb6gxVDVtlWyQvjlLb4cuy+z2TCawdX/z44agFTW6ZqRmy5lFyrM4MQPo86ZVGe7
         Zsdz+fe2qihK9kVDvuUkUiP+N/x81A9FKIV617llc5Bv6UpbXYEGGGXPRj8llSFO4HSK
         6MmEoRtSm+ilsXwRMYzzXMkGBzP277717IpLq2feionn+jkqTcBysAO/BUg10X/3+NLC
         VPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8A1ykuShXsMIqr01OBmAWBkAnRUO0+9rLMtqiBs753s=;
        b=SxgeMH58V4SSd/TRWeYDwgbM5rqU08vtMdUOS/YyIab0ywn0t31ZPAOkjKpib1+gqO
         SZx38UnDnj/uyvQ6Yyj/vSTlc1kRG0zH+9FKiVR8o3UOpUApPW0TTQ+Hi6jW68d2NcKo
         q/V4mtKe9ssaj04qQp1DyeRoui7fNITieVPt0vyYz+UbP3VngB3c7/s4XRezCwCQdVbe
         frMvtsAxzgt9ro4tomsq/c1cQa1HGvgB65NLRU1nv9qDhK58Zn9T6LxrV8nP+sifoZAK
         c/uaG6IQz2+mkRULghZSFTK1jMZ4wdAZAPy0gRMFRfThr7JWejzt3qdfz9lg1SMgDi8r
         oOIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QsNhDmbScdO19JveUUo5BpPtW9XSJRo+A26goQR8enuWQuRan
	QI8EoDLv2Pd1QPsLVrYUdLU=
X-Google-Smtp-Source: ABdhPJzCrtCWqu+aqXPXLQWnLQJOjLLqqwwd88QtfOD0Wu6umXKARnRUjqE8L4cP+y1doq0eCKZwmw==
X-Received: by 2002:a17:902:e5c5:b029:e3:cfac:db3f with SMTP id u5-20020a170902e5c5b02900e3cfacdb3fmr12555029plf.11.1614171048768;
        Wed, 24 Feb 2021 04:50:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1790:: with SMTP id 138ls719490pfx.5.gmail; Wed, 24 Feb
 2021 04:50:48 -0800 (PST)
X-Received: by 2002:aa7:9197:0:b029:1d5:bc1b:ee79 with SMTP id x23-20020aa791970000b02901d5bc1bee79mr32141422pfa.38.1614171048130;
        Wed, 24 Feb 2021 04:50:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614171048; cv=none;
        d=google.com; s=arc-20160816;
        b=WKTBkOAUkI+rvk+laGZ6MX8vxeIH1e5eoPXdi+9wAo1lSpjd4D8st1A51vYMBMuteC
         YFXcjqH9z0VNSFiOd28469mgjWrgLh6daVwBSaXtyLX8JG37vw8z9OMuVCYVLJRxy6AX
         HfZBNf54d1NKQzO9vRExrIfSB0I5KlFq/m3fMcK+oe8oyiR+EcbPFCT7PRzoWEDGacS5
         YcdErbstmUG+sbR5Ga+BwgZY4OWr59erNFQ1fnR01zBPclb7DcPtH5MjgGHOlmyoac1T
         MVNR9EKV3gtd/54e4w4E5WzYmEVA91W8LJrqiSSt3IVDjVvGVPehJ8L3A1alg28E24Kp
         kkJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hOnq/hBjOl9ZvriRI5T7mu+PAcfbCNjh1+W75jMO37A=;
        b=bPh5du9P77kLlwoISMjxfP0HwoS31arc20ZbeIEBlp45FhTSgbEHSvvIasAsZljg9P
         seVfBvgIDKBPmiYgY2dL8T+J/K9tt6/8I4hWyU39xep8R9JKQ0onmozXOVNLnFf51y7k
         T8hmQpHZUpY6axaLUBO0tgDWKZ6z6oCjAaeHz57MPoIFuOQmtSNbMHkg9fmRk9zhXU8s
         s3ogDsc8vu8nQt4vXui6WBpR4eDjANMR03OJaqtoqDnIkNIEHdI1hRuFTsEzbuEPWPEm
         rtyb0CrVkuQExQ39VGLnxXAieqPp1iYIKlcS5FfU9lCpAsdo8RJ7BqfV3WcoePBp1gOm
         s1fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GzUXNmEN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si93266pfr.4.2021.02.24.04.50.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 04:50:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8388F64F07;
	Wed, 24 Feb 2021 12:50:46 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.11 15/67] x86/build: Treat R_386_PLT32 relocation as R_386_PC32
Date: Wed, 24 Feb 2021 07:49:33 -0500
Message-Id: <20210224125026.481804-15-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125026.481804-1-sashal@kernel.org>
References: <20210224125026.481804-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GzUXNmEN;       spf=pass
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
index 34b153cbd4acb..5e9a34b5bd741 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
 			*location += sym->st_value;
 			break;
 		case R_386_PC32:
+		case R_386_PLT32:
 			/* Add the value, subtract its position */
 			*location += sym->st_value - (uint32_t)location;
 			break;
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ce7188cbdae58..1c3a1962cade6 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -867,9 +867,11 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
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
 
@@ -910,9 +912,11 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224125026.481804-15-sashal%40kernel.org.
