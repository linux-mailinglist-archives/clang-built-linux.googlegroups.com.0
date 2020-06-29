Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHPM473QKGQEZXAOYJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9466A20CF08
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:34 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id l17sf12425854ilj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439773; cv=pass;
        d=google.com; s=arc-20160816;
        b=LVXLgdF+YoNc+n941uBgUb4Icz2uHpXmWG4JD1ZLAmeoYzQ8X454VKlSecNkeNjrf0
         SHt3oFHJtIxnguPWwJkYIRbwLQU8FSbmnPZDpV1aQhTBnCoH1Rp7HxqsLuSaE0PdS/Sy
         cqx9e03lYgSdxvxkeslVh4C5XSP9CeulVwOGTI/jWOgRsPxQt5EOBqFrLOM730ccqPte
         NgrdyYt2baNIuhE2LEcnZD8FKy212a3JUPHqBHTvoNivgbEb+Lm12irG4oOW8mi7f5vY
         kgFe5MSvk5+tWyz//gZVmP7KoubXEvFEYjOjJeVxVEYVNvqmr+eyWxOTBmBLjnMyRpqY
         HEGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=evQylyu3zewt2cApCxdoch7NCzpMXDaQFI7a+J0NuBA=;
        b=lgjcehAABYSRlzKjvOseYb/lg6unEaOmmvC/hW7vltXFLwQPs/McMomyZRgZMRy3I/
         QA0+j22rZzIWI0wfjvoAJzifbReVYbW79Lzjjq9xJGrOqz3bVJnXKrtRsLB9j44w4E7Z
         2lfhgkRZ5pJ9jTU9EpUKYYF5t0Av4Jo74IF+fyQ5xqOkrp2PNdpszHFIKsuL3aElAZab
         +0UzeUTPerEMv5QGGfpxbfEheSOmIMf6iLtR3HCF0HJCvfyOW+0UB2keRL6znDx5lHau
         3ZWuKjO9k5nvI9j07h4q3PVjZrOwEpY02wrZkAK+uZIg9lqlhzqhJ1YtJq/E4sYHHVfc
         WMJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=evQylyu3zewt2cApCxdoch7NCzpMXDaQFI7a+J0NuBA=;
        b=D+M77GiTillVb5lq0eQJfPMe5gEbh2PRf2IwriUp2igGIw9n5nFkX9VoPF6L8zetBZ
         YNMApcZ0tIY7xi9lfYCBYB7+2Lh4v4D/GB9r/fF1ZSDEnCJPWdCXIgJEtGkuNrGhF1oI
         EKsGC/OWkcxnNKAJcfkJzh9bGnSmHJ+NRefm8vIxidbbLGzODJB5If39rWLzh7FkGm2s
         opcxul4pXNcjXoLsfJbtBgUFmrej9yWgodqlgvfT8w4boFWAxHSYXQVs2MhacaIXEz9K
         wINGd3iQ+6M0fUsd/YDwEpDz684Qc/fwVySeIy00LPFnlQ4DG+vdUl5/rlRdzQzM9vx+
         cjbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=evQylyu3zewt2cApCxdoch7NCzpMXDaQFI7a+J0NuBA=;
        b=a8vUJ4q3mQBkuD+VRfU+03jykCWE+4dP/u9sTIZlLRQS4kOhUh11e44MHiuCiaJjsW
         S1iZlGZFB0kauRoeo9MRJ/6+wfhkYuVZQSZqk9KIBE19v/IUU/5ZZTb6lQp2KJ6UdXcu
         zpYA4qcYDxWuA/InSa+7zYW8M2T/t6hI+n3MwJchn7lFTrNVT0nyy7TxpwP9tU2IQsf/
         9l3C5yV20/wQ3Yk5cTjofTOz65SBnoQ4ltqad9Csob+s2HFrFHYmIZqQ9+Uq2aZxsAmD
         DziUn9GcK73m0jC1IATAeZhcJr+uPeVK+FF0jQX4gRoyGNnqEER/t18SFGQPiJnVczLV
         +8cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320h0hGXwrZ5Fl8UleWGEXQ0J1IEw0MVG89Uok3cLUHQ4RgpPTG
	9XID7WhyAYn7Q/twAoFqxrg=
X-Google-Smtp-Source: ABdhPJy3TK47SLUVmtwCYOY0Se7LHmtK42VqQTltmqKMStmv8EfcoZ6Gd9lGAZIwlQ71tyKUNm7fjA==
X-Received: by 2002:a02:8816:: with SMTP id r22mr18263284jai.128.1593439773573;
        Mon, 29 Jun 2020 07:09:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1389:: with SMTP id w9ls2386763jad.4.gmail; Mon, 29
 Jun 2020 07:09:32 -0700 (PDT)
X-Received: by 2002:a02:2a44:: with SMTP id w65mr18728550jaw.110.1593439772930;
        Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439772; cv=none;
        d=google.com; s=arc-20160816;
        b=TKz2/fWifTJIM8ToVm62Zysf+psud6ewEW6tZy1vce4Ogscq5rSYD8XXQLvlZBk7ta
         CsdjErDui19t8IeBlb3QkM8z0kj6OBMABxSaBSoOWMoV2qm9XfvTFaOU+20xoXKyTg+S
         0UpOlZAB5xb5/Ur4HC/vaT4VFeWYCys0sz4jw2inkRpXIklv8AMZpqMzEVtEM0oEfLus
         2lyONv/aeqR9QmQIFVqHQwnqW1qJh6gM7BOIg0FvFr83TQpYZCCoRVVpLSns1YUTJWd6
         gLOER7K3WfVUQCoex2UONGOTPUBzaedcQz8EkLaHkZLTNU3srTgde5nc58oM4fuknMVn
         glqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tEZERuD4U9x45d3XL5Tb2EKEgqxOltAsxA1Ga9THj/Q=;
        b=eeqmWZzDeHqPwXtdP55CVO/3O5DImzIT3oloyJOryFi+JEckxeM2V8QQp9AmIornfw
         sOF7aaKTcJE+xCGUVH6ESLVfV37ZE3Ehnjc9tdgnZBHv5iCg93N3nY3e97yzF2TS4NvQ
         r0iPHZgWzUbN/CDGxyGxRcSSHDhYhnltSR5h19Mwt7UnIFLs4vNcIHj22z8EdnDGs66K
         sI8bvMCEnkqdyJ8l7r4a5RYz+TkHStN3IegRXlvKK//QGdpOBNKNXxIlSStXSR4PgmuV
         66zTm+V0IMHDztpTA/r4UrLMk9lJhWEPj+ckssiqMvX8WuCaIpTPKwWqQFfwq8kGtxzW
         Uhbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id b2si2488ile.1.2020.06.29.07.09.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id z2so12909293qts.5
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
X-Received: by 2002:ac8:7284:: with SMTP id v4mr16251160qto.267.1593439772367;
        Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
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
Subject: [PATCH v3 2/7] x86/boot/compressed: Force hidden visibility for all symbol references
Date: Mon, 29 Jun 2020 10:09:23 -0400
Message-Id: <20200629140928.858507-3-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
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

Eliminate all GOT entries in the decompressor binary, by forcing hidden
visibility for all symbol references, which informs the compiler that
such references will be resolved at link time without the need for
allocating GOT entries.

To ensure that no GOT entries will creep back in, add an assertion to
the decompressor linker script that will fire if the .got section has
a non-zero size.

[Arvind: fixup -include hidden.h to -include $(srctree)/$(src)/hidden.h]

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200523120021.34996-3-ardb@kernel.org
---
 arch/x86/boot/compressed/Makefile      |  1 +
 arch/x86/boot/compressed/hidden.h      | 19 +++++++++++++++++++
 arch/x86/boot/compressed/vmlinux.lds.S |  1 +
 3 files changed, 21 insertions(+)
 create mode 100644 arch/x86/boot/compressed/hidden.h

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 7619742f91c9..b01c8aed0f23 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -42,6 +42,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
 KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
+KBUILD_CFLAGS += -include $(srctree)/$(src)/hidden.h
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
diff --git a/arch/x86/boot/compressed/hidden.h b/arch/x86/boot/compressed/hidden.h
new file mode 100644
index 000000000000..49a17b6b5962
--- /dev/null
+++ b/arch/x86/boot/compressed/hidden.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * When building position independent code with GCC using the -fPIC option,
+ * (or even the -fPIE one on older versions), it will assume that we are
+ * building a dynamic object (either a shared library or an executable) that
+ * may have symbol references that can only be resolved at load time. For a
+ * variety of reasons (ELF symbol preemption, the CoW footprint of the section
+ * that is modified by the loader), this results in all references to symbols
+ * with external linkage to go via entries in the Global Offset Table (GOT),
+ * which carries absolute addresses which need to be fixed up when the
+ * executable image is loaded at an offset which is different from its link
+ * time offset.
+ *
+ * Fortunately, there is a way to inform the compiler that such symbol
+ * references will be satisfied at link time rather than at load time, by
+ * giving them 'hidden' visibility.
+ */
+
+#pragma GCC visibility push(hidden)
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index b17d218ccdf9..4bcc943842ab 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -81,6 +81,7 @@ SECTIONS
 	DISCARDS
 }
 
+ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
 #ifdef CONFIG_X86_64
 ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
 #else
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-3-nivedita%40alum.mit.edu.
