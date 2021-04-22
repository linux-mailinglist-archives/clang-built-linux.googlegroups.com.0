Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZFUQ6CAMGQEDA7G72A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC4B3687CD
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 22:19:49 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id c1-20020a5b0bc10000b02904e7c6399b20sf21502192ybr.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 13:19:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619122788; cv=pass;
        d=google.com; s=arc-20160816;
        b=RdUCG0BvgNH7X1uTdv8nYKnH8/9XWcfVk0m2k8TFLVuz8RYPF9oSfwQTZoschU2Yhp
         Vdu3oKzBR+PDwtM8jPyycMMYpy/lZtI3NTKEuMIWoV4QnalGD2rfv2NpnH4I3KokB/wE
         cZRDLB5r0L61VVLXaxrQ2NiXU73BullzFwmGU2cRh34YIiIXPXCvh0QTnHM1AfxNkATK
         BEjtjf0YCbePml6SN8LbYvoWNcqVYfYC8mSp3+yK1Bwng7DyU0agvJ8woIEe0RVoZI8D
         bEth2aoJYrG/B12l/x6jR3lXHO9l014Q/uoTO/SEJT/OzRvMcDD6uFZHgabyNox+ZK5c
         CARA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=oF7J8t76KrMW3JzmbhTMGiHI47dVqLMIJcArFAmk3DA=;
        b=OPPF3cP+MLDex0OVNYD8/D8lFNldZBbrFzuJeLEnwFIi0hjdcbKA1JAVNHwELMtQPu
         ybmOykTrh69VfAcEwTJm4oUwB1/Or7BditqXUhJEVItX8KF0gO1J4IaanRIS1UHJoFlS
         lB2wzwGe3iO7lYVLtmoZYJiASecQzUBU7YuYxPVdQFVj3N+tb2WKrB9p8UO7KfnfpTKz
         fopT8DQOV2Wj+8qPEXHenYYg7c5z3JkbmDuCUXA58ZRMbk7mhKPT61+iRKf/NMoW/5py
         kjPhmFD0tLvRYPUX1tRrqVIWFy3Johmta/KtugEYqOfdP38buwdaKXVUJv0wiLM0Z9+7
         uErg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EGSr2oJE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oF7J8t76KrMW3JzmbhTMGiHI47dVqLMIJcArFAmk3DA=;
        b=mzkx9REo/iRxZcsWRZT/CmV8cjFzm97o1XdjqKE5tkLaHKsdcPuv/afzLl+wKrRfvT
         AWe2Le4h3iCNtVRwo874cA0Uyd/LqQr6rbHN1iBUZpqTe7OOk7dptViRbnFHJM9RdNGX
         0rr7oeg3OvDbDy1oey0sTBBMSZHJKGsBtdecXYGIU6b60+GY8jMENGmp493tF+6eV4zy
         vNnRHQcFGtyL5ssGUMHtsi0aL1V0osBLoBwcEg0oVNRuDqviR3yojIZA74oaMTltYaqw
         F+9870l31arWygu4R/Z8PISFDMvyXop1d/hWhfWGU6QGYUn3SG3iXTfuQykkx0Je8AVE
         qwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oF7J8t76KrMW3JzmbhTMGiHI47dVqLMIJcArFAmk3DA=;
        b=gaG1OEabGhe6HQid3l++2ZY5OVeoCB17OWdsW5aBh1UzEGT+f+35QUPgijo0RM46Oc
         BMB+3X3krV41dr0A4sadk3eYTddFJm4mEbdeqceB2h3m4/MZjYO3JyIrY+54JOqnYjzi
         uUYs9InkRaXc5M3ICy6hILaqF4gv9zE/CYS1nKYOcUNTO25KavWYQAqkSPsD6Qs+HHEq
         KbTdbU0h7XcrE8JURpmH5/PR9WI7s5z6ACXqNQdCzBYHWTPRzVE7EL2VBNy2VQYgnVjK
         dUfv2BM3raUsYjOa9dNlEM070Ion5xYuip2vR/Yhd7IbjR/jXkkMo3Fkvcg0drVHGMss
         2oMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OUNgj5rubsYTzQy5Al6M5aopmz883B5yym33+lGWXCnxmMuOT
	bd1Vncz0YY9wezXFPFu/ThE=
X-Google-Smtp-Source: ABdhPJxRGlyKuJQ1iXFTugfEMLSbe+i+fz8ZvBp84U261DtBHKKL8NiEExwOabzEj/q4s5z3+Y+DdA==
X-Received: by 2002:a25:d48b:: with SMTP id m133mr611999ybf.381.1619122788772;
        Thu, 22 Apr 2021 13:19:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls3213470ybt.8.gmail; Thu, 22 Apr
 2021 13:19:48 -0700 (PDT)
X-Received: by 2002:a25:9982:: with SMTP id p2mr630205ybo.457.1619122788248;
        Thu, 22 Apr 2021 13:19:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619122788; cv=none;
        d=google.com; s=arc-20160816;
        b=nFvAJxQ7QMyIcaarhnUZWLx8z2Sw7HRJ9VS/mC5IheBbMXidKssZyF4gUZgcNQjaQi
         L13ghLPOI9rascrX9U6JIVzCzPppZdHtKjmbkSMnZNcrlhtKixTkZNi69xTk4NyJgTPN
         kWRwLB/RQ66aQ6yzdcHZo5IU6rqg5DL9e9s8e6/pR/cHvypJFYRA3AOUtIdErG4w9WIl
         pFJZzD+XJfd5efK53zyBw8GpOJQRhpbHSAiLDpskC42V7483TDpdkjKqWWec7g4Llj61
         BI4QioAKS+FdDivs0kbUXl+Jb3/A76rjk8nX+RuTY7/7dz638c+h9U9oMrmzt/MH/Xmy
         IpOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Q4zCtoigYtZtwxmGPpDXu3Mp9Ov2Xj+0U0vYmsXd/Ws=;
        b=inWwEhBVcv5hV3wzsJND+Ueofnq1V76JlGy01pJOXDpK0g6WsBGJxNiUanscD34GAm
         6qVNED8tH4+43uE7yvzfDo1Sez+RkRNzO/x+ST6RVeqiePDr96aHd7id+ZrpXEJ7sdbn
         zDYxukLnVJ4q6jHN2YY//wbOPSTW/dH5ProMRHZY2jcZ0AYp3BbE5zBoZGfhNlxEsErq
         DyG8FQJEx9YJjA1VUfu+SkZmYx7813bVxVa1LXbCOSoP40rWRT4f4sP3wFi1w/l+jHJ+
         XxlZh0u0LRdM2In5gw7mmapA/RArwdOw5MZNpros1kS78BBTDb6HwEEdr9LBP06Bt/4Q
         maKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EGSr2oJE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l14si660802ybp.4.2021.04.22.13.19.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Apr 2021 13:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91DEC60BBB;
	Thu, 22 Apr 2021 20:19:45 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] kbuild: Add $(KBUILD_HOSTLDFLAGS) to 'has_libelf' test
Date: Thu, 22 Apr 2021 13:19:14 -0700
Message-Id: <20210422201914.3682494-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.362.g311531c9de
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EGSr2oJE;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Normally, invocations of $(HOSTCC) include $(KBUILD_HOSTLDFLAGS), which
in turn includes $(HOSTLDFLAGS), which allows users to pass in their own
flags when linking. However, the 'has_libelf' test does not, meaning
that if a user requests a specific linker via HOSTLDFLAGS=-fuse-ld=...,
it is not respected and the build might error.

For example, if a user building with clang wants to use all of the LLVM
tools without any GNU tools, they might remove all of the GNU tools from
their system or PATH then build with

$ make HOSTLDFLAGS=-fuse-ld=lld LLVM=1 LLVM_IAS=1

which says use all of the LLVM tools, the integrated assembler, and
ld.lld for linking host executables. Without this change, the build will
error because $(HOSTCC) uses its default linker, rather than the one
requested via -fuse-ld=..., which is GNU ld in clang's case in a default
configuration.

error: Cannot generate ORC metadata for CONFIG_UNWINDER_ORC=y, please
install libelf-dev, libelf-devel or elfutils-libelf-devel
make[1]: *** [Makefile:1260: prepare-objtool] Error 1

Add $(KBUILD_HOSTLDFLAGS) to the 'has_libelf' test so that the linker
choice is respected.

Link: https://github.com/ClangBuiltLinux/linux/issues/479
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index bc19584fee59..1535b32c8baa 100644
--- a/Makefile
+++ b/Makefile
@@ -1092,7 +1092,7 @@ export mod_sign_cmd
 HOST_LIBELF_LIBS = $(shell pkg-config libelf --libs 2>/dev/null || echo -lelf)
 
 has_libelf = $(call try-run,\
-               echo "int main() {}" | $(HOSTCC) -xc -o /dev/null $(HOST_LIBELF_LIBS) -,1,0)
+               echo "int main() {}" | $(HOSTCC) $(KBUILD_HOSTLDFLAGS) -xc -o /dev/null $(HOST_LIBELF_LIBS) -,1,0)
 
 ifdef CONFIG_STACK_VALIDATION
   ifeq ($(has_libelf),1)

base-commit: bf05bf16c76bb44ab5156223e1e58e26dfe30a88
-- 
2.31.1.362.g311531c9de

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210422201914.3682494-1-nathan%40kernel.org.
