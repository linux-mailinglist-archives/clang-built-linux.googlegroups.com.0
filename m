Return-Path: <clang-built-linux+bncBCT6537ZTEKRBTXRZSBAMGQEVWP6Z7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DBB34048D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 12:26:06 +0100 (CET)
Received: by mail-ej1-x639.google.com with SMTP id bg7sf10533308ejb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 04:26:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616066766; cv=pass;
        d=google.com; s=arc-20160816;
        b=cjov35EEVV1imM/ihwOZoBSYFKrSF9beyTW4LQMdF8yTEwQl3mxv9exR/7SAMpMQ6T
         K6+Tzm7RhhElQUe5qx4+zPsDddwSDFnFDiY/TgNtUbnTynld7nzYCCjdsj+PcIWs96z5
         UF3KZ5kj+8OxZE96yela/YjRkoHxxKnNVxi5u8RYhKAOYqBwm9GHXsPFn54ly8Am6V6M
         tCkHw9ofaSyXLmdsBUJF7W1XDcNTpcY+V0OMYTF7Yzi6qwAMrTMP+HSjDKOwa361RKYk
         rdN1u4XyDF4l+KQpPxLt5eJ0idYho+b1L2/TSTPkQQSytz8Jp6fB69GM336qVEdkPhMd
         ETTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=tnOPOtfizW/xxHe6thnWYOOf+2dqyim2tfbd0DMiO9o=;
        b=uvJYPmkT3mi69klgPkjtWEPJHm2JoKlL6W5E6je40JU6asCNXCb2C1VBr/zXdm8v/d
         jTKJXprs1Js83RWdzaneyXgjkIKMW+08Gv9b3JV+GMzDcxmuuSHePoNEFZuqrxkDVjp4
         VFRnuyHHAzY7gL90eOqVSFzBaW7L8Q3XYc+6p1W0+/46gt9ib2AEgiWJxnSHF0wiuD/M
         PpbkwXezXTqA8u5lc7OIveq00dll950F5Ezny5IJGEBWbjE4l8xpFRrxY3yEgHexvW20
         kPds2euMWjE3sqEI96IosXPHLzXnjxvOhkeVSL4kvpUGBxbnYBcscMwEcAMTu+xGacAh
         RUgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="kcO/8i6u";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tnOPOtfizW/xxHe6thnWYOOf+2dqyim2tfbd0DMiO9o=;
        b=renvQ9gbmU7WBBEHhEmVfV8CopfRThOb10Npp13tIm54LPZfTthvwVMPwkXTz0GKZq
         uLaarjMvvgwHfiXs+m2SD9lhNn9f5VCI06Og84kPGjdeSShHBSkZrk448N2vQtVuP1RF
         7myOnnKVIsoNm6t8E04U4f2PDHA+Q2SiJxgj6uv4YoKgsr3x3NHbsEJ4eWJSL8nvIojw
         grWIiCj9Ws2NNqCIW/Dj+Ob4pCOxx0/fHfyHNRL6J3J2NJZbCKQqrH4AFNhRAhYdUXVY
         cbJrTm+OcHlyXJNAdl13qGJKaDMeOB0pI5AlR4vtsXE3RwLMAtCnfYL7uMXAQ2yuN6oL
         Rjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tnOPOtfizW/xxHe6thnWYOOf+2dqyim2tfbd0DMiO9o=;
        b=RRzL4evW41oHDwJm+IrbGVCHEn0JhNRLjKdBL3HWY+vAUMwuwzjzFKM/O30V0YJ58D
         id6bzoBFDY6SIYvO0zWGFhC4le0p/qtV5GZyuuerA+p2rOW+cr0B4y64LLfzBCUviw/O
         m1TkBaAQzFxTSpC+yHul/UtFtA3edShNKa/SvhL5JYAFxsQkad7Cp5s/jQvCQUXSoP43
         5CgZ+E6SYO95RAbb3FAUZC1crUlYNhlDAdDbKLh22TVIr9hIRCdM5jBFcX3JIf/5jXWN
         7BsDRr3CuYWlepz8i1sxpB6B4+rPKG4pgu7cYn5gBqV7R7emgGPg0tluBsFEDZhEClVL
         S1Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DaHnflR+oKA7Kp0PS/Ke8mOG5bUaMYP0zZtNZbHquTB6Pitc8
	E0bn48K/2zJ0H+vBe+WlxLE=
X-Google-Smtp-Source: ABdhPJz0sclOpU2hba3syBQGgPUstR4rfp4CZgnaz219mFHcM6DcjtffHEbDP4nvzTSQhQxvrh2kqw==
X-Received: by 2002:aa7:d687:: with SMTP id d7mr2957601edr.118.1616066766717;
        Thu, 18 Mar 2021 04:26:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls687832edb.3.gmail; Thu, 18
 Mar 2021 04:26:05 -0700 (PDT)
X-Received: by 2002:aa7:dc15:: with SMTP id b21mr3005185edu.350.1616066765856;
        Thu, 18 Mar 2021 04:26:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616066765; cv=none;
        d=google.com; s=arc-20160816;
        b=zc+Rgdv0TfpunQZXrVT4iSmvTMAhl0+zQH6P6Z3PQ28zsTdN3YDUd80oIWW0Gm/kQl
         kYCdOqPHCXNLOaKF7Mv899524M15GDD4bt8LJVsAM4bmPqgpizYhTIKX3MdhG393Z+lv
         DYz9YtHMRwRJPOwGk9fixOSekRfWIzxiU+LMNqL75GC1chdZK6vub56AUifcE65b8y9L
         SsD6afuFU2JiAfrAvWZ3rVZ4jwHD7HjsNUG9cj595I2j1zy+z0Lovdeb51JZ3IRDaSPx
         +Nj/JakGV5JpCvgpcAuWxk10zLz5sR4i5+2t1wMPDy93JruZRPK3V6lecquh+Ao+wlyX
         qUvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/X2uhjyCyP9bVL0ZCIGJk+B5JfymTwMH7DMVHF84py4=;
        b=y+mQIL3Y/eHJH41cGYg/+m7dz5xwautEDSJ8bla5s7YvzpLs4MM2v8GNATZGdczwwb
         Dks+DW5wM+vbel/0Em5t4kXLMl/l6BUPqTia+z5XJtvsh/5ReJNcWUbpnqEmSkEy05jf
         Zj/nHFuAZWVk24L3JEBUa7photlc4pNMiJ2zScbGWiOiZI21slm+QR7hTfkIeTqTPt5t
         wKPnSpltpz+tSXrchiHCs+oyR7idsRw2yHy0tMUY5s5wcAmuJcGef25sMByFYfAcxp7f
         jfXIIl1S4BxvxDbuN7o2kXxopqIcyLsbZ5JJ1hepVDX50BajB/0HJB2Zc2VWnHMVP98y
         ZOGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="kcO/8i6u";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id w5si60003edv.1.2021.03.18.04.26.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 04:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Received: by mail-ed1-x533.google.com with SMTP id h10so6130218edt.13
        for <clang-built-linux@googlegroups.com>; Thu, 18 Mar 2021 04:26:05 -0700 (PDT)
X-Received: by 2002:aa7:dc04:: with SMTP id b4mr2961551edu.221.1616066765526;
 Thu, 18 Mar 2021 04:26:05 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 18 Mar 2021 16:55:54 +0530
Message-ID: <CA+G9fYtZWp4MPs4QmM2gKTZGxX8PNzYRFHDy+zkhVTgOmitr7Q@mail.gmail.com>
Subject: next: arm64: compiler_types.h:320:38: error: call to
 '__compiletime_assert_417' declared with attribute error: BUILD_BUG_ON
 failed: KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Will Deacon <will@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Marco Elver <elver@google.com>, 
	Borislav Petkov <bp@suse.de>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="kcO/8i6u";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

While building arm64 kernel modules the following kernel warnings /
errors noticed on
linux next 20210318 tag the gcc version is 7.3.0. I will check latest
gcc version builds
and keep you updated.

 In file included from <command-line>:0:0:
 In function 'resiliency_test',
     inlined from 'test_slub_init' at   lib/test_slub.c:120:2:
   include/linux/compiler_types.h:320:38: error: call to
'__compiletime_assert_417' declared with attribute error: BUILD_BUG_ON
failed: KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                       ^
   include/linux/compiler_types.h:301:4: note: in definition of macro
'__compiletime_assert'
     prefix ## suffix();    \
     ^~~~~~
   include/linux/compiler_types.h:320:2: note: in expansion of macro
'_compiletime_assert'
   _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
   ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro
'compiletime_assert'
  #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                      ^~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:50:2: note: in expansion of macro
'BUILD_BUG_ON_MSG'
   BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
   ^~~~~~~~~~~~~~~~
   lib/test_slub.c:101:2: note: in expansion of macro 'BUILD_BUG_ON'
   BUILD_BUG_ON(KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10);
   ^~~~~~~~~~~~
 make[2]: *** [  scripts/Makefile.build:273: lib/test_slub.o] Error 1
 make[1]: *** [  Makefile:1980: lib] Error 2

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/984/consoleFull

https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/984/consoleFull


- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtZWp4MPs4QmM2gKTZGxX8PNzYRFHDy%2BzkhVTgOmitr7Q%40mail.gmail.com.
