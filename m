Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBUN4QKAAMGQE7A3INYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED982F6B47
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:07 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id e10sf3899405pjj.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653265; cv=pass;
        d=google.com; s=arc-20160816;
        b=W369tbetzPujM0KAYjBGZmOguHfqbRU6gMEIKO201iULGjABlHZF35KvLqoxO84qfO
         9tkH+OqUe2Eyxd/ywWmhc42SxkKKTe676mR6bkn4ylxpBlHUVgSIs2HL2jXIQSJrmdWg
         IGQL/PDJvwLEn7APnj/9i9zfHpYOcAgmm9c7wfb8MDqfyJuRwBPVnfCtQAIZYsLJxTBp
         ZZ9diQNBBqFdMcoOTrsX72RDZYk1FS86OlblDs5hbPzFT4UGHuOz4K0Yl8ruAD199qPq
         Uc51CcLr68Bon21eFolm/KFIq/cEcIekJ6eiExkpvp9cYSmUY7614pxpD9Y8emNUntCl
         6Xqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NCSXiDtWvwieotbppDdfYV1EJWKry679n0CIhtb4hEw=;
        b=1D/G5bkcyJsuN0kledxKmYuUfzw3ZMX/lVqBxty5KJy3Ua1HjwQhvTSgaKPMbHnZDI
         At6jIi1SwvlZmfbfBmTvh9NuERrggaV2oXjKHZ7S9ynHJDI7Up7dEafrMaYqz0y5p1bH
         eQbh/GzJbJGPZHJ97n2nDR71VXs8KHN2Vypms/h3sCRhA15hxFvvSYBpkYyDhiPZqUbZ
         royDn7VTGztqK5ek2BZ8TvS8JboySa+tugmFKyKFF7nRjC4yaammFILkK03prleGZfFE
         FKvXVIpO9fO2e9fFrbidF1+1xaGaL0t1JKjFcEUeQchJLn6DJJegNskxOCRMlcYSIsk6
         mZ6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ODYakcGv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NCSXiDtWvwieotbppDdfYV1EJWKry679n0CIhtb4hEw=;
        b=diTi34fNbzuXHyNOgJB+qVrYtQQ1r3b2zU40S6dg16BL8B0ru3Kl2pzJKrXIwmtelK
         tqnDr+EJ+viWf7Rssa+Q23p6PuYuoAcIP37I9Fc92h0BjH1C/MdlyKxesIslw5h1Q2IC
         MfR7ewIzFNi5kuTsG+qKrEnzXakGpby6GGFPkU2kxlS1VGqU0tSXlfIQ5IAsncWV6NlW
         Ys1bYDdI+ls6IFbVPV7msqMrSlFme7kLwELv9lvZSJdXHOob2XO331GW/IefUhQZbK58
         A5f8fIupnuZdI0Hl4nYhoGP/jtDpAiNO0+hFvd0GSASOh2nbj2B9T1N85LEohbyiVPTa
         9mEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NCSXiDtWvwieotbppDdfYV1EJWKry679n0CIhtb4hEw=;
        b=gBNnhNsdAMgTm6OdUYm7/lZjF0/wp/fgwn/gXPhcEIYQiUSVW35Q3jtZZJRwS9A0G5
         b9dbbufljOlOHxXB1/D0Kt3AtVmhRC5xqtUPNinuUoM+zazPw6hum/ScAawxPFMrNsnm
         qBb+aZhP02074Gwg4+vVbcmK0SmyusnxvElB0eyFH99HhiVcXgqt5zy2u13g6IMh9CsU
         Qneaa2i9rl0LeAvbXIPsv3ba+sY8g6klbGmASOM5ma++mPeeOsrCQebzyEVJb4ChSY/N
         LuwOrsiRbDJdVG7ZL9tF8e+yBxObWZf5Ohl7u0+CSis231ZSPVUHZyMCw25qn+/7ooHC
         At5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305zHGMm+0t8i3NOJyA6MHxt//drkDTxf9tIsqSR4Z5htDMbBEH
	QelmzMbIGtlMoW9EJ8iwKzQ=
X-Google-Smtp-Source: ABdhPJyFzJ4lZ6uvWUk666rhk8zs98Frh8FzjHg/9hfKjAdrjeT6t2F5j/syFWUsZbHXr5jxfda5Og==
X-Received: by 2002:a62:c1c4:0:b029:1a7:efe9:163c with SMTP id i187-20020a62c1c40000b02901a7efe9163cmr8725687pfg.47.1610653265771;
        Thu, 14 Jan 2021 11:41:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls2599091pga.5.gmail; Thu, 14 Jan
 2021 11:41:05 -0800 (PST)
X-Received: by 2002:aa7:96d8:0:b029:19e:bc79:cf7 with SMTP id h24-20020aa796d80000b029019ebc790cf7mr8987975pfq.22.1610653265120;
        Thu, 14 Jan 2021 11:41:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653265; cv=none;
        d=google.com; s=arc-20160816;
        b=cWQoIbAYsJq+HRNhFTh3x8VsmrAuslQ8Ozvoa8Zu7fHqzGIfeAKXOaG+7ZlRFeIXw2
         0eAUzhVWTgAYuOnv8+ojoS52aRz89lu2upHuCK6r0+zVDeuzWQ6U8pEtJ8Wkdq8ydg+W
         F/fuSiRNFuvU5uZRKo1yWuC1yVYFi5gUXUEJjKWaXzUQDy/y+NYW49fnxnlXF/IaJELd
         yHFpUyj0PT9YIlR/Sxg0pg5HhekoqIbBi2Flbv2jSQFIGLOR4IIbQ7/8DUL+Va3Q7sOl
         E3iDdWC3PsKE5jgVXc5RiJDebyjG8PO9zm+t23IgMzaibqWx+FSOnn1dnRui7mmf73+C
         gF2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0QxG08i1D5V96wKVQZqYjQtj7/izFU6KXQ17gPdkd9g=;
        b=ZJaGNTC6YFGScEzyMq9KwQdHQnDw3sWpnW1vN/Pv5LDYk03FsChFVjNU67/iCAMQqZ
         bgNEvVDXf3aRz06QilXDWasUXiB7pOJc/VqBf7BaxiB6Nsp7crz/vkrkN8hRjkroAOMx
         6acJI/qjD1oF9VCTJ2MDgs7v8Ct3xy81juueKBBUT9Hx7C8YCzxUPQzghAPVnnJRiw23
         Aq18OmuPIUS+DxKZvs/8spDZGXl8xRPsYiUO033Or+i+RuM8pXd2+AeZTjitsa+Sld93
         yIxnR/vUtlkhB4h6N0q9ESf/my0O8YztJ2zkNDoe5hKdVCYvqUxMdxe5vXGDL49s3bFH
         5PCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ODYakcGv;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id z18si386890plo.5.2021.01.14.11.41.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-443-d1WWDjNbPH2lmKAsaTRe6w-1; Thu, 14 Jan 2021 14:41:00 -0500
X-MC-Unique: d1WWDjNbPH2lmKAsaTRe6w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD249800050;
	Thu, 14 Jan 2021 19:40:58 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 597BB100AE40;
	Thu, 14 Jan 2021 19:40:43 +0000 (UTC)
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
Subject: [PATCH 07/21] objtool: Assume only ELF functions do sibling calls
Date: Thu, 14 Jan 2021 13:40:03 -0600
Message-Id: <3b25ec550d2c8368b94915bab193e10d1ef11f42.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ODYakcGv;
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
index b1327789d049..d833855f3aa8 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -111,15 +111,20 @@ static struct instruction *prev_insn_same_sym(struct objtool_file *file,
 
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
@@ -778,7 +783,7 @@ static int add_jump_destinations(struct objtool_file *file)
 			continue;
 
 		reloc = find_reloc_by_dest_range(file->elf, insn->sec,
-					       insn->offset, insn->len);
+						 insn->offset, insn->len);
 		if (!reloc) {
 			dest_sec = insn->sec;
 			dest_off = arch_jump_destination(insn);
@@ -798,18 +803,21 @@ static int add_jump_destinations(struct objtool_file *file)
 
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
@@ -858,7 +866,7 @@ static int add_jump_destinations(struct objtool_file *file)
 			} else if (insn->jump_dest->func->pfunc != insn->func->pfunc &&
 				   insn->jump_dest->offset == insn->jump_dest->func->offset) {
 
-				/* internal sibling call */
+				/* internal sibling call (without reloc) */
 				insn->call_dest = insn->jump_dest->func;
 				if (insn->call_dest->static_call_tramp) {
 					list_add_tail(&insn->static_call_node,
@@ -2528,7 +2536,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 
 		case INSN_JUMP_CONDITIONAL:
 		case INSN_JUMP_UNCONDITIONAL:
-			if (func && is_sibling_call(insn)) {
+			if (is_sibling_call(insn)) {
 				ret = validate_sibling_call(insn, &state);
 				if (ret)
 					return ret;
@@ -2550,7 +2558,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3b25ec550d2c8368b94915bab193e10d1ef11f42.1610652862.git.jpoimboe%40redhat.com.
