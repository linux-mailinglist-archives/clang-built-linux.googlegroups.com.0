Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2NYROEAMGQEGZU246Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9633DA96C
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 18:50:51 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id v128-20020aca61860000b029025c02a6228csf3245099oib.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 09:50:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627577450; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDUVCrtF9EQNKhI78Pna1ZQx/H5qnUWNGYej767s183/NDUjFfKzfNdbRrHdj6SN4J
         pZQlGIUroX9ZmcBA+D7cI5hujVzWai8CtzrNBzyXc+N9vm4aNxAdJtKJAC4/YBRpE9KX
         OgpMgPBHNKUfyqd/E21icDEG3Dyv7cQsybqody9FQtdhKZfhve5z8oTQSscPOYBXVvLD
         7dm+f+duibQU92Eb0beBBPr7WD6AicmVsyQE+X9rYKmn6ZCvEEPHAkfgeiq98GhmeUpm
         0LfRry6YHj+ttVTO05omLI3DJNkTb1Gy8NlmjNrig7hFX/hanhcaVUIBLgPn4O7u9n4d
         b+wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=DzcT86YDB0GaMK7EbVFS1aIZ2Ep9lFkuRgBf8FjhqK8=;
        b=o6Avp/ioXT0W+cfu/gza9aE4iuAqx+IhFXpHG1NH0djDgeRfyqe6hMSxs+2PzquPQY
         FLGb42ij9HHsVs/w3TrS32BLv4ERM7XK7LXp0uZxF5RNeks2lCxO42j2BMUMLPQ61BZ4
         hWQ5D4XGhY+lJctlVdAW1LUag85jlVkcHGc1+sUla4Ig/NW0VGeb7hkrQZMM8uO7dMJ/
         heaA+44Supeft2Bxq1RrOHDPYAKC8XLUHjYVsukNJPNtf5l0xUWUJCHBqvxEXGC13r4E
         LnfcU03ixMHg1SqAJO7qaerhB3X7nMvouMND4LqCUABafD5Ljbgtw5oso+E3WLbbp+BT
         ljWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BBNZEUxp;
       spf=pass (google.com: domain of 3anwcyqwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aNwCYQwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzcT86YDB0GaMK7EbVFS1aIZ2Ep9lFkuRgBf8FjhqK8=;
        b=D3Ns1tgF6QbmH3gma9WQlve9DaJL6wf+VZsoAUBUNtJoe1Y+6tEE3ClQ5/Swjzdiw2
         fyRhHpKzw2dmMxNG2pL+uObAMNHbKI3BPDlhrmK0DmpV/7EJM275HXVQpWzhBR03Cn6D
         +9T8NxFvywzWPsPeuQRgmw8XPKjVEQwA96Xl5Izwr8KFOHvsawIHwkNg/nhR7tqKXyyZ
         0vG5YBz0/TSloxzfs2mO/vRERB7rzAgkUoZDKKb6ym6w2X/kdcRmhyPW9gxIzThOM5Qq
         Lvyk48sim7r9SGrxvUaH7pzd1ODQmalQekN9cid47TGaSuXm4s2AitU6LMJKNHZE0Atn
         AV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzcT86YDB0GaMK7EbVFS1aIZ2Ep9lFkuRgBf8FjhqK8=;
        b=XJZkN/LPdgRME1nt/aWnxxpOrqDa6Qpg1fu4FuJIM9NUsVT3uDzZizDo60FEcVP8RN
         DZxsS/p+/d2/fHJvxqRvCBsKqAUQwyNzAK81WSogtOXl5aFX09tn3oeN8DSVlE6ZM26v
         7RE3SaSWyq7J3Mt+SQ5d9P7kTslVUfIogh67u/EYTU3b3e1VlMaVYvAlpZXT2sHiSPtC
         mOSHctpy387dGqJ9KbC7FTbKwCdc1JbkrdARzhTNOz2W68XiqDovI2dGY8zmmm7TfEzB
         NVxKlD9r2TdNFcZKhp8dbz/yLlRPDVPAlNQ7Cy1zLFqrVw6ZR5G7ac0ZxYg8HPIimrWT
         xmyg==
X-Gm-Message-State: AOAM531bB2uCnaJUdPMcACV/SEaz7n0F7WMgcY0p2cXeowYRkuhqwfGv
	ZRebJ22G9H0c81s8+1zZLn4=
X-Google-Smtp-Source: ABdhPJyIm+aiUVWj7ReBVoTUwGoytzfiLBj3gC9b6k4KatPJAQVpKXfXGRSu1Swv8+F724ObCDP7og==
X-Received: by 2002:a9d:7844:: with SMTP id c4mr4083788otm.213.1627577449310;
        Thu, 29 Jul 2021 09:50:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:b84:: with SMTP id a4ls1574876otv.9.gmail; Thu, 29
 Jul 2021 09:50:49 -0700 (PDT)
X-Received: by 2002:a9d:67c8:: with SMTP id c8mr4052916otn.80.1627577448927;
        Thu, 29 Jul 2021 09:50:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627577448; cv=none;
        d=google.com; s=arc-20160816;
        b=DAcAE7+fvMidNGiZKkAe7RL3iGShPAcUnWo6jLLLRUG0U/xiW3TDbiDlPDKX27XM0/
         2CTpE1byABfL7QYBKUJBtIJKom0NjyyCEPkOAAIyd1i2FXr5n29avQqTPa/Va85sJK/8
         ZqKWdp0AXFnDuataGvO2C60nd5Vm9gawNCijNtSoh7zboCHkdsEu31wucpE/MSLpKGXD
         93vt+J8FXH3Cq067GoHfTO1ik2USqy9QvVw/cEAcxXmWvr0YHlcyVnz5mmM8CsIu/YNQ
         ubJXti7V5pWJSMwfxTh0GSQgc9MWFc9H83kz/pvGRsOaCiE4IgVRUdlZYdkWy0P0Kxhs
         JzTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ylYcXn1I/C5/EruhE/ifxy8Gri68DuJqkeFXLL+fN5g=;
        b=fr58NrS/yiEdYv7UkVl5tjBDMYxCkNEIi7BYah6mnOLCDcU8qOBBUIYEqC3lZ2/kbl
         qO6jMetYGSudo8LsiVMyjkdn5c9X6LaPdGFV3duFvzmEWH/jqzhIBxiWBW1arXttzKOG
         oRdFZisZcU30bl+YJwJU+/kbh2Id/z7NxAkksAK3xhB071iixP9AXb8zf1SPs8/IzwWE
         WEP1dFosBu8H8HUElaOhkqDnMhuca6S/hNHjJAJnT4nzOdzJ/ioMFtgvSK6GpdkI70NJ
         Df0SFSjWNtLzgax7uOqZ0DQWejFHkmaBIw1eHHVx3KHlVSVFKnk0nI7ZCWmQ9CwKA6sq
         eK1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BBNZEUxp;
       spf=pass (google.com: domain of 3anwcyqwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aNwCYQwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id o10si248184oic.3.2021.07.29.09.50.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 09:50:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3anwcyqwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b9-20020a5b07890000b0290558245b7eabso7326006ybq.10
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 09:50:48 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:8132:32f4:cf29:1268])
 (user=ndesaulniers job=sendgmr) by 2002:a25:31c5:: with SMTP id
 x188mr7825846ybx.185.1627577448502; Thu, 29 Jul 2021 09:50:48 -0700 (PDT)
Date: Thu, 29 Jul 2021 09:50:39 -0700
In-Reply-To: <20210729165039.23896-1-ndesaulniers@google.com>
Message-Id: <20210729165039.23896-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210729165039.23896-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v3 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 CC=clang LLVM_IAS=1
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
 header.i=@google.com header.s=20161025 header.b=BBNZEUxp;       spf=pass
 (google.com: domain of 3anwcyqwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3aNwCYQwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
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
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
(normalized for a few different targets).

If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.

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
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
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

 Documentation/kbuild/llvm.rst |  6 ++++++
 scripts/Makefile.clang        | 32 ++++++++++++++++++++++++++++++--
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index b18401d2ba82..aef1587fc09b 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -46,6 +46,12 @@ example: ::
 
 	clang --target=aarch64-linux-gnu foo.c
 
+When both ``CC=clang`` (set via ``LLVM=1``) and ``LLVM_IAS=1`` are used,
+``CROSS_COMPILE`` becomes unnecessary and can be inferred from ``ARCH``.
+Example: ::
+
+	ARCH=arm64 make LLVM=1 LLVM_IAS=1
+
 LLVM Utilities
 --------------
 
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 297932e973d4..a1b46811bdc6 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,6 +1,34 @@
-ifneq ($(CROSS_COMPILE),)
+# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
+# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
+# target triple.
+ifeq ($(CROSS_COMPILE),)
+ifeq ($(LLVM_IAS),1)
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
+endif # LLVM_IAS
+else
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
+endif # CROSS_COMPILE
+
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -integrated-as
 else
-- 
2.32.0.432.gabb21c7263-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729165039.23896-3-ndesaulniers%40google.com.
