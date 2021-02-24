Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBYMY3GAQMGQEGNKX2KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F34D323C4B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:53:54 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id t2sf904926uad.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:53:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614171233; cv=pass;
        d=google.com; s=arc-20160816;
        b=U1KrY0kaF4NRccr8V+7Y1Cu/vUu611EgJXGdEQc0nSQ4JtqxPbu7YzPrZU1k8YpdZK
         wYQdUVjaVpld64HvotX+tznIw0CmM6gatu9XI5hW60li2KbLez0/Q4LDYfZfHLMr9ciI
         ccVqAcP827CPn2AZmdJ2LtQh6X5OTK0o+SK+1iQjgnQQKJfXWNWUInlxjV03hT/XyM9c
         QO/X6VI8HjeD4Gk+MBd/Obmz/Dt2zchEpyyRz/OXOf5/crQEWwebYYp6pkvau7RkxNWP
         X/sYgCltXhcTpkHow5Fo7idVL3CsZcoxb9CMmisxKKzSEEiMtj966gPZ0PIHix2TkZ1x
         mTQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kNp7fRb9AKb6676N1chGrJNS4xsj0OMaD2wsXCeC7zc=;
        b=Xgf3g1PLUTR+UziCQ2P5hFym+pjMOo2KvICAHitYzgwSd3aMjAxkcB4v9zCrs2Xp1W
         iWRzrryFF+OkAhyi1PNxF1dB56zgdM3OaQRaxCWaJ1N80V3zCFT5SoWtfJWeHTrGzXAL
         WdrcN6jbx1m1zyWBEtuKZhST8yKpWbiDYPbV3J+DLL5dJ+SrpSTMCjc9+nqXKwxR08iQ
         f2I9dQu2fMUZSme4JVuD1tM2WFZ+liLGD+Uar8SY7WJ5+f51pb1V1DcfpWMDDqo48VBB
         yzVLbI28CcvkrfE6LBL1tji+QdYcYNnIH6zzJ2DdPubvxlpfDGV773dH1dOYcJ022pV7
         kMqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fdGV+4yI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kNp7fRb9AKb6676N1chGrJNS4xsj0OMaD2wsXCeC7zc=;
        b=L4lPoRdeu46OHUh34kv1H6IRQSU2cb+HDYDykgrDpt5RHTwvmAw0Bbp3+0xWC6ulT/
         vma/B2dOF6KIoTUCtCb3eBHXeiJUcWoazJ7IVc8B5pQPBo0H2ih/pjgXgDhThHKVrWUk
         eSMwtNZIvdITUGCyWfGYBt+QSZGeoDcUEP+U03d8bVlz7lMqa0W4UVPU14+LYh7mNLae
         zNiCE8KHIfPPxrd88cWpXQ1ge9ndQA/KU3U0jr1a/Hxc5TVoZkzClZGckyXDSdGTLq3d
         jSvSF/YOhgO1ZvY+LS8SI/l6/AKsNYnGcF/MjQF9FuF5Riac85Hu7Zg/RxlD5pE4lgwg
         u/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kNp7fRb9AKb6676N1chGrJNS4xsj0OMaD2wsXCeC7zc=;
        b=MIIyidgE8v1baV7pmaT5QOZl7uR40DAyWxNvbNHLznnvsv6GRr6KyiG8qo+Ydn3ve/
         uFUygHCviPCLjw/4CGiyXbeRb+MWazacTEyd7zZ5Hyy1qJcQ5SnsY8WxernT5AJ4W5JF
         cu9H/8GOV0jNpALaMCrqKUEkXh8gOdveBkf6yEhALDydZUHtNF+39rQZiwdW0JtAJ8VR
         KxdUIsay+xq9/7eXRWeivXMrgMHiES7U5Fii5cSZPJsFChFE88RdUYO6gfZJxrX+3+XO
         po5EpTpZSdEaKoBsYBRXzGJM+2emtTklb3dyxC7GKb107GLBGvFBcjB+xOC2zlCOgAgF
         xkuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u/RuA76aEI/OKWmvnT2mc8gimvKfrBojx2jx3LMuSvH8xWYVl
	j2OuVA2CYJ0FH4jcDsG+YtA=
X-Google-Smtp-Source: ABdhPJym2a0+8nDIYAyvBSifvb+Z+viC8ZUnb0GSGZbCM4CWga645llnyyB5i8Qh97Vl4KBFH41iZg==
X-Received: by 2002:a9f:2b4c:: with SMTP id q12mr10641578uaj.132.1614171233279;
        Wed, 24 Feb 2021 04:53:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ebd2:: with SMTP id y18ls214358vso.11.gmail; Wed, 24 Feb
 2021 04:53:52 -0800 (PST)
X-Received: by 2002:a67:ec0a:: with SMTP id d10mr4061647vso.38.1614171232676;
        Wed, 24 Feb 2021 04:53:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614171232; cv=none;
        d=google.com; s=arc-20160816;
        b=JqgchqvS0CjmkELBA2T7oARslyYNiWp3SEiOqwMovjwmtEX+ajibeuDG8scstySgAk
         7iv/JPcdZ6+tt1fJ98wZFjETcfk+CXyqlBQtYJR3zJvfgs4YngZWAnGfjJDVNwzJZhuA
         6UWoNXmvR1dkAm2YCkOtADb/CwoBLa4P30Oi2d1t/am13XzFYD0vEmeiF1s4Pm/S/EPK
         wExwpXNK5LVqnTa4Criz3oYRBG+uN3srLgem9QRA1w+cDknWCzAkvOtxGqUzyl3aOEjY
         4rfsX/MYgs8//yPJ+nGLLRG/hzx08GHy2uxzm/l6fXfiEPTWOJbfruMYwLDvPoyqppyR
         JCYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P/PX8bouR66CMPA8MZwYQpwuPquf2LB9Cf7S5VAi50k=;
        b=vjCEkElZYnZYS6Acrppop0YeeqCMSrkihEEY65DKzE5dSyvE2ptqpCiD2iuHGkw+GR
         0dOQt/C5Lj2BOj9ua8rbkWkGLd3v4NtutEQWaCS2wv0ZMRG3Zo3yMjx0OpO7dYYq6xwD
         gdCDVGZtPv95GgrCZxo0o+ogfQAxuL8Hdd7Ms57TP/JMGgIvefEQO+XC3ISpeuD4+/Bh
         RYNkBVD1Mr7vl4blfYkh7PfSwUVeA/uNSP8irO7yuyh3fGkJqoB7OS2lXETvRnxJeWpT
         wEqy9nig7V+N4F+bwbUcRI7HLaZM3naUGuOJ6rHkDX5xM8+K0Yeze7F7XCPsQpaFfopz
         +zpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fdGV+4yI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a24si19042vsh.2.2021.02.24.04.53.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 04:53:52 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 52EC964F71;
	Wed, 24 Feb 2021 12:53:50 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 08/40] x86/build: Treat R_386_PLT32 relocation as R_386_PC32
Date: Wed, 24 Feb 2021 07:53:08 -0500
Message-Id: <20210224125340.483162-8-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125340.483162-1-sashal@kernel.org>
References: <20210224125340.483162-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fdGV+4yI;       spf=pass
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
index d5c72cb877b31..77dabedaa9d12 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224125340.483162-8-sashal%40kernel.org.
