Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBYPEU6AAMGQEIMGNTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6CA2FF73D
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:10 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id h63sf467011vkh.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264610; cv=pass;
        d=google.com; s=arc-20160816;
        b=XDSdc6fNkhGSP9fc8rx/RoByo+Vh8kKxc5TdYG7EnCKLfzYxZQzqC+ar04la3fjX07
         p/rtBZQbs0EncId1NICI3SfmV8uhU/gPK2uKN7tTDpM+1q9c+fX1dmjos5MUS/0QZZ07
         dPvAwR3xp2HH49txhE6vtZJRZLpS2p4MZwxKXvfLD4ZdBHiRQp94Xt6m1TapM5xmFrQB
         GF0e7/pwEuFiNerRnHHwDlKTZKFZDkaOZtXfPiDUeEYxY29wMWcM26UuVyzGlsvuLepi
         Y98muGGvu3VWcbjjs3FdkRXyXy19uh73MonN2XabVWGDUdNh/IY0DN1ss7f01WWrtqym
         S+Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5A70cngF5nd6kafJ+/osuP+AaeANDhs+o2+6bfLNbe4=;
        b=xI+9DJlIPKJT273jzIHo1ydpcXQhYNKzRxturqV7+1oiGhaeJFx58KAHo5bCc9jSWc
         bzce0zCRU1JX+SuI1RzL29lcnlz1lboCJUF9ANGCFwaGMB0VTCFRJWs+h+tVv0OgXIg5
         nPbqCzIECAuWbgSc5Paj1XSlLMtX+ri0L3rJ3vKi3zte19762WxY6WoPOcI5s6h8zdty
         sRqSYZJcBVx/4+COR75efDdAVSizAiCbcByhmZCuT/99o3asxh6VTNnOGTlbQPdl+IcB
         7qzeWTDdON0JHPP3kv+erVDi3nHZ5rtRBkZpgcu0L9LpxcSIiAWyXKd2eMjAD7Vwajp8
         9zoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="F7H/4Zo6";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5A70cngF5nd6kafJ+/osuP+AaeANDhs+o2+6bfLNbe4=;
        b=ppL4kZvh40fxZA21leF6BgOB13Tiz+Q3s7m+G2bjXFLUDrQaXTnzUaNxnBUZOaMZ4h
         g1cmyJNFRmfCuXYIa0zuX4nPFYw5DnQnE/kMEDN6TuX2GLgst+8dWDKIqGh+xAGGvcvF
         sdgNwcvrZ3r4qegIPjcPejijrKFbBpTnsTMkqpwg9sJWpJRRgNRu/t+8Vin+Tj89K5r7
         EkZJsGHO9Pvt+rVSLUTM4Nc9cq8o0R6GZ4OiSdW3tVtTtAv3tCDa2htFSazqTN2CKdMV
         AclVPHlFTNpJEEXcbwrp71dzJnsbrLg2xHDNaUsC2xQt+LKfAfBZvnSMyoi4FmDfTAfd
         Sv+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5A70cngF5nd6kafJ+/osuP+AaeANDhs+o2+6bfLNbe4=;
        b=kXygGZWsiX3LNUVYCzNAul4AF3TXX/h3H4CGSLvry53DJ1oQu5U5t6WKCTgJR8XUvE
         PGBHlAP2SN3cZ7/szwgnhsuHObcJpkDKWeV0oHsval/KDhRM5qVSWY6LCE2odvw1Uyrz
         2NB0C/k/lvAseAZAMfy+K/Rh8T9U3qO9okrFSUhCp0+7wG4ssz0nUZUCA1ne6qIACcS3
         bmPpJyiy+JzlcYjEsoIaksZ1jpCM+4OHUkJXc8Cgou4qxwmCmQSEvS3TgIRQf+e/CCA4
         2Ii08oZ8JoJHJvOUYSwzRgZQGYlFpVjFFMVgjO1OAMqz+AQ8Cl3xZR4v3LsPGEiXBczJ
         KvSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330Y4xtjKxbmK87UkvK4Q2/wZ/J3nlhkwJKQUaWNjtw+siOGgCe
	Q/2o0U/82PMskSRh+ACPPK4=
X-Google-Smtp-Source: ABdhPJwsGAvGB0a81f665WkkAQmKJWGtA7NzCNAbhWAjUlvaV0xzhJTU+179jgyLmJhfkTImmX4qDQ==
X-Received: by 2002:ab0:43a7:: with SMTP id l36mr1536839ual.106.1611264609831;
        Thu, 21 Jan 2021 13:30:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls512769vso.9.gmail; Thu, 21 Jan
 2021 13:30:09 -0800 (PST)
X-Received: by 2002:a67:3093:: with SMTP id w141mr1297697vsw.27.1611264609379;
        Thu, 21 Jan 2021 13:30:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264609; cv=none;
        d=google.com; s=arc-20160816;
        b=0oBqs55zUv6nkBBIuDCeon2+nxM1i690vJnSuwP4XP5SoJ7Cg3Q0IQ0dzJKiAooOA4
         sjKNwv23WF7uXEW7dvQXBPfOOUHj+oL2JSp0rMKKn9LDAU4NeTvHv8GUX3kUImu9LqFY
         X6qgaov1/GTcvxIOR5SbE+Mfqt0VErNG0hOhAGqlv9dBwxRJfsXbclqXzTcS+K2RM1ek
         1JJufSHPm0aOIaBqs8PasZrYnuv644fJlEiyKZfawFoCOY/bFIk1FEJbRp1uYI8oE27U
         9QOXjaEUn9a+CYVFZcUEbVaXwmup2NdzmWCoh0vc8GwIKE6v8CpgfceCuu5PVqhPwyIT
         0J6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S3opx2JJjfcsPTif2QvbRFU9DxzEiSNNS76o8Sw7znw=;
        b=mChMntyPLGRrt50z6y0J5q2i8fhOWrYI/nxS0S2FGtnlrwU+TjQVAtqkEv6BQjhVuf
         2K/t/RtOhiNX1yuXo3Hb684EzgyhJWebPY1VaCET50G+yAmo7FzVeCemTgGS7qPJhfcN
         NiLztLIqyzTvROUoM5We3mDU9cf+J5fdfbDVkywMo65ytAS92iq1kul5U4SiB2fpEYbP
         Q7rz+mcf2GuGm4fuaUGGulcW4biUk9VAvywFMYYZbx1o/Z9PlEM9LhmD1F0OyxOT5lQ5
         Dq2MeX3oVqm/G4QKImEEq0DREk4cDM4sOTgPY9SZgHEMjBOdA2ITNJf5h8k9w7lu7hUE
         F6MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="F7H/4Zo6";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d25si278270vsk.2.2021.01.21.13.30.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-yqRvEgSNMeauqYi6MvyFAw-1; Thu, 21 Jan 2021 16:30:03 -0500
X-MC-Unique: yqRvEgSNMeauqYi6MvyFAw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA3C310054FF;
	Thu, 21 Jan 2021 21:30:01 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 595901992D;
	Thu, 21 Jan 2021 21:29:55 +0000 (UTC)
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
Subject: [PATCH v2 06/20] objtool: Assume only ELF functions do sibling calls
Date: Thu, 21 Jan 2021 15:29:22 -0600
Message-Id: <0e9ab6f3628cc7bf3bde7aa6762d54d7df19ad78.1611263461.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="F7H/4Zo6";
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

There's an inconsistency in how sibling calls are detected in
non-function asm code, depending on the scope of the object.  If the
target code is external to the object, objtool considers it a sibling
call.  If the target code is internal but not a function, objtool
*doesn't* consider it a sibling call.

This can cause some inconsistencies between per-object and vmlinux.o
validation.

Instead, assume only ELF functions can do sibling calls.  This generally
matches existing reality, and makes sibling call validation consistent
between vmlinux.o and per-object.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 36 ++++++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 14 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5f5949951ca7..b4e1655017de 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -110,15 +110,20 @@ static struct instruction *prev_insn_same_sym(struct objtool_file *file,
 
 static bool is_sibling_call(struct instruction *insn)
 {
+	/*
+	 * Assume only ELF functions can make sibling calls.  This ensures
+	 * sibling call detection consistency between vmlinux.o and individual
+	 * objects.
+	 */
+	if (!insn->func)
+		return false;
+
 	/* An indirect jump is either a sibling call or a jump to a table. */
 	if (insn->type == INSN_JUMP_DYNAMIC)
 		return list_empty(&insn->alts);
 
-	if (!is_static_jump(insn))
-		return false;
-
 	/* add_jump_destinations() sets insn->call_dest for sibling calls. */
-	return !!insn->call_dest;
+	return (is_static_jump(insn) && insn->call_dest);
 }
 
 /*
@@ -774,7 +779,7 @@ static int add_jump_destinations(struct objtool_file *file)
 			continue;
 
 		reloc = find_reloc_by_dest_range(file->elf, insn->sec,
-					       insn->offset, insn->len);
+						 insn->offset, insn->len);
 		if (!reloc) {
 			dest_sec = insn->sec;
 			dest_off = arch_jump_destination(insn);
@@ -794,18 +799,21 @@ static int add_jump_destinations(struct objtool_file *file)
 
 			insn->retpoline_safe = true;
 			continue;
-		} else if (reloc->sym->sec->idx) {
-			dest_sec = reloc->sym->sec;
-			dest_off = reloc->sym->sym.st_value +
-				   arch_dest_reloc_offset(reloc->addend);
-		} else {
-			/* external sibling call */
+		} else if (insn->func) {
+			/* internal or external sibling call (with reloc) */
 			insn->call_dest = reloc->sym;
 			if (insn->call_dest->static_call_tramp) {
 				list_add_tail(&insn->static_call_node,
 					      &file->static_call_list);
 			}
 			continue;
+		} else if (reloc->sym->sec->idx) {
+			dest_sec = reloc->sym->sec;
+			dest_off = reloc->sym->sym.st_value +
+				   arch_dest_reloc_offset(reloc->addend);
+		} else {
+			/* non-func asm code jumping to another file */
+			continue;
 		}
 
 		insn->jump_dest = find_insn(file, dest_sec, dest_off);
@@ -854,7 +862,7 @@ static int add_jump_destinations(struct objtool_file *file)
 			} else if (insn->jump_dest->func->pfunc != insn->func->pfunc &&
 				   insn->jump_dest->offset == insn->jump_dest->func->offset) {
 
-				/* internal sibling call */
+				/* internal sibling call (without reloc) */
 				insn->call_dest = insn->jump_dest->func;
 				if (insn->call_dest->static_call_tramp) {
 					list_add_tail(&insn->static_call_node,
@@ -2587,7 +2595,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 
 		case INSN_JUMP_CONDITIONAL:
 		case INSN_JUMP_UNCONDITIONAL:
-			if (func && is_sibling_call(insn)) {
+			if (is_sibling_call(insn)) {
 				ret = validate_sibling_call(insn, &state);
 				if (ret)
 					return ret;
@@ -2609,7 +2617,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 
 		case INSN_JUMP_DYNAMIC:
 		case INSN_JUMP_DYNAMIC_CONDITIONAL:
-			if (func && is_sibling_call(insn)) {
+			if (is_sibling_call(insn)) {
 				ret = validate_sibling_call(insn, &state);
 				if (ret)
 					return ret;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0e9ab6f3628cc7bf3bde7aa6762d54d7df19ad78.1611263461.git.jpoimboe%40redhat.com.
