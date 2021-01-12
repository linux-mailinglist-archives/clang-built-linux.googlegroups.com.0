Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLPZ677QKGQEEYGXAYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D4F2F3AD1
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 20:46:54 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id d10sf1397276ote.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:46:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610480813; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJD25Jx2i6CuwLRi/AO4IaPJIHO4j3LuQyQbuG91SVaokooPsFJBb+ug35YbEfbf4b
         M+dplbrEI6p1l6OX7CWGKQRwQOqH4xXsf0qR+VLOOQTz78+XxX4yFZroejV/Bv8XFey5
         VF/PW1LD+PEP9cFOqP3gBnY/G+0oXZ+o73Q5n8h4K94WKDjkTi7Xjqx0LsDNfnC78sHv
         l/KqKoNRqf6Y6X/8bEIKEXeL6qBaD+TiB1g6c2RvlwGLyChcSY8w3Rmw014VLToEbNKn
         rBLZ3q/G9THqwrG9mZfptys8n2fhBERgL5L+Q8cKzAyIeOa7PMx60Z5OfsiJUwhlm5HX
         9CKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IEjaj3C+/Qc+g31eFxgXMleFJoa5zYDXBr+KysYFCbU=;
        b=UlFybscNfEYqmHPAL5OKuOUGEUSJW5vDHfD795FYu9euWHx+G+qzn/7FJlIG0aDzEr
         ENrhrkceWNBRcni3xoI1XifHRtePWAWxw0cgd3rNezXhzoaWqos1sFacNt/10iDm+5//
         bdHcxaIiqYsU/s9wIUOMqs9QIhcLJKZBqvfXz9c0sA2CpZft1jNuLwUu1Hf2vVPvTUbB
         GRwRa+EAe2Xv9aZPTfqfynzNThLCPn3VjJBeC14KTXM0ABT7+jDow+TpTsk1dRggBAgV
         r/gI9PoCDNNa+waRZDdCSlKCqrBopQwQ+k7iYbhqEx99+yhSJ08nUeYVoORMNrPVDbbv
         XOFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uWIQwzpl;
       spf=pass (google.com: domain of 3rpz9xwwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3rPz9XwwKAKMQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IEjaj3C+/Qc+g31eFxgXMleFJoa5zYDXBr+KysYFCbU=;
        b=X3XX4wfSN5JJMl+PFgRnFvlZuvr7jaZbBpE8obk8CSf6XGxEKaPlLOet1TgARetFPg
         Zg0C4f69ayY6/1FrIH8sbErFZG597O5Lojk5AnI3mSCHKnAkZUURoCRzAw7Yjx+IJY9Y
         +sIUObX1cCLgdd4VFFroxQ0RQzMLIFTPEnyZWz9Td7y66OvGnBI8OcaQsU/l7vpZ/XFO
         LXGaXPEOdQc6/D25zMoSLYU2wKorvxgHVb6gaVTSbtTk+tCFw9s8PI8rkHcPQqP4VCsb
         R4xD511ZVTM+H4VoomPI2AxiMeeIOBtVpcjwEfk0ibootWYM+hw4o7fjCksm7Kx9AdwE
         0fuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IEjaj3C+/Qc+g31eFxgXMleFJoa5zYDXBr+KysYFCbU=;
        b=celiQAN124JkJaPTAXMDo9bsuMcXcw3F6ILwNxux+D5NjIKehHp3WIP8uN0uN1a08x
         87WMHaJ81kjjJl/pqedBBsB44HFHA/ZvIIorruO+p7d1XgXm8C4JVML6ZmzA7J8weLHL
         nbLbwhJZ9StP5RXm3kTDuv8Ts8maUbeGNpmnAjzLTfTrYLn/u5wisY5Jabv1eCZEupQ0
         xQhujdmZ4EaLBfZ3qUsPAFQ3Hh5DB7SK7txFQw16CpOTIFfJFs6qct4AMJCrAoXQFLyz
         wuxp4sVhd8zEYtMq3+gsUbz4HdboKqM6V/S8I9e9ZDr5QWJTgC01Qj+6GZfVZCyHCqXa
         Mt8A==
X-Gm-Message-State: AOAM532u/1+l63JofTyNMZAuF6XA95AfmqAtwirSKYEzogG5i8nKRvko
	XocKLl0gk6ISmmxEWT4v1U8=
X-Google-Smtp-Source: ABdhPJyVbKj4sQpQ4YqJOPcXa7/9BeIMD8Rtsk+P0pQ+4P8WJu3nTEz7wWL5jNcG9b6Vu7LEqYamOQ==
X-Received: by 2002:a9d:62d7:: with SMTP id z23mr686143otk.353.1610480813793;
        Tue, 12 Jan 2021 11:46:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66da:: with SMTP id t26ls1071472otm.5.gmail; Tue, 12 Jan
 2021 11:46:53 -0800 (PST)
X-Received: by 2002:a9d:d10:: with SMTP id 16mr706279oti.101.1610480813303;
        Tue, 12 Jan 2021 11:46:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610480813; cv=none;
        d=google.com; s=arc-20160816;
        b=W0LlN6KQzFmievYrz8z+wYt66+SlVh2wER24vIaGA9u8rbBlPQm4UI/WfyNfOaKKlj
         jTYZEkGbAVYgy88Pz4Vg202gi89IbVhd6wi5RknRA1IeOnUx5ODUiYbVK63SkhyKpXPo
         dys01jXM32okjMA0Gn8oB183fB1rf7xnqgDY4UYHebtxFw3KtoGKdbm+uB/im6DpXOlJ
         mgq2mDU40OFWUKu4Iv504PWIoih0rsqfsupGnK2jHqhTMT2Sa0Cyh+d9PBbSJpMYmFST
         fwnDUMTXAhbIfJ7dVsHNS6muRPrhQPLDQiDqnDmn+xy8THVFLEv6YJ04/ZZOdkJcsBFk
         cqag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=575K5Wa01BXuSX5wfEbu2mOnTk5h9ngYJOt0hPIiDbE=;
        b=vkx/APmTSzlz24E1WvITTpjlBjB36v5TPRDY78s9PGhe2FyYhiT43rM91cts6VeZyZ
         nhWMSSwlTvvGWEotY2D6TGefZmXnHhXDDQv/L0SOMCNo3hmH8Xhnm5XAAnkOkp09R0w3
         +z+zlLVHr5wieuSCRqZRMWfnjzUsaigfX6xvOX6atk9F5jtFp7eXxcacGRY0EJMOFGsE
         r/Yk8o57Be3MJviH4/qxYWkn6NW8IfXkKVLhF2vdNlf9r8GAdEf8krreSsiBJFBeGsj0
         moD/pEZA+DmW3LC2FeREdLCSXynpq3y8mN6C7Bjmwv/fCoGuk+RbsN2yEKBQEsBx3370
         SpBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uWIQwzpl;
       spf=pass (google.com: domain of 3rpz9xwwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3rPz9XwwKAKMQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id l19si278957oib.3.2021.01.12.11.46.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 11:46:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rpz9xwwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id 22so2232900qty.14
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 11:46:53 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:4390:: with SMTP id
 s16mr1155717qvr.28.1610480812711; Tue, 12 Jan 2021 11:46:52 -0800 (PST)
Date: Tue, 12 Jan 2021 11:46:24 -0800
In-Reply-To: <20210112115421.GB13086@zn.tnic>
Message-Id: <20210112194625.4181814-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210112115421.GB13086@zn.tnic>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v4] x86/entry: emit a symbol for register restoring thunk
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Josh Poimboeuf <jpoimboe@redhat.com>, Jonathan Corbet <corbet@lwn.net>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Joe Perches <joe@perches.com>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uWIQwzpl;       spf=pass
 (google.com: domain of 3rpz9xwwkakmqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3rPz9XwwKAKMQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Arnd found a randconfig that produces the warning:

arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
offset 0x3e

when building with LLVM_IAS=1 (Clang's integrated assembler). Josh
notes:

  With the LLVM assembler not generating section symbols, objtool has no
  way to reference this code when it generates ORC unwinder entries,
  because this code is outside of any ELF function.

  The limitation now being imposed by objtool is that all code must be
  contained in an ELF symbol.  And .L symbols don't create such symbols.

  So basically, you can use an .L symbol *inside* a function or a code
  segment, you just can't use the .L symbol to contain the code using a
  SYM_*_START/END annotation pair.

Fangrui notes that this optimization is helpful for reducing image size
when compiling with -ffunction-sections and -fdata-sections. I have
observed on the order of tens of thousands of symbols for the kernel
images built with those flags.

A patch has been authored against GNU binutils to match this behavior,
so this will also become a problem for users of GNU binutils once they
upgrade to 2.36.

We can omit the .L prefix on a label so that the assembler will emit an
entry into the symbol table for the label, with STB_LOCAL binding.  This
enables objtool to generate proper unwind info here with LLVM_IAS=1 or
GNU binutils 2.36+.

Cc: Fangrui Song <maskray@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1209
Link: https://reviews.llvm.org/D93783
Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=d1bcae833b32f1408485ce69f844dcd7ded093a8
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Suggested-by: Borislav Petkov <bp@alien8.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v3 -> v4:
* Add changes to Documentation/ and include/ as per Boris.
* Fix typos as per Josh.
* Replace link and note in commit message about
  --generate-unused-section-symbols=[yes|no] which was dropped from GNU
  binutils with link to actual commit in binutils-gdb.
* Add additional notes from Josh in commit message.
* Slightly reword commit message to indicate that section symbols are
  not emitted, rather than stripped.

Changes v2 -> v3:
* rework to use STB_LOCAL rather than STB_GLOBAL by dropping .L prefix,
  as per Josh.
* rename oneline to drop STB_GLOBAL in commit message.
* add link to GAS docs on .L prefix.
* drop Josh's ack since patch changed.

Changes v1 -> v2:
* Pick up Josh's Ack.
* Add commit message info about -ffunction-sections/-fdata-sections, and
  link to binutils patch.

 Documentation/asm-annotations.rst | 9 +++++++++
 arch/x86/entry/thunk_64.S         | 8 ++++----
 include/linux/linkage.h           | 5 ++++-
 3 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/Documentation/asm-annotations.rst b/Documentation/asm-annotations.rst
index 32ea57483378..e711ff98102a 100644
--- a/Documentation/asm-annotations.rst
+++ b/Documentation/asm-annotations.rst
@@ -153,6 +153,15 @@ This section covers ``SYM_FUNC_*`` and ``SYM_CODE_*`` enumerated above.
   To some extent, this category corresponds to deprecated ``ENTRY`` and
   ``END``. Except ``END`` had several other meanings too.
 
+  Developers should avoid using local symbol names that are prefixed with
+  ``.L``, as this has special meaning for the assembler; a symbol entry will
+  not be emitted into the symbol table. This can prevent ``objtool`` from
+  generating correct unwind info. Symbols with STB_LOCAL binding may still be
+  used, and ``.L`` prefixed local symbol names are still generally useable
+  within a function, but ``.L`` prefixed local symbol names should not be used
+  to denote the beginning or end of code regions via
+  ``SYM_CODE_START_LOCAL``/``SYM_CODE_END``.
+
 * ``SYM_INNER_LABEL*`` is used to denote a label inside some
   ``SYM_{CODE,FUNC}_START`` and ``SYM_{CODE,FUNC}_END``.  They are very similar
   to C labels, except they can be made global. An example of use::
diff --git a/arch/x86/entry/thunk_64.S b/arch/x86/entry/thunk_64.S
index ccd32877a3c4..c9a9fbf1655f 100644
--- a/arch/x86/entry/thunk_64.S
+++ b/arch/x86/entry/thunk_64.S
@@ -31,7 +31,7 @@ SYM_FUNC_START_NOALIGN(\name)
 	.endif
 
 	call \func
-	jmp  .L_restore
+	jmp  __thunk_restore
 SYM_FUNC_END(\name)
 	_ASM_NOKPROBE(\name)
 	.endm
@@ -44,7 +44,7 @@ SYM_FUNC_END(\name)
 #endif
 
 #ifdef CONFIG_PREEMPTION
-SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
+SYM_CODE_START_LOCAL_NOALIGN(__thunk_restore)
 	popq %r11
 	popq %r10
 	popq %r9
@@ -56,6 +56,6 @@ SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
 	popq %rdi
 	popq %rbp
 	ret
-	_ASM_NOKPROBE(.L_restore)
-SYM_CODE_END(.L_restore)
+	_ASM_NOKPROBE(__thunk_restore)
+SYM_CODE_END(__thunk_restore)
 #endif
diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index 5bcfbd972e97..11537ba9f512 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -270,7 +270,10 @@
 	SYM_END(name, SYM_T_FUNC)
 #endif
 
-/* SYM_CODE_START -- use for non-C (special) functions */
+/*
+ * SYM_CODE_START -- use for non-C (special) functions, avoid .L prefixed local
+ * symbol names which may not emit a symbol table entry.
+ */
 #ifndef SYM_CODE_START
 #define SYM_CODE_START(name)				\
 	SYM_START(name, SYM_L_GLOBAL, SYM_A_ALIGN)
-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112194625.4181814-1-ndesaulniers%40google.com.
