Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQ5BXH4AKGQEZSNIBIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B551D22016C
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:41:40 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id j4sf278257qvt.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:41:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594773699; cv=pass;
        d=google.com; s=arc-20160816;
        b=jWrNBJGWPC9IB3c5sUFSSDBXatxFPbEVOLKzspOoDD4hjFpzSS8BQNtdB1dwKVFIA4
         jHJtqE+5YLXyDfDVihfPR5RKFHFP2d29HjKG3ehVkSUOgvT0R38ijTQdGxes8LK5Y26A
         Pb+WzfWOevY6KKT19OdCudD9G4K0f2yA0g2kqU7alESoECvwhfGGo13wb8EszxLuwZBV
         /SXrw75DryW7xeVtyWFv9wUdVLI0PNPzlD20PPkh8X6MpUWkdJ18mUXRvllTNtWi2mB/
         qUYCDKap4RGEyzqTF1SFjG4K0HzcD+/NzOdxP9+lGiGCH1ombAHZ/M3VP50LUk98L+h9
         HbLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UEBgU81LQOZIAleeFHii490JRgz6mppeIIGr5vx18aA=;
        b=L/hqWou14wKS1SX0dajd6kRcMSnnoPGcZFZQd4GkDz9e4/rlfWqeRUiotRCSFvT4iO
         4VVDl9MENh/zPPA7pP54SWaFZGqSZlbEey8PFg0d71/ptC7N7Dgf6FdP8nyeq+WEINs0
         UKBGftLFB3lrNc8c+i7+WV/I4Iw+QBrdfZgkVJoo3zLfXWr8vYgZRDw4Pqffq+71mzIQ
         KKsenI/D+5vfsUr/Iwuv95VWwhv0RctWAH/BfLl9+cU1+7cQO9gzOB4v1Fge6On2AN+X
         K3HeGAVS4i5D8g0AO45uYiMrC+xz+nhn5zCaQlmJJQgwVhI70eBQf5fZTpNyE0OnHt0x
         E6Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UEBgU81LQOZIAleeFHii490JRgz6mppeIIGr5vx18aA=;
        b=gJKptNhB3QNwRovU8fea2H2npPiYhxyjMsxU0WuCxilrGIYa8c21HqPC1g/2OUzmAY
         xVYkFKkiOttE20x60hpEONIswZ2YbQXnOZgsMIzURl7vWa9+p7cxanOy5wJRe87eoktE
         bBkgaBo0TP8cCJmTCU1jP99nvk4EDiKvUxf2P6eSMZIXRwj9vVxTds5s5jcrGpOT26be
         VV8iv+EYEuU9zEWwZMvruoP1xy2QWbwyPn5qfVWzypkU6Fr0/RQJwAooxwMFTQTa3zgl
         54VClgxGm0HuCG2IXeUAGTEXAxXiWtcvWeXFJohrh+XnctX+jojKYUk0SRqmublozmxA
         aLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UEBgU81LQOZIAleeFHii490JRgz6mppeIIGr5vx18aA=;
        b=SAlEaJG1VmZUG2SAkhpq8AifvcoSCYuRSTHIZw7QyoZpIh2X7+19k0P4otcDKFc5A+
         0jbxu+hOM92oVuY7mPSCr8xLjSMiJ5L1GzkMu2b8x0vlj4kAm3Q/Z1IzqPeShC0fJe/D
         PPYex6CIQ81u/bmDKLDQ+t8C6zbKZHAcdRrgIrunbmenJ7UY7lIrE1YiRJn/pNyI1And
         LQfIcUDWCUoBgPlIaActEjlP0SFpSvAIrhv8UmvIDv9AyWWd1JaNkfEZKJ0cs6Vq0Nhw
         VEciD88vwcpukrSlPWiE7ViSRV5P2IwfJAqjjjMGvDBICsN7mKScOsy7/FZxLyPIluOx
         PwQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533A0IOlOzMFjg+L55R+bv2ZX8eOS4ijmqK7b7riYIhCVf79csiQ
	tLl7pqbqGs+RjVzNWd40iOE=
X-Google-Smtp-Source: ABdhPJwk7+kgRFkXtwRJYVe1KFrcKONm+YCL2m0JNKLAbS5lhQc5w8nrX2T22Mh2pPcvS0HfAlvXNQ==
X-Received: by 2002:ac8:514d:: with SMTP id h13mr7593895qtn.223.1594773699811;
        Tue, 14 Jul 2020 17:41:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:248:: with SMTP id q8ls226106qkn.5.gmail; Tue, 14
 Jul 2020 17:41:39 -0700 (PDT)
X-Received: by 2002:a37:c40a:: with SMTP id d10mr7463562qki.110.1594773699462;
        Tue, 14 Jul 2020 17:41:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594773699; cv=none;
        d=google.com; s=arc-20160816;
        b=kfVYjrsgymZxWO2wC+C9QfW5kaPuoJu7iVh4vbYmbFRWziCD5/LYBwceTwSIrG3iY4
         rA7YZBjk5hUUQdF4c/TMS0MrVhU8N+ixK95nuVyi22aSTWlO4ut5A/d6gr7MossNvYPY
         ERug4jWvMB9eBfE4VAS7pEbTwZgT/WwW389aKHjxNfdLFB/ZXuEDmWZZkWZW2e4zmnTe
         UeGeQhN2hgEfVYyYVMQOf1aiyX1YXubp+Ugvx0MKqozInXCK+ZSXsDJX7aKwIQYJajXT
         EgTvjTUnOY7tStf3BlKc8EEsHzdMTqxXMWXAH1jQebdaMlz/gSdPHWBbaNga060fHN2U
         f5QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ypmaqJCaWru1//3r1Y8vm/BttJnmALbhqbmJfGQPjbM=;
        b=UhgHSx2wPXRGSzvOb3fHlb9PfhZWcZK9hgNMUwhOgULmItR53h1ndX4evT+rRqw8Qy
         e7h5lq88UQ3/ovSCsZbhja/VkJTcfc04ofwineq9DaCNh6QGszDVYlcCLIUvLLKi6nRX
         VbBBRb/H9W98QXH7VSbT8zEwnSp6JMMuvuQUR8FPeK4Tqv0O8oOgfGq0EMSzHURqpw/d
         UDTuK0GePSYssJnqO5ZT07/eHngwlQwABh3ykFVkGiBvNMsgKL0XPmHIo+8oNi+wkrV/
         wtaZZZA5QwjWlbbjyvl+gnx0wz6IQiI09XqOp5KV11gpm3Cj7Y57b0ewQgIcC0K1HrHz
         W8TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com. [209.85.219.67])
        by gmr-mx.google.com with ESMTPS id w195si29182qka.7.2020.07.14.17.41.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) client-ip=209.85.219.67;
Received: by mail-qv1-f67.google.com with SMTP id u8so151097qvj.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:41:39 -0700 (PDT)
X-Received: by 2002:a0c:b284:: with SMTP id r4mr7167816qve.141.1594773699140;
        Tue, 14 Jul 2020 17:41:39 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm524776qko.24.2020.07.14.17.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
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
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/7] x86/boot: Add .text.* to setup.ld
Date: Tue, 14 Jul 2020 20:41:30 -0400
Message-Id: <20200715004133.1430068-5-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-5-nivedita%40alum.mit.edu.
