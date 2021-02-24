Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBPMZ3GAQMGQETUIX3JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 736EE323C67
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:55:26 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id h17sf1429269ila.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:55:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614171325; cv=pass;
        d=google.com; s=arc-20160816;
        b=vRgyRFOdKtP+i7LhV0j9gI+3IAcARprIDsl+cVrhlrTbQaDRyuw8PTuxd8tPbzc54A
         fiDfx0bCzSNKGvoIP0/Y7CClXyycg3kFzWHxeGhNzFkX+kAKNzNWwYjCzArnGlyM46FJ
         xYhbZswBqy4AhcLZdZxBm52sJH9OnkhkIy0oT7ES0U+fdiQ51oyM22GSdP+qLD6vDUMF
         Orif+Lx6oM4xWMdyGPSR/cAMfTmErUtOGTWz2joV3fWpKfVDXN6eG5yH/Hz2scJgeZ4S
         15Lp2utLQSG2d8yL5v3w3i9GvV1m6kjd80KW8VQUyXjV0FdgUwAwx4lfVl6R/xQZkO/t
         drhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1BkU+8SCPxnCINNBd58WtVcu9N/B5WwKIl5JVfDrgmE=;
        b=n3rsw8uGJXy0J5+rhjP9oivh/knY0xUTVqofnguqt4OWSb3xZOSiCqpdEBdzkkWu0e
         6sbNpuTotFFwZGGmcfd2tGIPRNLdx53ALoLVrsJAKfJHcPED8Aihrq6lXxCToWq2TQCk
         J9zWiBe7bOQzdY7tehF9YlKcVOJWAeB9VPLLpW63KEKXlLoDvCmynIAKkLuRNna3XRw7
         jglYY072Uppxqx1VVqukCJ7qD2tvecgW2Q2GYTfiP77vuFcrvLk5jfFWexjbIjNCtXcd
         IYG/OjujQcaNznGmde46rYy5nOIvqCUXXK1FepbsUXfWDcuZGyV6avYnZb4+7aND/sUl
         qzyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LIQKFlpo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1BkU+8SCPxnCINNBd58WtVcu9N/B5WwKIl5JVfDrgmE=;
        b=lwmYvN2kAKoGnQ9L+Yi/+Er4GxzuRz0QSNpeV7ka60SIa+d4TbIB0WsM5287sFRNGV
         tX/Fuhycoh1JwG+G96I2bxhAjcR39t13TaQhmfrlYjWz1x1hJD5xV1v9t2H6LaNB99Ih
         w4emHzIiOaTxtKrhJihzLC+OBbOR1yEw+mVU/I7MN0OX0F0mr7q1ePsI5HG1fOTLMlTU
         PYXXHQEqNRawOCBeF4QW28ePbjOwJvHcdAeZos6l9SLQOmjs+X6RRfQukmHbamYfKTxC
         6rvahf6BdXlhzZGTKHrSQo6BDXZf0NgTNcoakW7ZvCQLyHua9aek77JrGxeuNqL9x9UX
         c9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1BkU+8SCPxnCINNBd58WtVcu9N/B5WwKIl5JVfDrgmE=;
        b=sx0+DzoMGcJAft29h8U5JGwwWXQnF0BPO1i4Mz4/pYMyqjjlKUoL3kZbvyEPyMv2LD
         lEkX28BETlr27bPW+n040dwU4bzOOuwq+QVR5L6qagJnaBIfTxc4TfS6/szzOa3uFMPE
         jSj/TqSv9SxqQAso2fMp/wWg2nVkfJArIBl626hUqez6Nt/wCy7sc5YJL1Qc5gGkUNeU
         8Vjnvl7klrqkqn+LgzSMatvOXvaNEz6bQ1c+gO/jhNJ63mreQGL3Ye5I76JV260/zrf+
         Of9owHl070gAe3q6D1v+PE1PFir5P3V16MaMdi6IU5VcTuMvO91F3igrYDtxzQTZZ6es
         /P4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334WTHl6AIMWROWQW7VV6bDBYs7bvBDS+b6p6wJwcUXK2Z0/BMD
	/ZXFczf2x5DqihpXWfFA9Fk=
X-Google-Smtp-Source: ABdhPJy2z1z3wHu2zyOc9B0BFGZNU6JPV4p9FqIfth/5kLa0xg6ulC8LLIBOK7fh7h4k3mF51GivDw==
X-Received: by 2002:a5e:870d:: with SMTP id y13mr23776398ioj.60.1614171325427;
        Wed, 24 Feb 2021 04:55:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9691:: with SMTP id m17ls390220ion.2.gmail; Wed, 24 Feb
 2021 04:55:25 -0800 (PST)
X-Received: by 2002:a5d:9501:: with SMTP id d1mr23202601iom.159.1614171325062;
        Wed, 24 Feb 2021 04:55:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614171325; cv=none;
        d=google.com; s=arc-20160816;
        b=LJfVJpeii2vCBkcFN5uy82uLrjPvL7uOst5+mDvQYqyvn+ziMLAsV2uhdw9HLHDNXE
         p0PixLMl+4l/CFIT1HOT4T1KKMNNo/LyuSpOaGnvy8SW4iiewkRphMe92JIY7r8T+URg
         /EkcyFknp0SXF3DQER6+JexWE8zSKPAOkgxR41pqQAiRNxjovsUJqLp6ihILe3MvQls6
         My+lYPqOaR9erptKA/Mw+9YIamH8S0SfjcRRM3MRDxFiQCVtOOmP5BmIs6KRVbb3JLPZ
         OoLCGbfNYpPFekpOo+fhB1myYEfTbSRDrbI1pobToqD7wNEDKK+x1hMknk+wRWK4uW1G
         NBMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dEX47vrmgDyQK4WepJuu0oThhavHIwITtakqYiF+y14=;
        b=eSAG0IZWXBX5T24GffNnVeDDGkSFYGE70GPNIIrXpkU8tVGz9wu1qF+S/bwSuq08Yv
         ZFxdPqICZXudEVVmVhTqI6MMLAavXw5EHMZ87PB4vrnwof1AIXWRfs8+mHjaD6Svv6fT
         6XK70SfwAq+D+YynSMgO5ZXtBCSlfARJoQdkPKR6NfkdxqhG7WalLGG5y+qOqUwGSQ/S
         masuJZQvFUt6rKMdae9OcxzUy/G+vZOC3YxjzV9AXZgTyypIPuJ+HM3IOeSkiycfNlsW
         YubUwsY96EUawrRSyGwARFzSjNs7e8pxED9/ZLC04LP8RTo2Oe45rwfVHXNjZ1BeS3d0
         Ijjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LIQKFlpo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g4si155890iow.1.2021.02.24.04.55.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 04:55:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E30F64ED4;
	Wed, 24 Feb 2021 12:55:22 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 07/16] x86/build: Treat R_386_PLT32 relocation as R_386_PC32
Date: Wed, 24 Feb 2021 07:55:04 -0500
Message-Id: <20210224125514.483935-7-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125514.483935-1-sashal@kernel.org>
References: <20210224125514.483935-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LIQKFlpo;       spf=pass
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
index f58336af095c9..1ccfe6bb9122e 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -126,6 +126,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
 			*location += sym->st_value;
 			break;
 		case R_386_PC32:
+		case R_386_PLT32:
 			/* Add the value, subtract its position */
 			*location += sym->st_value - (uint32_t)location;
 			break;
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index 220e97841e494..c58b631781233 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -840,9 +840,11 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
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
 
@@ -883,9 +885,11 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224125514.483935-7-sashal%40kernel.org.
