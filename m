Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBDEY3GAQMGQEDIWW5II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F06323C30
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 13:52:29 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id d11sf1475197plh.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 04:52:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614171148; cv=pass;
        d=google.com; s=arc-20160816;
        b=PItup/tuqbfFIq6wOLDwUE/7+yRN4kbdR4cGho9/8Ffs4de1xf6iue4QgmBliHmQyp
         l5/fam01NqC6V2RB3FDmqdICtf7+XIPfc9XEJoSqUgKNSrPgPlZ6TI9dB+hZHv96+etT
         8jFlvIJlpuaht9loCl1tdl4SNnDbZs4JE/3E/Y2su1FpYTAqrwy2E2xTM0UV5q1NmwIM
         DcN3EyHywsqRu36BZJPQMQTudPMyekUkm6V5LYjgayELKiFlkNqHNTnm/UM1gPXh3dUs
         XnlUDXN3j1pojF41qrkqOOMNhVTlMsdDurOAs+6DqjzySufaa8VkFeaAdsIG71RgVEy6
         xgHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FUEB76moE1PqexeDSt7l3D/C3u+S17gVH3Ug0KfQEHY=;
        b=PQbvomqyBBvHCMho+6t/PYcFPQv7hGrs8Kn3a6dIx2qAVJhZS7QZ/+63d7rZGQVVAY
         Tmz8RobKWA+FGGFx5cs8c496DLtkz+uVv5LGlGu8aYChJuTnXO02m3D7gRFBw1UrSMtH
         SoBfyYBkc+ovCboR8q5wvhuyDML1aS76nRJR+LHCzLUoD9yXSo+dVHG+olbKQN/BT1BQ
         0578lHoy0MHXXUzE8BtY+uuxw33g1RVyrgb4It63F1r5nSyqbrfnsqBPfrXYztx2kQAb
         akXmBtD0cIjsjRcL73VXBFaZD7vt43lY9e6qRWqcFDUUxXw/qnQWogg639JKw5WioIca
         cPjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P8HT+6Xq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FUEB76moE1PqexeDSt7l3D/C3u+S17gVH3Ug0KfQEHY=;
        b=JQTWzTwWr1MjJK3XUXueSJNziHsFTzwLLLe8PLyj8OH7mRWv/8Vac+om09c6a4DJVh
         PycKE8zhyG4xWU499L4593fZ4PSyBEGXjsX1gYaudkqs3zetxXV2E+5kwstEnqZemIh5
         rPfGlMt5mKPwg9Z10zmjb9Jvtjhktgpi7P4nQepIq/ufuH46mdKqQBcA9gq4WMhhc3GH
         jzXGR39orBJi4jO6BByWVYwebc5zJclPFIh/pQcxXdWDOzr9smJw75Lbg41dUh2T4DEh
         T/rgO7sFN2nLz7VqRBSgIemsny+0fbElB1ojp3Anw6xSEdqcdXjy71UTPdffux3Lggk/
         miVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FUEB76moE1PqexeDSt7l3D/C3u+S17gVH3Ug0KfQEHY=;
        b=NrKiOtV4ZkCGwr4t2BqqhI/dGKZRGLb0kIeJJt82iy9Ykzco2NdG4k010k8wLMvBnO
         1git2In1N8O6rL0qhXA5XBZ3cibIi7BkjptLfF9BVrFEDCF85ePNQGiAegh55+OH98Xr
         3bFnW0Id3wbSpli2kAcM59uAhM0RvXnPL8ZE0mswzOrCCMwFqU9B4XU6oySPWhJX8f3V
         QXTiikq2wpdamsfCudsIYkHbCIFRJ7NOeMF5F2syIBd2rr2SJ4s0rwQ4TUxc2ZtMpXAR
         A1wDQ9C4eHwPkfXieO4Sfjn3g0rcxEsUmX+BAptOPohKNjkddeTUv/chaamvQdywRV0f
         g/CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334NN1oVSkaajE/3hhXm92SHph5g4jzmUBV3VIkb5hnlq0wYAPq
	KgEGNt00b/loLEw1pKsMmQI=
X-Google-Smtp-Source: ABdhPJzT3CJJ17q8TeVpP0NcbCd7/0p3CHHTzxDGEkjwbpy6uY+yjlNNchPazM21Ot/9sU3q3La2GQ==
X-Received: by 2002:a62:7c15:0:b029:1ed:9e29:5998 with SMTP id x21-20020a627c150000b02901ed9e295998mr15102662pfc.22.1614171148656;
        Wed, 24 Feb 2021 04:52:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:300f:: with SMTP id hg15ls1367465pjb.2.gmail; Wed,
 24 Feb 2021 04:52:28 -0800 (PST)
X-Received: by 2002:a17:902:8687:b029:e1:601e:bd29 with SMTP id g7-20020a1709028687b02900e1601ebd29mr32369150plo.47.1614171148103;
        Wed, 24 Feb 2021 04:52:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614171148; cv=none;
        d=google.com; s=arc-20160816;
        b=xdmKMkBplTPTDHTfWXfZqRGPyAnWLS548JBTzmPjEGvjtRl9j//co2MJwHxP6zO/hu
         SirnjJiEjPV5h6NwMO6tEfMLlLgypa8683nDxGcuTdwMIhS0NuLUxKFKmPMJAVg5FV/i
         Cxf4fnhENdAcGKuQAcy5WhMPUhEzTLH7dsauMX/ag7ohtwudKTM8Owm+dj28P//icFz7
         k+Q0hlnOJKbvPO5QSobXBW4wK4Mt29Nc1Ul4aMwrXF2St5kecr/nuMvZ2mbE6Hl8hsbs
         W4CGcL+eHxXHGtbxSRmjvMdnK5RvC1c+MCsqK9bXE+umQaKVHkYwJ15NM0pOhRMzkodB
         P97A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hOnq/hBjOl9ZvriRI5T7mu+PAcfbCNjh1+W75jMO37A=;
        b=o5pgK0w0wpCCZT5iSIlQhrp/l5eyr8JGdsHZWeRKoM+Nsa8lLHw5zxl+SLuat1ajRy
         nkwJAUJEGlyzQZmZtAgK4LgxmcXH2ARZfauhpSJNw+05EngSJZGE2+1dQpbE7LyYKnan
         mmsDXcLCzmumTpGBs+YocbOHVHv5e77MN1uG+ZLuBdQqt5I3Y9NLGZoWkn2fKFKeJrna
         bgj8VEOeHAyBSNd26K+f2SFNOTlZ93NByb5i0BbjyFL3BtCCjX4W43RXljhFLNK7D6p7
         u6RuonGkO2F+e23dvLDapliTNZNMJOj0vqSiGmbiNFAmQvTxtZ6/ap+7p3/IDSy6F6o/
         bTlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P8HT+6Xq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r23si59160pfr.6.2021.02.24.04.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 04:52:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 647B364F03;
	Wed, 24 Feb 2021 12:52:26 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 11/56] x86/build: Treat R_386_PLT32 relocation as R_386_PC32
Date: Wed, 24 Feb 2021 07:51:27 -0500
Message-Id: <20210224125212.482485-11-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125212.482485-1-sashal@kernel.org>
References: <20210224125212.482485-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=P8HT+6Xq;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224125212.482485-11-sashal%40kernel.org.
