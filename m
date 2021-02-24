Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBF4Z3GAQMGQEKVOSPVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D655323C5C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:54:48 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id l2sf1553115pgi.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:54:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614171287; cv=pass;
        d=google.com; s=arc-20160816;
        b=lAWMh3grVWLPgYsnl0pIoJg5oph8rvjPmGUoCcuz6HFySvc96vgrJAD7t2M33hgRUF
         I3F+/87Rne2EicBYtvJzObLaMOcJDCoZaXkBrMMl5oP7GsomZID+s6N1l02f8bQhIHoD
         sUurwYXaOxZckZ2qGv7wawk79K3/kR4gFuHragxN03dCywG1xpgz3aPluT1aM0+n5F3N
         xODae3Ba8ue7Uc917vQXQa5udx37/gnkhMuNf5jzIdmlAOJiW2yRMt9fQPAHAKqhAmfF
         jZhK5HK7bNO5CJSqO5xaiTxopApxkKOUZzSY6vmm68mDZbU/vTmL3eGyO0cyWuhnezGC
         Mr8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IoQwEBtT4iBAQ05j8vLE2bkGLw65f7E3VAN5zJitWZ8=;
        b=Kq4hhsgSjW5DvXBiv1PV/5lPSaYoWLoUmpBfiDzDTqSLqbQhE4FhJL9d9aUJLP62TX
         gjQ+Kkv90UIzo6ZW6tKdsdK6ZSXVufdWBg809hDdmuXuB3Y0nURSRWDEbm3FvSifsk8Z
         RNTZD21RCzgW8fmxyEWtKvoCEGeGELW7yAxN3yMShtoK+kmdbp1x/L6M/EhLnSjF84Qi
         Ym+L2CZNhKI+QsnSmv/lYbxFsZCp6sW4yevYEOhyf8Xh/WpJkKzQx6gpxykVGSPei6iD
         99z2EBWZogeabwI18prsSfa8Lh2DGswI7TbedrYuZQuWa6gfeaM9wkV1t6n/Dp4qj8F0
         8+pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PyW0NtVr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IoQwEBtT4iBAQ05j8vLE2bkGLw65f7E3VAN5zJitWZ8=;
        b=sDrkxD4QL6QFrbhItk+718tbmuu8rT3ZnyNc9Otk8iUV4ze+7cqcUN4mWouY6qgS5l
         m73qkhg0+AgPj/rSed7V4OvoiAkKCP355694OVDyCzQjXUwXUf0xLv4kSIPP95NLqUKo
         3vpMyRRTUq3i1jk9lyWZVt2DtG42TWUNHYJq6wfPqwRcePj3rXSUSdWmbGK7HkrvJi1b
         RyyQV1wFcljggomyKUhCDPXg12lCLIfZYz1KQEse0zUs1BkdeemSGASamNWEm+8BZngP
         2tfDVaM3U0VcDP+wTCyBBlZItam+c/KTUlST7kSRgfM6dqs4v+oYfpvVrjFYeIwtjKLb
         /oOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IoQwEBtT4iBAQ05j8vLE2bkGLw65f7E3VAN5zJitWZ8=;
        b=aSZAVUDBud3UEp9fp5gVIfm5ggW97euLeBdHOdVWuVE5GA15aJyg/y8v9Qd/6e66Lq
         4JMpokqDdWPnOJL0mpgtXoc/j4lGcKT+PqFaqFeIYAM+yCTP6TBLBViJ3dxOtIgBt6wi
         wVvG/tetRoJViNk4xYuhFEf8p4j2E6aghVoXaoM4TeA6zd+lecQuGPbB5FQzl+K56I3n
         JCJgrJR33vxXml9C83azcrlzi/aFQ5KWbH5pRXKkwtD8peOCsRSGNdOGLujS2cwCH93b
         d11GsNyXoyO9CumZCG75Z2RMqjxBAwJoh6UJvsF+QNAjsSd42R/C/8SrcHnGdZMvyICi
         5S8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324aryb1wUamOHx9A04DlZ01bRnr7kXv4x3MgjpRnTsi8ajjBxN
	QYgB1Oluzld6pYVw1PYmdSc=
X-Google-Smtp-Source: ABdhPJxnzZx4MIO+bGNEQgS4uA03SJXPsalpDEU4aRBFO2GV1mkXJC46gYUsc2CIOTyiuEP2u+n+HQ==
X-Received: by 2002:a17:902:eccb:b029:e3:b2e3:a226 with SMTP id a11-20020a170902eccbb02900e3b2e3a226mr28930768plh.66.1614171287164;
        Wed, 24 Feb 2021 04:54:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1490:: with SMTP id 138ls953581pfu.7.gmail; Wed, 24 Feb
 2021 04:54:46 -0800 (PST)
X-Received: by 2002:a63:dc12:: with SMTP id s18mr18133280pgg.441.1614171286568;
        Wed, 24 Feb 2021 04:54:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614171286; cv=none;
        d=google.com; s=arc-20160816;
        b=G+YoWKK8u7ZDOBK4B2JaI80A72Q4Xv6KYJplXKCzxfHwUuOlX1md6HLyYubJROk8Q0
         yfdmD/5tHmiwphb3ufm1hppfgOaoc6QLpLoMyDOyDcGDJiu1CV5IecoGAo4QYtXHXB15
         TaeBDVriEXidieKnESDY2I5mZQ7L3AreSn+SxdGJDsyPBLOjbxT09hrYh8e+vRwc6p6H
         nCQsAuDl8jC+2/wo9sNFrSmDyC5PFw1O++LZZZ+W/QNrTAS4yibDuLAVPKqAK1ji7lxA
         xeF+lRE1Uj11zOgyiFUv0VzfM09qSZ8zWSFgfA98gy6YHAfjA+YTZwdHgqzYQKaJu1Vs
         ZWbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=//sOg7QysEIOgVkVD/TTaVysLj2d4J7wt3H50U7aMMU=;
        b=jenAf5o1SeY4meBF/msWAaVJ/C2rtWoWPh0/T7UI1IfeulBaysD0Kk6anXXuo3C5tZ
         1+dw3auD52pxhDWj5fLb0GLgL68Q2RP808BLrDTuWaTKp15snOxe68+6/aCzBg9EDKoT
         XXKOOrtATIe4s3DXmM0Y8UHEGKQ/M1aoESF7whLEU6QnHawW0gHQKTQLbghFtWqEcRbo
         6qROn+VIx5nFE5HQa+7kyap3T6OZpBpkgASy1Ww4FEnQk05QaAjtuwOJGs/ukJgKRrFw
         JtLbNrNVtTlYzruCRvme20XdPwRI6GqXX+gnBI/aWOYhNlvBeXEFr3JI5E7FdQVGPrF7
         VvkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PyW0NtVr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cm11si253301pjb.0.2021.02.24.04.54.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 04:54:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D545364F8E;
	Wed, 24 Feb 2021 12:54:44 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 08/26] x86/build: Treat R_386_PLT32 relocation as R_386_PC32
Date: Wed, 24 Feb 2021 07:54:16 -0500
Message-Id: <20210224125435.483539-8-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125435.483539-1-sashal@kernel.org>
References: <20210224125435.483539-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PyW0NtVr;       spf=pass
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
index 6645f123419c6..9f0be2c7e3466 100644
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
index 3a6c8ebc8032e..aa046d46ff8ff 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -841,9 +841,11 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
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
 
@@ -884,9 +886,11 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224125435.483539-8-sashal%40kernel.org.
