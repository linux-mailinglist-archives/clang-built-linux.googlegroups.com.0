Return-Path: <clang-built-linux+bncBCM33EFK7EJRBB6GRT5QKGQEJ4OI5PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 282ED26D719
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 10:49:12 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id h4sf614437wrb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 01:49:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600332552; cv=pass;
        d=google.com; s=arc-20160816;
        b=VA6ENzeSpP9CUsaCmdHJPD1PaV5M/FmBUYnIKkxgQLvYMpygHpX+fn05GFcKjmBci7
         zVdJ8BP2EzANu1Id3LRuQGfMC53VxXmH9qPamyOZlFo720ZIyPor2bE/+5P7YWxRPtr0
         d5ScdcvpHCA3EsTkmsIPGrbWdcShLi7zzEQ6oBnCXoOiY4DWf11Mhwlog2bPcn8gbHkc
         YMaZcqfN0HFlqGmISqQLePsPku369a9TKYNRS87Xt7bY76p5+dw2bugG4O73nmBCvW/M
         6ahaNSbtDqzXhO1XjJx6KRr37Xi8N6XZmG6adziXvFzKIQkf8A560Hxcd/+MjXXppvhb
         SANQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=oJe6lb0xHYzvUW/IMUCsMG5ceCoq1FkIsj9tIthv7lk=;
        b=SQEbmRFUFXDXnWuUIwL8wIJQimxxHCr60OSmgpHwDdQpWReF9VKxS+WiGAeh1cxXDu
         ScS2DPetEAOogg/xfHhFq96/R86F6eVjN1iMdGramQXtMchTl7HqMVdBYonXyQ2EcV0x
         MU4ieHgYVV+DaTgYHfps8eCcOkXkGxXvZ4+D2vAR/uNEkCNJ9aD7DIT8QC1cf1qSJ4gQ
         k3SZ4kuovG5vvRY9WL3/UtqSuHnKE5L2sueLGB7N0Y0+9g13/Buc9OTTaJOb4TFTWshI
         2kgIVp8F46qco7Bslr5ApSZzs97Jzl00ns+ZfCmfI+54TmQSqMqDZt8X61HZEG3N7g+4
         Ub+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GfuKs9Cu;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJe6lb0xHYzvUW/IMUCsMG5ceCoq1FkIsj9tIthv7lk=;
        b=srUjOwSkqjgRB21JIe8IPSTK/iB1EWmYzYDK4SNmGd/UuR2jmLXNPoYtVP1EoCv3FS
         gw3ECtTXev1bQxzxur299N3D8G6q4oLGJdwKGCiBtkFDMVHPP3H622pTRv5x0J1oWhBQ
         dOIb6GN209WiRQaHdfSLqWppyZsBpyjWD16xQdA2tuUKgspKRy6h4ISZ+12EkYVpNSeO
         v1t+D1fjVlRxnmhzXuXbXmQJv7ZvhkD1r6h7v+Y+lBOgayI+nSihaQ3kRzZyBO5VqsXP
         uuWbGcRRBiU11/pdWWZMkDXlUzzRMT5QIGcvQWb858gsHq2taNXoQniX+4jZUzUio+NI
         amoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oJe6lb0xHYzvUW/IMUCsMG5ceCoq1FkIsj9tIthv7lk=;
        b=NGP0k0JLGtoN8fOtrqlwwtM8qcSLz/KYZzbZU+MHpUefjw219N2jIDS+HNtc8bxrZr
         tmGsW7/qcBvUvKUZ7uZ4FLIUSspsf2Y4qzipOXC1dH0jAiGPMIaCVJlu1IeqO5ccN2z6
         l0ETcvZCmiXKLWPXvzQutlPjzypZbfRBrRDoEPYeoIMi6oMKAgdkU/CT8VCApKF0kYmQ
         YDb3cyKtzPISOj/93EbBWCuA0GOrfXZsr7y9FLezzYjxjzWsFta/3bgMP6obEy40YB7L
         jemE8A+9x25I6mZM/aWOv/tqSfzAf3wstiolKqfIZuk/hdnJuxJQOLGqw6WWv3+0Vq5N
         TP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oJe6lb0xHYzvUW/IMUCsMG5ceCoq1FkIsj9tIthv7lk=;
        b=Z71uBlpr0N7xxYtXlEwD96CCw48g3uwacSJcPHnAs5NO0CIUEuaW6GRtdzwg983GcH
         xe3yQ1+jLkt5a0IhQOgt439PGNHjkyyqRbry5Vu2DL6OFQdtCUC2Czw5BNyYpomJAs3w
         0J7FLc6jnig//jhdqk92AmDMkckcIWgsjYEkOpYLD2vymp2ppz8K/N4BbL3stjgD2Ais
         VBfNgzQ1Pm09V6pt83lLfqmXg/iTzq1Ow3DzDvwvCbWnjA4FtNqyhbb+fXh4G503Hs1Q
         F6l4w05yn8ThtI1ghAfbu6NE7LAULOSRGmXR4alrcxrQpINISs0i1L2hZVOtYVnm3qBw
         Kyjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TpEg89MtbQpoj3bax+QsC0ZRsv57AAPsc+erKqWyifTWE10Cu
	3Y0PrMjs1F2kJprW/PahEYA=
X-Google-Smtp-Source: ABdhPJyokMO+yqo/XvmD428LjC/0WEdAG5E5uZ98Mhlwu4/iroh/NuXibtPkE/QloYSxKfKPY3rjnw==
X-Received: by 2002:adf:8162:: with SMTP id 89mr32100986wrm.237.1600332551922;
        Thu, 17 Sep 2020 01:49:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:230d:: with SMTP id 13ls702922wmo.0.canary-gmail;
 Thu, 17 Sep 2020 01:49:11 -0700 (PDT)
X-Received: by 2002:a1c:b608:: with SMTP id g8mr9322472wmf.106.1600332551000;
        Thu, 17 Sep 2020 01:49:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600332550; cv=none;
        d=google.com; s=arc-20160816;
        b=BgzGFoDdYxbpzesa5C2D8gSKSrs1OaHucEyrQixbEmfUCejxxE22pGVFtgjojzbG3j
         qcY+hDmBeTAoCKIcLUVY+Pbpe6bjEuzdvhq5A1LM4SDQec88/SUovNLGAwnJaWJ447uC
         NTYYgkn1uWo7bwavObs9ljLACQuk3L3NZhUY8GjmW4K24BFndXPvpaROldEVGrEQxaSZ
         bqAJM7+t72yxR/s9gSi9e17XSXQ04vnlPoks66Pq/lg2ZU+u1QVIPTjmabNgr2G9bA4j
         znxdyuabhwywlwkzdXVzqtlOaqwC46fcZzU+45p8bVnzYGZ3rqub2XyoS34YL1OAt5oS
         AI5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oRBptC4sIuVYjiXcshYa7R4ABF1BI07mPrwI7LaWCH4=;
        b=Lw1Ufky3fvJ5TZ0uCHz4SuA14a7kvb9kH0Zcx896noTfEZy6vKeDaGLVsOS2ksl0+u
         PnkUqHHb66FT1HEJQBhDVOBMPmMwv43DTPTRtrlMITchdMKzfTvHPIegf2BIdIVkfCmw
         YAz3EGvE+t8GBiQlam8Qz6B6k8rHqG581oHfJFCBBTvfDYbEhD7wQWYtyuPplcr31n+g
         VN9Hw8MvOvAjj9l1wuRvAYe0XXu4E9irX1Y+NB6DDcevlT3VoTvCPJ8wKc0b+j0uPiC1
         sNsVyvFiD7usGvrdDWuH5DVyZ9MsGFg/cL+vvpj9fdqcQ3VFnX2L3FMWhqUPokOJXd+u
         RpoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GfuKs9Cu;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b1si151901wmj.1.2020.09.17.01.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 01:49:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id c18so1127481wrm.9;
        Thu, 17 Sep 2020 01:49:10 -0700 (PDT)
X-Received: by 2002:adf:efc9:: with SMTP id i9mr32318001wrp.187.1600332550694;
        Thu, 17 Sep 2020 01:49:10 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:329c:23ff:fea8:6c81])
        by smtp.gmail.com with ESMTPSA id t22sm11973299wmt.1.2020.09.17.01.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 01:49:10 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>,
	Marco Elver <elver@google.com>,
	Philip Li <philip.li@intel.com>,
	Borislav Petkov <bp@alien8.de>,
	kasan-dev@googlegroups.com,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] objtool: ignore unreachable trap after call to noreturn functions
Date: Thu, 17 Sep 2020 11:49:04 +0300
Message-Id: <20200917084905.1647262-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GfuKs9Cu;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

With CONFIG_UBSAN_TRAP enabled, the compiler may insert a trap instruction
after a call to a noreturn function. In this case, objtool warns that the
ud2 instruction is unreachable.

objtool silences similar warnings (trap after dead end instructions), so
expand that check to include dead end functions.

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rong Chen <rong.a.chen@intel.com>
Cc: Marco Elver <elver@google.com>
Cc: Philip Li <philip.li@intel.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: kasan-dev@googlegroups.com
Cc: x86@kernel.org
Cc: clang-built-linux@googlegroups.com
BugLink: https://github.com/ClangBuiltLinux/linux/issues/1148
Link: https://lore.kernel.org/lkml/CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 tools/objtool/check.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index e034a8f24f46..eddf8bf16b05 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -2612,9 +2612,10 @@ static bool is_ubsan_insn(struct instruction *insn)
 			"__ubsan_handle_builtin_unreachable"));
 }
 
-static bool ignore_unreachable_insn(struct instruction *insn)
+static bool ignore_unreachable_insn(struct objtool_file *file, struct instruction *insn)
 {
 	int i;
+	struct instruction *prev_insn;
 
 	if (insn->ignore || insn->type == INSN_NOP)
 		return true;
@@ -2639,8 +2640,11 @@ static bool ignore_unreachable_insn(struct instruction *insn)
 	 * __builtin_unreachable().  The BUG() macro has an unreachable() after
 	 * the UD2, which causes GCC's undefined trap logic to emit another UD2
 	 * (or occasionally a JMP to UD2).
+	 * CONFIG_UBSAN_TRAP may also insert a UD2 after calling a __noreturn
+	 * function.
 	 */
-	if (list_prev_entry(insn, list)->dead_end &&
+	prev_insn = list_prev_entry(insn, list);
+	if ((prev_insn->dead_end || dead_end_function(file, prev_insn->call_dest)) &&
 	    (insn->type == INSN_BUG ||
 	     (insn->type == INSN_JUMP_UNCONDITIONAL &&
 	      insn->jump_dest && insn->jump_dest->type == INSN_BUG)))
@@ -2767,7 +2771,7 @@ static int validate_reachable_instructions(struct objtool_file *file)
 		return 0;
 
 	for_each_insn(file, insn) {
-		if (insn->visited || ignore_unreachable_insn(insn))
+		if (insn->visited || ignore_unreachable_insn(file, insn))
 			continue;
 
 		WARN_FUNC("unreachable instruction", insn->sec, insn->offset);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917084905.1647262-1-ilie.halip%40gmail.com.
