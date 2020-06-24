Return-Path: <clang-built-linux+bncBC2ORX645YPRBHHRZ33QKGQETFQYHZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 596F4207D1C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:33 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id i1sf2558879pgn.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030812; cv=pass;
        d=google.com; s=arc-20160816;
        b=S7FlJQvedgx9ekEPJMHiYSrkzYZSyoVswm9pCNw6TRVXuwyYdynXLtUTb2H6BSR/Of
         y0Cu7dyWjvF2TJcCvbGvHS0NdUUVUX2pd1t7RXOC08MPwOGACB+PSePmFm0QQUuJiZCj
         K+cO033JoLbdju3NLSlZi0mu2fiv+mMTRBZBirwQFL4ZO1EizXUhK/J1bkgoTB34Bytl
         UmkeD1dns6AGL6UTJbHkR+Hn9tcQx41HThNehFjIgYhnnMy80TiYLx5v42zAZNwuS9nS
         UfRhF2jzhehda2ENT+VK2bO8IInuKRRzasm+y/5Ptb7BBDHfJPa/Fk+8YVp3LMpus2OP
         SeOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=IjZsefgSzCEQHvu76jIRwDsmmDYRmi8jxE4NjhS9Rnc=;
        b=V4E9LLoDLvtbLCRaPpX8JUOyeAVCHfa//FKOp2wBylQNedzo6op2zHkEzIOBkSyDk2
         ZqWIf//ojdd5d2NJB3w0Z1ZdrTVR7L0a/4mOgjNIjdin+9SkCWvWhyvT7uYwIMcgmdS7
         WrFQOYJbHRP6YJCx6oAH7f2I7k4miAidQm4cJJaHffAbTslTKRa9TLtK7+Gizpo8Hml8
         7OeDYiKRZ7wRKJ8jGXlNxl6rKhckekpIhpuJKJhoMthzXytqQrTOE1eTVarpwMWbm5n6
         dosKFLY9qtVBIdNlyS2Wc4qGzRcv59M+D2jhy8JFbhM1alPpY5W5qJSEi06BDsX1mLR+
         an2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UWquwQhX;
       spf=pass (google.com: domain of 3mrjzxgwkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3mrjzXgwKANcL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IjZsefgSzCEQHvu76jIRwDsmmDYRmi8jxE4NjhS9Rnc=;
        b=j77/nY0Akf5TX6OrhH4F2JFried3+TbLcXyAhaft4a5K3ao3bw3BHEj0nFNXvbHTAi
         QUhesjzkMHUGFsCV9M9Ay6DsQ3X4o7qHC4cHs1STQkCmT5fwhaL6Y0AmqA75jIhGDsC+
         4bV9JSjYHdTjHHi1lw0ejkJKVT36+w/e2+kEEthIv/vjQBoZn9vu6+XMyeJCjfFtHYny
         iiBu2krTnqOMSYtJgAAOJuEcVvT0c4YHLTvUpPL+r2b9xu+ulymPY8XIuCW0Rp1WKINQ
         bzaV2isfWm5QLuvU+YcxPpb1r738zdrVZFvGeC7vxc2L9Jn/FUbH4JYS9KGbKAgPtCWS
         5wWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IjZsefgSzCEQHvu76jIRwDsmmDYRmi8jxE4NjhS9Rnc=;
        b=AKMfGFflYE8a+SsWpi/W5Mwc3SXbMUIxA0KV3mLPSWxsMVjWWeKy4OnkUehA7f7BKE
         +CU6q+08E0dDcJFyyTvJd8BMOvJYIPr0FqoERIgnf94lmDhHDqBx31df9uRZj2s9TW4s
         EMe55vcv5tSZt7CubUkucAUFbF5XOSyL/uIt1DhQ8YGzIUGnUA2smGXIQwyTLg+0949v
         Eve9UY2bZMbokiqpTZY5ExeV+K9Q6jpFF4mDX6xqtnrLJw8XUJ7WAZTXH+axIF9PUQaR
         FzBTv5g/7WHPukYxVyJjT8qgpN0dlshM0/K3lRIefEDZnCvBrnJP91NpZv9CeKmAnD7c
         sstw==
X-Gm-Message-State: AOAM533DuT2WLG+NKGy/6+n+4whDIvc9VfYCGg/VhetWQzdF4Xf3jadN
	LaJ3Im9hU7Y9+eBrSLHr0xM=
X-Google-Smtp-Source: ABdhPJxjLBeaBFsDZgTElC8+GnO3iADU1/LGrWv+Uj4bDGUl3omcASEbYbZ1DGT/ghNXawzmjzypwg==
X-Received: by 2002:a17:90a:ab88:: with SMTP id n8mr22308840pjq.34.1593030812126;
        Wed, 24 Jun 2020 13:33:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls1334011plf.2.gmail; Wed, 24
 Jun 2020 13:33:31 -0700 (PDT)
X-Received: by 2002:a17:90a:d244:: with SMTP id o4mr29521951pjw.186.1593030811750;
        Wed, 24 Jun 2020 13:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030811; cv=none;
        d=google.com; s=arc-20160816;
        b=RETPdE+SlnBFE3BlfOI5UcLqmHHPjfqez3JixWezXFQgLIDj3dc9JXM0dLrMZEa1Lo
         U9Rt2WuoGnEFh3ziVYzW0bA2OqT6m/mvL8+1MznLBh4v/LTZDgpXt48tGy46MwzxzPIK
         2BcW2u4nXLkgFIOQkXvWyLbAwcQKzXr9pwn9mDQE/+57eqkI8z2CihWaywaEwvabvYtw
         F7m5WAB2/CIHrwyN/SnbPhKj3/v4I2d3icC3zyxID5oKlAU4+gv1tPueXNuRsFB5wdXa
         Px33ie6x586Jer/nlvsN292pD0DQ5iKfi6Hl06Q4mqU7uYSOCcUSQL32icQs05BJjtJK
         4FAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tPGFlpm4UBb0TochKjxo1pWDKJKPOqpdcyA67hsa/L0=;
        b=XJoywhwPjDCRKNnZN/XXBu79f1Q0IJrEA4+kXC3Dv10xtjLZQ+/+++GdSJZwhcRnzw
         9073Ao1ZspfWiRWJxR9xCWHGtTC61M9KJwkCo8QA9lkk93QpPZDPUEqVSUhovFoi4Ref
         5tiz9yI89gAIFNmNhOC/Qh1GnGrrpimWTmKJzPWg7+0gAXm5Wyx7bPhbzJ4W/FX4HXDe
         1pJVsiyVMVN37OMIi6ORg3+DBBjXYZqVgiEoz2tyas7WDx0FCDHe+k2PXtMp66H9IBk5
         USHQRqjG46T/d2tDJSiamnYtm5BVnAOZgoiYqMJ8hcHr7ztxNi431h/dBIU82MNhLM59
         fDEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UWquwQhX;
       spf=pass (google.com: domain of 3mrjzxgwkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3mrjzXgwKANcL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id j3si259268pjy.1.2020.06.24.13.33.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mrjzxgwkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id x22so2490284qkj.6
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:31 -0700 (PDT)
X-Received: by 2002:a0c:8482:: with SMTP id m2mr33607693qva.65.1593030810891;
 Wed, 24 Jun 2020 13:33:30 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:56 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 18/22] arm64: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UWquwQhX;       spf=pass
 (google.com: domain of 3mrjzxgwkancl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3mrjzXgwKANcL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a4a094bedcb2..e1961653964d 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -72,6 +72,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_THINLTO
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-19-samitolvanen%40google.com.
