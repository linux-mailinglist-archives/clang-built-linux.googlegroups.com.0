Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBWN4QKAAMGQEYFEU45I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id B99DC2F6B49
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:14 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id u14sf3794423plx.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653273; cv=pass;
        d=google.com; s=arc-20160816;
        b=YcsC9xUe85u4nvjsYdEv7s4YvzHtGwPZtZQDDry4fFOfsF3ZetC9kSow6GG4HMfvA4
         NITioeqQ/Z/v2hPs/BctizqzN+8PrljaQLL5gLBK382F+kRt9sNTcGdxKFGqnqTc9P4F
         4yAcFaXzDtx0gVp26LI464or4uGxaDC9nczu54ABgbVRnjTwNjTXQyzMN8+BQagcOqSf
         GEbQJWTlISCd5XAhdAyE0OgWp7JbFWqzWwLgFr+cHNlxwSw3FVhAspzfEspOF8cP2Xi7
         8dtdWU6xONBxx8ePRuw879edgW0yXQwyGdFtHWExPeKbrgaV+L1GcFgnghK0LZnn0HAv
         PYyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IJg2tJDZ2rFhy4b2eTEGWvxH0aV1L8HueTDQzLaXfY8=;
        b=nkpftk60YciSfJWngaxX5dyzanH1l9zMtqFxjNaiFA/z4ZnF+2+NGWZKu9aq8gHMru
         jr0yu9MIgPCLwTO8BiQnfMhWBi966Wnns5XLV8y1cRJ3QH6PVTvf8UaPrVcBwCTUGV9N
         2tIDCXVZpzsBN9lUua/Ux83GW1nLjLdNr9Kz5BthSKsLke15Rcy/97kPfOZ6mj+7/l5Q
         vPS4eAZWI3zR/kJlFj2CiOPETszYqdlPrO9u24Ywe+owrKvWgI9I2nSwW64O+U+nZIV8
         RRKRh+mdzKxYG4TF+LP46o2QRcvLb/z3BgNxuQbDanMS9bnHkXNxSurWsxj2mKeZpcSj
         Wzbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HUg1jw2W;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IJg2tJDZ2rFhy4b2eTEGWvxH0aV1L8HueTDQzLaXfY8=;
        b=j3K2E2eRNy/+HtsfamUMluHTAFrnIllv3BN5P7VQ1R5AirV+C++dZROzsdmuSVAqUV
         M9ELa+XZtFEoC5J1ZX39WUlMFv4qyxsxo4m9GVsd9iY0ZZ3vGt1zhzLkkpTIn063P4c0
         2XZV3KU4J0MIQedPuQLsukGR5jejFM4rAgrlo89S7sy94qYGpd2IC9UBC0GMSksLnCBL
         yPu4HwfhE5T7sbM3dOdZe2eFSLXP87MRz1M8jTN3qmK6QwTrTuTxrBP8QktF1WtBfuqo
         O0faSp5qcAARGGf4yajiFZt6xIX7SxOL4D6rSvG3gEEzf3wItLfLLRPwtnFjzzY/eOqu
         dNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IJg2tJDZ2rFhy4b2eTEGWvxH0aV1L8HueTDQzLaXfY8=;
        b=Evy8LG4TWxD2phD21XJNW5+ZLqE5iaEX5LWW0TErWwkFRaZHrIGC9T3OGBpHwuZ37q
         K5o74TjdHR8MmR6/tIZ9QTwMty3HtbUlod2//JNqAxsiTrXl5XL7YdIFRyxvdqx1xK3e
         NyMxgSLAM3JepRleXbB6dGKwHbkM1oF7UIMgU3xg3smSF9pPdhE0/kxju6poTL4CU8Cw
         Ri+ns1/wkDgy47ovPDDFXG1hTykomsQCoRtN2YgFUA4mH1cTk+cOIkcXPORhAnL6smJG
         M9jT3XZ43lcH+hPaoPDSYpjY4n1pd89R/nl6gXDOttr/LcP+l0PVqwTRCVS4jrljwxpf
         CrUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gvA3rwijxVF3ZArk5sCRd8fIeGvfWvc1PHnh458bjlBGOQdXN
	Zqto4PrchL0ajU9enxM7x9w=
X-Google-Smtp-Source: ABdhPJxMLYzLO1O8Xu3MawYOlmAw/9vX0wR195j7nf2QtmcwNqRO2XxbEysTUgbHinxQdsOM9WqjWw==
X-Received: by 2002:a63:d303:: with SMTP id b3mr8956042pgg.113.1610653273413;
        Thu, 14 Jan 2021 11:41:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls2505151pfb.8.gmail; Thu, 14
 Jan 2021 11:41:12 -0800 (PST)
X-Received: by 2002:a63:1322:: with SMTP id i34mr9059252pgl.282.1610653272699;
        Thu, 14 Jan 2021 11:41:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653272; cv=none;
        d=google.com; s=arc-20160816;
        b=IChOxeBhW63xkw4/sT61LrfFFd0H/erCn5R0QUQU8nTmXYvRA1tl6vsdV9+09JS+k8
         MCv2XxfFdNSTCwozBFtqqC47YM49O8PEV/A2s2OYFVSpLPIN716nM3zYLG7H90rLy/Sb
         n2nB/GmrbSlh2oBZoIy6vmoHgeNMv8YbUVFqAt66jd3+hTras0b/ZI6Y3AQEv45xNMLz
         1v+wMwZORah5j6Ui4MGw2ais4yumce/f1dPy1a7Oap1sbJMGp3G4xDVIfAWy004fryOs
         V0DvxKZDIHzSt0JM49ePqMvt3recjdVt4nKjooYNEwCoTdwxhAaO9M8+9oKOHrAuDOpm
         NA2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NKoLA+ZrYaxw4gOkq2dnL2+nhquG3713TlssJIRwSC0=;
        b=KI0F7R0fGwkfzjNodv1JPYdwEnkpytEHnFRQ1AdhTnjNrVjzylsycL/oGi65ppQvWV
         4Bq7TxEffbT0VflAJV1Wb7HIZAN2SLhUIT+5bcwUUqHjjKO67ADQDyvoxPBlMlKLrICg
         M8aGxWX5R4J44SXr+KCT85r5UVoZRGs5d1KTX2nECRjO+tx/6oAxbTr70qGHc1ulBgfy
         q/qaxWUfZeel20gUplW4mJXzdb4vbPqtp8KfYYHwXHYSEO+E+HoNdwftM3daWdADY+LX
         c9AibPB5DisHRydBNRWMIsfFqkx3h2SFdV5fvKNmMZYlISYUozhbOtJdvBP3Jcgeropk
         aHbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HUg1jw2W;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id 13si434330pgf.0.2021.01.14.11.41.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-8HpPzK8BNLCWje9kbN9bCg-1; Thu, 14 Jan 2021 14:41:07 -0500
X-MC-Unique: 8HpPzK8BNLCWje9kbN9bCg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E51668030A0;
	Thu, 14 Jan 2021 19:41:05 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7F1721001E73;
	Thu, 14 Jan 2021 19:41:01 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH 09/21] objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
Date: Thu, 14 Jan 2021 13:40:05 -0600
Message-Id: <86820e8b33d36ee9c28adcf3d2525f0cd05fb0ad.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HUg1jw2W;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

The ORC metadata generated for UNWIND_HINT_FUNC isn't actually very
func-like.  With certain usages it can cause stack state mismatches
because it doesn't set the return address (CFI_RA).

Also, users of UNWIND_HINT_RET_OFFSET no longer need to set a custom
return stack offset.  Instead they just need to specify a func-like
situation, so the current ret_offset code is hacky for no good reason.

Solve both problems by simplifying the RET_OFFSET handling and
converting it into a more useful UNWIND_HINT_FUNC.

If we end up needing the old 'ret_offset' functionality again in the
future, we should be able to support it pretty easily with the addition
of a custom 'sp_offset' in UNWIND_HINT_FUNC.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/include/asm/unwind_hints.h | 13 ++--------
 arch/x86/kernel/ftrace_64.S         |  2 +-
 arch/x86/lib/retpoline.S            |  2 +-
 include/linux/objtool.h             |  5 +++-
 tools/include/linux/objtool.h       |  5 +++-
 tools/objtool/arch/x86/decode.c     |  4 ++--
 tools/objtool/check.c               | 37 ++++++++++++-----------------
 tools/objtool/check.h               |  1 -
 8 files changed, 29 insertions(+), 40 deletions(-)

diff --git a/arch/x86/include/asm/unwind_hints.h b/arch/x86/include/asm/unwind_hints.h
index 664d4610d700..8e574c0afef8 100644
--- a/arch/x86/include/asm/unwind_hints.h
+++ b/arch/x86/include/asm/unwind_hints.h
@@ -48,17 +48,8 @@
 	UNWIND_HINT_REGS base=\base offset=\offset partial=1
 .endm
 
-.macro UNWIND_HINT_FUNC sp_offset=8
-	UNWIND_HINT sp_reg=ORC_REG_SP sp_offset=\sp_offset type=UNWIND_HINT_TYPE_CALL
-.endm
-
-/*
- * RET_OFFSET: Used on instructions that terminate a function; mostly RETURN
- * and sibling calls. On these, sp_offset denotes the expected offset from
- * initial_func_cfi.
- */
-.macro UNWIND_HINT_RET_OFFSET sp_offset=8
-	UNWIND_HINT sp_reg=ORC_REG_SP type=UNWIND_HINT_TYPE_RET_OFFSET sp_offset=\sp_offset
+.macro UNWIND_HINT_FUNC
+	UNWIND_HINT sp_reg=ORC_REG_SP sp_offset=8 type=UNWIND_HINT_TYPE_FUNC
 .endm
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
index 58d125ed9d1a..1bf568d901b1 100644
--- a/arch/x86/kernel/ftrace_64.S
+++ b/arch/x86/kernel/ftrace_64.S
@@ -277,7 +277,7 @@ SYM_INNER_LABEL(ftrace_regs_caller_end, SYM_L_GLOBAL)
 	restore_mcount_regs 8
 	/* Restore flags */
 	popfq
-	UNWIND_HINT_RET_OFFSET
+	UNWIND_HINT_FUNC
 	jmp	ftrace_epilogue
 
 SYM_FUNC_END(ftrace_regs_caller)
diff --git a/arch/x86/lib/retpoline.S b/arch/x86/lib/retpoline.S
index b4c43a9b1483..f6fb1d218dcc 100644
--- a/arch/x86/lib/retpoline.S
+++ b/arch/x86/lib/retpoline.S
@@ -28,7 +28,7 @@ SYM_FUNC_START_NOALIGN(__x86_retpoline_\reg)
 	jmp	.Lspec_trap_\@
 .Ldo_rop_\@:
 	mov	%\reg, (%_ASM_SP)
-	UNWIND_HINT_RET_OFFSET
+	UNWIND_HINT_FUNC
 	ret
 SYM_FUNC_END(__x86_retpoline_\reg)
 
diff --git a/include/linux/objtool.h b/include/linux/objtool.h
index add1c6eb157e..7e72d975cb76 100644
--- a/include/linux/objtool.h
+++ b/include/linux/objtool.h
@@ -29,11 +29,14 @@ struct unwind_hint {
  *
  * UNWIND_HINT_TYPE_REGS_PARTIAL: Used in entry code to indicate that
  * sp_reg+sp_offset points to the iret return frame.
+ *
+ * UNWIND_HINT_FUNC: Generate the unwind metadata of a callable function.
+ * Useful for code which doesn't have an ELF function annotation.
  */
 #define UNWIND_HINT_TYPE_CALL		0
 #define UNWIND_HINT_TYPE_REGS		1
 #define UNWIND_HINT_TYPE_REGS_PARTIAL	2
-#define UNWIND_HINT_TYPE_RET_OFFSET	3
+#define UNWIND_HINT_TYPE_FUNC		3
 
 #ifdef CONFIG_STACK_VALIDATION
 
diff --git a/tools/include/linux/objtool.h b/tools/include/linux/objtool.h
index add1c6eb157e..7e72d975cb76 100644
--- a/tools/include/linux/objtool.h
+++ b/tools/include/linux/objtool.h
@@ -29,11 +29,14 @@ struct unwind_hint {
  *
  * UNWIND_HINT_TYPE_REGS_PARTIAL: Used in entry code to indicate that
  * sp_reg+sp_offset points to the iret return frame.
+ *
+ * UNWIND_HINT_FUNC: Generate the unwind metadata of a callable function.
+ * Useful for code which doesn't have an ELF function annotation.
  */
 #define UNWIND_HINT_TYPE_CALL		0
 #define UNWIND_HINT_TYPE_REGS		1
 #define UNWIND_HINT_TYPE_REGS_PARTIAL	2
-#define UNWIND_HINT_TYPE_RET_OFFSET	3
+#define UNWIND_HINT_TYPE_FUNC		3
 
 #ifdef CONFIG_STACK_VALIDATION
 
diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
index cde9c36e40ae..6f5a45754ad8 100644
--- a/tools/objtool/arch/x86/decode.c
+++ b/tools/objtool/arch/x86/decode.c
@@ -563,8 +563,8 @@ void arch_initial_func_cfi_state(struct cfi_init_state *state)
 	state->cfa.offset = 8;
 
 	/* initial RA (return address) */
-	state->regs[16].base = CFI_CFA;
-	state->regs[16].offset = -8;
+	state->regs[CFI_RA].base = CFI_CFA;
+	state->regs[CFI_RA].offset = -8;
 }
 
 const char *arch_nop_insn(int len)
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index d833855f3aa8..6636f4fd694a 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1400,13 +1400,20 @@ static int add_jump_table_alts(struct objtool_file *file)
 	return 0;
 }
 
+static void set_func_state(struct cfi_state *state)
+{
+	state->cfa = initial_func_cfi.cfa;
+	memcpy(&state->regs, &initial_func_cfi.regs,
+	       CFI_NUM_REGS * sizeof(struct cfi_reg));
+	state->stack_size = initial_func_cfi.cfa.offset;
+}
+
 static int read_unwind_hints(struct objtool_file *file)
 {
 	struct section *sec, *relocsec;
 	struct reloc *reloc;
 	struct unwind_hint *hint;
 	struct instruction *insn;
-	struct cfi_reg *cfa;
 	int i;
 
 	sec = find_section_by_name(file->elf, ".discard.unwind_hints");
@@ -1441,22 +1448,20 @@ static int read_unwind_hints(struct objtool_file *file)
 			return -1;
 		}
 
-		cfa = &insn->cfi.cfa;
+		insn->hint = true;
 
-		if (hint->type == UNWIND_HINT_TYPE_RET_OFFSET) {
-			insn->ret_offset = hint->sp_offset;
+		if (hint->type == UNWIND_HINT_TYPE_FUNC) {
+			set_func_state(&insn->cfi);
 			continue;
 		}
 
-		insn->hint = true;
-
 		if (arch_decode_hint_reg(insn, hint->sp_reg)) {
 			WARN_FUNC("unsupported unwind_hint sp base reg %d",
 				  insn->sec, insn->offset, hint->sp_reg);
 			return -1;
 		}
 
-		cfa->offset = hint->sp_offset;
+		insn->cfi.cfa.offset = hint->sp_offset;
 		insn->cfi.type = hint->type;
 		insn->cfi.end = hint->end;
 	}
@@ -1712,27 +1717,18 @@ static bool is_fentry_call(struct instruction *insn)
 
 static bool has_modified_stack_frame(struct instruction *insn, struct insn_state *state)
 {
-	u8 ret_offset = insn->ret_offset;
 	struct cfi_state *cfi = &state->cfi;
 	int i;
 
 	if (cfi->cfa.base != initial_func_cfi.cfa.base || cfi->drap)
 		return true;
 
-	if (cfi->cfa.offset != initial_func_cfi.cfa.offset + ret_offset)
+	if (cfi->cfa.offset != initial_func_cfi.cfa.offset)
 		return true;
 
-	if (cfi->stack_size != initial_func_cfi.cfa.offset + ret_offset)
+	if (cfi->stack_size != initial_func_cfi.cfa.offset)
 		return true;
 
-	/*
-	 * If there is a ret offset hint then don't check registers
-	 * because a callee-saved register might have been pushed on
-	 * the stack.
-	 */
-	if (ret_offset)
-		return false;
-
 	for (i = 0; i < CFI_NUM_REGS; i++) {
 		if (cfi->regs[i].base != initial_func_cfi.regs[i].base ||
 		    cfi->regs[i].offset != initial_func_cfi.regs[i].offset)
@@ -2824,10 +2820,7 @@ static int validate_section(struct objtool_file *file, struct section *sec)
 			continue;
 
 		init_insn_state(&state, sec);
-		state.cfi.cfa = initial_func_cfi.cfa;
-		memcpy(&state.cfi.regs, &initial_func_cfi.regs,
-		       CFI_NUM_REGS * sizeof(struct cfi_reg));
-		state.cfi.stack_size = initial_func_cfi.cfa.offset;
+		set_func_state(&state.cfi);
 
 		warnings += validate_symbol(file, sec, func, &state);
 	}
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 2804848e628e..4615ca210fae 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -33,7 +33,6 @@ struct instruction {
 	bool retpoline_safe;
 	s8 instr;
 	u8 visited;
-	u8 ret_offset;
 	int alt_group;
 	struct symbol *call_dest;
 	struct instruction *jump_dest;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/86820e8b33d36ee9c28adcf3d2525f0cd05fb0ad.1610652862.git.jpoimboe%40redhat.com.
