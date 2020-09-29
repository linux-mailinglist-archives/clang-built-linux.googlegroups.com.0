Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ4SZ35QKGQEUHMCZKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id A793A27D6C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 21:22:16 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id y16sf3683926ioy.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 12:22:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601407335; cv=pass;
        d=google.com; s=arc-20160816;
        b=rjf+omq6JPqZ53CQyplrwlbDgWp8y1qiLCQfL2EHGxjXEAoYDgd0kYpoJP1tx1XjK7
         VTLl0MuvZPSAi4CJZHzsy3saLjQ8OkSDVYxwDnU9RspSd42jFARMRUnij6dKTOyFIc6c
         i1SJBsdvB2gI86wj0VpFpNCoVZRnd7QQfl/IQoq8g+QQWNSqhcohi9bYgtw7/r9Wpydx
         Y/m7zhmySuyn4FgoSPrYbHPEZs8g9x5KfxZ00KDV5yj83qWeiQfzgMS2E997nfrXtReC
         uYz4yWOAfJlTgKa9sozZUM6SQkB+PUOkJ9pKz7MrGWQbCx3qEDikaDBr+W4yCuFqim+w
         tZJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=yaufKDWfYVwCMd6YN7+RFTywftf2vbe/GRi7Eo6uzu4=;
        b=N12Ci5/+Rb3a5OiJCFckoHIX2WLO8SXQrCqGVnbFkbpZwIpMc0NHHvz5AjzuxZz3qm
         vP8UhRFTyQgeiHqlOYywZA+o7h2YALrJGCcHTzvgckKzTpjwAQVPk8sLNQ/V37FMrenN
         l6jo7ZrNRbFmjK7tOIwjS1lGw3oR/sbMaJFXOpPfyAavao5E5m3/Dg+kq1i7rAA/6rHt
         zevl6kHMcG8aOyr7kffRBSWMeBtj8A8q2vN26VipBAcpDcauZG9Q4J5uJxTXUuQI5GIM
         tZ7JYDJCzLzAbe/9Oa7iFPG7zeR/JWU2mzg5MwYK5xWsM+xfGDDfFZd0yl4pqjTvh79y
         MnHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gV8h20zf;
       spf=pass (google.com: domain of 3zolzxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ZolzXwwKAEkyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yaufKDWfYVwCMd6YN7+RFTywftf2vbe/GRi7Eo6uzu4=;
        b=a5xypd8SJzXRd22EesA539u7umPs4sp8CU/J/2+neBHgO+vFj4JJR+kbQk6awPldno
         9L4KI/BxrC4Wmkx11MK1AVvNdcVH7kWG2zPVozmBjvlGoNXgkLgHhPUpvqhMaRatL0Jw
         RscD1tYnvUylnX5ReLjFpv22d2aZfVvlHW4EmLrwvy47l6RIqHU67aC+1Hg+gYvQdPGt
         r5i28yeH3wjYlsuzC+KSnR4HXEHHCo3MLZ/XUsncxloOPgCNmqs18YtRhVfKXAH6CgFX
         Jbi+CP4KqJ7eW5jn/OMGnpyaK23rRoQAlNFjzabrnyJb58XyuLptZkG1C+yGOtIbiGVP
         XcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yaufKDWfYVwCMd6YN7+RFTywftf2vbe/GRi7Eo6uzu4=;
        b=qwbuVbAFJW86Cq8+jhQMpyFtV0zmSMHhpcNIvSSJu4xcsKPgDExnB1mnIkAEX6Ijfv
         XJsDSFOG9qOivn4XJH2CWOGjAqXdAL78V6SNwxnxzxmkOIiKdG1bEwxKxFJT2a7dTBOt
         GHX1we9hEzJ9iimpLp0gKWdYGvrZpAY3FFA+IjMADkvzDv+iKJZnFHyeDHPxUgIFokBB
         kgkiG8aL38yappO5j2QLfhN4m+bninRIpZVlq9Bdfh5bpDljVXI8wcKuGBzO7uq6dNau
         fVl+8eeH635SdClYLXaOduKXhpW+FuFEVT6VDtZzge11JO49CwSVIFMi5h4aRuKH/5uW
         YRdQ==
X-Gm-Message-State: AOAM5318eyjYfNE9qBGaf0cmj0sRM4QermYgEcb5edXfELvwBGM8SIUL
	9Ccm34P+QEyb7ynGljUn5Co=
X-Google-Smtp-Source: ABdhPJyOd+u0TnK4ml6yOc96/wx5Xy90nUdegTWui66Ta8SETfEVFA8cf+cQSzwi6oLu/U2XexyT6Q==
X-Received: by 2002:a92:c9cb:: with SMTP id k11mr3898057ilq.196.1601407335597;
        Tue, 29 Sep 2020 12:22:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8154:: with SMTP id f20ls897095ioo.11.gmail; Tue, 29 Sep
 2020 12:22:15 -0700 (PDT)
X-Received: by 2002:a6b:b541:: with SMTP id e62mr3614421iof.117.1601407335213;
        Tue, 29 Sep 2020 12:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601407335; cv=none;
        d=google.com; s=arc-20160816;
        b=nexl8zVI9loQeWY7K9PsLJkLoTvVFdhHejOWvJkPPWe9ik7CRGOnC4T3fiV/p5DDUi
         JjP3te5dn6MlUzf9a8wZx0NIiqk/77Csigr8ljqUOj8GPey2YeCnN8qlpO4VHnGl20zw
         OPL83BCPBD7ewGTFmhMLhDkQ3FEAIGQVQ739pycBQneJk8vCb5osAeEFiL2qPiuN8fcg
         3oREocRCKsouo3zclnRqVvI8m7AN6Bn9/26U9ga7JPpG7U0BYlvP+Vpr72Y1opaEcn27
         f23nc3nzEkuVHGBQ0RThMfnhVaeLqYPhKdoM6qaFnSxhyFotCEk3W6CdG1VAonCQ3N4I
         Mduw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=yNFH4JjI7UevDixCXbCqUdSjjwvnuGqaLrQwf431SXk=;
        b=MatWLpVuGdz9ySkT7pZpXuwjm0NWdIqokh5LbyPO+u3NH3vPA3KHl9uW/X+T1jjxm0
         QPcxb3DQpZAzsXE4Dnr87KEuiUQQg/vMphWy9qtNd1gXhcP74DKp8MPpAzkZiTG56Okt
         wteG7XX1aD3HUQb42vnitufCud5N4AXtdN4KAW8Kh+5+SsaOlyVPuwMGgzDFqfWicXv+
         SKfqqKHBzCrvA3hiwsiG8Xmi6nwwkZ9s+Innkvsl1XABteytLUTIjsBvG+PE/w0RlMYO
         mPRfFmCQOxWD/yC4n/GTuBYbMVj7jDGUbPCzHCzEbnMRAeydWtGmRRQKYZF76WvlQIJo
         kH/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gV8h20zf;
       spf=pass (google.com: domain of 3zolzxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ZolzXwwKAEkyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id a5si524258ilr.3.2020.09.29.12.22.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 12:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zolzxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id o13so3788999qtl.6
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 12:22:15 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:a085:: with SMTP id
 c5mr6207453qva.30.1601407334597; Tue, 29 Sep 2020 12:22:14 -0700 (PDT)
Date: Tue, 29 Sep 2020 12:22:04 -0700
Message-Id: <20200929192204.499006-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH] srcu: avoid escaped section names
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Paul E . McKenney" <paulmck@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, rcu@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gV8h20zf;       spf=pass
 (google.com: domain of 3zolzxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ZolzXwwKAEkyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
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

The stringification operator, `#`, in the preprocessor escapes strings.
For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
they treat section names that contain \".

The portable solution is to not use a string literal with the
preprocessor stringification operator.

Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/Kconfig         |  1 +
 arch/arm/mm/Kconfig      | 11 +++++++++++
 include/linux/srcutree.h |  2 +-
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fe2f17eb2b50..51200e371faf 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -358,6 +358,7 @@ config ARCH_EBSA110
 
 config ARCH_EP93XX
 	bool "EP93xx-based"
+	depends on !LD_IS_LLD
 	select ARCH_SPARSEMEM_ENABLE
 	select ARM_AMBA
 	imply ARM_PATCH_PHYS_VIRT
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 65e4482e3849..c06787c9bb48 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -9,6 +9,7 @@ comment "Processor Type"
 config CPU_ARM7TDMI
 	bool
 	depends on !MMU
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_LV4T
 	select CPU_CACHE_V4
@@ -23,6 +24,7 @@ config CPU_ARM7TDMI
 # ARM720T
 config CPU_ARM720T
 	bool
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_LV4T
 	select CPU_CACHE_V4
@@ -43,6 +45,7 @@ config CPU_ARM720T
 config CPU_ARM740T
 	bool
 	depends on !MMU
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_LV4T
 	select CPU_CACHE_V4
@@ -61,6 +64,7 @@ config CPU_ARM740T
 config CPU_ARM9TDMI
 	bool
 	depends on !MMU
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_NOMMU
 	select CPU_CACHE_V4
@@ -75,6 +79,7 @@ config CPU_ARM9TDMI
 # ARM920T
 config CPU_ARM920T
 	bool
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_EV4T
 	select CPU_CACHE_V4WT
@@ -94,6 +99,7 @@ config CPU_ARM920T
 # ARM922T
 config CPU_ARM922T
 	bool
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_EV4T
 	select CPU_CACHE_V4WT
@@ -114,6 +120,7 @@ config CPU_ARM922T
 # ARM925T
 config CPU_ARM925T
 	bool
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_EV4T
 	select CPU_CACHE_V4WT
@@ -153,6 +160,7 @@ config CPU_ARM926T
 # FA526
 config CPU_FA526
 	bool
+	depends on !LD_IS_LLD
 	select CPU_32v4
 	select CPU_ABRT_EV4
 	select CPU_CACHE_FA
@@ -172,6 +180,7 @@ config CPU_FA526
 config CPU_ARM940T
 	bool
 	depends on !MMU
+	depends on !LD_IS_LLD
 	select CPU_32v4T
 	select CPU_ABRT_NOMMU
 	select CPU_CACHE_VIVT
@@ -278,6 +287,7 @@ config CPU_ARM1026
 # SA110
 config CPU_SA110
 	bool
+	depends on !LD_IS_LLD
 	select CPU_32v3 if ARCH_RPC
 	select CPU_32v4 if !ARCH_RPC
 	select CPU_ABRT_EV4
@@ -299,6 +309,7 @@ config CPU_SA110
 # SA1100
 config CPU_SA1100
 	bool
+	depends on !LD_IS_LLD
 	select CPU_32v4
 	select CPU_ABRT_EV4
 	select CPU_CACHE_V4WB
diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
index 9cfcc8a756ae..9de652f4e1bd 100644
--- a/include/linux/srcutree.h
+++ b/include/linux/srcutree.h
@@ -124,7 +124,7 @@ struct srcu_struct {
 # define __DEFINE_SRCU(name, is_static)					\
 	is_static struct srcu_struct name;				\
 	struct srcu_struct * const __srcu_struct_##name			\
-		__section("___srcu_struct_ptrs") = &name
+		__section(___srcu_struct_ptrs) = &name
 #else
 # define __DEFINE_SRCU(name, is_static)					\
 	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929192204.499006-1-ndesaulniers%40google.com.
