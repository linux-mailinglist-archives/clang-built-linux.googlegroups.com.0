Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWXXUCEAMGQEKGQUM4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B903DDF65
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 20:39:23 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id o5-20020a0568080bc5b029025cbda427bbsf7324198oik.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 11:39:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627929562; cv=pass;
        d=google.com; s=arc-20160816;
        b=m97CTme1cc1l6c2M8qy/lHVxeqzYcGdX1k8GwrKvxU9t46yDGKb0JI1YuXvZTqVOPJ
         DBStoDGRukUXlG0qFHadq2242puxNQbHbzF2HqY9DwjB02Ojcggb1xS9yl/fRSB71grZ
         fQALavtCknd83aJEDiQraOwXlxe87jWvNP/p44l3LyGVrFzqtqv0Du9ISweRbO5on/25
         +AN4vsLZloZFKoHVoYARX/Zg56rflUxl1BDLM5Okz8qyOmYFG2Czm2o9WMLIDPuNBxXi
         K0yrcQiprSSFINjpA8qjMQkNiD8fmAzwsliMkPqxBmF+ulvIaM4oOcvnUnSHfpZq4zkl
         eHKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=O39/L4UrGXb9SUtuPfHc3L7p+E8kaGSRiGYhy0AXZNs=;
        b=Hh2c7iALPbUwbaljYqOds4PRvH7t7nnIBly5mQ8Z/pAEArWxPsby81Um1zPp3DNDGx
         4KqMJ0bUbjvTvaos1DZTwPhbKlh3NiqQI0Mp132r00Ps0whiw1UDAEcw4nixpR4oSf6z
         XhrgJjv5e2o3UAvl+ENwgBKhXRDwH6HZNbpfmVSg0pptdFwIBZk4daCHlPYcwhiIXgiT
         5wmeN+I2mkEAViWcJ2mnb1smbkcQ98E9i/a9UwM467tX+wQ9db893YqvZzXRR0x/wMCT
         5jmihQI/uix7cNjOLrE+BD0rCaFoR8n4hA1MoaKlg5VAgIq4BpiqANV0bAjEFZ9HRnhF
         xH1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FX1LwuZZ;
       spf=pass (google.com: domain of 32tsiyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32TsIYQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O39/L4UrGXb9SUtuPfHc3L7p+E8kaGSRiGYhy0AXZNs=;
        b=n08YP9iSEnBuH8FQnHU1oygoig7R9QJe9xHAT+k/tmw2yfkrVm6sepDEpw+WJwHRro
         PbZTssEk3icZyAl7RNDWJS5cnxHUosNdz+gFDERcrAiV6TOOdycXLYDBUvKjFLUFtL00
         UmPGB07UXNKKxaFdhvdb0Oes5uFPTf3in7EABq/b007nC2iEegUDcyu5GXRtrMlUImZY
         8GuZZIcmmiM4qEaPXFUFPnVtAzmIo1e2QheoKS+MdxB1Jl/1zNcf2dmT/mlXyMLgXINg
         NK0OnI0SdJlTPC3pj8K/QU2AxQnvDnIFlIKICy6icGpgUkG7PJWi0btY13LzbDnTwfdp
         dbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O39/L4UrGXb9SUtuPfHc3L7p+E8kaGSRiGYhy0AXZNs=;
        b=F9U9bI1o6qagnDNDb0C5EnVWK9PxXJXE/CPABUZm0TiZPLBj2ov6QGBn/I92iZKCAS
         it1yYQGGcodSSWJ8zZVXmd1yPlG4npBARcgo9R2BVC/juMgZv9R2Sv2mXHhB39QmuStT
         pETjN48Kk21hZ1W5jIHkfCK9pfkoSBBbSqQbQPZ5Z2VmX9dorK+C2eAN5WQvAP78sQSm
         H9bDUYP+fg7+gNycaWlakDEvv86dxBAnpO2YBkTygNDi9XNXzSTRApqKkmChwXaJPT97
         dgME3JldRk3Lmu4+CwPeFW00s2LSHJp9y9+MX38t4OK4mbyO4FOdTMB0ZZWBMNDUiW+7
         Swgw==
X-Gm-Message-State: AOAM533L5hs9uSc1120GlbQ5C+1JyikO92cIAt3OdOulvgAGVRJQQNk/
	+0Fkeqj8z3x+7PqrXSiAL+I=
X-Google-Smtp-Source: ABdhPJy171xM7dFshSWtHPSeCjGJ9BFowAL9CR5X5W/XAmRuOmcpdNws7Zqply5VRiq/LjtHAaDCqQ==
X-Received: by 2002:a9d:63c6:: with SMTP id e6mr12743429otl.295.1627929562540;
        Mon, 02 Aug 2021 11:39:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2186:: with SMTP id be6ls2640053oib.8.gmail; Mon,
 02 Aug 2021 11:39:22 -0700 (PDT)
X-Received: by 2002:aca:3c44:: with SMTP id j65mr11642159oia.35.1627929562210;
        Mon, 02 Aug 2021 11:39:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627929562; cv=none;
        d=google.com; s=arc-20160816;
        b=Wtzmrf3tYEHdreJgIqGHzHUmgCRydbKqJxujkd6gVccc4gDLdqAqqk7QKTWziX2Ic2
         VfRCr6FlYhGaerhjpP8L40UUjliBzSUAqUBLkMVj494c4Y4OTCKgeJQ7RSRHXvuB2grL
         +v+XCyOJuV3lPoW/BeN1QP42FbFghqZSkNxWbmt8IE55Yxr4lfe/2WSdkCSOu4rlsfO9
         sBbQape4SfnqMH70x5SDWS+Vdc73LDcP7w0MXXj4/hw/OgtPNQNa1o7Fk4RFHndpT7lI
         pC+5DHpsJuvKyri/7mZwxPonqG36ugbEziKM/fdibPQqupcCkwo772f8yUhhQXG3LZT2
         cqgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4dz3SiE+uajglxOG7tZCdstmLAOcBmHBPB4xfwqxLic=;
        b=Z/XJis91CaKIq11yUs7BvCKjqX6kGJ+/5Vk7EokbP6/Q2jDe7Fy/JRh5oq47ALSvFd
         BCAap5zVAL4h6nh26w4qTJGqrJnmTo2oBS3RlCbisht09G5xz/lHbNKpo+lF+7jm5rJs
         f8bwTGG8dJ4H79+MWqDvF2DZuIOihYkFKfNijWI+XoP6z03HQhcYjR6uOBsEJCyuYmsG
         BhKZgNH6jOLrXiUz9W7oSYqKDtxTlSxqSrennRkRYPnq6DNefUbZ6jXzwndfH/ssoR/f
         tCbGu6bgOuqrpAyqfOFm36h5p6nSKMQSdZP/tC7v+FpbQQmmXZUcdV6PUgOA7dP1Qg2g
         0yFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FX1LwuZZ;
       spf=pass (google.com: domain of 32tsiyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32TsIYQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id g9si700631ots.5.2021.08.02.11.39.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 11:39:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32tsiyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2so19879024ybi.13
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 11:39:22 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:3db0:42c:8665:a4ae])
 (user=ndesaulniers job=sendgmr) by 2002:a25:8445:: with SMTP id
 r5mr24083636ybm.20.1627929561736; Mon, 02 Aug 2021 11:39:21 -0700 (PDT)
Date: Mon,  2 Aug 2021 11:39:09 -0700
In-Reply-To: <20210802183910.1802120-1-ndesaulniers@google.com>
Message-Id: <20210802183910.1802120-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v6 2/3] Makefile: infer --target from ARCH for CC=clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FX1LwuZZ;       spf=pass
 (google.com: domain of 32tsiyqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32TsIYQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
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

We get constant feedback that the command line invocation of make is too
long when compiling with LLVM. CROSS_COMPILE is helpful when a toolchain
has a prefix of the target triple, or is an absolute path outside of
$PATH.

Since a Clang binary is generally multi-targeted, we can infer a given
target from SRCARCH/ARCH.  If CROSS_COMPILE is not set, simply set
--target= for CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS based on
$SRCARCH.

Previously, we'd cross compile via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
Now:
$ ARCH=arm64 make LLVM=1 LLVM_IAS=1

For native builds (not involving cross compilation) we now explicitly
specify a target triple rather than rely on the implicit host triple.

Link: https://github.com/ClangBuiltLinux/linux/issues/1399
Suggested-by: Arnd Bergmann <arnd@kernel.org>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Arnd Bergmann <arnd@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v5 -> v6:
* Use indirection as per Linus. We now have CLANG_TARGET_FLAGS and a
  few variables suffixed with $SRCARCH.
* Add Linus' SB tag.
* Change hexagon target triple from -gnu to -musl.

Changes v3 -> v4:
* Reword commit message and oneline, as per Nathan.
* Drop documentation change (it's the next patch, could be squashed in,
  I guess).
* Drop LLVM_IAS=1 requirement, as per Masahiro.
* Carry Arnd's and Nathan's AB/RB/TB tags, confirmed OK on IRC+Discord.

Changes v2 -> v3:
* Drop check/requirement for LLVM=1, as per Masahiro.
* Change oneliner from LLVM=1 LLVM_IAS=1 to CC=clang LLVM_IAS=1.
* Don't carry forward Nathan's RB/TB tags. :( Sorry Nathan, but thank
  you for testing+reviewing v2.
* Update wording of docs slightly.

Changes v1 -> v2:
* Fix typos in commit message as per Geert and Masahiro.
* Use SRCARCH instead of ARCH, simplifying x86 handling, as per
  Masahiro. Add his sugguested by tag.
* change commit oneline from 'drop' to 'infer.'
* Add detail about explicit host --target and relationship of ARCH to
  SRCARCH, as per Masahiro.

Changes RFC -> v1:
* Rebase onto linux-kbuild/for-next
* Keep full target triples since missing the gnueabi suffix messes up
  32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
  drop references to arm64.
* Flush out TODOS.
* Add note about -EL/-EB, -m32/-m64.
* Add note to Documentation/.

 scripts/Makefile.clang | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 297932e973d4..1f4e3eb70f88 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,6 +1,27 @@
-ifneq ($(CROSS_COMPILE),)
+# Individual arch/{arch}/Makefiles should use -EL/-EB to set intended
+# endianness and -m32/-m64 to set word size based on Kconfigs instead of
+# relying on the target triple.
+CLANG_TARGET_FLAGS_arm		:= arm-linux-gnueabi
+CLANG_TARGET_FLAGS_arm64	:= aarch64-linux-gnu
+CLANG_TARGET_FLAGS_hexagon	:= hexagon-linux-musl
+CLANG_TARGET_FLAGS_m68k		:= m68k-linux-gnu
+CLANG_TARGET_FLAGS_mips		:= mipsel-linux-gnu
+CLANG_TARGET_FLAGS_powerpc	:= powerpc64le-linux-gnu
+CLANG_TARGET_FLAGS_riscv	:= riscv64-linux-gnu
+CLANG_TARGET_FLAGS_s390		:= s390x-linux-gnu
+CLANG_TARGET_FLAGS_x86		:= x86_64-linux-gnu
+CLANG_TARGET_FLAGS		:= $(CLANG_TARGET_FLAGS_$(SRCARCH))
+
+ifeq ($(CROSS_COMPILE),)
+ifeq ($(CLANG_TARGET_FLAGS),)
+$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
+else
+CLANG_FLAGS	+= --target=$(CLANG_TARGET_FLAGS)
+endif # CLANG_TARGET_FLAGS
+else
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
+endif # CROSS_COMPILE
+
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -integrated-as
 else
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802183910.1802120-3-ndesaulniers%40google.com.
