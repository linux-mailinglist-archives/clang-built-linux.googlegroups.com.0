Return-Path: <clang-built-linux+bncBD2INDP3VMPBBFE647UQKGQEVF3METQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id BD29E7531D
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 17:47:33 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id g21sf31140124pfb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 08:47:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564069652; cv=pass;
        d=google.com; s=arc-20160816;
        b=man9atJh43hQ2LKq2JWJFxtXK1ZzmlinEfpU+NGF3oVNUXLeYMA19czcR2mwSCvAIh
         o9o4Fg0XBNEaHhW26FXxIcR2rL3ZBwEoKSzSEShiNlBtXtkZvTjKCPBRYDPpSW+12f+a
         Hg1lXw9sw1K3SzpJgnYG7PRligh3saDbphRHx2ig3+GRGugREIeaSimEKFH5ZnDNpa4n
         zeb8uGpA6lV1GwCaSuLwBoSxwN31yGWqkCd9nkj2EywXcPQ38PzGMrAijLbk/nj+jHty
         qUZvoV0fOb4yGsTyLLItDB2JnN6OXfUgIAJo7yycRVPQt+MxCKr7JtIvMRzqXX7sQlrA
         FKzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=AwRMZIAbSdKzHE8KO1s6K3j5N1RG765HpD89YQplxbY=;
        b=H8sC/jMjgDWv6X3qQmNOVFU35DcUeVaTweOuyzlBZA9YD1Un88MAlBPDwJ49UMx60J
         1dyIhxFy24AF2zo4Dwf7aocUwIRV+vroakNFJcwluVPV6wU64xYZin+rB5typwPUkPFP
         HvWEvn05u9DxfiR0Ggvw8LhWAMp4A4cMzdyB0WiglDKOwDap9WDwKQgIOUg9fda/EUTH
         aaOfOrXXhAqw/kSBaZTJpWXP8vFRRrTFOk8nxAMeo8kxXJnCo9pydsLeg8imTBhxobEn
         a1Fd9cKD9CpSAc7iubxwXsW5KmtJ8vWqto4XRhLIfLkxGLTZn8GKQxCancOnRnX8BRz+
         mCIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ean5MHBi;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AwRMZIAbSdKzHE8KO1s6K3j5N1RG765HpD89YQplxbY=;
        b=AYSfshEemJ3KR5nNTnOP5EmdoeFuc2pgLmA/lgkg/MY47hWltQ1wzOKQ2NmB7x3SMH
         qN7tkwQLw3aY2djcF8LcEVF4Ks3aCidNTJEoIxUCrBey8LqFkHczDCFPNjBuybkKVKNL
         dPKz5Gap5i+adUTU8kzjDviF3IfUPiJg3tMrOtsnx9sThEgEtkFUWNAMU4TMNZQBQMCo
         pyjgJE4jIPZ7R9R1RkIsWdcDTbKdrPRumhWPKssWhSj0bCWBcXljXfSnzoUpbKqCGpQ5
         2WTcKcik3xBSRSbE9XrnC2rBNHrJ/SwxECJqF+nGAn5SuXtdCAKPeqMTnzz2ZUbD83Io
         nx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AwRMZIAbSdKzHE8KO1s6K3j5N1RG765HpD89YQplxbY=;
        b=VDzDmEOWHdmuMwdwURGpOsnH1GVynLSBH4AqCetgpjZnVlZIPLn/7XmuRQ6TN1mN2y
         gxhdXEWazE0QUQ8hOPSRBEUXt9EO5aTkoxw5DDtqQ+W50C7VI464e5LRY7q2V6PxSs6n
         tnw/6wAKLIDngWiPpTVVIHbjN07l4cXZp7HAWDs1dyXNl8xPoJm2DIclCzd4oA4Nl+R6
         NALcNfu/146P9S8Au7Y1sRUZbleKDj+0k7smpSC12KPt7Wxp9RSZlQ0CsQ6hAgGGsLvM
         /0gJ+OPGcsV8wujoRF1SJiJ/+F7tLRQ5tkbfPP+vKoAHeIARWPvYXtNnYE4k36JiUUF+
         NDJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpZBNVMjR5ZHRQ8WBhSC8fpIuzRFcByAw5eucqS2DtlIv0KNN8
	qlV4dTZOCiKUQVJbJtKUexg=
X-Google-Smtp-Source: APXvYqwZzViLSJG4uWQhKJlUijddn5gU+1L7Qgcafv7vjujEOt6gpdyvnjN4LEc6XXSWfzWffYDKig==
X-Received: by 2002:a65:5b8e:: with SMTP id i14mr85675884pgr.188.1564069652435;
        Thu, 25 Jul 2019 08:47:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3787:: with SMTP id v7ls16603785pjb.4.canary-gmail;
 Thu, 25 Jul 2019 08:47:32 -0700 (PDT)
X-Received: by 2002:a17:902:20ec:: with SMTP id v41mr86557953plg.142.1564069652101;
        Thu, 25 Jul 2019 08:47:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564069652; cv=none;
        d=google.com; s=arc-20160816;
        b=sqfpVNEWtYc/8bvJtTwPInabHZQb/iwrvyyeha0MCNTe1X1rcA12wLP+mXLqwLu1fv
         W54xZKJaIOTQlQAhKgrm1Z8jcoBGSsnVT1Zx21KRYfCrPk9TpUcY+3aBFTPiynSCyEkf
         bn2O1mSpxRZ007+rfIplcEN2rqyYgeGcf2gqEQpiRbsnrs8N3ojcPj3t6l+IZoCDni5C
         yRfFZPQTLKgo+ne/LcceXX57D4ekrCwjLSRRIR4DoBSLr3Vn23xIsDndb8h/rTRrcqlv
         oYivvtJKQko1KxgxfqcSCSf88txYKl0KtMNtZPGMt4wqGBNF0wOTuRsMEUwfMfboZRwm
         RFSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9YuwL0GVl7nYF4rNeboTYpwrDtxx+jHFRpSdYJwSITY=;
        b=Zy2hmfeYLarRkoVl5eZON/RW0cm3qriM+ga4E2UDot3Zan/1ablbWlHFWd3SegVDgE
         0tZ5XgmZa6/8G0/nCbPQJTXQEk1iP02FzBCAXxoL+syZPJPsy2tlhJXs/JecxHjp09Q0
         tu+LMMER6piMzF/9BGydhHr/i3tOl4tZykbwBGm5+hv5VwXfZH3f4fGKlCAFZLLP6xKv
         E/VvEKlNJwQsS9fYuj1nDM4JQkOEM8VfCQpST3QaQ0RrKbHYJALRlsbQuCl9yZ6vq/AT
         G29WEhzwO4vSgy0ErFgcx6zPZWZN18njhqhGT54eDvPO8hd/y8Yo/W0Dq3u2qKUbSrHY
         KlnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ean5MHBi;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i184si1668329pge.5.2019.07.25.08.47.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 08:47:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id i2so23599658plt.1
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 08:47:32 -0700 (PDT)
X-Received: by 2002:a17:902:f082:: with SMTP id go2mr95978482plb.25.1564069651837;
        Thu, 25 Jul 2019 08:47:31 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id r1sm47083788pgv.70.2019.07.25.08.47.31
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 08:47:31 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>
Cc: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Smith <peter.smith@linaro.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2] kbuild: Check for unknown options with cc-option usage in Kconfig and clang
Date: Thu, 25 Jul 2019 08:47:30 -0700
Message-Id: <20190725154730.80169-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
MIME-Version: 1.0
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ean5MHBi;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

If the particular version of clang a user has doesn't enable
-Werror=unknown-warning-option by default, even though it is the
default[1], then make sure to pass the option to the Kconfig cc-option
command so that testing options from Kconfig files works properly.
Otherwise, depending on the default values setup in the clang toolchain
we will silently assume options such as -Wmaybe-uninitialized are
supported by clang, when they really aren't.

A compilation issue only started happening for me once commit
589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
leads kbuild to try and test for the existence of the
-Wmaybe-uninitialized flag with the cc-option command in
scripts/Kconfig.include, and it doesn't see an error returned from the
option test so it sets the config value to Y. Then the Makefile tries to
pass the unknown option on the command line and
-Werror=unknown-warning-option catches the invalid option and breaks the
build. Before commit 589834b3a009 ("kbuild: Add
-Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
but any cc-option test of a warning option in Kconfig files silently
evaluates to true, even if the warning option flag isn't supported on
clang.

Note: This doesn't change cc-option usages in Makefiles because those
use a different rule that includes KBUILD_CFLAGS by default (see the
__cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
variable already has the -Werror=unknown-warning-option flag set. Thanks
to Doug for pointing out the different rule.

[1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
Cc: Peter Smith <peter.smith@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Changes from v1:
 * Reworded commit text a bit
 * Added Reviewed-by tag

 Makefile                | 5 +++++
 scripts/Kconfig.include | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 9be5834073f8..28177674178a 100644
--- a/Makefile
+++ b/Makefile
@@ -517,6 +517,8 @@ ifdef building_out_of_srctree
 	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
 endif
 
+KCONFIG_CC_OPTION_FLAGS := -Werror
+
 ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	:= --target=$(notdir $(CROSS_COMPILE:%-=%))
@@ -531,11 +533,14 @@ ifeq ($(shell $(AS) --version 2>&1 | head -n 1 | grep clang),)
 CLANG_FLAGS	+= -no-integrated-as
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
+KCONFIG_CC_OPTION_FLAGS += -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
 endif
 
+export KCONFIG_CC_OPTION_FLAGS
+
 # The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
 # Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
 # CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 8a5c4d645eb1..144e83e7cb81 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)
 
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
-cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
+cc-option = $(success,$(CC) $(KCONFIG_CC_OPTION_FLAGS) $(1) -E -x c /dev/null -o /dev/null)
 
 # $(ld-option,<flag>)
 # Return y if the linker supports <flag>, n otherwise
-- 
Sent by a computer through tubes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725154730.80169-1-swboyd%40chromium.org.
