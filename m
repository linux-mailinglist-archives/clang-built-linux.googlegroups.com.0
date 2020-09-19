Return-Path: <clang-built-linux+bncBCM33EFK7EJRBLGQS35QKGQE43YMBIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8DA270B2E
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 08:41:48 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id f22sf2795644ljh.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 23:41:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600497708; cv=pass;
        d=google.com; s=arc-20160816;
        b=EJiJVwNMtQ8e2aEnoJqZMRWI/tmnFSwjf7ZWtfyMHgU9EXrAiFKdghfpo9mCn7E9zo
         V1leUi8UQ1ZaVFRyrw5GkIrgY8yNwtzQgWd8+JNjv+Lsbz/Z/cC7N5Bzvg6CpAjU7K8/
         6swJyCJ3C/9vCryKMIN21gvMwwlss2xgu9E9ElZRtmNej8y1iAsfK7VZ2TTs7D4RlAEz
         9bFYoKqVfYhVSQWMnRNur1qmPtuYfGonIAYyVrTqw+KFE1Um0HDuSyZUQWdtS3BlBYSw
         rOeihBbZUV78gcGnayyMNocAdhBoT8dqM3SQy8mHqHgRX5JDEcNoWSvELLYubXHEY3kr
         XFZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=w57H1QZYDk5ePwnmDy0VWB7/U0f0gG11cMOHhzydXlk=;
        b=ij0qNTnPmLFXUlAjqn9J40t7HTl8fpEHfyQIFyQAHcjGSQ6M374epqxDsDU5ylVTAD
         VYANUkrU1j1eit5f+wJk6ti4Um3jdrbtdXK6GjMNDz23zug1X/TwoLIJk7QcbOBwRRGq
         /z3lLqkdiDU5TVDvrip+EfPrAiK2Hl9hBILsU5Mg6xd/O59z6xP0/5zLzv+tIUo7u90p
         RHWmustPv6sr+6qND0D5DMTGI/y9uOZKgahu88jeH4Rml7mhpsp6DWxTGKYiF/PvDyNI
         OGLtNDuvpvv4d2M5EntLoHUf7oQ7Bcvgk98oWCcvwesxRRLqlJaOoiikhX6WYJixm6rQ
         5CLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcOYcGHH;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w57H1QZYDk5ePwnmDy0VWB7/U0f0gG11cMOHhzydXlk=;
        b=lXyb0/J7Ptzq5CO4/1yihOEGyARVFh969uSf1X5TIxT5gmRcxFYYvv9WBnaE36LueG
         hb/R4170Pq5zB1u0iRO2iyPCPsvyJ0mmjw2W+dugKZloaXFWENMJzso6VEAHlz3PD1Wy
         d8J1bzzwUooMD9I5EHCQFf3X70G4WNg98UTOumU1bUeI3RhpwXH8tcHC9CCe+y8eIckn
         HEhnA/metS76qvSkeboWduwh/ZxRrOn4w/aqu0Y/IFevawpfyY4EDqUn+gdCOckoffXU
         Z9uwJHi89ASNo9kGCyUqAaPUujTEtpaAU/mjktufaLJkIghWDT/NTZ50Q29eXwZHIRa4
         Kjog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w57H1QZYDk5ePwnmDy0VWB7/U0f0gG11cMOHhzydXlk=;
        b=mY/qbq+OyXb+O3pdvAK8R0uWzs3xYQLPa3c3ZMzRaoU4r+Rgr4VCl9iNWhaCJuEJtq
         nNTX9zaarn/Zz+rmJdHGr2G1beWuUGrSFlfucUjoipbltPT4qBdP+I4+Mw/EX6r0GqlA
         8tN/EWD2b/oXK69j0Gc2Keo857nz6th0ilJ7jTVZV4q2X/dIaAe7rjDF7AsBdqP7RgGt
         UxqowesBo3Yb47MqcT19CyQUTTKvMxEJRN2VEJs7YN2vpVgkTH+XOb7EJfuiCXCk9sgZ
         6cJdfW8GmFv5lI122s/fntTGWY0t0Clwh+2EuBu/Sah3iJQj6EqAEj7jd1EAbZjYUDj3
         YvBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w57H1QZYDk5ePwnmDy0VWB7/U0f0gG11cMOHhzydXlk=;
        b=dwX3So3tZADDbUV+vTWuPvaUsAco4pBY9tei1B4yH+OvkGDpFBVcrIO+NoV8YgX/ft
         rB4TKu7ey8sb1g/LYI94dtMMEiVLoE6lqOS9O2Z+q4ZwYY1iQzIc4OSE4qig3sfXBFM5
         9O946Vi6fP/acnesosNv+HpRDal1j33ROH9rpSIAo+Zzx+xtFp6gEKHVdL6tdT4x+R1g
         zdSglX8s4Af+exNIlFxZH7yyDkAgv3M5N3h670Wfljyy6n9UnI8yJcATGhs4i7B9oZy4
         pq0+GOUbTl52RODXf6bJg2e+Qkyg8iYrsdcPQb6mt3wpr1J45bgL9PUWslbiBnjRsjv/
         75Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532r1X0pISE02UqDgUufzlQaUThl1j+ozfBMvMjOjrcP8CEIKGpu
	rCeouKBBJNqYlQXj+l84F48=
X-Google-Smtp-Source: ABdhPJzE57O7hZzpMrciZ2gnMcF1iiq9Kay5URMUmdO5pCDVWXRwiD/91k+tkjjbNGtTb1oLCyfThg==
X-Received: by 2002:a2e:b4a5:: with SMTP id q5mr13988729ljm.200.1600497708302;
        Fri, 18 Sep 2020 23:41:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:555:: with SMTP id q21ls1092392ljp.3.gmail; Fri, 18
 Sep 2020 23:41:47 -0700 (PDT)
X-Received: by 2002:a2e:b4a5:: with SMTP id q5mr13988714ljm.200.1600497707118;
        Fri, 18 Sep 2020 23:41:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600497707; cv=none;
        d=google.com; s=arc-20160816;
        b=LH61M+xI/y64cKwFSNUgLt2Ieaqp40laXVv4ZY1UIhdR85GWGnajd7/H+jo8XbjjNE
         Ov+A8jVvX/j/Jw5z+U6aZl3E4yGS5xKBgdrtvOLC4Ru7Be0Jh29G31HLOKOqt67ikSlW
         ZbybFerPnW3iF3aqRqqIKxkUWrCXIn4wo+FA2Njtb7nRQtl3OZW7N8tcSfnF1KBMn3xp
         y41e5A379jgTYiGdUq3oNkP13TqxN501XvOFaAN7Y61lQVogMLr1KQr5CDUNHQyiHaMk
         wDkokFmAJg2KHRmd37MXPilq4R4CoQC4I/bHscr7Lg8QG1XwjINl3DROdnnwCWvlPuVA
         +/Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g5DNwEJpdlREbpxxNUWXwnzTcfAjTXzmIWah8QsBFAI=;
        b=NE4K9Ss9wV3YbQtS+W+g6C/KCdavr1EvkPi07q2smjn5lKHMmTWwR135/aPslPpP+j
         Kr4MHDnZRqSaZs+INI/iXauoWRhoW/o2RSY6djaUT8PZ+whVD/cl16hVFFgVwHdZ+dd+
         Gky0id23ZdZZQq1d7lwegKDKUWNaPG9vphsFZp+ykXyeNrhpEuoxsb6BCfLfvVjZargD
         J1h30fKaJYc07ua/s1+XgtdA7BR9pFTEeBQmsgUOhe9r/w2FlWbVTr7t3VoC6GyZCp/e
         IBGmWltJ9tRG1dCgBR8ZOv5NVGQF/egblIfSMIjN5zdT9SoS6i8OhEcDIwY7TScxFgjQ
         iJCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gcOYcGHH;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y75si127053lfa.3.2020.09.18.23.41.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 23:41:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id b79so7550348wmb.4;
        Fri, 18 Sep 2020 23:41:47 -0700 (PDT)
X-Received: by 2002:a1c:9e0e:: with SMTP id h14mr18723255wme.18.1600497706567;
        Fri, 18 Sep 2020 23:41:46 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:329c:23ff:fea8:6c81])
        by smtp.gmail.com with ESMTPSA id l5sm9218927wmf.10.2020.09.18.23.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 23:41:45 -0700 (PDT)
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
	kbuild test robot <lkp@intel.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] objtool: ignore unreachable trap after call to noreturn functions
Date: Sat, 19 Sep 2020 09:41:18 +0300
Message-Id: <20200919064118.1899325-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918154840.h3xbspb5jq7zw755@treble>
References: <20200918154840.h3xbspb5jq7zw755@treble>
MIME-Version: 1.0
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gcOYcGHH;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342
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

This is a behavior seen with clang, from the oldest version capable of
building the mainline x64_64 kernel (9.0), to the latest experimental
version (12.0).

objtool silences similar warnings (trap after dead end instructions), so
so expand that check to include dead end functions.

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
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---

Changed in v2:
 - added a mention that this is a clang issue across all versions
 - added Nick's Reviewed-by, Tested-by
 - added Reported-by

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200919064118.1899325-1-ilie.halip%40gmail.com.
