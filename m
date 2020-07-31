Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4OISL4QKGQEQ53X57Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 453C3234DDF
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:34 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id j7sf21865726qki.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236913; cv=pass;
        d=google.com; s=arc-20160816;
        b=qME6ElP4UyHjLWCA+C4fVkTIB/yzMaNLa0ZlwYezNl+A5Vdt/gAS5DnJ9OePSUMXwC
         WMKJaDA2V3HZqtijQm6cb3wZxKmTBjxWrrHPA+jGSXulxfip//36BWxY1AcA0n3z/pGQ
         oukCLgiBbkx+RtQ9oSB1u3oSNpPnDOEukOFxLbkezc5TOcyualdNGh59UUTyWaveW0Dv
         bQqsA7wJ32Smz6Ovw++65lkfpyhbaUMuwr1CnV/+bTljAnC6st3B793cvcoxrz82WyoA
         rJH7QiJVdMZvCGRKI9C/o9GwA3yC+t66q5laLrCwi4zfKmSnRXz84N3hyVd9L/Zc/AHq
         NuYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5ltID0T5Uru5bHVIvQ+Ew7rOcChhSXyTddIeewIs1fQ=;
        b=Z7SGNjQSv5/e/lvwHgKmcG8+aRlSW5tihv1ytNIhg2ohObb7bGmwRJrpAltbblJzJa
         o6OEnJiSrmLGueZF/gWQO2ibTcEhXILzJ68Lc+hEyNN1RiFKcX1Vztf8MmXy3ScEzbK6
         Ca258iElu0ewqDxAdVDJ/l5ZKiI4sd4SOUv4Ewtnsmyoj+UfqLQhF5yF+OcUQJ5/PJUZ
         HxUmQba14pcPPx9P6r/59ZTj0sHhKjl0yB/baTfgg2oIrsw9aCEXDCwIgz6860qNfcID
         X0k0TCB6/laYCZgiaGiUMvCPqpKMW8PwX4ipnvl510qhy6TprhX5oEHlnx+3ZB+ilmKE
         jJYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KfTF6oqb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ltID0T5Uru5bHVIvQ+Ew7rOcChhSXyTddIeewIs1fQ=;
        b=UD+xXG4lAtlo5FkeFXd0BrV1j9kO22VZFBZxBhoQmLmwwsz1cgeXMc8g85GtxxOlG7
         +iC60ABgj9T8A14HdyWawik52D7njPVDYfOEupk3T57twnXbLTggdjHfLe5HRU83yaIY
         nkYNegxiKHMYiR/rl9ms3I21VUMt842bo7enMyNnY1ZAD6zjg3s2MlJuopVogedxJKi5
         AQTPjfxLouEQbaJWtw9VHjNhzZhiUqu3xeZ+wqG19Oyc+63XGSV/pfYaVasVW1N5qtPe
         CQbPN7d37XyAWZIP/wSrUNhs01LGmVjjN1S9bNEvxWfszwYS3/EvvWtzd1CWooKWfgCp
         95GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ltID0T5Uru5bHVIvQ+Ew7rOcChhSXyTddIeewIs1fQ=;
        b=Evyv0W6C6gg5xesZWdCrhMqYrPr/XOEIhw7ZAQPD7ABG9ni7N6WDUg08nRWFhAftxz
         iWm+aVuf9VMZLHwRseaQrel4HcH9oiREG/WBlRI8maRNalcPE21RWsBxxY4p/Ix7P1Fm
         Gj9QSnGGFNAgM8JaRHLQC8tbX3D3IljelA0rSF6rEGhzqA7aAZ4S1nPVVc4Ow0VIiwqn
         U6zCLikzJfxPxhSnQsninpWSRQ+fUHa1Km7DRDFoxmXpaf1C9t07N/jZL3cy7I/YTpP+
         FZjGfPxGdGIiTqkVZDKDcSSuBPCm9l84Sl3zFcQte86gmjk4PXcWTbPVfzYKqtKghM3y
         4UJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vXnUHBeMJGIBqw99PbP5ma5Qz3uagm/5IsecWMNUNEdyDsVrK
	hSNxsSowiwuUBPWy/skotmw=
X-Google-Smtp-Source: ABdhPJxbIKNAgtf30xQ9wIuEV9LXSuxQmYoy1GRw5xFUfG/TkJu+AAXoYOF/OTwIGBy5RTz1/+ZPMg==
X-Received: by 2002:a37:8a06:: with SMTP id m6mr6263874qkd.191.1596236913257;
        Fri, 31 Jul 2020 16:08:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:8ce:: with SMTP id y14ls3770024qth.7.gmail; Fri, 31 Jul
 2020 16:08:32 -0700 (PDT)
X-Received: by 2002:ac8:614b:: with SMTP id d11mr6085409qtm.271.1596236912709;
        Fri, 31 Jul 2020 16:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236912; cv=none;
        d=google.com; s=arc-20160816;
        b=K6RQQQZ3/6jlw1EnGk0VJdEM5MW8GTZRVL+yl5gtbijcKisLv/I8FnVYzOJv4D+aN9
         +rZzbeLeRxyveVw7SXnGymzt0vQsJY8V2z6bDmEHlZxYRR2Og6d8FAAjh5XqrrqdLIkC
         APEbTeY8BNjFX4SzEYBkwvbomgiwZsKzcLRB8qwB24wYmgJookWIU0wL8JbMlu823afH
         v2T50008chtlNhUZ7UmeqeAMBd+rQc7xvXaXf2rIeIc1jlgDO6JfK07fwONfRK1BmrXe
         79PnKPCev9oM2txFHSnSxfY1rpeEXHNBe0eh/k+WjoCmSzd4xY7Oh8Se3ThsW9tdalzg
         9OVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nYf6T7ak2fI7+X5dAIz+6RF2nee0gRVAMZVc45IKWXs=;
        b=y4jmmR/hSYQ5Ttj11PXww0PlC9eiCdLTP+vfBIYNsxoRcAfr0WBhUxKR5dXn0EUUss
         sIv3AKR6cFfTwaDk09puyaw03017sWBuYnTAW2Zi6//pNoXizrHxG/YKieLj3mMGw5j+
         7uhD3MJsAj9j6JRj07wEk9FmD0+RZLfhlDx6ho1umWfcmmeDQGANXOHFBp4Q9QRwWM2R
         3FMWgBo+vtCnlugbA41QESL3s1TMNg7jUB6ytYO1uZRx0Cv5r3bxLNED6WYVrm/JJmBI
         Dut3KCDgAdycXfKiW8kEQsbpQ5FWHx1UyNKad8ZuFCuVU/3jCdMnqlBuhgVEr7WzyfzA
         qP9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KfTF6oqb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z19si442699qkz.2.2020.07.31.16.08.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id j20so15178954pfe.5
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:32 -0700 (PDT)
X-Received: by 2002:aa7:8143:: with SMTP id d3mr5616752pfn.97.1596236911855;
        Fri, 31 Jul 2020 16:08:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b25sm8429813pft.134.2020.07.31.16.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:30 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 04/36] x86/boot: Add .text.* to setup.ld
Date: Fri, 31 Jul 2020 16:07:48 -0700
Message-Id: <20200731230820.1742553-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KfTF6oqb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

From: Arvind Sankar <nivedita@alum.mit.edu>

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

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Kees Cook <keescook@chromium.org>
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-5-keescook%40chromium.org.
