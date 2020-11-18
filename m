Return-Path: <clang-built-linux+bncBC2ORX645YPRBS5W236QKGQEHUVEAAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B98A2B8736
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:08:13 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id t1sf2195185pgo.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:08:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737292; cv=pass;
        d=google.com; s=arc-20160816;
        b=lWLf8lnldVDEjZKfTlW/FHSVbWUvI6a9GmT/mEhUn57OYZUM54SLLEXrqQiSAqHiTS
         P1YpgiK0TKywjhy7G/uXQ1qTJddn3Q/ks7mSctqA0kQ4KXdulxCWf/ebqbj5uKAUjh9Y
         Qcp5Hgu6eVfT10E5gcRJETHJiRREI7WTVAwBcBmnwbl4lX7ChJRW7UjO3hM4NK/WdxWi
         9Qd3LulCBUc1Q7ibS41DzqcjtQNdGtERnk7PSgBOLbQQ8ZiP7SgSRCIcKx3bu13UizrY
         KtpazPatK2emE51T+WOSdwn99QYAz/ZylX3nqMkYPeOMrpJQu3K/YGzz2kd4SSeBUO9+
         5Bhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=VsaSNJYjcAVY0sa8KkWfkzNXFmvlImimSkaLhWc9qjk=;
        b=A/AfucZI+jXVEnq2URX+TZ7VzeqOAHhC0l1e8QTrQji8OK8xz3a1T16J1uwADBpjPJ
         B021YcQyka1qze06uv5V8ySWCfnjRNPl7pOGAppgkBb+n69SRAua/sRveWduBEW6XS2k
         v2XYbHHMxzC/UM0Lvx0wqPGDcmemt556LPhyfZkSEbcVN0h6xmkgxcd8iPkXDi9kxq1U
         WGc/AP7JvfYjVTvGKANuNaNPpiUO5Kfs/Z2mLEjgOIxWiUFjbwwqsEDdkIlxh+Ae22jP
         du3eajgELMjyffFfZH8lCDP5quR1V/hQceDiQoI3Q8a9qeNe46pGy+9Lfj/yBSKszK7n
         nIoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Hl0/5xWu";
       spf=pass (google.com: domain of 3spu1xwwkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Spu1XwwKAFsL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VsaSNJYjcAVY0sa8KkWfkzNXFmvlImimSkaLhWc9qjk=;
        b=d88GE2kqTKDLBLrjTc4xNdTHaUSFBfJwTlI/W/4YNbpZuktr6d559BFynm3W9dw9rZ
         uOrXombW8RFiJy3tvLvIoBa+2vcHViQttTntxCLs2vIwEwr/+NR2DAyBVrdoARwD+par
         Gozi+aLh0ZsxCfcRwYgC3ZlYayoxrUPADANeluQsLSOo7MY+0J/jVgFqiBZh77nH2fX6
         MWkHpqH2qe3ohpMBB5kCJAM47rGHDoQ8hjl9369lxSVypCgZU+k1xFDDLfMNf0UxEfzN
         tCnr4G782p5ykLt/0CgzG/Gehv/hx6u0vCpIP6kv0r6C9uwmeIY3SF7TwlEWKvKvFnxm
         5YBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VsaSNJYjcAVY0sa8KkWfkzNXFmvlImimSkaLhWc9qjk=;
        b=GCRZ7zZbrYkAprWQdL0cYMK+/X7hNaC3VOqgnRS5eXVhsGdj3B9zEp1cBPQUQKJZ/e
         yh1HDdcELPVNfie9vrRwxAe3QFxaiqm5QkTFGOw1JvRuaSRAyuIBMhYwxdJ0KhH6T368
         2Cplvd8iMIAi3/Y8nQ6T+pDfwCIiJeHDvQ5e8GaMaNZdtrKPbP+6HnBt0Et4b/JKhIx6
         j+nUMbOq/9Ykf3XgG1KaUDF2qXh97PR0ly89uh+FuamZ3cdqcQYuWca3zEq/GEjAuVYG
         zDt4abGPcAXbc2EbHpEYXD5EniIh9t9pSMchKeIY67G1KNpBLrX4QRbCMqbxK69lS4A4
         R4wA==
X-Gm-Message-State: AOAM532h+gDHKB0lgO5PuaPuHuWZsGqZn5uHjXdKFxxHO3E3DR3Qw0yB
	GKn9Q5nNqs+X5/C8HSa3TcA=
X-Google-Smtp-Source: ABdhPJz+GnjYUHVur+SqaIGKBasFywIqfVbNpQWm28DSfKd+9vRKPNzP0sZpOi6I9WVyZVgf4pkDag==
X-Received: by 2002:a65:5286:: with SMTP id y6mr10190757pgp.117.1605737292162;
        Wed, 18 Nov 2020 14:08:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2302:: with SMTP id h2ls234760pfh.6.gmail; Wed, 18
 Nov 2020 14:08:11 -0800 (PST)
X-Received: by 2002:a63:d157:: with SMTP id c23mr10062184pgj.196.1605737291437;
        Wed, 18 Nov 2020 14:08:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737291; cv=none;
        d=google.com; s=arc-20160816;
        b=SkEVJoU3Q7PcVUXKzan8QxvsIyjfPIvlP3hi5A6XRhxThk2ftGidchR5ag1fR26UuX
         NdhAjxuFf6r/v1uugE8rODceUI2LoBykscv4FiqCMec+Gu0nqVH5SzHhEbLAeSaYtZmm
         Q+B8fq2PeiXuUE0OxC3PFLos7c/ohAnNNo5QdVxT7SU3RlVOO/M7YG3uWoBV1Zfss1ig
         nIpzYPLzRJWsPrBod9EvktOg7nmCkKkcnvFJVp1eF3l937YUxWIaAOfmxF4lJfe/Y37U
         R39Mi1lUSR/Y2iZZEKffp1iyt+dxtdRIeDfpM6QiilR7e6DKKkgXHTHKotxyh7GGsXeb
         F64Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=C9kRHDqVxMS9meVJm6Hst0wtaqe3NZ38y9krJFbUxhM=;
        b=opgLXKckEA8l2Y/bc+bqs7KB+ZuVdJlczm5RAlChKarfck0d74cRSn8hihaOb83/8G
         YPfHY9wdmHXWQmcy+mDqh4vtrWM+7Mvd1ECi6JVmANA7fVGS6TwAfSDtjiZOlbYr0kwK
         X0mJhWL1Xmpb982MvAtFQ251nbmlLs7PPFzHjJ3xfYt83yUCGqhbHrt3l0GELqYns/Bm
         Y4lSxuT20EQE1u6JPuRW974VR7HIAQrl7KpuXSaoQZ4si4+Bxn+jrd74LMi1019W00jF
         9VBGidpR9rFr8R1DWQ5GWgIjQKcHN0jRzJJjznGcY/4ddRQ+GFQr9iD9dYcD+MEpMZue
         qiCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Hl0/5xWu";
       spf=pass (google.com: domain of 3spu1xwwkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Spu1XwwKAFsL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id d12si761003pgq.2.2020.11.18.14.08.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:08:11 -0800 (PST)
Received-SPF: pass (google.com: domain of 3spu1xwwkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id q6so2492017qvr.21
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:08:11 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4e0d:: with SMTP id
 dl13mr7176727qvb.54.1605737290528; Wed, 18 Nov 2020 14:08:10 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:30 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 16/17] arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Hl0/5xWu";       spf=pass
 (google.com: domain of 3spu1xwwkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Spu1XwwKAFsL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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

DYNAMIC_FTRACE_WITH_REGS uses -fpatchable-function-entry, which makes
running recordmcount unnecessary as there are no mcount calls in object
files, and __mcount_loc doesn't need to be generated.

While there's normally no harm in running recordmcount even when it's
not strictly needed, this won't work with LTO as we have LLVM bitcode
instead of ELF objects.

This change selects FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY, which
disables recordmcount when patchable function entries are used instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 1515f6f153a0..c7f07978f5b6 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -158,6 +158,8 @@ config ARM64
 	select HAVE_DYNAMIC_FTRACE
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
 		if $(cc-option,-fpatchable-function-entry=2)
+	select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
+		if DYNAMIC_FTRACE_WITH_REGS
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-17-samitolvanen%40google.com.
