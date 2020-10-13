Return-Path: <clang-built-linux+bncBC2ORX645YPRBC7LSP6AKGQEJXNHD5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id B499B28C5C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:12 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id y77sf13807527qkb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549131; cv=pass;
        d=google.com; s=arc-20160816;
        b=ap7CNHNK6jipEs91/VttmBU3PmYOmks8wxd6Upwr1CCUwIzbHdSNvfGhPXNtS2sJI/
         Wp/F4AOYclhwt4bJXKe7H43xpgOGl+qQkb1MhMo5qGIA0lrm8Xp7JtyGoMNNL820x2tT
         a8N2L7FPZsNLwsypOrXO4wOl1YoG0a0SSbhUEnkGlUYKYNKy2DnrPNR9Ts/A2tSPaFEx
         qzSBLHhcVTP22/TKgKkZ3FRqhUq8TguSLPyoQNVtTw0rcoFBWIu7eTD6aknlXu4DpDb5
         ol7Q/X1KtzKUbe77HlQjMEzNvJwuDsPvorsE23BxJwcnSgdxpaw9piMXs7nztQpeVZNb
         Ym3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=puqDBkOvZZoiX53hJRvM8qBAjiACR8F4/xBPiwnRD/g=;
        b=Vz6FLJWMuyTIzs5VX5QmCVryUjgonduAnWFtfcfF9mykkWE/1qTNeaHdyCXEeaRbQ6
         oYfddmYZ4AyzR+dj4pdY6IYGaHomvHTkP8twtMrc68QDQevkOcg0zjXGQdi/LXpQYYq5
         KEepSlU/fJmugdVKpQGIs0QwCucno6A+Iw3psmYInD/8cWUYof77R9CkQ+DqCMp/dLJJ
         YZqMN8PaEQ7FFSxThXFrj3TJIp0Z9672MeDtuZkFRuGX4GyVfVGubNKLI2eS1o+F4fl0
         ckqhGW5XAixfaF7FtQKno6l93kIpqPHrvBb81fNHX2ZGep32Z5RDSFpui5Elux+z5lyy
         9GCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IXTPLb0y;
       spf=pass (google.com: domain of 3ifwexwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3ifWEXwwKAIo6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=puqDBkOvZZoiX53hJRvM8qBAjiACR8F4/xBPiwnRD/g=;
        b=BFd86lzjmYZmb0HivGcMTPQ8uaWctkvksr0h1SOgAehS8Sin1zln/9ggHpiW2lqqMe
         Jbq4uLTu1gK15zk25pl7utioc6/cYGHsiirYPDgqtBKvhg6qcIO6VZJBLaMA8I7nx5WO
         wiVx3li0N+q09oN4R9md7q3915ms9UpQGYnlVhNqmFF3TipP9E9P2l1Fc1RSDE38mnoL
         jx4O8g/savKCQbneNR/jHbpXChmyaSoQNMuaNlymhwJNl5/9aO971CKSF79hDqkZtDNq
         s+m9zn07RS+LQgxU5HE8At53Y/6Jx1bjYxgBGsf1D/O0jQMl3/J7NGcT0rRGA+K8rU5G
         K6/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=puqDBkOvZZoiX53hJRvM8qBAjiACR8F4/xBPiwnRD/g=;
        b=lwkretl5AbdjOm/VsS6g5CCqZs+wNjISrODu/jYDIPLZ+wP3fZxSZUZLhLOCEFwYQi
         uoN3pi6kp0Z3bJMwPNh3G9x0v+YNjifq1u4XQj3ubo4tRqXco4XFWoEfhLWvPNQLuHDO
         yXV1L0DPYsvFfAkt5374383zxe+cmRiSbMxlSxzkw9B6XnijyqxSNHQXRxJpYrCB/qpc
         AJitNLRbyehOKDt8N10dW+1A6cHW3fskmrvTf7Xi0WqX+tLydlf/AAPFZCDwb0Hq50CJ
         2B++x4ILIIWYY7Sh0ldwYaKdCIsZObHemC09xDAXeyDKgdxJiTcY4vS+lsVb3n4GfZ0X
         3dqg==
X-Gm-Message-State: AOAM532zJqMHkH5PpQuSangf15HmOhx1hy4CtLwguyTcQVslgMmExW6l
	nL+QbsLfeJlETpb1052cVgs=
X-Google-Smtp-Source: ABdhPJzmMMIxzx5ZDb6fMuXDeZ8JiyblSqBfqc18QaK1ADuYt6Dwg1nJ7fB88YyRY0CQ7Qxs1S/wQA==
X-Received: by 2002:ac8:5a47:: with SMTP id o7mr12694009qta.267.1602549131210;
        Mon, 12 Oct 2020 17:32:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c983:: with SMTP id b3ls4084402qvk.10.gmail; Mon, 12 Oct
 2020 17:32:10 -0700 (PDT)
X-Received: by 2002:a05:6214:174f:: with SMTP id dc15mr26728991qvb.26.1602549130584;
        Mon, 12 Oct 2020 17:32:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549130; cv=none;
        d=google.com; s=arc-20160816;
        b=p/YfS7UCyjUite7i5EQ5M+jY2icZ/Dc0LYbTjq4KVbpt0n01NVFJTp4WeCQO5HT2IP
         R4HxvYqrxa38mW62Ng0yvMbThj4NpSRDGqTQzL+fdwl23GQB4+jpCaPcSOwc+MxVp1l1
         9+RPIinzrrtOBrg3Mup8Mst10TEeDZEMoo/nBsj9oYVeH9vyJk4X1WSUeVUim/+rcvpi
         wW9iCZPZGz3kSL35C+y32CsEJUsSREvGuduHwTs0xJyk7NYGmDBCun7lGdHfdI5xsomE
         jXmjmmsCKuaAKP3mN/dGMYnGUXkF1ncZ0uoQ9r9ekl3ckDEyX7c7Hmuc/PSAGYzg0axJ
         G2rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=TMDqK7SaU5cOFiGBMdZ8Uvp/vuFhiQD2dpfcaMKefDQ=;
        b=r5eTx0JjP0Ze7hWRPI7rGk0sSvOPcT65hrrEFh1Cozl7r4cAkGZ80uoKu0pFhfrwU6
         hOd5Oc3ZgreyFKRK4iImMFNVfeEnEANiFJ7p7kU5YifqmwpXFrREl+OYYceTu/sgH8zA
         2ppbFJhgsfOVdkkn4R9jOKQHxDlWRwp176Y7pGLFC6+VD8olqs0r8fHXGi2N1VpV+GHi
         M1gAMbotChjlOWMlEtvMMWW0vJ6JMeOOUcydPpM9ENigRUPr+v+/qlxSxzmkHDcrJvtX
         bninWtj3UFU8D6yedok3fqyUm+JS9ijzcM/vTT7IbPq5sKD+cReMJ3eVHssu2wxGYppF
         2czg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IXTPLb0y;
       spf=pass (google.com: domain of 3ifwexwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3ifWEXwwKAIo6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id v35si113372qtv.1.2020.10.12.17.32.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ifwexwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id z9so10744730pfk.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:10 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:940c:: with SMTP id
 r12mr3210626pjo.1.1602549129256; Mon, 12 Oct 2020 17:32:09 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:40 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 02/25] objtool: Add a pass for generating __mcount_loc
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=IXTPLb0y;       spf=pass
 (google.com: domain of 3ifwexwwkaio6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3ifWEXwwKAIo6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
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
[Sami: rebased, dropped config changes, fixed to actually use --mcount,
       and wrote a commit message.]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 tools/objtool/builtin-check.c |  3 +-
 tools/objtool/builtin.h       |  2 +-
 tools/objtool/check.c         | 82 +++++++++++++++++++++++++++++++++++
 tools/objtool/check.h         |  1 +
 tools/objtool/objtool.c       |  1 +
 tools/objtool/objtool.h       |  1 +
 6 files changed, 88 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index c6d199bfd0ae..e92e76f69176 100644
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
index c6ab44543c92..c39c4d2b432a 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -523,6 +523,65 @@ static int create_static_call_sections(struct objtool_file *file)
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
+	sec = elf_create_section(file->elf, "__mcount_loc", 0, sizeof(unsigned long), idx);
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
@@ -949,6 +1008,22 @@ static int add_call_destinations(struct objtool_file *file)
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
@@ -2920,6 +2995,13 @@ int check(struct objtool_file *file)
 		goto out;
 	warnings += ret;
 
+	if (mcount) {
+		ret = create_mcount_loc_sections(file);
+		if (ret < 0)
+			goto out;
+		warnings += ret;
+	}
+
 out:
 	if (ret < 0) {
 		/*
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 5ec00a4b891b..070baec2050a 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -23,6 +23,7 @@ struct instruction {
 	struct list_head list;
 	struct hlist_node hash;
 	struct list_head static_call_node;
+	struct list_head mcount_loc_node;
 	struct section *sec;
 	unsigned long offset;
 	unsigned int len;
diff --git a/tools/objtool/objtool.c b/tools/objtool/objtool.c
index 9df0cd86d310..c1819a6f2a18 100644
--- a/tools/objtool/objtool.c
+++ b/tools/objtool/objtool.c
@@ -62,6 +62,7 @@ struct objtool_file *objtool_open_read(const char *_objname)
 	INIT_LIST_HEAD(&file.insn_list);
 	hash_init(file.insn_hash);
 	INIT_LIST_HEAD(&file.static_call_list);
+	INIT_LIST_HEAD(&file.mcount_loc_list);
 	file.c_file = !vmlinux && find_section_by_name(file.elf, ".comment");
 	file.ignore_unreachables = no_unreachable;
 	file.hints = false;
diff --git a/tools/objtool/objtool.h b/tools/objtool/objtool.h
index 4125d4578b23..cf004dd60c2b 100644
--- a/tools/objtool/objtool.h
+++ b/tools/objtool/objtool.h
@@ -19,6 +19,7 @@ struct objtool_file {
 	struct list_head insn_list;
 	DECLARE_HASHTABLE(insn_hash, 20);
 	struct list_head static_call_list;
+	struct list_head mcount_loc_list;
 	bool ignore_unreachables, c_file, hints, rodata;
 };
 
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-3-samitolvanen%40google.com.
