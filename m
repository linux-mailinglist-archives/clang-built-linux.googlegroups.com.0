Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4474CNAMGQEG6ZDP4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B58F60D1A9
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Oct 2022 18:33:57 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id z8-20020ab05648000000b003b48415d88csf5841988uaa.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Oct 2022 09:33:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1666715636; cv=pass;
        d=google.com; s=arc-20160816;
        b=H+4hmoFv1mYULvk066dHvWS87v61eyzPLBsJodljZn0nJIDIt6n27ALuwJTjrscZ1K
         E9RG6mu1U+l+BVA64I9yaEeFvFjQ6gUWUBbj2kNOZIMFyKXCtUpL6ii0UqFv9QFvjOcr
         Yuf4XcQndm8afq6ZIkFeqtBe6T0rJn3TAXJn2AsSphS9B/JN1OgY4R55JTTmHYh01WxK
         1icmaw3Xq5NU+IP6AT4TcSodmHMVbYEvtDEUkokXgJmyufLQqSWmf0q5I5k+4GE9TpZB
         8jM4o92Q8Q7GV7yDsyCGdfbVcDYr3PyPz8FJDTAsKsqbcP0EvEAYVLZNS5akj9Q1vthR
         3TNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cGL86kjJu/K5VC5C62Qxu2P2m4mxDhY6fug5XZy5cYM=;
        b=ADV5MHP9De4Cecs0NuNqv4HmfRU8BR3SUYwpxcL0CiCd6vj4di0KIruzIaBVmG4Vf4
         JUxg+lG5ZpFe2ZvzK8iAQ0oRKHag/Rv8iVOu9ZTFGyPvop7EstqLMMkYohyB1AAomycf
         UjCMNs8fgTBaOIlADkenPXFTz5SOJ9IMmdUhz3LUVZZkMZEQFIer1gzOTeGj8dQygmF1
         4/batG7UKWa3IGvNInyeYvv2ox2jsV884NQdz9eE6yUZ8+7+v7MhAjwarDeAq2Xk5lK4
         QrwUx1yjb3qz9c6kOk7XZ35VnBgv4mlco1aun8l2lEEhMEARMCfxai3tbLRH8RV3fHUJ
         ukLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=dsyZlivv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cGL86kjJu/K5VC5C62Qxu2P2m4mxDhY6fug5XZy5cYM=;
        b=VeNbEPnXbl4rfiZyDfqTzO5n03m2YXaFFNe8FiRhPkyzTwY9lXzoChDpgLpWZcr/6/
         XL1ZCqmw/XqFChZUpN9zd1NV4R7E27MJRgUNXsNsNfVUiBeGEThC3GoDPi1x/YT+alN3
         s84oH4qOD03JliG9+ZqfrgdHIU58HN0wvuleNOyayC5IcEPV9fI7mdI6cxqEq5beEkKh
         424WxqeSi14ZEruVLWUhgmGJMibQKiJeaBoiOQg/DyolObviGfx8wkKGDkFqdYkiOe3s
         aJQvdaJZbTLzwEV6B5dIEbG4JjNwmczvEGNbGdp4fPE3zO3yVwcTQpDhj8WcFwZ+EALu
         Dspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cGL86kjJu/K5VC5C62Qxu2P2m4mxDhY6fug5XZy5cYM=;
        b=lFl7tuzOMOCEXXNJTpUcjk8e7JlSX8QonWGPf0nvMwPcvxdaTRn1lBHy9p6vqOK4+W
         tNBc5bkkjeYejhSbdjONzzxCzhNdceVmjmYYQAy6cu8PLcMBPPT1LgRmzFk+AenQbryn
         Snw1qxlSQRTPKo7TFjM8VZ+KgAbBRlMskzp2wc6A2n7Egncs3ZJZla7+zyZitvW3ysg7
         JCqMsQpiiZN6ngD5vtY3C598jKM3ordQ76L/ASXUDJuantjy0U+ZZZg948lVsd4E/M7t
         yjwX/TPoBSiTjhhGIEjuC0x3CiWv63yK7r0wfYGuXfeWYWxOd+M8L1Tdt6iA0mhQ5dsc
         ksYw==
X-Gm-Message-State: ACrzQf2Jze+j53SLxCC657zQzVl6wkZKd+9kY8y9+E8l0X1DUEGRG3Sz
	vt+vSLcDinO7wSXBl6ggoog=
X-Google-Smtp-Source: AMsMyM6vf4j614uHUrXR+/5Rrj3b5NoKFJr2oL4tvWnFIuAsHXw+jqCwQ+IIQkAbvALVd85/dTZNRQ==
X-Received: by 2002:a67:d48b:0:b0:3aa:2ae4:ac37 with SMTP id g11-20020a67d48b000000b003aa2ae4ac37mr4590143vsj.5.1666715635655;
        Tue, 25 Oct 2022 09:33:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a1ca:0:b0:3aa:d905:adbb with SMTP id k193-20020a1fa1ca000000b003aad905adbbls1225640vke.5.-pod-prod-gmail;
 Tue, 25 Oct 2022 09:33:55 -0700 (PDT)
X-Received: by 2002:ac5:cde1:0:b0:3ab:7cc2:cd11 with SMTP id v1-20020ac5cde1000000b003ab7cc2cd11mr22009821vkn.14.1666715635082;
        Tue, 25 Oct 2022 09:33:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1666715635; cv=none;
        d=google.com; s=arc-20160816;
        b=HgbAET5qDTrDNR7dZDPZGa8OSyXjuwV7/ZJxOr8DRY0Hf0cpGdKK4eHcASGbB3+1cZ
         ytqv7h+pJ7Lna0B/EuE/048z0an7ihPvdqKAmn+R6zYaJo/bkiav9LDjta7acNt8d2q+
         OkQiObSqbTFq8QerDob1qU5QiQO4Vp92M6KGYkdJRTJ1cFAnxFDYWMVWEbV+5A+MwdAm
         wPcfH7GHB4Kp9E69m3mLLZDx9St1ckMFRhGlC5wkiqF/HyZg3W6TKE1acEiqfsLOZCJ8
         7YbAbOp2FHtFmiUlvTLSMnx7BXEBt4PJQA0diG8AX9FmgrcZS7LKfbOOCkup3z/TAHZc
         fkEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w+K+VkJ5rF2bPWIuGGL1An2TDI1B6FPu0okQWTiFSFU=;
        b=iHXpB4mIC04C80W0ShWkxuBoCLa1nJFxkcVLA7sURCSvQnmtxOYWzoI9q561TMLdBY
         6wHVEI1nyUgpYq48qBrMsdLFiTAoLmIb6ZwHD4vWBJ0Gzi+6Vlbhh7slvBJOxe5sSV0c
         B2QdtiHi8gfNzDCjJ7ip2H6O30eb1utob5U6IwTfq9+evRoh1IIPGyHGaW5qqdmFnXr2
         9AP+YWo1nxT1jUrhEDgrdvbnrMh7L7e5SgVrSdeuRpzbsfIBwS4GN2YESAENvcDL5Zef
         Vf8gNPSc8QCCnnBSBb1SYcSKQtYqdmkMSEDcShPKtc7Q2UcXwVa7NRpTQyd4WzaFCtb/
         xoaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=dsyZlivv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id s2-20020a056102364200b003980b6c8861si118886vsu.2.2022.10.25.09.33.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 09:33:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id m2so7384020pjr.3
        for <clang-built-linux@googlegroups.com>; Tue, 25 Oct 2022 09:33:55 -0700 (PDT)
X-Received: by 2002:a17:90a:c24a:b0:213:13aa:3e2a with SMTP id
 d10-20020a17090ac24a00b0021313aa3e2amr12267189pjx.107.1666715633777; Tue, 25
 Oct 2022 09:33:53 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYvGe+fHXw8RMeZuXB-rGVDjs81m9_RwDq73R+pnVpYjEw@mail.gmail.com>
In-Reply-To: <CA+G9fYvGe+fHXw8RMeZuXB-rGVDjs81m9_RwDq73R+pnVpYjEw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Oct 2022 09:33:42 -0700
Message-ID: <CAKwvOd=kPA=FV9UQXLe1eyRwqDOYrRkB+_d+E+JdY4BpRUUaRA@mail.gmail.com>
Subject: Re: Clang Build warning detected - include/linux/memremap.h:258:9:
 error: expression which evaluates to zero treated as a null pointer constant
 of type 'struct folio *' [-Werror,-Wnon-literal-null-conversion]
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Ammar Faizi <ammarfaizi2@gnuweeb.org>, clang-built-linux <llvm@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=dsyZlivv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029
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

On Mon, Oct 24, 2022 at 9:19 PM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> Following build warning / errors noticed while building x86_64 with clang
> on Linux next-20221025 tag.
>
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Hi Naresh,
Thanks for the report. It looks like AKPM is already aware.
https://lore.kernel.org/llvm/20221022163356.f5e08eeefe66fc71845be861@linux-foundation.org/

Naresh, for future reports, can you use our newer mailing list
<llvm@lists.linux.dev> rather than our older one
(<clang-built-linux@googlegroups.com>).  I haven't actually closed the
old one, but the new one is syndicated on lore.
https://lore.kernel.org/llvm/

>
> ## Build
> * kernel: 6.1.0-rc1
> * git: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
> * git branch: master
> * git commit: 76cf65d1377f733af1e2a55233e3353ffa577f54
> * git describe: next-20221024
> * test details:
> https://qa-reports.linaro.org/lkft/linux-next-master/build/next-20221024
>
> ## Test Regressions (compared to next-20221021)
> * i386, build
>   - clang-12-lkftconfig
>   - clang-13-lkftconfig
>   - clang-14-lkftconfig
>   - clang-nightly-lkftconfig
>
> * x86_64, build
>   - clang-12-lkftconfig
>   - clang-13-lkftconfig
>   - clang-14-lkftconfig
>   - clang-nightly-lkftconfig
>
>
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/build LLVM=1 LLVM_IAS=1
> ARCH=x86_64 CROSS_COMPILE=x86_64-linux-gnu- HOSTCC=clang CC=clang
> In file included from arch/x86/kernel/asm-offsets.c:13:
> In file included from include/linux/suspend.h:5:
> In file included from include/linux/swap.h:9:
> In file included from include/linux/memcontrol.h:20:
> In file included from include/linux/mm.h:31:
> include/linux/memremap.h:258:9: error: expression which evaluates to
> zero treated as a null pointer constant of type 'struct folio *'
> [-Werror,-Wnon-literal-null-conversion]
>         return false;
>                ^~~~~
> 1 error generated.
> make[2]: *** [scripts/Makefile.build:118: arch/x86/kernel/asm-offsets.s] Error 1
>
>
> --
> Linaro LKFT
> https://lkft.linaro.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvGe%2BfHXw8RMeZuXB-rGVDjs81m9_RwDq73R%2BpnVpYjEw%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DkPA%3DFV9UQXLe1eyRwqDOYrRkB%2B_d%2BE%2BJdY4BpRUUaRA%40mail.gmail.com.
