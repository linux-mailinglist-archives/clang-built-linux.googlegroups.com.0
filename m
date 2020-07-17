Return-Path: <clang-built-linux+bncBCIO53XE7YHBB7MOZD4AKGQEELQSX7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7964D22450D
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 22:18:06 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id s137sf6085129ilc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 13:18:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595017085; cv=pass;
        d=google.com; s=arc-20160816;
        b=nToWsWoYBRJNw+I5HWKunnGlhHKYHG7s2Fy+MdRpA8gJ0akqKMk9aU1NF0YfQgL85Z
         pJy9dx3UorJnXZhfZ5P+RWJ69NMX1STwOUxRqQ9Swc2+1fkvJCEWRvlUxuHjWtWgA1OX
         zq1fdvF5we7F4abpSbYTOMnBBAA4TkLMEuomjJ/lrN9hrWTR0HBkyIuuNcQC84TTL9rH
         pXegQHgE7xOKREW76KxW1zqaZyWoy1P8qvjn77C/h88FHhKbZ1VQohgjVp+QsKWdJ0Tr
         2WP4hdZ+yQoKx9hKmXiuPiF6mFUQNHKVidQs04lKdKJ+7pdmSshS8JuBoQ49fTWW1ILt
         T6Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FEaGwizpxlSuKrvuJeFJHF/ZmeCBCPi9wk8GUcy9FY0=;
        b=jjC9XzJbDWWhP5UdxV0/w9CwdoQ+/eCUi+Icf6gxmTyMEDponZ8Wu8EtH0Ij4rH4sB
         m8bNe5vMnmmeVhFNYMNybRYN/CRiA+x6SzomwO5TaD+MbpbH6bpnEf9nPn7Jt9m8YoUZ
         xjWbGbyuvOliis12J2E4Avn77c/Ay1Fu7F046dAz0P8OBEdk0w8ZoxG+C5YOB6XrmSqe
         NO/TqvsNWPivob5vpUw+XRVALq96bnjDFD36XFCwvXajHUl+DQLLuTFcQnyQP3+00i25
         99mbphj6SVLK8a69rx0Lk9mVTYZzm46ocKwBXI73ui8AZSAawuO398wYIXMKHvKLlnWo
         SCfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FEaGwizpxlSuKrvuJeFJHF/ZmeCBCPi9wk8GUcy9FY0=;
        b=rdPncPWPQllenWDVohNuacXCVJcZr+dl/9+jheXvC0s96uYDwLVSelAvkcgHE9fAXr
         7x/I9wHUDK+FOZiAnX8wuT24u2PUK96ToExaT/0tr2ZPfa62rT3awr7CEC1tpwi0vuns
         h5das2XJUHAl7KX2qlLh+LxnfpdpZSENXu9xicKwnFktfl75YX7khJ6UDlKEeno4a87a
         L14lzh+ZfweisRNAWWew+h2iDSQi6rGdoxNQjCica8aoA2ZfTY3T9nMYVwfJEg40wTHE
         xQzGMn4JJOj64NGzZ4SybpRos9nsMjkjmoY9I73pg+WyDKdRDvNWqv5Tqj7M6Rezjiri
         etlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FEaGwizpxlSuKrvuJeFJHF/ZmeCBCPi9wk8GUcy9FY0=;
        b=Cgu/z7itgswkbxgH0WcYzCUac8te8QIP3MgZQ60a3Hz408NldIpLVjzKrb/+TVw9Dy
         uT6D0ObPhPS2RCrkrDEFBh6L9pp7L7Ztc5NxXGo8EotbYa+byzG6d50B8VkGBCREdoBt
         rCtmztGG9wkbdZDGYUhsVSzZCgZaLqmFbXeD6Md7dCXc+zXFGh7XEj+MN1hVdZLZRWR+
         KxvrlwUWYehwCtCovsmRTHb4LOmKHNFOD20nAhIeZ3ymnngj3EkBU6MmrK/tSrgxHj43
         48xfU2qUI5ZbuasEOhqEXy5eJoG8zSTNQqv6XmPVWPknhxgfXtTE1zZ+e12iIZffNvOc
         bFsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531opMR4CFPOTTkk0HsbTBbl9/cbSFOY6x53sKJisuxA6FPr5YFb
	Td1Vg1eSGXfmT3ghfrLcfuM=
X-Google-Smtp-Source: ABdhPJwfA30ssV3YTaOacv1m+KQA5vbTNNz9/EGgy8x2C/7EMQ37vdUNP8aEZ9rEprBjeTp7oGeYpw==
X-Received: by 2002:a92:cbd1:: with SMTP id s17mr11484480ilq.43.1595017085193;
        Fri, 17 Jul 2020 13:18:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5812:: with SMTP id m18ls2778795ilb.2.gmail; Fri, 17 Jul
 2020 13:18:04 -0700 (PDT)
X-Received: by 2002:a92:7949:: with SMTP id u70mr11679971ilc.88.1595017084933;
        Fri, 17 Jul 2020 13:18:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595017084; cv=none;
        d=google.com; s=arc-20160816;
        b=EKKsd0Kh+bGSzrfJTeia6KGheeKxSRhNkEirWWId8rMhfo2VWjuw9QKcLLP73xDaMm
         6r8K1uxa8FAiAYsGcxVvkwDu653E882d3MqtwnTRnmYHNBy1mctAJeSpsmnNjgTBk4dB
         SVDarA2Usq6jiN7WdnJEVy11B3wpVG+m6VdaQhWn/8OzyqJCxP+WPRuBvPvJSoxm98KU
         pCcSf2Pun56TvG3qNIYRSmoU701tXPi20tHO2r4tCPrEh8Pgu3zoIacaVZkznobSYySI
         sq8nK9MN79dRU8S9fJDvI7ChzVbGZzUKQigMupccuHSMe71OzVKakW3zbdyw3pvW7cln
         VNvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RhWnzCqvgTN++G31OGgg9qNDvvhiuki5nvpw8uOP67s=;
        b=1FF8NGYEFvxWXLsLh4327Vvh+GFvkNz8vfYWuHXyKSA52DJzkqtXcL0iZsoNgCoPxT
         KyW/XE5XBAmphexOBgaAw9hS9tHLdHHp4HIfJTbsyS6Pl0FXUBqxFhqXhPukqUvsCS3r
         w7WJv9Tbmd7s/pb/PpYWzn2vJku+axPFOw0WdsxEWODzdgLYH3n/c/CUPjpBg76gUBJZ
         N65Tz79KRZZTyzdGjZFpXikkR5hKkPxrh2pcA5ho3TC+3Yy0R+jIhTvLThwqGsJ7osm7
         1Rbkd9KQIuf0Mn9QWr50L6XrljFX/19YqFypZWLJM4BYWPs76W7r9F9hdqCUneozv/9E
         ridQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id k8si471765ios.2.2020.07.17.13.18.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 13:18:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id i3so8581714qtq.13
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 13:18:04 -0700 (PDT)
X-Received: by 2002:ac8:4e4f:: with SMTP id e15mr12433072qtw.347.1595017084364;
        Fri, 17 Jul 2020 13:18:04 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a28sm9509977qko.45.2020.07.17.13.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 13:18:03 -0700 (PDT)
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
Subject: [PATCH-next v5 1/7] x86/boot/compressed: Move .got.plt entries out of the .got section
Date: Fri, 17 Jul 2020 16:17:55 -0400
Message-Id: <20200717201801.3661843-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
References: <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as
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

From: Ard Biesheuvel <ardb@kernel.org>

The .got.plt section contains the part of the GOT which is used by PLT
entries, and which gets updated lazily by the dynamic loader when
function calls are dispatched through those PLT entries.

On fully linked binaries such as the kernel proper or the decompressor,
this never happens, and so in practice, the .got.plt section consists
only of the first 3 magic entries that are meant to point at the _DYNAMIC
section and at the fixup routine in the loader. However, since we don't
use a dynamic loader, those entries are never populated or used.

This means that treating those entries like ordinary GOT entries, and
updating their values based on the actual placement of the executable in
memory is completely pointless, and we can just ignore the .got.plt
section entirely, provided that it has no additional entries beyond
the first 3 ones.

So add an assertion in the linker script to ensure that this assumption
holds, and move the contents out of the [_got, _egot) memory range that
is modified by the GOT fixup routines.

While at it, drop the KEEP(), since it has no effect on the contents
of output sections that are created by the linker itself.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200523120021.34996-2-ardb@kernel.org
---
 arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 8f1025d1f681..b17d218ccdf9 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -44,10 +44,13 @@ SECTIONS
 	}
 	.got : {
 		_got = .;
-		KEEP(*(.got.plt))
 		KEEP(*(.got))
 		_egot = .;
 	}
+	.got.plt : {
+		*(.got.plt)
+	}
+
 	.data :	{
 		_data = . ;
 		*(.data)
@@ -77,3 +80,9 @@ SECTIONS
 
 	DISCARDS
 }
+
+#ifdef CONFIG_X86_64
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
+#else
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
+#endif
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717201801.3661843-2-nivedita%40alum.mit.edu.
