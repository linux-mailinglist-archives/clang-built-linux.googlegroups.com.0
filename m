Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYF7S32AKGQEFVFYJYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2033719BD74
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 10:18:42 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id 14sf858194ual.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 01:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585815521; cv=pass;
        d=google.com; s=arc-20160816;
        b=LPDHGUF8qbP+5cHtiBEba+/24dtyXLcXFdJmO7s39vsVd8B5Dp0elN7pKt0JsKjAwT
         vv5zSYBSmlJeMAYku/GaA03+nUczF9g0vTH6zj02/sr5xg2ZUQgZutqjFclE+XCHDzdG
         Ou1gPUhJpgRTt0vfv7uxQDFXGemcX5GqAq3QtxdkirvFQ0KuMPcvpLv0X2N6/WRwl4SO
         fxAOXmcSGUL5HpTDD+A0XubB6r08AtjGUIOwIKbd9QKYRIN9HXi8p4q2lCaI3wEcUJwv
         Wbq9pjXpEmAsdXvy1pL5+RcW+IXvtqQi/pnbfeOSdLiBaz/C4ElPCLGb+hrbkGXt3m67
         GIbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ILW9DjvNs2kvP/KaqgsY1viCB8fPaVJeesC2Sr3K8F0=;
        b=nYePaEbDOMpJ1zRNgyxPMUM3r3zrrsTc5C3lvUSTlK+9Rq8U6bNVlzBK5wrrXpTf6+
         bfMxoVbGlRsZa/z2waV5sNOyctpeQ/kunAqGtUnUpqOj5e2rkp2qqNz23e9v8RsNZadO
         zE++NgOH9dlqDpw4GMK7qt7EtdghEc+H1O7VxhJBEWYt2TudMO58W3KAHh6vzvVgeiRI
         j7zb7w9wy0g+3OWC335/aXE+j3OAzx1NNZDecs9cfjJHyl9Tjtk2q1d2VAB/Sg1ZJQRi
         Do3fmHm0ZYJ50OJKwk5WTR/lLv0LdAOl11fKC/mvDqQhwPkq9YPlzjtyFxFSnea/eOi2
         CrVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ShO3r9RV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ILW9DjvNs2kvP/KaqgsY1viCB8fPaVJeesC2Sr3K8F0=;
        b=JM1CNEaGtw4dVYT7jzVfF9Mqv7VTCekdRb0OHKuksVcR7gwaUgo65Tb5S1nngkw0qS
         jYHZtmZvP5aXGIYN2v8a0IjRmxXUpZYxzz6PkuBqR+5+q/L2QZ0GBUc8JMTsnSuFluVC
         F6jCxIMKXqDk4AL4JuKAyHyNtwO1eB+otCGYkYLrjkuEF9isi6LxbwXn4UvTPUrcqzYl
         E5UVOMCP/0sVSVwXXXHGmgEgzE7yj0Xv/UDfKyPt3ElGbt58m6hmyQRWg5J4wKepPR3D
         lKgtF/axhidn2CJ6lKrUnVU110jXom0lWuDo9KKOBQHchMV+hTaWBbmErSQhQ7n7CObE
         ikhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ILW9DjvNs2kvP/KaqgsY1viCB8fPaVJeesC2Sr3K8F0=;
        b=Ki7C+3usIMAeA3pb/NQ7+nTF2eN6VBZpNZWnP6cD+McufBzZbb6eP6JM/8iGIvEyY0
         I4pJhk/U0tHu2VYjXaq9b1KDAreEopIokYDBmPZgrMn7/Qy96e4xwC11w1jpPiNvfv0t
         QBDXZcmjemBmLbYaQ9dUjwKuNTRotDM9tS4G/bIL5qlvgEyVodO5X/aWD8MSNnF3oNcX
         /x34d+DteDym6w8Q1E80xe0CewVnQinP4RQFSM4oUasJ/cLMiBIMmwmHWX66ZQcCCdE5
         s+ND/kK4GeNkgEQVhd4trVBnhJ9KWhStolycrtzDmn+Vgf5CBwmSzTOLwbeuaU/QoACM
         43rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYcKBaUhRdLIzvu4t2BYRmSSLUeatmJ42FYdrdoA4m/dTkiZyaU
	IVnwYI/DlALELw1AKK7FqZY=
X-Google-Smtp-Source: APiQypK+LVloV3TLlQv3+PKXpDr2uqAnt9uKNltEaExSGc2tM1tW0lixcSxM0gDY8+ki0nNJ1GyCxA==
X-Received: by 2002:ab0:3154:: with SMTP id e20mr764548uam.136.1585815520941;
        Thu, 02 Apr 2020 01:18:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3d5:: with SMTP id 79ls201590uau.8.gmail; Thu, 02 Apr
 2020 01:18:40 -0700 (PDT)
X-Received: by 2002:ab0:2553:: with SMTP id l19mr1548232uan.128.1585815520492;
        Thu, 02 Apr 2020 01:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585815520; cv=none;
        d=google.com; s=arc-20160816;
        b=fso/aSkgMJch1k6xMRAzIQmpUrCN+AEUmHLYiGYbMLTyjDo5eXaNmuBkVyCOckhJzQ
         /w2VXnZyVtxXZZBLn0zxDUKH5+gGbRZNfPfbudKx5M9jy8ESa9pTIi6gziqRll8ByJlI
         YtLmfV3lbfw/O170dkL9ghHEwdOY4iSAxDg2aKVl/5bdabj7YBtuNRCz+WCpIpbOmTyt
         4wW+uNEHA+DO5oiec8x3fFZoz/SQ6Bhbc1wel2BKO2oGSc1cK84nEoHsMFB6FCoNeyzn
         IbebFXpv/dyOqzTSzHtJabS7SBGIcXBOjCdGaWASIh9CMZI0tDIiaGCYrFx1ZND7zDIl
         GF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hpN1+n5xYd8iTmuJk5my6MaX1tvwBISzriW+LumWFUk=;
        b=lIiNW2ZgEj+/9uHv1yCozKxJhZlUUbkfD0aZ8R74XBm+qKWaGnPtK9yBayeKgOBPRQ
         aLLiIKsN+EVPIA83ruQgtvFOO3JA4tKZr4t3G8urzxUCWXaLw+ZVigV32LRJyO3Kd3oc
         Fb8qdRiUmTVS6tfqb8lisNEWq63h3hJxQK1mO9+swR6PreCQ8SsUHUqzlzy11hfR4Jnm
         9UydoM76OkEe8C2a+gPcY+uQKPrO6jmvCAzrMpNw0s6mo/tKwAK6p74UPujt1kVol8IL
         eFXYnt1Dpot5um/3iXvC9aGTysLNTnOnmFvk8+nPaXxGHzp18uGSoRipEPfOGpuM1MlU
         ADQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ShO3r9RV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u6si343496uae.0.2020.04.02.01.18.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 01:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id x7so1508567pgh.5
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 01:18:40 -0700 (PDT)
X-Received: by 2002:a62:64d5:: with SMTP id y204mr1940179pfb.227.1585815519516;
        Thu, 02 Apr 2020 01:18:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l9sm1340387pff.16.2020.04.02.01.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 01:18:38 -0700 (PDT)
Date: Thu, 2 Apr 2020 01:18:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
Message-ID: <202004020117.6E434C035@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ShO3r9RV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

When doing Clang builds of the kernel, it is possible to link with
either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
discover this from a running kernel. Add the "$LD -v" output to
/proc/version.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 init/Makefile       | 2 +-
 scripts/mkcompile_h | 8 ++++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/init/Makefile b/init/Makefile
index 6246a06364d0..82c15bdb42d7 100644
--- a/init/Makefile
+++ b/init/Makefile
@@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
 	@$($(quiet)chk_compile.h)
 	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@	\
 	"$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"	\
-	"$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)"
+	"$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
index 3a5a4b210c86..f98c07709370 100755
--- a/scripts/mkcompile_h
+++ b/scripts/mkcompile_h
@@ -6,7 +6,8 @@ ARCH=$2
 SMP=$3
 PREEMPT=$4
 PREEMPT_RT=$5
-CC=$6
+LD=$6
+CC=$7
 
 vecho() { [ "${quiet}" = "silent_" ] || echo "$@" ; }
 
@@ -72,7 +73,10 @@ UTS_VERSION="$(echo $UTS_VERSION $CONFIG_FLAGS $TIMESTAMP | cut -b -$UTS_LEN)"
   printf '#define LINUX_COMPILE_BY "%s"\n' "$LINUX_COMPILE_BY"
   echo \#define LINUX_COMPILE_HOST \"$LINUX_COMPILE_HOST\"
 
-  echo \#define LINUX_COMPILER \"`$CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//'`\"
+  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//')
+  LD_VERSION=$($LD -v | head -n1 | sed 's/(compatible with [^)]*)//' \
+		      | sed 's/[[:space:]]*$//')
+  printf '#define LINUX_COMPILER "%s"\n' "$CC_VERSION, $LD_VERSION"
 } > .tmpcompile
 
 # Only replace the real compile.h if the new one is different,
-- 
2.20.1


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004020117.6E434C035%40keescook.
