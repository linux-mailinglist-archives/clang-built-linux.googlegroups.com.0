Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQFBXH4AKGQE7NCKQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B53220168
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:41:38 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id k3sf292644qvm.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 17:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594773697; cv=pass;
        d=google.com; s=arc-20160816;
        b=kEVIRc+Qr1QdT0tB1vIWEhJml1z/DnuwNpuEAMuLlsEOswIatxB6OkbopBoqqpQTEG
         q0lQci16hbvqwJ6DjfwWHhUdKWJG1vGIUjyJTnIkuuhkCR4nh/1reztQLxQ5X4QJuQXc
         xQthLMdiAIKHWq5l14/JMu93UJEeXObf2NddCVloEZeDgEzkPU+JNRx1iOHk1fLIcJQS
         inKKTvQKnMcXexOVygMy6bzUvNmEU/fF4HCRJZbSFlClF1NXzJaawxJaJLIAGtnSGllx
         r3b1e8zVvEnih5FDu1ggbEFy0ulic3qT0b7JV1cNQujADMrYMbTHD4B04Xt/M2QapWzp
         ewSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=86DrUbDmUaPUxOi5VCW6FaBX9SGGzflu+PSPy6nuMKs=;
        b=oyV54Oakt7YCxlF2GSEARvRdyH2On/G7oyJEU1WF0G9zWzIy5i+C/8jXI0rzrWf63O
         WfTm3WJwI1FpGZqgQZN4jqFuMwsiajJ8M1whSI3gNSJGiL8hvt9xEQ5aXYw8PtFxR472
         bAmf1bdkO6Bel0QZEbuhxEjGEwgwQ/Zg5ywNzOYaYLOHVu3eF4gkqCorvO5Ec9hSUUAW
         ALf+hehCixW1FHO+yNnGKya8mIrC2ecj2wMi/GV3rDVt0QfTBN3j3K/LJJu0ivtHsTsv
         Y+lkXqgrgOzNe5sgtWrQV8CDmsStotOEhjxOYshacCcFltWLQsTrU3ccemmakYHEBKCf
         v1GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=86DrUbDmUaPUxOi5VCW6FaBX9SGGzflu+PSPy6nuMKs=;
        b=nJhbH/KqfuF4bNPPBmjhy6Tkg9l0HZELu4QL0/RUYlhxQDWnToSou2Soe8JzFukjj7
         7K/5kF0aU0d8TJEhzeX36dnee9jaVknxNQVSsTwlP9yqNjyw/+vp+Kh6Cc31HSS1nD6n
         1OnUPEbLndYPDXXJ3/3N6s85fhx+Oe/O4J09JFzdBe+GiQto/TlMSUE2sn0h9XmNxbfP
         YL1P0yyGnhfAJGPCkeTCC5ZjXCiOJ6DVOR1JXUAeuddbNlnllz+Jb+PvSVnV0bLzdmxD
         d0CfiTjY3hMyNEY/JfDBkF5BVzLCoiohYSO/qz6GnV/7X/i48Zkn7P0Q8V1m2Y9WOU4B
         Q2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=86DrUbDmUaPUxOi5VCW6FaBX9SGGzflu+PSPy6nuMKs=;
        b=mqkTubOvQJGKZRhDta4idpQviuOk4HSd8th5MD6VJUycrJQt0+XBEOtylfqzzmQg1H
         E/emV++bspP86iH8RDjz5Xv3dLH6qacnQYvKoTfyehvrbs7rljNWaoR3CqBIz+7Mfr6c
         37/3hbQjWeO3L1UNgP+1NuiU9aH4h9ehr1xqoLm8a7rY1JEgt2+bTVb5RmK2gLgPRMZh
         /UpMNyBlOr/9LIVmXt8lpIFt7DS0akcL1DmpwAhHK0yLKfWKOV6uTToXiHZ8bMRvD7X9
         wpDrc81Hilk+rDE9XJZ4rDIEROjD0F9Di5ZJIGLdMhq8dTlPs3cWnTqoxZJ6dfVuBoYb
         wa0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xBSVzYAB4BJkm+UvAwFWGPkH7F61Yt5UbWvWHnegFLTgLzYfj
	2B1kuXgD+XjUHlnZguDjm1s=
X-Google-Smtp-Source: ABdhPJylvZuLwUnKtDkNyplE0jtSIMp3xxUuVZPhMLG/tKYXzmwYDb09QftxTQuPDQDymcgTK9y+ug==
X-Received: by 2002:ac8:5048:: with SMTP id h8mr7353691qtm.81.1594773697027;
        Tue, 14 Jul 2020 17:41:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2343:: with SMTP id i3ls108610qtc.8.gmail; Tue, 14 Jul
 2020 17:41:36 -0700 (PDT)
X-Received: by 2002:aed:2491:: with SMTP id t17mr7504529qtc.206.1594773696564;
        Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594773696; cv=none;
        d=google.com; s=arc-20160816;
        b=gAzojsB1UVNdNsXo2tZWcsASPXnyI7uqEkwDBgGwb3GwRyWEIYUFhlXatEcA0Rf7a5
         QeaDukluJxErsAGglvCMpuQHK+G9w7ThYFPv7EUtT4pcSDqUtbWUtKmXz8sOa9DRfxoJ
         aWgZjiOJF2tqvST5amuVnoZd0T9JUm7lWukgdXmti2hMCECCm7714eGs+ZFeOn9bqVBp
         g91T/GhLN1R2eNZ4v5uCB/wB3qoM4hoQ6vbftefrv+We+wAYtHRbSFT3lpqo1IqS1tTf
         c+1/Zhp495MlSb0XKzA1emuy8IwUDhy6FwLpdoc/8dBJC0VWLEjblzYf7AjZEMUI1X4f
         fCjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RhWnzCqvgTN++G31OGgg9qNDvvhiuki5nvpw8uOP67s=;
        b=QxSgsbO8G2DXNitIGq7LNLAzTjvsluUPnyTGHzz1sAqDomfBI+3EdyxAmEvIMfkIqr
         6UbjAcPMTYZS75T87RsuJ0/HiWBufnNspG25Ad88Pzw2sd+Tz9E49BC50OR4rKLpad5V
         SU9eEdDcoQEuE1dVmtseXZcUJ2r/Ru4hdoFPYnCYzAxI3xhF2gMR/2hdqY040Ol2hksX
         6SwkCVL67rZirRgFDuvJ779kvI698A3S2fUf9/JqFgSb1fOzSI3Mb5+s9N5iOlMMpsDY
         vKgczflxbtsMi0E69+udD8B8aDeMTBeypvCtFa7fWk6qPh3a5seEFgMHeLfYKH9MOy/p
         +7MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id j10si29754qko.0.2020.07.14.17.41.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id j80so311250qke.0
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
X-Received: by 2002:a05:620a:165c:: with SMTP id c28mr7222101qko.52.1594773696262;
        Tue, 14 Jul 2020 17:41:36 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c9sm524776qko.24.2020.07.14.17.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 17:41:35 -0700 (PDT)
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
Subject: [PATCH v5 1/7] x86/boot/compressed: Move .got.plt entries out of the .got section
Date: Tue, 14 Jul 2020 20:41:27 -0400
Message-Id: <20200715004133.1430068-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714023836.2310569-1-nivedita@alum.mit.edu>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-2-nivedita%40alum.mit.edu.
