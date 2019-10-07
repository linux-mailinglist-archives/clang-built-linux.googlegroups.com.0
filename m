Return-Path: <clang-built-linux+bncBC2ORX645YPRBQNZ53WAKGQEVED3NFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1E9CED38
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 22:14:58 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 133sf12350439ybn.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 13:14:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570479297; cv=pass;
        d=google.com; s=arc-20160816;
        b=PSSkHsjcHX4am3mGxmvWfcBLQQWWSyWArlwa6HjGJ3Yg/kT1XgOm4wwis3gWbFmwre
         R3wQQFDMuc1OsLeu56va29CKNdL4XiRgjykWxyUhP3WBdmlGhI7XyylETrSotXlMdBvT
         Vv5a+QLOc0to6HS0egp6DxpKWSdq/bARhty1R9UvNtHWmptcRhujdfHpzVC4sDV7VesV
         H3zZVR1ABJzSmcaVa6xiz/VL8r1K9+ldes2Fpmp4UtoEO0qOXn3WrVnQxLUK8iW+ssE3
         hEBlO18x0kZ/Co+0S1v5vaXZjmUM1g9MtBjHqYDCNrduvWJaFcuZFdrDO5bm5XT3F4It
         Pyqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=VvGuMo1PwOxI9ySD8s8K4mKrzZei3l55Zo44PoZkErw=;
        b=bVGtnQ1gqqlZUNYGES+8eVSl9W4zzptt9QZYl68SLBmBZjhIHsuhVNebxtyf9K06DP
         t5OZzeERh32RTm6mD7v282fYyi8nBbzathNfWhwBRkvkdeMAYpF9iCVm2Ln61xlK0wF3
         xv8wENXFB7T/jiscNEiYjjQLM/1Jn5LDo4Lta2DlKQV+bLsmVs8opqeN3pyufc1h9Myg
         pbgNOMc8u7z8PxCQWc1AiqYuI96d5WK3iQhN1eJQ/4fipdQJ/gQiS9jayB3vOE05BT6Q
         iloB96NPgr75F/0e4aANPBGQiMSabg/hTMc6QeOCs04//l2f3f/+1VIaGJnjh3bVVp/C
         QfWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WHfICpqJ;
       spf=pass (google.com: domain of 3v5ybxqwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3v5ybXQwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VvGuMo1PwOxI9ySD8s8K4mKrzZei3l55Zo44PoZkErw=;
        b=VPeE3a5+oeBN0tTlgZ27+l/Qp4JS+YsdXD9OcbNXjx8cw1nEZeEQkKUcwW4/cWpq5c
         adXrzj6gHAt6KevpYfyNyPH1R/g+nppY6CXGFkvhcdbWcgwEqbQiXZNSvQ/ADqUv3qvA
         Np7mQg59wkbHKz8F2OEX2cA165w8ThHFC3alPxv5wj/LTCzkxUOxY+j8DOijoKemMkIU
         ZrpceYuyWG0QHDew6Whb980QfqmsbPD04tF1s9oBTSx768DHTwoFjQK74xrcefJQKLcl
         e8hT+xnCaUEM/jplXvZmsH+aYby9YO7hN3Ntza72sHuYXfmtr1SzHpIyJoq/MurebpA+
         7FGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VvGuMo1PwOxI9ySD8s8K4mKrzZei3l55Zo44PoZkErw=;
        b=uDd89iVxVR6X+bqjclsD2VR5iMef6ftUspqEe+Jxd9Hy1yUmR1QimQJ54gJG88W+UF
         vhJciINrKddePnXBZtVQm1TaEPsIQl2X/Vhc2wm4ALa3+ULNBLVRx2tRyjbK5WDSPlBF
         /Pkjh9dfWbdHuoiLrOgk2jx/nqZeOBXklr17kiWG81pSdeEzJ9l84eA5alt2X7iV6Eyc
         777TIKmsox2//xDotw9pLbkmMC5ktOOMml7fiyBcSWYxyaGHL1JB8tyMrb74gldDL33B
         8DYijQD056Ksk/3ukOLnzeBdYY4w/9ne66yISLfLODYR9w3SwU53YUOsk1vux4DrFlEX
         hytA==
X-Gm-Message-State: APjAAAUEtUFJeAV9vw5QY3reeh+xbVY4LwKDkAW6UM5Gj/8/USBGNwLV
	mmMvCuvOmx3cl2DkDxyXdiU=
X-Google-Smtp-Source: APXvYqx+siv/ZoACIRoU4ZhJmVK1QxR/iz/VASCNhH8GrXFCRwWwrzk5UlnkuPTcSGRyPGL1OOljgQ==
X-Received: by 2002:a81:d89:: with SMTP id 131mr12675586ywn.342.1570479297304;
        Mon, 07 Oct 2019 13:14:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:ed08:: with SMTP id k8ls190538ywm.10.gmail; Mon, 07 Oct
 2019 13:14:56 -0700 (PDT)
X-Received: by 2002:a0d:c5c2:: with SMTP id h185mr22431135ywd.391.1570479296872;
        Mon, 07 Oct 2019 13:14:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570479296; cv=none;
        d=google.com; s=arc-20160816;
        b=xmcjiL1X2jpxUcRgy2H9hXds+DRFf+nThsqqDD4vAPQVmsmOjo/6RFbzhXmJe0WrIk
         atjNnw/+4Ri3xFlPzf7j7gqfvfsnwCNgn+uYWHcpeK6Zy4MkeeewhRUgv+Vr3SmMaZfe
         d041WFWUQs0bXG61xHFKiykak9EjSL69jxiSzS9+I3DRfIDOcuY6BmJZuwp+m617rP0y
         MT907DOV41Ld5lAE9vmZR7ZygRBvA3uqWbMGoZepJ+hZMjhk0+jlG4O0bbUypSdhJRHW
         BhABKdSRJIykFWLGB/iQA9lRqKfpy1fynnrz6hAZeHWZr5IP/rbn6GuszO5/XavZ13lG
         TA6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=/4/9rYzAhldgvSUHiN1Cv8SA76p5OhElLe1pQA25ET4=;
        b=Nz2jDGBT+7uYL9q+zgp6GzUKahk9kJjSZ2vnkvb7q0mwa5S4JFMW566ApRi+0vAtHD
         tIxH4/AOHQ5CD6QapRtKBgZECvjITM/r9CEFD11RyQXYVQxKIRy/aEhA+5QFYO5ftzF1
         b0BPHoG9UlBR5F7qAUhNpOwVrHL9CIZ2ofNQUXyo6/X8MCDhVLQT0AVWM9Am8SLMudmV
         jsqm3fnNujCUGG1+5QuJqFOvgY3/zDW/I8vv2kXSA8EieHKyXwe6GrggXynOOO534s4Z
         mizlOVr0VOMUV5/gix36hBS8brE05hfoZmZYqOTk0tpa9/GpqketthhpZqLypmpTK2dt
         dUqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WHfICpqJ;
       spf=pass (google.com: domain of 3v5ybxqwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3v5ybXQwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id t73si1295590ybi.4.2019.10.07.13.14.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:14:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3v5ybxqwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id p2so9166672pgb.8
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 13:14:56 -0700 (PDT)
X-Received: by 2002:a65:5b8b:: with SMTP id i11mr23380217pgr.22.1570479295782;
 Mon, 07 Oct 2019 13:14:55 -0700 (PDT)
Date: Mon,  7 Oct 2019 13:14:52 -0700
Message-Id: <20191007201452.208067-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated assembler
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>
Cc: Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WHfICpqJ;       spf=pass
 (google.com: domain of 3v5ybxqwkafok2ealgdn2f6f8gg8d6.4ge@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3v5ybXQwKAFoK2EALGDN2F6F8GG8D6.4GE@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Unlike gcc, clang considers each inline assembly block to be independent
and therefore, when using the integrated assembler for inline assembly,
any preambles that enable features must be repeated in each block.

Instead of changing all inline assembly blocks that use LSE, this change
adds -march=armv8-a+lse to KBUILD_CFLAGS, which works with both clang
and gcc.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile          | 2 ++
 arch/arm64/include/asm/lse.h | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 84a3d502c5a5..7a7c0cb8ed60 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -36,6 +36,8 @@ lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
 ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
   ifeq ($(lseinstr),)
 $(warning LSE atomics not supported by binutils)
+  else
+KBUILD_CFLAGS	+= -march=armv8-a+lse
   endif
 endif
 
diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 80b388278149..8603a9881529 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -14,8 +14,6 @@
 #include <asm/atomic_lse.h>
 #include <asm/cpucaps.h>
 
-__asm__(".arch_extension	lse");
-
 extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
 extern struct static_key_false arm64_const_caps_ready;
 
-- 
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007201452.208067-1-samitolvanen%40google.com.
