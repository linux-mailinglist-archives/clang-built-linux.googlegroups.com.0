Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY6G43VAKGQEGGMAMJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 9587D91934
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 21:13:39 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id k2sf182048lje.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 12:13:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566155619; cv=pass;
        d=google.com; s=arc-20160816;
        b=cIHHHKjUVLVnI7FopXx0xjgfngX7zBjPRL6X9C/ZiUA4yMTI1w6Q6yeCFwD3LQPHiG
         /skW9+ZfWQfc+65E1AE1AvqKvz24dV8dTAR9YHPbhy75qtHRP8SwWT0aq/+LtDfc5Xr9
         EIofyMpnu6sNfR9XwHYlqX6cC+SjQp/3yQR5WllaRuKqI+pC9fPQ32IY0vi4krh3xjSu
         xHO6K+ENLMv+0guc7Glshic97C6foNQE0KAnt2C5UXtN40EZFd9J/Udoa/HT+hGZTDBU
         hMua2Kg/D12O/qlaJNugUFDLChzDL54wzcyT43uyDb0dfglGqiPbINzYczPDMuLzxyOL
         JzEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=eVG//tg1YglR3TbRGoxqc2ikohKeeW1PZNe1GKpbSwg=;
        b=i/O+tkd3xzRKLj6jTmOfkeKk3EV8Bh03RHDEj82IYdK/RVtNpEu8GMznzzdbU9kFrm
         5oHUi0i0jljDfUL/RHSRVevKFGEZFQjtfQOPq3KZIaXGvQs43tzuLy/kJGljY5LJk9K8
         TBnhw59ZMB8QXGIlZOLjczdrPTnLeXuxdlsPE7s8GuiLguM/oGHmoRhgyCQTqihmLjpu
         RAKrluS0aH6nisGMdePr0Pi1SWtvBFTFQaWnwueVXoLbJR+OCnAE3MoCrUOWl2ZXun0s
         Pt/LmDM0UlryXE3+ygO7o3aO48+f1Ruisr45mt13qofpykuhw5UTNb2KxMHmoghiWVCg
         hEbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jOAP1YSP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eVG//tg1YglR3TbRGoxqc2ikohKeeW1PZNe1GKpbSwg=;
        b=dxBxcGuKSsi5NzY1Z80Up/9B9Qbe4/6iv6Fztfbwj2tmN8G2cALPFkwixpkaHrM5UC
         TyoQUjJvR6FfgkE1cd4RdcYAo5y6qYw6QgiRYXjh6WWACgw0uyz+fEHccxUxETMLEF8u
         Q/D8RssjEBpI2CiWzB23j5Tf35UDJoSZIIGOYLO2NiV8qv4LPGENB3ziM3dLdmIWED/6
         +DMiw2FKhC8J7eCPbDK9kxdB80N4T1r9z6YYeMF8COnIzrkHlbD0jLxRuUe4wKTCLtT0
         DIiLieMypgn3HPrZskHC8vSnAow+IEYJIB4Ii7soHFJ3b9VPyJuWWnaTdx1yPp/sNRqY
         DeeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eVG//tg1YglR3TbRGoxqc2ikohKeeW1PZNe1GKpbSwg=;
        b=nIhdZRjtNX+MPjtnEs1Nl/9pA1ah5Xx2A2wfYRgjopzImacPWetXapJhZZ9kEO2R2f
         f+P8B4Wj2PCgXxIYfkF8al66BlqaRfQq9c7UAkEB0ww0CgtDLcFczV4nI4tz7d+61u8H
         dOvWxOHB2JKPxWQmM+EG5h64ZPOsOGRwlMYPT1Gdcwp0F8yrqOkrPotYyY6m89TJqJzk
         /0mWHuIJHAKuz1HESgZXNVjdU4IX/sTApYFxoxltyR0qQwIAL6tQ+zqRK7uL+INNzt3j
         dUi0K3zcsCZymqHGECWGvJ4i5Fgo23TXDoKfRkvv9FIRMSjgqfV5pDpmamV8MGEUykM0
         iHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eVG//tg1YglR3TbRGoxqc2ikohKeeW1PZNe1GKpbSwg=;
        b=b5gz3/EEdi/4zFsTAoY86WW8985YdYLk11EBKJJNbXc0YvHljZ/zv4AbtL+Y6G4f+Y
         naHQ5V2Ie/k7Nr/Y54DSMJ7L+JtqP50xnXP5nogrX8gCQNJAv/ASiDek1g/YzXRqICxr
         ypcRRzpgLJpJatfUXLoT4QziCvPtRRbyVWhYGGGEUYQF+/XGaHCtDHH8wvXnqctj/nZQ
         Z0OAzKPV3WjoommZIzRy/Dk6NRunzhyEjPk8rHPHRGRbm70IozJt61YJzJw031IeYuvL
         HPzNFNZ/mozWKgM0DndaG2Lk+DbdK33+UCWRpZ1jNJkBMaIsn3ByTvAGdcta70+QamLy
         CbEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkiu0Fx3tSE9llcWQpsIyrKV8a32PtvDusrYNlVFogdgkaDa81
	FLJuUk7Y6udYdCABjrGw1HI=
X-Google-Smtp-Source: APXvYqx+jxzEuz7pgDarXYqP/DnwSd0naQ9qA0r7SsXPdChsU2UjusF4oLDUIBEmqjit7Ygaqs0NqA==
X-Received: by 2002:ac2:4644:: with SMTP id s4mr10202526lfo.158.1566155619190;
        Sun, 18 Aug 2019 12:13:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91d9:: with SMTP id u25ls1458200ljg.15.gmail; Sun, 18
 Aug 2019 12:13:38 -0700 (PDT)
X-Received: by 2002:a2e:63cd:: with SMTP id s74mr6941859lje.3.1566155618760;
        Sun, 18 Aug 2019 12:13:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566155618; cv=none;
        d=google.com; s=arc-20160816;
        b=aN+ogvlqA//I26gbdGRBgFHyfhL+fkKal7V/Yk3Eiw2F84X+itPAtGYWLviZZd3fwI
         ik/dU0HUWTPJkLO7SX4uo4r8xC76Ez1NrrlMSKkZAeUyQaKCumeWtvelOLaOU8JR5s/4
         sJdADX2gWz/vhUAjDhLfQuM+kyp1NOpo0SwS9BFQdJfJ268sUXt+sVLUoXcEbNMLMCet
         mKbS1KHRUDvvu/ZXawwxxvQX7jrcK+YvX4VNsJFS/XgxYg6BNIavAecwX0A9u448Sysz
         6EWxmkCUwEQRttEVyxw+gBMuGn0Oxo+2Q8n9YNC42bDyO0AyH4Kh0vydTWPnWHQtZaXa
         liDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eItUq57lzuEyxOyGZwQoMhoYPdZi6IDY86pDynuNHFQ=;
        b=uVyQVwlj1AAXkJvQRMySQN/0N/AMZiIEtNvtV1GGw0i4o7VSu5wcQh+21ERe+54q5I
         UlD9SpGl2YVRHB5bQNF+LXvxoWNfp2lmYQ4EpEpcoELXWFx58ZC711GGhTM75QvYJgDY
         NcDdiYNvtKQN0GTAQT3dj4PZLDB6P19r1LLQB0Ovf9ZQS4aTkOnHd4gsb7PFsHxCuHm5
         Hm9tQ88MURYL9YneeM9gr3ns2uYX60CTlxEALGxPzxllj9LzEgJoRObG9+gz30wMmbXS
         zwgS/Z2AoFupNimI3QLn7WX8T9V4OdlrKThnFPAcwMo2T6xGbH0uDcoW+h3s85lbMX1+
         QIiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jOAP1YSP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q25si582567lfm.4.2019.08.18.12.13.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2019 12:13:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id v15so1161319wml.0
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 12:13:38 -0700 (PDT)
X-Received: by 2002:a7b:c775:: with SMTP id x21mr17481652wmk.90.1566155618001;
        Sun, 18 Aug 2019 12:13:38 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id e14sm8647033wme.35.2019.08.18.12.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2019 12:13:37 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] powerpc: Don't add -mabi= flags when building with Clang
Date: Sun, 18 Aug 2019 12:13:21 -0700
Message-Id: <20190818191321.58185-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jOAP1YSP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building pseries_defconfig, building vdso32 errors out:

  error: unknown target ABI 'elfv1'

Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
powerpc64le toolchain") added these flags to fix building GCC but
clang is multitargeted and does not need these flags. The ABI is
properly set based on the target triple, which is derived from
CROSS_COMPILE.

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Driver/ToolChains/Clang.cpp#L1782-L1804

-mcall-aixdesc is not an implemented flag in clang so it can be
safely excluded as well, see commit 238abecde8ad ("powerpc: Don't
use gcc specific options on clang").

pseries_defconfig successfully builds after this patch and
powernv_defconfig and ppc44x_defconfig don't regress.

Link: https://github.com/ClangBuiltLinux/linux/issues/240
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/powerpc/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index c345b79414a9..971b04bc753d 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -93,11 +93,13 @@ MULTIPLEWORD	:= -mmultiple
 endif
 
 ifdef CONFIG_PPC64
+ifndef CONFIG_CC_IS_CLANG
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mcall-aixdesc)
 aflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 aflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mabi=elfv2
 endif
+endif
 
 ifndef CONFIG_CC_IS_CLANG
   cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mno-strict-align
@@ -144,6 +146,7 @@ endif
 endif
 
 CFLAGS-$(CONFIG_PPC64)	:= $(call cc-option,-mtraceback=no)
+ifndef CONFIG_CC_IS_CLANG
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2,$(call cc-option,-mcall-aixdesc))
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2)
@@ -152,6 +155,7 @@ CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcall-aixdesc)
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 endif
+endif
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcmodel=medium,$(call cc-option,-mminimal-toc))
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mno-pointers-to-nested-functions)
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190818191321.58185-1-natechancellor%40gmail.com.
