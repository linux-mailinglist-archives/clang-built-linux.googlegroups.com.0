Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHXKSPWQKGQEHJBG73A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F8AD6BAA
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 00:22:23 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id p15sf10804393plq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 15:22:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571091742; cv=pass;
        d=google.com; s=arc-20160816;
        b=D6/e6PSUZemvyS18rHzSG9E58T305wKzQNk0kLXznskDVlsLp5/PZG9ch4e1BX3nwG
         +4HPVMsE1L5QCUDE7wRqksM0/99mCUXVPOQH1nntftaNOdNY1tucGvJl39/DxlEUh0rm
         +sxCBKid77jvhlcN8VFUpaTjkKIA6dNpBilI2DPH1WQu2W9grmtlaLJ0q+f/+5ySfeRN
         GvfO0BrUu/4ey1NIwLuhKz8KFEF02ymYj4IBAD88lPYJSt4ETKV0b8faxuPwH4MRvrrV
         woet/zBvKEctzRL+kVXkpbYw5TUL8TLICgiqVTsa8QyetrSnua/zNrf/cfW7KYKuKUPX
         bwZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=51CEllVayNVeB5o0YkBBvL4zMtDYzKwG3N5qtSYj0qc=;
        b=LHG9FS/rKLo6r/fQGZWVXktnGgq3T6ut42JEZwO+eQ62iyNeYJWB1tqOTOjLQurJ9c
         FlJtSjf5zki6AozgoXJ3OipuG23bbT3sr3BiVNEASSzQCtO0fl9h0aMF9izRoAhgOnaQ
         qB6NNA3s8XHA9Q8HZRSq2fhEB35MYXkdEJxZnimKv+NZw+6Xfz2hh6Kox/2Bbf9zNguj
         YgQ05xt2vzy/+og5qOHgMpnigylXEl14lLg6JdKWCGd/ab8AFoFrjQxos7stZJeehBPr
         x/KkTfFl4H1yUPN33GP7S/3DlOLERevo3kBWogg/NMqtnRwl36hD3QMZ5V4gv/dQzZQQ
         29uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y7lIqjnt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=51CEllVayNVeB5o0YkBBvL4zMtDYzKwG3N5qtSYj0qc=;
        b=qLRch5H/wB9Msflr5uKgl1qVBVAht5DhDHsP9Bf5JUXS/UfDwnU+2JB6+G3ndo8nl/
         vFDmFmJrweGNe9TOx0bXUqsZeLGmuW3i2fONh8h4I7F1xCvOzZeoFB6w1owLlQ3X0Cnp
         3JBy5uiOwEN4TFritdYeXESOV/bLpwlNZeP7YWPFZOaAA99mpl9U9xWO1Ce+3GQmm0Eg
         wBnZI1PkYuWwHghO0k4V+UA/zdj0o2BAKHwOZ1m52lH9Jg2QyvmzLLVZrW3gr3eBslyj
         eZpIUpKdgBce+1QAjQfzBBC9pmamKELUHmy7chY0BApecZXKu7GICAsJ53JVLtVU+CqM
         xkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=51CEllVayNVeB5o0YkBBvL4zMtDYzKwG3N5qtSYj0qc=;
        b=UHOfuPeYresb8k7C1rJ8x5GrZGY/AQqjUrRQH+tKq5dm9RNG9npfj73V/VLT0eoofA
         bUKu381xHM197UTBMXcP1AF7H+a5zYAAxzjQHKoCca0x8egzHieORz9jMyLlCIFOeB/9
         Rd0VTWR0xsFol+b339+knpu7o4LOdKt3RBrLm/SPzkBUaVOXA6g9zxG8VOj84SWRniXf
         xE2Lx7bI4y68hqcg4IIH84NknSBzvs8iIx0IJgBI9ZlH4bIgpBCmqgq2zLiHY3IDioUx
         ZIyLLkWHMj5LQ20aN/oDcGkI01zPSN6pDhnxkqk1uC9CcurlFVBRgyAFtaqet7WW+7H5
         sjRA==
X-Gm-Message-State: APjAAAXTXQuiqie/Gl8Z+7obAY8uEytysP3awMO3MFnLgJK4CMdc0l7G
	xNxMfcSEfg80qmCsaTubkdg=
X-Google-Smtp-Source: APXvYqxorMpFwQ2l/mQO7EcjODhm89f8AxTIaSqfLjNo34BJjcoz5Y2SJc9RCUpixv+Lcz3nqJavHA==
X-Received: by 2002:a17:90a:3628:: with SMTP id s37mr38774018pjb.38.1571091742164;
        Mon, 14 Oct 2019 15:22:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:24f:: with SMTP id t15ls5011816pje.1.canary-gmail;
 Mon, 14 Oct 2019 15:22:21 -0700 (PDT)
X-Received: by 2002:a17:90a:e987:: with SMTP id v7mr39124930pjy.86.1571091741821;
        Mon, 14 Oct 2019 15:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571091741; cv=none;
        d=google.com; s=arc-20160816;
        b=lHMbHZUjK+wP4OoN0IRAhL3dWFPlOfZqJGf3U/HaUl+DjI7RbfIsuvw6+XvdDad9Pc
         00Hx6I1fHTv0c4qTK/kzi576QySYZ3aEU2k5irbKe2JPn6pRqDhyQCmVYUGhZcsRZVAQ
         lsS4VR2gfBACDyPkZiQinSI4wZ+0rU8oiAEE61Ou0WHl6xZi3fo//xHgYmexXNMA5O7O
         qgNQbizZfgsJcVc7FjRNZPz0LZb8nxopeAA4TQ4gfDVNA5ep571Wy8mD5NrTrn8wMNN+
         HdmmU4l7C4LpDvZsPt5HReZwz1qVKNZUcuJRwm7K2aT/+1iUJFmonc0bwyDT+LiUo+yg
         YjDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=iNkEDH3ViExpb/y5HnKz3o/CDE3c8oQsLUlWmGCk2mA=;
        b=k3gZWQS30RQ6VpsVJz6MD5HbyJlavKSW3/Hbh3hXkNXSZaH0e+bobeC1R5eN6ETApN
         fTl0clLiC5S+c8Is+RfXWqIjJ5+dBxsETI6hPeV7iQh/Et4epz4EAx875rxMTguOkks9
         iUaMHosqE28aTpEbYa6l0FiVCBuZdbAQ/cYTeD8AfTQawrss+PTTsvwtK9QxtQgHNc7R
         OdPYFF0D45xReIMYBmmN4qjgNgTf5q6y0So9h1eLo+GN8uXFSgJ104FBL78Ud92RbGwy
         7MmN35ZcMZyamgM6/ntS0bLZ8wfVFqLOC3VvZ0eiJ0LXxIowQ6tOMBHwkqumEeA4TvlR
         p0pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y7lIqjnt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id br8si32885pjb.3.2019.10.14.15.22.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 15:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y22so11150505pfr.3
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 15:22:21 -0700 (PDT)
X-Received: by 2002:a63:5448:: with SMTP id e8mr7961310pgm.10.1571091740976;
 Mon, 14 Oct 2019 15:22:20 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Oct 2019 15:22:09 -0700
Message-ID: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
Subject: AMDGPU and 16B stack alignment
To: Harry Wentland <harry.wentland@amd.com>, 
	"Deucher, Alexander" <alexander.deucher@amd.com>
Cc: yshuiv7@gmail.com, andrew.cooper3@citrix.com, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Matthias Kaehlcke <mka@google.com>, "S, Shirish" <shirish.s@amd.com>, 
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>, "Koenig, Christian" <christian.koenig@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y7lIqjnt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

Hello!

The x86 kernel is compiled with an 8B stack alignment via
    `-mpreferred-stack-boundary=3` for GCC since 3.6-rc1 via
    commit d9b0cde91c60 ("x86-64, gcc: Use
-mpreferred-stack-boundary=3 if supported")
    or `-mstack-alignment=8` for Clang. Parts of the AMDGPU driver are
    compiled with 16B stack alignment.

    Generally, the stack alignment is part of the ABI. Linking together two
    different translation units with differing stack alignment is dangerous,
    particularly when the translation unit with the smaller stack alignment
    makes calls into the translation unit with the larger stack alignment.
    While 8B aligned stacks are sometimes also 16B aligned, they are not
    always.

    Multiple users have reported General Protection Faults (GPF) when using
    the AMDGPU driver compiled with Clang. Clang is placing objects in stack
    slots assuming the stack is 16B aligned, and selecting instructions that
    require 16B aligned memory operands. At runtime, syscalls handling 8B
    stack aligned code calls into code that assumes 16B stack alignment.
    When the stack is a multiple of 8B but not 16B, these instructions
    result in a GPF.

    GCC doesn't select instructions with alignment requirements, so the GPFs
    aren't observed, but it is still considered an ABI breakage to mix and
    match stack alignment.

I have patches that basically remove -mpreferred-stack-boundary=4 and
-mstack-alignment=16 from AMDGPU:
https://github.com/ClangBuiltLinux/linux/issues/735#issuecomment-541247601
Yuxuan has tested with Clang and GCC and reported it fixes the GPF's observed.

I've split the patch into 4; same commit message but different Fixes
tags so that they backport to stable on finer granularity. 2 questions
BEFORE I send the series:

1. Would you prefer 4 patches with unique `fixes` tags, or 1 patch?
2. Was there or is there still a good reason for the stack alignment mismatch?

(Further, I think we can use -msse2 for BOTH clang+gcc after my patch,
but I don't have hardware to test on. I'm happy to write/send the
follow up patch, but I'd need help testing).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnDVe-dahZGnRtzMrx-AH_C%2B2Lf20qjFQHNtn9xh%3DOkzw%40mail.gmail.com.
