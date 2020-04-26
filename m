Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQMATD2QKGQEEE6QHXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0311F1B9438
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 23:42:26 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id w14sf15275448pfq.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 14:42:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587937345; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cs4RlagsY6SHzHIbfGsLoacCLfTiWjhdjqPmMFnRFoHEp4u+YlzfTkWR6uxmEfCV4Z
         JHF/ZJiOQS/OwtkfilpmesDzixqbO6UC8QeJSW7ffuCn6cBIEquYIrQkXbsCynA19/to
         Sf1O8WqAdb92q8V+ZBcfSQ/hAvIkyq56Eghjc5huxuYOpaAXcoBGvey2GlJuRxIKiUFH
         wsvuQHW3kmhveT0TFRkPbZg2rWcp2Bz/85ia09/2jmiTTV+/z2TxM6qD0khOGnEld1BF
         zsCME55189vlNIaGhf6BZBJzTh+ZtoZmFYfsSpamxsYoIGPslQjSt6rG/O77FAaseeQO
         9mNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=olsncis7bdt9l2LlXD/MIefzi1wUTF2gp/ECXIv+37I=;
        b=yjMfdygG4LGj6AVMOz7hY1RdCvxFU5tZGlGKlquD06MB9nGAw36P7gJD1zWzbNhRmF
         95SaZ1ZgfU/O+1G4U5l3emRAPVZCTdRx5Il+mkqJjq5y8HuHRaCp13Ztuz8d6FT0dTnq
         xXhOIjT1i6MkcjxVzLJLG6eW0X2YMygHFNOD+lbtzGxBMHXXjY1xhQ+/Tz0kgVtjHCSD
         szAdGYTplWPAnd2UW4xIALr0S6s6iI7njAqe6XB9jjgbqnZNcp+IhiIQ7+Msc2pMW8mY
         MiILHObsLg8LTUrDlA57jZaEgKeNlplsztrin4Xp2yznN1o9FsLmSxPvxOHHSmaWMYrn
         cAUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fG5gI4J7;
       spf=pass (google.com: domain of 3pwcmxgwkanib12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PwCmXgwKANIB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=olsncis7bdt9l2LlXD/MIefzi1wUTF2gp/ECXIv+37I=;
        b=fRurbVVeAVbW+brcTddTHplqYYxMnJqoCzYMnAUllKxSrD0uXo+j3wTPxNBNjIlJtf
         3XahGgSZFj/5hoD/MHKWtFNkyD38894xtOp5t6bklFnk4JL00QmPFLv+jPZ4Dq5Z+9d5
         WgmYykvMEeUpb2TY7WumkqdGqPj594BBkmgisgbp3BpqO20DJN1E6Hb65ulAgL/+ZUwx
         /4++Yp1tnKcsZRurv7/W6emWMHKueKuAbHuKEVlmm60HGyIzEyI9ara5Yk6gEsWVdj97
         97rA6vYfJpFdo4hgcRl92zczrtAYCx6Gr39Hv7X0yXTEJte+tJQgbu94iDbCN7hPJRRB
         J3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=olsncis7bdt9l2LlXD/MIefzi1wUTF2gp/ECXIv+37I=;
        b=V3/rMMNQP87PD+fCc6C6fj/XBCFscscfX9Wun/W+L+SWyjcu+7SikwQve8hbv1iQmB
         tHlnCxwIVKKeJwSNbiTc5htOIE0GEQSPQqCn2NGg6cRo5na2qLWYl886WI6yIzMirNYV
         KxxQZgKrCAIERdsgUOmBdUldOUCndk1Wyxi6yDOFjSgTjb4pR9RZ6xBDaBo8csP7FNG9
         +qcSjW+V8Dv2rbBARHMDMFRE7xGtev6WtUygne2LtU0bt1Ozk3zx95TGIBPdnATDmDkO
         69PWPr3iZwcX+CZrokCgxAOM86hFBS101P6jyVY3xgwGpM43YRHRS/ortD6Jo58gUzi0
         T1cw==
X-Gm-Message-State: AGi0PuaqSIARXy7hYSdA2O2XToqLfm1sSSrCKfIUqE9qiTg+q8heLGri
	DDOsdFmbtbs96baNOJEmyv0=
X-Google-Smtp-Source: APiQypJN5LI9AoFMFZFyvdcGNdngCy+TzHal7nYhndlVtWqLgHgVNIipg360qQBiLOhpuPy2cywK4A==
X-Received: by 2002:a17:902:b58e:: with SMTP id a14mr7064235pls.247.1587937345127;
        Sun, 26 Apr 2020 14:42:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f1a:: with SMTP id e26ls12807768pgl.10.gmail; Sun, 26
 Apr 2020 14:42:24 -0700 (PDT)
X-Received: by 2002:a62:dd4e:: with SMTP id w75mr21451279pff.221.1587937344752;
        Sun, 26 Apr 2020 14:42:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587937344; cv=none;
        d=google.com; s=arc-20160816;
        b=ttplwjXrXKWFVvHKKFMqgkSVPrY72yg6Q6HgHSng+xezmlT+rPpXENEqKjQAk4IlHx
         O2nTGFRD6FBrv9vpnLA6Lurrkd1UjmyshUWnXnOcQXWdrCzF9JrogavJTFD8oUa990GZ
         X3+2ynpwQ8lQaoHMNvA/j+taO4r+AfkGRpcloxlKeCfgufTnW6NCiXS7qt1xHQwYgQ5C
         U4BXLr8T5KCnA1Ds/Y8liORyiH4zfuEu06i/jQvjm8odeB3xgoCCQ3KeGZTbBJk6fhaw
         lkFpcLLE5UHdICIgBnnTiwVhqFSZIHXc4zR32pxA443JL6IWTni4CvEuLhgSnbUj6g/b
         w6CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=wP3YUSwt75lpebH/kLrQdqblssHhZZ89gAzPrZ9VKZs=;
        b=pj4RE2/IV4rtlxx7n1blAztf/0vzPQPwgh2BuicfBFTI/xWiDwQRPmvRCzdPNUFerG
         IuapMyF3MUC9fqX7/7EcEMKl71DDO5OnPSslj8xJHXBCdhm57oAoaeqHPLiNEF91gqzp
         D/4fcZVTnubOfNpGyAO1BeUkY62elgR+AFynUAFhfOf8tqOQz3p6csFJtW5+5DceaNSF
         Pc1UeOOj9daCHRt6wwuv7H3ka4fZY8ia6WvZPExm+ZzbxyMPE6LVeVCSG2Yl6lGSHBEH
         +b3jC8LmQnVAqzODmWhcQDWyDEyB9FIJBBpD1NfyIABeMr+C3APJ31PLcYpLT12HYvtv
         /CgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fG5gI4J7;
       spf=pass (google.com: domain of 3pwcmxgwkanib12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PwCmXgwKANIB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id c1si971386pgd.4.2020.04.26.14.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Apr 2020 14:42:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pwcmxgwkanib12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id m138so11950275ybf.12
        for <clang-built-linux@googlegroups.com>; Sun, 26 Apr 2020 14:42:24 -0700 (PDT)
X-Received: by 2002:a25:bbd0:: with SMTP id c16mr31683706ybk.296.1587937343841;
 Sun, 26 Apr 2020 14:42:23 -0700 (PDT)
Date: Sun, 26 Apr 2020 14:42:15 -0700
Message-Id: <20200426214215.139435-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH] drm/i915: re-disable -Wframe-address
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jani.nikula@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fG5gI4J7;       spf=pass
 (google.com: domain of 3pwcmxgwkanib12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PwCmXgwKANIB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
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

The top level Makefile disables this warning. When building an
i386_defconfig with Clang, this warning is triggered a whole bunch via
includes of headers from perf.

Link: https://github.com/ClangBuiltLinux/continuous-integration/pull/182
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/gpu/drm/i915/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6f112d8f80ca..8c2257437471 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -22,6 +22,7 @@ subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
 subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
 subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
 subdir-ccflags-y += $(call cc-disable-warning, uninitialized)
+subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 # Fine grained warnings disable
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200426214215.139435-1-ndesaulniers%40google.com.
