Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLWGWSEQMGQE3LMOVVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id B58B93FBC69
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 20:27:59 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id q19-20020ac87353000000b0029a09eca2afsf116557qtp.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 11:27:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630348078; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSkeiXAelXtNFG1nh8TUKXln1MmhnjqVr7ksPxh0P4bAEYxJh/6BrP68oZw80OPE2W
         LaqGe3zvbGN1ZDfQbU5TO60o1Gn+65S23GLH6a/6mNUr0cdiUwOrRgeiPdZCv+08pHxi
         LP4FlK4ap8B6rc40rDdFv8YwjZTfVwnE7wbjZEzP0v46hps8XRu6WgAm+5RfpbH1gPqx
         /L02ACvwIh4ENRowKHHnXQ8DYTkidGouTJslAMGZKjVgLpZL5rp7vxBtfi1dxp/RGyog
         pDLEEheyZTHcjbT8wAsMtO6ewMLo1QQHcvm5+nWDOzwyxhRetHgOfRWuY1JDc8pOPy8n
         2MeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=V3IehiTHRBWOmE32mOjXaF5YILSJz5xkss55KbI+O78=;
        b=Ck30eQSd1Jx5A2V9ArhEERGm0C+vLHbMLNO1yfFCvosmfEUDEjrkCk2bCXAJE1JvTZ
         pH5wKrRnoU9QY8PwdhYtuMeSOxR+j1Q4MkxvkOyfAURFZ9nYAFJs+6xWX2jyswAIsNdt
         Id9jKM2hTmIdsxBD0JECBFNRS3XxRobUyqbGY0EFTIfVym6veeM/XCqlsmEqecWAx5OG
         VjAc86IWwvtidX//hLsHdAOvks4UOL4gSTDdIGZhD8ajvNs800T317TeyJj/s2RhB2d7
         P6gPpUHjhOThDkWoIzaAogmHUGX9NPHyLDbhTX+TpCGdKF8KvxvDjBRKOuMlxvWLOm7b
         zCWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="jHyLx/jQ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V3IehiTHRBWOmE32mOjXaF5YILSJz5xkss55KbI+O78=;
        b=WFAjQdFDuniAm0WU+m9RMAUsmFHKwD/bo+0ygu805unaSyGoUhBQJrX7RERHhumD/W
         dPGtZ1k3uQB4jHrmGbTDpr8hlFP+XCz8nd6/2ANltSWr4ZYdZZX58w6KKtqR8OYFvcS9
         GXugSTUT+awiM5cRYdtRd9MSf/5ZZDX7ZfLBZKLVsscelgCQ5h6Z7cjTYcqxYtz/CSTz
         gHIlNOEZjJED24Vdztdlso4uYvf8Dfy/pUSTucFZnYP5luby6WuNO5R5vpaYWJxOAO6R
         LX2gfzgu2ztV+mK3bsyYDPh35ckMELMAO1R3F1s8twEezLA/MHjT9XFvm5uJv/SOEFKX
         Qlzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V3IehiTHRBWOmE32mOjXaF5YILSJz5xkss55KbI+O78=;
        b=aGaJah1gpD6YjKhl0xSeG/gxZHcoD+wWHoJDH13cko0kUGSMXcX8Z2lE1Pfb5U2+K5
         +T+322Jgh/t3NrdMgbC8aTXhdEJox9Ke1GJdAqHIdW3ABReUg3ZfMVtLdL92Bk/PWfrq
         APlptune8XOR/7KIeaMgZOSplw8L+96TePE7fJiDljAHSqXgakyVYYiRVTKfDoJXG3MA
         4MiZHuYCIItPnNoXFOMSLlJRwYjCEJBJBmVLSL3lfGcNjNKVJpLZQGul2B0Catcyou7G
         Rvc6R8JTNma3aN/oy7ooXCH8VycTnV/75S7ILgplF+YaZmpGXPwCJAUwyhR4Ro6ofswI
         22Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O9W2KwCbOUWftGZdRR5d9p9mNuwFH0I9oG+80Cy6zRIt5Go7k
	RxwXy8e0iPDTRHlN6w0Cq6c=
X-Google-Smtp-Source: ABdhPJxQOaz39eTOKK/hOlVngn3GUuM0+xNgjQ0nLAt0qoq5IVFni7VefoAUAPkD36J9GUomWQPCdw==
X-Received: by 2002:ad4:5f06:: with SMTP id fo6mr24822298qvb.32.1630348078423;
        Mon, 30 Aug 2021 11:27:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1582:: with SMTP id d2ls11061910qkk.9.gmail; Mon,
 30 Aug 2021 11:27:58 -0700 (PDT)
X-Received: by 2002:a37:e315:: with SMTP id y21mr20602819qki.70.1630348078012;
        Mon, 30 Aug 2021 11:27:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630348078; cv=none;
        d=google.com; s=arc-20160816;
        b=nucN1xLsJ8MA8KkEQ4Z5d069BQLD8prJXBwUcZgT5MNU1nOvZpS0WpoAxTCWx+qthe
         umj9Ln6jg9z6mlPXB06QxWi4dB0VAWf3tcA8kd5Xn7BhgwcDPrqsP0LepKDR+vSNyw4m
         pV+AdcbBGtxJjCgIR4EKwQN7labGvdTTXwVeNGhdspCPWWIJf4o9mQNUcOzghCdUUruD
         z+8fq2c9NWcNG5/dpsC5g+KeBg/Pg38P4Y5y/afacHFEJ2HRp9S0bPK5ubiv0V1p1q13
         xW1uHK1PWjVvc+Y2tN6E0bloE1EtUfcYbJBZK54YNEawUwYgN0m4kIdDdLqWLiSDpq+L
         HpSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Mz42W/Lx43y6CcuCJpr6nNW2Lf79xV+Oh1YYCpvYFXY=;
        b=fs3cUL6U9GtknVb673+pz0etnCbpzWLNmGdv1VLJjaPuO1OEsBpKt/hsejbDK1egbP
         mIvCzldUHg8GmJiDbDY1udrFx722+Uanvnh3/RzEPdZhy/u9nc4bdpHd7IoULfjsngpI
         TAhL0rwSGSAJH8dyAtweKPCt/TwyO3958lMTXWta9uLOU8SQMYVy0PHBTRw6ToU9ihti
         m0HZxyPs89/rJsMCkM0x1RgoboxAGI+DrEpkgO4HxAQB+rLu95XiVU0A3HeLmkZW799f
         XlWhZ7O9DV8rj3IvjJX4Bd5OBoJA4be6AXO6SEDewF33YOsVtKfPbOIHHnUmlwCkIxqY
         p93g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="jHyLx/jQ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id n78si1256880qkn.1.2021.08.30.11.27.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 11:27:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id m26so12919348pff.3
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 11:27:57 -0700 (PDT)
X-Received: by 2002:aa7:80d1:0:b029:399:ce3a:d617 with SMTP id a17-20020aa780d10000b0290399ce3ad617mr24408847pfn.16.1630348077240;
        Mon, 30 Aug 2021 11:27:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t23sm177071pjs.16.2021.08.30.11.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 11:27:56 -0700 (PDT)
Date: Mon, 30 Aug 2021 11:27:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	glider@google.com, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	linux-security-module@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [GIT PULL] hardening updates for v5.15-rc1
Message-ID: <202108301127.836C1F4D@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="jHyLx/jQ";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
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

Hi Linus,

Please pull these hardening updates for v5.15-rc1.

Thanks!

-Kees

The following changes since commit 2734d6c1b1a089fb593ef6a23d4b70903526fe0c:

  Linux 5.14-rc2 (2021-07-18 14:13:49 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/hardening-v5.15-rc1

for you to fetch changes up to a8fc576d4af2f23a87a586424252df97f0ad0b06:

  lib/test_stackinit: Add assigned initializers (2021-08-22 00:21:36 -0700)

----------------------------------------------------------------
hardening updates for v5.15-rc1

- Expand lib/test_stackinit to include more initialization styles

- Improve Kconfig for CLang's auto-var-init feature

- Introduce support for GCC's zero-call-used-regs feature

----------------------------------------------------------------
Kees Cook (5):
      hardening: Introduce CONFIG_ZERO_CALL_USED_REGS
      hardening: Clarify Kconfig text for auto-var-init
      lib/test_stackinit: Fix static initializer test
      lib/test_stackinit: Allow building stand-alone
      lib/test_stackinit: Add assigned initializers

 Makefile                   |   5 +
 lib/test_stackinit.c       | 253 +++++++++++++++++++++++++++++++++------------
 security/Kconfig.hardening |  71 +++++++++----
 3 files changed, 242 insertions(+), 87 deletions(-)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108301127.836C1F4D%40keescook.
