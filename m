Return-Path: <clang-built-linux+bncBC2ORX645YPRBCVFYX5AKGQE5UYP6XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFA425CA47
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:07 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id i42sf2957301qtc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165067; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZmHYEVIySP3urlM+qKVK2/YF0MgltV0CMcy7cBn7Ss63K35SfFVIiSzypel6WDOC5
         1aNk6bJHx7nDeBZ6lxUUWUsJHHs5jQUGoEA8sVRVVa8FR503JQpugcjbGx/l1xyXVelw
         Xyr/hMytkvHBn+2qzBDF8zmVgngnnsJxrcOSm0w0grTffUIPj4pcht66FuwCvj347nxX
         F8qL7kOug802FdWuyYcHiGSiSSCBbI7c4OIljhnABRXDn0a8U/27w4ou1cBbZ8Wumbu+
         ifpJuuAjGtt7Z921mJpxII8na7IDhITiW7jB4gKT/9xPWG1IW3D5oL8mGRoiT8xjYD6w
         F5AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=8FJ3Xn+cTD802bcNpPN5X/EAt2AzDoKSeNGIydQYqaI=;
        b=p835CPEG8RZJfoc9o0NeP4OEmxkie6YpgLPo7mNVPb26SompVgmhDDdOQMLwQ/X6h0
         KLNTS0ZYtS/VqDAW+iV8MygtUrcmWCHVqoAmqVuD4U5z4Xa+8sY8N9YVplDEohqT8/El
         ZwdWHdY619OpAdUvVIaotw86PRwScngR4bx/IDSr0+VOBb0GiviJgqJ3LRAmkjhGHMjr
         kLnetdMRDFEIGrB1ImJ+gWYHEFn9veBmioJBaZYfwXbVf4lVp7cSKn3nej4oHoyYBHal
         OMSXdC9On8pKl2VVkP12l15D/F2yKIt++YnXn3YskJIEoX2VpyjwrrmczQA3kjo4cQkA
         Z5vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VveOi2tH;
       spf=pass (google.com: domain of 3ivjrxwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3iVJRXwwKAHQkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8FJ3Xn+cTD802bcNpPN5X/EAt2AzDoKSeNGIydQYqaI=;
        b=TJpmkN7NmSdXsy8gBVWDqY2xPt9Ft9EY1VWQpqVAtwZXoDUALAZx2Gi13k8fAqZOOy
         0bwRJeLan4v5jKcmYCMxNw8sHjjDAAnB2PVRMG9y/bdJj/5vMUOljjaGB75/6szYZ5jF
         omN2YpUJSHzELEUubZJLUxjXqrMVvULgQ+A83k7Xyk6fshyw5rCSwZWvrCPdPMjUJV6B
         TfOPkowflk/IBfDu2fbapXijaP50F0Gk8w+dQ245BPAOTQFO/VZoJuzWGagXquAZBm42
         BVQZGzdxjPxpHegFGapaUGLSYjw4qPQFqP+N3mCCQli+YrMJKMNWRVx9q9si25JqIHh/
         4aHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FJ3Xn+cTD802bcNpPN5X/EAt2AzDoKSeNGIydQYqaI=;
        b=MS9gyx2AT5WZ0WebS5QnpL7Ltgq16fjUKCmCtDEisHdn7/lGtqK7Trl/Osxr2oBGoN
         rysMMNjbrg5w9y3qndbhoFde7+CosG4mCUIfC1qZNOdyjNQ5RKGImefW4nMnRkuhR/LK
         EmUvWT7eLHQYd8RyJK38mTvpCxOcXTyZAk/d7gmKDyNVTn9gVA08FNyz0dTbKIeff4wb
         audYJTvOycGgjhdFOemOE7C/pKMGMRROvn22vTIGtHGVLCKhQpJw/erfIjfv/bxB8exl
         sfyTWBaP8KZ+h0bPnMlUbUDR91R+EnMrlCCtFb7FHb2VPpHoyVfth2JcMC1cgGv33pvK
         VGrg==
X-Gm-Message-State: AOAM530dNTMYTfMyaZp/myMYU7CpSlT//lcIsjVFrSUV+s1k94hCKNXC
	gRPH1neztpFuSerJtQesVVo=
X-Google-Smtp-Source: ABdhPJyhWNBzjStjIs3Eg9xZDcp+TmYO5B329wyTFY0tGx6UOCGpN3CkOrsXUqnDvoDt2/5Wc7ThVw==
X-Received: by 2002:a37:9d8:: with SMTP id 207mr4743230qkj.465.1599165066797;
        Thu, 03 Sep 2020 13:31:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:228d:: with SMTP id o13ls3529989qkh.9.gmail; Thu,
 03 Sep 2020 13:31:06 -0700 (PDT)
X-Received: by 2002:a37:5c42:: with SMTP id q63mr646529qkb.390.1599165066308;
        Thu, 03 Sep 2020 13:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165066; cv=none;
        d=google.com; s=arc-20160816;
        b=BFJU7WB4OVyjijdxpqwZ/fmV99jD8N5RjfzAme9eEDZz1yAuPyD8dRT3BetOB+Ttpd
         ixZisYU9McBREldgjvvP0xFb1eEz4Bn1QnbcU1+3lyyFCPXNifgnDDTQTN9HcpGX+brX
         bRw5nEzvYl82oNzPVv0Mi/6n3GrFuErHYWGbl4Jj4u3I2Ba4oTQgoVtjeTrm1jcdfDss
         NBIPLKYnKZ245lVQaXbZhM6Cnk1yiu2mW5l0ZralOKVHYXCNmgOHljA7scUZLBGyfOJH
         CHCv+K0rNiO7Y5fS9I5DSe+BdVo8gNMEPgWBdykezHm2lO9nkE/as/Zg65HjtqkWszEd
         nLfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Ygth48f6RQ7AVK3M037lXI5lSip58PlMRJWKWtM7ReM=;
        b=U6/NuCwxGHQ+ToZNecGijSQeNZdEdWfgWEEpOa9pMN0WZDpbm5rmDwTzH6rlGs00D9
         ceGm4tpHQDO4EAUhAVENVctLbKygd5IFJCtJM5PzyK+EceC1nt2+JMsQI3KO9arRuuH/
         tHFFgEfhYw292hB2Zu9RCWxYFWRnUQt3yUTgiWWvbKTijq+xnhjx6Uu2MzYkb3kvsZ3W
         OgIS2PguNFz8MgGGklzmKuTB1D14Sj/wmNJV8Y8BH7yhCAdto5EA+6DeOo9CXlM/HPtq
         brm01gB533+15qlKcFTLOBIbce3V7HkQhx/cszuCUfeE1n4lmAqefjV95I3rzXcAX1al
         C66w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VveOi2tH;
       spf=pass (google.com: domain of 3ivjrxwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3iVJRXwwKAHQkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id n26si280132qkg.5.2020.09.03.13.31.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ivjrxwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id o184so2688363pfb.12
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:06 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a62:1cc4:0:b029:13c:1611:653d with
 SMTP id c187-20020a621cc40000b029013c1611653dmr3883611pfc.15.1599165065144;
 Thu, 03 Sep 2020 13:31:05 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:30 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 05/28] objtool: Add a pass for generating __mcount_loc
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VveOi2tH;       spf=pass
 (google.com: domain of 3ivjrxwwkahqksealgdnsfwfyggydw.uge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3iVJRXwwKAHQkSealgdnSfWfYggYdW.Uge@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

From: Peter Zijlstra <peterz@infradead.org>

Add the --mcount option for generating __mcount_loc sections
needed for dynamic ftrace. Using this pass requires the kernel to
be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
in Makefile.

Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
Signed-off-by: Peter Zijlstra <peterz@infradead.org>
[Sami: rebased to mainline, dropped config changes, fixed to actually use
       --mcount, and wrote a commit message.]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 tools/objtool/builtin-check.c |  3 +-
 tools/objtool/builtin.h       |  2 +-
 tools/objtool/check.c         | 83 +++++++++++++++++++++++++++++++++++
 tools/objtool/check.h         |  1 +
 tools/objtool/objtool.h       |  1 +
 5 files changed, 88 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index 7a44174967b5..71595cf4946d 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -18,7 +18,7 @@
 #include "builtin.h"
 #include "objtool.h"
 
-bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux;
+bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
 
 static const char * const check_usage[] = {
 	"objtool check [<options>] file.o",
@@ -35,6 +35,7 @@ const struct option check_options[] = {
 	OPT_BOOLEAN('s', "stats", &stats, "print statistics"),
 	OPT_BOOLEAN('d', "duplicate", &validate_dup, "duplicate validation for vmlinux.o"),
 	OPT_BOOLEAN('l', "vmlinux", &vmlinux, "vmlinux.o validation"),
+	OPT_BOOLEAN('M', "mcount", &mcount, "generate __mcount_loc"),
 	OPT_END(),
 };
 
diff --git a/tools/objtool/builtin.h b/tools/objtool/builtin.h
index 85c979caa367..94565a72b701 100644
--- a/tools/objtool/builtin.h
+++ b/tools/objtool/builtin.h
@@ -8,7 +8,7 @@
 #include <subcmd/parse-options.h>
 
 extern const struct option check_options[];
-extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux;
+extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
 
 extern int cmd_check(int argc, const char **argv);
 extern int cmd_orc(int argc, const char **argv);
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index e034a8f24f46..6e0b478dc065 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -433,6 +433,65 @@ static int add_dead_ends(struct objtool_file *file)
 	return 0;
 }
 
+static int create_mcount_loc_sections(struct objtool_file *file)
+{
+	struct section *sec, *reloc_sec;
+	struct reloc *reloc;
+	unsigned long *loc;
+	struct instruction *insn;
+	int idx;
+
+	sec = find_section_by_name(file->elf, "__mcount_loc");
+	if (sec) {
+		INIT_LIST_HEAD(&file->mcount_loc_list);
+		WARN("file already has __mcount_loc section, skipping");
+		return 0;
+	}
+
+	if (list_empty(&file->mcount_loc_list))
+		return 0;
+
+	idx = 0;
+	list_for_each_entry(insn, &file->mcount_loc_list, mcount_loc_node)
+		idx++;
+
+	sec = elf_create_section(file->elf, "__mcount_loc", sizeof(unsigned long), idx);
+	if (!sec)
+		return -1;
+
+	reloc_sec = elf_create_reloc_section(file->elf, sec, SHT_RELA);
+	if (!reloc_sec)
+		return -1;
+
+	idx = 0;
+	list_for_each_entry(insn, &file->mcount_loc_list, mcount_loc_node) {
+
+		loc = (unsigned long *)sec->data->d_buf + idx;
+		memset(loc, 0, sizeof(unsigned long));
+
+		reloc = malloc(sizeof(*reloc));
+		if (!reloc) {
+			perror("malloc");
+			return -1;
+		}
+		memset(reloc, 0, sizeof(*reloc));
+
+		reloc->sym = insn->sec->sym;
+		reloc->addend = insn->offset;
+		reloc->type = R_X86_64_64;
+		reloc->offset = idx * sizeof(unsigned long);
+		reloc->sec = reloc_sec;
+		elf_add_reloc(file->elf, reloc);
+
+		idx++;
+	}
+
+	if (elf_rebuild_reloc_section(file->elf, reloc_sec))
+		return -1;
+
+	return 0;
+}
+
 /*
  * Warnings shouldn't be reported for ignored functions.
  */
@@ -784,6 +843,22 @@ static int add_call_destinations(struct objtool_file *file)
 			insn->type = INSN_NOP;
 		}
 
+		if (mcount && !strcmp(insn->call_dest->name, "__fentry__")) {
+			if (reloc) {
+				reloc->type = R_NONE;
+				elf_write_reloc(file->elf, reloc);
+			}
+
+			elf_write_insn(file->elf, insn->sec,
+				       insn->offset, insn->len,
+				       arch_nop_insn(insn->len));
+
+			insn->type = INSN_NOP;
+
+			list_add_tail(&insn->mcount_loc_node,
+				      &file->mcount_loc_list);
+		}
+
 		/*
 		 * Whatever stack impact regular CALLs have, should be undone
 		 * by the RETURN of the called function.
@@ -2791,6 +2866,7 @@ int check(const char *_objname, bool orc)
 
 	INIT_LIST_HEAD(&file.insn_list);
 	hash_init(file.insn_hash);
+	INIT_LIST_HEAD(&file.mcount_loc_list);
 	file.c_file = !vmlinux && find_section_by_name(file.elf, ".comment");
 	file.ignore_unreachables = no_unreachable;
 	file.hints = false;
@@ -2838,6 +2914,13 @@ int check(const char *_objname, bool orc)
 		warnings += ret;
 	}
 
+	if (mcount) {
+		ret = create_mcount_loc_sections(&file);
+		if (ret < 0)
+			goto out;
+		warnings += ret;
+	}
+
 	if (orc) {
 		ret = create_orc(&file);
 		if (ret < 0)
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 061aa96e15d3..b62afd3d970b 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -22,6 +22,7 @@ struct insn_state {
 struct instruction {
 	struct list_head list;
 	struct hlist_node hash;
+	struct list_head mcount_loc_node;
 	struct section *sec;
 	unsigned long offset;
 	unsigned int len;
diff --git a/tools/objtool/objtool.h b/tools/objtool/objtool.h
index 528028a66816..427806079540 100644
--- a/tools/objtool/objtool.h
+++ b/tools/objtool/objtool.h
@@ -16,6 +16,7 @@ struct objtool_file {
 	struct elf *elf;
 	struct list_head insn_list;
 	DECLARE_HASHTABLE(insn_hash, 20);
+	struct list_head mcount_loc_list;
 	bool ignore_unreachables, c_file, hints, rodata;
 };
 
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-6-samitolvanen%40google.com.
