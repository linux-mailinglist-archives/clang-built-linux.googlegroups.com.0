Return-Path: <clang-built-linux+bncBC2ORX645YPRBAEXXWBQMGQE6DGVAEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D67358C54
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:21 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id w9sf2895852ybw.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906561; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZMlZKeWAAQUM72O/IgqIGulDNWoUNIzNFMDnBdx1nH8vGqeW8bPNNneuzj66Ix8oI
         +sPvekUFRWJ0MZM54FdOvh647wwELYBeKpJC825JDL04pI7BSsmlSyaCdseswbiBYRmX
         TQW0MdMspqqPRlbyKB51GDqMgqUzSwbI2ymEMHlB4+tRj80DkAZVKbeQr8b2n4DyGovl
         1G6Gf+nCfBERkyFGhgQ2s6lt9+6LJJE4ncvJ3+2PosP17ltzgs+D2jSAOyKWmqemBlqQ
         dasSHkqoxLGZAAgg7WXoNoHJjjj7ycn/+jlj/GWlp+bUoMTVHO04HJYRtTAZDJmXxqva
         AD6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Vbf2Rudz3kEIoj0HCKd4Dqld88SCBjDxWhsQVFc7yR4=;
        b=0jpa5wjx9hgsqnL2iS1PxDe9druyxjTyNdTZemgaVoKNp4DNVqgwQRFVW/ihHs2Ksw
         HOLe0vlhXl7iLJkPzCvsYpCq0/a73dmg3p4yQdCEyGveClK07sKyEg1Opi+m9VGiEJzi
         iNKE7z0Zz+T6NnLV9Hkw0hY0W0cYWvNHW+jvDD9NZK/zTK2tNAslXQK7nN81UsAR9KRp
         6AES0jwRaQZRkW7nwE5OrJUZQ39GDbhOfPCV5wz/Od0PiztLVmgwlK0CBkoXOZYtIorT
         /ZwOp95ED7xA6TL3wFPT1AqH767Ppo2CvBR5WRjyZHnljipUeL7rx6FmncOyzrRVXrP8
         5eFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a3nRPCcL;
       spf=pass (google.com: domain of 3getvyawkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3gEtvYAwKAN0R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vbf2Rudz3kEIoj0HCKd4Dqld88SCBjDxWhsQVFc7yR4=;
        b=IwvqzdgoJMevz1aupkEE8gugbszy6IqxdIpoYgmeSpcOgjXWMETwJIJd6D/MchoDj0
         ZHlNIrAb1iZpcyq97Gbvrm0zrzZLLYjmnZvkpuIM3WpjdMZGg+kR6gz71i6HN0vJM+jY
         cwGJa5vqzRLzBnRxu3A7Wbgn4Tdd0CtLyoalhdlSP1yNMXIn2NqdNzPQAIFmF37X5XFD
         LM328WE/Mw6Mu/imm8Z8/KwPk0DFLCAzk5hsxMMRHIcWXUky3flT2IyfEpfQhnC/lfju
         +OAs+5AynUc8KtiJRtq+HO0yWFt8QNfCm2eC8sBhnrO39NXm0D+A00w/HnjqA9A5jwJ9
         AdkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vbf2Rudz3kEIoj0HCKd4Dqld88SCBjDxWhsQVFc7yR4=;
        b=MkJZ/VrMpfIofbtvV4+Bo/eAoNyC7G96a30BJ4tjQ+KZSHv9GgRpLyYdot8CFeS60i
         5DtHIVQJiNJLGXSEirt+LuzauMtexymYNN00xA2VJlWiCTaZg+Zx63NIj+AXfB14Udhc
         om3fZdXDf7J5+uE8LJ484NF6I1majG0ItHelO1+NDjGTql6y4g3w+Ah3Sh+SBLSe/rhY
         jf6AtUajvH4Q0Bimouhi73hCzaFiAkghAAiD1O2gVj5E4V2+1M+qTpUpJH9pBzIV+6T6
         1Z3QmJbmZX2RcgU3hp/dNZEtSlIKTRlt6gG7GARyGehPXfUV0ryCD0ava4wQrAfqyOuf
         CaEA==
X-Gm-Message-State: AOAM532fPdO0MEYDDbRCO5MIFwtN5Ajyb1Yc9Om+8Kd2wS9F2RAM+2o7
	AXdzvThM4g1o79wU4wKA334=
X-Google-Smtp-Source: ABdhPJwLgQ82VVPU6q2T5bAFmWLTYwC+ee3iclaHa8/BjUDslTgrH4DcjzTYTDLHhEF8a1UAN15MYw==
X-Received: by 2002:a25:6c85:: with SMTP id h127mr12414346ybc.341.1617906561051;
        Thu, 08 Apr 2021 11:29:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls2893668ybh.1.gmail; Thu, 08 Apr
 2021 11:29:20 -0700 (PDT)
X-Received: by 2002:a25:ad1a:: with SMTP id y26mr13355754ybi.15.1617906560638;
        Thu, 08 Apr 2021 11:29:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906560; cv=none;
        d=google.com; s=arc-20160816;
        b=my5ohKxky0a+EmxusxMuztjFSM+9WE4FjO/fKs8XWxD3/+VmMOFp7ik1NOYurJml1t
         9ccAGzEMYcAVltTmvOixWrOqKp+Ui/O79aOi2nab2kKe5SRGp38cdrofXelNUJBTSnul
         HGOcjqaXRkKqtNZ1ZWjliHR7bLyV43hUqWT+utrM2hW9pxiPu/6hFIwFMwsbMAc5MRqA
         ipFkgEh8a9KMxLmx0bm1cy9LhO/dJkkfiX4kvaLtGurc8/rIPi9MjeuO5a98qSKVm09G
         R+LP/p1O3WlZ/AB8IeweLiGMzuMfb+roqiHsrY+WnChj3QdfiVwah0xOLVC2VXYzcbrF
         inaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=wpJei33p36j3KjjMHxyiKmG4dj3y1cwd0hIxQebiEdM=;
        b=Tcke4BpZpR7hh2g/e5nmlZSjmd2bqblDkrtl7G0PxsiunHUtS5vXSuTka4uql80XIw
         +09Lw5B5iCzsCTsJkwsJ35OO2UKRJwHHZvqQyqQJoX297BvBCXI+jqjpV0YTVAMRuUB+
         jfk0u1lPH2U/Augmd3grNJQZDn8lQanTam/mIWkTPgPrXvt0efbxf1q+r4QNqIuGO3kl
         rusxJBoxzxfGL+tB/UclKV2ys7UGt+/nYiZLkY1VlVmGO7WkhSsifvtoNhHvIc180W1y
         Ut2qm+Rd6ulJdbi1KHXQBgQkkNTW+mQmzGrTWHdrbqjWHCeWQ44sYF/G267u/Cx12PnY
         NCfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a3nRPCcL;
       spf=pass (google.com: domain of 3getvyawkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3gEtvYAwKAN0R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i10si5744ybj.3.2021.04.08.11.29.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3getvyawkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id q14so2837815ybk.22
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:20 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:cf16:: with SMTP id
 f22mr13542667ybg.342.1617906560306; Thu, 08 Apr 2021 11:29:20 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:43 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-19-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 18/18] arm64: allow CONFIG_CFI_CLANG to be selected
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
 header.i=@google.com header.s=20161025 header.b=a3nRPCcL;       spf=pass
 (google.com: domain of 3getvyawkan0r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3gEtvYAwKAN0R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
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

Select ARCH_SUPPORTS_CFI_CLANG to allow CFI to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e4e1b6550115..d7395772b6b8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -75,6 +75,7 @@ config ARM64
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
 	select ARCH_SUPPORTS_LTO_CLANG_THIN
+	select ARCH_SUPPORTS_CFI_CLANG
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-19-samitolvanen%40google.com.
