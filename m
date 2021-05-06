Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBEELZWCAMGQE7W4R33Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F568374CD6
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 03:25:37 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id q9-20020a170902e309b02900ed842dacffsf1532317plc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 18:25:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620264336; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQEo6E4jqzGgJbynAhQfDLfrls5hScFTKLoByKfhIoEE2vJQRXInLLXtCJ7BYDs33R
         7sZ8rEPzrCw6nUj4P5LSL2yFad5hJe71Cbv79d5SLjE6SoW34xlcoVKmikqOnYtTKkzF
         0tHhFBA8w0wZFxIT0iiHmiWaCDaL8u1jqpOdmbmgzf54qYurjyxYNH4mhIryUNI1LsLS
         PwB2DMh3VSJUPW82HsQGChRdG/BdzDQ/xzaav1jr3YxmM3xw2Ahv/LgKM7wBx4HGj6R4
         tiAuOe10U75wXAOULa/0Q2D5Wl8GDNPVkjSE7zRkPZU+sWnuMeFSWJt09m96rJOt+Wa5
         ulSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=7wk1m7Hgd19BhCqKHGvCTbON9Rj92mscDdAClw7FS0M=;
        b=ZraUgmWPnGCVGCgQ9bF9WJ0+nPt+P81Hm9O/6JjrH3M+Hln3RsvtjiFt+VLWd00gkW
         vFT62ARqghafigC3ho1ThsYeS6EX37QNu6+6/A8FhT7DYbV3X29TFA3nnhiG7LrvVaFQ
         rmyTUlxPS5dIXWC5kXPmCHaFaJW2tiCU5Kriqou0EFwZtPKibINQUvVJTtkZF0La8AtZ
         A97YMwzCNw18+RBaon2xHgqLMGRPzv9UxoqVau1wNVCodCRg49FYg/nJrPnSUK0Sqs5c
         zkeDujbIhoYXcntMTjzSA5P0FzbpnK6kIVnpRuuCRVL72blddwSRwiSnzRTIIJ8dVkXM
         VZ9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HiQOtx4+;
       spf=pass (google.com: domain of 3jkwtyackexeyxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jkWTYAcKEXEYXPcRPXVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7wk1m7Hgd19BhCqKHGvCTbON9Rj92mscDdAClw7FS0M=;
        b=o2yKIEBx4aK3Jk7tK2z05CQ4JFVTUXB7uXNeDDlZCDKnVpBswkHhT38CZ1U1Fe4vos
         KPmaOWYuY4WhveOtH2unjcyYJKD7uE/1sO5Oj3awPY0e+Djr3pfcuzER1WndUKRZKulS
         CsI0tdXvq6r3SsL04eEPN0Fg3TwWrDDYisHRr/AIM+6HDc/zknINwxRVCsnrVYCRFGkU
         Jh8NqBCGKVXoYVKE2HuqMUKTlqIpCoFQAwp5xVaIyiaEp1tAnNoQb6Fv1mHFvjO6k+S7
         d50iUO59KYHabiGA65+iVnaKnpIvs0hu3FQIiJujPYLdcPGCZUo29TV6V9/YCesMcdb4
         zfJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7wk1m7Hgd19BhCqKHGvCTbON9Rj92mscDdAClw7FS0M=;
        b=GWdtAwyIvMIl4QvW0+1aUt55XG2w2iQ9Rdykh9jUCr008A9CXE/6j4vc5G5YlKcxxm
         gU8mbpLR4Tyg00D1fvL+n84k5EzI6lz1sRUtD7yHKKWD8LjWtXxQLQye6tk3EPsbv/a4
         AfopUZy5ooB0IrYVrotfNzs9kZLef+Cwg5zIIHqq8VIxeECAL/P6jH+M1itHTVBrDw9g
         tBg1RJO0AoX2v9RNxkIEfbvmQmdEd6Xo5003QbaTk4sDoFaBhE1svdEXhmbu1nTn4wA+
         bcx+NbMusF3vcQQGpUm5ea7LnCJkduflNOY3F/MWJXovURIYMzm3TRX9Mq6VlmN4DWuT
         cOzQ==
X-Gm-Message-State: AOAM532rj1mjz37doQwgElOPVJ4a/svS3vg4PiI9YPRxuB7nriOPsdjK
	tSHKsN/ayW6NOjMngYmUJ1Q=
X-Google-Smtp-Source: ABdhPJxlvsiIjbg+HOtSzNEfXUJU2TZNrbleZ1UkkMPX48MySwLNguncycTxZQQcXnbqwXQpu+P2Og==
X-Received: by 2002:a05:6a00:224c:b029:28e:6004:d0a5 with SMTP id i12-20020a056a00224cb029028e6004d0a5mr1795183pfu.1.1620264336286;
        Wed, 05 May 2021 18:25:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4145:: with SMTP id x5ls452619pgp.4.gmail; Wed, 05 May
 2021 18:25:35 -0700 (PDT)
X-Received: by 2002:a62:e704:0:b029:28e:5541:7e4e with SMTP id s4-20020a62e7040000b029028e55417e4emr1769230pfh.17.1620264335730;
        Wed, 05 May 2021 18:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620264335; cv=none;
        d=google.com; s=arc-20160816;
        b=R3w+gqTrYFW02yLGdQ7z/BGj2d8ceMRVgVwoe6fdM9H4AZ1l265j1OgBYeLK3SXC12
         VWWtUUg6y5d2TCocHp/vRj6nHhWusRUrWXk/qDPzMgkXXVlsksq9NDIko6si52hAXTOo
         Kr8l3CzoCr7TKrU/4N2tLu/ftTOKek3Ca/eFOqQmXQW3GaGWah18YByp5feUNQ40xLri
         iSEIKoWMtWas3krrgDyDDiUQlyhMh+ALPymq76aFZlExB7RmGRFwIp+zU3oC7xyeJ5GY
         R8s80K/W04llGZYf7ggYTMwxxG/qH9k4FvsqqI/DdW4579VzpEK9zozzyhcNA4auDuxR
         eKFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=bZuP+FAGH6WmI1ayAzXHtNdn5xidSckeCnHh+eJccBo=;
        b=Mu/grGFaahe4WS2PmS9vYipEVJvOl+hJFUnz9mLsx89SdVYXP9E0ciZC5LXRs4kdUG
         7AD6io/9UpqX8X1K9uogTGPTgn05ZQJj5/ja9CAY51vckj1M7UCgUbnPJMEK0lmFB9Pn
         1XpFc0ZSpSaYue+HMrDv3bX+JajM3BqLjeOXnv2rnEO6SNgYlLn5WtlQQuL5QlABCOsp
         KLOYlSPLqAWp1UPbdWw6kk9dYtg+MjK/l3fLX024g/9RcpDkeiHaphCWnuwQBSsTvezS
         29mXhy99Z8wujV/HSZ7X68HcBNIDhlYzR7/d3NQDn8TN+FLQjqAvYILsVqppKovJqcmW
         c71g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HiQOtx4+;
       spf=pass (google.com: domain of 3jkwtyackexeyxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jkWTYAcKEXEYXPcRPXVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id x3si1131382pjo.3.2021.05.05.18.25.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 18:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jkwtyackexeyxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id r20-20020ac85c940000b02901bac34fa2eeso2332937qta.11
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 18:25:35 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:1615:40c4:8c3e:9e75])
 (user=jiancai job=sendgmr) by 2002:a0c:ff06:: with SMTP id
 w6mr1629957qvt.51.1620264334850; Wed, 05 May 2021 18:25:34 -0700 (PDT)
Date: Wed,  5 May 2021 18:25:08 -0700
Message-Id: <20210506012508.3822221-1-jiancai@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
Subject: [PATCH 4.19 ONLY v4] arm64: vdso: remove commas between macro name
 and arguments
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: gregkh@linuxfoundation.org, sashal@kernel.org, will@kernel.org, 
	catalin.marinas@arm.com, nathan@kernel.org
Cc: stable@vger.kernel.org, ndesaulniers@google.com, manojgupta@google.com, 
	llozano@google.com, clang-built-linux@googlegroups.com, 
	Jian Cai <jiancai@google.com>, Will Deacon <will.deacon@arm.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HiQOtx4+;       spf=pass
 (google.com: domain of 3jkwtyackexeyxpcrpxvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3jkWTYAcKEXEYXPcRPXVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

LLVM's integrated assembler appears to assume an argument with default
value is passed whenever it sees a comma right after the macro name.
It will be fine if the number of following arguments is one less than
the number of parameters specified in the macro definition. Otherwise,
it fails. For example, the following code works:

$ cat foo.s
.macro  foo arg1=2, arg2=4
        ldr r0, [r1, #\arg1]
        ldr r0, [r1, #\arg2]
.endm

foo, arg2=8

$ llvm-mc -triple=armv7a -filetype=obj foo.s -o ias.o
arm-linux-gnueabihf-objdump -dr ias.o

ias.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <.text>:
   0: e5910001 ldr r0, [r1, #2]
   4: e5910003 ldr r0, [r1, #8]

While the the following code would fail:

$ cat foo.s
.macro  foo arg1=2, arg2=4
        ldr r0, [r1, #\arg1]
        ldr r0, [r1, #\arg2]
.endm

foo, arg1=2, arg2=8

$ llvm-mc -triple=armv7a -filetype=obj foo.s -o ias.o
foo.s:6:14: error: too many positional arguments
foo, arg1=2, arg2=8

This causes build failures as follows:

arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positional
arguments
 clock_gettime_return, shift=1
                       ^
arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positional
arguments
 clock_gettime_return, shift=1
                       ^
arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positional
arguments
 clock_gettime_return, shift=1

This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso:
Substitute gettimeofday() with C implementation") rewrote this assembler
file in C as part of a 25 patch series that is unsuitable for stable.
Just remove the comma in the clock_gettime_return invocations in 4.19 so
that GNU as and LLVM's integrated assembler work the same.

Link:
https://github.com/ClangBuiltLinux/linux/issues/1349

Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Jian Cai <jiancai@google.com>
---
Changes v1 -> v2:
  Keep the comma in the macro definition to be consistent with other
  definitions.

Changes v2 -> v3:
  Edit tags.

Changes v3 -> v4:
  Update the commit message based on Nathan's comments.

 arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
index 856fee6d3512..b6faf8b5d1fe 100644
--- a/arch/arm64/kernel/vdso/gettimeofday.S
+++ b/arch/arm64/kernel/vdso/gettimeofday.S
@@ -227,7 +227,7 @@ realtime:
 	seqcnt_check fail=realtime
 	get_ts_realtime res_sec=x10, res_nsec=x11, \
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 monotonic:
@@ -250,7 +250,7 @@ monotonic:
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
 
 	add_ts sec=x10, nsec=x11, ts_sec=x3, ts_nsec=x4, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 monotonic_raw:
@@ -271,7 +271,7 @@ monotonic_raw:
 		clock_nsec=x15, nsec_to_sec=x9
 
 	add_ts sec=x10, nsec=x11, ts_sec=x13, ts_nsec=x14, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 realtime_coarse:
-- 
2.31.1.607.g51e8a6a459-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210506012508.3822221-1-jiancai%40google.com.
