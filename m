Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV7EUP5QKGQE3O37UCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7328E273203
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 20:35:04 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id t201sf9331180pfc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 11:35:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600713303; cv=pass;
        d=google.com; s=arc-20160816;
        b=kG8e0MYcIRUEThr34B/elVxQN+I5Y3E/DMIf1bK3/IE5ErcEVneA+BJb9GMou4MJiy
         76Rqr6KrFGXcHjQzekcFQ+m3gdsyPMsGETILgq0EEQKFDwgpM/3QfSVheeuiWUoRTSTT
         f/mYS3vBXBeclUeQ+CLtm1oiYritV1nzSEdrNNoJ6mhEMNY+Aky851h1FewTR5xsU0hT
         qlAF1KmepF76dHvdDRIMXCLSFQPEJifx0UUY7Ifh7beUGejuuZGbvUZxTdRPtD+yksl+
         gAL7k54yjYG5HI8svlzpPW/4tpQ3qeW8IRiSPy8mzoCzG9kVdxPeCgAgwQ6JB7sMVERz
         xqdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=p4lD+JLuw0uZmJIrRn2PlUqcXFJTY90wAGg+DsOaaRM=;
        b=Va8R5ltmh7Rq13wkBijfe9r7VWzzpfumGeHnpxpx8dqMXT/guWL+6uux8nWADbOtPc
         AeN2+QXpvh//rUrhfg+bU6DFttOseNegxH/0EV3QsrNQoZx4ezrilIAW5bT87yDHJ4Vb
         5efRnk5siTo1XyZP1y3GsCbhb3+t7xzDtqYK5zKulPzlXnfiY2x3q2tlTQnXex2izHkE
         W7AmGtMRI4OjiSIgI4cAtSgjLY74ir9S6wyWR/AFuYfsaD9z16Q/nqi2KEVDFJw91gwc
         Y2B62kZPwXUnihPg5fJYiv4uA/e/y9N5zjJ06pZ/b01BN+1btvFQhlAh8kMr1stjarOg
         Gaeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N5VnRGG3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p4lD+JLuw0uZmJIrRn2PlUqcXFJTY90wAGg+DsOaaRM=;
        b=Cna2UnENRM3pgUxK23P7uUA+c96GKJ4LR1dBEi5LXAAJ0zyvIavkoYHUG0EAthBkYD
         wQPzxM/MgahbahUNFaSHNcXoeWqvGVT9wfQU8efjFHjDQasw7XZ5qnGIEJ/c2vRHoS6b
         VihLbY+/k36+8BxuMDb/7sYNUkh+OHZXzqKI008FLB2M9x8F05ZXAYYYj3KZRNzB4Tab
         hYDJA/Y4ykyj5kidK59r9cFANZ8H2qojXRY/2yPzfb6o90W9QraXKXrLTRSCd46gRynK
         2oG7b7dsPFAcMRdYjE6KlBIebgPaNCgvMfN4DNIRM7DrvJooiORjMc6+/9CE3AeD7a8y
         viDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p4lD+JLuw0uZmJIrRn2PlUqcXFJTY90wAGg+DsOaaRM=;
        b=lvu53w+YdHaxkZAWdq71AkKBE0yEr3h4gmtTam5bPwldB1Xqietg3qoe7Vg4eww/E5
         LrNu4KzGxNrw1wIyqmRqD4Ds2oqsrUYKEHjE47pysgGDXahdfx6Y7Wk7S91PU5F5EHxK
         TQE1Al8dg69ScsrSXvM9/abkez9z+Zjq6pqFnu1+AjOH7Y0IXA8T03RMbtHg/kJaTDup
         /PtXNzVdJ+nKSF9FgVk/ezYmlTuwjjtqQZkdt1pYtwzLt++H7K48/7gKKt2iInp4NdFa
         LJ3eaLqJM6Wupi9bQZssNKmNVQTRl3xcwhuUwzyJdNjZnpG2dnOku/gzSt2on1kFiOmY
         xS6w==
X-Gm-Message-State: AOAM530Qb2ZA+4+tpR9KbgYEOA8mjxogeIuVvqNDFX2kwTeUf76dRe7T
	wxVkrHSplvfv/+Li/RfcB+M=
X-Google-Smtp-Source: ABdhPJxLpZ69TsQvOAzmn0z75npsWHr+7KLe1zAY62W7hN1bGDlIaPswu8f0AgPBKkU0eyr4RoxhRA==
X-Received: by 2002:a17:90b:c90:: with SMTP id o16mr623964pjz.86.1600713303161;
        Mon, 21 Sep 2020 11:35:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7c90:: with SMTP id y16ls6315859pll.6.gmail; Mon, 21
 Sep 2020 11:35:02 -0700 (PDT)
X-Received: by 2002:a17:90b:208:: with SMTP id fy8mr580971pjb.153.1600713302597;
        Mon, 21 Sep 2020 11:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600713302; cv=none;
        d=google.com; s=arc-20160816;
        b=FFDW78L/fLR7pjWrgLcyzUHif7MNhO8swBKuMMdSnp2Rfmr5bRV/5sIMTRCX1uIzf+
         yTqYOWSj7OOSx54n/kKflNzvcj8mj6Leg2zZdMlegpBYozC8op/7O59aqvOP1w7xtnYk
         +vUu2Y9CA3lJgs+Zed+0gV/PdiRVwIrFBwIUHsJgC8T9plN8sxFmhWm2UnV/yyapPtVc
         soxVjPpTzTPloWR1aleQTTcEl7qHXpPGsZoOFQzGC2Gw0AJz8ollHK1pB/Q5C+Lv6icL
         m3yMCuyTEOsHAkIgKzT/2bEsX+Z7geuKjTttLpwcYBhmKxAbYVFEIsFkirigMR3qqWFX
         pYBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/2Z8IartBkPtffqIjRI7bDn8ReaBQI4yKoJOHK76NzU=;
        b=H6TnVFUtJHDrD/El37E+6V+N5K+tCHEEWmSTGgTLMOmnWAfE2nKvm8VPOhVxiobgJo
         J0fC9C4D81+rlfb926Z2WUR9gZvNMpV6bMmCI121GP1VpHyOK/HzB4edzBB5a/9zlgc9
         cGiby0YmEL0hN97tHFpm9FwTRMt4ao9609enD2jbNyUSIRWjxdtzOgBl9OXLRgCHfM1a
         sgGdWwjJoBi6YNzrYJLEgjYlwV+S77EX2xpQSvnHWVnAz+nj9mtCbHdDqOdhiRT3sKht
         nsxjkB4UlhTPWuNE4iUAgperpcJTKeV6G16LRh2JLvpSYhBKXA3ZCt0ue+rlWSZOyZaa
         GaPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N5VnRGG3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id mj1si32213pjb.3.2020.09.21.11.35.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 11:35:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id k133so5030425pgc.7
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 11:35:02 -0700 (PDT)
X-Received: by 2002:a63:7882:: with SMTP id t124mr685123pgc.381.1600713302134;
 Mon, 21 Sep 2020 11:35:02 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 11:34:51 -0700
Message-ID: <CAKwvOdkGd6mPw_OKHwmpVs_xxFW2oqAoXyr7M8hu3PCCwkqCEQ@mail.gmail.com>
Subject: =?UTF-8?B?ZXJyb3I6IHJlZGVmaW5pdGlvbiBvZiDigJhkYXhfc3VwcG9ydGVk4oCZ?=
To: Dan Williams <dan.j.williams@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, 
	dave.jiang@intel.com
Cc: linux-nvdimm <linux-nvdimm@lists.01.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, "kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N5VnRGG3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Hello DAX maintainers,
I noticed our PPC64LE builds failing last night:
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047043
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047056
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/388047099
and looking on lore, I see a fresh report from KernelCI against arm:
https://lore.kernel.org/linux-next/?q=dax_supported

Can you all please take a look?  More concerning is that I see this
failure on mainline.  It may be interesting to consider how this was
not spotted on -next.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkGd6mPw_OKHwmpVs_xxFW2oqAoXyr7M8hu3PCCwkqCEQ%40mail.gmail.com.
