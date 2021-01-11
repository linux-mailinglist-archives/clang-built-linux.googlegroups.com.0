Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNPO6L7QKGQEH6WLZ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CDC2F20F0
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:38:14 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id c7sf57459iob.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:38:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610397494; cv=pass;
        d=google.com; s=arc-20160816;
        b=XSDi29xEahbA2fjLpIRtf3pMrg/EJunun0eRh51VJF4T41FUeTmkI+2UkVX7OvUhn5
         xZ7JoudqoZvHCaMhLp/ia6ppDNOpamHn5bRn0BQXbghnMQ6SDkLngfD10jnFqzZ3vd8E
         oAu1pSc7m/9elQikohR0QQ97vL4jDxpCzEjmg8O5lYtulMGXOuyEE9ryzNsH4cdRwuDH
         veoQBFAmOESBwp55Ffk4B2bZlqBPMWXNmFp9d7eRFT0COgFnCxdTloOlfYBeFSMrBCyI
         Mk6Y7JHb0gqh7ajfX/mLWnVFGKYtpdJ4EINEW+PcrDzseKWac6gBZ/TrXabluGD6hh6R
         cSCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=cef+CbnjP2h8iOmjjR2DPysI5uWd7rk4igwB+ySkgMM=;
        b=iGLnRFSk3oz1mcujE7Omaor0gK8sw+N3lQHpp2MCKQjL3r9gqz5TvA4cBLukOE8jGY
         xH5ChI97LD1R7pG01wQ6JQk7t3PW185AgMx4IbAXjia1hjrq8MgIkb+RlD0mNHQVcRTq
         RQAiyuWHCha/MPT6jKgEFSiT7+ooKOau0pGdrVKb7D95ui3Z2fylKq7w0uzOyjrorMus
         ob8oHFzTe2iookfrckB1yBj747605KanRt7XBM9RKA8T3gNGOZRY9lcA+zIBL9meIOHI
         V7tlaDEXxdnXERb9u/eg5x1o24WSSY3kVwSUjRIdDrBEo31sQ2vb3xy3PJ9Et5xeBaLb
         wVHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jqdYj09x;
       spf=pass (google.com: domain of 3nlf8xwwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3NLf8XwwKAJsI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cef+CbnjP2h8iOmjjR2DPysI5uWd7rk4igwB+ySkgMM=;
        b=H9NgGNoWXUX9hR2rF7ZVay5hiDDSQSDhqXxDr0UGWgd1/sm62yC/+VXrVZptk2xUuf
         mku2ekslAzx9X55aI501S9VREJsN8+bXRv9pxtqJuVHtsqQv7yoi+sQtILYwkY5YHR7O
         hXUZ4NVGjNVSx4Sco8lcxxYNUeVEEYKQgdRHWQS8UPTtOp/Pw9GqXR6tabRDnqRTYWbO
         ksLLxO20UpVknYaSWqjUprahzR6rXI+kk0jlXv3QhUL2y3GF/MDXpGUCDnbL2ofhYq3Y
         Dxw2KiCpS2emQa1fGzvmaNRqhOYuJXDROEuinTwQJqy3jdFquHi1o+wvXnTOvjazyxGR
         nSYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cef+CbnjP2h8iOmjjR2DPysI5uWd7rk4igwB+ySkgMM=;
        b=b+0e/OfsnapnpooXJtoPfd6h7+CVOx1B6CCxFATo0EwaWaS2LcKrFz9RQ9bB6tYVdi
         HlZwnh4jEGxhD3zkjIWA5F+9i0fWxM3VdrwCO7X6Pe7kkjApGs28n8phq62LgNXD4uwL
         jx0XOefvUBR23z8HhZtQNB4MpA+zlFGWTj2vVBINmy9v9FB/5tU1FcAbJ8CbUBzAj2su
         mY0jReyJlaWCf4cvf1nCd/XVb4Z9oQXXbVQn8Co5kXtTi+x09GeES3jFC4Ovky41sCaC
         1zFCr0Vuur622EzRjYaXDawsmzONZaPw/QPc0FJZ9ckVCJ6stbqBKcGKAIQSTJwK1gaC
         fsgQ==
X-Gm-Message-State: AOAM531TZ84lR8DvLNgenrZcG7FP7BSXb0LZPZKgDWlEwMl5pcLo/H+4
	CshjSrOj6tNosP2TMeKzSNs=
X-Google-Smtp-Source: ABdhPJzdq5vAHUPsu+nK9n3uNL5Jwhit8mNplkdxidKhLdXS5/rMftOih3+gMKmEM+2SEipOQxXqxg==
X-Received: by 2002:a92:1f9b:: with SMTP id f27mr885827ilf.190.1610397493959;
        Mon, 11 Jan 2021 12:38:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:8784:: with SMTP id t4ls173973jai.10.gmail; Mon, 11 Jan
 2021 12:38:13 -0800 (PST)
X-Received: by 2002:a05:6638:bc1:: with SMTP id g1mr1322677jad.27.1610397493457;
        Mon, 11 Jan 2021 12:38:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610397493; cv=none;
        d=google.com; s=arc-20160816;
        b=rnX9dGqj7niwU8k5h7JNu7zgYVYk7oIeJ1nrWNzHrJJwpg5n/iefVWnvXqkBtq9pWe
         Nkc59sVzl/Qwf6Y3lTUcJ/vctvi4e/aoPiDbW7lPp3nOTvtd/tPZfPFDNVcAS4kxrz/J
         JPztgO1r7k7VbBTJzN279l1NjNrud8lOINRXII04wFE+9/L5KFYZoM9wwasfwDlUNFGq
         99wjaNhKm/qe9P2jHS9eKISLuROaRg49HG9hy8++mXDuPPPTTUpGIdeGf8CNlwkinSWF
         JYzezwr5M/lw/dDRxo9mbLdcvC4KLFYn9UXGrYOSdJ2+2velMmqLYwZVwpbj9FYTChLv
         yE4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=MNO0aT79NlBMBpFFFhrGm8b8k1yazD1r5qWQUpbsXR8=;
        b=SYsbmB4yj3dbZoS08yT8lzgivGNt+b5IAk1KEqjUn6mOJtiqkPjh2NTJrJ8bPWPpk5
         OXSuDGkduCBoOSyUJrUdddLAF2jatZ4NC3ibZPMg3d6gk6UQz03K05DMRrnvI6sYsR3z
         8SQGKWMX6xp4Mc6GkADkem8qJdRNFEM62eyxVcb3t/hmkE6yhVaZ12hCV34zCm43fCvA
         DALELRC6aWeS27dmPdkhM9+oUNOzwPIZgKEaFUAOOuSsvCv1YfKzEjfDNJxrUPB5fvye
         Eg5jlxxNI7l/nPCA1TEJse+Txenj15m6GsRDFY6YR5uL1ZqSC1TS1aHd7Cs+cGCoSyR+
         2wvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jqdYj09x;
       spf=pass (google.com: domain of 3nlf8xwwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3NLf8XwwKAJsI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id c14si88751ilk.5.2021.01.11.12.38.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 12:38:13 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nlf8xwwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id a11so207993qto.16
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 12:38:13 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:302:: with SMTP id
 i2mr1512072qvu.14.1610397492970; Mon, 11 Jan 2021 12:38:12 -0800 (PST)
Date: Mon, 11 Jan 2021 12:38:06 -0800
In-Reply-To: <20210106015810.5p6crnh7jqtmjtv4@treble>
Message-Id: <20210111203807.3547278-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210106015810.5p6crnh7jqtmjtv4@treble>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v3] x86/entry: emit a symbol for register restoring thunk
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jqdYj09x;       spf=pass
 (google.com: domain of 3nlf8xwwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3NLf8XwwKAJsI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
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

when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
notes:

  With the LLVM assembler stripping the .text section symbol, objtool
  has no way to reference this code when it generates ORC unwinder
  entries, because this code is outside of any ELF function.

Fangrui notes that this optimization is helpful for reducing images size
when compiling with -ffunction-sections and -fdata-sections. I have
observerd on the order of tens of thousands of symbols for the kernel
images built with those flags. A patch has been authored against GNU
binutils to match this behavior, with a new flag
--generate-unused-section-symbols=[yes|no].

We can omit the .L prefix on a label to emit an entry into the symbol
table for the label, with STB_LOCAL binding.  This enables objtool to
generate proper unwind info here with LLVM_IAS=1.

Cc: Fangrui Song <maskray@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1209
Link: https://reviews.llvm.org/D93783
Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html
Link: https://sourceware.org/pipermail/binutils/2020-December/114671.html
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
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


 arch/x86/entry/thunk_64.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

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
-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111203807.3547278-1-ndesaulniers%40google.com.
