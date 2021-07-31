Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX7MSKEAMGQEZWH3GNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 0229E3DC2BF
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 04:33:04 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id n4-20020a17090ac684b0290177656cfbc7sf7044981pjt.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 19:33:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627698783; cv=pass;
        d=google.com; s=arc-20160816;
        b=yIRpdUTKQVC/TNY+rM1OOeYFs1+rhZmCXNs/Yuy+wHYLF5erOmzTftzbZ6MNTMxCNb
         qA0LNVISQgphnpcb7e/vgGUYRhwfRNeSrPpiQhUcfzBBvQ3+imYEdRi3MvAa/wG/2HWP
         ihYIjXHbDnJP+CqBGNqDxRwxFO5+tvBj9W5ee9i+TdsUBBBAXDNiKszwtP5P2Gb/ZxYa
         EiwtOYjdkKNRNoP+stx5giNofX0nmSetbBs2izzxuo1BiJTQFGPTXFq0fOGL2jfRgCLb
         jZyg0PxWvyqodDBFKexiuNQixhFxb1M4GqGnFM1rwPFqVH51g2TF6dZlNVn0b29bqS6x
         gAzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eAZsdLyTKYL/yvaLhcaSwJhrKJdz/YFU+ebiSTkjfQk=;
        b=cLM0A5YUz2sulJeQqUn1GUTbY8RzF3kPrf3hR+L4SWhMnn2JxYd0Rog0x7uKqQKSs3
         /dKOGAccZuMy3NGtXq2sORuHMfh/H659bBGqH7KOdExzHwdbQMCNDu+LCVuEQ3h1FZav
         LBwAMRb6voqqKXTLbus0/Or3wBiXpca0GnOHiTt+Zuw3Zf1USkFnMLpv/gmXwPnrruWJ
         c+NOmTVahtsNTRyDsgIrgCLq38YmSjDkB/s0dXmtR1NZp3Lxs5miKhFsrzYeWv7tGsaW
         DEOREjxpil22/J6dI4nCblkutKXC86lgIHiCn0QVYrygSu+ORGE2pxC6iXa71sKWktZy
         xuUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GcAdi55t;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eAZsdLyTKYL/yvaLhcaSwJhrKJdz/YFU+ebiSTkjfQk=;
        b=J7Gi8OfXhuK11xr2l/ycYlLTLbnHYbWHpTCbtUfPgmQqdwB+n7webKDkmRHwa3yI8T
         1g8Ih+ZjMmpgN7in3P0c3P44j9wefrF5+fcPqfSZO7pmxvutLSU7UiWB/cvxoMoA6IA8
         msVlw0+QI4GgSQJ4Kme6ltqRAO+qW4hwmc5wWtL7ptctIeLmszsQg3TUbbsyGjpzEkNN
         NQ9fD2kLOE3VcUwM9Cm5nxrMyDIAJW21ydCbg4gtuNEPEs7j5DHHFPZVpUEiTuJ+RjQr
         zUz5+KguvQdfrCC6G55SSlJNmL86ithRJKJWPmwc/1Xq5LgnhWKGc5r07Rn2R+HzhjzS
         aLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eAZsdLyTKYL/yvaLhcaSwJhrKJdz/YFU+ebiSTkjfQk=;
        b=Ast80rklA/+3XJkEguDcgTAW+LAaGeKiZeU94iw9r0tJd2xAovdueprKV+2KrQ25Me
         FsAfva3HlLWVWT1DoEWbXA/ajiGy045oPPpkvcwpVnuJTJnvshp73q/c/IVo4aLqdvvE
         +9VIOgbn7tNzdyBN0GymZQ68WUC0mUzgjq5OA7JtRGnmgzgAM7fhxqd2rjIPACOu87kz
         TgqUMTvJaojSPeYuu0koHRGlU6eiIICDBx1KP1+IuqfXqM+vlgJMWG9Tlz2SxzIiAsrR
         fKUucl16Nep26hJUH47XXrw0HMDTFYJ6ghjQ+mKyyHSpbv+IPhOQA04Yk5IDj4R7yQSz
         ucXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NEJtrEGrHbdj6mHVQZN7yLKeZWbFn1geha1b26gcqDbYDe97N
	rNvBEBiC51jkChulV8SOZvY=
X-Google-Smtp-Source: ABdhPJz3kSBDXXze18B9PtazlWKN13fIrBlhSb0WqYv43ACc3RGWOq4kFEmXTKLFHNvsJqQ2cSboNQ==
X-Received: by 2002:a63:5458:: with SMTP id e24mr431967pgm.14.1627698783432;
        Fri, 30 Jul 2021 19:33:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4a0e:: with SMTP id e14ls1863976pjh.2.gmail; Fri, 30
 Jul 2021 19:33:02 -0700 (PDT)
X-Received: by 2002:a17:90a:e289:: with SMTP id d9mr6039071pjz.186.1627698782922;
        Fri, 30 Jul 2021 19:33:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627698782; cv=none;
        d=google.com; s=arc-20160816;
        b=AX0e/ndmRSU7+RMw1MdKdmCOKx+zKKuAmJYAi36o8Pe+djZAoHaT2GsI86VnpMGCFv
         shK5b649wqKkupkY+TeLwlrgmvg/bzsU3bjCCOviw9WCC2jneyOOA0gx1y1YaZhtnbjA
         r1+x2nJX8oHWUFFr+EUJpUwAM8If76t2xbMnKjNsbDhg0lO9X2VQABY5fHfiNgETzcqH
         uxOBuspHCgwzr/D6/ssKUVRB3CzhU9VKiit6Xh7J05/oiVTK2naJlo8mrV8J7JmBFZSD
         80Jgs/j5WFPVna/cfEnahLAo4YDwg0M+8HjPiwTHpFbV2OKbriQAfdIPjBv7UpuHUR9a
         orbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9trgYz55yd7cJwSd77T0A0/Bhy1SVra5q9+sP/kcT3k=;
        b=b5M7CzJAJ/b3tTKIWmSEu3R9YeQ+JEHeqdarSFjORBublrYTwDSRm2XhVMvFEbHIc3
         105iwJGt//H3GB1hs6/9NOjN0z/jKnYbKzE0tRiLqZIwSIjKgRkBliD9BO0tRYZtImmQ
         I7zuQO9illvm7pO6huqdDyZkSF/2gscexBsCyZr1k3MUdXZRmOFxiQlv7aIf8EWVTaoK
         13VggdkpiIj/WrDceOa2oHBJ8plAPBOnvaqsgT0BAUVDHyq+4Nmy85FxSlA3F6SGTpPY
         cFCB5i3jLW0ufl5SG5dbO+3iXBTmwFyEiIthZ+lyYp1JN6FgVMLCET8QAy048DvUlIK4
         JWfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GcAdi55t;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g3si135729plp.2.2021.07.30.19.33.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 19:33:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C86D60C40;
	Sat, 31 Jul 2021 02:33:00 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>,
	Marco Elver <elver@google.com>,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kasan-dev@googlegroups.com,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH v2] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
Date: Fri, 30 Jul 2021 19:31:08 -0700
Message-Id: <20210731023107.1932981-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.264.g75ae10bc75
In-Reply-To: <20210730223815.1382706-1-nathan@kernel.org>
References: <20210730223815.1382706-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GcAdi55t;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

A recent change in LLVM causes module_{c,d}tor sections to appear when
CONFIG_K{A,C}SAN are enabled, which results in orphan section warnings
because these are not handled anywhere:

ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_ctor) is being placed in '.text.asan.module_ctor'
ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_dtor) is being placed in '.text.asan.module_dtor'
ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.tsan.module_ctor) is being placed in '.text.tsan.module_ctor'

Fangrui explains: "the function asan.module_ctor has the SHF_GNU_RETAIN
flag, so it is in a separate section even with -fno-function-sections
(default)".

Place them in the TEXT_TEXT section so that these technologies continue
to work with the newer compiler versions. All of the KASAN and KCSAN
KUnit tests continue to pass after this change.

Cc: stable@vger.kernel.org
Link: https://github.com/ClangBuiltLinux/linux/issues/1432
Link: https://github.com/llvm/llvm-project/commit/7b789562244ee941b7bf2cefeb3fc08a59a01865
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Fix inclusion of .text.tsan.* (Nick)

* Drop .text.asan as it does not exist plus it would be handled by a
  different line (Fangrui)

* Add Fangrui's explanation about why the LLVM commit caused these
  sections to appear.

 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 17325416e2de..62669b36a772 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -586,6 +586,7 @@
 		NOINSTR_TEXT						\
 		*(.text..refcount)					\
 		*(.ref.text)						\
+		*(.text.asan.* .text.tsan.*)				\
 		TEXT_CFI_JT						\
 	MEM_KEEP(init.text*)						\
 	MEM_KEEP(exit.text*)						\

base-commit: 4669e13cd67f8532be12815ed3d37e775a9bdc16
-- 
2.32.0.264.g75ae10bc75

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210731023107.1932981-1-nathan%40kernel.org.
