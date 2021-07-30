Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRF4SGEAMGQEWIN45UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6923DBF7C
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 22:17:09 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id y125-20020a2532830000b029058328f1b02esf11457813yby.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 13:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627676228; cv=pass;
        d=google.com; s=arc-20160816;
        b=X/NF0WZXNs+iVh1BxieaO3MEYdiX5CJbzuRrCETeo/hOPByDGoYZ9OzWRZoZgUWpky
         WaWLcbuS99HmJnBqQNBfU1e6aKRAn76fIw33yhgc1NMlPActef9SKC6XwcV3MjmwWrSs
         vWv3A15BwkKRX+YmTtW31oiiGWduorZ8na6gkorzYqPkU+RUKqVJtMeMlqnyqxYntfjW
         /XufSQPBZKwf70CmZWFlnUkZWHIPiKB6VO1mztnwvnVETF5a05xvWYmXNTPBO6gljiG5
         QaNMKTl4e1xIX2y6lwA/cUecN/d8YgZLRUXekBODnYx7Cyn2n6vD0lxGytkDC92UxPjd
         knmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=aRflIzTlGWW0pqQkYaBqvzfqSB6lwz0qfyUXRkPlU58=;
        b=tKJtJZ3kKMe3BO0ETXXcWuX4usRKRrl5K6OdGSKq2OJsiIONWHVPyC5ma60JXVuoE1
         C02+6/VmZidKmkr340ALkYySPXPAvezOUU4IZNOPXtEdBOweRXth75rE/4XE3tKCxYyI
         69H3qQzs6z+CXk2lILujeopcXHglU+q7/JlcymNZ8teTwMGHBJ3cJ3JIImenrrygCBZk
         YmCEpuDdKBOnj/6eLpGGuIJpaFK/T9J5uWqWRQ4OOnW/9sTt3WdHvqq2+9pO8sa6u6SE
         +KlyYuk4HH8c2RzMM4vRhfSZOqbZpnoSFFsE+GGQoysHfIwb75SsLAs7p4STSfKLIbS+
         6kHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZIByelen;
       spf=pass (google.com: domain of 3q14eyqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Q14EYQwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aRflIzTlGWW0pqQkYaBqvzfqSB6lwz0qfyUXRkPlU58=;
        b=gqVKQ7F3Z3xgv01hqVZOoh67HJgiSOai6TuFn0tI86xbQMBfh4O3nSlLXTZR63qLMN
         FG9L59PC+MDqjR7PpwEIfPnMiCdiWRaKfKsDln7HNY4VZDLI8Z2M1oUj5mj+TCutPRgK
         7spp5wJICt3KH5iG0UjE/FjQE+3IIWUTMrecphTyAxXsmTGdGSD3QLXLKpQLOjwQNtYA
         aVnPRyy0Y6JXdvjFIUMREx/Mb5dk92e7V7OavI+vT/X9cbPm095y7AoO/VYxPzFKCQGr
         tF2bxD7+GgVseCqk6TQ/gpqdLnq5BEc4ytR+6cxd6oBUUDVDYmr4YBBOLjya2odt16XR
         ahhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aRflIzTlGWW0pqQkYaBqvzfqSB6lwz0qfyUXRkPlU58=;
        b=qz542I84abAJ4zDEDp/ypwrX7uLPyFk2b9okgW7sX23mH8TtrWOYBn0ckjqyBydEii
         iRM0XWBNQ2begqPPcF3D7hVURZdZMXiO99HYlhBvJZYM+pmuQOWLBwdNDiDYPGlBZs4U
         9aAife3BFPL+IWK+uS7rNT7bLTj+uW5p0gflLf1SW2zv9eH9V8+BrYM2kIxcPLEOKv/D
         j0o3IMzPRMovHz58pV100qk1FFTrf4v0WtR8bGpU/LS7wU85VqN+EBbXGLW8zy7o665T
         qc4yCbwjauoPdrLF5hIjZVvt1KLFmvxKAFjKsx9e7dmz71ThVspALe8Us2GFVeqcpPPu
         8vpQ==
X-Gm-Message-State: AOAM532SPLJI9Yvi/uQYdf3dcOjQwS+5Zq+T1mW6bTjslElssRy7bHrl
	atNrY73Fhmv7cxsHazF6PyE=
X-Google-Smtp-Source: ABdhPJzpLecSteXfODtvphvSceijiVijN45jDskLlTi0ZBq04k8LLM2hWTTTwnFQWdxQk731YOJi0A==
X-Received: by 2002:a25:d290:: with SMTP id j138mr5998462ybg.151.1627676228405;
        Fri, 30 Jul 2021 13:17:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c70c:: with SMTP id w12ls1345412ybe.4.gmail; Fri, 30 Jul
 2021 13:17:08 -0700 (PDT)
X-Received: by 2002:a25:2ac2:: with SMTP id q185mr1478230ybq.66.1627676227982;
        Fri, 30 Jul 2021 13:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627676227; cv=none;
        d=google.com; s=arc-20160816;
        b=XEpSd3U4J3C+KZpIPlbmO67GypkE+yA5YEipUGkgm9uRSKxlsxYG3gBIEXJq/JDrqT
         3wcJUOjnOe0/YJ/nxtWLsE5lMT5cb879mpDRBtIQpQLJKdIP3yS/pyEZohfCv5gh3Di/
         /ZI5O2CoQlVhkd8lhf55LkL6IAQSKqxzY4lMplGeVelOoTmgA6ANjsW59fDS8peMhFYi
         m19EjHJAbB8vZ90P/QTv4k1jGSkuXcOjfuLLMlVSABzcDSN0/dqynR3mKx+482+KUejE
         znRwWRuaX+qNGrnFzLEh0+Byd4zatkF1DaCUCC063+H54/zS1q0gjewbALVKjp2ALZ48
         Oj8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Jp1qQjnCagMb4RPscvrHWHmxCwM8IS8jZKpJlWaPbYU=;
        b=CHHU0XTM9UXhMFd1Zz0teMEdGTZ2s/F4ic2j/P3kGCt8+9/z60EgednI1jqe7piGZR
         wkoR/vHbyq/xl/VR5WEVHe/3lYMGEZYRbfCB/l19QKcshlPCSvzSZv2Oy/nhy493DH2e
         JNrQer3tDp+6nZQYS4FvGeGqS5s0fcFzsW3wsw+SmU31cxkC7phu7DBVVNyRQ/w4M1tr
         UDwPHye4EMS8plR3C2SmXmdiDwkx827fHz0QNRkyWR+SPKAty9a/okGDh1fE4KiKf6FT
         ifQFaN7WDWaq+Y/tBQ8iw91YnWpmA7D4yHz0gwoIrgihiRkA5nZSIlnDtKievaJ1Mvfe
         IQpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZIByelen;
       spf=pass (google.com: domain of 3q14eyqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Q14EYQwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id t3si89197ybu.3.2021.07.30.13.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 13:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3q14eyqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id n192-20020a25dac90000b029054c59edf217so11752098ybf.3
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 13:17:07 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:ca8b:b433:7c1d:90d])
 (user=ndesaulniers job=sendgmr) by 2002:a25:aaf1:: with SMTP id
 t104mr5639126ybi.516.1627676227659; Fri, 30 Jul 2021 13:17:07 -0700 (PDT)
Date: Fri, 30 Jul 2021 13:17:00 -0700
In-Reply-To: <20210730201701.3146910-1-ndesaulniers@google.com>
Message-Id: <20210730201701.3146910-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210730201701.3146910-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v4 1/2] Makefile: infer --target from ARCH for CC=clang
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
 header.i=@google.com header.s=20161025 header.b=ZIByelen;       spf=pass
 (google.com: domain of 3q14eyqwkacaj9ao6qhjeanockkcha.8ki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3Q14EYQwKACAJ9AO6QHJEANOCKKCHA.8KI@flex--ndesaulniers.bounces.google.com;
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
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Arnd Bergmann <arnd@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
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

 scripts/Makefile.clang | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 297932e973d4..f983f65dd9f5 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,6 +1,32 @@
-ifneq ($(CROSS_COMPILE),)
+# Individual arch/{arch}/Makefiles should use -EL/-EB to set intended
+# endianness and -m32/-m64 to set word size based on Kconfigs instead of
+# relying on the target triple.
+ifeq ($(CROSS_COMPILE),)
+ifeq ($(SRCARCH),arm)
+CLANG_FLAGS	+= --target=arm-linux-gnueabi
+else ifeq ($(SRCARCH),arm64)
+CLANG_FLAGS	+= --target=aarch64-linux-gnu
+else ifeq ($(SRCARCH),hexagon)
+CLANG_FLAGS	+= --target=hexagon-linux-gnu
+else ifeq ($(SRCARCH),m68k)
+CLANG_FLAGS	+= --target=m68k-linux-gnu
+else ifeq ($(SRCARCH),mips)
+CLANG_FLAGS	+= --target=mipsel-linux-gnu
+else ifeq ($(SRCARCH),powerpc)
+CLANG_FLAGS	+= --target=powerpc64le-linux-gnu
+else ifeq ($(SRCARCH),riscv)
+CLANG_FLAGS	+= --target=riscv64-linux-gnu
+else ifeq ($(SRCARCH),s390)
+CLANG_FLAGS	+= --target=s390x-linux-gnu
+else ifeq ($(SRCARCH),x86)
+CLANG_FLAGS	+= --target=x86_64-linux-gnu
+else
+$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
+endif # SRCARCH
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730201701.3146910-2-ndesaulniers%40google.com.
