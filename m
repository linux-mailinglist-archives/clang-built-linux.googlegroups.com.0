Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB2UF2T3QKGQEWZBDJ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDBD20A650
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 22:02:50 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id e11sf8128477wrs.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 13:02:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593115370; cv=pass;
        d=google.com; s=arc-20160816;
        b=sd7oXdCfwPeT1PNfBPjuDfKdi7Muw8sMZkLa2adGqVPX01BlPGVUo2hzgzWoDl4Auc
         LV1GBQRSoQwDhu4XaiVuLXY/tXEIt1r2sSiZllSNduE8XU0mSzqMZ3TRBArarV0YwQMR
         LVcUFzxtphlc9GI6rwQfw4IynvzxZkzTMLlQfFQPzTttXBLsGqAlFaJxw6x/d0e/esxa
         ZFmHQr+nT+40mcEDPiravcYyJUAD4AmB5pY0dGNXDLep4GfJ0irSiPn1oPX1OQyWr1+1
         UMz88JeKWCKHqFrwNkx2jul8dMP7Cmor4ouq2VXv/a9SDvONBOuxlyB9w5KwlfCur6Vz
         PpAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=W+i0PqjNm5KMKWtpb2FyXv5X+S9G30MkW3ri27qWlyo=;
        b=wslTMxXkbx9wLLFvdG8qrvBEpi4bA9jDWK6A9KC5fdP1i98oOLQc7hVshpuXiUrPXX
         Mx2WGqFtB1lZWSJQgPfvqOcj8A6DjgC+hK8zlsOJvPQqhedlSNL87aRJ9e5qDHSqpu2G
         W5b+E7AMFVwijw8CQh184JcMeDsogcUlMtHqa9qdtyfYii9gA2pAjKYOFdXFC+m453yB
         cfX5MQSnW7MEt0pry8XEIdXUGo/xbbABFTTFHF/Zn1GDkGC/E6o60wZp8jeVu6G12tDR
         tyAHaX9B7m60AtNVzQ/sHpZ5gsAtiwtRUNlUz6hkCIewq9OYOBA3ANPLnNL+iM/4x+FQ
         X9mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=DyyM5Sav;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W+i0PqjNm5KMKWtpb2FyXv5X+S9G30MkW3ri27qWlyo=;
        b=FXBZcd5wGwmKksyI3w4V8w9yKSPajuALyEYc3qV0EBfaVLlW32hlFTVnrYoxwUc67j
         MGqI4aLd7DECmwDyvlFp1iwpVl3Srm8cLWQud+/CrnCpe9iuOXJLBH0zE18c5mZz++A2
         /qS5eh89OArH5fq7msASTfQTbpTZFOas89WqukeEuq0HsGO5jb1iF1Dcl22oNEe31J8p
         NWE9gcR1kuwjZXoIZ2+ccmuc0tV2aDDCADUvFl9stxOjjisJEDnexQFsHqmIMivPVpMK
         SsVSqEV9kK9OSXJSq/yvmW/LVSsd5XU3Y3PGSEXdtRxVi6tFIUh1NlJ6V7Np3JlS3bCC
         Oltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W+i0PqjNm5KMKWtpb2FyXv5X+S9G30MkW3ri27qWlyo=;
        b=PVJfg9tvCOGKN82EELBuSSw5A6OWWHl8fqEKvPxqhLyNvu2ZxwCs4RE1H7EYN7v9Rl
         ls3gSrkDmyLewWJXQPmBvxe/ul2/X8pmsbZ3nJ3moMnetAO3nKYXJg58AxoEOnsk9Rti
         6kUh6IaHE4n1P+zSE6o/twl+Ma1fTxXvosRXC7nuVjDDPJ2ccMZv0LXj01P7yCtxvNm7
         CWG4F05/ksrjfRzJ1pHKodPl1kEejOg1cpXPjWGAZGbGuVjNQ0ASw08RNDC7WzGkOled
         bM3ozHEOkqtjmnvw1XQ/Spwbr+g8Q9sc/tFn9Rx+CLi3oR02rU+bT9Z6bT/c9lyk+NQ9
         mw9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ptg7tq9xoC5u5hzEpnuO7SK/1vOQ/obmbp/kzp3aIZHSn2nbP
	TqtLIzKNlJc9xiaqMdQwIxU=
X-Google-Smtp-Source: ABdhPJwoKyN8HnbVI3Thq3dRlOgq0rgIR6osSd5IIDFcaCVQJr/Zg4QzYJoWFfY/bMZRnnF96vX0Ag==
X-Received: by 2002:a1c:48:: with SMTP id 69mr5439752wma.32.1593115370559;
        Thu, 25 Jun 2020 13:02:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:cc0a:: with SMTP id h10ls3327833wmb.3.gmail; Thu, 25 Jun
 2020 13:02:50 -0700 (PDT)
X-Received: by 2002:a1c:dfd6:: with SMTP id w205mr5509544wmg.118.1593115370043;
        Thu, 25 Jun 2020 13:02:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593115370; cv=none;
        d=google.com; s=arc-20160816;
        b=gQ9t2c0Sp09hmlsDn7V4GB8xq621r31+yFrM3C2TcUKOB6NJ4XQxLQ5d3NcMsYiz5X
         IT0jR746kSDTNVGqtVnOaoeRzHFr3ciAddz4WC6Qx3ebYTi0TLKGdVikDy5krUG7AX5p
         lxB5G1HY3kecKeZe6jJ+7o+pK4VCD4xE25y1tTdHpvEcOv2sh8T9i6YAi3gc5k+rhLfg
         qdMkNdyhgubAMJbnw/e/N1zId2jNtRHoakW0ZlwbbUJrdk6bPQBPFg7t8H7idSgHl5RG
         vUQ7eLvfbMA9/vGt0telGL24cVYOPgoh623pYlkEM2JQSlBiakbkQccb3EgZXBEfS2/s
         yTng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FsDT+UwWj8NjanG08/h+QS1cpoNn0JdTXUHH0/+8kpM=;
        b=Ryaq0QKVG7kieRPoXr5JcTz2qLoAeU+6xWo7by18uH37iM0QJMI1+5xOeaEdnvREQQ
         TWAbgEQfsnyfme74UUSn2Bai7q2vNl+pdN2fy9f3GPq6H6T8JrPB4elA4PUvHSgBKj2l
         Vrvy+8RKS8E8IXKaDmziIcoyZiqzuMOWwxxr6bKxbnBY0SaoiuS1GhML1cVxIoz87xmr
         Z7KhuUAgVwJJD41e42i1Jm/ZeTATWy6jffjmsNcnRd1m/Ah9qpJ1CBa6Rzm8j6lHldPf
         RebErIZ2qn4Sqa3bdammt7rzL6TXithDleAAGhimrs+wG6wnfZVQPW1syAK0Yzly6uzZ
         NCXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=DyyM5Sav;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id m16si742404wmg.2.2020.06.25.13.02.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 13:02:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joY52-0001sT-PM; Thu, 25 Jun 2020 20:02:41 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id CF1763003E5;
	Thu, 25 Jun 2020 22:02:35 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C031B2856A6F6; Thu, 25 Jun 2020 22:02:35 +0200 (CEST)
Date: Thu, 25 Jun 2020 22:02:35 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	mhelsley@vmware.com
Subject: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
 <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625161503.GB173089@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=DyyM5Sav;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 25, 2020 at 09:15:03AM -0700, Sami Tolvanen wrote:
> On Thu, Jun 25, 2020 at 09:45:30AM +0200, Peter Zijlstra wrote:

> > At least for x86_64 I can do a really quick take for a recordmcount pass
> > in objtool, but I suppose you also need this for ARM64 ?
> 
> Sure, sounds good. arm64 uses -fpatchable-function-entry with clang, so we
> don't need recordmcount there.

This is on top of my local pile:

  git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git master

which notably includes the static_call series.

Not boot tested, but it generates the required sections and they look
more or less as expected, ymmv.

---
 arch/x86/Kconfig              |  1 -
 scripts/Makefile.build        |  3 ++
 scripts/link-vmlinux.sh       |  2 +-
 tools/objtool/builtin-check.c |  9 ++---
 tools/objtool/builtin.h       |  2 +-
 tools/objtool/check.c         | 81 +++++++++++++++++++++++++++++++++++++++++++
 tools/objtool/check.h         |  1 +
 tools/objtool/objtool.h       |  1 +
 8 files changed, 91 insertions(+), 9 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index a291823f3f26..189575c12434 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -174,7 +174,6 @@ config X86
 	select HAVE_EXIT_THREAD
 	select HAVE_FAST_GUP
 	select HAVE_FENTRY			if X86_64 || DYNAMIC_FTRACE
-	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_GRAPH_TRACER
 	select HAVE_FUNCTION_TRACER
 	select HAVE_GCC_PLUGINS
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 2e8810b7e5ed..c774befc57da 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -227,6 +227,9 @@ endif
 ifdef CONFIG_X86_SMAP
   objtool_args += --uaccess
 endif
+ifdef CONFIG_DYNAMIC_FTRACE
+  objtool_args += --mcount
+endif
 
 # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
 # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 92dd745906f4..00c6e4f28a1a 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -60,7 +60,7 @@ objtool_link()
 	local objtoolopt;
 
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check"
+		objtoolopt="check --vmlinux"
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index 4896c5a89702..a6c3a3fba67d 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -18,7 +18,7 @@
 #include "builtin.h"
 #include "objtool.h"
 
-bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu;
+bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu, mcount;
 
 static const char * const check_usage[] = {
 	"objtool check [<options>] file.o",
@@ -36,12 +36,13 @@ const struct option check_options[] = {
 	OPT_BOOLEAN('d', "duplicate", &validate_dup, "duplicate validation for vmlinux.o"),
 	OPT_BOOLEAN('l', "vmlinux", &vmlinux, "vmlinux.o validation"),
 	OPT_BOOLEAN('F', "fpu", &fpu, "validate FPU context"),
+	OPT_BOOLEAN('M', "mcount", &mcount, "generate __mcount_loc"),
 	OPT_END(),
 };
 
 int cmd_check(int argc, const char **argv)
 {
-	const char *objname, *s;
+	const char *objname;
 
 	argc = parse_options(argc, argv, check_options, check_usage, 0);
 
@@ -50,9 +51,5 @@ int cmd_check(int argc, const char **argv)
 
 	objname = argv[0];
 
-	s = strstr(objname, "vmlinux.o");
-	if (s && !s[9])
-		vmlinux = true;
-
 	return check(objname, false);
 }
diff --git a/tools/objtool/builtin.h b/tools/objtool/builtin.h
index 7158e09d4cc9..b51d883ec245 100644
--- a/tools/objtool/builtin.h
+++ b/tools/objtool/builtin.h
@@ -8,7 +8,7 @@
 #include <subcmd/parse-options.h>
 
 extern const struct option check_options[];
-extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu;
+extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu, mcount;
 
 extern int cmd_check(int argc, const char **argv);
 extern int cmd_orc(int argc, const char **argv);
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 6647a8d1545b..ee99566bdae9 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -533,6 +533,65 @@ static int create_static_call_sections(struct objtool_file *file)
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
@@ -892,6 +951,22 @@ static int add_call_destinations(struct objtool_file *file)
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
@@ -3004,6 +3079,7 @@ int check(const char *_objname, bool orc)
 	INIT_LIST_HEAD(&file.insn_list);
 	hash_init(file.insn_hash);
 	INIT_LIST_HEAD(&file.static_call_list);
+	INIT_LIST_HEAD(&file.mcount_loc_list);
 	file.c_file = !vmlinux && find_section_by_name(file.elf, ".comment");
 	file.ignore_unreachables = no_unreachable;
 	file.hints = false;
@@ -3056,6 +3132,11 @@ int check(const char *_objname, bool orc)
 		goto out;
 	warnings += ret;
 
+	ret = create_mcount_loc_sections(&file);
+	if (ret < 0)
+		goto out;
+	warnings += ret;
+
 	if (orc) {
 		ret = create_orc(&file);
 		if (ret < 0)
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index cd95fca0d237..01f11b5da5dd 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -24,6 +24,7 @@ struct instruction {
 	struct list_head list;
 	struct hlist_node hash;
 	struct list_head static_call_node;
+	struct list_head mcount_loc_node;
 	struct section *sec;
 	unsigned long offset;
 	unsigned int len;
diff --git a/tools/objtool/objtool.h b/tools/objtool/objtool.h
index 9a7cd0b88bd8..f604b22d22cc 100644
--- a/tools/objtool/objtool.h
+++ b/tools/objtool/objtool.h
@@ -17,6 +17,7 @@ struct objtool_file {
 	struct list_head insn_list;
 	DECLARE_HASHTABLE(insn_hash, 20);
 	struct list_head static_call_list;
+	struct list_head mcount_loc_list;
 	bool ignore_unreachables, c_file, hints, rodata;
 };
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625200235.GQ4781%40hirez.programming.kicks-ass.net.
