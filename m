Return-Path: <clang-built-linux+bncBC2ORX645YPRBY4YQL6AKGQEOIEHR4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id D610B288E18
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:28 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id m129sf1620397vkm.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260068; cv=pass;
        d=google.com; s=arc-20160816;
        b=i8AMu8jUL1O2UZeydVX1jtffYsBYlmREoSY7JDzZPkGUEsC2hJ5oqeAhek0GRhCG8v
         eeCvjam7L7rBpQwACE/PD93uvefsEq8VjyCQhGz+g8TY7mKUsQm6Y4wF//j2pvAPpIBP
         WNMY4VnxvwmewJZee9ztFNCrvr7jWZkMFyXdnJcRuCaAFxzKIhu5SQJ41F+Ve14VwCWR
         zDdvfF9npVIOGTh7l9oP053GYLRfklZB10u4VAT04/47YROTuwANoNFBj3tRy1JUnUQT
         5Vjs6j5jaf+PMMapFP+fuQbDXBRc2VadohkiizLND/9Ymo9pmxCzG7WW2H4vtDtkCWfp
         1J0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=2OmwJ56IwcWkHeMyHVzaKfr3BogGxB1zD/LpUtyFzOA=;
        b=jeNtnyixQN1q5EoG83AL8G+Ij98er7V8/JN5UVtu99/SdsS9zVMk3kqpTM541B60GS
         Vkl35MF+kZvoGvPDwx302UX1LSMALE63NI1a/BaZ1oO96qmgsBBO9cBGDgt8ARSOLD2D
         srukq+KrUpiklDiFlxLQewZMWAxNNEnTg0/QD6eQFkk+L4sANdKcUG0+qeRtbRdopcuN
         Bjq2cX777SMvKe/mc2sGhM35OGcV/4UBd1FgwPky+m5cNwHpGnSoIQ7lgo+XAKupuAp+
         NUuGBR2jLrZXoPcTkbRrmoL4EFxEXtti1zdLYb4XScHVh8bmbv+9wG4FJ+Pgz1Q0PF2d
         1UWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hLqKbNF2;
       spf=pass (google.com: domain of 3yoyaxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3YoyAXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2OmwJ56IwcWkHeMyHVzaKfr3BogGxB1zD/LpUtyFzOA=;
        b=LZaDc4rKEjZB0mj4FboXNLy0L1BFrTmSwzW2cTZWgKcPqr47dNe62+7uFsq+skrsR/
         4oJDrJy4XjlQXK+jTLqlNSybqli4UbxITwdZUdhQ2pomrnKCLkr0YNlBK46V8RxyQ7sW
         zXfTHKBRUMbrz1heLhytiItVux38HGJD8fZTl8ahQJFBFUeKCw2/BVvQkhSlRgdZ24na
         z6jXKgl1d2og4MwxWItFLEh4xBjikoCqwYDpZLgpJVdb0ZC7d+Di0gUF+B3QWOaeRH5c
         96BuQ3NzpshGnrHurQU5qDjbfuT5R8/fr7Z6GzVgkBdZ32+UbQBjj8l9crx9K/3D9vjg
         fBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2OmwJ56IwcWkHeMyHVzaKfr3BogGxB1zD/LpUtyFzOA=;
        b=m0W8TB12E3zHBdER/RUmPPpfj6+UQHq1XzEAyuQhUg9+9X1tA4+MRU+kMSzy/czD0t
         BcT5Sl8SDb18Wflu52cbb21STAib5urC9++/frBIZtHoxDQPrxCJPApkc5RNS6h5UbbF
         SI6tJ8RcvBGjtrWR369f4qBYQVwWmG8bOMxDXzQoaeIZpiOeHbj8GLhzXmx17IBzPPyY
         ZESV7S5ZheO9trpR21D39UPxykIxDe/BZc3tZ1ETCB5pf/amlbjhnQuiqcseSzXKCn2N
         xPnSqf6U4sHnNnXxENp2zxvXFWa1qy7FoyMNrGOgcYvKgmBWCZC5og92weWhm9ttFAul
         x+bw==
X-Gm-Message-State: AOAM531Y7tWfqSsPFHYi+oAt2CMFUTB2IEuan2jRUYS91C7sTOOVlCu6
	ZoQzmh3gVfEwX/I1rxxi2yM=
X-Google-Smtp-Source: ABdhPJyJvk9AnNPcsflIINVe2budXeQVD8EQGVPUBT9PEMozc60Fe7s6E2VleiH2I+E2YNXAdrJqKQ==
X-Received: by 2002:a67:ef1e:: with SMTP id j30mr8243411vsr.40.1602260067951;
        Fri, 09 Oct 2020 09:14:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a2ca:: with SMTP id l193ls495959vke.6.gmail; Fri, 09 Oct
 2020 09:14:27 -0700 (PDT)
X-Received: by 2002:a1f:a3cc:: with SMTP id m195mr8604231vke.16.1602260067280;
        Fri, 09 Oct 2020 09:14:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260067; cv=none;
        d=google.com; s=arc-20160816;
        b=EB3/w93xZW1Dxy+TpPv6YqLOFZis3zGvuhBvDJA5x1Lb0q5qdJBxiSHFitiiOg4+sP
         EOTjTBb/zaNgWmQRvfZfqWYduj0zSYxlB57EUji+6Ft0hKqFlGeU7kSuD97i+7OP8aPq
         7KLf0WyzcB3GPUnvGA82GtnvKor1WgtlJj0dHEhiwtXg1OijPMXDJyvG/trURYNfNVIh
         rGCeAxVQlvLSEAwthAdN1cNC7DDYSTC6mGB9YjZsn7fHHD2ifByqgqH9WkMihSrZxEKO
         7Ss4OxGDarYJdCyZOkyeyQNZvOuRuLENZB/ZR6WH+Y1np2epwZX6xF7m+7a4byYPnNZd
         DO8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Et6zTjz3rLwF/ItBI285hLUQ1f4GO0wd9iXT0eGoats=;
        b=AVx6e7w1oSlyiuS4d47XymF697JJYJDvldJdEG9ahRSATrkvC0zmTpDOyCNwlOSlOm
         S+WyAVShzHO+tErn4CQmaFOgudEp4TaWocdWE4JTSlHykjgVzO7G+nwlyYqjRZ0NPghD
         wqH4pjhLil1dMpKU1ozSp9XZXbOrccG6BYqh+PfIaKjZmDfEKgqnHwxc9K5w1YSqTh+a
         WvVnJz0rmcCneKLnnxDWapfHfXAefV3rOgZn+sTFhh/bg0pXvjVrAXdejGn6vhwGVtd3
         cUwvX0tPfByTEHvqpCoYWLsuEMx94j6XOk1uqemwKmeIpzbeLF+fTp1wu2DQ3ClSIB2a
         mgug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hLqKbNF2;
       spf=pass (google.com: domain of 3yoyaxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3YoyAXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id r131si432584vkd.0.2020.10.09.09.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yoyaxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id y53so6889676qth.2
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:27 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:544a:: with SMTP id
 h10mr13840738qvt.35.1602260066836; Fri, 09 Oct 2020 09:14:26 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:32 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-24-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 23/29] KVM: arm64: disable LTO for the nVHE directory
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hLqKbNF2;       spf=pass
 (google.com: domain of 3yoyaxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3YoyAXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-24-samitolvanen%40google.com.
