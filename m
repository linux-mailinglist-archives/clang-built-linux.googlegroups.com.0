Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7WISL4QKGQEQSOYPHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 60767234DF7
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:47 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id l195sf10516935pfd.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236926; cv=pass;
        d=google.com; s=arc-20160816;
        b=lA45d5ZXtWEBjrB6HYFvmJW/AHJYO+DDkG1r/lJHPhgfGTna4S+xWCxW6DihGe+VhU
         xGr6ETi/VcbT8l0VdGcSeLFY+aTJCQmcyJJMcpPAcYRMw2oAYuj5RJO7GZFbjbaPLs8S
         l6ielMHbjC3whOZ8fc0HsyS+EHWc5uT32vo7gHSk/UUbwgjTXCtLUyBKHv2PAKxFJIrw
         Og7vm0pd0NiZNeWzUJvChXBHLvBtEMgICi2Yp5a54YK09xbnImVuYP0Ta6MbC0ThUgQJ
         RFd3pZsTo55zb4tobnH3719LngANI7QYLzKsvOv5bBB92PSo007qCOoEwrW9bdXVgyvl
         QZvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fgHq9ArqNKIdZ5uUb7uYJ9hDZ68sR1GNCSJXqePa61w=;
        b=HKB4+5ta47Mj1uJojYwnJyuqOcKrpk5QNNAZvH5ifMkxVi+fZMJtG7ZeL1353RD2ML
         oXC1MmiF/OMigFJ3kpSjeaOZwxu1Wiw4CR2x3hiRQN0kkAipwX/QQflt920MAv+w91FT
         R+pA0wsQxIdbq+fSHvQJwOxP+94ddTlFSF23eOprK/EpY//5/o1BEqNI23lKm4dOgPxw
         8lJdwgzk6gK9sP5sdForFT+y7rR0+alojPPz9FDJG2Xlf0Rl7EU+9UHC+LFeUEKCE2TU
         kWVi1f7oTtEimeZ/l7+QbJdiL9EtCYwLUom9xxkjojJALNkYRwmK4vBZbN2CKEz/0//o
         kMfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HwWUijwC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fgHq9ArqNKIdZ5uUb7uYJ9hDZ68sR1GNCSJXqePa61w=;
        b=ON0cd8vs6lG4VMMAxYzaEF1UUSLcqjZ9rsCFC4x0kwFVVxpbCZEwkPjSc21wozWdqf
         zgKAXIsryJ2ggFoJ02sZX/pfwX/aoFn4UsvpvBFoCYXcbMmqELbYNPPhqfYqa9uIJlQj
         n0PmKIGburxcxCjbhaTYbaJbRien4750G2tUzRxFUtKfRvzMOrnvKpqsOQTbrXsEvpQx
         Hhjb6E5yPl03zXGpn1Ja43oO9pPL+rxARksNOJbG3hk9sPTyLc7hx/vqVrV35cZ2hrmk
         oq55sYACIPLemxXo5tsKYgCGH9DW2OPn7g9n/nzWdIeiWF8rnMVEAuWyGxGVtenPNWPS
         gxaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fgHq9ArqNKIdZ5uUb7uYJ9hDZ68sR1GNCSJXqePa61w=;
        b=setbK4Uwd1V5xWevAl3xZb5y/JF/MX3/Fzi+VPe9cQ1M9n9i6FRl/ScLu82vB2T1oL
         /xcS3qndFuO4HQiA0bemW8r62igo6emtzbGiNIyKdHvnRvBzOzl8p4NavB93ku8CLS1B
         6/fFJtpVKRte+ocppiKSVfKQSZtRP9l6gprANCI08nUAYe1MT3HJymtG+ZVrDvjdRCTC
         G5ZXAcJxQA2duAIQIauSLfgz7uBcD4pGctPIDG/faeaQI1GQ+hhUIs7B6XyQCtmYKwuf
         Wzcji69ciRQ9t9IHDHayGLQlBv7G0m5oZlLpMjjpGsxt1A8oMFnBm5eUKFAShG4JYunG
         /cWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SwCVlTRGUDjFQAq4vGxtXlAQGoA//sfOMf4keUDQ+RMjZd2xE
	nFCJZYe/wgi+RSnGoQ7zbFU=
X-Google-Smtp-Source: ABdhPJzNUWEGleMuwza/Rj6JU+HRMkYOnJgvw/Pr6HmTXyqCFN+HnisVWa0L39Bs9Ip52+wAE/HGHQ==
X-Received: by 2002:a17:90a:e48:: with SMTP id p8mr6134508pja.210.1596236926099;
        Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9344:: with SMTP id g4ls4276293plp.10.gmail; Fri, 31
 Jul 2020 16:08:45 -0700 (PDT)
X-Received: by 2002:a17:90b:4acd:: with SMTP id mh13mr6363453pjb.147.1596236925779;
        Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236925; cv=none;
        d=google.com; s=arc-20160816;
        b=Gtpea+lgaE2uO/aQBWmuUn6aVSqr/EtZCNEHOk5P6dzQbGKQHGALK1aMaKwpHeevlm
         AWxfpCuwtdQt+wnoGk/A5xfWe7YVfgj4y8Ssbq5X0uD2d4Tlu8ybTa9EhM4KSJMtVScT
         RttHTZVHb0OaDaNGsP8XZPE5UFbaAZHhDEH3becrOfY9KhXNMa91O/9wlomareOKBX5G
         8+/XP2GGptZat3fJYCenr04n8MSua2M90xM8LXBZ21j0UhLaiiMKNG05l+EwV2zizMxf
         O8FcuHknD6hIp75xyftF1m9op0RpFrU4nFlAVCdDPXqmfFqa0IJ/18L2XgTTUS3yERqa
         XjIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gw0qFrlLAeGFNQICDxZAEcvNQljVuXBAcUPpDFT6mlY=;
        b=Y454hobuFbMDYITMNSAhkJ9W+U8AzX1yweE+tQzJTBd0FATiXNVT+eqO4RWqy2tqfr
         bZVhVIpmbfzmPcoy+5F0ta19kmQecugKLVv0Jc7R0LbHkiocsVW4VqDS9CEG12CJg6+t
         vq5FJUFIFzQte4TyPvMmZjUgrMDt70JXrlBDc8lHbEd+v62FV+CBM6ZsOBRI2pUwCg7+
         QW4V0uPG9LG7v4eRzMuaCXBbhuvozMeG6miN/OuD43KhmCfvQjZ4h6iQNe2BvLy2J3+n
         +PwnX7v2YmAlo4VzOKfz/V2aKjPhNvWEUBMhBcWw6OJ9c/VQnVk1lllJzEYz038/df/K
         bACQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HwWUijwC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id lw11si63155pjb.1.2020.07.31.16.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u10so8607596plr.7
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
X-Received: by 2002:a17:90a:5d15:: with SMTP id s21mr6354051pji.154.1596236925542;
        Fri, 31 Jul 2020 16:08:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j20sm3120709pjy.51.2020.07.31.16.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 21/36] arm64/build: Warn on orphan section placement
Date: Fri, 31 Jul 2020 16:08:05 -0700
Message-Id: <20200731230820.1742553-22-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HwWUijwC;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker
script.

With all sections now handled, enable orphan section warnings.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 35de43c29873..b8a3142db0dd 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -29,6 +29,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-22-keescook%40chromium.org.
