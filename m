Return-Path: <clang-built-linux+bncBC2ORX645YPRBYGWZ35QKGQEXUMOGVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEDC27DA8C
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:14 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id j6sf4539551pjy.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416033; cv=pass;
        d=google.com; s=arc-20160816;
        b=REuo2YwZYkCujvd1MhuBUorlI6hSjiAqsnQ3D/W0Bxg6e2vIvPVA86T8pJoEdgNbhn
         Ix6Efw3Y+urxGAXebhNAd9xQ5uaEPAxyjjSuCB5dpIFISiyxpTVnfSvhvpWZaFoX98r+
         HqIcx6QeG3n0QHi74W8sCcdL3Q+rQUgZTQdfLhMB0xoe4PlYZvPxUU5hCkDgMv5w54wC
         0MsGygrgZwk83Jfl7cuTc9UW6xuPpk2EK6lOU+kLP9yLkj1fVYp/aC1JetKrWyqMBTP/
         kOAbanwBhD8dnjILlOT9ALBk6KUG4qM55NTyBHm1OvyUM8ZnaX/bniYl0IFuuiRMm82S
         gpmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IkC4outN3nKRfSryqv2K2IFyJk4d3GkjkOXEe+fkPzU=;
        b=gx+fJK3nDpthRfG8MW7Gb3YLrKYY2F7aBBxjBIUMrwzjKmWJulIIh6hCb3eSvLLr4L
         IcwqgmESAQCBXOnwceJFiP3QbTy8atsiu5wQIG7EXrMPmWfJV7z5jaqxYa6+r1yS+QdE
         CtMBJjFfOViqdLtRuZMfWyr8+hw51icJyJEh4ylNL5rF2trRdzN0dVt4o+EnjqrRNSM1
         Cq0q+WU/4gG0feqFHz+cxAGL7YvL14XgViDKXO9OHFXjVSFnANP9bUtV9JE6po6bNET4
         ARzOU/lcwtv015x8QhoHAw2q3+UJvE0oTl5rff7zoU2qzgSVqaOXQptEP4BE7yw5jesd
         by6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OyxYQZfG;
       spf=pass (google.com: domain of 3x6tzxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3X6tzXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IkC4outN3nKRfSryqv2K2IFyJk4d3GkjkOXEe+fkPzU=;
        b=kwUrBA5mDFx+SmA1xU6TS786X1x2ptzjqgf25DJ3DYa8pKejrV1Ai+KCPqPsd7ETka
         5oOvOpG0ncV9HAGON8MgyT2OM9CAXDhk2MzENDQ6UkwB9s387D6GNba7HuJyxJ9W+sI5
         zNV7EdZ2LN4kxPI8NL0okp1YrOq1oUGLn8L8i9QN0MK0tslhHm5o745AIqHwKefjmJ4d
         1cLV74dP28UyLIRSnCv0hoaSnrH9h1PP/Oi/HcDbDeKNkMfy/sEpMtjFu/XO3MbEu+m/
         nAgA5+jgH2mVIjAtm1ZY0Y1roPKDQHwv4SYsaYRlP9P8ZxNH7pmkmqiEId7x09YflmrL
         Ux1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IkC4outN3nKRfSryqv2K2IFyJk4d3GkjkOXEe+fkPzU=;
        b=oY5HnshTfHZSUZR1RcCzuYOQDg6XpemlolnWZRd6Wek5jg/TnUUDNc5iAywVTPnvpA
         Il5G+AlLZcxu6cEuCJ7R37yLhKELuNB4fIEq9YVxIIMR3EEkQ0l+XtKYVIw/8zIM/yzT
         hY7Tp1A/iuIpbb9guNFyGOihKnktlfRJUAB1OfINMnq4Hixkak3n8/pIcgc9J3N5lmTy
         5x2Cwzeul5xL0aFAcEAIwRmcb2FouIEbBd7V14IhzMmS4/6RT6LB0f70k0E1JkDIkhsi
         Mv95G9qfuE14NTq3/BhzMCHwsaV+05+6mZyHi8BDorELYiF8NTpebEp0yxS4RjLT15b7
         gcuw==
X-Gm-Message-State: AOAM53148itYqL0LQDGsNi2EMeNB5UPV2hNChcQ1YMPPTd2Cx4sTBRGf
	eiryka2hjUBFRBrtddc0kwA=
X-Google-Smtp-Source: ABdhPJyGJb3/B1i1N/W8u0PLYnUI+M/Pxi3NWZCpNzia5J28SVkoRhUVK/b/KCXcz6IXTSwkhrPyFA==
X-Received: by 2002:a63:c5b:: with SMTP id 27mr4919986pgm.80.1601416032953;
        Tue, 29 Sep 2020 14:47:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:8d0:: with SMTP id ds16ls28108pjb.0.gmail; Tue, 29
 Sep 2020 14:47:12 -0700 (PDT)
X-Received: by 2002:a17:90b:350b:: with SMTP id ls11mr5738945pjb.201.1601416032338;
        Tue, 29 Sep 2020 14:47:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416032; cv=none;
        d=google.com; s=arc-20160816;
        b=PmE8epqnXjkkN53Sd2C3pVHMAL4YVD0Vo3njAnsx549+TkCmM6iRx7K1QVFzpq5Amz
         Z52OnHYMwrVcqflLV3maVIM35/DyWrdNEN5QW3Ho2WjJe5HX/Cg3atmDlyDFIxc2mu9V
         CG/3DZgJ9AiCFyE6lPKmiSskdKZ/YAIoIof/yNIopLqQNHimimx4tJCqqXJ/HQnShmf0
         EDVzezP8Do5p1j4JeIlu57W5GwsIcndsvtRgo1QETCZ1dzxD2bf3zrgo18UxJQNXyypk
         rw+n5m4a3e1yFZnadZ+z+wMGxvf/laE+kI189Mwx+kyqtw2EJIDuHmxkT3jZ5a2h88tE
         ktRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=bS7ZfdGtF2z2Q6puSOsJuVLGuVIGruxES1U/NivPoqQ=;
        b=ky5w1zb4FCyG5LHa+m4glma1vmhvsqS2ZRnSGxqo90/YruvHXz3HFHFsL4fSQgmC/5
         ycsEUVKu3UnWS56Tc6+TWxsr8v4YZToaYGtYAsQdLEq2l2jVi5EVpn140/yZBBaS7jHk
         ZfIGQ+hWt9iBNgdh9n8pO50hkrF/yCvPcMSc2DXQF3QX0Lg+lS+mKG6qPe/xGznqv4SR
         EfSRlNBRAg1Iq4CmqOTFtTjo3yBdp2VUzfGBlXJeCrUwggVAVr/hnFzYITI68wkOuKKj
         OTSlCQ/8yXX2GwYgIdvG7jfchg0zhPleO9h2C+7Rf/Vi33BBe7BhT5BAxEm4UepBV5Ep
         Qh2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OyxYQZfG;
       spf=pass (google.com: domain of 3x6tzxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3X6tzXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id d60si801649pjk.0.2020.09.29.14.47.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3x6tzxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 196so3662682qkn.6
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:12 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:47cc:: with SMTP id
 p12mr6558350qvw.22.1601416031423; Tue, 29 Sep 2020 14:47:11 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:19 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 17/29] init: lto: ensure initcall ordering
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
 header.i=@google.com header.s=20161025 header.b=OyxYQZfG;       spf=pass
 (google.com: domain of 3x6tzxwwkaiy2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3X6tzXwwKAIY2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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
index 96cf5a5d19df..28b6bb36b6bf 100755
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
@@ -74,6 +85,9 @@ modpost_link()
 		--end-group"
 
 	if [ -n "${CONFIG_LTO_CLANG}" ]; then
+		gen_initcalls
+		lds="-T .tmp_initcalls.lds"
+
 		if [ -n "${CONFIG_MODVERSIONS}" ]; then
 			gen_symversions
 			lds="${lds} -T .tmp_symversions.lds"
@@ -285,6 +299,7 @@ cleanup()
 {
 	rm -f .btf.*
 	rm -f .tmp_System.map
+	rm -f .tmp_initcalls.lds
 	rm -f .tmp_symversions.lds
 	rm -f .tmp_vmlinux*
 	rm -f System.map
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-18-samitolvanen%40google.com.
