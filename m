Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB472ZD3QKGQEJRDVDRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EC42058C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:35:49 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id co8sf2729885pjb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 10:35:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592933747; cv=pass;
        d=google.com; s=arc-20160816;
        b=OGmHwdFRluWb7RkMefSMEm4bmTKdumImfGtFWznU3WjUsDzok1RPycWhLhkqqsEW+4
         +gbrxhPFwrKNGqoo65EiaRj93C2nW37mxSSAS8EMiPC/JHNjoVzGdAXVL0P3x0pdh0wE
         utFQ3X50IiS++I3YiNSSlTEY7mvyWnqH0WKsUH4Vy1jWALLOwd7IU3ld0KnCN+ghsTjF
         +Fhn1susFHZfvfLSM0SRFpdqiVZKmzmXyYBzx4T8dyjjO+i4uh9+YQ0/JQaLCGR+yNOC
         1hYSnn2gvVcxZP5wXqN2rZBIoHyLqEEtJ6PGuDajY/IxLZ0uGM2S4o+HafIgSCFbIqJZ
         vELw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uN67PfMkKsYGNbR0asHp3epZiv03TT7GwnkicVjS5eE=;
        b=Mv2D4r6/mD8Lsob6Ohm3AlqONJWZKrx94tIOHGySKH/psnOmwjgefE2PlAaA+Lhw3Q
         p4FE6VSyKveMFe3JdIiQ8L9wnQ886cGpoU6QlvDcGdRevO7ELSJGILi9Tcd1BEa48VHV
         ZylyyjWKzOahww+bUcSxyAXmUm5mkcmG9J6kmvhxFIDM5VjMvPgo/vEkTjGv5+/9ZUDq
         iZpD9u06zFYU9vDvsNX2jMZN+LqW9pl7Kmuih3m3K8e5pGTnSV3sRWoZ5N2b4zQ0FNgb
         elb4DuIL3z4XEcUuFZ3Auzv/txR1LQxgJos9F6asr0gR9qejqj7VK5ZjEM8yewNmHYzK
         optw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BCLGyQzu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uN67PfMkKsYGNbR0asHp3epZiv03TT7GwnkicVjS5eE=;
        b=npy/62v5seGwHmAOGCJwQgQqOdycXB/RLLVyZzQk3skFw5H2fJW4YE6KFkRJy08vR4
         3SxV9kpZ78xhZnJ0Z5v0uok6uk30N66SLZ1iq97hEazmRQRAjtj1rOc859lAOBwt6hRH
         9CyL58b/EV3fgM+N9r4iKoAvWOhEeCaY0A+Y5ikcoHQycrhMeHBSyz10mUUadRHqIavP
         HDqg2YkvQ3xk0pGlSTxEARI1Icgi7fwfvYiMUJvcDhANcEgISrRF1djfBAcHp+XJ1ixf
         wtZmCqj/ZI1qzYWSp/AdKmG0UzQIjO7vf/mCeoSLuDDw13tDT84OcLm8enYCWyI9l+0J
         Fw5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uN67PfMkKsYGNbR0asHp3epZiv03TT7GwnkicVjS5eE=;
        b=cEE/+SEAPTfFix25DEFwV6aM2tOGr0gwBYaZRyLRmjRRMR3zt7VqBx7otKbuk5Xz/N
         iP9C7USkw6I/OXthsZVvp+U3tRte91fLN0PHTVtcKZ3+RZbXCjtsaw+SilhFj6iet9q9
         T7woKaNiW0GgwVfEWFkuaolOsy8e+sC0AZFCd2FMW5Uy/Bz/SVWgUpiaNsIh2Xj5cqdf
         d5NQnB9IDsMmUii73Sek/Lv+5mx4fqwOcXqn4UbQVRzuTjk5MyPN1HJd/mXOhDhI4mek
         b3bcBKF+ztCWOf4nsTmJhnxvI+c1HjhKGC7wyl4awAnOALlInbSWWsqjz2fjG7SzXg8a
         8SWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GrICslAIfcnt/E3RyRof+BGTSCXC2o0xWKDy7Dy+fqoWnHYah
	MIoH5quXk5PL6X28FUhx5JA=
X-Google-Smtp-Source: ABdhPJzYQEWL66l0y2BzqZukeogTgaUXM1IRsRCjxGO7WJwJf0LLIQGVKvq8SuA91HRDo2IykA7HjA==
X-Received: by 2002:a17:90a:356a:: with SMTP id q97mr9954246pjb.213.1592933747702;
        Tue, 23 Jun 2020 10:35:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls1593906pjb.0.canary-gmail;
 Tue, 23 Jun 2020 10:35:47 -0700 (PDT)
X-Received: by 2002:a17:902:9b93:: with SMTP id y19mr3257984plp.241.1592933747225;
        Tue, 23 Jun 2020 10:35:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592933747; cv=none;
        d=google.com; s=arc-20160816;
        b=jrA1kGHA+/53ivqNIDXhwf1i8ZgZbch0U1CZEoX+CetnnhRW9x4lmjuJiV+ZUtALY6
         j4rWyrGTf+JhnptphDQqhy9pUuCYRkWgA8DkqF9HYtiae590ZEO71Cg7Af1XI72zyhTJ
         5BmKL/x3gXP7CNbrT8loCaSKRs8PeYEtcNIDmoNah29lXoV4HGT1dEjj+4b4ydIGrLiO
         YoG24SyAhjqrYGM4sVC9h6RNV5EQhxVjUqz8VZrAjBbwJyZbgYlJHmebZEAN2W9zItUy
         J2Zc63+dVgz9VrFIFpzVLO404mQpBaaH8979ClEXzGMJpCHnEg+qGz7gN8XcAOmbbhWT
         6y6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3JgnEGcDwXpsASk6okxZ3uhf6AfousRHMh8U1fKtYMg=;
        b=bo5+bPrxFrcbcS5QQQ7lZ2C0zybTM8juX9W7Wcjcdxzu8n8LKq5CTZmZAVEVlM7Qyu
         J5ofPKqcoY1Z4Q1OTot+ME9lHsvAA7LDWc1+49Lb5F9wekRsrdwQzVBmZyK7E/UZ8ppf
         bwd5YFuHg3LH1dCzw2k7RU3YdQj1+s69Ga92D8IJ0WNYDxYUZvEIIp9+JudU2jPNNKmb
         0sn5ylwIN9zKFzcYTo3qNhGjw/s8mnMS0QfyWw9K8KVX9UQaPHrUszVUU5aRFdqSIW2X
         Z3gp0TAO3E+YURl64LVLwgFzjcvWE3Qie6yLLtcR58um2MnUiBkUFJIEUMPu0hW8pVwX
         eS+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BCLGyQzu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i17si123051pjv.1.2020.06.23.10.35.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 10:35:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0334620706;
	Tue, 23 Jun 2020 17:35:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-s390@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 19/28] s390/vdso: Use $(LD) instead of $(CC) to link vDSO
Date: Tue, 23 Jun 2020 13:35:14 -0400
Message-Id: <20200623173523.1355411-19-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200623173523.1355411-1-sashal@kernel.org>
References: <20200623173523.1355411-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BCLGyQzu;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 2b2a25845d534ac6d55086e35c033961fdd83a26 ]

Currently, the VDSO is being linked through $(CC). This does not match
how the rest of the kernel links objects, which is through the $(LD)
variable.

When clang is built in a default configuration, it first attempts to use
the target triple's default linker, which is just ld. However, the user
can override this through the CLANG_DEFAULT_LINKER cmake define so that
clang uses another linker by default, such as LLVM's own linker, ld.lld.
This can be useful to get more optimized links across various different
projects.

However, this is problematic for the s390 vDSO because ld.lld does not
have any s390 emulatiom support:

https://github.com/llvm/llvm-project/blob/llvmorg-10.0.1-rc1/lld/ELF/Driver.cpp#L132-L150

Thus, if a user is using a toolchain with ld.lld as the default, they
will see an error, even if they have specified ld.bfd through the LD
make variable:

$ make -j"$(nproc)" -s ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- LLVM=1 \
                       LD=s390x-linux-gnu-ld \
                       defconfig arch/s390/kernel/vdso64/
ld.lld: error: unknown emulation: elf64_s390
clang-11: error: linker command failed with exit code 1 (use -v to see invocation)

Normally, '-fuse-ld=bfd' could be used to get around this; however, this
can be fragile, depending on paths and variable naming. The cleaner
solution for the kernel is to take advantage of the fact that $(LD) can
be invoked directly, which bypasses the heuristics of $(CC) and respects
the user's choice. Similar changes have been done for ARM, ARM64, and
MIPS.

Link: https://lkml.kernel.org/r/20200602192523.32758-1-natechancellor@gmail.com
Link: https://github.com/ClangBuiltLinux/linux/issues/1041
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
[heiko.carstens@de.ibm.com: add --build-id flag]
Signed-off-by: Heiko Carstens <heiko.carstens@de.ibm.com>
Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/s390/kernel/vdso64/Makefile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
index bec19e7e6e1cf..4a66a1cb919b1 100644
--- a/arch/s390/kernel/vdso64/Makefile
+++ b/arch/s390/kernel/vdso64/Makefile
@@ -18,8 +18,8 @@ KBUILD_AFLAGS_64 += -m64 -s
 
 KBUILD_CFLAGS_64 := $(filter-out -m64,$(KBUILD_CFLAGS))
 KBUILD_CFLAGS_64 += -m64 -fPIC -shared -fno-common -fno-builtin
-KBUILD_CFLAGS_64 += -nostdlib -Wl,-soname=linux-vdso64.so.1 \
-		    -Wl,--hash-style=both
+ldflags-y := -fPIC -shared -nostdlib -soname=linux-vdso64.so.1 \
+	     --hash-style=both --build-id -T
 
 $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_64)
 $(targets:%=$(obj)/%.dbg): KBUILD_AFLAGS = $(KBUILD_AFLAGS_64)
@@ -37,8 +37,8 @@ KASAN_SANITIZE := n
 $(obj)/vdso64_wrapper.o : $(obj)/vdso64.so
 
 # link rule for the .so file, .lds has to be first
-$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) FORCE
-	$(call if_changed,vdso64ld)
+$(obj)/vdso64.so.dbg: $(obj)/vdso64.lds $(obj-vdso64) FORCE
+	$(call if_changed,ld)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -50,8 +50,6 @@ $(obj-vdso64): %.o: %.S FORCE
 	$(call if_changed_dep,vdso64as)
 
 # actual build commands
-quiet_cmd_vdso64ld = VDSO64L $@
-      cmd_vdso64ld = $(CC) $(c_flags) -Wl,-T $(filter %.lds %.o,$^) -o $@
 quiet_cmd_vdso64as = VDSO64A $@
       cmd_vdso64as = $(CC) $(a_flags) -c -o $@ $<
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623173523.1355411-19-sashal%40kernel.org.
