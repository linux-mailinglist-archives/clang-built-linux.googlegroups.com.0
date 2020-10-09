Return-Path: <clang-built-linux+bncBC2ORX645YPRBU4YQL6AKGQEY7YTNEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F212288DFF
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:13 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id w15sf580072oth.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260052; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jt1n4H6sDRlBkHRgfb/H70x24iuMLSNZ+iAVDRD2786NhOYl4+l3tjSB0RYGbzpJ39
         EJhwNkvLwx9miQ+Gj75H07D1i7YBl9taAMCMEB9PFsNW1+SyaX0yFVTivqfMmODOsTa0
         nwMIjH8qDcM5Wo+SmAACB2TLY5DYnT7Qeyc4FsDk9dvQBq+3uJQsMiLtjVEKk5trsXBy
         BXXgEe5Bb7GyIYcZ+5ORgcCGvpqLMZQ7y+TZCVDQZi7raP8Vs+eXQRYyNipWwwNifpHP
         qPYxUPqZ8mYLiVUAFifZn40GhNpS2jzPl/2HtV9Vtjvw9QBVXldxkW+Nk4VewVsdopuZ
         3yiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=hOGohklK1bjky1f1doDInNKsSyZqe04uP5wKIodbWVs=;
        b=ukYPPvCboskmWbCwDefJ94kd1QW5VOXZqXR87IcK3o5qE07pDuk5xYQp+MpqnNzzYZ
         3sAhBmpn62sDdyP3GQ+f+aft9BzkF0qiTrp4mLnpjpF3y682N29QI4fuPpOC+6QMWe/P
         8KHVpgHAlOm/oYNL57N9LWfCHGr2nS/yKzXxY4FtipWiSiS6fTrbUmXHIWoi4/C1z7ZQ
         PhwHtgWwX+9XfsPi6Vvr6W0/OuLvKpKpBC3rEiVtDxEIngEHbqPohHuej2OWTKbaJu3w
         dJzH/qdIcHdtIp+OfX0VYEYUCFdSExp4bBbxyCnHgSENNCr9e0MWlvJBencY7ye3y7Fw
         Q+sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9AYhGZQ;
       spf=pass (google.com: domain of 3u4yaxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3U4yAXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hOGohklK1bjky1f1doDInNKsSyZqe04uP5wKIodbWVs=;
        b=BSaYW/mlNVSwyZxKs6UwLhvYTpiScqM2+N1sdkcfR4j75/ms45G8N7J4CCahbJCZlR
         AY4etETC6dN5oSkAVxp/5rO4z5HCOvPqHjObASm7m6P+bS2fYW9bKM8Vt4CQcOQSw4Zy
         4RPVbVeoQgc13ToH8UJ8HLkPtk6IVqy0MTuuSJgZdXaWMIVBLoDi/VoE+HkxhbbJ8MOg
         adnT/nuaAL0w1Tu4oqc59kiliCktFOUKVMSEsJqn0Mq+k6pi+mu8qLn0WNMG3BGJPVMM
         SNhV3qJkEfcuuJFoeVYSzj7pDtWIsc8clU34kdZZSQfxfTy7N6SFxUvdOD/qlohIV5OX
         hHmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hOGohklK1bjky1f1doDInNKsSyZqe04uP5wKIodbWVs=;
        b=j1gdt4WytiAaTVs92USYAT/IPheoNYMbCaJkYVoFgy0CygNdgiE3S9TsryAe8rjpcn
         A72eYxujFn3NHjkb53QAVxp2WGBxXuEL0KhhYFvyQjSI4ao3pAFL9SU6Qyapl2IlPMvt
         QR6VKr6K+6nq3K3GRDXeE21dq785M1Vom9VD+BeS4wpHWBvx2lyXJHn2X46Vr3P+inz6
         lLoEbfhSJRPIF4C7OgIo0ZqYQomlLe17q9o5tHuWBy9s3dI5URorrnalpgMZWY6lQ98F
         oJiqIo9HhTUVJkMKVkx5LPcWp7qsYR6/nw4ZjmwpHH5qb3zeBd1/qzuD/rUkRqO1J4wU
         mU0w==
X-Gm-Message-State: AOAM530WiKPjIVt2ibiV1KcdjLb6t/P6GSEicLMkItCbBsCPWRzEpayv
	tgB7oPXh2SI3RlZwOHk/szI=
X-Google-Smtp-Source: ABdhPJykb0Jb8HTIi4jjytE8mCqcX4XFRylXiCCuWTMHrZnV5FSsHgEXWNQ43PHmvqlUhqRn/2MJlg==
X-Received: by 2002:a9d:7c91:: with SMTP id q17mr5410792otn.253.1602260052157;
        Fri, 09 Oct 2020 09:14:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4ec7:: with SMTP id r190ls318942ooa.6.gmail; Fri, 09 Oct
 2020 09:14:11 -0700 (PDT)
X-Received: by 2002:a4a:b443:: with SMTP id h3mr9678034ooo.45.1602260051575;
        Fri, 09 Oct 2020 09:14:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260051; cv=none;
        d=google.com; s=arc-20160816;
        b=v6J8+anz0Yoc42dtiOv7QzAyOBayLVgbjFuIZWs82x2sXL2m3U/JF6Q28HdTCoNBxR
         LRJ6rVeGJrjaJE9ADuh0kn2ZyfuKnbBoDeIOTBjmseLLDBkO3QswzXg1SaE0VgPbfxS9
         9cIHjtIpF/b/fDGNur1h0272+vpRQtdl2Y8xYNRb2s5ir2GLPa2qf9z5Huwqt7b4oFEj
         Gg5Xiqc/3oTEWCRMTmS4zc4wkVpieZUduHp4iUrfcKgd+Dqp/G2i4OrTUdT0MQHWJG8Z
         xA1OhJMjpuMYBEqXvcoGWHiEHT8T89go845aCVEm53B5ToibLLMZylUjGix3tqFCDe0o
         FsJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=8qK4bJZyQDR87RnO4mGuyFKTVY7cPxnhOBu/7+99VLY=;
        b=h5/Alh7bAJnA7EX5v7kUh466Xev55enrUKDryTiqHx/danv/DyH0cBhOQUSijn3k2k
         bz2BVbtFUDPBnrX0uq4rUmNGZPcjpoxnLdkmMmP8zfKFj8iiDrz+fAN0a5sNPDUVQ/1T
         nbbNW2apz54NZZIZeb23Y5/aVruaovMkJj7GOFVhGfCw68dC69/fWMiWHSh+uJR174i5
         JPOVvVYHQ5EyJ5pQCC34eTEgGDgEmT7CkCYZmc8eZZa1Gg+TMgXWB7NeyYG2HBrC8Ost
         X7KrxUtkCiTQVAqCFqElVwaixZkeRWt1aBAMvXiiSs4AbSq4o4aCzJ6euBPGkZ6/ce35
         m1SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h9AYhGZQ;
       spf=pass (google.com: domain of 3u4yaxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3U4yAXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id r6si1581436oth.4.2020.10.09.09.14.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3u4yaxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id m62so5815013ybb.6
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:11 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:ea0c:: with SMTP id
 p12mr18776838ybd.245.1602260051044; Fri, 09 Oct 2020 09:14:11 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:24 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 15/29] init: lto: ensure initcall ordering
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
 header.i=@google.com header.s=20161025 header.b=h9AYhGZQ;       spf=pass
 (google.com: domain of 3u4yaxwwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3U4yAXwwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
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

With LTO, the compiler doesn't necessarily obey the link order for
initcalls, and initcall variables need globally unique names to avoid
collisions at link time.

This change exports __KBUILD_MODNAME and adds the initcall_id() macro,
which uses it together with __COUNTER__ and __LINE__ to help ensure
these variables have unique names, and moves each variable to its own
section when LTO is enabled, so the correct order can be specified using
a linker script.

The generate_initcall_ordering.pl script uses nm to find initcalls from
the object files passed to the linker, and generates a linker script
that specifies the same order for initcalls that we would have without
LTO. With LTO enabled, the script is called in link-vmlinux.sh through
jobserver-exec to limit the number of jobs spawned.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/init.h               |  52 +++++-
 scripts/Makefile.lib               |   6 +-
 scripts/generate_initcall_order.pl | 270 +++++++++++++++++++++++++++++
 scripts/link-vmlinux.sh            |  15 ++
 4 files changed, 334 insertions(+), 9 deletions(-)
 create mode 100755 scripts/generate_initcall_order.pl

diff --git a/include/linux/init.h b/include/linux/init.h
index 212fc9e2f691..af638cd6dd52 100644
--- a/include/linux/init.h
+++ b/include/linux/init.h
@@ -184,19 +184,57 @@ extern bool initcall_debug;
  * as KEEP() in the linker script.
  */
 
+/* Format: <modname>__<counter>_<line>_<fn> */
+#define __initcall_id(fn)					\
+	__PASTE(__KBUILD_MODNAME,				\
+	__PASTE(__,						\
+	__PASTE(__COUNTER__,					\
+	__PASTE(_,						\
+	__PASTE(__LINE__,					\
+	__PASTE(_, fn))))))
+
+/* Format: __<prefix>__<iid><id> */
+#define __initcall_name(prefix, __iid, id)			\
+	__PASTE(__,						\
+	__PASTE(prefix,						\
+	__PASTE(__,						\
+	__PASTE(__iid, id))))
+
+#ifdef CONFIG_LTO_CLANG
+/*
+ * With LTO, the compiler doesn't necessarily obey link order for
+ * initcalls. In order to preserve the correct order, we add each
+ * variable into its own section and generate a linker script (in
+ * scripts/link-vmlinux.sh) to specify the order of the sections.
+ */
+#define __initcall_section(__sec, __iid)			\
+	#__sec ".init.." #__iid
+#else
+#define __initcall_section(__sec, __iid)			\
+	#__sec ".init"
+#endif
+
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define ___define_initcall(fn, id, __sec)			\
+#define ____define_initcall(fn, __name, __sec)			\
 	__ADDRESSABLE(fn)					\
-	asm(".section	\"" #__sec ".init\", \"a\"	\n"	\
-	"__initcall_" #fn #id ":			\n"	\
+	asm(".section	\"" __sec "\", \"a\"		\n"	\
+	    __stringify(__name) ":			\n"	\
 	    ".long	" #fn " - .			\n"	\
 	    ".previous					\n");
 #else
-#define ___define_initcall(fn, id, __sec) \
-	static initcall_t __initcall_##fn##id __used \
-		__attribute__((__section__(#__sec ".init"))) = fn;
+#define ____define_initcall(fn, __name, __sec)			\
+	static initcall_t __name __used 			\
+		__attribute__((__section__(__sec))) = fn;
 #endif
 
+#define __unique_initcall(fn, id, __sec, __iid)			\
+	____define_initcall(fn,					\
+		__initcall_name(initcall, __iid, id),		\
+		__initcall_section(__sec, __iid))
+
+#define ___define_initcall(fn, id, __sec)			\
+	__unique_initcall(fn, id, __sec, __initcall_id(fn))
+
 #define __define_initcall(fn, id) ___define_initcall(fn, id, .initcall##id)
 
 /*
@@ -236,7 +274,7 @@ extern bool initcall_debug;
 #define __exitcall(fn)						\
 	static exitcall_t __exitcall_##fn __exit_call = fn
 
-#define console_initcall(fn)	___define_initcall(fn,, .con_initcall)
+#define console_initcall(fn)	___define_initcall(fn, con, .con_initcall)
 
 struct obs_kernel_param {
 	const char *str;
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index ecb97c9f5feb..1142de6a4161 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -117,9 +117,11 @@ target-stem = $(basename $(patsubst $(obj)/%,%,$@))
 # These flags are needed for modversions and compiling, so we define them here
 # $(modname_flags) defines KBUILD_MODNAME as the name of the module it will
 # end up in (or would, if it gets compiled in)
-name-fix = $(call stringify,$(subst $(comma),_,$(subst -,_,$1)))
+name-fix-token = $(subst $(comma),_,$(subst -,_,$1))
+name-fix = $(call stringify,$(call name-fix-token,$1))
 basename_flags = -DKBUILD_BASENAME=$(call name-fix,$(basetarget))
-modname_flags  = -DKBUILD_MODNAME=$(call name-fix,$(modname))
+modname_flags  = -DKBUILD_MODNAME=$(call name-fix,$(modname)) \
+		 -D__KBUILD_MODNAME=kmod_$(call name-fix-token,$(modname))
 modfile_flags  = -DKBUILD_MODFILE=$(call stringify,$(modfile))
 
 _c_flags       = $(filter-out $(CFLAGS_REMOVE_$(target-stem).o), \
diff --git a/scripts/generate_initcall_order.pl b/scripts/generate_initcall_order.pl
new file mode 100755
index 000000000000..1a88d3f1b913
--- /dev/null
+++ b/scripts/generate_initcall_order.pl
@@ -0,0 +1,270 @@
+#!/usr/bin/env perl
+# SPDX-License-Identifier: GPL-2.0
+#
+# Generates a linker script that specifies the correct initcall order.
+#
+# Copyright (C) 2019 Google LLC
+
+use strict;
+use warnings;
+use IO::Handle;
+use IO::Select;
+use POSIX ":sys_wait_h";
+
+my $nm = $ENV{'NM'} || die "$0: ERROR: NM not set?";
+my $objtree = $ENV{'objtree'} || '.';
+
+## currently active child processes
+my $jobs = {};		# child process pid -> file handle
+## results from child processes
+my $results = {};	# object index -> [ { level, secname }, ... ]
+
+## reads _NPROCESSORS_ONLN to determine the maximum number of processes to
+## start
+sub get_online_processors {
+	open(my $fh, "getconf _NPROCESSORS_ONLN 2>/dev/null |")
+		or die "$0: ERROR: failed to execute getconf: $!";
+	my $procs = <$fh>;
+	close($fh);
+
+	if (!($procs =~ /^\d+$/)) {
+		return 1;
+	}
+
+	return int($procs);
+}
+
+## writes results to the parent process
+## format: <file index> <initcall level> <base initcall section name>
+sub write_results {
+	my ($index, $initcalls) = @_;
+
+	# sort by the counter value to ensure the order of initcalls within
+	# each object file is correct
+	foreach my $counter (sort { $a <=> $b } keys(%{$initcalls})) {
+		my $level = $initcalls->{$counter}->{'level'};
+
+		# section name for the initcall function
+		my $secname = $initcalls->{$counter}->{'module'} . '__' .
+			      $counter . '_' .
+			      $initcalls->{$counter}->{'line'} . '_' .
+			      $initcalls->{$counter}->{'function'};
+
+		print "$index $level $secname\n";
+	}
+}
+
+## reads a result line from a child process and adds it to the $results array
+sub read_results{
+	my ($fh) = @_;
+
+	# each child prints out a full line w/ autoflush and exits after the
+	# last line, so even if buffered I/O blocks here, it shouldn't block
+	# very long
+	my $data = <$fh>;
+
+	if (!defined($data)) {
+		return 0;
+	}
+
+	chomp($data);
+
+	my ($index, $level, $secname) = $data =~
+		/^(\d+)\ ([^\ ]+)\ (.*)$/;
+
+	if (!defined($index) ||
+		!defined($level) ||
+		!defined($secname)) {
+		die "$0: ERROR: child process returned invalid data: $data\n";
+	}
+
+	$index = int($index);
+
+	if (!exists($results->{$index})) {
+		$results->{$index} = [];
+	}
+
+	push (@{$results->{$index}}, {
+		'level'   => $level,
+		'secname' => $secname
+	});
+
+	return 1;
+}
+
+## finds initcalls from an object file or all object files in an archive, and
+## writes results back to the parent process
+sub find_initcalls {
+	my ($index, $file) = @_;
+
+	die "$0: ERROR: file $file doesn't exist?" if (! -f $file);
+
+	open(my $fh, "\"$nm\" --defined-only \"$file\" 2>/dev/null |")
+		or die "$0: ERROR: failed to execute \"$nm\": $!";
+
+	my $initcalls = {};
+
+	while (<$fh>) {
+		chomp;
+
+		# check for the start of a new object file (if processing an
+		# archive)
+		my ($path)= $_ =~ /^(.+)\:$/;
+
+		if (defined($path)) {
+			write_results($index, $initcalls);
+			$initcalls = {};
+			next;
+		}
+
+		# look for an initcall
+		my ($module, $counter, $line, $symbol) = $_ =~
+			/[a-z]\s+__initcall__(\S*)__(\d+)_(\d+)_(.*)$/;
+
+		if (!defined($module)) {
+			$module = ''
+		}
+
+		if (!defined($counter) ||
+			!defined($line) ||
+			!defined($symbol)) {
+			next;
+		}
+
+		# parse initcall level
+		my ($function, $level) = $symbol =~
+			/^(.*)((early|rootfs|con|[0-9])s?)$/;
+
+		die "$0: ERROR: invalid initcall name $symbol in $file($path)"
+			if (!defined($function) || !defined($level));
+
+		$initcalls->{$counter} = {
+			'module'   => $module,
+			'line'     => $line,
+			'function' => $function,
+			'level'    => $level,
+		};
+	}
+
+	close($fh);
+	write_results($index, $initcalls);
+}
+
+## waits for any child process to complete, reads the results, and adds them to
+## the $results array for later processing
+sub wait_for_results {
+	my ($select) = @_;
+
+	my $pid = 0;
+	do {
+		# unblock children that may have a full write buffer
+		foreach my $fh ($select->can_read(0)) {
+			read_results($fh);
+		}
+
+		# check for children that have exited, read the remaining data
+		# from them, and clean up
+		$pid = waitpid(-1, WNOHANG);
+		if ($pid > 0) {
+			if (!exists($jobs->{$pid})) {
+				next;
+			}
+
+			my $fh = $jobs->{$pid};
+			$select->remove($fh);
+
+			while (read_results($fh)) {
+				# until eof
+			}
+
+			close($fh);
+			delete($jobs->{$pid});
+		}
+	} while ($pid > 0);
+}
+
+## forks a child to process each file passed in the command line and collects
+## the results
+sub process_files {
+	my $index = 0;
+	my $njobs = $ENV{'PARALLELISM'} || get_online_processors();
+	my $select = IO::Select->new();
+
+	while (my $file = shift(@ARGV)) {
+		# fork a child process and read it's stdout
+		my $pid = open(my $fh, '-|');
+
+		if (!defined($pid)) {
+			die "$0: ERROR: failed to fork: $!";
+		} elsif ($pid) {
+			# save the child process pid and the file handle
+			$select->add($fh);
+			$jobs->{$pid} = $fh;
+		} else {
+			# in the child process
+			STDOUT->autoflush(1);
+			find_initcalls($index, "$objtree/$file");
+			exit;
+		}
+
+		$index++;
+
+		# limit the number of children to $njobs
+		if (scalar(keys(%{$jobs})) >= $njobs) {
+			wait_for_results($select);
+		}
+	}
+
+	# wait for the remaining children to complete
+	while (scalar(keys(%{$jobs})) > 0) {
+		wait_for_results($select);
+	}
+}
+
+sub generate_initcall_lds() {
+	process_files();
+
+	my $sections = {};	# level -> [ secname, ...]
+
+	# sort results to retain link order and split to sections per
+	# initcall level
+	foreach my $index (sort { $a <=> $b } keys(%{$results})) {
+		foreach my $result (@{$results->{$index}}) {
+			my $level = $result->{'level'};
+
+			if (!exists($sections->{$level})) {
+				$sections->{$level} = [];
+			}
+
+			push(@{$sections->{$level}}, $result->{'secname'});
+		}
+	}
+
+	die "$0: ERROR: no initcalls?" if (!keys(%{$sections}));
+
+	# print out a linker script that defines the order of initcalls for
+	# each level
+	print "SECTIONS {\n";
+
+	foreach my $level (sort(keys(%{$sections}))) {
+		my $section;
+
+		if ($level eq 'con') {
+			$section = '.con_initcall.init';
+		} else {
+			$section = ".initcall${level}.init";
+		}
+
+		print "\t${section} : {\n";
+
+		foreach my $secname (@{$sections->{$level}}) {
+			print "\t\t*(${section}..${secname}) ;\n";
+		}
+
+		print "\t}\n";
+	}
+
+	print "}\n";
+}
+
+generate_initcall_lds();
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 7f4d19271180..cd649dc21c04 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -43,6 +43,17 @@ info()
 	fi
 }
 
+# Generate a linker script to ensure correct ordering of initcalls.
+gen_initcalls()
+{
+	info GEN .tmp_initcalls.lds
+
+	${PYTHON} ${srctree}/scripts/jobserver-exec		\
+	${PERL} ${srctree}/scripts/generate_initcall_order.pl	\
+		${KBUILD_VMLINUX_OBJS} ${KBUILD_VMLINUX_LIBS}	\
+		> .tmp_initcalls.lds
+}
+
 # If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
 # .tmp_symversions.lds
 gen_symversions()
@@ -72,6 +83,9 @@ modpost_link()
 		--end-group"
 
 	if [ -n "${CONFIG_LTO_CLANG}" ]; then
+		gen_initcalls
+		lds="-T .tmp_initcalls.lds"
+
 		if [ -n "${CONFIG_MODVERSIONS}" ]; then
 			gen_symversions
 			lds="${lds} -T .tmp_symversions.lds"
@@ -284,6 +298,7 @@ cleanup()
 {
 	rm -f .btf.*
 	rm -f .tmp_System.map
+	rm -f .tmp_initcalls.lds
 	rm -f .tmp_symversions.lds
 	rm -f .tmp_vmlinux*
 	rm -f System.map
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-16-samitolvanen%40google.com.
