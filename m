Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXFUWWDAMGQEPM23FNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3CB3AD6CD
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 04:45:49 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id v21-20020a5d90550000b0290439ea50822esf4226199ioq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 19:45:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624070748; cv=pass;
        d=google.com; s=arc-20160816;
        b=HzSc+Uhf0QhvaaHOMlaX8gEw3c+E4yksYDcWJudqTgd5BiHwDQ55dRWz3W259cDYt5
         v+y8pEM3fH2BjBJJmc96Zii9WqgmHJjY6xmgAfXpqQ1vBI0n/tLoPZWSCdNOL97IGmzn
         VfMSg1iAczkItwrKlgcyZFz/GrrkCJit+xWboqkUPdUEP4IVsyldmB27AUlTTVBu4N4I
         6oUpQXyD96g0ivyZyAC3WNq1kEYgSWn3nyccikSxLWHEiKPt5XhdLy+JN+k9YQpihzAo
         BumkEcaNuVQtPHFS7Dr9tWhBmKPPxb8Dxr4VyjW+Ag79xAqN5LplQh9/iRjoYlwKbouA
         fbbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6GWJ2mvPSTvpBwU1pVKXbjglXisjF5MiQooZFDI+uZs=;
        b=rc5rNpSrZeV187t7RHH3dyy9BATgE3uWpA0gvkkTQtijyxbG+y9xO07qY95Hvq3y+r
         bziAEDKofjXp7JGYMjt2SKjB8ifSgd7MVfHswusGx9se6PfavWirEPtFiEqROOIx7f2P
         yZHRrPQRMbNatmgPnKiqTRgetZgnX+/+4/2f8d9mZU/Yy2/HSVgGWRMic+le6DbM2m+e
         htSc//SfZg534pGOKwjbNYcbUyTfiAdEqKAmL9/x7rRzn29lmA++8YbafIaI8cfJbGDg
         EPsDwi3OZVmiC2iqHQdvV9g8LfF3hs3RpJypbC4y5iBZ4fEIpB+yiGzIWckuPOKfHNY0
         WlZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Q2OJ2V/f";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6GWJ2mvPSTvpBwU1pVKXbjglXisjF5MiQooZFDI+uZs=;
        b=V9m0VqDh8x537GKWKPBIpT476Wto06vMTAvagwtAwRrsNrOjKr8rKdygnChNKRUob0
         CTF4I0wMAkqy4m/Sakpbfbp/tbijx6pBuhHgcp5jBM4UzelgDuN+9LsBzd9/KFmjev8U
         q3zGGkj34oMV2tSuMxef8QrKVhK/XFVHyT2nbi0jMwUN/QUgoT8895Dtr0GS0azmBiJz
         1eLVAshELofWDVPpd+RtEO2C4ikgDs5g1q5O3BO8UMXmbyaLzlrBmBNnQfyJ8CH3tG10
         FSXX/ikG5vUMsBSkEV4Rk1OUVtpK6/4/FZhMMN4JTRblAoixDraCI9ggePKfLqWbZLBF
         YvoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6GWJ2mvPSTvpBwU1pVKXbjglXisjF5MiQooZFDI+uZs=;
        b=RytrzxVOYtcaauH8fW2yeOTppBpWdOl/zl3D0eHw38cmDUb6ZohAZTNXcVGN0vSTrM
         84sTIYm+0pFALuv6vKI0Y2PA83gHSnF3wyI6LgWYhR7lBu70q5xUuOx0LC3x/lKOXA3u
         AX6Uh81H1ehAyXunBcmeZAP0ESh71luFsxKDeh0VqirkYkxBNNNKHHb9+Kpg/f4Rc/xk
         wL3Iv68GlTxldO9CNkany0aq9BnGGkzsa2f5wsybper1WSF7oUMNA/xXJ6t005NfES0M
         NJG/8znlweSlrh7/hrgVMXbhRvk8zIe8k/VlrJv1W7kESD1DQtB6K67AsqZQYdvZub2I
         YkGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530S60WAVylNqq7l0pCrK6zlXhrnns0pg+crvR8W5lJS7iKvrZPY
	lSmzisnkffRbm/AOzPtF4E4=
X-Google-Smtp-Source: ABdhPJzmO3Hl2vqSbZhHyqpX+Qr1MrgLpTIFXbpzy+V13O0TzscdEucmo76jYrtvZyXxKxXLu/MkhQ==
X-Received: by 2002:a02:90cb:: with SMTP id c11mr5628468jag.53.1624070748302;
        Fri, 18 Jun 2021 19:45:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d02:: with SMTP id p2ls1910775ioj.6.gmail; Fri, 18 Jun
 2021 19:45:48 -0700 (PDT)
X-Received: by 2002:a05:6602:2d83:: with SMTP id k3mr10561157iow.5.1624070747963;
        Fri, 18 Jun 2021 19:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624070747; cv=none;
        d=google.com; s=arc-20160816;
        b=I9EhwlhfxXNCqOj/e8qC2ja7flmRjX3+fPfpUMDqr8VpuFsDu8reOVeaC7/m4BkmJR
         0zbsXskCX7Ey0H8yaIV23jUCcTaMtVCKp2XfM438t8maULxWLPDwuLs6IeAYcQddP6wI
         vIF2jYUca++e7XO9HLCedMxM9trnNlOqGXLUcJwZwa9q8cyByvLd8HqNXlG6j9bUho0n
         Uw+nGB5jNl69PTBE4m+xg8xN8mR7QdEobcxGb5zSVsk00SeAGDW5upjCQLsf6AncuyRY
         p2+DQU60XbLIQhdvUVMTuMEqlYKk50G4lB98ISkPFmgf+ZFW2Sm3mIo1bKAIW3rABapM
         32zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zAYV7wMM7Ezv8dDkbAjr47uPXYKTsdhdBtQn9j9OFnQ=;
        b=qfARQLImLDBwX2o5LcL8hsmz13tJBkao6gohlcmgXxfmiSSGHZECBXvMUKdaSobfh3
         HZqfCEqN1G2Pa7cfc4fZSPI775a77wg57r+n/txnLhGQT1F8JELXh0RoubBcRChn6umA
         7vL4xqoQ9z0MvcrR0vW05kNYkJl8/5GbtyxshkcmKCM9k1n9CvV2naVGMC0GUpnBvy3f
         YENTmhurM5N5DR8yobvtCsrtjGyYfyJDWYtZ2dBksTxwf2vhxW2AH6wxYEERClfjjGnC
         DKToGEC+5p3B6WdmEVME1e0AcA6OBpZo2UAxXzugkX0DzoqEMaLQMyBo5PmTSfCP4dnB
         nhLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Q2OJ2V/f";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id g16si819458ion.0.2021.06.18.19.45.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 19:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id e22so3192502pgv.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 19:45:47 -0700 (PDT)
X-Received: by 2002:a62:6581:0:b029:2ef:bcb1:c406 with SMTP id z123-20020a6265810000b02902efbcb1c406mr8009133pfb.28.1624070747426;
        Fri, 18 Jun 2021 19:45:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h21sm8559917pfv.190.2021.06.18.19.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 19:45:46 -0700 (PDT)
Date: Fri, 18 Jun 2021 19:45:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Borislav Petkov <bp@alien8.de>,
	Martin Liska <mliska@suse.cz>, Marco Elver <elver@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH 0/2] no_profile fn attr and Kconfig for GCOV+PGO
Message-ID: <202106181945.AC10BF38ED@keescook>
References: <20210618233023.1360185-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210618233023.1360185-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Q2OJ2V/f";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::529
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

On Fri, Jun 18, 2021 at 04:30:21PM -0700, Nick Desaulniers wrote:
> When we say noinstr, we mean noinstr.  GCOV and PGO can both instrument
> functions. Add a new function annotation __no_profile that expands to
> __attribute__((__no_profile__)) and Kconfig value
> CC_HAS_NO_PROFILE_FN_ATTR.
> 
> Base is
> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=for-next/clang/pgo.
> 
> Nick Desaulniers (2):
>   compiler_attributes.h: define __no_profile, add to noinstr
>   Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO

Oh, awesome! Thanks for the fast work on this. If there are no objections,
I'll apply this in front of the PGO series and put it in -next.

-Kees

> 
>  include/linux/compiler_attributes.h | 12 ++++++++++++
>  include/linux/compiler_types.h      |  2 +-
>  init/Kconfig                        |  3 +++
>  kernel/gcov/Kconfig                 |  1 +
>  kernel/pgo/Kconfig                  |  3 ++-
>  5 files changed, 19 insertions(+), 2 deletions(-)
> 
> 
> base-commit: 4356bc4c0425c81e204f561acf4dd0095544a6cb
> -- 
> 2.32.0.288.g62a8d224e6-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106181945.AC10BF38ED%40keescook.
