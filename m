Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL5TYODAMGQEIKU4MBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6F23AF505
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 20:25:52 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id q3-20020a4aa3030000b029024b18087470sf11077503ool.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:25:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624299951; cv=pass;
        d=google.com; s=arc-20160816;
        b=GlqnbXLE/BcPUNpa+DOzg4FH6O/PNp4zDiAYn14C8UnjqRjx6U0i/6l5GdCJpuFy9P
         tUdk5cDpTLmGCt9z4+QGShO8ThaY+nL5TvW2LnteTmuYCE0gCHc/Hp/hkUEBUcyH84bb
         GcxI+gYtD7Ni2yHKshE4tfSFjE6QnNFuFTIdlhEEPtHD6zTQa2z0xdfMsbxUSPejwKp0
         C53xp4/J2QjgK4lwVhz2abRS/Hir0rnQk0/ANpwT+9hq2eQfNvrbJvx6XF1D7VPsCTt/
         vqjZjB7kv9Cew1Cv4odJe/pE5CAWd8uc4Vs2uhkPVJ9zno74iSftTJ/UDF9aP6WJn+l9
         k3PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4rgvXTb+BJxn5Qo9qqJhCKlO6xN24UrCkbJKn/DjUoY=;
        b=X+EoVK6/f+qAlIRw0lvvCFRmmuidMUaGPvLVmk3z6+sFNstwZERYDRKg7JdEbOFtSY
         S44Ws/IX0dVk2FK6bUtZyIIgQaKquiCogm4yyFzQ2F6H8rHxEzJLCCJ3/KjPFib+ewRJ
         qbGEqpn9Sa0cztyfnhCg1yuxi5AAlGa+ztgFOTCh4OaRJbi3aRnOr3LdF6/JPb7eSlTq
         4ReEvEk/VhoRvVqLWUkI7/E1GalAlu3GaW1v75kmaNEPJTZ5P80N1jEFngkkwZb2eo2T
         sItWvAtoPsSFWRRsw2/y9APbev64bXIoGy+Weg4s1Tkoml0COzbxLa8FAqIjgJy+yRGQ
         KQWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GkIXifsk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4rgvXTb+BJxn5Qo9qqJhCKlO6xN24UrCkbJKn/DjUoY=;
        b=JAauUKOeUSFMBEtXcrQOXA4rGtd/d5C44o9EeyOrZHcw5seG9IF5XbRcoGB4CKCXKT
         A8AAWEIwDubQ5+zhsRgBHj2yX5PjgN1MW4TR59M5+Ujo9+ceTXwld73C7DVpGdNDN6dy
         mNIUYfZYpBJN8dzYmCj3iCMwdfzTh0s3QVSIplTHVuQym11+dkZBM0kr6LAUyOOTq+JY
         tC5W5A3H+RJp261pvUP4wYTcJ+DlFgHK2WwKR05lmu1gv/lEiDCwsW7H8niLRSAQyP1Z
         pomJcYZsjHDTquBj/DBe/NWlVhU96ehwsVGFGFxvtvJXcGPkrlFtFAs3nG8wssal0RrQ
         Un2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4rgvXTb+BJxn5Qo9qqJhCKlO6xN24UrCkbJKn/DjUoY=;
        b=gZFqwtRm7zW8t2VgFuTc2U5FDozwEOPQ7Y/6F+/wI9XxHfsqjtcdE02UIuTUJEOO1y
         +hsY/9xq7fga0kk2W35ogKq3A0eHWiwADkW6fUqDfRGIeNPmVlS6RdKHjX9g2WS1au5/
         9t0BtnbibDb5UHfTnW+lWLypPyVO/tKrxLBen8m9ynXwznfks+jjrc1u4s1jZI+rFgwy
         Qn0YsrDtTNWkHgnLrXkb1iK6b+m7kLe1WXWKc2FRfQ2OEluXzms5WOerarwt8k7VPJ9X
         Q03imlJ6w6KI2mR7XxQbi1/c50RPFXuPRD1y1AXlLxvjuG7xyzy9KSDxK6mvSHyGB29i
         2suA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GB4ipyt63XZQPHz5dWtR+z7K+K7HlPh9daNCpM6rqL8BTX4Cd
	uPYMqQ4FkLtVt4Hv9ZGL+w8=
X-Google-Smtp-Source: ABdhPJw3dHdFNk2vk7NpRJEwOGgFkn5cQ82DUZWYlKaGwzo0Qk00mBBeg7qWSbzAs5chnb/Vbaihuw==
X-Received: by 2002:aca:cfc9:: with SMTP id f192mr24861848oig.7.1624299951248;
        Mon, 21 Jun 2021 11:25:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:bd6:: with SMTP id o22ls6502669oik.1.gmail; Mon, 21
 Jun 2021 11:25:50 -0700 (PDT)
X-Received: by 2002:aca:5dc6:: with SMTP id r189mr25910067oib.164.1624299950891;
        Mon, 21 Jun 2021 11:25:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624299950; cv=none;
        d=google.com; s=arc-20160816;
        b=w2D7c4hJUKON7L+8rgvqd1+MjPnv+mnf9bmxLWl9PbckB3Opx0iqPTETZjIqD38y+b
         d7HH3RdHrnN02EXWE5+li0RFzFNIstGAt0PENSEdvuY2NGrUGO6+Ae+AQxs8ypdAX+fH
         qvsiDCt7q2i8AJ/HwtcgqkURchpes0IBG7OfpFV2vH3GyWLlbPsASKaWAei1NYKdnkHD
         Q/YEJX3ac9MKTiUEVNCb0pQflmdHbhUJCp2vnQpwldAHnR9PkR8v2AdkcUaXLPHD//Yr
         pFHV3yEb66YslYm6HTDg0Xch5hgq8a3gycCn8LMdRF6AHv9z2Nq+yfFCv0yD1EnRYQNQ
         bevQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=O2y6A9Hj20lbzmcHYnCG1jgFL0NUc+gNMXfxG38gGBk=;
        b=gnpISjR1BIYcHBfIgmMmT5JuVDTfLvYoUQTdsfTDzONk74qvb8WleukhevV2jt1hek
         0drUqanzgv2FsoIKwALiX7KCvc4FWZcfHtpt/36lIwZaVQtZyTMPP+yHQJcQN3PnYQ5Z
         /yNLMrUAoYDCU5bXupRNStMQCTJgWLV/YhHE279SXSd8rBG3etYOihbjrlfcXjp30fee
         gzch7R0xMeMFSAg30wJsqM+we7/5dg/8kaixHUiPSoKxchuRnLPjBVvvgJaz98bJWI1i
         vGfcz9q3AKbtiGq1LAtyc7FWvDld8HmFO32JVtkxhUPY85Ifp8z+EwEDZMk+x+zAlOWo
         RGRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GkIXifsk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g12si741660ots.2.2021.06.21.11.25.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:25:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EDD606054E;
	Mon, 21 Jun 2021 18:25:47 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Paul Mackerras <paulus@ozlabs.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	kvm-ppc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nicholas Piggin <npiggin@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] KVM: PPC: Book3S HV: Workaround high stack usage with clang
Date: Mon, 21 Jun 2021 11:24:40 -0700
Message-Id: <20210621182440.990242-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <YNDUEoanTqvayZ5P@archlinux-ax161>
References: <YNDUEoanTqvayZ5P@archlinux-ax161>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GkIXifsk;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

LLVM does not emit optimal byteswap assembly, which results in high
stack usage in kvmhv_enter_nested_guest() due to the inlining of
byteswap_pt_regs(). With LLVM 12.0.0:

arch/powerpc/kvm/book3s_hv_nested.c:289:6: error: stack frame size of
2512 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
     ^
1 error generated.

While this gets fixed in LLVM, mark byteswap_pt_regs() as
noinline_for_stack so that it does not get inlined and break the build
due to -Werror by default in arch/powerpc/. Not inlining saves
approximately 800 bytes with LLVM 12.0.0:

arch/powerpc/kvm/book3s_hv_nested.c:290:6: warning: stack frame size of
1728 bytes in function 'kvmhv_enter_nested_guest' [-Wframe-larger-than=]
long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
     ^
1 warning generated.

Link: https://github.com/ClangBuiltLinux/linux/issues/1292
Link: https://bugs.llvm.org/show_bug.cgi?id=49610
Link: https://lore.kernel.org/r/202104031853.vDT0Qjqj-lkp@intel.com/
Link: https://gist.github.com/ba710e3703bf45043a31e2806c843ffd
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/powerpc/kvm/book3s_hv_nested.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/powerpc/kvm/book3s_hv_nested.c b/arch/powerpc/kvm/book3s_hv_nested.c
index 60724f674421..1b3ff0af1264 100644
--- a/arch/powerpc/kvm/book3s_hv_nested.c
+++ b/arch/powerpc/kvm/book3s_hv_nested.c
@@ -53,7 +53,8 @@ void kvmhv_save_hv_regs(struct kvm_vcpu *vcpu, struct hv_guest_state *hr)
 	hr->dawrx1 = vcpu->arch.dawrx1;
 }
 
-static void byteswap_pt_regs(struct pt_regs *regs)
+/* Use noinline_for_stack due to https://bugs.llvm.org/show_bug.cgi?id=49610 */
+static noinline_for_stack void byteswap_pt_regs(struct pt_regs *regs)
 {
 	unsigned long *addr = (unsigned long *) regs;
 

base-commit: 4a21192e2796c3338c4b0083b494a84a61311aaf
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621182440.990242-1-nathan%40kernel.org.
