Return-Path: <clang-built-linux+bncBC2ORX645YPRBOMYQL6AKGQERFDPUSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A79288DE0
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:13:47 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id y62sf1099132pgy.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:13:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260026; cv=pass;
        d=google.com; s=arc-20160816;
        b=sYcCVV9tfmmjcHjlRFtjF9p2hGA0SgODAlqBELwcmqlh71Eh2Gs6DyHFZOSDLlT0hL
         TWoPziTaRveflojAaGkBES34FPWi63qm0ZvyGWzM9qbsV6zhDrX/METDpvpTuVlciaCP
         1Sllpgwh7mgzIPt06iubxi3r3H0jQpDcOeLqH7JVwaZ/aSqXqIV6VkKZPFx5EfvNockX
         xmOU6QxtNu1/LhhI0NckBG/OQuoylPEbJ1917HfEosKDmrPF0rX1/VvtSNe2GJSAB0Zb
         gLaZkMLDc6hxhcPXzDgXh0Y8C2gTTryEKZtb/piWiNlRPWLCz3DV9+wtqU27qnASWayu
         MxcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=z+l5TuGQJe7PB+sECv/c98IOzqOQsXvtYjHOYDojJlU=;
        b=VCniUvKXh5dv7HQNgddmy2U0qvtyEa/iYkCcFc4f9a9PIg3ujyX40VS7YOCDxUHmEq
         JDqbkZJwOq3MLNgwPyEVW6NvVhEt8f8rx0/5TOuAaaVt0qpyThlDT6H+sUscd2yiMB4e
         4KAEq2cv6UoUnT7yBn53TypYYT97ctCnOWPOuqg/LcanGBFECeYRPPX6Tb+Vebk+u3/g
         wwWk216oh6jve414Qv9QbuWiWvm0C9SYp3b44UTsKvBY/laAPcbJomlNIeoOUTGy3vSG
         iItZVbL2sdU2ZlzYgdZ/8FKfWy34UrBM5SEO9ebIfWA67otdQfCE8oeJEa4HA9rEhahj
         dC2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AItaKTzL;
       spf=pass (google.com: domain of 3oiyaxwwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OIyAXwwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z+l5TuGQJe7PB+sECv/c98IOzqOQsXvtYjHOYDojJlU=;
        b=I3CraXAB5m48WvaJQ5no365bu8is4f0KBr6x1/s2hgkVPjh0VE8coV6wRZPcknV6rj
         IR8PFChBNGCzI7XmJBntO4qSgCUaIrIZp1iotN8wdhpkTBLoybXJAo+W4GBWy41F/Diu
         NIE6zfZm9pmjcmDwVCo01SwHWr6aRuRJbxJjor9/PI/cDdsqq1ukPAZpGGqXZln70LRv
         vn400bkX4GBq4Ne97FH8m36evF2yHgALaxbL3iBwqYOQKWtEBu5tdF3p4Gx2fKQ8WT/X
         pUE/XLss534FJa/dPvgFpTXdBoWjscWVVpZFo/85N1Z2Hk0SLBVF323X6kYVa1y9OFND
         8nLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+l5TuGQJe7PB+sECv/c98IOzqOQsXvtYjHOYDojJlU=;
        b=jZT16q1O9RfCOf15albqJ9nd7xMxaf3T30LLCAi0AAPQU3AcNvGdP+qKltRUunI8Zz
         xdD2bnv/hGMNFr0AZD6csQBBGE8LkqEceFtyVM+5Nbhu6+/gfZQqPFqwRArCvaE1P04R
         zlUftq1Sg9dWM+yU4DTZ47hWkeRoSccGe3AwKBMC8AL9kRF4jfvCji48zajhabV16nBC
         UJCAdsfFhLZ906HZ2SL2j7K5BssqRYFGKmEzA6QIKWRgrvVGx9+LHFglGJsDR87n8Alh
         H+1OSyegFG2rqUQ++4H9Bp9+eyNKJyBr7uZQ9uej5UUUcMQ2ilIvZhPwo95ksgeCDiut
         y+uA==
X-Gm-Message-State: AOAM532J+0K5YqdRV8OFf2zZqIE67M4RhR+rqza1SK4+ercKDTobvGm0
	7IwzM7tqpJRWvVgPHtkORxc=
X-Google-Smtp-Source: ABdhPJyVxW6yKgQ7XqUbh0FtZaQ0Jx0Vg0avAtlB5jHPBmh+vdgv22nilot61e/897vuAOui2LsMGA==
X-Received: by 2002:a17:902:8308:b029:d3:d5f6:cad1 with SMTP id bd8-20020a1709028308b02900d3d5f6cad1mr13117660plb.11.1602260026062;
        Fri, 09 Oct 2020 09:13:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1488:: with SMTP id v8ls3412467pfu.3.gmail; Fri, 09
 Oct 2020 09:13:45 -0700 (PDT)
X-Received: by 2002:aa7:8249:0:b029:142:2501:34db with SMTP id e9-20020aa782490000b0290142250134dbmr13231462pfn.52.1602260025391;
        Fri, 09 Oct 2020 09:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260025; cv=none;
        d=google.com; s=arc-20160816;
        b=p/OoiP42G0GzihOfcCinB93wpPXp1TAcnX2Akuwbp/gM5vIQNXz0FbtdMr5PcYfgRo
         STq6GvwcSTm2lz+Gl0Knd2PWI2TFmXZY6PRbHN7BjeqVbSmlu/o9IonXoXndMamJfFs4
         3BlJscBIcImlHyz4rUsDqmqSMKbEd9+/RK5jAv2bCrZHS4Ti7Kk7YOicpQVBVgByqtv+
         8SlD9rdnEQvgHq//KWd2vrAXMreXX+nCaKFATt2e4kitt6yPXhLgaLLewFYMuaYnQFRH
         HVijYDF8pyDyFk2s7iI9+O9buLnPVExMBAqTJng5KQLKHUX002iEssRzunOz9YDTtAEw
         0TZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=U8f6ydCzrFA1+gsHZeI/xdFghtBOR6cuTFbAmTrQoXE=;
        b=F7K5HD8Q0p8bVH32HYO3HPv4WeSXN1C9lTD6y1+zM76lRc00p+Zcy0QdV1ehPjfhS+
         x5CGpT9tb5yCB6YR/BKFZziyDnYG9FK2fXLrT/x8xWEXuwV5AwX+l97IRWOfUGJIh0UQ
         50Am1GJ++Pfq2Ne/ChhXhDslGz0BBlINvJGNLPb8/HOxNFMTSuomKwVKwRhUOs3IVguH
         I2JRjrRLmsCfGoJgks8+WnedHnV+BkKT9/S/h39ewMvbmViV/WMaNQYX/y1/LtZDVcl3
         Y34WswApHE2vMd6J+3Y+U0Bv6+qnif4GLNWx/2uwcis12x7VE6mU1PiJpUpONT7CocIO
         CKdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AItaKTzL;
       spf=pass (google.com: domain of 3oiyaxwwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OIyAXwwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id r23si964531pje.0.2020.10.09.09.13.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oiyaxwwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id t11so6966879pgu.22
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:13:45 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a63:370f:: with SMTP id
 e15mr2644515pga.124.1602260024950; Fri, 09 Oct 2020 09:13:44 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:11 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 02/29] objtool: Add a pass for generating __mcount_loc
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AItaKTzL;       spf=pass
 (google.com: domain of 3oiyaxwwkafufx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3OIyAXwwKAFUFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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
 tools/objtool/builtin-check.c           |  3 +-
 tools/objtool/check.c                   | 82 +++++++++++++++++++++++++
 tools/objtool/include/objtool/builtin.h |  2 +-
 tools/objtool/include/objtool/check.h   |  1 +
 tools/objtool/include/objtool/objtool.h |  1 +
 tools/objtool/objtool.c                 |  1 +
 6 files changed, 88 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index f47951e19c9d..6518c1a6ad1e 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -18,7 +18,7 @@
 #include <objtool/builtin.h>
 #include <objtool/objtool.h>
 
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
 
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 32e6a0db6768..61dcd80feec5 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -524,6 +524,65 @@ static int create_static_call_sections(struct objtool_file *file)
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
@@ -950,6 +1009,22 @@ static int add_call_destinations(struct objtool_file *file)
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
@@ -2921,6 +2996,13 @@ int check(struct objtool_file *file)
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
diff --git a/tools/objtool/include/objtool/builtin.h b/tools/objtool/include/objtool/builtin.h
index 85c979caa367..94565a72b701 100644
--- a/tools/objtool/include/objtool/builtin.h
+++ b/tools/objtool/include/objtool/builtin.h
@@ -8,7 +8,7 @@
 #include <subcmd/parse-options.h>
 
 extern const struct option check_options[];
-extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux;
+extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, mcount;
 
 extern int cmd_check(int argc, const char **argv);
 extern int cmd_orc(int argc, const char **argv);
diff --git a/tools/objtool/include/objtool/check.h b/tools/objtool/include/objtool/check.h
index bba10968eac0..f04415852c29 100644
--- a/tools/objtool/include/objtool/check.h
+++ b/tools/objtool/include/objtool/check.h
@@ -23,6 +23,7 @@ struct instruction {
 	struct list_head list;
 	struct hlist_node hash;
 	struct list_head static_call_node;
+	struct list_head mcount_loc_node;
 	struct section *sec;
 	unsigned long offset;
 	unsigned int len;
diff --git a/tools/objtool/include/objtool/objtool.h b/tools/objtool/include/objtool/objtool.h
index 32f4cd1da9fa..3c899e0ab861 100644
--- a/tools/objtool/include/objtool/objtool.h
+++ b/tools/objtool/include/objtool/objtool.h
@@ -19,6 +19,7 @@ struct objtool_file {
 	struct list_head insn_list;
 	DECLARE_HASHTABLE(insn_hash, 20);
 	struct list_head static_call_list;
+	struct list_head mcount_loc_list;
 	bool ignore_unreachables, c_file, hints, rodata;
 };
 
diff --git a/tools/objtool/objtool.c b/tools/objtool/objtool.c
index e848feb0a5fc..7b97ce499405 100644
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
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-3-samitolvanen%40google.com.
