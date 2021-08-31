Return-Path: <clang-built-linux+bncBCG4HBHYYQKRBUEFXGEQMGQEQEU2EMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 851953FCA68
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:55:13 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id r1-20020a4a3701000000b0028c9e077850sf8844867oor.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:55:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630421712; cv=pass;
        d=google.com; s=arc-20160816;
        b=TSYWNWHbBt1CiaytBiWR3eybO06cgF+H2PWvICRZ8s2jz0jrHnWUBJsLp36TCamCcr
         ytyGetvHpztDgpuB9t3B9udhiybs6SwaC3jacsk8DBhgvfDIXHDt+nwqrjAB+D5HkVTn
         rkx1ZpaojPnP7GvEAkcwoFgLacKh7HmvDAcOjOF9kCH6xQKChKvkCWkroasUjdGP7bzc
         3tG+QPA2sT9GnO9F0AVeu/pXVhGvfxxuUafGmEcbeK5XNhFUTbtkVHOThzsearSgSk/q
         3TlerU6VEftRgehhmg4fUd4XC5KXEmoANlDwHZhW2CwkR/U9qOWnw9ulPVAM9Fi1ZymB
         O8Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=x/vwouWZnM8jDAKDYvaOcQGlbtl0enRUzptB2xOC0po=;
        b=lzUu/7TuWvyFUK5Q1rWqutpT3LrQwA8QCL+CcGpdqwHF48uvcVSzbXMWL56A2T1KYU
         5c/MXeNQlgWI4+5NjWfPIKuydLWgiast56XLEThiB45g9wYpDW37YSULvKughV6YoKUr
         qoxUnZ1jPPBq1VuVEWu2bLHKY2N1zzda7LQSB/+Ubh+/DL8G00c8d3YJ04jTgWB2WF5l
         flx22J73R/OWmbxOHUm1i7Toy3ibiJX21oyiWLUsPZePm31MkOBEmIXkv+7Z8QuyzqjW
         7r1fF3D0adeDeTNpf7NSojw5ZIix9r675FFXo8dSBZpGLiwRG4/iVhautTpKCEl72qkF
         9OWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/vwouWZnM8jDAKDYvaOcQGlbtl0enRUzptB2xOC0po=;
        b=MWTjmVlwtlA1vSDwjfJHXPQ+nqOd8eU0MZ9EOCPmcNApxiYpx1SBCqWcpqSqRwknbe
         0PZUQ06w+hliCPLVM6Wy/lAPxgvNzjO+PcVMHSolQT3EvueOWe1XCeOtJl2091e0RetR
         UxgRygAQD9+yHsE+vBYeIVVhilJdnqGpjp5hSM987x1W1IFpQLfJVsUkG6hV/jhAS+zF
         jUuKfBeomuZsQ4/voWReJNYss2R7A7+Jov8BUeIVA7wID98ndI6MIDE+hUiYBFn7XNr8
         cDZQqAuyRAHOlMH/n7wOJ/KgpTR0tQnwNvHzNGzSLVOvwjvQCFidf4uXs7T6dtW1MmSs
         frSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/vwouWZnM8jDAKDYvaOcQGlbtl0enRUzptB2xOC0po=;
        b=c4r6XpKo1W6HsL9hUEvqmGpVUFSpOI4KNN0ZtlKme3lQtuSqMkWyIQ8CxDHW5u33ZQ
         1DSdhy57+twrAZsqJw9fd4BegaHx6RqqUjnihTaO7EXjUITw19ujdaHUYn4f9JD/leUw
         /BQmcSlYEapEY4OsEEuRNqAwKyQ5MY6VQ6aP5iyEEuHlddIebk95gJJWt4RP3gxiEII4
         qtUn3PpFo6C9AWUz9NKxCBU57Nz8J3HUQDWhWzKZ1BF5aAAYfdkEE02QEWJ0BDy0Bw8r
         EZODqSaCn7lQYWMei1epUqQHOngoDxZCrvS4x4ZZ9ttBocfGaPK9bkomGxMhXAB/gKBO
         YrkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O4zUkxA6bS6JHccEDxvgihpGX2A/8IGOSPvZQxj1bdYWQsV/S
	mm9G0CRG3IKM9zezd8XIOrU=
X-Google-Smtp-Source: ABdhPJxCDPjWk+mEGPlDKH+pNG4ig4Aq8NTOuEP74GFb0q1ipnnoUfcJhxPjdR6D64PoVpW6DF3aSw==
X-Received: by 2002:a05:6830:1db3:: with SMTP id z19mr24130067oti.369.1630421712506;
        Tue, 31 Aug 2021 07:55:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:62c9:: with SMTP id z9ls684074otk.6.gmail; Tue, 31 Aug
 2021 07:55:12 -0700 (PDT)
X-Received: by 2002:a9d:6d02:: with SMTP id o2mr24255399otp.302.1630421712159;
        Tue, 31 Aug 2021 07:55:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630421712; cv=none;
        d=google.com; s=arc-20160816;
        b=n8w6mUAHPyKRbCCNRZm8dheEZ4faRfV1WF4D92/KBxfZX2po4ysc5ygqPGVTJDd7Qo
         6IRWyxCA/HX+JZlm0dtJglqXYo+gTtZK97hg9an4xWNyB8QtX15Nhjo5Wdv+OFHx/Rgj
         9YjgJOAhbfoLw4MmrUJglXQbiP3DSjisb0GL6/psYNj8heEvgz/FNVnLHNvk8I7yfHpL
         s0PL8lHAqlMdnd5O/M3SzEujJ0wEMS9mHfJLOGGjr3yN54hb9lAL5kqNB4JkjJ3dH1bz
         Fg6ua56x+glwv9v3gOgMpPnHvS7PwhcG2Z/OvsVogzZ8HKorIwl7x4k6U+n07hzu2/PO
         JZRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hoOEEsZuelz1bsHem+WklGUd1xoNz3Frscog6nZmrHA=;
        b=QTIJ0KO5dYaaYKLmbOQveVg4H5Y+6isorH0vTs1NPgvCakC9DYxKwBvOdLi3jlzsUX
         qrsgQEhgYZP4B0XzOOvi6n4oIePJNhPgTkvGnHAG/gTY3MfNVCjj1ZeUvKnGKMb8pDoz
         QLwkPNHxrIr75qKgMSH0rUDXC5EeApYoVzz5msUs56kpYpZqOPoHLuqlL8/lSGEBCFeG
         7a52j9cjkk6/t7hqQyasyHMteINgY2/eHWGb4sxTgdXgbUT61bHcLA1/UeERZ9XGy+PO
         wxswZiUMDFGQfF5+c8ta52nwwVMYUYiZZuEiK+sdILnlaYZwQS+G3pDTWGdi9vwx60r6
         PG8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f21si262149oiw.2.2021.08.31.07.55.12
        for <clang-built-linux@googlegroups.com>;
        Tue, 31 Aug 2021 07:55:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE6C4D6E;
	Tue, 31 Aug 2021 07:55:11 -0700 (PDT)
Received: from e121896.arm.com (unknown [10.57.42.234])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 658583F5A1;
	Tue, 31 Aug 2021 07:55:10 -0700 (PDT)
From: James Clark <james.clark@arm.com>
To: acme@kernel.org,
	linux-perf-users@vger.kernel.org
Cc: James Clark <james.clark@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/3] perf tools: Fix LLVM test failure when running in verbose mode
Date: Tue, 31 Aug 2021 15:55:00 +0100
Message-Id: <20210831145501.2135754-2-james.clark@arm.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210831145501.2135754-1-james.clark@arm.com>
References: <20210831145501.2135754-1-james.clark@arm.com>
MIME-Version: 1.0
X-Original-Sender: james.clark@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.clark@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.clark@arm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

A CI system might want to run all tests in verbose mode so that there is
enough information to diagnose issues. This LLVM test is the only test
that uses "-v" to signify to not skip the test if the preconditions
aren't met (LLVM isn't installed). This means that running the test in
verbose mode without LLVM installed causes a test failure.

For consistency with the other tests, remove this verbose/skip check. An
alternate solution would be to make _all_ tests not skip when run in
verbose mode, but I don't think that would be intuitive.

Also change the search_program() call to search_program_and_warn().
Previously the hint about installing LLVM was only printed by the actual
test because this check was skipped in verbose mode. To maintain the old
behaviour, the precondition check must also print the full warning.

Previous output:

  $ ./perf test llvm
  40: LLVM search and compile                                     :
  40.1: Basic BPF llvm compile                                    : Skip

  $ ./perf test -v llvm
  40: LLVM search and compile                                     :
  40.1: Basic BPF llvm compile                                    :
  --- start ---
  test child forked, pid 2085835
  ERROR:	unable to find clang.
  Hint:	Try to install latest clang/llvm to support BPF. Check your $PATH
  ...
  test child finished with -1
  ---- end ----
  LLVM search and compile subtest 1: FAILED!

New output (non verbose mode is identical, verbose changes from fail to
skip):

  $ ./perf test llvm
  40: LLVM search and compile                                     :
  40.1: Basic BPF llvm compile                                    : Skip

  $ ./perf test -v llvm
  40: LLVM search and compile                                     :
  40.1: Basic BPF llvm compile                                    :
  --- start ---
  test child forked, pid 2087680
  ERROR:	unable to find clang.
  Hint:	Try to install latest clang/llvm to support BPF. Check your $PATH
  ...
  No clang, skip this test
  test child finished with -2
  ---- end ----
  LLVM search and compile subtest 1: Skip

Signed-off-by: James Clark <james.clark@arm.com>
---
 tools/perf/tests/llvm.c      | 7 +++----
 tools/perf/util/llvm-utils.c | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/tools/perf/tests/llvm.c b/tools/perf/tests/llvm.c
index 98da8a8757ab..33e43cce9064 100644
--- a/tools/perf/tests/llvm.c
+++ b/tools/perf/tests/llvm.c
@@ -67,12 +67,11 @@ test_llvm__fetch_bpf_obj(void **p_obj_buf,
 
 	/*
 	 * Skip this test if user's .perfconfig doesn't set [llvm] section
-	 * and clang is not found in $PATH, and this is not perf test -v
+	 * and clang is not found in $PATH
 	 */
-	if (!force && (verbose <= 0 &&
-		       !llvm_param.user_set_param &&
+	if (!force && (!llvm_param.user_set_param &&
 		       llvm__search_clang())) {
-		pr_debug("No clang and no verbosive, skip this test\n");
+		pr_debug("No clang, skip this test\n");
 		return TEST_SKIP;
 	}
 
diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
index cec9c16efb17..d95c56d175bc 100644
--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -585,5 +585,5 @@ int llvm__search_clang(void)
 {
 	char clang_path[PATH_MAX];
 
-	return search_program(llvm_param.clang_path, "clang", clang_path);
+	return search_program_and_warn(llvm_param.clang_path, "clang", clang_path);
 }
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831145501.2135754-2-james.clark%40arm.com.
