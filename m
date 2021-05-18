Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFWVSCCQMGQELZPRB3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0233881C6
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 22:59:03 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id y191-20020a6bc8c80000b02904313407018fsf7032151iof.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 13:59:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621371542; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFSk1ssGm3laCc2/B1X3Ww3KIFblOISNLYHVYzKTHM8NVizDyZJ0vwtXb4ZCuyhLnf
         VB30QTNj/9g/kSUpoMBiAga8l8s19ltOopjboETfLOasnfCq2iMtqTkkd83AfdwrF2UC
         y22EuzJovNLHro/MrTf3B5Rl7N8zchhEpRK7qLQCDURVR322xERzekfG+stRxVUWkGDH
         VfWaj6t0wAfiuxd5Ayv+Aq+BccQuyDOT7FT3+w17Re+c9tx9In4Jz72FTcbhBc976Gpy
         sLCCLI7+kHiXZKpq45U3uL8kgG7CSxmJ0qryktSV1f1bN0sawZ1BUNe2aRPvSH4N/Ryj
         wpFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=GktpvQR6q8g1gepTOamII7f/w3QvFO92Xo8zOSjSq38=;
        b=LTaFoypXpNK6u4xEqqFlNCiAzU8WI50WeRSGp4K++CosB3bOcWV1MPpYpthmX7hCQh
         nALzJ9qayo2d3zTAYoTMch76EbPrQl0oTQjV6rcTgDtgo6uzkrdMknE+5t7A2rt2zjA2
         yNVnnbl17eSU8FbY1b5W7vJv37IM/3hZNdfnANSLCQ85q7P+gINpYsUf9zwlFqzOnfVP
         rBrf1SxLTInXOCijXhkXdmc0/1kHpBJECO+Qtg5lO4z0Rn0pz7YDwE6dGfxkisMyQOfV
         G8U0FUKC5Ec/Lzp/M2L+hMnOuYebppHG48VXxCxaZWYM3XjW61OLgvnBkRfAVe74oI/1
         eDtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=esqjwBlz;
       spf=pass (google.com: domain of 3lsqkyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lSqkYAwKAIYxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GktpvQR6q8g1gepTOamII7f/w3QvFO92Xo8zOSjSq38=;
        b=ZuBf/5dbTaFhiUUkclB/i47/+Nlg7bpiWP7W2HGXMzEzSC/yiZwcubQwGbJtSveeSd
         V9ffOmFlOSzb8F5ARzvbDhoPXX9jBr3atC+7AN9d9e3v809411mTui0YiaqTn8PKNaZ0
         3TwOTIOwqVufKaw72QTce3YUr9LuQErFDgIarwBMg/YmT0G4L1+2bH+Yl3uYjb51pnVu
         5rfZy2T2GHWH/NxaHufck/sHjCQ8c6nIdpq/9doXcRchejp7k4zgWc/najan11mJ4ibk
         s61r/pIAra51zpH27jeKVEUc6siDGmE9G06LHA/n+mD6dz0nKKuR81XkK0H1eV9s7rWq
         6Y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GktpvQR6q8g1gepTOamII7f/w3QvFO92Xo8zOSjSq38=;
        b=TbjQjZizeK6RzeDsx71oGQpWlYILZld+GEEjX9jJ+1njVgmBIs6lCJn8DW1ky7J7mk
         OoW7myNlMSVGidofEg0WfixBYqO7SFHc/W1GjXUzbw6EZGV2SbqLShfJzIncikq/TB3Q
         jh9zDdPtZsTr24QhzrT/6OyHns/n6msVBoyLTVYf3+EV5nmej9x7PCgwspMEZAJfymAU
         XHY7cbSIKLw57IhoeOZz2NPDQr9+4tBlmBXOo7C6Pg3LrHEr40yoOJ1pjcUsentMunsP
         82IsO2nhP8N+hVbsYvGDhUKXrWRdNBnJVAQnVUqx8PW3ok2wX14QsB4VfMy22fR6LwKQ
         ogFA==
X-Gm-Message-State: AOAM530ec2EL3KB4PlxfoGuDMw0M/xCb2NJSBr2B13xsVWiv+Lf0SZPS
	YfIZ/1/XX3NrMvTMCBrQGBE=
X-Google-Smtp-Source: ABdhPJwN4smIGkG3gjak2n7EPoSfQL7BYxtaShDF2xeJD9p4dFaa/sX+TcT190bpwsh3G4lWPteLBQ==
X-Received: by 2002:a05:6e02:6cc:: with SMTP id p12mr6596094ils.244.1621371542569;
        Tue, 18 May 2021 13:59:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:8c:: with SMTP id l12ls5553380ilm.9.gmail; Tue, 18
 May 2021 13:59:02 -0700 (PDT)
X-Received: by 2002:a92:3002:: with SMTP id x2mr6753492ile.116.1621371542213;
        Tue, 18 May 2021 13:59:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621371542; cv=none;
        d=google.com; s=arc-20160816;
        b=XJHZNi52Uo8MKVjp5AztpnCCjB2SjFR89K7tCHRbirxBO/vy6kMM8fF/V73uiobZze
         35u5JSo1+0+GyywobtyMDuHTpYDIhil7rk9WYg0TpvC9p1KVotcyY7D4bjYTJB64v7JH
         SG3VW2NrSz/c9YLfJLB4kLqOCL9vAAHdp7NuAMHiTYfNMQo0tZBvY0vJ+PnnY6IU6LPt
         vb7qkrpSSJqzkhZPubHqJV1MXEbujCqllN1WpeIlX/Dq8ullp2fGsd+HlhAjBnUGQCay
         G/bP45cCLP7m/Zlxn5jPJUGLq5ILuYpSuVGFkLg766Hi409/QYe0wyComaiC5yWw7Clh
         cFxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=nnsMNSAI45Y61w2ZwBBkPC0ZzHgySsNQlypNad+FRoA=;
        b=YnAIYY4WTkdgOh3DXwCCvRb+xivEPRKwZdzerdq70wT5H7Rckti7baauZxiYlli9/7
         5W/dZWiU/B+or6hyVadFplN6vkvDGZdRpBbPmQnn6DRhB0pWqE1uQGUwx+62ork7icgM
         3WtOv+c2JjiZdbxUzdLD3wLBK5gO7HIPh8Oh3+QTbZ8mXddx4NNSrvCPXTcKeHzUyvh5
         /6AmRu6J/ldl5mgEuPj/FbsdHPs2Ao17Z0u9zJIWMx3a8NUPtMLZf7sOP8jFrLscc3zP
         9TUTIwmf/LqFVmuDccQTKP+EOGVw8tveDdI04hUaisKQzZJky/CxEobWMyNrv381RDId
         nVqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=esqjwBlz;
       spf=pass (google.com: domain of 3lsqkyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lSqkYAwKAIYxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id p5si63063ilm.4.2021.05.18.13.59.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 13:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lsqkyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id d7-20020ac811870000b02901e65f85117bso8290153qtj.18
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 13:59:02 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:5ce9:69f5:c21b:140f])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:450f:: with SMTP id
 k15mr8283687qvu.4.1621371541687; Tue, 18 May 2021 13:59:01 -0700 (PDT)
Date: Tue, 18 May 2021 13:58:57 -0700
Message-Id: <20210518205858.2440344-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.751.gd2f1c929bd-goog
Subject: [PATCH] powerpc: Kconfig: disable CONFIG_COMPAT for clang < 12
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Fangrui Song <maskray@google.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=esqjwBlz;       spf=pass
 (google.com: domain of 3lsqkyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3lSqkYAwKAIYxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
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

Until clang-12, clang would attempt to assemble 32b powerpc assembler in
64b emulation mode when using a 64b target triple with -m32, leading to
errors during the build of the compat VDSO. Simply disable all of
CONFIG_COMPAT; users should upgrade to the latest release of clang for
proper support.

Link: https://github.com/ClangBuiltLinux/linux/issues/1160
Link: https://github.com/llvm/llvm-project/commits/2288319733cd5f525bf7e24dece08bfcf9d0ff9e
Link: https://groups.google.com/g/clang-built-linux/c/ayNmi3HoNdY/m/XJAGj_G2AgAJ
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/powerpc/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index ce3f59531b51..2a02784b7ef0 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -289,6 +289,7 @@ config PANIC_TIMEOUT
 config COMPAT
 	bool "Enable support for 32bit binaries"
 	depends on PPC64
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 120000
 	default y if !CPU_LITTLE_ENDIAN
 	select ARCH_WANT_OLD_COMPAT_IPC
 	select COMPAT_OLD_SIGACTION
-- 
2.31.1.751.gd2f1c929bd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518205858.2440344-1-ndesaulniers%40google.com.
