Return-Path: <clang-built-linux+bncBC2ORX645YPRB3VKST5QKGQEOOYU4BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB4F270661
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:43 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id a16sf5595786ilh.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460142; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4G0F+vdI7tLE5VCRtz8DqT3GzAr0Q8xGTuUJ0Fuoe1DLqXl6if8g+Xv8YG9AryGps
         LOV4vHmZSGy7msgHDfQLO5rO+XyTMlWyDLloGPPy1klruZGsyJwqWeUv4IhpmV5IrSL9
         F8IXrIYlwPh7ixW9uKAp5moDjTKBJc5vPADF8yPaAjikpBKkogMMt9I2/OGeYh1py7RC
         gzIv+6DDFxmKZz7AKSiYVHOK/BCkhirM/f75uo+9Zc/abGRNpTy8tfDzqjxtr0gKSilc
         yORvgOd87LdXS8tEmtZUdI7DunI3JTmwwtJ/yHA2NPH46UO0453vOaIXlhtrCAwmLhIH
         Yivg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=kLvmsRbLrTa4FMi5YLpPA54UDqfTCmRbhPr8pbHS84M=;
        b=Kge9swN3RCRVjRH9zV/vUhbAuxbtWlkxv7Jkucv/iWni0UuXiUtJhuMaSqJuzwSxey
         2rl4TGA72qf/aqVkFjWDxRkqmfW3d4Dz7etnBN0Dt4MNVTYw57i7XqRBpwiWtdDdE2TD
         bPPvhQXXtWNRXsPTZB5jrro2SxkFtc1L0nj/JPj9mPcN/BkKlb7dpSVeQS3PgJgsXnI/
         RtzHmysCVwDqnfC/5+BYedVI1CteA63JOP/Ku3gfRKrjK3WBI7aN4RZ+lfBYfbFI/Kqr
         P/i6CMTory9cZjvylFJtDIPleQvTkF5oB/MdnDlSoHO4tjAG9Kjuf/CIT+7kF+3dnxDz
         VI/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=REd95VnF;
       spf=pass (google.com: domain of 3brvlxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3bRVlXwwKAC4cKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kLvmsRbLrTa4FMi5YLpPA54UDqfTCmRbhPr8pbHS84M=;
        b=NwnZX9CKUwZQPiTHyeiwifOsMk7B1Zjhpj17Nfe50hOtVux1uc1mm6JedVvq3BZOjH
         RTuMWijzLBmPOvaTy95C6EzJ2rimVHy42Tdr2Wg23ZzFUOtdpEuFTEcrLdMAF7hf+Cd2
         28e82WBdSnjf56o8i0owF0TrMfOP7NazHawDrmIGZG53g8swRsFHK/Y2kprRIwBNt+jX
         +Aovr155ZYJPDXffyQKkTsjY+VzOo1teADC8FlXsoP9ackvMQp+QnFanx7FrE7v35PJN
         AyJvBKTC0ACTQ112L9Xwo7VB8Y344fMEuxFGraVkGisBzqxKpZv3UluBH+EXY2xS+u8N
         38xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kLvmsRbLrTa4FMi5YLpPA54UDqfTCmRbhPr8pbHS84M=;
        b=pWuyR27VYsbYh+9UwY+0wYPK6VP6RTZ3erSwyzAhecfykJWgEYs0D0zlcmYziGafni
         fA4ygXZEHE0Uie2pwOp5Z0t31vAh60ylkWZF3EPFe5DF5eBhmv9zgGr0pmh3270Hknvv
         v8rsH4NMwqsX6EeUmE1vuRnZH6xycvpdNjvNB/Q43HHqyxDxRaqPhv2IP9t+gXfwJiKO
         5FJx9ODZYEE+5prfWIEwdLUV2LXJsepocyXOkyo9PddZBc77mW4vjBLNAaG02Fdmv0oQ
         s3So4eNU4pn6KdINLH5KmrH2PsJmgunvTG7bwta5Na7tm8/34NluKILGM5t7O577IaOM
         XQYg==
X-Gm-Message-State: AOAM532k+QVRZXl+ygS0RZC1WwmdCkdll/PptVCy/IVdOYeN3y0/vTpp
	TnLyGMo64v7Dxo/nj3pD6ds=
X-Google-Smtp-Source: ABdhPJxGa24z1gCoN/CcL3fXyga0RqyQnGFTgogNlIoRcf3duWhjuMnGdhuaKBPDls+d+vRQACn5LA==
X-Received: by 2002:a5d:8a04:: with SMTP id w4mr28861648iod.68.1600460142441;
        Fri, 18 Sep 2020 13:15:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:84ea:: with SMTP id f97ls855587jai.0.gmail; Fri, 18 Sep
 2020 13:15:42 -0700 (PDT)
X-Received: by 2002:a02:9f0d:: with SMTP id z13mr31792107jal.60.1600460141962;
        Fri, 18 Sep 2020 13:15:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460141; cv=none;
        d=google.com; s=arc-20160816;
        b=qWdr00fa8gs/bGRbvMe7sOY1sNkcpuXALjBQuZf1Vfci6cwKPyusWkUbgYF4QT2t3I
         w9Api3s8kGbmBzqG3T0tmakwtslTO43xPf/m3hqzziwx+wcRfdM9WVGSxbBGfHFJ2CQ0
         A4Mj87+0TuJNc/5mWWru/9LbfLisqvdfXJlEXmx1Ok9kZ6SJ/IfLi4j/eI06ufGppruA
         YVi/rRHz9owmLefk7eX0zPpI2d0UOnJnipyPPU2o9AsNg+ceBZZdxF74hkXEHlZwP5Dd
         VLowX4+AGaPn2ol9g0GF1MSe59SsjyIneUmkvR00HTWQEpmk7ZkYURhzKLLYuMAtmSsb
         uwCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=oXJMXy02LqTQDpBkn8PPtjYwJPq4evUojZhZLMc3uvo=;
        b=SB44F4XlASy+n8tw4NSS2mHf9xJj17wBSACPHoIzKwiDL0iZfqdKS/3v1BoZNE4dt8
         yZ0d9qUqIL03wYaYuLjOqnYxT1fh0uUhzBv4J0xMP5G9rlSt6K3e79EJ7PXazdbwxBJi
         MKgvvxcbgEwFVRcMZZouUco6TpR6Sy0gJ3+ItXnNaA8XO0BmfjHDA2AFiLGHvmQpve25
         5Cq8NXNQZHUtde+p/IUEVkgf20fD7Hw4QUeGgDfMXrX95A4PB84XqyZ7vgCZZ4+Eyn23
         X0boADaKXJGJ2+L6Wmw4wkMoVRM19JiwNkR43qfWREBa/Ow0rKfgU4jIcLLH5mE5JV2l
         T1Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=REd95VnF;
       spf=pass (google.com: domain of 3brvlxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3bRVlXwwKAC4cKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id c10si81792iow.3.2020.09.18.13.15.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3brvlxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id b3so6639506ybg.23
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:41 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:14c4:: with SMTP id
 187mr54928163ybu.449.1600460141424; Fri, 18 Sep 2020 13:15:41 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:32 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-27-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 26/30] KVM: arm64: disable LTO for the nVHE directory
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=REd95VnF;       spf=pass
 (google.com: domain of 3brvlxwwkac4ckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3bRVlXwwKAC4cKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
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

We use objcopy to manipulate ELF binaries for the nVHE code,
which fails with LTO as the compiler produces LLVM bitcode
instead. Disable LTO for this code to allow objcopy to be used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index aef76487edc2..c903c8f31280 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -45,9 +45,9 @@ quiet_cmd_hypcopy = HYPCOPY $@
 		   --rename-section=.text=.hyp.text			\
 		   $< $@
 
-# Remove ftrace and Shadow Call Stack CFLAGS.
+# Remove ftrace, LTO, and Shadow Call Stack CFLAGS.
 # This is equivalent to the 'notrace' and '__noscs' annotations.
-KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_LTO) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-27-samitolvanen%40google.com.
