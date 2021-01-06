Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU4P2T7QKGQEQ52FTPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2492EB6FB
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 01:44:05 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id c5sf710219plr.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 16:44:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609893843; cv=pass;
        d=google.com; s=arc-20160816;
        b=wbWq/gucC5D2a03zNDuBHL/1wrD3mMA3zsNFLo0IYqimI4oHqOW62vpxZhmpUFIont
         en6iGgqCE+8ZnEHQOliRjubQ6EsraV6KpopxS9nY9HJ4UD1jHDfN+PhfO0fwQ17r5NyT
         GXJYSpHXYnuoEL+zVOYfSU+R83SRcWvN9ibjLO7E/LQia7lykvpmYwdMU5FMb3rjkzkE
         cyje/9qvdUADEH6rzAQhtkYKrnJxtPJwCNkMhl9un8wYgtsMD3DrNfBMiy6z7NyhmyU2
         JBmEajLNrG+sm5SPH598pcXxWXYG089GZ+MAzUYUbvqqNl2FJH9+gh6PA4OqWt4wRdCN
         KWTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=faZMqVknzZSd9c93subBLUTWPpQx7V8HzeY/GFq0ofs=;
        b=qktXyCLcCAGP2uUlsk0WiWCM0wTK6K2lVzT5psvWIpMPjvZutj7LrQdp9vqFLq5Yfw
         lAMPPden0nxcAp+dSyAlWoElM8UIDGEYyP5MPV0SS9E4214XH66ZpDfV22reVkkXB4PN
         sHTPSgi//ox4u64Q0NmqcFiV39yonzx/bUApSIH0Y3F5dfFb82w/cBZ6r37uqmSCnJM5
         S/vKQ8XF481J8/S1GByMvqRdniM8vnznCaXuZ9kh4YzaZ3/y5D5nAu85Q5MzF5tTuBPB
         8kHFqVQfsqX8Sd325fkBIVTpGgisOMmON1DnBVdBkSgk6ZOCmD+BxpsMGTDcWYwkqraj
         5dXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kWMB4DXa;
       spf=pass (google.com: domain of 30gf1xwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=30gf1XwwKALsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=faZMqVknzZSd9c93subBLUTWPpQx7V8HzeY/GFq0ofs=;
        b=sCUKuM6cTqxn04r6tMaAtMSYXLmaqZ8//AiR5Xv6UapEfU1GyOLz5/qNNGgtMWYFwZ
         YzZN4D/ttATsAwDL8YYjeq1zpMEkSNybLGubqYI0CcFDDYC3uDx8GfTbcTvEL1ZnlX61
         yUinYHODKOZhWixISxnXZ38QvlhZ+aMcDvSkdbY4LCG3cckmYW1J2Mh9sm+07+JFwxD1
         /vhw2GeTE9T8kZcpmqu8EIyZOMoWF1O2XaGaSq6y2GUdgAnt9QJl//5K+PVEGmQ2ljZy
         cgZbDEPuSZovTN48UZ2OREAxQLdsUuYorNSq/wK5eUGgGv/fdmW1jyZmqPwoGOEVFaz+
         rYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faZMqVknzZSd9c93subBLUTWPpQx7V8HzeY/GFq0ofs=;
        b=ckhNj4e1wQKwajOzsE/iCe5hADk5xGYB2GJ3rF0quSrQ58FC2/NsKP70IG77fLLXI/
         603S1MM1UFMFJDpyiAqQgCYHxHRiBTrM9hK828hW4dRfAEZOm/IpRyxtiBK1dLAHfWXr
         pPJDLdD31jxhLzgukWzvdfxdEMSOjh+gEmPogjtXxgwxoSIUXXiwEaceghGg+l4uOy4+
         SrqVGzYqPXDfGn2u0q6ZQ650tjmBqqq+MuY3+5F2HnMe7h0bGUhf6jarcJbzI8x8idNI
         Y8EAFwPBne5QgrjWuE04JicCB8E9mTQoJOneTKl4g9G91YcRXQrdm2iej/exMJZnbOcn
         q0bQ==
X-Gm-Message-State: AOAM530JAVk7CeQapVQkTKkYOSucV5WNyAc1KJfZWZDOMMpsc1LB/Lho
	yRUzQt3kj/GEjegYufDsYi4=
X-Google-Smtp-Source: ABdhPJzxPdE2aXqZkrlwil8S76Gwt0Uqj7I7jdpsA+eKm8TKvUBFdzzdpzms/0PZkW5w4FSGZx9jWg==
X-Received: by 2002:a05:6a00:1623:b029:1a4:e935:87a8 with SMTP id e3-20020a056a001623b02901a4e93587a8mr1699176pfc.26.1609893843738;
        Tue, 05 Jan 2021 16:44:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls584989plq.7.gmail; Tue, 05
 Jan 2021 16:44:03 -0800 (PST)
X-Received: by 2002:a17:902:7e85:b029:da:726a:3a4f with SMTP id z5-20020a1709027e85b02900da726a3a4fmr1648721pla.65.1609893843044;
        Tue, 05 Jan 2021 16:44:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609893843; cv=none;
        d=google.com; s=arc-20160816;
        b=R8LRRheDj99GjTidIGtYS6/O14awCpNXo6Ueyr1jdm3Umw95xvXd3y2EL6Mbh5cRJ2
         EcWyzxCVui+I4qLVRC0ttuocO12uo2kv3zZ8TmYQPOAY4JLEiUA2AUiv9CYDDR36PdGP
         EGAtct1KpTwdRBXzqq88emYd3xpIJ0JMTLjdmnr+voYgdFU6484esnANNBZ08GhBKN8n
         TSePGJ2bM3lOGRLp8dBw7zf1qriJThN6rhVjPjYlxuYGXtzmPE/V1ttDZveSY3KEjix7
         bJQkdHiB3kStvoFazbIhBBTsmNkAWIEYfiX58xGZD3an+QTrD1PQkbnM5W1dl77VZO0q
         rteg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=uCHOLSbfrLWN2IaWDOcuRaXgqPPYGeOtLMrp4qq7vB8=;
        b=i3UhFvViQ7BJhPatmU65l1KQ/zOcPcQ8MYT9Ej+wiMa0ls8bFqOJwH7XzYiaNN8qTj
         Iw8onxJ7sLkyxgZRuc/K9HExhzJmMP/83AXI4FaIYfD5doEJ8uu884HerfMB4nQQ/ZRE
         3v14NmrePKQOFpEWfQZq35B96t3CkXezHmR7GYUepHmA64Cj573S36Sqbi5D53dyhi8p
         VqdfHfekCCuL6zXdzzVlU7F7bPQXW0a4EsZNEEobMvoWDf89FVU/DfG5iEdeYwUwcowj
         gBuzFX9qjkTz1ePF28kjhZtlJe0elYfDz0u+p2qi6HX/eXl0z2ig4mkzGczH2M+HQaoJ
         CbzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kWMB4DXa;
       spf=pass (google.com: domain of 30gf1xwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=30gf1XwwKALsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id r2si63397pls.2.2021.01.05.16.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 16:44:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 30gf1xwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id n12so1031222qta.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 16:44:02 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:4888:: with SMTP id
 bv8mr2152043qvb.0.1609893842173; Tue, 05 Jan 2021 16:44:02 -0800 (PST)
Date: Tue,  5 Jan 2021 16:43:51 -0800
In-Reply-To: <20201224045502.zkm34cc5srdgpddb@treble>
Message-Id: <20210106004351.79130-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201224045502.zkm34cc5srdgpddb@treble>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH v2] x86/entry: use STB_GLOBAL for register restoring thunk
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
 header.i=@google.com header.s=20161025 header.b=kWMB4DXa;       spf=pass
 (google.com: domain of 30gf1xwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=30gf1XwwKALsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
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

Fangrui notes that this is helpful for reducing images size when
compiling with -ffunction-sections and -fdata-sections. I have observerd
on the order of tens of thousands of symbols for the kernel images built
with those flags. A patch has been authored against GNU binutils to
match this behavior, with a new flag
--generate-unused-section-symbols=[yes|no].

Use a global symbol for the thunk that way
objtool can generate proper unwind info here with LLVM_IAS=1.

Cc: Fangrui Song <maskray@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1209
Link: https://reviews.llvm.org/D93783
Link: https://sourceware.org/pipermail/binutils/2020-December/114671.html
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* Pick up Josh's Ack.
* Add commit message info about -ffunction-sections/-fdata-sections, and
  link to binutils patch.

 arch/x86/entry/thunk_64.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/entry/thunk_64.S b/arch/x86/entry/thunk_64.S
index ccd32877a3c4..878816034a73 100644
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
+SYM_CODE_START_NOALIGN(__thunk_restore)
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
2.29.2.729.g45daf8777d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106004351.79130-1-ndesaulniers%40google.com.
