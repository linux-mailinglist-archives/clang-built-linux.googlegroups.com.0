Return-Path: <clang-built-linux+bncBC27X66SWQMBBAML4X6QKGQE4BU5T3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2462BC0A2
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 17:51:14 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id 20sf5335466otc.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 08:51:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605977473; cv=pass;
        d=google.com; s=arc-20160816;
        b=NiVYJIcV70LgOgdlvF3zDVCzaTnBXzAdK+k7Fcr9u5mpPJsquMY7GzTGRW+cV+VjJx
         8HTse8aR2vXrrlhDkS31NsILKQKT43GF4REnjZJuVVxfc4YjZ8hRW45SHdbz+R1SIyUS
         gInQXNxt7TVOrHMn3uY2Su9fWONAKtjBM3nw6fS+Yptf5MV/AS2a9jCfXTd8UWSmTfHj
         yykRsBqp1p7ok9wi4O9u5rOT3fou1LD7EckeXiK5f9qIVUu0ErbyT4O8aRaRHWu6Slxp
         wFqT1spRGjXnelM2+f4HeVO7P+wwBiVMkbldUqd/QgxXJ1z6nb9yLeCMOjNu0iWiBL5X
         xDmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=PMjbyhdil6lDwc8lfse6rOHlr4I7E1H8069gax5Inn0=;
        b=fxMqjOdAazfV2a/zXEhZBssd+9I52/YOsfe1gcckgc/v2t2nUdIblQohBr2MMY+bwX
         wYmqUpBF6hKhbLn4dWOL4/17uYNqW88AgYXif4a4e6mm7ZTt0W5f5ouMl+k9GQ3RuTLX
         /XrPH9ybfVQ/m9nX8owtIlDfy+GYndBXn7fIjomu7qv1M3Kp2n8g6z03U3J+EYFbRFdG
         qrAoyQjZV0vIAtKzRP38HBhNSBe8GU5/Iqsl1SRwgi/Q0QBBjbLqpG2Z3TsGMakljNts
         wh4BSAWd+sC8ZDvQ7hfwj6Vx6TTuJN/+/+PKAWW8PaUyZvfvgbModzboU8FZYy2/mEKG
         MayQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KsF1mbQA;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PMjbyhdil6lDwc8lfse6rOHlr4I7E1H8069gax5Inn0=;
        b=eXCGSSa9Am18TuuDa3vRP/qSe+VCUC3k4Z7c97RDwQs2jjhVhjAy0EK2kQD1RKCbzQ
         7Iqu28+fyqaclHTWs/cehzWj3aRJ6dh8rH4Kato8pJQU3rqrXzyVJqxE6sUmk/EAHSl7
         WJ0BNU3D0B6GyV0RjTtmtxA6nBzvYlzpGo+rYMTmDqO+U2LOeiN2Rf/+RXSSRPTwAvRv
         cDZ1h0f5AcrCbbefR8IRme4Q3jGlGzYP435I7PxMXHPt4uVYGsONgYVsas+DxOzFMdDY
         O1hescP1SCCRHmsHozU2a0hYsJf2PkTt2fsR5L7c3zneSqPC5Avae7V+YBS7PG8dQFb+
         fecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PMjbyhdil6lDwc8lfse6rOHlr4I7E1H8069gax5Inn0=;
        b=UN4Z73oWkeNj2B56mUZy8EWMFzR2NU+82byU7Xe5uezgd5cJgSiB2nYZCUxHtMyFUQ
         EhvRYKQ9OxvaUc6CwwZqFuNkXytyvglW6EW0eJzXEVyL9jwax7/QCe/00X3YQRlggLtq
         l8tJekjoRpfIV+tLss22Y+BCR0yo84VGo0H3NKma3qz5Q8UKKHEJDV4NKWjtdi3cw+p+
         HEycKzdjy3bF1QjAbCjnX7oloHi/jqZrYykLsW5wa5EozPzetsAzYE0zGcTvXc1ODfNQ
         X2L81YGKPKll+A2Vhf1TBnZVg8LVqfu9HWPDFsrifmzWZyvG/1HpvopM05RJGr+SDmzj
         OvyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LVrucQH05bWhip6O9Jgf3ZOF+ASxJG4YRNf6MDSicfCpg/SR2
	qIfGO/FLIKZYrgo0gTA0pzE=
X-Google-Smtp-Source: ABdhPJynyEcNcBLMoOzcHjn4J8duqdplRNjK9cMMKMUoZUJz19szdluOOHWmx63zBm+pzxSOwE6SKQ==
X-Received: by 2002:a9d:171a:: with SMTP id i26mr17178076ota.313.1605977473129;
        Sat, 21 Nov 2020 08:51:13 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51cd:: with SMTP id d13ls2391245oth.11.gmail; Sat, 21
 Nov 2020 08:51:12 -0800 (PST)
X-Received: by 2002:a9d:4e8e:: with SMTP id v14mr17801086otk.3.1605977472676;
        Sat, 21 Nov 2020 08:51:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605977472; cv=none;
        d=google.com; s=arc-20160816;
        b=F+Zvv5Kznq8C7WVO1NHemv8Tx/kQyOcmOsMxVgsazdhhkCHwcJ0fmZFfD7sSD+Iu/p
         lqpcpqTAFQjI94rrZ5f+iSrCQ4waZOVydv4HzmIHgYIEyo2JgIfw4c2y7/kMcJ1NdlZD
         tsUuoeZqM+6G2nHog/ZaHgStU1Xh8+rj/RjiPjjvBXpxCOB8X998wDml+uDjaZwGwI9z
         3FYyLvUSKRavSNk1FoXzb4zbh6eoLQO6IH3unIjjjBmRwJ0voeoXE/JAGqgDEw5lyAhM
         dqeycaq8CoUTwVHOyw3o5qTztR8NzzQlkCFL1WbAvxzPkH2GBGDf8/aoLmJNd0URpJUM
         f2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=zLH0U0S3qPuM/4/c12zDySDpu72UCHtVP0nLwv0orcI=;
        b=TqzyqJGteYNF8vQSZ++uQWIpwbTsH76tZAp9Vrzuvumn0etZ1x9pM955jkLNiy+Whn
         MTY0YXG+1aafk2z528MDXX0FbSRQMOlZdwMhWbQXiiamkmUabNeZECEvjybxlj3DaEA1
         saK4VWy/MHKbon18fSrdhm/lIFRudFE2m37ugo2MNKl8Jgx71IZ7xwpOqhxVRw5Agbjk
         D+De8gf8V/4uq49y8Cva8gl417cql7+z7+s+I6OKvuNRyDRD72V6Alxxojap992QMYR/
         Juh2qbXXTlbtcC4J4lsKcLTeYrrz2y14FoyVL+PM0d8+0r1bug8Zpf9Al1R5Q89ue1VX
         zYuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KsF1mbQA;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id b4si526264ots.4.2020.11.21.08.51.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Nov 2020 08:51:12 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-v3HL7SQMPvKsvNSUAp-1Dw-1; Sat, 21 Nov 2020 11:51:08 -0500
X-MC-Unique: v3HL7SQMPvKsvNSUAp-1Dw-1
Received: by mail-qk1-f200.google.com with SMTP id 202so10918046qkl.9
        for <clang-built-linux@googlegroups.com>; Sat, 21 Nov 2020 08:51:08 -0800 (PST)
X-Received: by 2002:a05:620a:15ce:: with SMTP id o14mr22885287qkm.231.1605977467697;
        Sat, 21 Nov 2020 08:51:07 -0800 (PST)
X-Received: by 2002:a05:620a:15ce:: with SMTP id o14mr22885248qkm.231.1605977467468;
        Sat, 21 Nov 2020 08:51:07 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id j202sm4129196qke.108.2020.11.21.08.51.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 08:51:06 -0800 (PST)
From: trix@redhat.com
To: trix@redhat.com,
	joe@perches.com,
	clang-built-linux@googlegroups.com
Cc: linux-hyperv@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xen-devel@lists.xenproject.org,
	tboot-devel@lists.sourceforge.net,
	kvm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	devel@acpica.org,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org,
	netdev@vger.kernel.org,
	linux-media@vger.kernel.org,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	ibm-acpi-devel@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	ecryptfs@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	cluster-devel@redhat.com,
	linux-mtd@lists.infradead.org,
	keyrings@vger.kernel.org,
	netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	alsa-devel@alsa-project.org,
	bpf@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-nfs@vger.kernel.org,
	patches@opensource.cirrus.com
Subject: [RFC] MAINTAINERS tag for cleanup robot
Date: Sat, 21 Nov 2020 08:50:58 -0800
Message-Id: <20201121165058.1644182-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KsF1mbQA;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

A difficult part of automating commits is composing the subsystem
preamble in the commit log.  For the ongoing effort of a fixer producing
one or two fixes a release the use of 'treewide:' does not seem appropriate.

It would be better if the normal prefix was used.  Unfortunately normal is
not consistent across the tree.

So I am looking for comments for adding a new tag to the MAINTAINERS file

	D: Commit subsystem prefix

ex/ for FPGA DFL DRIVERS

	D: fpga: dfl:

Continuing with cleaning up clang's -Wextra-semi-stmt

A significant number of warnings are caused by function like macros with
a trailing semicolon.  For example.

#define FOO(a) a++; <-- extra, unneeded semicolon
void bar() {
	int v = 0;
	FOO(a);
} 

Clang will warn at the FOO(a); expansion location. Instead of removing
the semicolon there,  the fixer removes semicolon from the macro
definition.  After the fixer, the code will be:

#define FOO(a) a++
void bar() {
	int v = 0;
	FOO(a);
} 

The fixer review is
https://reviews.llvm.org/D91789

A run over allyesconfig for x86_64 finds 62 issues, 5 are false positives.
The false positives are caused by macros passed to other macros and by
some macro expansions that did not have an extra semicolon.

This cleans up about 1,000 of the current 10,000 -Wextra-semi-stmt
warnings in linux-next.

An update to [RFC] clang tooling cleanup
This change adds the clang-tidy-fix as a top level target and
uses it to do the cleaning.  The next iteration will do a loop of
cleaners.  This will mean breaking clang-tidy-fix out into its own
processing function 'run_fixers'.

Makefile: Add toplevel target clang-tidy-fix to makefile

Calls clang-tidy with -fix option for a set of checkers that
programatically fixes the kernel source in place, treewide.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 Makefile                               |  7 ++++---
 scripts/clang-tools/run-clang-tools.py | 20 +++++++++++++++++---
 2 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index 47a8add4dd28..57756dbb767b 100644
--- a/Makefile
+++ b/Makefile
@@ -1567,20 +1567,21 @@ help:
 	 echo  ''
 	@echo  'Static analysers:'
 	@echo  '  checkstack      - Generate a list of stack hogs'
 	@echo  '  versioncheck    - Sanity check on version.h usage'
 	@echo  '  includecheck    - Check for duplicate included header files'
 	@echo  '  export_report   - List the usages of all exported symbols'
 	@echo  '  headerdep       - Detect inclusion cycles in headers'
 	@echo  '  coccicheck      - Check with Coccinelle'
 	@echo  '  clang-analyzer  - Check with clang static analyzer'
 	@echo  '  clang-tidy      - Check with clang-tidy'
+	@echo  '  clang-tidy-fix  - Check and fix with clang-tidy'
 	@echo  ''
 	@echo  'Tools:'
 	@echo  '  nsdeps          - Generate missing symbol namespace dependencies'
 	@echo  ''
 	@echo  'Kernel selftest:'
 	@echo  '  kselftest         - Build and run kernel selftest'
 	@echo  '                      Build, install, and boot kernel before'
 	@echo  '                      running kselftest on it'
 	@echo  '                      Run as root for full coverage'
 	@echo  '  kselftest-all     - Build kernel selftest'
@@ -1842,30 +1843,30 @@ nsdeps: modules
 quiet_cmd_gen_compile_commands = GEN     $@
       cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
 
 $(extmod-prefix)compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
 	$(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
 	$(if $(CONFIG_MODULES), $(MODORDER)) FORCE
 	$(call if_changed,gen_compile_commands)
 
 targets += $(extmod-prefix)compile_commands.json
 
-PHONY += clang-tidy clang-analyzer
+PHONY += clang-tidy-fix clang-tidy clang-analyzer
 
 ifdef CONFIG_CC_IS_CLANG
 quiet_cmd_clang_tools = CHECK   $<
       cmd_clang_tools = $(PYTHON3) $(srctree)/scripts/clang-tools/run-clang-tools.py $@ $<
 
-clang-tidy clang-analyzer: $(extmod-prefix)compile_commands.json
+clang-tidy-fix clang-tidy clang-analyzer: $(extmod-prefix)compile_commands.json
 	$(call cmd,clang_tools)
 else
-clang-tidy clang-analyzer:
+clang-tidy-fix clang-tidy clang-analyzer:
 	@echo "$@ requires CC=clang" >&2
 	@false
 endif
 
 # Scripts to check various things for consistency
 # ---------------------------------------------------------------------------
 
 PHONY += includecheck versioncheck coccicheck export_report
 
 includecheck:
diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
index fa7655c7cec0..c177ca822c56 100755
--- a/scripts/clang-tools/run-clang-tools.py
+++ b/scripts/clang-tools/run-clang-tools.py
@@ -22,43 +22,57 @@ def parse_arguments():
     Returns:
         args: Dict of parsed args
         Has keys: [path, type]
     """
     usage = """Run clang-tidy or the clang static-analyzer on a
         compilation database."""
     parser = argparse.ArgumentParser(description=usage)
 
     type_help = "Type of analysis to be performed"
     parser.add_argument("type",
-                        choices=["clang-tidy", "clang-analyzer"],
+                        choices=["clang-tidy-fix", "clang-tidy", "clang-analyzer"],
                         help=type_help)
     path_help = "Path to the compilation database to parse"
     parser.add_argument("path", type=str, help=path_help)
 
     return parser.parse_args()
 
 
 def init(l, a):
     global lock
     global args
     lock = l
     args = a
 
 
 def run_analysis(entry):
     # Disable all checks, then re-enable the ones we want
     checks = "-checks=-*,"
-    if args.type == "clang-tidy":
+    fix = ""
+    header_filter = ""
+    if args.type == "clang-tidy-fix":
+        checks += "linuxkernel-macro-trailing-semi"
+        #
+        # Fix this
+        # #define M(a) a++; <-- clang-tidy fixes the problem here
+        # int f() {
+        #   int v = 0;
+        #   M(v);  <-- clang reports problem here
+        #   return v;
+        # }
+        fix += "-fix"
+        header_filter += "-header-filter=.*"
+    elif args.type == "clang-tidy":
         checks += "linuxkernel-*"
     else:
         checks += "clang-analyzer-*"
-    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
+    p = subprocess.run(["clang-tidy", "-p", args.path, checks, header_filter, fix, entry["file"]],
                        stdout=subprocess.PIPE,
                        stderr=subprocess.STDOUT,
                        cwd=entry["directory"])
     with lock:
         sys.stderr.buffer.write(p.stdout)
 
 
 def main():
     args = parse_arguments()
 
-- 
2.18.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201121165058.1644182-1-trix%40redhat.com.
