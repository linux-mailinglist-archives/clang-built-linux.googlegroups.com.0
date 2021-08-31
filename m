Return-Path: <clang-built-linux+bncBCG4HBHYYQKRBT4FXGEQMGQEINKASVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6413FCA67
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:55:12 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id j16-20020a63fc10000000b00255d6f81e23sf4021182pgi.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:55:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630421711; cv=pass;
        d=google.com; s=arc-20160816;
        b=MG56Cno44wGU9LaQ5xXUO1BOsXRdS1YxZmks6q2OXgFHWW74s8dkl0RKsLRFp5Q15Z
         QDOLCMTnoe6CanLtMkUCOICHcor9/v7lMsRPq31QHSIX+L/orj6EL2nID3/zume7uUBj
         u6KLBcp0Fukemsd7WXdzvNnvb8s8hftQW6Q/v+WNKfikiMq2EIbMPqcSlyEtrYXVslpj
         kQi9XENaRPvFMJ/PfjFA0hPtIyT5jUhJ0tbbOZGh7kIL7oFvM1PBUZitd6vnoSJrkBSd
         RJqTGxnBhLNcKRyoeKjRBtH9sKo54yV1QWIdl9m/zabi5nX7mKE9vmpYE+MkM3Q+pSI/
         IZxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=TDxH5MA1gmPpAyctV2eicKSdka2UIKPH1ZuDm+s/fyE=;
        b=mzo5wJo+JFv2Kl1NviBL2x9ktNGgflSAqRD6hl9gMjS9PMsaPMJUVtqhng+1VtJ+Tx
         y4CfZX2y4y8UcVL85bV7CoEoVW+HLcY4z2dHePoeHfG7h3jIizBSxVCUCpdSyT+C757B
         eR2I40URDvFwg8WrPuUXLHuIOaNpNL0s52BXjPd4tdzvzrn6q9rbUHDLIX/Y6UmZZcuj
         pd+/SxAsXiGLlx3iP1Y/l2dy8gCKDZ1mxyi3PdGV6LwnGL0m9okrEsInWap1Lk011G5R
         coxv2pR0F7IkwWCNO/pzIwOtYeAlNhQhNtpAG2TYACI9v5EWOq2PTFpNJ3UHCdbAM8sm
         Vb4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDxH5MA1gmPpAyctV2eicKSdka2UIKPH1ZuDm+s/fyE=;
        b=gaANZdC9EEVKUpxoj0U+BoYo1/AjPENXvEa0X04gs4UccdxZqoGVGWdwCH/4+Fp9SE
         pLXmILakizqKHZZGzTWVJQConzkKiWaG4raKNKDhMfN5yqcDQB/Em4NVe5K8WAnv3oci
         4SppnvRk2ViRlz1B5CeZRebsJP59QXlhYuOyGfaZNSN62RltuCdOHrjH7co869As1XEV
         J3U9IP4zne6HrK4stwPlwrURL+xq9KrBVTbkdckRwiTu8mtOhdW+as+x008VJHqQqfCM
         Iq2huNGBmDce+aLlLWzBd3NzY1m4ii9NN+euSpe3QJw3CvIdUZSJ61/Pa1eJDCK7Qcjo
         rbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TDxH5MA1gmPpAyctV2eicKSdka2UIKPH1ZuDm+s/fyE=;
        b=VdBXQK5J9/KoHCu3QQxqwIdRDc/Y1iWIMazTrg2F3qMOaV282RH3Ajkix9vDPI8Uv+
         N6h6iuBYvxjkW9i56C//xZrzy3X5nFO6OIFBoNverb+IdNfejtsujZcOUdhsG2RzzYr3
         15svyovcnCW3a0Ntlu4K65BancSkMkXH9/jpnQKHTzD3ezQ2X2n3f/7zwb0pt3MqPXhv
         qklJEyfx+ucSKIoT3b6/ozC4KLLaaB+z0DKgd8LLjWObSyK+MFfF6KDmT9kHUv4WA0EH
         t9XiDydIRuhh/w+IQaZTXXFPvlx9LoIbRWlHKRKwYr502qPMZCBYxVKenc6d3mPzSGl7
         F9cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M45ibdLriLAO2h7I9xkXq0ptVK85O17NaxZQiThkqk0da33pH
	DWZIHMmxdkrYRMfZZOXyVuM=
X-Google-Smtp-Source: ABdhPJxWholLlM84ZtyaqJYw5QTDzsDv/Y+wikOHDzscBIRL02RosfcNlk7Y6z+SIkQ0hr1UpEV65g==
X-Received: by 2002:a63:1351:: with SMTP id 17mr26805624pgt.173.1630421711308;
        Tue, 31 Aug 2021 07:55:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:19ca:: with SMTP id nm10ls1836554pjb.0.canary-gmail;
 Tue, 31 Aug 2021 07:55:10 -0700 (PDT)
X-Received: by 2002:a17:902:6846:b0:138:eea0:9261 with SMTP id f6-20020a170902684600b00138eea09261mr2685542pln.12.1630421710745;
        Tue, 31 Aug 2021 07:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630421710; cv=none;
        d=google.com; s=arc-20160816;
        b=tvm8z03kA+YzIXIGmC8AcQ4k86I2arfZfiHS+Ty+/WWVNcFhUAYUvhkP4liwDhveyG
         e2LeCW2yiRXygJEf0G+o0KxaroAPv5uwG1v5nRH5Rf5dooDV+4NkBfl1IjBu0dw4iYq5
         IDTYmnjND6lkMtLSaPHImu45qVhp6SPVZZAK0U9bB/tdcCp/h652V4biPX2rF4KdivJA
         uSnl/LRX/suXvZPuR7w2w5kG9AMeRAfEx7zDLcyL6Em0WhKjt44DZCWbJ5IMC1xZiSoS
         Xc0tMmxEMgiA27WfIIWkhHcHQn3ZNaUCz9AghBEahgGfSeOGzsD8Xe1g8d6kkkA3N9ml
         LeJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Ndn+2KikldpgbKQl55Y9el9XnYxnTk4/Mwn2kLWJTuM=;
        b=EJtPaDP45G/UkopFRkDKfigSg8dPFKpvNY2p/dTKO8NFLvmCc56jrbTH+wtJvksZ9i
         YiDHhjhqGoQTTdnZtTm9E9X8l7MhJEOojBeHm7rAp4Tl6euIBWWUkJpGyfFRIgvD/cwy
         64owXTUj9gMgMoE99dDdp7oUW4DU9Cjn7ZaATJhsydBZUqIAgdlF8XA3iGsHMWVKoUKn
         FgezhfAS7v3RJMw/P37z5z+0Cv/R0R4u+uk0UOkhsoEQ8GDn4bdnWYW/r+y+iyLKJ2li
         iVNf9dd2ViL27I18OznxNxagoCTsUENcJE/xeSPtFKFbONccrPt16I2MHApZR6WrzEyZ
         OF7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b15si992002pfl.6.2021.08.31.07.55.10
        for <clang-built-linux@googlegroups.com>;
        Tue, 31 Aug 2021 07:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D22AF6D;
	Tue, 31 Aug 2021 07:55:09 -0700 (PDT)
Received: from e121896.arm.com (unknown [10.57.42.234])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 58AFD3F5A1;
	Tue, 31 Aug 2021 07:55:08 -0700 (PDT)
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
Subject: [PATCH 1/3] perf tools: Refactor LLVM test warning for missing binary
Date: Tue, 31 Aug 2021 15:54:59 +0100
Message-Id: <20210831145501.2135754-1-james.clark@arm.com>
X-Mailer: git-send-email 2.28.0
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

The same warning is duplicated in two places so refactor it into a
single function "search_program_and_warn". This will be used a third
time in a later commit.

Signed-off-by: James Clark <james.clark@arm.com>
---
 tools/perf/util/llvm-utils.c | 36 +++++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
index cbd9b268f168..cec9c16efb17 100644
--- a/tools/perf/util/llvm-utils.c
+++ b/tools/perf/util/llvm-utils.c
@@ -38,6 +38,8 @@ struct llvm_param llvm_param = {
 	.user_set_param = false,
 };
 
+static void version_notice(void);
+
 int perf_llvm_config(const char *var, const char *value)
 {
 	if (!strstarts(var, "llvm."))
@@ -108,6 +110,21 @@ search_program(const char *def, const char *name,
 	return ret;
 }
 
+static int search_program_and_warn(const char *def, const char *name,
+				   char *output)
+{
+	int ret = search_program(def, name, output);
+
+	if (ret) {
+		pr_err("ERROR:\tunable to find %s.\n"
+		       "Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
+		       "     \tand '%s-path' option in [llvm] section of ~/.perfconfig.\n",
+		       name, name);
+		version_notice();
+	}
+	return ret;
+}
+
 #define READ_SIZE	4096
 static int
 read_from_pipe(const char *cmd, void **p_buf, size_t *p_read_sz)
@@ -458,16 +475,10 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 	if (!template)
 		template = CLANG_BPF_CMD_DEFAULT_TEMPLATE;
 
-	err = search_program(llvm_param.clang_path,
+	err = search_program_and_warn(llvm_param.clang_path,
 			     "clang", clang_path);
-	if (err) {
-		pr_err(
-"ERROR:\tunable to find clang.\n"
-"Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
-"     \tand 'clang-path' option in [llvm] section of ~/.perfconfig.\n");
-		version_notice();
+	if (err)
 		return -ENOENT;
-	}
 
 	/*
 	 * This is an optional work. Even it fail we can continue our
@@ -495,14 +506,9 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
 	force_set_env("WORKING_DIR", kbuild_dir ? : ".");
 
 	if (opts) {
-		err = search_program(llvm_param.llc_path, "llc", llc_path);
-		if (err) {
-			pr_err("ERROR:\tunable to find llc.\n"
-			       "Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
-			       "     \tand 'llc-path' option in [llvm] section of ~/.perfconfig.\n");
-			version_notice();
+		err = search_program_and_warn(llvm_param.llc_path, "llc", llc_path);
+		if (err)
 			goto errout;
-		}
 
 		err = -ENOMEM;
 		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831145501.2135754-1-james.clark%40arm.com.
