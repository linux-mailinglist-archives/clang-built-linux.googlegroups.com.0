Return-Path: <clang-built-linux+bncBCCNZCEGVYEBBP6A7CDAMGQER22JV7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2373B96ED
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 22:06:25 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id b3-20020a17090a8c83b02901703601b0afsf6553442pjo.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 13:06:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625169984; cv=pass;
        d=google.com; s=arc-20160816;
        b=eXpy5XMniSSooaLsn0glMQOLiyYB8vXvAYfIiA653vKHMaGOcVc8aXdaTl+KQ2j/b0
         Dql5dkJEDy9eKmZtZK3WfQFJSYz5svCAGrO62MnTZm9gka5psOk9+q5cQrrF6YKM2ixz
         8y8QO0kaNocfyZWVvGcYws7zRWdpP9asAHCyNcyA5z9moOwDcpCKa9j8qI6l2uV9CQ44
         nhlWyQQacJPckaSa76Zzm+U8NjRLLsvBtR6/1fOA1V9V0zQth3Gm3VCGD6RFfCr9Vch1
         9yFyaPNpRgjex2vHHPRX0s2/unhAwuM3GK/RrZ8qQuuktius7nP2/+++/L4syWED648q
         ZPJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=iquhIpcFGTVuBDRSX2vM/5Dw0AQfD2Ji9cSetLKBjNM=;
        b=ZV2ed87mkwkYwaIjkbAJRFYp/mg6w2lGHvR0KgfSFaHsyELRp2/+rNmZOWQb2KJDRV
         Q+8c86+qco8j5JnQsf8nh+WOkVjiva/LN1zfZcWzTOrUPHcSyiVvgHm4Y6nJWI7uruXQ
         ErgrcKE0bYgmabHbjBcOZ2Hyo7p95rLOW2BH8/RGW5UmEA00GxYIBpB/Y4+X+TKZoNzs
         HqE2nsDLRm08fScOSrkrr/u2mscLKxmBFUIiF3YnT5qIvBsRkuJZQSyms8L3VYDZ9b9u
         YlxkuI6ps+8p+lc4O3ZCrvFKum4pzzz6BSoYO+RzXTqH1P8hl+QUbR0n/rxw5v2+GBKy
         xpLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rjmNK8L6;
       spf=pass (google.com: domain of 3pideyagkequfgizqwfxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PiDeYAgKEQUfgizqwfxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iquhIpcFGTVuBDRSX2vM/5Dw0AQfD2Ji9cSetLKBjNM=;
        b=fhP3n+pBThAcFm7xD1mbxE93k0OVjo9dyAKN4h9bwS1fJGh/A/ridQAEf7LfzKmvyi
         aHUanGjqZMhXgX2GmM2ewe7e+h31bwD01+F72R42WcD5IjTusxw5LBFhNeiEs8cVC2M0
         YVVmc9r/9O3u/IqF4C6WbQlvD4wY6L/tbTPFz6S/qnkq2e640EWoJkYrvBybfc5izsbn
         0PoKu6QKHZj6LpNR7ZjajR41R6zkkRaQKwkqA6eLb6T/xUKz/HbvFzX3WH4M7GunJlLb
         M9RxKUCZnApB/RK3o1NR9sBII9EiQstXWqAHPnR4k1Lp7/BtJRnVYTJC3mRSSaGwhnyn
         khyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iquhIpcFGTVuBDRSX2vM/5Dw0AQfD2Ji9cSetLKBjNM=;
        b=VlkoGzbM7OBgOy3lrFJJR2HIuyaYfOrChb9mN2+NAT0UAwuJgmpay5S0zSGkuiv20x
         C+/ya8KfO7CPYpk640azaKSVoDTxmDKdqZkyGPREPBbJaYhvYe+7JHs3oA6l15XK6/f8
         Y4/NP0TY4hCrNKFqMzjl/l1HBTQLBhZyMUhaP0zf/aDhKreF1+taoAL3pK461FTdqg03
         ErFewLXYQ7i6FWb8ljLx8/s2FDl3KgNIbrrkvzVivFC9Rnp6EAk9+lntV5bK0OzDvIMY
         24NOZ1yQLj3j9SFcD9LIbCtXVkIVAhAh83tBktmlzA/FXsx5WWMRx63YhbH/DblbsYZy
         zTHA==
X-Gm-Message-State: AOAM530F8h2pPCG3waPfbeeMbVwK06nIvSNQMb8VJqd8nIytLeojv/rn
	8vhi+x5txZalSXnlKObfi9s=
X-Google-Smtp-Source: ABdhPJzUXEAu+L65IrxGEWzHFnx8S1hs+8nc4sHvWY+9YOV0R8LtZ60ewdQS1zVz4X7rreewcV05wA==
X-Received: by 2002:a05:6a00:168a:b029:2fb:6bb0:aba with SMTP id k10-20020a056a00168ab02902fb6bb00abamr1726385pfc.32.1625169983980;
        Thu, 01 Jul 2021 13:06:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls3866891pls.3.gmail; Thu, 01
 Jul 2021 13:06:23 -0700 (PDT)
X-Received: by 2002:a17:90a:4b06:: with SMTP id g6mr1265409pjh.209.1625169983501;
        Thu, 01 Jul 2021 13:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625169983; cv=none;
        d=google.com; s=arc-20160816;
        b=eBjUzCoua/4bXIL9ebd7c2FmU8TyM9Uv3bq/5DBhgcRsglQCaU1z+orgz7tgFVDeHe
         g9XyyVW+0eSr8r7270PrOKH9EPqrNKR0VCwLbjbW27XPg178XXrPQczLGsWGdl1NScIq
         dcF/t4dEKXvUH7CM1mS8H2LuTcnDW/iAxr7zJO0g9F1ZHGRGgQleDbYedL4FpVMeZtqN
         bjbShOpxgNxrtuxMVtvj87t15NXPunVWp1BJD2ZYvS7+Kvt74ufsUcS1aKaCysvtvvEl
         0TTxLQq7xQh29g34V8GpW1YNPbpjjiwSysl5tBvQ3kmnrLmfTJgAbDJWnp+Ng6vhK9J7
         S55A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=Zm3VMH16iGKr7rpa1UnB4+yqcdqybw2ZiN/OuZmenR0=;
        b=VlxYZnQy820JeclJKYGZXur2w3vAPrFutqcwOvskJe8chEsM/fzNMwX1LPSyoSw6fM
         6A8brOYvnsysZ6U9zG9y+FfcSJxrtdqZNcfbZkTQF6WOC4irPbm4taHaqT1l9gux7MUa
         fSn4phJaX7B5m1GMNCy3ZPkT0+Pfldcjc15M/6ayFuBFi9t3QIgHTiXYrKXUY2pQwxxF
         0fJW3wVRtxjI77qr8Mn6RtbU68EM1SdBGTJyFXnyroP8zWZMORq+inNDqR9vnvADcwxX
         2HaVgWmi6AYl/y58e9LdzI2XLhSvNygxX4mCXMIjzEWWqA15B0G+y+hOBkp8NGkQYXEs
         w/Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rjmNK8L6;
       spf=pass (google.com: domain of 3pideyagkequfgizqwfxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PiDeYAgKEQUfgizqwfxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id a15si83163pjv.3.2021.07.01.13.06.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 13:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pideyagkequfgizqwfxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--abdulras.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id w17-20020a05622a1351b0290250b0535cc4so4143100qtk.3
        for <clang-built-linux@googlegroups.com>; Thu, 01 Jul 2021 13:06:23 -0700 (PDT)
X-Received: from abdulras.c.googlers.com ([fda3:e722:ac3:cc00:24:72f4:c0a8:41e1])
 (user=abdulras job=sendgmr) by 2002:a05:6214:76c:: with SMTP id
 f12mr1644705qvz.3.1625169982626; Thu, 01 Jul 2021 13:06:22 -0700 (PDT)
Date: Thu,  1 Jul 2021 20:05:47 +0000
Message-Id: <20210701200547.355742-1-abdulras@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH] riscv: allow building the kernel with medany and lld
From: "'Saleem Abdulrasool' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling <morbo@google.com>, 
	clang-built-linux@googlegroups.com, Saleem Abdulrasool <abdulras@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: abdulras@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rjmNK8L6;       spf=pass
 (google.com: domain of 3pideyagkequfgizqwfxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--abdulras.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3PiDeYAgKEQUfgizqwfxlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--abdulras.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saleem Abdulrasool <abdulras@google.com>
Reply-To: Saleem Abdulrasool <abdulras@google.com>
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

The current implementation of the `__rt_sigaction` reference computed an
absolute offset relative to the mapped base of the VDSO.  While this can
be handled in the medlow model, the medany model cannot handle this as
it is meant to be position independent.  The current implementation
relied on the BFD linker relaxing the pc-relative relocation into an
absolute relocation as it was a near-zero address allowing it to be
referenced relative to `zero`.  The constant offsets relative to the
image base should be just that - constants.  However, this takes a
slightly more tricky approach of rebasing the address against the text
base (`PAGE_OFFSET`) and then accounting for the image base at runtime
to allow us to compute the VDSO relative address for the stub function.
This allows the symbolic resolution to remain within the range of the
pc-relative relocation, allowing the kernel to build with LLVM/lld.

Thanks to Palmer Dabbelt for his assistance with this!

Signed-off-by: Saleem Abdulrasool <abdulras@google.com>
---
 arch/riscv/include/asm/vdso.h   | 2 +-
 arch/riscv/kernel/vdso/Makefile | 2 +-
 arch/riscv/kernel/vdso/so2s.sh  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
index 1453a2f563bc..1240d3790abf 100644
--- a/arch/riscv/include/asm/vdso.h
+++ b/arch/riscv/include/asm/vdso.h
@@ -26,7 +26,7 @@ struct vdso_data {
 #define VDSO_SYMBOL(base, name)							\
 ({										\
 	extern const char __vdso_##name[];					\
-	(void __user *)((unsigned long)(base) + __vdso_##name);			\
+	(void __user *)((unsigned long)(base) + __vdso_##name - PAGE_OFFSET);	\
 })
 
 asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, uintptr_t);
diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 24d936c147cd..384f1cc8e044 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -68,7 +68,7 @@ quiet_cmd_vdsold = VDSOLD  $@
 # Extracts symbol offsets from the VDSO, converting them into an assembly file
 # that contains the same symbols at the same offsets.
 quiet_cmd_so2s = SO2S    $@
-      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
+      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh $(CONFIG_PAGE_OFFSET) > $@
 
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
index e64cb6d9440e..9e5afc2fcc07 100755
--- a/arch/riscv/kernel/vdso/so2s.sh
+++ b/arch/riscv/kernel/vdso/so2s.sh
@@ -2,5 +2,5 @@
 # SPDX-License-Identifier: GPL-2.0+
 # Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
 
-sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set \2,0x\1!' \
+sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set \2,'${1}'+0x\1!' \
 | grep '^\.'
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701200547.355742-1-abdulras%40google.com.
