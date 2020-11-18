Return-Path: <clang-built-linux+bncBC2ORX645YPRBNNW236QKGQEZ7TLWSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4012B872A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:07:50 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id i19sf2714714ioa.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:07:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737269; cv=pass;
        d=google.com; s=arc-20160816;
        b=PN579j3HKlBlTwsv2Rx7yOR96OHPD4fY8mDeEFi9rLQgtultZCjt/t4ePlZ8Nddnnc
         NWclZLtBupT5SEBS0+exQlehGS9bY52HcZzHybkEQJDxx6I0zNSyljOeixo9qoAVY56H
         9xkDW9CG9/SNYrh7tv5WAEY5OXGNdNXLJd1B1XHjM3Q04Px9QBq9ciucekoWit/1ZpUr
         +p52LtZd/ZMYOk6Y8HX29Vi5L5hnJ6KBq36zuG/il0VbCFWHkGcBoi80g3XT6XE2xOmX
         sE+ckCea3C6SdTKbbpBerEEX5yYjrbXR/bTy4ZGOxbKghW3iabKxX6QJXaNCe+VRybdh
         rgRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=J3HWkdPD3vnykELsyrXxZDSbQaMM1ie2ChN2xBU4ULw=;
        b=gkAe/mVdYi+nWOyHH/6MUu4ecVShfsf5t2smB2yKfqu+5hvLTPdNwHpwucbcbRTwBg
         0eneYmGBfApNO0TZsn4E7mmhwBvIYaVpQQU11VJkKkm5fIvx1s3oKmxqu2a4LcJtF6Hi
         k+e9hBcoNAzq++pMROX7occHbFQMGJ7Pp3eIeQcDGeLtx94O1Dr+erlNYP3oGDeJWKYc
         +GEPsfUGfAVyqP8K1B15xDGGb4b3pkvjg5LNDo237nOX57F2+DQVl4ttQh+TnsYycl2O
         WFtk4GaxuU707s6AhcUuAI1SjnNVbeKjI+iKn9kzKZcYLJPzfTdx4c4vETmzodDP26pn
         9bmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YwmN4Oeg;
       spf=pass (google.com: domain of 3m5u1xwwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3M5u1XwwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J3HWkdPD3vnykELsyrXxZDSbQaMM1ie2ChN2xBU4ULw=;
        b=mROO2K9dUtJ5mX0enWff/x2hSgA+Mxp/R5U0vX61Qfz9ZabedGjZv+ezAZFZ+TIsh0
         hlv/HNuNvPJJGntwD/bms9R+H5j7fyouHg8NOoeu0y8pToXEHSc+ioeV56ku+JIea9oD
         95AveT/+OUp9h6nbIdySc/aahr/T4rDjsvNnHnjeLoQ0sDjdseVX+a1bbaw4m7P9jvDb
         X5jo3KGE6w/QCqc64WdzfifanoOHEnjXdAIMNy+nY12iDM590Wycgwv3zW4XUZyLJoor
         GDOjFjKJQJSYr8QkEpB4y/kWOniWt4x86D15EhyUbnPgn60Y/7xdhsbodbw3/8MCt5EN
         d0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J3HWkdPD3vnykELsyrXxZDSbQaMM1ie2ChN2xBU4ULw=;
        b=NcxiZcl1ugAaUeHfmdffqlSmvE16Hkn9zF2SUPtEfx52Q+eoGwtWYlGwKq5Jn4bxTk
         qUNaPWQAltzzf1oJVyfmYdzsv2CUtWA1Y0PcEQxH5PYkTTKOIY18mODYHUw/v/2ucm93
         UfiRhMB+XhxdpKZSW+sdcPVyt6soTyn5BN3Si6KgfQ8dbl+6qdLAECEYSlHHUmDmLQE/
         itO68n43PSiT8L+Ahbvl3OT+CL1jbD6jpHgefAr6C4xvScZjDw+Mw1/KN4zRgiTueiCT
         GfasuDX9o+gmQq6ov33JvF2LvyzWtNjrZocaUE4CNGDKtv9QWyMPcd944oGLaKUZm/JG
         poIg==
X-Gm-Message-State: AOAM5327n1nwFku644anlyuGrS72MIqzN8eLsJaBgBn/cnlWAs0/R2wi
	BPayVfQAOqghC2EL2G9VTzo=
X-Google-Smtp-Source: ABdhPJy4hWE5S9yrJ2MlG2wkR6L+n8RlGqTFl4Cd7QTmWEckerwLeulqUl1H4dFweJOFx5ycJCrNyg==
X-Received: by 2002:a02:234f:: with SMTP id u76mr10769574jau.117.1605737269267;
        Wed, 18 Nov 2020 14:07:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:b113:: with SMTP id r19ls177262jah.8.gmail; Wed, 18 Nov
 2020 14:07:48 -0800 (PST)
X-Received: by 2002:a02:dc3:: with SMTP id 186mr10708369jax.141.1605737268666;
        Wed, 18 Nov 2020 14:07:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737268; cv=none;
        d=google.com; s=arc-20160816;
        b=stMqfZmoEsdkBY8w9SxHvJjy1JCHJmGJNJQFKNIReaqj/9mWYOMdqP6Tc/MzTp+b6o
         qnvAESlb3gIsM76/k1+vtaQ2VXHoZbMIpFW0IZWnfWcazdg180dKfuPByGCqPZYlvVty
         V3h23YI5XdmNlZAWEoOM9AZ2KYZoBwamtT4+Imu4WZBOuVIHSBsj+Q9b9Ngul5oRI4he
         sT9VpWOOv0OKr8sDORQftugrx6l105Pyw5QKULCgkWutihjzLChfbfintMtspYInKRAi
         EgDhoawnYsGsR1VXbF6X3RDuAjHpoDR1QQ6k4sSZdHwfCG3rRaEuAO7u6TLiDdEe8nOg
         flzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=x2TD2o4pBSR17VC4+EL/LXT5qmVrZ48B2unbu9dDZv4=;
        b=QqHKPt8OujE3jpPKJAbRzmvdTv3EIy+147/6+mbgTvMs4UVZayzQaRupdyC8i4yoeq
         t5erEy/l9NW8sGcGoKNR0wSS2gREPzQQ54Z3kbg/JyaFnokJaomITmolJo6ajsqqjHtY
         wYaFx0R75c5mHwhYJKG8A3JdkBFbS1fQM++Q32ZriYo3n9XoNDsOndE9uE/ad6q9G2Pg
         R7Hf2aR28tNufYEtxByr46dpcTpwiK3jyq52Y/goRC+q0RNlNqmnkeDCdDMePJRENyt0
         j336epQUo6UlHFAdimn5NLI7I/rYEkvbmrijpE46GEtyDzSNXWjAQ3eZ2u96KDJa6cbA
         TDEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YwmN4Oeg;
       spf=pass (google.com: domain of 3m5u1xwwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3M5u1XwwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id j1si1710345ilk.3.2020.11.18.14.07.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:07:48 -0800 (PST)
Received-SPF: pass (google.com: domain of 3m5u1xwwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id b191so2804181qkc.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:07:48 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5762:: with SMTP id
 r2mr7091445qvx.45.1605737267967; Wed, 18 Nov 2020 14:07:47 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:21 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 07/17] init: lto: ensure initcall ordering
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YwmN4Oeg;       spf=pass
 (google.com: domain of 3m5u1xwwkaeqygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3M5u1XwwKAEQygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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
index 7b53cb3092ee..d466bea7ecba 100644
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
index 94133708889d..53aa3e18ce8a 100644
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
index 78e55fe7210b..c5919d5a0b4f 100755
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
@@ -262,6 +276,7 @@ cleanup()
 {
 	rm -f .btf.*
 	rm -f .tmp_System.map
+	rm -f .tmp_initcalls.lds
 	rm -f .tmp_symversions.lds
 	rm -f .tmp_vmlinux*
 	rm -f System.map
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-8-samitolvanen%40google.com.
