Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBB4V5L5QKGQEZXKLSZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C0959282EF4
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 04:52:56 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id m8sf3471492otf.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 19:52:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601866375; cv=pass;
        d=google.com; s=arc-20160816;
        b=nZEe9FFh0IeKzk5fDpk+wD1mfsR4WbbHFhkYiuGGsqBmURw7lVuCL36dVOWQ+/RL7M
         Xf2NTNz9ZcEc3ZSGmLI8L+WyhK2Rz4Kwj+qqw1IbqrkocDoXEYBYtVuX8kZ3z44WugrF
         d0U9NhdSc/p0rL3ApS8xLP05JB1NLpL94nwT7wMliS47biXLtSu3T9PEkOdu/JcEcB8I
         Pxm7TGshiTyT67O88PEt4CTNaZ1ZsMgqpGSTD2l0/xEjWqQezcpTe0meJSKOqMnoojTm
         GHfZy+AE28z9IWcsWTd2a7NZvtcmrmUSlX3rMXC7Fncwz6/aT4yvtr4MZabIw4qrgcY0
         W56Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=IW/sq4iesDq4pwN1+RXnwOv0CYIjfiylvdTkB+hih4g=;
        b=lXnbB9kw3o4vHXS/YN3sdQB7e7yHo7NXTdfju95FIYyzQxbq/NzqeQQxKXkHbKCXVD
         yv+igkRCVztQMoq9BaJxXwtX4yx0AOIY6RTdFnDkh6GjhgaLrrN5xdNHweh7hTVvMW33
         aqAVWT4eeIHmc9xyWrqqPnRnxOCvsRkgc7ZDuSM2/wYF5wnCQKGSWhSVB1Vauh4fkAoK
         pJx53fFGOP/t43X0QXeT4no17akzqFbI/wDltvxvxAY+ypmV3O8lt+n+osTjXhKdT9ZJ
         75hEydSu8+65MCrtcUP13N/vwYBj8Ya2BhLC+84LMneeFvvdjQmOyggdBBK4EUJ5pAvc
         y09w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LRvEZ8zp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IW/sq4iesDq4pwN1+RXnwOv0CYIjfiylvdTkB+hih4g=;
        b=U8h95aKbRFgIV24gQ1icYGoksRvEliNEzJynmCQGUgR+E9Le61QzHkPvwwDwZruScD
         k6ewPTtGn0wyieC8aSDQAiKhkTDKI1GuIqDEBV2jUhIz3APyXGym0ivK112GBrcHAfMH
         HZikiEIMgOblA0svHzSkbMmyr7vXRp4HjPAp0QfT3ANFR6RF09fd8VS8S/3fW/b1pR1c
         w/pJ5I7PbKelyJ7IfmENBGsX+S6reRsXQHjKsxiwzG97ankQLs+ZpVwYEbxjHgwP/Dwt
         Vs2plkODzx6g2XgknzKpj0BwBI77xiBEkLMJdjDR9kYRto0I3fRrWKgI2uurWNbkRI9x
         StxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IW/sq4iesDq4pwN1+RXnwOv0CYIjfiylvdTkB+hih4g=;
        b=bez1ieD25vbjLIGDn8yTMk5sMAMFC53Uq1tFvlPelmvb/L4QVi2CucO3iIGz5Vh8es
         WiFCJS/mPQwlfTQnaoGJ9i7g/1/g/nggnYGa0gdfenMkAKUv9v9k2y4xmvT+JzcAmDsL
         ra7g5zvHztXOpD0JQexB13P+rIEIesRxLE6jn/VuSIewPg/T0nv1TMluXMOsngXjeQhq
         oyOMrIHVbkNFfZKBWt1o9kKuzr6x4mQEwDZnNXfYiQ+TGoTGAiSgFcG3S2oErFB6W/LO
         7xxhRLasLPgDoz7IlR26pO7a5nfig8PIXlzTi4SIH4gsEcrToBEZ10UDd3IYV6z8ETkj
         dcdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ccyd3x/0g1i3Ja79qKw57GOCsaV3MO7iWJ2Rtthyptp+pKpJg
	ho8s/M83dI90JUQSJAR682M=
X-Google-Smtp-Source: ABdhPJzmwU6ZIe9tvkWnq15L9K9FMZIOq0mhGgKWrUF/cvgySQmCDHgKh7BmTokM/YpQeIdIii+ckA==
X-Received: by 2002:a4a:d40c:: with SMTP id n12mr10464840oos.35.1601866375416;
        Sun, 04 Oct 2020 19:52:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1890527otk.2.gmail; Sun, 04 Oct
 2020 19:52:55 -0700 (PDT)
X-Received: by 2002:a9d:73d6:: with SMTP id m22mr634624otk.17.1601866374977;
        Sun, 04 Oct 2020 19:52:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601866374; cv=none;
        d=google.com; s=arc-20160816;
        b=oGa4/vFu/sswVyS/LtVRIrlMNQS3b9OAw5LQt90+H3MCFpDrWtDAYsSnG44ITPWQnO
         jgw963ZDKPtAd0Wyg+5YDLoxqFHHTpY0E+rPvJE4Tu5+BRo/l8HHJ4ljLy1ob4amjkrc
         Oprw/GeJspPnT7+vA9yKwpSK9OCZ2WGX+3+aC0ia+wqxegZOvf/qvJnkWwcY9wVR06ML
         MMbNWGtb6qts2WuHn8M9OdGKW7AEC2c3JaPymHroDooFsVB5MSLFhE2WQq3xbsMrm9Hn
         KTN4D1rDOlkP08sMviOrG1v3jmMpC6Vh0gtWFhBGkhjRK1vwGhROf+yWx+9kG3MuVAy6
         sn/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6IciHQ57heACOgQ9PC/WQNL2sEIEWQWn+OKT+AO4y60=;
        b=ExZwsEm/xErsap3KdSKxssoAXR0jJ9gvK0R6xB7hdthXRYAW3WZxa3jsM060DcQq7Q
         H15wNbuDtk3YcscVUT0QPfgfw/6rrBBDgnq2hhjayaN3uWGKasLzAKvlx7dNrrCjZTox
         S/rXBzQv+bm92dywD8lGHOVGNyp6uthV53S7HR/12z0jQsYWtJfZJ6NVFOEEbWxqJr7h
         te+smhidm36EoDh94PUb8UC1FYNLudeYv6r2m2Hy0BXdcepumS3ZeGlAvw81J8HMqzlP
         aKRLkgOrYOQ06WGGONfHTIwEPrTGMuKSWY1E5pS82lAO1FboRH/HcElJLoy7DoZNFFJb
         3FJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LRvEZ8zp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n7si313098oij.0.2020.10.04.19.52.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 19:52:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 7so5034035pgm.11
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 19:52:54 -0700 (PDT)
X-Received: by 2002:a65:51c7:: with SMTP id i7mr12908598pgq.325.1601866374381;
        Sun, 04 Oct 2020 19:52:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t13sm1875164pfc.1.2020.10.04.19.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 19:52:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] vmlinux.lds.h: Keep .ctors.* with .ctors
Date: Sun,  4 Oct 2020 19:52:47 -0700
Message-Id: <20201005025247.2599175-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LRvEZ8zp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

Under some circumstances, the compiler generates .ctors.* sections. This
is seen doing a cross compile of x86_64 from a powerpc64el host:

x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/trace_clock.o' being
placed in section `.ctors.65435'
x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ftrace.o' being
placed in section `.ctors.65435'
x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ring_buffer.o' being
placed in section `.ctors.65435'

Include these orphans along with the regular .ctors section.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Link: https://lore.kernel.org/lkml/20200914132249.40c88461@canb.auug.org.au
Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
Link: https://lore.kernel.org/lkml/20201004210018.5bbc6126@canb.auug.org.au
Fixes: 83109d5d5fba ("x86/build: Warn on orphan section placement")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 5430febd34be..45c8b362ca45 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -684,6 +684,7 @@
 #ifdef CONFIG_CONSTRUCTORS
 #define KERNEL_CTORS()	. = ALIGN(8);			   \
 			__ctors_start = .;		   \
+			KEEP(*(SORT(.ctors.*)))	   \
 			KEEP(*(.ctors))			   \
 			KEEP(*(SORT(.init_array.*)))	   \
 			KEEP(*(.init_array))		   \
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005025247.2599175-1-keescook%40chromium.org.
