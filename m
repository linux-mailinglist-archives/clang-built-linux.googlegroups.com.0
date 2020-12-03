Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBHKUD7AKGQEOI7AFVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 067602CCB17
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:54 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id 89sf133523uar.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956293; cv=pass;
        d=google.com; s=arc-20160816;
        b=ohSIt/16I3X8E/YUIEJqs7DP3N/PVWYBAI80N3GW2+kJfZHqWr2RiNeypMmE+rLlHG
         6USGEw+hH6kx6+golOcC8202Sj1eFwQDYwrOF7NcxXGye1RwhriBa72XkSNEFah44apK
         Rp+2b8Daz9ch7F2jOgB9+vF1HrGD/n0iVtju9RWw8FEJe+/SpwJ6DWmXrYfglNi+oNCm
         E38/3jJshECwM+bL+cBrgc7k4PYOW6cQ8s+556uGzhundEfRh/vhE4E9h7QBXpjPSg/d
         iuFhMiFqRjjQOWlfq+HbFbwatmKzynaiq86dPryAfFYb256RmpB1Q9wWQkrbduT0riDN
         JoHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oGPzNK2IZuxBnt3JwgWoQVGHJ5UepicEJznGRAoML/M=;
        b=IvNCUM7fKwsTrBW2jDdj/stUrLxZKk5da0t/ihoYXDsO9wWOQveO3t359237BqkeQH
         ZRzTBjror9aVNqJKA5WRQG5PRbUlTvhBnkpGAmsMRDQa2wc83XbFKYCzNDPwt69AaPHd
         N6bo0OMDzs8PnbBmninRVx/uGRZnDjMRnQtL03sfeo9Scy77Pr4BQs8x12aW1ao9L9Ua
         tOi9rxLgkX5kHPW6rF1ETsi74pAz8SddSzXsBNX0c0kq/FDmxRvflUyclhUwKtPIM5nq
         flKw4vK+Gnc/FaEUCUf11L7mbYdNnblbqlk3L+LM06naLpbNAL8erVwvpYxX8MBmJHDF
         xOFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eoR3a558;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGPzNK2IZuxBnt3JwgWoQVGHJ5UepicEJznGRAoML/M=;
        b=m7uhS4pQ0w4VJ22B9/oNoqgzWT+ZcgKATwVi+gEqZRS4/RWqgsFmBhnh4i/ElxYcnR
         y3nd2bFx9cNM9DJ/uUjAdo+1JMwP2sdwGOjo3ejS/Hohop0L0RAPExYkYgnOQblwZx+K
         IZiY+vA/CmG1Ka5vE9WH3bZ9fowj1w4t33SXqDLEVR8t4ibjlWF+7/QDr9vMAn2mmI2m
         7E8qOL37pJXNXXKxy62s+5ZD1nnwGGOoNwheQMWBk4SikseMs0Qclb18r/DOTzUm/NeM
         tHAi58JdwICAklsVJTYRJZdHlOKiiWLwIVrBQsBjcL01PR0cupDJfgtYJyehgrMVJcK6
         HsOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGPzNK2IZuxBnt3JwgWoQVGHJ5UepicEJznGRAoML/M=;
        b=Nx4ZlaTmqBc+/joX1r9CYnd+9v5uXEV990jF6LHAY7zZ1BSA/5bdYkIUEZ4j81kDBB
         VjMEhFJpSDWndgHOwgLsyh+JufKSYxS/Qmr1z/wDk8/IaY20Plg2sgsMYhLTy6DdSJHa
         bGQaft6Ky0rGog8fiX18VO9CLpb2MniaMWZZ9u03/wqZn8zkyz0u2TSaVjozunXBEjex
         BfYNlA80rR5/CjfBgdN+fYIEtRfKXSeGz/0yFCiD9jEDsKe+QTIvfZgD//UExVvC3zuj
         /8Ouh0vJuNtNBf0NynDo8Or0aVuBkEsgn1Qpew/3slGzBzQewesWH8rxPt/uyh67Mf+h
         xfqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nTOxzKWkpTkBaU5YUoyhsVV8NC751zEoKP/PBogYLbDeIyUzB
	KFKIX13KYU48o5xZwtZKW6o=
X-Google-Smtp-Source: ABdhPJzUhFrNvXV425yvJJAQLTvQmRgG0IoDMZR7Ve1LEvW7lU0FVm+lHha5GaHSoxIgnyOJHzdf+g==
X-Received: by 2002:a1f:a541:: with SMTP id o62mr566586vke.9.1606956293058;
        Wed, 02 Dec 2020 16:44:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3f4e:: with SMTP id i14ls309943uaj.2.gmail; Wed, 02 Dec
 2020 16:44:52 -0800 (PST)
X-Received: by 2002:ab0:37c4:: with SMTP id e4mr694100uav.110.1606956292700;
        Wed, 02 Dec 2020 16:44:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956292; cv=none;
        d=google.com; s=arc-20160816;
        b=0Q2JkedZtsF5KMhMkXFs7q2P1dL7sQvdvzWY9f9/nRZlbhmgDPvz3KVHTyZEXaCwP3
         fJgpMN1mmEAmqdt3QnnfhPWmlVvQDROJgvUmrJmJ/4SOieKIGVpqQnhaWq/PMLlvGec2
         cFn8+qj25/EBMnQvtaHmX7SH5cTAmHYOsQnjADztoboVEYyMODblPyNpQQODcyO5RryO
         LjwQ07aXCOMeR5YZx6hj1qH9TE9L91jLW1K4ZJccPpsdK+hhbOJYc4MgvRct+5INi3rB
         B8WV7ztKckrUM+99sHn0I8NK2bdOhn68+MrXNcfW3/wR7zdeUh+mO2Bvm9M51KTPBuAJ
         T1bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D3rSAsRP5x/CxsRx1K7+9IiYGckWnNmsJInSwUMhv5g=;
        b=yMy1aSvqUgZ+VL95PEDYkjuNoCB1gfRuI7jZ4PgC8FgKMJR9EyiwUfOmc8j8fSG1MY
         RkNOoU+I+4ijX03EcQ6ObMO0YrTXuZqJN3Lo089+gRfv5i63A5DBmiEx7Bz74iEoJ/Sw
         OT0eT8hcgnKzfxJpz0gDjC+QURw73Jn+1Qw2M37YXiml+9zhodMm0hbkE5ITysS5CPfB
         W40Zvst2OFpt1wgKEXYU2oVYmuroE8iPv5CyxUq/xWBXLx9oY7fzuQSL7DUo1FRNBaDn
         xRx/n2vOzqA0mfx5SsifwH8AaXV092KH0IGQUk6C9asfXgeKDhql69Uy9zl3Q1U5vVq1
         8Vew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eoR3a558;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p17si36925vki.0.2020.12.02.16.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:52 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y7so129078pfq.11
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:52 -0800 (PST)
X-Received: by 2002:a63:ed0b:: with SMTP id d11mr760249pgi.261.1606956291860;
        Wed, 02 Dec 2020 16:44:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n21sm230422pfo.182.2020.12.02.16.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/7] ubsan: Remove UBSAN_MISC in favor of individual options
Date: Wed,  2 Dec 2020 16:44:36 -0800
Message-Id: <20201203004437.389959-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203004437.389959-1-keescook@chromium.org>
References: <20201203004437.389959-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=98f34d5fbfed6ff416ce29bc14c98da671c5a74e; i=qsNPBp3XqKD5ClMcmoFVdPno8vVa6V82W9N+tYkUn5o=; m=X9WlXliVH0dggoDRXxIEqhpygHwSBybiBEFjYbQarK0=; p=9rwQpbxNzNmGzM3mxzigXaMASvy49MXh/Xrd8ThGD6A=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAl/INPQACgkQiXL039xtwCZXQA//Stz jVORVR8zVmwIBKAiJEq7TE/rVKuZvRM47faxrT9A2J52n527SKIFojrlXHMgvckVGI1AL60z9GJFw rdQ/uXUNUCShg9MlTDNjLFel3yRmTIV5ohvRZJdNSiFWxqmpvfbXZC68MwgwGFBbXvGaAcGF2A0Ec hzFrLDFJKQj1LoFj7vVz+LCo9nrlgpwh+7hrnNGzySqtdC0DmB3RjXA2j0SHCTnHNyuTNfoJAQ9bt ZzkrKZldAhrq35eurB82kb0/QXpvUFE4wqFGpp9w295ztTBrG8A9Y6nG4SjhC6EzYgj3ueD7EOc5m HHPyTcnTsM4hobUXJuvnOn5znpwKXQPBiIcEg+ehw04/AG5binRyb/Nrk5Tb0xaELWT5fwyly0+BN VgwtPDwSf9BT0LXk8b8k16IbHGKXxf256bLsBVLNxb7TeC3ZL8MG9ACuRqK/nOrHz2SClAFUAOnxU TAQResBPkL43zH/uS6ux1K9z6s1KhP8UW1euApYceGlXX51XDuGO6CMqfGxcQbT+N6NIqq7l8M8c1 QgHTCvtlV0EoJ5LQmy4fHbxsgSdYm+40xQs1XD/eqrIDomFSsCSqWOCztkSYIe/32DAEVgkniNdcO EPvYaYd6ssPkrQN59NEUgmGhZrGx3hbd3d8lQnyUWXAOICnhJU8g73TDiO/8P9Bo=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eoR3a558;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Make each UBSAN option individually selectable and remove UBSAN_MISC
which no longer has any purpose. Add help text for each Kconfig, and
include a reference to the Clang sanitizer documentation. Disable
unsigned overflow by default (not available with GCC and makes x86
unbootable with Clang). Disable unreachable when objtool is in use
(redundant and confuses things: instrumentation appears at unreachable
locations).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Documentation/dev-tools/ubsan.rst |  1 +
 lib/Kconfig.ubsan                 | 82 +++++++++++++++++++++----------
 2 files changed, 57 insertions(+), 26 deletions(-)

diff --git a/Documentation/dev-tools/ubsan.rst b/Documentation/dev-tools/ubsan.rst
index 655e6b63c227..1be6618e232d 100644
--- a/Documentation/dev-tools/ubsan.rst
+++ b/Documentation/dev-tools/ubsan.rst
@@ -86,3 +86,4 @@ References
 
 .. _1: https://gcc.gnu.org/onlinedocs/gcc-4.9.0/gcc/Debugging-Options.html
 .. _2: https://gcc.gnu.org/onlinedocs/gcc/Debugging-Options.html
+.. _3: https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html
diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index fa78f0f3c1dc..8b635fd75fe4 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -84,48 +84,88 @@ config UBSAN_LOCAL_BOUNDS
 	  where an added offset (which may not be known statically) is
 	  out-of-bounds.
 
-config UBSAN_MISC
-	bool "Enable all other Undefined Behavior sanity checks"
-	default UBSAN
-	help
-	  This option enables all sanity checks that don't have their
-	  own Kconfig options. Disable this if you only want to have
-	  individually selected checks.
-
 config UBSAN_SHIFT
-	def_bool UBSAN_MISC
+	bool "Perform checking for bit-shift overflows"
+	default UBSAN
 	depends on $(cc-option,-fsanitize=shift)
+	help
+	  This option enables -fsanitize=shift which checks for bit-shift
+	  operations that overflow to the left or go switch to negative
+	  for signed types.
 
 config UBSAN_DIV_ZERO
-	def_bool UBSAN_MISC
+	bool "Perform checking for integer divide-by-zero"
 	depends on $(cc-option,-fsanitize=integer-divide-by-zero)
+	help
+	  This option enables -fsanitize=integer-divide-by-zero which checks
+	  for integer division by zero. This is effectively redundant with the
+	  kernel's existing exception handling, though it can provide greater
+	  debugging information under CONFIG_UBSAN_REPORT_FULL.
 
 config UBSAN_UNREACHABLE
-	def_bool UBSAN_MISC
+	bool "Perform checking for unreachable code"
+	# objtool already handles unreachable checking and gets angry about
+	# seeing UBSan instrumentation located in unreachable places.
+	depends on !STACK_VALIDATION
 	depends on $(cc-option,-fsanitize=unreachable)
+	help
+	  This option enables -fsanitize=unreachable which checks for control
+	  flow reaching an expected-to-be-unreachable position.
 
 config UBSAN_SIGNED_OVERFLOW
-	def_bool UBSAN_MISC
+	bool "Perform checking for signed arithmetic overflow"
+	default UBSAN
 	depends on $(cc-option,-fsanitize=signed-integer-overflow)
+	help
+	  This option enables -fsanitize=signed-integer-overflow which checks
+	  for overflow of any arithmetic operations with signed integers.
 
 config UBSAN_UNSIGNED_OVERFLOW
-	def_bool UBSAN_MISC
+	bool "Perform checking for unsigned arithmetic overflow"
 	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
+	help
+	  This option enables -fsanitize=unsigned-integer-overflow which checks
+	  for overflow of any arithmetic operations with unsigned integers. This
+	  currently causes x86 to fail to boot.
 
 config UBSAN_OBJECT_SIZE
-	def_bool UBSAN_MISC
+	bool "Perform checking for accesses beyond the end of objects"
+	default UBSAN
 	# gcc hugely expands stack usage with -fsanitize=object-size
 	# https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
 	depends on !CC_IS_GCC
 	depends on $(cc-option,-fsanitize=object-size)
+	help
+	  This option enables -fsanitize=object-size which checks for accesses
+	  beyond the end of objects where the optimizer can determine both the
+	  object being operated on and its size, usually seen with bad downcasts,
+	  or access to struct members from NULL pointers.
 
 config UBSAN_BOOL
-	def_bool UBSAN_MISC
+	bool "Perform checking for non-boolean values used as boolean"
+	default UBSAN
 	depends on $(cc-option,-fsanitize=bool)
+	help
+	  This option enables -fsanitize=bool which checks for boolean values being
+	  loaded that are neither 0 nor 1.
 
 config UBSAN_ENUM
-	def_bool UBSAN_MISC
+	bool "Perform checking for out of bounds enum values"
+	default UBSAN
 	depends on $(cc-option,-fsanitize=enum)
+	help
+	  This option enables -fsanitize=enum which checks for values being loaded
+	  into an enum that are outside the range of given values for the given enum.
+
+config UBSAN_ALIGNMENT
+	bool "Perform checking for misaligned pointer usage"
+	default !HAVE_EFFICIENT_UNALIGNED_ACCESS
+	depends on !UBSAN_TRAP && !COMPILE_TEST
+	depends on $(cc-option,-fsanitize=alignment)
+	help
+	  This option enables the check of unaligned memory accesses.
+	  Enabling this option on architectures that support unaligned
+	  accesses may produce a lot of false positives.
 
 config UBSAN_SANITIZE_ALL
 	bool "Enable instrumentation for the entire kernel"
@@ -138,16 +178,6 @@ config UBSAN_SANITIZE_ALL
 	  Enabling this option will get kernel image size increased
 	  significantly.
 
-config UBSAN_ALIGNMENT
-	bool "Enable checks for pointers alignment"
-	default !HAVE_EFFICIENT_UNALIGNED_ACCESS
-	depends on !UBSAN_TRAP && !COMPILE_TEST
-	depends on $(cc-option,-fsanitize=alignment)
-	help
-	  This option enables the check of unaligned memory accesses.
-	  Enabling this option on architectures that support unaligned
-	  accesses may produce a lot of false positives.
-
 config TEST_UBSAN
 	tristate "Module for testing for undefined behavior detection"
 	depends on m
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-7-keescook%40chromium.org.
