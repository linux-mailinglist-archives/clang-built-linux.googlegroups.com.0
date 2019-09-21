Return-Path: <clang-built-linux+bncBAABB3UMVHWAKGQEQKVYKDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 04930BCC8F
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:38:08 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id r144sf1431189oie.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:38:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343086; cv=pass;
        d=google.com; s=arc-20160816;
        b=FxXoLbTzEefXzvvZL+NiqDJuxJNiIR52nnlDGwrYGNrimn0GD3QX/1mCnbQpycdrAV
         BdaeR9TStwVkoeJTe0uktXh0xbcv5YGuvHVA6uHjWCI9wQUP9O6Wckr7AjV6Zi4s8KTm
         PSrTR4AIfzyNLIVQBEYvaJqGhaqDqyGfA2u/s8WvDjJjimkzppHo4IFm8ExFIkM3N3+b
         hJjjPNlvSTvD0Sp9OqGipQq22T0NE6hL1mc/PRPPwm2v9ow3OBp+ESsiy68lWWTfBagP
         fZVJD6M9XEuxHg7nUYrlwNTRryB6N3srObjl3OR7JqiJ2hih3XimWxaHQi/hXu8vu497
         TGUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=oh8a9wQFpTUjtSeXz0rmH2CetDZ/2XHnge1U+swXunQ=;
        b=QLbvZ22TrN+AycjVrExvvP2QCOv2x4hBZNYD/Jn7RzFLDccZ0jxMgg5Fis13sgFKwy
         8bjJE0NmnPm8sTGucSVmUrKxxdUDQUiatEIypPcyk4woDXlAsEsC/lnihWPKzPolwfhL
         qGrCUShxBg4nPDdh2k+auW5uyWWCVnWE/4+S0edH+N4VBQwS/tU5FoJ4kfzUTZnRvEX7
         j51vdTaDlyy6jDPsbKonHF/YwlI5nXzLae5leXWkbh7ZB9/sRQlXlDFeT2FOIIMV/Xge
         qSXj6iX/q9uOjIPg7JpDeesMdBW39JspzIPyaR4glgOPsUrnnJJbABtMY17s440WG/KC
         zf+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=M2KoWggI;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oh8a9wQFpTUjtSeXz0rmH2CetDZ/2XHnge1U+swXunQ=;
        b=p7hXmk61sDbLedxRhj2FcDL4m4Vz2CBnirMob8IQ7xhAL8WNOa8rBSC+frQQpvMq43
         bF8V0n/QhwEgeozQlchiOm7aEpi/5N7oqOK8FUfmbjEjlHZVREmfmSHdLkEWL4wmKT/k
         4IRJPQ44eauGO8ejqfpZkZkiE6TpoLHIydQ0qMxpMIzojqnV23w9L4tGEB7RaOPQu8/0
         XyAkGM4c5Ct9dB55aWaIUu8RQadLH8iSlSf5NlzBqYSc5adevY4KmOF/Gj0ANMI81fZ8
         vudKLEUZV+SWYmwJ2O6onhjLyKbQabL7FOoNq8Py9qmuXqiceRYflOjXj/TroIWqngze
         rSfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oh8a9wQFpTUjtSeXz0rmH2CetDZ/2XHnge1U+swXunQ=;
        b=e2IwykIBcqwG8N2MHqaiedlwlnLy/faVj//+1gBbQ9EoALl8NwoExSP1r0NBf4tEgJ
         eeP8bmVMlOrX3qLBY1wK1yD7YFf+fpFYDRBTAwzBD5l2IZXuAFfepDa5c7v9Ut5QlKyg
         HvpAlVn+FrNJCrA1Z9xdUVb8G8T2jRtH2W/DMZboCgj+Fg29IGVzj02VLgS2yjm86wwd
         XuBWgyLUgz2Lb96mKQ/+ng2b/xG+RJVgQ8b22SqXery+vNbzObTVnkXEfe3HJw+88q/w
         91/dXK8uaplZaw656BnO0jYhoqYoYDbLkRovTY/IuYZU9cLzKRvV6xayS8XM4ze4AJeZ
         dv5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWB9gHEAwTVblJlQ5IaNDUjxbaj+/JVnYAgxb7ZdZFRuOg27tY+
	10er0MM5E4uxTO8HZgkO0zI=
X-Google-Smtp-Source: APXvYqz2X9YyHafp8QgMzd1eTmVKiIhBr0PfVQpctoRf8qz6svUV0GSHDIJJFF8mak3acGvVbEiydw==
X-Received: by 2002:a05:6830:1d6e:: with SMTP id l14mr2704151oti.3.1569343086522;
        Tue, 24 Sep 2019 09:38:06 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3ad6:: with SMTP id h205ls555339oia.15.gmail; Tue, 24
 Sep 2019 09:38:06 -0700 (PDT)
X-Received: by 2002:aca:b2c4:: with SMTP id b187mr914329oif.93.1569343085966;
        Tue, 24 Sep 2019 09:38:05 -0700 (PDT)
Received: by 2002:aca:5007:0:0:0:0:0 with SMTP id e7msoib;
        Fri, 20 Sep 2019 23:50:24 -0700 (PDT)
X-Received: by 2002:a17:90a:cb98:: with SMTP id a24mr8841858pju.124.1569048624181;
        Fri, 20 Sep 2019 23:50:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569048624; cv=none;
        d=google.com; s=arc-20160816;
        b=CFOQqIW5002hmuPGch5m986GOXKcI1DL/Vcrda0ultcPkdmnw7kLnfdZfEzxu6hqcY
         Worn6EmxeWhPkUAvBKmyUpL26CsNGwucBVQ5p7p5b7Cf1c0TNLYykswY2uUuxHe9Rf18
         rbnbzjmoG5DRFPS+qu5BLObTimWva20mGyo0S5jMEF/ZDJEgJDqblTxqmAEZLXfW0BKL
         ksoCpwv4a7Yt/Vpge78LmpdtAnz1a+r/UGHEfgDlRtECFOh7sJfcL2NPru+HcqSiMWoU
         GaOQn7bYKwpbF3s2ipRJwQc4viAK3lm6JUW1Nrvg+2Ak6zpqprF24r6s8zoen48XCI6c
         ssLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=tas5o108IC96vrbiA6E2q4q/CHS7VyOE8X05kkRhjv4=;
        b=usk3Tbm9pxMRdKZRAQzL9xmwjbBmjoZFUjI8QkDNCzcTyyFzkYxQiAeYYX5jONSnby
         S2XkZfvubvK0XruGmpNgL+Azy+kxCnyhQuwpqwHMkE7ouamcZg2XW8YWKj7vBIwc9dte
         dRBr5i40iUr/N9qV/OcSZTwki+Q0m1HrnBXhQdHbTBGjF6eHz9sqOwVr2B0DMmcKRUBH
         NOUDW1W63OQF+FP4xTNf9c7WgJ5U6eLCCwlhCrrPU0KjG8Md+Ml+b46vze5nHw6Mn52k
         jPpC+BhUBv4A4LfTI4SzLaEla8PDbL6DPKzeGQ9DI8/ucLOo1FThLW/k6bMh0P96cHMz
         JhqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=M2KoWggI;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id j12si349357pfr.5.2019.09.20.23.50.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Sep 2019 23:50:24 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126021098169.bbtec.net [126.21.98.169]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id x8L6ntFu016571;
	Sat, 21 Sep 2019 15:49:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x8L6ntFu016571
X-Nifty-SrcIP: [126.21.98.169]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Michal Marek <michal.lkml@markovi.net>,
        Paul Mackerras <paulus@samba.org>, clang-built-linux@googlegroups.com,
        linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Subject: [PATCH] kbuild: remove ar-option and KBUILD_ARFLAGS
Date: Sat, 21 Sep 2019 15:49:54 +0900
Message-Id: <20190921064954.11196-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=M2KoWggI;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.78 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Commit 40df759e2b9e ("kbuild: Fix build with binutils <= 2.19")
introduced ar-option and KBUILD_ARFLAGS to cope with old binutils.

According to Documentation/process/changes.rst, the current minimal
supported version of binutils is 2.21 so you can assume the 'D' option
is always supported. Not only GNU ar but also llvm-ar supports it.

With the 'D' option hard-coded, there is no more user of ar-option
or KBUILD_ARFLAGS.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Documentation/kbuild/makefiles.rst | 5 -----
 Makefile                           | 4 ----
 arch/powerpc/boot/Makefile         | 2 +-
 scripts/Kbuild.include             | 5 -----
 scripts/Makefile.build             | 2 +-
 scripts/Makefile.lib               | 2 +-
 6 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/Documentation/kbuild/makefiles.rst b/Documentation/kbuild/makefiles.rst
index 6ba9d5365ff3..b89c88168d6a 100644
--- a/Documentation/kbuild/makefiles.rst
+++ b/Documentation/kbuild/makefiles.rst
@@ -954,11 +954,6 @@ When kbuild executes, the following steps are followed (roughly):
 
 	From commandline LDFLAGS_MODULE shall be used (see kbuild.txt).
 
-    KBUILD_ARFLAGS   Options for $(AR) when creating archives
-
-	$(KBUILD_ARFLAGS) set by the top level Makefile to "D" (deterministic
-	mode) if this option is supported by $(AR).
-
     KBUILD_LDS
 
 	The linker script with full path. Assigned by the top-level Makefile.
diff --git a/Makefile b/Makefile
index 656a8c95789d..88b180b2cb64 100644
--- a/Makefile
+++ b/Makefile
@@ -498,7 +498,6 @@ export CFLAGS_KASAN CFLAGS_KASAN_NOSANITIZE CFLAGS_UBSAN
 export KBUILD_AFLAGS AFLAGS_KERNEL AFLAGS_MODULE
 export KBUILD_AFLAGS_MODULE KBUILD_CFLAGS_MODULE KBUILD_LDFLAGS_MODULE
 export KBUILD_AFLAGS_KERNEL KBUILD_CFLAGS_KERNEL
-export KBUILD_ARFLAGS
 
 # Files to ignore in find ... statements
 
@@ -914,9 +913,6 @@ ifdef CONFIG_RETPOLINE
 KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
 endif
 
-# use the deterministic mode of AR if available
-KBUILD_ARFLAGS := $(call ar-option,D)
-
 include scripts/Makefile.kasan
 include scripts/Makefile.extrawarn
 include scripts/Makefile.ubsan
diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
index 6841bd52738b..dfbd7f22eef5 100644
--- a/arch/powerpc/boot/Makefile
+++ b/arch/powerpc/boot/Makefile
@@ -50,7 +50,7 @@ endif
 
 BOOTAFLAGS	:= -D__ASSEMBLY__ $(BOOTCFLAGS) -nostdinc
 
-BOOTARFLAGS	:= -cr$(KBUILD_ARFLAGS)
+BOOTARFLAGS	:= -crD
 
 ifdef CONFIG_CC_IS_CLANG
 BOOTCFLAGS += $(CLANG_FLAGS)
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index e31fd6a8b2a3..956668239ef5 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -143,11 +143,6 @@ cc-ifversion = $(shell [ $(CONFIG_GCC_VERSION)0 $(1) $(2)000 ] && echo $(3) || e
 # Usage: KBUILD_LDFLAGS += $(call ld-option, -X, -Y)
 ld-option = $(call try-run, $(LD) $(KBUILD_LDFLAGS) $(1) -v,$(1),$(2),$(3))
 
-# ar-option
-# Usage: KBUILD_ARFLAGS := $(call ar-option,D)
-# Important: no spaces around options
-ar-option = $(call try-run, $(AR) rc$(1) "$$TMP",$(1),$(2))
-
 # ld-version
 # Note this is mainly for HJ Lu's 3 number binutil versions
 ld-version = $(shell $(LD) --version | $(srctree)/scripts/ld-version.sh)
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 611bda95ac5e..f199341f04eb 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -395,7 +395,7 @@ $(sort $(subdir-obj-y)): $(subdir-ym) ;
 ifdef builtin-target
 
 quiet_cmd_ar_builtin = AR      $@
-      cmd_ar_builtin = rm -f $@; $(AR) rcSTP$(KBUILD_ARFLAGS) $@ $(real-prereqs)
+      cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
 
 $(builtin-target): $(real-obj-y) FORCE
 	$(call if_changed,ar_builtin)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 23e524027740..15895fd4ef9f 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -238,7 +238,7 @@ quiet_cmd_ld = LD      $@
 # ---------------------------------------------------------------------------
 
 quiet_cmd_ar = AR      $@
-      cmd_ar = rm -f $@; $(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(real-prereqs)
+      cmd_ar = rm -f $@; $(AR) cDPrsT $@ $(real-prereqs)
 
 # Objcopy
 # ---------------------------------------------------------------------------
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190921064954.11196-1-yamada.masahiro%40socionext.com.
