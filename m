Return-Path: <clang-built-linux+bncBAABBXG5YXVQKGQE72TIRXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 5895AAACEE
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 22:23:58 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id j12sf2132458pll.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 13:23:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567715037; cv=pass;
        d=google.com; s=arc-20160816;
        b=NVhRBv6Pr90coadmxqS/+JcEOIPfWbjzy9rS4W0eNs0p5TuHGp57heg3nzH+UnYay8
         LNQ6ZJcS9m9wNtrqThHEsSSwWu9TJvEIfNrgI90nPT7xAhlosyf3p6Y5BjVrDNZ5VVIk
         4a2GYm/cHdu9Fx8LJ504ZaXajZvpCrPsnJULOIiTnDGEhgDP55dscTdCgqW96pqgEeao
         09L1LGE7OPE1A0M3F4+qTtrjSxqNqC1rHJ+Y1mhc59Kr8DYIspzXinfZfiaQ2O7THZpL
         240+hlA7w1sWS0k8mCOX1AWqejL6q1JGG8B1cG25U+mk/viyCcIX1cx9wkWD0/BBcxo0
         391g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature;
        bh=AW9mzZ50yBEuqrPaAng6dVWf3rZGBkYsEcM4ac8hDN0=;
        b=kOD4DXfYkJPyK9xOqliFy4k54fiPbUkzBipgwT+4YtI6EbTwam/CutCt6g0cqz7OVT
         PhZO9Y7F4Whzf6gtPC2k2lsO8qBKmA1GEGUwEhTM7bsZG30KdHnxgsS/LQcKqOMEsPX4
         fpyqQTXHlAvjP139/zGByp47TnZmXp+DqR68x2GH5re7YoeNgLLHxzEgl/TZ1AuNpqVq
         HjD2UOrc+la1vgkIC5MGC8915ei3+7Tz8BUMGZXzdGAn0w9X0BW4mJpoxyRxidPsDRjD
         CwxaQXIEa2oO/dh+YyQlYQlh0VygfJ7c8rDJGsaNTBtc2ZsZh13X3Js/hyQeTnWjoJYC
         hmig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates 148.163.147.86 as permitted sender) smtp.mailfrom="prvs=0151d7a294=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AW9mzZ50yBEuqrPaAng6dVWf3rZGBkYsEcM4ac8hDN0=;
        b=FUIbwLNsQW9eherqkws2ZLPmSZzc3sMcmsHMNPnnCJcTT7nFP6oBBetieV7hDKmNdb
         GP4xDdvd8bPuk7ZMzCyJ9JSpgFlB+mPcWeyXB3jCna3TACjc/I9pxZZObyOj12x7NUyc
         o23fv7RW1wqqlj0ejfI5Ai15hca0yLoAhOsxtsUMV37q+AnDh81XvtBYoPVqGX6o/FI4
         yzwAJLZ3z2oE6NPr7/7tl4XAndqYNcBbcqP9KX0rFJ8EX3MdRBUZe8Dz8CkQVTVhuIu+
         mo9uS65nx3N/rH4lP4KdZbVrHubcvNHrr3E44SNZ31gJnnGlGe+r67ySjCn5RV04byfH
         RoUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AW9mzZ50yBEuqrPaAng6dVWf3rZGBkYsEcM4ac8hDN0=;
        b=me1Y/zibkb6o63fCleey3IA0Y1FgR3Mm1sVHoIZQORw6ooy5HaUGOw6zkJoNB5/EBF
         3EJ0y686LVWPGdH7gWlDH6Pm5LhYxcJaU0nmzNUkHLpyk8+3jLQW8qlcdMJ+cVZzDbY4
         ydcfxk66qou14H/iKlL3lHPqs+ADe4VHq2NDTll6sABJSnJxFRG10tuMLMXczMi8R8IT
         dbfRJ6X45Q4iCdQbyli+3C+Nm9S9c6fIxFkaS8J6/LRCUVVLphrV4oQmtSenAKgV6+cH
         KLTCcGtWfqwia9DewE/2f3Vjcu6ri4Kv1phR8fwkY3Eon5qe1hI3pyq2jSPxVMhBzYqi
         eEMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVYCPUm10lylEYOk5Dfou+siXza0tzzxTbeI7InMTuv3J63EqJ0
	/Gg8Ea1Pis9SJ6H1DADqAok=
X-Google-Smtp-Source: APXvYqw7bGb5qj/s2yiipqS46vMctpy5uxWy9y/SrwiJ7mUclr7nM7QriSZc8IIaakBqIKQ4y4Q09A==
X-Received: by 2002:a62:e50c:: with SMTP id n12mr6257947pff.206.1567715036782;
        Thu, 05 Sep 2019 13:23:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:614e:: with SMTP id o14ls708818pgv.7.gmail; Thu, 05 Sep
 2019 13:23:56 -0700 (PDT)
X-Received: by 2002:aa7:96f3:: with SMTP id i19mr6326741pfq.32.1567715036527;
        Thu, 05 Sep 2019 13:23:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567715036; cv=none;
        d=google.com; s=arc-20160816;
        b=qbhHqNjYPasFLRa3fhaO75YFPfuaEASaTaUcNAuxiMd01xqe5/Wqad1/S0Up8QXKCc
         PyVt6UEoLofHRVG5Z052J53LWxN9gk+YnZfuk4wEvWfcXK8faB34DV3DWG0QDUv5frf2
         JeX7dhi+GfahKuMxKoWPAjXexTkRL3efNrKtHOi9X5j3DJl47fLJrUTsugaTNNdrTDy3
         rrWwvm1cBXKln98Gr2OPjVAf0L1K/yx/dzMMMRAVHjVW44/IIQB7fIlEMoWQatlATfkM
         KQsA4ITgb2De3qo2u2k+oZeS/eqBkASuiuer99f56RuNENJkG9KV9GyJTbP9Rbo+ik4s
         fd+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date;
        bh=sAZ55aak4C1PfOzZ8kFKYnHHT5hCn/juM84yXDtu/oY=;
        b=xRUZ5Ld4dB4mULTZl0atxW23OSHj/JC878WUECYjk+B3jWL8QoXbGa+NqrwE0mNu1q
         /VVIwtwNtwLgltRyT/ToL91eilkPPANwG7OB3isRpyvfR34ls+CrEESXfbQEf6aJcyk3
         r4b2DnkLZ9G7gcN1c4kDw8ne8HweoFpwIVtjp4+wfDDR6c11a1d/I9OaSKuvBf7tjrb+
         nsgb3p5O4owXZnQPhrIXgYJqydbfwx+Z5pgXxIuWApVJL3bNHtiCFfvFwHwCA3molJNS
         yyGMOaA9W+P7AA/1lOg2D8de6f8wtf0LDioScDKPEfQrEK7cwdfU9gVScgI8bflBrqt4
         pA0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates 148.163.147.86 as permitted sender) smtp.mailfrom="prvs=0151d7a294=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com. [148.163.147.86])
        by gmr-mx.google.com with ESMTPS id z5si121633plo.3.2019.09.05.13.23.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Sep 2019 13:23:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates 148.163.147.86 as permitted sender) client-ip=148.163.147.86;
Received: from pps.filterd (m0150241.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x85KLZ1G017534;
	Thu, 5 Sep 2019 20:23:47 GMT
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com [15.241.140.78])
	by mx0a-002e3701.pphosted.com with ESMTP id 2uu6ews8pd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Sep 2019 20:23:47 +0000
Received: from g9t2301.houston.hpecorp.net (g9t2301.houston.hpecorp.net [16.220.97.129])
	by g4t3425.houston.hpe.com (Postfix) with ESMTP id F41FA8D;
	Thu,  5 Sep 2019 20:23:46 +0000 (UTC)
Received: from swahl-linux (swahl-linux.americas.hpqcorp.net [10.33.153.21])
	by g9t2301.houston.hpecorp.net (Postfix) with ESMTP id 6007648;
	Thu,  5 Sep 2019 20:23:46 +0000 (UTC)
Date: Thu, 5 Sep 2019 15:23:46 -0500
From: Steve Wahl <steve.wahl@hpe.com>
To: linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
        "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Steve Wahl <steve.wahl@hpe.com>, clang-built-linux@googlegroups.com,
        vaibhavrustagi@google.com, russ.anderson@hpe.com,
        dimitri.sivanich@hpe.com, mike.travis@hpe.com
Subject: [PATCH v2] x86/purgatory: Change compiler flags to avoid relocation
 errors.
Message-ID: <20190905202346.GA26595@swahl-linux>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-05_07:2019-09-04,2019-09-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 mlxlogscore=985 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 clxscore=1011 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909050188
X-Original-Sender: steve.wahl@hpe.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of prvs=0151d7a294=steve.wahl@hpe.com designates
 148.163.147.86 as permitted sender) smtp.mailfrom="prvs=0151d7a294=steve.wahl@hpe.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hpe.com
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

The last change to this Makefile caused relocation errors when loading
a kdump kernel.  Restore -mcmodel=large (not -mcmodel=kernel),
-ffreestanding, and -fno-zero-initialized-bsss, without reverting to
the former practice of resetting KBUILD_CFLAGS.

Purgatory.ro is a standalone binary that is not linked against the
rest of the kernel.  Its image is copied into an array that is linked
to the kernel, and from there kexec relocates it wherever it desires.

With the previous change to compiler flags, the error "kexec: Overflow
in relocation type 11 value 0x11fffd000" was encountered when trying
to load the crash kernel.  This is from kexec code trying to relocate
the purgatory.ro object.

From the error message, relocation type 11 is R_X86_64_32S.  The
x86_64 abi says: "The R_X86_64_32 and R_X86_64_32S relocations
truncate the computed value to 32-bits.  The linker must verify that
the generated value for the R_X86_64_32 (R_X86_64_32S) relocation
zero-extends (sign-extends) to the original 64-bit value."

This type of relocation doesn't work when kexec chooses to place the
purgatory binary in memory that is not reachable with 32 bit
addresses.

The compiler flag -mcmodel=kernel allows those type of relocations to
be emitted, so revert to using -mcmodel=large as was done before.

Also restore the -ffreestanding and -fno-zero-initialized-bss flags
because they are appropriate for a stand alone piece of object code
which doesn't explicitly zero the bss, and one other report has said
undefined symbols are encountered without -ffreestanding.

These identical compiler flag changes need to happen for every object
that becomes part of the purgatory.ro object, so gather them together
first into PURGATORY_CFLAGS_REMOVE and PURGATORY_CFLAGS, and then
apply them to each of the objects that have C source.  Do not apply
any of these flags to kexec-purgatory.o, which is not part of the
standalone object but part of the kernel proper.

Fixes: b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS")
Signed-off-by: Steve Wahl <steve.wahl@hpe.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Tested-by: Andreas Smas <andreas@lonelycoder.com>
---
PATCH v2: Incorporated suggested changes to the commit message.

 arch/x86/purgatory/Makefile | 35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 8901a1f89cf5..10fb42da0007 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -18,37 +18,40 @@ targets += purgatory.ro
 KASAN_SANITIZE	:= n
 KCOV_INSTRUMENT := n
 
+# These are adjustments to the compiler flags used for objects that
+# make up the standalone purgatory.ro
+
+PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
+PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
+
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
 # sure how to relocate those.
 ifdef CONFIG_FUNCTION_TRACER
-CFLAGS_REMOVE_sha256.o		+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_purgatory.o	+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_string.o		+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_kexec-purgatory.o	+= $(CC_FLAGS_FTRACE)
+PURGATORY_CFLAGS_REMOVE		+= $(CC_FLAGS_FTRACE)
 endif
 
 ifdef CONFIG_STACKPROTECTOR
-CFLAGS_REMOVE_sha256.o		+= -fstack-protector
-CFLAGS_REMOVE_purgatory.o	+= -fstack-protector
-CFLAGS_REMOVE_string.o		+= -fstack-protector
-CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector
+PURGATORY_CFLAGS_REMOVE		+= -fstack-protector
 endif
 
 ifdef CONFIG_STACKPROTECTOR_STRONG
-CFLAGS_REMOVE_sha256.o		+= -fstack-protector-strong
-CFLAGS_REMOVE_purgatory.o	+= -fstack-protector-strong
-CFLAGS_REMOVE_string.o		+= -fstack-protector-strong
-CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector-strong
+PURGATORY_CFLAGS_REMOVE		+= -fstack-protector-strong
 endif
 
 ifdef CONFIG_RETPOLINE
-CFLAGS_REMOVE_sha256.o		+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_purgatory.o	+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_string.o		+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_kexec-purgatory.o	+= $(RETPOLINE_CFLAGS)
+PURGATORY_CFLAGS_REMOVE		+= $(RETPOLINE_CFLAGS)
 endif
 
+CFLAGS_REMOVE_purgatory.o	+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_purgatory.o		+= $(PURGATORY_CFLAGS)
+
+CFLAGS_REMOVE_sha256.o		+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_sha256.o			+= $(PURGATORY_CFLAGS)
+
+CFLAGS_REMOVE_string.o		+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_string.o			+= $(PURGATORY_CFLAGS)
+
 $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
 		$(call if_changed,ld)
 
-- 
2.21.0


-- 
Steve Wahl, Hewlett Packard Enterprise

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190905202346.GA26595%40swahl-linux.
