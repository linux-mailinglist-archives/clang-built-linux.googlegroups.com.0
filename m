Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBYXEU6AAMGQEVI34DJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 093B02FF73F
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:12 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 9sf3462139ybj.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264611; cv=pass;
        d=google.com; s=arc-20160816;
        b=VKlzx8n/3ohD7dYkfaV2P2Kc+TGDFCppJVOMeh8WqalDA5o/Qs2fzYvz7f6rRR22xE
         ESsjR5sj1FjiNeSAGsasDGbZ7VsUiU5/SFfHri+zfWglctV9Y6QNUroXyGqbNupJwjLI
         89mgtJUm6/0SqE8XukXTzTnkfddlA1dAWqF47lrNlOQBOGeTVAby+8WPQXCr7tUmyo5I
         sY/rj6C8x6Yj8mDlCOevAaLbrf6O89QAmZnCcMUhDIqY815Gaq8JeMoiDldLR5fV/eji
         simtf1zDCRODrPoIspW7iNBStA+RP/07a21uJCPuOTPvmb7B1wIAAYcoSZNJkKAs7YDp
         /Cpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VOWrQ1Xsei++aJjrBIy/0HPLB7F7g8HLcBq7T3ZYU3w=;
        b=LSwwCeJnS212nX+sJ1Eo/PDia4w9J2/d7TLleKmCoO0f0HRS5njUDmbrhQfbP1wv2H
         V/Wczvfwf+Gw8111UvwixMkRSQPP5xTdyaJR2dBWsTDzXrO6diTZb1n2k+llJ7mqL7+1
         Z1AMWANEcIcUPcTk5TsLypTKwye6HhB3E4sNJKsNzDrxA/DSMAFXYporx6TZFVv1bctO
         Aguv37+6lo6yU9Zkqj07LMIUhbDUGx3pPHnEcphnPnpxi4IkuH5vRijQe1QOhCvqhceW
         leBdceydq803YD7+eFjHpPZaylX/Gc8HhMeVGCzRaXkprTuPnTUdXII5JnYNIPpDtiej
         W6Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M34IrW6v;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VOWrQ1Xsei++aJjrBIy/0HPLB7F7g8HLcBq7T3ZYU3w=;
        b=O6OLibqQtz+kpvHSQA7d21XaHZU5yiDzZvSYGL7D1FlPzP4Tnf3UNkh3Coewmzc7c9
         jnb9Bs8dw9Ze9rS/07o/aG6cLLF8Cn1Kq79n7EuI3OC33EUHz2VQOcuki/ZV/SsqqoTI
         VO4yg3LtDDiOWffsCIYW8JfOKZ/JWc36J+c14fLjscrtWk54Q/xzMOahZ1wkP5G+SuPr
         xdWOJhMbY9lxrCQTnMBAMBVSJG9/QmdaWchF3ZjZWftgrd9J1ZDj0fxYZ8xM6HP1d2zQ
         xigDCVm00YeBY7vJ5pCsFvdKd63LTTmMzdkh0IQ54iK+6EYSSLJfkCpHoQKgi5oS/hd0
         oG6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VOWrQ1Xsei++aJjrBIy/0HPLB7F7g8HLcBq7T3ZYU3w=;
        b=sK8r4KIuK0if+RYOP55Oa+yK9/Pljk6LzQNjSWxlk/u5OJHW91qCiIG+JaqB/SxpFi
         PbYz66eavQq05++jDblPdYoEAqB+a2tBXq+Sc5SMFqa3TTp+n/O2P/VPfbPOaT74MO9J
         KCpOJ2C8xW8yTrSU0gAAr+VsLfA/eaJCAS2AzgGjW4oF9xfbbIKPiRUCVb6ddCqhZBat
         r62vF+0Qf3m7srIQbvzSXHyM4k5g98aLRt+86GNddVwPf9BfZ8tEemnKJFS/wtZZpP60
         /Auq1S0wrRJo6AHJr7MWEQGp+zNpp0Xn/RIuNHfYZoXzumK4eBpShySdWqDY4PVJcMTB
         mOnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WV5MTLJ3dQRbhc2DgsIggUBGmWuIiKntxysRlv9sY5XJloXxs
	JTo55RKshqTcVte02cuWCbI=
X-Google-Smtp-Source: ABdhPJxLBNy92Q0Aiq8CKpUro8ZMD90utL0Whu/KdymTFo4JamTBUiAZrzX3kkPP0UE2RZ5XULvq+w==
X-Received: by 2002:a05:6902:1025:: with SMTP id x5mr1869125ybt.21.1611264611099;
        Thu, 21 Jan 2021 13:30:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls1943918ybe.2.gmail; Thu, 21 Jan
 2021 13:30:10 -0800 (PST)
X-Received: by 2002:a05:6902:6cc:: with SMTP id m12mr1853679ybt.56.1611264610719;
        Thu, 21 Jan 2021 13:30:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264610; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1xIumnms/gEJcA6z4rbGbL58Ut84TaWKBF1lLd924OkwMiIC9KWl3Q2Mx1fwePCO0
         ingilrBVWj3WzGQNfGHKudF3J2yVefNG0oaeEo/+e8e6Qhe5Yax6uV+/7g/oVoC4Kcx3
         TVCKBh+MQDTQhsLxVjqmWMtrdgzYGedrgL6kpgTwI7rMevX4tOrcqsQNZjNMbruCPU1k
         V3G3u87A6xSRwOfZYbmkfmPiwhIVUQSjc0GoRnMHQDU2Wa5aa2KHk4U1/a5FXSsofMpk
         EbXVxMZBg5G1wdpWDD25FSRI2k8ZBp+OV45GpveLSm5WF5uZQns5VdSeGk5jaLPfo3x4
         Xt3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jZ0EPiPz2f1FZOSllonTuistDsv6uc44zqY6V7yE6jM=;
        b=z27dfMepA+g5wgqIZS0pdieuPzJvc2EBwalxDNcOHQhFyYrwZI5iSdjvjCSvjkfOl5
         0cx0abeR9HIgR8ie361rJDmJC8as3X0KP0wMeA2akdAk6HrUvTVEWMxvdStWHhNER5GI
         hl+xHgLZekws/MmpEbn8rQQwELn/SwIxXYULQs78xksrsnuwpIMlFmPUT2Z15R+weuAM
         5GDwf8vp8JJPjJsXoox4F/U49ZmLbL+r87Fq+WBhVvQuXAMyxxPw2J30UWbJeMN7t66v
         taR3Z4vCP0Ey3H53CNUiiH6zDOzqBiZ8tfhq4p8nW2fWYTPgQuVBIfQUEI9cp7YvZVX6
         S1cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=M34IrW6v;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s187si721569ybc.2.2021.01.21.13.30.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-enlzy85MM12v87yamzA7WQ-1; Thu, 21 Jan 2021 16:30:07 -0500
X-MC-Unique: enlzy85MM12v87yamzA7WQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A472806672;
	Thu, 21 Jan 2021 21:30:05 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 052AC19C59;
	Thu, 21 Jan 2021 21:30:03 +0000 (UTC)
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
Subject: [PATCH v2 08/20] objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
Date: Thu, 21 Jan 2021 15:29:24 -0600
Message-Id: <db9d1f5d79dddfbb3725ef6d8ec3477ad199948d.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=M34IrW6v;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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
 arch/x86/include/asm/unwind_hints.h   | 13 ++--------
 arch/x86/kernel/ftrace_64.S           |  2 +-
 arch/x86/lib/retpoline.S              |  2 +-
 include/linux/objtool.h               |  5 +++-
 tools/include/linux/objtool.h         |  5 +++-
 tools/objtool/arch/x86/decode.c       |  4 +--
 tools/objtool/check.c                 | 37 +++++++++++----------------
 tools/objtool/include/objtool/check.h |  1 -
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
index 6baa22732ca6..9637e3bf5ab8 100644
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
index b4e1655017de..f88f20327bf2 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1404,13 +1404,20 @@ static int add_jump_table_alts(struct objtool_file *file)
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
@@ -1445,22 +1452,20 @@ static int read_unwind_hints(struct objtool_file *file)
 			return -1;
 		}
 
-		cfa = &insn->cfi.cfa;
+		insn->hint = true;
 
-		if (hint->type == UNWIND_HINT_TYPE_RET_OFFSET) {
-			insn->ret_offset = bswap_if_needed(hint->sp_offset);
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
 
-		cfa->offset = bswap_if_needed(hint->sp_offset);
+		insn->cfi.cfa.offset = bswap_if_needed(hint->sp_offset);
 		insn->cfi.type = hint->type;
 		insn->cfi.end = hint->end;
 	}
@@ -1716,27 +1721,18 @@ static bool is_fentry_call(struct instruction *insn)
 
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
@@ -2880,10 +2876,7 @@ static int validate_section(struct objtool_file *file, struct section *sec)
 			continue;
 
 		init_insn_state(&state, sec);
-		state.cfi.cfa = initial_func_cfi.cfa;
-		memcpy(&state.cfi.regs, &initial_func_cfi.regs,
-		       CFI_NUM_REGS * sizeof(struct cfi_reg));
-		state.cfi.stack_size = initial_func_cfi.cfa.offset;
+		set_func_state(&state.cfi);
 
 		warnings += validate_symbol(file, sec, func, &state);
 	}
diff --git a/tools/objtool/include/objtool/check.h b/tools/objtool/include/objtool/check.h
index b408636c0201..4891ead0e85f 100644
--- a/tools/objtool/include/objtool/check.h
+++ b/tools/objtool/include/objtool/check.h
@@ -50,7 +50,6 @@ struct instruction {
 	bool retpoline_safe;
 	s8 instr;
 	u8 visited;
-	u8 ret_offset;
 	struct alt_group *alt_group;
 	struct symbol *call_dest;
 	struct instruction *jump_dest;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/db9d1f5d79dddfbb3725ef6d8ec3477ad199948d.1611263462.git.jpoimboe%40redhat.com.
