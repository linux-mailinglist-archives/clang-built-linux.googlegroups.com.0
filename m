Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAEPZD4AKGQEOJCAYDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F8D22450F
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:18:09 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id i9sf2014185ybg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:18:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017088; cv=pass;
        d=google.com; s=arc-20160816;
        b=jATSoiEoMj4cdBxKXxM44DSkgNIG2NfcfWjiHGVDaAU6qWa18AtAkTnPhcC6gk2cIG
         kveiqoT+c63YBLU6s+GilW8oCMqWLFQ8YBX7u0JmNKc6/mWj1z7XpwkWmhjnZWeXNqBo
         e2h//H2nfajvr32N6TFVZEVhYLtS+NccQh+pdhfHmW8yMcPARH9JPDcpecHe+E5pyhz0
         yb4xk8Ges3ntIfFTo87Q/WJNyVvUAuDKzx/xqdPkkQxQC0W6xoPUdSFzX/fem6TVyVdP
         qSaH7bYSA6VN7/83xo7OfCwn0okYgMGead+oL/oUKcjJ1qTs5sJSIjvUZsRZlighOknK
         gHoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NDrf6s8QikDa3Dt2XTMTXciehnEothC60MJ0EvsJq4o=;
        b=CuZ1MDb4b0vewVbQh5btwh6ZQNW4eZFvYpR69BGBpGiCSam6ie3S+ZyL4YNeVfo+6a
         581TQdBUFtVQL0NJ+4ZXdXhCWn/UiHhfUGqHnxfxuSkwXxci/QC7OLxg7ik3Us0hefq7
         9E5SCaINuTo/XR2N8Gc+AXqGC0FytkFkW6Ktn8clEkWJyKSsrPwKOdrPEHQ6JIMIVzrF
         cjn5GoA3rkIsvEApD2vNH5fVZ2NoKkSEHOFynn4qCHAVjmjG6A4b7fF2Kxv40vMlrwaf
         Selhy+Mct7fbUgoe/76NYs5CTEXGlsMepbmS73EFFGknBTJg16kPsZxa7dg8IiKOLl+I
         1hiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NDrf6s8QikDa3Dt2XTMTXciehnEothC60MJ0EvsJq4o=;
        b=sxrkg62bi/XztdKHM/nJihC/UVY3kZpF0JXzIVUT+Z/7WybX9P0VjpKnHknRHKcMjh
         Z1c1J/K4r2PvVqKntyMa+xnVr7D00RmAsgWhfo1oK4aKq9sOEYRgvme4oSJEyv51wM4Q
         CcLcKQu1K4O9O2yuYRZbeVl67gPM9xgMF1nuS+hILCmmdEogBlyYLSARt1Qgt5Pgjwnb
         GvMNyQnDfmgNTI1rd/ZCwe3wX2AGe2v8kJgzKJPIoPtzlRknjoMCd2AjDsfwd7GB7aY1
         hQ0PKANv47krqD1EV/qi5elR2DoG5wAZYlpiL2qQjHhO3SwW5ipDxq9gDlaoM17c0C5i
         Xk7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NDrf6s8QikDa3Dt2XTMTXciehnEothC60MJ0EvsJq4o=;
        b=NXckS/M3Ycbaq/8LT24XnVnIWR6z8IX2LglEd2UoWJOG3Ed+Xl4TArQkHTKxavlZ4G
         o2JsPAFNew/S7kUHUMEFt1GlvIWKqPc2u7wUDEReIzIRsO7nDeYYOydCQg/Ahrv9gEIq
         GN50+gmzyaPCDOpgqOMQmKMsmbbmBCnKpZAP/pFx3FWGYukuAVID+SmT7f2oBcDViTpm
         Ej0GOHgxEXGhtNKXz/bL+VDtHw1LuJ4365eCHOiVXfTjHRP4ojCxmLa7NtWPXOhv9tGa
         ZV7NSx82U4/ZwFmhioYwIU/kOB+ppgAKaV6v2OEYX0igVaQu9tbaUP9tS3w0Gz4gRn7m
         FhNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Axr5wOpHj/j2dZNmnrOxDBwHMYERVth8aMMk4K2zOJ2dW8QVt
	butbldXOLZ6Vawv9ylzxjTc=
X-Google-Smtp-Source: ABdhPJyN7DmmVs6RYoSbLbhkdEVRKaKPSMShMBh5GTwXeTNFJb3EJhYWRRIZLpgapkv1WdJOMD49vw==
X-Received: by 2002:a25:2508:: with SMTP id l8mr16890151ybl.192.1595017088683;
        Fri, 17 Jul 2020 13:18:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2597:: with SMTP id l145ls4102607ybl.0.gmail; Fri, 17
 Jul 2020 13:18:08 -0700 (PDT)
X-Received: by 2002:a5b:58e:: with SMTP id l14mr17350251ybp.352.1595017088196;
        Fri, 17 Jul 2020 13:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017088; cv=none;
        d=google.com; s=arc-20160816;
        b=ixx07FV5/grD5rRD+NolEtK10dSaPeO+xRYkP6VBILNazqASuRxOtYlzuoRbwoGQrH
         X51519iFfpnDsFYcmA1NlDsSDaT2bzBiju7EXafHCupbt8hlqVg0iJkG/ELzQOlP8YkU
         dFBCDD0mNNfMn8AXLT+brI3NkxVOYNRv5JuAZTXdzxOT0KDawYfj9tZI+pbgjA8eOlxV
         l1inf5h01i/OMGuk/0qJQaFfJckhmMSYPXiswKNwQEkW2muSv1JELZA+FBoElkJREUcf
         cYgYuXRSb0GLwZlU/uxZG3ULcGPSnBNlK4aArbWXmsNG79XRwiZD2l7OkDaoYUqY6b+V
         oaJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ypmaqJCaWru1//3r1Y8vm/BttJnmALbhqbmJfGQPjbM=;
        b=xjI21MF7ypzta2Wc8b5UZINDhzxxnHyN6jsNshbLYOny6lXDsPhUu/i2cOHUAp+Tel
         H97v3lId+YxRdjtHyvNN8KuJ3hYs8/eCvJk1pSPFHwqm2f5QK31QhsiG95kdbGaCKpho
         c3+GCgUSO/F/gVYR/HTos7zG8Wbskdtu1vxTYb9q5m+UEpzKFwOvoa6en3gWzDXYzWLb
         Gh4FM8XIohXKjDIzo6w4gEL5xV/sEdr0rqUKasQGj+N8fAuG26Qsauu8HkbquZs/4I+r
         e+HcH/htTgXBNfYX8ptnOfPJF6Nzwn6w87Tt+yBIbMl+K2+6Rhm6pnFoAV7pimuU66Hh
         x06A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id l126si656171ybf.4.2020.07.17.13.18.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id a32so8607045qtb.5
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 13:18:08 -0700 (PDT)
X-Received: by 2002:aed:2a22:: with SMTP id c31mr12288382qtd.20.1595017087827;
        Fri, 17 Jul 2020 13:18:07 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a28sm9509977qko.45.2020.07.17.13.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 13:18:07 -0700 (PDT)
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
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH-next v5 4/7] x86/boot: Add .text.* to setup.ld
Date: Fri, 17 Jul 2020 16:17:58 -0400
Message-Id: <20200717201801.3661843-5-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as
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

Add .text.* to the .text output section to fix this, and also prevent
any future surprises if the compiler decides to create other such
sections.

[1] https://reviews.llvm.org/D75225

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 24c95522f231..49546c247ae2 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -20,7 +20,7 @@ SECTIONS
 	.initdata	: { *(.initdata) }
 	__end_init = .;
 
-	.text		: { *(.text) }
+	.text		: { *(.text .text.*) }
 	.text32		: { *(.text32) }
 
 	. = ALIGN(16);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717201801.3661843-5-nivedita%40alum.mit.edu.
