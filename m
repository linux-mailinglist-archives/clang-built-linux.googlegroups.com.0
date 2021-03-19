Return-Path: <clang-built-linux+bncBCT6537ZTEKRB54B2OBAMGQEFDUIOVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C34C3420BC
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 16:19:20 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id r18sf13019938wmq.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 08:19:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616167160; cv=pass;
        d=google.com; s=arc-20160816;
        b=FXiEUS9TH/y+oNlfDPlKZO380LuDERMugMQ63qxrw0i7igYOLlgdt0HObqE8z2vySD
         26GWSAmhubbfUNMBG6qhr+AsIn1u8p/+EvX9GRSiEl//KafrCoRvb5qn3Qk8a60xYQrV
         lLRGoljRDdRvK5OG6cFje1M//p1aRU1vDcPIzHZaDvblSEB91UPo93iTYyTEoXhrTOQg
         aUaBc4L3fkqH+nCtyZ3njIMnmOuVNByVn4g5wpQF58sCIHQlochn38hvnL8c2p7AMU8w
         iJV9pq4Xwh/RkBIqL+biXBm6bHmE2C/D8f+6aOWgCqE6Bmh2DErEwlnI+PMtUi0negkt
         Essg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=PTkCaAz8jQUBNuWaJA2Mn+3C18HOtYOzY2F423coQhg=;
        b=VUaCUNqvIN7rktP59eZ9ZKhLrs18BBIG9TNCGM07hup3aSwlbgPY3Yomh8i8nkV5YZ
         y+UtQ6Y30jGns9mt1hWAw6hXn11q3sHGGUl50RdpWCBLNmf8+i8IrRetGJzzpWqX1cPU
         IJWArnHroZ9mK+tU2MJa4O+cfFLwcN8av51KrTz10dUsTnx8TDcsYi79SATas5XJBytT
         dmfCJolXXVaLth2Oxv0X29UO3aufdyZdaCGdKNCA0wu7hgH5Zt7L9KpoAe28fJwaQVsj
         rpjogDFeBQY7PVuKnLAc4rVAnhbFcev+MopCtqY+ey4B7hkOvKxJwzD+1O/BKhJzUxYC
         esZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E1MyGjAN;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PTkCaAz8jQUBNuWaJA2Mn+3C18HOtYOzY2F423coQhg=;
        b=M3sIQR+gAO3bbCY2Fp41CPCwYqfs0UNbGVO07kxOyC7MifRrJVPm29WccW24n6VRQf
         XT+wWq3JsWm4lgq2fXPZxxWlrJwCZfEaDX6KmNdlGtWwdjVqCSIZVsowGnNMnYb1pLUM
         ffXrRX10ynyAjlJB4M1q9BaN+/zekWPO3K2d2/UNhtNGeeUILMK0rEyToPy9yLMxgPry
         VIkNO6h2cXXBNjaTI8BBverg52GoJLZzuGyAfEbHcytA/SakNCPwri+y5+xiaPuJ/R02
         2qVdRBu967NRFwT4RY2cIJ5rJlkUfykWCEo8dtgP7pW+5taLv8sBxbCNyPIi386VKQPl
         Pe8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PTkCaAz8jQUBNuWaJA2Mn+3C18HOtYOzY2F423coQhg=;
        b=fLzywoR8M2rXSngqGonlpuRpFMEHQLXqsjwvkbjlI+V7TNZn9ep14JnMbWeWvEShGN
         zCwKuU/n6rSVvZR6WMfFtp/8c/NoSK/DmliE/85Gtb99ENXsnypc46KOFf/Au70Oss2q
         LGj5cbmerwAMYdAUGpaZ2WjBSMiPfWAxlG3TxdNYJLoidGu9+gLz99eLsQy48lY2n6VV
         wByRAr2SGmNhjWXC3U5wvZpQRN/mS0n38B+CcI7yd9JXmUTWTtyroKG60kBGEDx0n6la
         lhvhk3k0+zCB0jNoQI18A+mb8QxVx2RmI5o44TS02IY1q0DJjne0L9jWM0IeZzyj+c5c
         DFUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E0GTBaED/paFpCb8n9gsw9b+LCpRfp6NP3BVqlHb06OgrdZ8P
	mhLt6Y4Kf5BcO69mb7emQ3c=
X-Google-Smtp-Source: ABdhPJx/IZA8g6uIygl3zbO9qxlPcEgsopjp1WG33+K7sl+IYl5DjrpR1cynonA6JtbyNrsAab/r+Q==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr4352407wmi.153.1616167159922;
        Fri, 19 Mar 2021 08:19:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1546:: with SMTP id f6ls2835311wmg.3.canary-gmail;
 Fri, 19 Mar 2021 08:19:19 -0700 (PDT)
X-Received: by 2002:a1c:7d4e:: with SMTP id y75mr4239720wmc.168.1616167159044;
        Fri, 19 Mar 2021 08:19:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616167159; cv=none;
        d=google.com; s=arc-20160816;
        b=o+9f3e+7+S0FaaO/pflnz6LsoPdTXhO3dbkxHsHIZIM3YJU3FdV0IcEu4VRRSXLc2+
         IppB2kwSWw4ghf6aWDhGxrYxAuacCIs5XyJunwneGxOuz8eAnO3MeDsKM5XzoySU4gIi
         91D1Y6clK+GMVHH6eF4LCSTU86QReM+I3nnYCeuddjXjbCBWa6w3gTy7A4fDlOf+aE2l
         xpx70NVKYTSgxRfyIUdBpBKJEyapGanSxAmb1d4zfmzkw3cgMDbZAfWHAvYZlpw+TNK1
         O2AjOvJ2+i9lX+vMvt5zhlFW4G4BqpwMFLtUQYPsplQD4Y9HAjCugwlp3brYQgW45Hbn
         /Dig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ESHJ/xpoPLprVXdQr5aaOZYnopxfXbBpJirRzC/e87Y=;
        b=WXyGfwrSLzy6kk5HuZSxvHnJVLCJmQNFn9l7S2jBWp4KktswP4Uow4E+1rrCLc4A1H
         qaNN0cSTw7wZeix9Xfj9hH6dMqm0KrdZSJ4CFjP0Ej3EAHjvxeZioaXvzjpaaJT9Lf/Q
         UBIZAyCfripMGZcWm8Q8GiJp4achD1f0RKVNkC1ArrZnkDNsW6UZbYmtYtU/VHF03+ce
         S02F7ZyA2PL/4IBISxscRQcJZPm1Y/bT4w4vLcTUhj/KhdewHDW6TImpltxFRuccXI9p
         nrzUr3w4xU7zn4xVJvOyO9WDCEbSNJ1K3t8lHKXNghIg+ZHvcSt2NKdr6MZ22UNMw/la
         +FdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E1MyGjAN;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id r11si238575wrm.1.2021.03.19.08.19.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 08:19:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id t18so10301344ejc.13
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 08:19:19 -0700 (PDT)
X-Received: by 2002:a17:906:4c85:: with SMTP id q5mr4861822eju.375.1616167158632;
 Fri, 19 Mar 2021 08:19:18 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 19 Mar 2021 20:49:07 +0530
Message-ID: <CA+G9fYu-t_JwoBVXKhiDUY-FRdX3F3LgbDw9bFeiuciwC70TaQ@mail.gmail.com>
Subject: arm64: compiler_types.h:320:38: error: call to __compiletime_assert_417
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org, glittao@gmail.com, 
	Marco Elver <elver@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Rientjes <rientjes@google.com>, Vlastimil Babka <vbabka@suse.cz>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Will Deacon <will@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=E1MyGjAN;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

[This email landed to Spam for some reason, sending it again with modified
subject]

While building arm64 kernel modules the following kernel warnings /
errors noticed on linux next 20210318 tag the gcc version is 7.3.0.
Build PASS with gcc-8, gcc-9 and gcc-10.

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

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYu-t_JwoBVXKhiDUY-FRdX3F3LgbDw9bFeiuciwC70TaQ%40mail.gmail.com.
