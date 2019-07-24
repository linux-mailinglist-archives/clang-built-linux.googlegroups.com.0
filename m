Return-Path: <clang-built-linux+bncBD2INDP3VMPBBSO54PUQKGQEG7I2FJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E666A74258
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 01:50:34 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id e25sf29611132pfn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 16:50:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564012233; cv=pass;
        d=google.com; s=arc-20160816;
        b=zKcZCuWayMrvnYFgw1qvoS0cTYa0QJUL5uAhLke24JFEyLyh4YIRqV5RbgzHyaCODj
         t7gpribjmRh7iINqJx8r3K1BeB+4IUEbwLEV1sQp8Apv+XaFgk1GyppcB4qsWsPOF7WP
         YBgTs5y2e82tqw7U0opIoqDYc8AgYCjxh27Z/MbKi6G95CBXgyO8miSKQ+7WF5a6FdVK
         Wfi25jtJ3LKmgAQdfeuyECkD2/YKunl7r+Uzp2p+004GobOM7jTBZ3Is3WiB1I2gFqeY
         w9Kf0f3fHudIMgoQpGAJhbrRTDQiil+A1Mn0wAWuueAaxiqBnjG7P286gGPuJBbldTQb
         RyZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=m33IEImPFf2XEmahwaDdJo5NpI8vfR/Ee+nKNMBPhVw=;
        b=jgVNCA45D0hCjvpsfC3Yws8+tmAVTkRir1fdbFRztk+Dhit1m2RTgNMgO3bZ2xHF/5
         78kKythKBNZVFPRUHUnBtNjaTw7xvZnGJThaMKb5kFJ7BWeS11jRqXAZ4ugiNwHmGWir
         1Z+evOPwcZPq9uOqEvpyx4aoe9ulL8vTxs6SRgLNavxO7L/26IDinX/mZEZTHjh6C9aW
         I2CSTZp3/eyvybIHONiPUt2P3f+ZHQMcUeUJKERpzF7cwXjv131/QsE2zzVa97raly/b
         nYGCOp4Mq3ziDxxkXVq6IPKST1TD/3Gs5EHK3RC3QCygCz6i5J4UxWcarmCmJoUuGjzm
         uXQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kuRE7qFm;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m33IEImPFf2XEmahwaDdJo5NpI8vfR/Ee+nKNMBPhVw=;
        b=iecPwTc3vytrkXaIX+mob9bPw+5FCYnaRtb+EgSKgUASrb+uel1jSRmmbiMXAvnSIj
         opbn7fk6ujFsBAX4e0c7kr3KsyMn/0oxaoIC4BX612T/9ZcejTvJc6wZmIOZjuJgOSYA
         tcMlSCjlo7vU1vcUUo5TMUPwMxXCELcBAZyLu2Ts7QJGEoZDwTP60nVnzAG/sZMFhhZG
         5Xw+ERIX/gjfYZgp7NMZcWpNJxPTYDzPiDf+HVY4ZTh9zPPoME5fNpdHH/ciQfA65LyJ
         EPXYU+Nc3J4Kn0hTUk6YxEvLzo87jzD2wvHvwDdQu6ihFfOtPDikrmo2fczVDdUIf5ha
         OGlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m33IEImPFf2XEmahwaDdJo5NpI8vfR/Ee+nKNMBPhVw=;
        b=awjXOd/bBIH/fOaLtIKvCktuOO/fzi5SYS6Wb2Gg7W3bOeX81qo68SU9yXQh1/z/xW
         sjjatTtKjUICw2N6yZnuQ46u4H3QbjcAOrolbTikaCSgU9L6m1mwoDQOkoFrDdaUC6FS
         Q0khvAmbtzro4WfvIOt1LrBIUhBd+K3knS1aGWZp2Ri7eI12D1Vu0R+TTxgqJs3qXHZ5
         BDhIDdkaqqsowlkB7shXlECjwfd2OGSDsS1zZEEkuis5fpHJfdLHNi/bsnDq3NTo+Tx7
         Tr/ghZUD6IJGJWGMIMPnHkKAW5D41umkIxX4zNBNcjpiNXMknsOpZrWBqFMm6HlbFBVt
         khzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTKqvHzHCXRcWuhcpDCW6GvC/3ftpISyO6kJYDBUjCKLi3ZsFz
	8nHdmGlBpKbWkyfE1wANjIg=
X-Google-Smtp-Source: APXvYqxNw0+v93jlkDGe8/ANkWAq4tq88LnBTCeXGjrthju3vF2xRgeSPVN4uvfSD5brv9QOEHANlQ==
X-Received: by 2002:a62:2ccc:: with SMTP id s195mr13658434pfs.256.1564012233321;
        Wed, 24 Jul 2019 16:50:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a70f:: with SMTP id w15ls12649680plq.7.gmail; Wed,
 24 Jul 2019 16:50:32 -0700 (PDT)
X-Received: by 2002:a17:902:8c83:: with SMTP id t3mr87113707plo.93.1564012232979;
        Wed, 24 Jul 2019 16:50:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564012232; cv=none;
        d=google.com; s=arc-20160816;
        b=t5GKyCovAlB93Lx+UnfsY77Bs9HH/T690Os3Ccwn0jFTB2kTh//lucXzsuGGapoq0t
         SwXqyOQAg8js74qHYXm3sDc1ftxpC645+vSFgtw9kAeqXiXRETmug1Xo8y71BrgjbwIH
         q8q9gdN8DPqMrQk8acgCaDeb1BBPXmwAp4i/JiBCBk9wbNYC0+hp7dVFL/7SSVkZ/J9a
         Mpa8p9FQY44NFnANpeh2bXXlAcmInL/GbKcGLTDe/KYYMOAlKi0Z19ZMWsJoHMbNPFDY
         NJ9RvaMzAU70u4SLX196lXCcg545X+GHBMo/jvCTGkVEwyo9r0Cad4+AcRwEEOIwpxYF
         Ojsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=SBjlbYIuuSYtSCBBvyjicZtrQHQMj9xf5Mp+j4uWFAY=;
        b=hpZxnoSTxjmgXMvH/qSaip/PQM4N0V88SWHGccHaln4ejIyG0odRjthSVmjZ3hEi8N
         NpNuxSgAGe2dHe/YBbGaR4QaHY+gG0bvL4GlL0ysHuLB8dYeDEvBE7po+RbJEFcUQ85v
         U8M+8Puj3zoXhaHpM65uJo6BOnsUDdulK4pklcu5L3IebCDUzN0JEIWfXGiXDcy8Bi2i
         cevFmMwuHH7tOL/b4b0adSrGwEZYKzybiwfxEN/GoWQtmlZ8GOcJo9cQQnEV7avje3s4
         L2wyZCyZC5LCqbIaamdFGsKrvdY2SXFZowjk/E/kpTshXglRK0DRrm9oqtx6LrOkQ6NB
         iRDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kuRE7qFm;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z9si2188008pjp.0.2019.07.24.16.50.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 16:50:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id g2so21720206pfq.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 16:50:32 -0700 (PDT)
X-Received: by 2002:a62:303:: with SMTP id 3mr13671104pfd.118.1564012232564;
        Wed, 24 Jul 2019 16:50:32 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id s185sm69207899pgs.67.2019.07.24.16.50.31
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 16:50:31 -0700 (PDT)
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
Subject: [PATCH] kbuild: Check for unknown options with cc-option and clang in Kbuild
Date: Wed, 24 Jul 2019 16:50:30 -0700
Message-Id: <20190724235030.131144-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
MIME-Version: 1.0
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kuRE7qFm;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::444
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

This issue only started happening for me once commit 589834b3a009
("kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS") was
applied on top of commit b303c6df80c9 ("kbuild: compute false-positive
-Wmaybe-uninitialized cases in Kconfig"). This leads kbuild to try and
test for the existence of the -Wmaybe-uninitialized flag with the
cc-option command in scripts/Kconfig.include, and it doesn't see an
error returned from the option test so it sets the config value to Y.
Then the makefile tries to pass the unknown option on the command line
and -Werror=unknown-warning-option catches the invalid option and breaks
the build.

Note: this doesn't change the cc-option tests in Makefiles, because
those use a different rule that includes KBUILD_CFLAGS by default, and
the KBUILD_CFLAGS already has -Werror=unknown-warning-option. Thanks to
Doug for pointing out the different rule.

[1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
Cc: Peter Smith <peter.smith@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Change-Id: I3bb69d45bb062d1306acbf19bc0adfb60f706442
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724235030.131144-1-swboyd%40chromium.org.
