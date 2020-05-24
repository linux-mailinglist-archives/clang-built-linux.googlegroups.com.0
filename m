Return-Path: <clang-built-linux+bncBCIO53XE7YHBB46NVP3AKGQEA4X7APQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 121691E0302
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 23:28:21 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id v22sf8534399oic.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 14:28:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590355700; cv=pass;
        d=google.com; s=arc-20160816;
        b=fdnAfG64PW4BaMYPt63iCRkemhz14L9EXSsqA2dxZedJqTg9s/4wCy3oUZDdbnnPvT
         e4h2OoKiYQvkjqcybKkPkmVqA5gcZXQEq6YrgnWQo5TCDdwu33a6YGxOHpgM3EFlYDRO
         cD9V4FGB/y+G+3N6Dm/QQoLE37eiR8hLiT9XoixVmigS1/g3HHowZM7cZ8Y/ENVzccCQ
         clgqHmE0zNa0ab/b+YnVqWrSD7kNNWLifIr98sCXIqX9LnOn6TbIdE97ABpryulv1fBu
         BwivVPVqqTLekl2VuGCzhKL/ESztcKQGJ1ys8+swOU1/3MboqL/+v45yuteCyGtVT01j
         R3Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=o/wU6oJ+vkSDqLLibE+k64OfafQ3ep/EIdZAKepCKhM=;
        b=bPruIjFDPbAxQcisTbRFpa5BxUDUzoALb+yCFMevMlawFTLtAqv1nBwP7L0c6Hx1w3
         YP7ACp7tGfIZlmKE9KDmMmZGoAWWpV6u0fM4eL/gYxiCImrjsnS2LakIZEJOv+SuXNyH
         DGJzu4SRyd87LtgonqjjMV+dio/jZh8ZhedNCq41vtagN0TP3rC1JDLHqE8Ns2/TNT+Z
         fz1HEg1FyCWh0RBkOVsaOtz0C+Cx+oyQFzD2hbpuyhrK1Oet4SKA8NR2k1aeZP7ai5qW
         my8y5sqIXZWwEhdaQpONgReE51fOOkmCYVpOFjWA/JBjIMFKcMKn4XTWp9OlZU0X7/XA
         5V+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/wU6oJ+vkSDqLLibE+k64OfafQ3ep/EIdZAKepCKhM=;
        b=KmCHueoi6stqvr2vXCBzYssjjR1Mzjg3CJ4VMcCJS8LK/Pe+6c3rDjLbMUXdi+93H5
         qGKpL+D2VPYXdXzg8HR/CbbE6RKUcyPZneKduJ7iVvEu2gdtXOyv0aR+BWsEKWc0FidD
         97kMWhwfqZAkkVewvZTRk76kj0rYU6RUDOmKKBvhyI4XM0i1JYWnx9E5Z7O4ux4tbjQp
         2pEelJFUeSuSc54E/4+Y7bZ1C+ZPZ7sSac45cSjdT6jr18Knn1PDzwzli6ABUiSu9NIU
         ljWxMiXQjQrC7D6yGXcKp5LKPDJT7tfmIWkzV7LbeabTrDFrBQq6jEiGWDnEnEr4nzwV
         Keyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/wU6oJ+vkSDqLLibE+k64OfafQ3ep/EIdZAKepCKhM=;
        b=XEYKw4cdyGX3o0GJsNcLvT3T17G/Sg1PDIVbHEfxZffLL6nTJ5IyiGgyCv+j3ZrGFn
         1vYHA3P2aJgfqCWLVAm3nVHDlXM0K2ohv8kgkvaireytEELjRKst4E1AF7psCYsPWgQG
         TSUqkjRmaJxk1aMZr3h1R6lilhGQLGYXzKPltunw3O6G5SwGHl67YcQY1jsC/6t0MNZv
         2qRaLW0vduVMrM5jJg1w8K6DkiIn2tQvvwl0Bcdi6FIryBdX8QySl5LUOhBwPCE2K8+1
         Lfhef42GLA3n5YYeYUgQZfpe/tvz2090wvM++P17aROhUfdtoCyyIcpJcwjYeK3GQN/m
         FB4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hIK56wUUF4soLVB6RxifAAoPmKAg1LI5YZOrd2bw7tRBKz4Zx
	ymyiBCj59yn/AC+6LZL6u1E=
X-Google-Smtp-Source: ABdhPJwLVIy0Vp7ZN2RhMU0AMkot0t8PGdGgLlPBHRTn1PoH145+kOi5vXEkAQ4Cfuyh/PG2nu0ACg==
X-Received: by 2002:a9d:b8e:: with SMTP id 14mr19023809oth.243.1590355699971;
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2d81:: with SMTP id g1ls1291035otb.6.gmail; Sun, 24 May
 2020 14:28:19 -0700 (PDT)
X-Received: by 2002:a9d:7f09:: with SMTP id j9mr16827287otq.144.1590355699697;
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590355699; cv=none;
        d=google.com; s=arc-20160816;
        b=TY9RmBE5eJ0m2POMwgqVehKdY076MdC0MZ+mpVNarSEHss5iz15zJtWjimuEwFm+fZ
         08WuodIZMa5/xqPt2BkxeAEBk1zlrJsMC9cAZnaYQYFq7EXAo0pNdoIs9zyh3RkolJ8z
         XpXw+4Ka2zwiJA5ATSmYhsoefGaxDj/CqfZlpsvb6mQ8E91Q9krf4dlvozmIsbzZybMw
         cYvnuAZ+yHYPWyGVEUZXQ32fc38J0YYqEwoGIUNjwEFZ8pKHSdDmedCCk1DeMLW0NEIb
         1uGyt3lCwUqN7u/hmRZnET2Px2hWcqRA/vwTmaiJce4oD+2ZH1bBR9DjAjjgfNixxg6A
         GkIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=aMU0eZ8AgltZAHYm5/2XnSEtaaUEJG/1Tqz8iUjHDdI=;
        b=DPIdR5npKwLKQWupS8WrGm+R8oxidLcpV9vyieBUnMQDM/SZuF7bt5iWxYYT8fcUn8
         FXHmXKwfRxjFE4XGdLOs69qtd3zLszBgXwHg3bpSLFsfHUK4E+dPSd+cZTFRXhMtqm1t
         LA/8DJW6Uw3chrm/1FmGsAaj8P63vcWIPyWEzsbl/Q02TXUmBWXdaE1E7TkphdNSnyCM
         NFrLNJAHvRZqF5t+dOoOwCb0cc53hMTD5XP7m84T4aAXk5udnrggOvNtc/mv0ZTr0Qm3
         c8DgwMRoqcyiIHCqhXe+gLshx+FMh9ZQLHRAxZJRxGjSgnBeYcW+QPvRIEyxEYj3g/nI
         UW3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id n140si926354oig.0.2020.05.24.14.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id a23so12620318qto.1
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 14:28:19 -0700 (PDT)
X-Received: by 2002:ac8:9d:: with SMTP id c29mr26158295qtg.288.1590355699390;
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d14sm3665729qkg.25.2020.05.24.14.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 14:28:19 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] x86/boot: Add .text.startup to setup.ld
Date: Sun, 24 May 2020 17:28:13 -0400
Message-Id: <20200524212816.243139-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

gcc puts the main function into .text.startup when compiled with -Os (or
-O2). This results in arch/x86/boot/main.c having a .text.startup
section which is currently not included explicitly in the linker script
setup.ld in the same directory.

The BFD linker places this orphan section immediately after .text, so
this still works. However, LLD git, since [1], is choosing to place it
immediately after the .bstext section instead (this is the first code
section). This plays havoc with the section layout that setup.elf
requires to create the setup header, for eg on 64-bit:

    LD      arch/x86/boot/setup.elf
  ld.lld: error: section .text.startup file range overlaps with .header
  >>> .text.startup range is [0x200040, 0x2001FE]
  >>> .header range is [0x2001EF, 0x20026B]

  ld.lld: error: section .header file range overlaps with .bsdata
  >>> .header range is [0x2001EF, 0x20026B]
  >>> .bsdata range is [0x2001FF, 0x200398]

  ld.lld: error: section .bsdata file range overlaps with .entrytext
  >>> .bsdata range is [0x2001FF, 0x200398]
  >>> .entrytext range is [0x20026C, 0x2002D3]

  ld.lld: error: section .text.startup virtual address range overlaps
  with .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header virtual address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata virtual address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

  ld.lld: error: section .text.startup load address range overlaps with
  .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header load address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata load address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

Explicitly pull .text.startup into the .text output section to avoid
this.

[1] https://reviews.llvm.org/D75225

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reviewed-by: Fangrui Song <maskray@google.com>
---
 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 24c95522f231..ed60abcdb089 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -20,7 +20,7 @@ SECTIONS
 	.initdata	: { *(.initdata) }
 	__end_init = .;
 
-	.text		: { *(.text) }
+	.text		: { *(.text.startup) *(.text) }
 	.text32		: { *(.text32) }
 
 	. = ALIGN(16);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524212816.243139-2-nivedita%40alum.mit.edu.
