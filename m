Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJU5XKEQMGQEERZN34Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E193FCE47
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 22:18:48 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id o130-20020a62cd88000000b004053c6c1765sf153677pfg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 13:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630441127; cv=pass;
        d=google.com; s=arc-20160816;
        b=YZIsfNiOmCOC1aepU1UB3iip6gGM5cWV4fIU4v24fy/iYMJeOiXIJpEGqjKpr+yffA
         dv8qyj/Go1JKIQ/TICoc1ZB3k3B34qAmPqDZBF90CQyU4VH8ToIvW/JWMQMcGZ0b9I7c
         spE/n8m8vM529VoPghC6HUV8oETfz2H7wf0iBeAZADtJ8qcs8U3/V1GJpCPvCuZDOy3f
         6kNvUXAouHGRHY+VetryPQqi4a5s6NBjlmL1ATkZag7rRfuW5XuIP3pUxR0gW619uztH
         r4xxVsDCtEHQPgtXnz4MEFQeiPSgWQs2zQTJAkRCWQDn4CEP1cnkOcOQJkpXxguROn8W
         eCdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BQotbfWmSd6xhk1lI7tAbAQx90AIlXvDKbwUbm/kTog=;
        b=Rj186t7ZT4qB+Ajo7+F7m4Ue30h57gDkqdYHRi1Ai+bWXHEJ/lasX5UOLHQ+TFTPON
         hUXMJRJQBCKrPwiDEEcUgjRNuDAX/GcQBfpirqNYyYXoEQQQEPpaMwSEL4oBLiQXeS2K
         b38XvTnWYzHVpTx5/6fU6++uX5G85sDH6XjAMmvuLi69ZhISS4JgG6lXLL3jdmbq49zy
         cDIeJ1Ozqj8KZMlkWRQWCjNx3imdhT1UkyHADLX5GkRSbpCyWb5TeXoa3rxfQ6xgo2SU
         io+NdpWDfmjTQva0ZwkqrFpP21o7XMZ+qHJIfKaTZ7c6vEzVZVy3o67T9VPWjwlqFN1C
         JCuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aC14HTof;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BQotbfWmSd6xhk1lI7tAbAQx90AIlXvDKbwUbm/kTog=;
        b=CxECs6fTVYGmUR10X7wG6SXk3+FVGfFjkIe+X6ggWpBv6EPIJk7Oe6Pxja4Gfya4UB
         pHT1WhYG903SoYns90KF/6CR/Ha1l3QWzdEVHwN7aNVuCy5JFwRbrjdHGPE5pxfhhagZ
         QDaqKcJ3zeUaMeAXElc79uDN+ZzLblcaQLfntY1myk/MtSjMRxEYLP7v9koKeRD4feu0
         xEJW3FI3KQOg2SixzmX92MBwOfwvfkmcuG5AYK3d3kyqky93u0OyU85nSudQCCmuInCv
         l28aIHJ+gzOocJzLqK7urZ7Rb4NUouccP2unm13pSfUms96UBPUZxxPjofzwLa1acSOE
         Fobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BQotbfWmSd6xhk1lI7tAbAQx90AIlXvDKbwUbm/kTog=;
        b=M3fhmwkzUamcVdzjDL/QpGkG1q9puUUH0LbojJphwSf4d37XYMPJA55pbvmpC3+y48
         651yyJiS90RoYualh8M7PpDNTUSY+PLer4BhpL6+DtpzyH/KP/I0WvDv0I0aalHxQnwt
         JN6VoYOrdYTdvwz2f3cXuEH/qlfYClyiSzxZAoOb3OqzbJndmntY/oGmIL8KA3MifAJs
         JbTS/j3XUdshguAeSLnY4awyRsmAuuFuoT7HclInNynvKRm4QxToJbjQAn8gwDec8wY4
         I4nY7saqbIeWNDuR2dSmU/vzvWVpwEryytJKBF0uqWuiMt1vYCKckkcgupRyOfDSkQfB
         ChUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tagw8zN0EErvyZMk+FDUGixXhFmHbaIn62+lFsBKYH6H8Ky9w
	b8LS8Ob0zsyjGqb/bwF3mbY=
X-Google-Smtp-Source: ABdhPJxorgplbXx55neABZk44d8oSopyy9EMSGoFpaK33pPURbscrsK1f8c9wy7vzsP6gyxiq+U0Mw==
X-Received: by 2002:a17:90b:1645:: with SMTP id il5mr7422005pjb.57.1630441127053;
        Tue, 31 Aug 2021 13:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6643:: with SMTP id z3ls32937pgv.3.gmail; Tue, 31 Aug
 2021 13:18:46 -0700 (PDT)
X-Received: by 2002:a63:5902:: with SMTP id n2mr27669644pgb.305.1630441126542;
        Tue, 31 Aug 2021 13:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630441126; cv=none;
        d=google.com; s=arc-20160816;
        b=KYiLjzTEGnujUNrVPG4e5Fd40KGULco8pYju6U3Nmo51D4CcSB0c72y9EakklH6DSM
         lggk87l3vX6JrwHGqbSoA25qyy8NH/U9QYmiikAH+HBVMmrcC/bvH4zYzY8Uwx0GqFoW
         u/pPFB3S48916vqywI7Uqtr6QnlfAMah+N/b0n9yB2rybSdt21hobL/nbCXnb3B4uMH0
         yAbfsv+Ul485/y/dYZbYGsyoQPqaQ/NzZRb+Z6a7ZR68vziu3JcTw7Y2PP34oDf5oh0H
         NVPSUT0HuQG8ha0UlrasqXiUKZQzAr39SnccZVGlkoL/h/qn827P0AG4ccCzApyuMz1k
         TNZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=r9GlhdKOosTzO8LRW6O4s9OUHVsB4FP+bxUhxdd1GR0=;
        b=0ivf8KxSzT+htv/1pfTlGKMmR3077Oc0Q5DUrgCv/9m8W5+8t7j3euaN6ILasuw7g7
         +f82JTKOLuY1DIt0EtXUwYujs7utREGFvENytFgkN20rMYD1ER4ireWAx4cfXwruFNGQ
         gIopletsWBU5E/KkHkQ1HYCLVqLSVEX9MteyP1ve2AYDPoV6sxkEaw7BT7WK8E1js6SE
         pMwmMisL+SNGOBgOlFWLl/XFRR2kylNz1Bi5MpGiyBLW13N9jUWYf5v0D15PNDVI0Ndb
         60Rm4nq+2oW0gJfG3djRIFdzX37uuAPHCjlJMkkZodxGJuWQT9yimNdqwXW3ie+1fcKg
         NoEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aC14HTof;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id my17si209852pjb.1.2021.08.31.13.18.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 13:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id q68so366952pga.9
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 13:18:46 -0700 (PDT)
X-Received: by 2002:a62:ab04:0:b0:405:c1c0:543c with SMTP id p4-20020a62ab04000000b00405c1c0543cmr4085848pff.36.1630441126251;
        Tue, 31 Aug 2021 13:18:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d7sm22416029pgu.78.2021.08.31.13.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 13:18:45 -0700 (PDT)
Date: Tue, 31 Aug 2021 13:18:44 -0700
From: Kees Cook <keescook@chromium.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 4/5] Makefile: Enable -Warray-bounds
Message-ID: <202108311317.DFFFCFC74@keescook>
References: <20210827163015.3141722-1-keescook@chromium.org>
 <20210827163015.3141722-5-keescook@chromium.org>
 <20210831043128.GA2749311@roeck-us.net>
 <202108311042.FFE1818D@keescook>
 <3ab153ec-2798-da4c-f7b1-81b0ac8b0c5b@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <3ab153ec-2798-da4c-f7b1-81b0ac8b0c5b@roeck-us.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=aC14HTof;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a
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

On Tue, Aug 31, 2021 at 12:40:53PM -0700, Guenter Roeck wrote:
> The configuration doesn't matter; it fails for me for all configurations,
> including defconfig, alllnoconfig, and allmodconfig.
> Key is to use gcc 11.2. The image builds just fine with gcc 9.4 and 10.3.

Ah! Yes, heh. That would be my problem; I've got 10.3 for my builders.
Thanks! I will give 11.2 a spin.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108311317.DFFFCFC74%40keescook.
