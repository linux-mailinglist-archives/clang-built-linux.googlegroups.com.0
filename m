Return-Path: <clang-built-linux+bncBC2ORX645YPRBJ5QTGBQMGQEJXECJPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7473523B0
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:56 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id d16sf3214027otc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319975; cv=pass;
        d=google.com; s=arc-20160816;
        b=fbpUyma7rPiJuzJqG5iP/jjfuqVtHqhlYo1OEva3q2FfdBQQBj59zTNnzI/bZ4MdB6
         EGOqW4XjB4huovUnC3fAAW2KFxNq5DuV3GveAVJDZYx+rE0GnfBSchHWFHrmBcu9i3bq
         mbpAtqoQ0Q9HQxyU9YRO6Oglp77XDoiukpzT7slo6pnW0yUm3pfCMrqPqRcK5kIlY5OP
         sGYWL5gy3OPSJaj/I1Dayap9vhCb/s0U3Ok8Ahmn9FRm4NcVlJzLFJdCFjziXB8zdNi7
         IfJ6l7sdBW58jxOESY3x1Kpk9BfhM0rP1DgRgHFyx58Sx8yLSP3QorU/0Vj/WY8mqUR4
         LJ/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=E9xxunQh6kKkA9ibSuFmQQQDnv5Z2m3ZKewLgxZt4ck=;
        b=t+EKoh4BAFKFc8Masa1yb9DSVd0kgqOraQ6d2jpMkOq8wl1t5/zUS/dGhYnFLR4WfA
         Gi0fiJu8R5R/g3POK4pdrdG+ve5T/rvjev5OxlivzT76rD9+UDZKdjInnVhMQjtsMyzH
         zAiskUq1dEgV9jzgsOMyLlVxQrlmmupwSojyexeG/O+6AP5uBdglrLXLuXm1qTgqP0rT
         TbAJvTr4V9M3z46nuMFixpMH29SUOfA6E6kS++aEVG6OENriCYbmGGvVa4E2HdFxjrDA
         w3R9g5vl5bh+z0QJhH5N/XOyBdSwX/2C3bmNBfIGFqORYyxj/vDONLAod/3w7UiTzAlp
         KPWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BFiANp0p;
       spf=pass (google.com: domain of 3jlhmyawkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3JlhmYAwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E9xxunQh6kKkA9ibSuFmQQQDnv5Z2m3ZKewLgxZt4ck=;
        b=Dz4iibNNQnqeMy9S6ngEXz/rUCHglJ/OgT+P7we+KuFa/f+c48X7Hy7P6BVWTbQ8vz
         dpGfEAq/d0KTEnIzq50zJYYDlekzvF9ZATVguwZtl2+D4yfoxPpsRCk0/w0DxeDOA8EA
         Di6h4/K7z+6ZXBSXxzeajCWWUbsZaHfPyieEx08nn2aK1fNam54g5hSafyVGMbPQrdJr
         gv1JuvhV+8+l9FPwTg84TsTpsDH+2koutvet304uF37pPWPmclhiofZQbgf1cSlRvr3C
         hDTx4vJ7eImmrYIMtgtH/iVleth0popEXaWVRLAUCjNZ9EzVTQ7WRVTA5LYE7Db9HxQY
         OBUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E9xxunQh6kKkA9ibSuFmQQQDnv5Z2m3ZKewLgxZt4ck=;
        b=Nt7emZaTw2XI9mtm3zN2gURC+6fQ19paEUvahcqKrZfpvryOJgHadPKTcDM5aqKqtt
         8Q0BsRsBQ02LZ9RVNdgdXGj0Qq6cn/8kclq3VDVkZthnxlJvp00iIbGmYgUW3QaT82VU
         JS1NPERXwC8zI2bFilEHEpWP3X11dN9j7k++lCkRvOcQeDhdSTBVWsmuNdINKERw6SDG
         D3rFUK3LtEprDdqbwu+dIizKOJEpD0HbCeCVTSemrcUrw+91a9v/uZcgmLYuzoiNDTT0
         5B4v5TohH6JsPiHhFmT9qHMIzfDkpuodk6HZr2Lj6pQCQyyjphtOJL8vdRTJFmg11dhV
         cxbA==
X-Gm-Message-State: AOAM531BQJ+hXyOfLXObbZCBsp7wvTyrEcVELKX13DvzwHrni9QLf9+q
	EFAUSy7XInLMiHdrJ1Upf3c=
X-Google-Smtp-Source: ABdhPJxt8e+rv6YfmQNuH4FhNtaKa45HA8FAzzCYNMIvLBSFcKeGDRCo/EGJqWkWVX8eitSvujBcfA==
X-Received: by 2002:a9d:5f15:: with SMTP id f21mr9086473oti.226.1617319975833;
        Thu, 01 Apr 2021 16:32:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a47:: with SMTP id h7ls1751839otn.9.gmail; Thu, 01 Apr
 2021 16:32:55 -0700 (PDT)
X-Received: by 2002:a05:6830:1dfd:: with SMTP id b29mr8766121otj.48.1617319975452;
        Thu, 01 Apr 2021 16:32:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319975; cv=none;
        d=google.com; s=arc-20160816;
        b=mTfvXEHJFc4atIDfU4QGx6BtB91qN+xe/lSfpPE+CJa6RYfJ7Y3S9xBM6DzkhYkuBu
         TLQCbvjyPGQFPt2t82wf2GTfvjtUxBP53oB+CR4CVD25h8Whhvo19C9YozL1M7+k05GZ
         IcLqdri/SwcbyjZ7/cB534R+tIXfiizwfhPqiYjRoWw4r71dFYtTT/0F+SXtKF5sq8DA
         lrXpatxk0rM5QLmZLwBeYfnPRyYXf9JfwsM2UzdTK5ipQ3bqzSm/jWgsrNXV5t1xODVK
         8SVpnaTYUVToW/YR55+tdvmN1M7jvqTHYWFwpaQllfjzI6dvT3C+maG/tewnu1iDSuqf
         MmIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=CIBsMUAzqVBKJMC//YF4MdkZzSoA2eT4NBvrPysyfhQ=;
        b=u7XQS7rBbpLhN6/yzVn2z00LG7o2Qwts88PKO4qkFgIV9ZQ6/QfYDQ6gBCEc5H90T5
         WFq2FpCafyHTmNvy1wdl7FfryDUOCYfp+L6scg07Siq0MF4PAPO8kd1NwF1mYhTVMtI+
         vS4KypsYcdNdbMyzVOwv0Mhq8hRSB2XsQaHCPFjpzoBFJu2P8LrGG5L5CBxm76bf3Fzm
         JAIuK2oXrB3jgduKbfP/lDN8n3pj+bmj6XJRa+f8KRDtvJni8TMjK5zrlvQ8upoqbR1Q
         QIhIdzkKV4CtQhclE+AJ4/GP38r5AiW+RnRMUMV4XQ878BZXge7Ko3hcnoJYcjx8ufSa
         bA2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BFiANp0p;
       spf=pass (google.com: domain of 3jlhmyawkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3JlhmYAwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id x38si694932otr.3.2021.04.01.16.32.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jlhmyawkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id r32so4042610qtd.16
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:55 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a0c:f7d1:: with SMTP id
 f17mr10229433qvo.38.1617319974835; Thu, 01 Apr 2021 16:32:54 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:15 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 17/18] KVM: arm64: Disable CFI for nVHE
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BFiANp0p;       spf=pass
 (google.com: domain of 3jlhmyawkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3JlhmYAwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
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

Disable CFI for the nVHE code to avoid address space confusion.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index a6707df4f6c0..fb24a0f022ad 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -75,9 +75,9 @@ quiet_cmd_hyprel = HYPREL  $@
 quiet_cmd_hypcopy = HYPCOPY $@
       cmd_hypcopy = $(OBJCOPY) --prefix-symbols=__kvm_nvhe_ $< $@
 
-# Remove ftrace and Shadow Call Stack CFLAGS.
-# This is equivalent to the 'notrace' and '__noscs' annotations.
-KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# Remove ftrace, Shadow Call Stack, and CFI CFLAGS.
+# This is equivalent to the 'notrace', '__noscs', and '__nocfi' annotations.
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS) $(CC_FLAGS_CFI), $(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-18-samitolvanen%40google.com.
