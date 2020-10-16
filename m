Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKF4U76AKGQEETLQLRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DD91F290AFC
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 19:53:47 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id m24sf1062364otk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 10:53:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602870826; cv=pass;
        d=google.com; s=arc-20160816;
        b=uydGo4FrrLoWIrRpeQspuzqeYmWLUTOG2y/Sm5k2d6Yg3GqHMlt40Z/soo4jt2g4Jd
         cB8Yx4HATn4rUFX1kJssBeDUDOWJzdDg8YIHyXZqlkzVHNtJwBX/rwfc1uNBC34hokVN
         UfxSstgI4583ju8sYt5RKHrTDsimWEgGRWKaYHXYyUYvPCaDShJfzmzjS3YGGqAASCfh
         aJZZmBj3qnqcUYYOc9jDRZlPPpL1qYn/syaQcXz/75lyHI9l8PM1k1N3lHmfl8rz+UaL
         VQrT7MXVVuIa3tSFPXHi8655fTpaAsWR30SaidQbz7s8QO3m8z2KM3pzHr7ZvN2avzcH
         U1XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=aX5JpEcn3MfwiGdN4tnM+M1I9Hqe0RMrEBWEb4fHr/I=;
        b=M1bdHn/S2kuemZ3yMe5IoukrMp3LQ/Fnastdn75x9JJ3Rb35L++dm0b9wfWXNtSKdo
         8dUUgGAhuiS8eguhHzgu45OZIcFfb450GgkIpo2LOSc548mkJNXVxxMHsZJP3Z7WnV60
         aROkluOhwLaXc18zzYGJf+4f18sggrJaGqnfdzmCFJ8Vl0m2eVXYQ3CucOTnxbv2tZRa
         adT0tTVGJz0p1Vdy1vennKQ/sM3bXfNOGdJ+Zp6viXZZKWynW8e7rtmY2dsk/BrQFRkO
         Sn7WlsnMgEI3BWnWg5FR7euymJgQQdZ1lKgKldfv63HqNuRHG4iYk/HmaNZoleS6gKiU
         SFpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rgKPCbJG;
       spf=pass (google.com: domain of 3jt6jxwwkaa00qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Jt6JXwwKAA00qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aX5JpEcn3MfwiGdN4tnM+M1I9Hqe0RMrEBWEb4fHr/I=;
        b=ogZDyVYCf/xHvTnzayst7aqE+agVuUHpPzCQgyYwpyqkN0eD+qiIZB13x18tHSxJiO
         wNDOmoDkO4VCTx518zvHZq18zKaYxSdTOs0XSypun4JBPkm3nTNvXljtc3vfuby7D6GC
         YIKYlFvWD0dWjKyYdBVz5vdwGvwK5RyBOoNEx1sSs253OA7RjUx9k4ukfSDI8tkATSyh
         6PzhCOSn8t1uS1jCmm5RYMnwkwXF43MEplDS6u4Pkl8I4IIFAmNg96/yhWEOxNyjvPXG
         kfiVKcJL+Vb1RJqJV+Cjl7hHWtg0+7mDQFurG2DGmZy0Wg1g9Cnsa/7oQmNGz5A78FVk
         2g1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aX5JpEcn3MfwiGdN4tnM+M1I9Hqe0RMrEBWEb4fHr/I=;
        b=s1+zys4KPDuntbWHhEdEnyKutEZps9/okJDLYyqIljDIC7cnncqA/PDvbx7QFl8Bcc
         /fIAFU8j3qUUHCL+fJNNsHZMUqW3AZ0uAte5Fwkg0LOtiyX/ZCOkEpnoa1ovRb2GtWw3
         ovSve466sWHSqDJApqX7+woXskpRTJUb6ye+Pj0M8k0JD2KQnVW3PirVNuVcT9Xa1J2G
         KJ8cR6aqec8g/6KcgB1gYHoXZYzzTiPuvj25OV5I0/jfN9NXB+QWTBuR1pUYu15bkurM
         NyJlFGUoFnv2hVer6mjosDMWXVm6hCKXD3ChvbCCLZ8PmhsKUrtlBbeZHe5q8s3fGCAJ
         n3+g==
X-Gm-Message-State: AOAM533r13TxyNQ9K9hFAJk2ieU4xxkpepaBCNTQuySXE2qFJwjoqwLR
	kZxrpvxcqjmurlwsQ1C4ZOM=
X-Google-Smtp-Source: ABdhPJwjEcAdTTJDJ3Tvcq0GBDLHu1RFF9YAPT355WT3vYBUMtXOaBL069wov/uSx+6cch2nJgMHLA==
X-Received: by 2002:aca:442:: with SMTP id 63mr3070565oie.111.1602870824904;
        Fri, 16 Oct 2020 10:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310b:: with SMTP id b11ls809460ots.10.gmail; Fri,
 16 Oct 2020 10:53:43 -0700 (PDT)
X-Received: by 2002:a9d:5d0c:: with SMTP id b12mr3687653oti.170.1602870823020;
        Fri, 16 Oct 2020 10:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602870823; cv=none;
        d=google.com; s=arc-20160816;
        b=AFMP2JsGKphwbySk84o38FSJaaiWxeXTJc5PW0D76UBTv00GVb5bAliyAoFHcRyyG6
         +hr2k27Z0O/8JaMMeQodYXaKHi1nQocddknf+VG7vTY/H/qYwI4gjwAm3NdUNrQzP6fS
         Qvd+uRCjedfbCicMMjzDQSEseI4BGfzltzXBS16f74Ijk2bMe24K8FQK1vYqrF5ZI5Xu
         VC5gsoIrIaDhnhsjghzkIcVVMjGxPVBFuhc+OgXyFiv9hrxCSMMLQdO6vwd4u2SIg2X6
         IuahTGMDbiJqe/9tPiL+f0YlqlHQ4IoI10lQI2lo3HBtfS8R9V5tyd2xDJnOUo0/2/7C
         Qm+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=q7DWLNuboaXQBizRCQAQyueFvatCQ/DSdeo5vJZMrAY=;
        b=fdK5JORgEt8pinMeqpi6406thW74AUiJA4dBRNtEqnBTOTxNz6yDMk6IWxl7UZGVaH
         XA0wJXdyq5d84KAnVokRmtNH09r/dVE69nx0moN9pSIWVWNIPno0wlSTP5xrmCCfb9vU
         BmhJast/NCPw7BibneyNOWt+wekLpDGU3zhXsjS4DxqIa5FV5OL8GsJI+KpGacAmQQ7J
         uVSMY9M8AIggr07OBHHz5hVB0tejYGiOeQNaTzmyZyB/Kv2XlYFHHOdW8FcSSH4PWZnk
         p1m4bvvnYXOouwhP3q/Z5OYggt+rXxgYITJjU1RDS2Q9zbx6rsam6gz8xn9JwP312/pa
         0aCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rgKPCbJG;
       spf=pass (google.com: domain of 3jt6jxwwkaa00qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Jt6JXwwKAA00qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d22si316245ooj.1.2020.10.16.10.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jt6jxwwkaa00qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k7so3151130ybm.13
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 10:53:42 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:9009:: with SMTP id
 s9mr7105616ybl.471.1602870822453; Fri, 16 Oct 2020 10:53:42 -0700 (PDT)
Date: Fri, 16 Oct 2020 10:53:39 -0700
Message-Id: <20201016175339.2429280-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.0.rc1.297.gfa9743e501-goog
Subject: [PATCH] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Peter Smith <Peter.Smith@arm.com>, 
	"=?UTF-8?q?F=C4=81ng-ru=C3=AC=20S=C3=B2ng?=" <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rgKPCbJG;       spf=pass
 (google.com: domain of 3jt6jxwwkaa00qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Jt6JXwwKAA00qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

With CONFIG_EXPERT=y, CONFIG_KASAN=y, CONFIG_RANDOMIZE_BASE=n,
CONFIG_RELOCATABLE=n, we observe the following failure when trying to
link the kernel image with LD=ld.lld:

error: section: .exit.data is not contiguous with other relro sections

ld.lld defaults to -z relro while ld.bfd defaults to -z norelro. This
was previously fixed, but only for CONFIG_RELOCATABLE=y.

Cc: stable@vger.kernel.org
Fixes: commit 3bbd3db86470 ("arm64: relocatable: fix inconsistencies in linker script and options")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
While upgrading our toolchains for Android, we started seeing the above
failure for a particular config that enabled KASAN but disabled KASLR.
This was on a 5.4 stable branch.  It looks like
commit dd4bc6076587 ("arm64: warn on incorrect placement of the kernel by the bootloader")
made RELOCATABLE=y the default and depend on EXPERT=y. With those two
enabled, we can then reproduce the same failure on mainline.


 arch/arm64/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index f4717facf31e..674241df91ab 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -10,13 +10,13 @@
 #
 # Copyright (C) 1995-2001 by Russell King
 
-LDFLAGS_vmlinux	:=--no-undefined -X
+LDFLAGS_vmlinux	:=--no-undefined -X -z norelro
 
 ifeq ($(CONFIG_RELOCATABLE), y)
 # Pass --no-apply-dynamic-relocs to restore pre-binutils-2.27 behaviour
 # for relative relocs, since this leads to better Image compression
 # with the relocation offsets always being zero.
-LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext -z norelro \
+LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext \
 			$(call ld-option, --no-apply-dynamic-relocs)
 endif
 
-- 
2.29.0.rc1.297.gfa9743e501-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201016175339.2429280-1-ndesaulniers%40google.com.
