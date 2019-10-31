Return-Path: <clang-built-linux+bncBC2ORX645YPRBHFA5TWQKGQEHSEKYNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBEEEB52F
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:25 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id k68sf4895074ywe.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540444; cv=pass;
        d=google.com; s=arc-20160816;
        b=OtsOmscmo2AIaOSj2uo+P+CUy69NWMmWTRe3OsdNEQOO0z3TeB4xFpr731eHrBTdAz
         IveXuZSLsYJh0KI5/Dh68eXJH/ut6gxHhgoey/bOI03q+TD1sJm7VR7bPk7JTs4c+HM0
         +bBC/a/SeEN59avxYAHhsU2WP3f8uCActH88/PxJJoSbyg63BI6P9VNztN4GGYl5wp90
         viPEn2X0w3xvjeoq7kBtqGM/YsJTqxNH9Z7KOQT2HgMr5EdnN2lAWioGaM9Lgn56ORQS
         OVvRo4ttBB+8UQ82a4WGgQlfc+T7ZJiJG3Q6b65c6p1zy6PFTB7oG7yaK9L3KTjR4jUB
         aq5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NJdlkD5/gTCas5+nlXrd587sX5grWl7UV0KG+2JD7/w=;
        b=ugClTzYZixnBvdjOfcIyznDji+9HG7qf46p3B42qtCEeK8xNskydjhytav8YC+3zCP
         Mdzdz4P8ujxiRY0TV4tA1XmHrjHHZGTTauubp1/8KPzjdE0aBoWvsKAfowC6MqakZgoA
         OcG0n1A70I7Zk7oxAz+3CUgJVm/t1MhZBe/LhHHWOBdW0+LtPSYe4ujXyWqUwShP6npH
         t4kfTBouoqG64ShZgjM52NPdccSxGiDwQgABlofe71QQw6pEnwY4mgjxwX0Og5Oaiwv5
         VNljwSenr5EVI6Vys9WBjQkU3SBfFS91GxvSwOzGFFFZfIm6ey/E5Dvc9Ao+SaP1Wwep
         5W0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P67vDmmf;
       spf=pass (google.com: domain of 3gxc7xqwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3GxC7XQwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJdlkD5/gTCas5+nlXrd587sX5grWl7UV0KG+2JD7/w=;
        b=iUKoKGowB6sCpXeUmCyhJ6d1UEWrFe1d8JsNANhHdTn2Ntn/RHww1j2P2FM/VpOgFt
         1/0OWrvJY3UixculS8Ookft298KW/YfpjmGoao0motnAeHJbaf6y31T64pr5/DH28WZK
         ny5NMFezKjTDBaVb+bAJU6N7JGVhe9XYXLczd1TpxsrNw36UduZdnpJiJTn9VlMBP4og
         ajSTkNHp0PeLcNsZFOYAusdMEtkDQm5M/qPYRI3z2fckmTTj/23eNJN9G6jhIDebRMbH
         /nsPSU6YYmGfrcIZ/v1+u0L8C603rk2MWu2ypZWksfCePdq5nbISYLVLALx4HjU9f3Kg
         QMxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJdlkD5/gTCas5+nlXrd587sX5grWl7UV0KG+2JD7/w=;
        b=Egh649Xi74zbZ+X6JhIyt6/pUw4+BOPOAaIIVUUHzM9VjkXwCqgMOPvZE7cT1TcaNP
         6ZChyQ0r+HwLXx6rpzIRShemMgz+QjYLxpBoyuFRIc2282pobhIdIcq6lloI/uXQH+0U
         sLZiAYNgd+4Kofkzp85FBPhwSDlfyIDvdZjlNQ70qory5BfVrpUQ3IaqL1dA27RKd0F7
         q3SGL8KKrkKO90uxxKJREfMgcYZgv6U1oFbHQ9DKMR2ZTp/IhkfoPGYEkF+dqHsVgZpx
         W8kCg1Qd6o9Xop1l/eR78ViRIpHyMZBYCBcSgyfhtcG6ABuildWW/nbiPRsROLuFEvmh
         NL2w==
X-Gm-Message-State: APjAAAXCX5ewlY1xUA2GiNniGrWiRCIRtVDhD+dzjpfN9mrq5d6UqGXG
	amJ+IXoYCq3pHva/JlCXV5Q=
X-Google-Smtp-Source: APXvYqx+cOo3iEV5v/8zCLLTe47dN7JC/RCs0Mdp19oGWn7qHyDNk1tgmJgj9s8mMAUeZbW1Hur/6g==
X-Received: by 2002:a0d:d651:: with SMTP id y78mr4666171ywd.365.1572540444725;
        Thu, 31 Oct 2019 09:47:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9113:: with SMTP id i19ls515902ywg.12.gmail; Thu, 31 Oct
 2019 09:47:24 -0700 (PDT)
X-Received: by 2002:a81:7047:: with SMTP id l68mr4940649ywc.433.1572540444320;
        Thu, 31 Oct 2019 09:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540444; cv=none;
        d=google.com; s=arc-20160816;
        b=r7Z00w7ulWFRY6py/Fx+1dr21MpBVOb7L6ypMRHNg6M2UvYnJsKoluVGaMRxKDsDQn
         3L7RdCCePdUGaiL3Du9fKYuBvzS33Ol9xF5eJKzlNHPMzjOwetE06XB+W4EdXunsI8OK
         dnJeJh8/rR/VBtBdkz/n1u0B/Ikougc2EMdwHC+8lvY475A830XFu4bBcBEEBhO+vSOi
         wApxAU/ikkzpwoh11Yo+uEmtvv1NZ3XsrHbn6g+19mLG1zRfhv2UU+HCqPRJiYL6d+iM
         Jlvdie1D4FOD/M+DvH2HFOs5yavEKlPwLi9cY4NuNXCxqF18LaDfaHWIMdwB+SrXee7n
         znhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=hi8Cu8vAZVRE/aapAAyha6S0ojR+GJofj/wY0IAnOZ0=;
        b=ymKVEUCtJPd8jF89ec2zWBquBL+eZKZXMXrS/LFvRWhyHzVM+JxlpI+vcecSUkOL2c
         QObhF6qkz5rbVO/bhjf/Zr3Uw5J8/de92OQh4DSAHnKVLHFWXObc4Dqcg6mesjCl+Oqf
         Ut7kS2mF+NqG15uZxHi5TddWRxtJiaPSeBBEiDXSZw1hHbNyb6hmBNWcMz7RX+9UeHoz
         mlZetmheGqNi/VPzVz7hBeaFzzM2AZ6BHqRRUhsJ193W+Y/6mf13KrE3StvI3ueRB4Dt
         OAjthCjEIvI+PqlOBx7ltzD+Io5/8muZceYOr899sUORo96BlU2YT7ShCaxwKGpzgGsa
         FXhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P67vDmmf;
       spf=pass (google.com: domain of 3gxc7xqwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3GxC7XQwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id v135si374102ywa.0.2019.10.31.09.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gxc7xqwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id r24so4769944pgj.17
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:24 -0700 (PDT)
X-Received: by 2002:a63:134a:: with SMTP id 10mr7622711pgt.441.1572540443216;
 Thu, 31 Oct 2019 09:47:23 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:35 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 15/17] arm64: vdso: disable Shadow Call Stack
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P67vDmmf;       spf=pass
 (google.com: domain of 3gxc7xqwkabwk2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3GxC7XQwKABwK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-16-samitolvanen%40google.com.
