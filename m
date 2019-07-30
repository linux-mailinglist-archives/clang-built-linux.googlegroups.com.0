Return-Path: <clang-built-linux+bncBD2INDP3VMPBBRPJQHVAKGQE23IRCHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9CB7AE59
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 18:48:06 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id x17sf71594710iog.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 09:48:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564505285; cv=pass;
        d=google.com; s=arc-20160816;
        b=c7PXx93+3KitmEyz0Ca09o/fQghyAa3ZA2/ceq73pOVbhkBnvCQi9mU1cGkre32Pbq
         pZUK5GNWKeIkggLmcEdppTV7ewtkROcRhuaeWNBzHLQ9NldAe7e4aSSa8ixmQtvgRRlS
         eazTE6RexjzxVquYT+BuO57wIiivSWOOrMzhUttmKbhLW+fPi+oTzzVyLxWIrsBBxMXp
         WaYz0bj89pM2p6JC/3WP1DwhGszum2qvHQigpHxbwb+gM+Wi1ww8YPW/1px7P2UYAxkL
         XS5zmN+guQUoUdsCHjA4o+pzZVFabqktT9ywtT9igkcpY++NbcBKoOxJw55JzFDOFlwZ
         a4fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=V91XfIQ1w2i/qztul4zrVabcius6sXkcUKI/N7mPD5g=;
        b=l9wNk5GfX/soFRShPOmoP0pffKIT6bUdR5Yv9NatJH0NIvGnJT4hRNCQSZXGV/+6eS
         CtlZiwhEL6eiJegVfft1ZHmzPGbFFnGmRh+sgukVi7lJbrFT355lmHU0wOTg6yxzOAyj
         V1lI5sxOn9PEyZxwUnLxViotUopkjt7cSFTj+5p2ftLdfbS/OavLpO5UAlJtEszg3m1T
         YExD2E2UX2qa0Kvmg+9VSMRH8AF6PR3ZkpTPlf0Xcba1qrTnMSyulVq2FbsfMvs7hxKq
         J0GHOwUXf0hCe74tars/Y5+FSd8BiRn0HkteDal0Wwp3oMX4UVlPryjPV5BHeHxSr4XK
         pxtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EZBWItEE;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V91XfIQ1w2i/qztul4zrVabcius6sXkcUKI/N7mPD5g=;
        b=WBVyUVwKTh4KY4LwmoyrxQq0746kURc0rL677+rPp2vC/JCvVRSxBd2S8RgioR4czb
         CiskS2e6g2Verz1z/060Y9EiPNPDT9O3d3IICGkPZpqUByLZu6W5R3L9/DIyxBnFOnjV
         KlrIy8qAWpmsGvjZxL/mXUF7Z27uzLW8DfBrWzmTgJaJhYcdiSfZiE3K/AB8Y9OBwUAM
         MJfZx4x+WowmXyKn2OZ6t7Gw/JdibZ/HTfkQlovumvICf4VdiDh5hoxsu5rp6VwQ+xKH
         iLA5WLcLM2YPEc0BgitUz0DjfcWkh+fyKz7O1nN8MloE9gZ5DFWouv7/7IHpC0yYm3el
         xHkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V91XfIQ1w2i/qztul4zrVabcius6sXkcUKI/N7mPD5g=;
        b=kvCEygeN4lqh8IaHcZCzFmf4ybByorsVuW+2sSWcGJQs3BSegcmkTbXMF1p/z5FheH
         Tr37TIygDlAbeBxLSUuONHCoLwYiYOeLG6SjUt13/KLZ30jxmZglbxd7XNGePJvglZjr
         DxE0PsX8Bb8eDftHSl4ke2QBqv/HY49TPxZenKRmW3abfj2DhgsuHCATlI3aTPMEf+Mq
         nS8FZfz6wRR2lm6j6C/KEXExY2rcySD6rLdl41puEPpIoZK3zyqvd3G21Wi8/yNnz8/P
         ynHWQVs+S1+zb4hj5AE02g56KfsMh+zbv4YeX+QX0ocaw5zpwS7Ue+8qpY4GgiJflWFk
         PS7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIOH/LFGtwm18anIlc16bmAH5kka08XDQi+jnLdpAaeDlO20VS
	hjC7SH1R0tFDjJRqslAApLE=
X-Google-Smtp-Source: APXvYqyuX7HJRFzcAiaPjANZKGGKy+9WTm6JMkjwTHSkWlujbgMlq9UuW/fyZiCHKdfg9ichdyEklg==
X-Received: by 2002:a02:a183:: with SMTP id n3mr124731686jah.74.1564505285298;
        Tue, 30 Jul 2019 09:48:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7124:: with SMTP id n36ls8808371jac.3.gmail; Tue, 30 Jul
 2019 09:48:05 -0700 (PDT)
X-Received: by 2002:a02:85c7:: with SMTP id d65mr7023343jai.8.1564505284989;
        Tue, 30 Jul 2019 09:48:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564505284; cv=none;
        d=google.com; s=arc-20160816;
        b=a01WWZX8HkUFr+dqdQhF+p527vUZ5w8LiidwN+Wp7F4C/6tmvpQ6+JmFbiV9MRiB9P
         EZdSqcLR6T9WYIJ3vWwrbUSPRXDKCUM7RVAfx1X5ViRdRz0baPWTbEwf/qmqyMi1svQU
         O0WmGuo0X//aWGmgN4enmsKfk+48kahKFhtdIR8iw0VVxG5jPNz5JkWk4aq29d3sXc0w
         adJJ9mWx9jb7HErJOx1gCNkoboKRtT3V6DRIHWvVJN/kpf9dfD+2RKi95/64WzvkW54n
         JUCl0T5sregfL/IvrqPRY6DVZTz6Nu8268/CsRGol9JUFuz5AwwJA8d5yLZH2kFTNL/6
         pCyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LJPOL/2PE+PC/AElqmQU6HOXbiWhS4dMp+5yI3ZLajU=;
        b=mMOVF/XlmzQpyyDUFLfynmto71bnWRp1oy17V3B12djeynkn2WTdjufxPn08Rk59sA
         OWzd/PtYzyYmTI8TkVBgASMaEx6YVaBwlcue/rat7UqWSX9hYt3DDpH8Ab/goIvUUGI9
         Pwy39szVHHND1uMwcKDnTwclaSK/tucvGA+ZbDoaS0Z1OvaZGllB1u6Y2aukdLIZufqE
         htc03wOfAPd8RWjSmxwZdrxfJ9awOnwDQo6Sq9mc8+x3IubtSHaLovekrL7vgmNbIr6r
         wsSwP2b/Wv+slaHi1SQo6b6C9rjPVhI2dHEJXzjYNbn80XS4D0OXCF1OgowyjXH3L4G/
         ZXxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EZBWItEE;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t12si2379707iol.0.2019.07.30.09.48.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 09:48:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id p184so30133969pfp.7
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jul 2019 09:48:04 -0700 (PDT)
X-Received: by 2002:a17:90a:ca11:: with SMTP id x17mr118881270pjt.107.1564505284405;
        Tue, 30 Jul 2019 09:48:04 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id 30sm154516103pjk.17.2019.07.30.09.48.03
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 09:48:03 -0700 (PDT)
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
Subject: [PATCH v3] kbuild: Check for unknown options with cc-option usage in Kconfig and clang
Date: Tue, 30 Jul 2019 09:48:03 -0700
Message-Id: <20190730164803.45080-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EZBWItEE;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::441
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
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 Makefile                | 1 +
 scripts/Kconfig.include | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 9be5834073f8..517d0a3f6539 100644
--- a/Makefile
+++ b/Makefile
@@ -536,6 +536,7 @@ KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
 endif
 
+
 # The expansion should be delayed until arch/$(SRCARCH)/Makefile is included.
 # Some architectures define CROSS_COMPILE in arch/$(SRCARCH)/Makefile.
 # CC_VERSION_TEXT is referenced from Kconfig (so it needs export),
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 8a5c4d645eb1..4bbf4fc163a2 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)
 
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
-cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
+cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c /dev/null -o /dev/null)
 
 # $(ld-option,<flag>)
 # Return y if the linker supports <flag>, n otherwise
-- 
Sent by a computer through tubes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730164803.45080-1-swboyd%40chromium.org.
