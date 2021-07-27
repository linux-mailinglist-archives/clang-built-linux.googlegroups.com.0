Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3P5QGEAMGQED2F2JFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 599993D820C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:47:26 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id z16-20020ac87cb00000b029025bf786be09sf7236720qtv.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627422445; cv=pass;
        d=google.com; s=arc-20160816;
        b=foqeXCgEIVQaoeObnqcKUz0C0F0KR4wnWL9WLIfmJiOnVxQF2HTwa6Z0bur5NqotVI
         4lAvbltqURpoJQRWD5N4uDEudVLwVkUqO83NOHNrLbeEZeLf6IkVZZJRHMyRYkmUPMWW
         q4DkVQR7qplUd2Nwk+xrVQ2U+HSaoykN2BBtpJkBYAv2K9BbsBRqdbLr6fP6aPxU4C3y
         6akC0gB1b1GJmBI58WFhfOi7dAj4m0zYCPHVpjabU6LSde8H2syIrI9SIbDel/Lw+3qt
         HPC2vyv8a7fthO4VJ8Clp41wuAgHmqiivlYmSi7DhuCXE7l3kcvh87Vy25OtcG0SeUxD
         j2AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SMYlJo3otmHyT3Ad/2ZIODs6RzlONAXbCvCJuOyocwI=;
        b=0giCe+zqeOTOVDt5ZoVLkJbrliAu4Ra+Wiscgzby16yELxnufDiFlY7uhwj+0rJkGQ
         u/TNytzc9cttYRlFG1Z+Dczk5oQGTteRKde9m5mKHr60/IwuaIoNZyKxgsgylE8mS2ZR
         bNK/fZhIYzI+S5uxn2Lr5xZN3YmWUtDmg85SBkuY3Ux3So3TzcUnN8IsqEnjgcQsIrpV
         BwBe4ByykOMxKdLgzfuTO9SX20WwHC6H50Ev9N0dT30VvX8FAmG7gcKswan84Qtlx+KD
         XMFBqYrDRB/ByaGSX2zuyT6Bicyr71aCJi3Taywnour3GORGUCmY+YclRFD+C3k+Dvgd
         CRpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kT5nbH7Q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SMYlJo3otmHyT3Ad/2ZIODs6RzlONAXbCvCJuOyocwI=;
        b=HDwaF9cOkRtSDEuhrOR3dx8ZRLtU3PGzllH0yeVxg2qRo5qZPD3S3b1CjnVZ2h6DtS
         qkv4kJOnFEZWITwtSMXdNezy3b5HuaciJrh8K5jph0qlcFb9MYfCRYr/7pcodU1guiVm
         fSBh0cdD2HMJpSYkiJbSgzm4N8r30lFlntoSPKK/BmRfH9oWjsi65OFlsA3PUG0t0Thb
         F+B7tAB7JgPpdOo+2oo1y9RcFjRQ6khYd2xUAEz4cbcDrBkFHsahE7gmTLnp5TE9jZxG
         Gq8dCvT2IDXRh582vcMg4VCL9WMWAIGz+QqmPEXTvigFxvCctRxEhf0aLEBpiz7c6UQ0
         7gaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SMYlJo3otmHyT3Ad/2ZIODs6RzlONAXbCvCJuOyocwI=;
        b=RwEoqiSclp2BbpzjmfQKabNRqZMBie3A4EXC++sGJ+jG5bEuzQ1S72p9fXaEuBCHYq
         e9HqDuYF5OPmjYFBbBBPTEZxkJz4UXbBsWkybKFtP91QYdox3VX8Wq0BzziSWoeHX1T4
         WEj0Q8rFqY3PQmTSduLYyECaU13IIDNegMQo1WVojmQAHwU60sOorjTCjKyy5StRuyoF
         E45BjyjrkQa6ILhMtU3H6NLPobXxCdXZAxxc3MRDIkL4yrPDa0DXagf+1Kf0JsNFoXhT
         nHpW1ndhyDl/WmDHwg/FEc1SH8HYHtBNSmd0XflUqVEilo2L7JPMHJI3SNRnesBuO6S7
         tt9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Hq6Ae9e5IaevVcm4LxzHPSnlVy1Z3S3w6tBzxL6f0JOuKU1bs
	/PsCO4PlHU5N2uAaqVBlYMY=
X-Google-Smtp-Source: ABdhPJzvXSVYpbGNq0jK+Z9v++WbfRGyFnIlz/Vrf1WMdlzIUXnqTC2OeSA7tyP6teHVLZEtQELx6A==
X-Received: by 2002:ac8:7f93:: with SMTP id z19mr21325721qtj.328.1627422445507;
        Tue, 27 Jul 2021 14:47:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d686:: with SMTP id k6ls94990qvi.11.gmail; Tue, 27 Jul
 2021 14:47:25 -0700 (PDT)
X-Received: by 2002:a05:6214:4102:: with SMTP id kc2mr24641524qvb.44.1627422445086;
        Tue, 27 Jul 2021 14:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627422445; cv=none;
        d=google.com; s=arc-20160816;
        b=cSJ+EqtAf+Syv7DgTNzwcZebINNaCl9WYHhUD4Ty9jGXfs4x5nYcmsZrQES5948Ggh
         cHTOJz1CYP38uNajJ6NsmkeNlhXrhWheAMTKdS8ognxjeXJFUoU+pwckK+mGBSiTIZM0
         kPIvSJiJzdLHpHcBssn3S0ZPSL20+QhanpzP4YzkPdF4Xuw2Z+HH4IWnPjaKyW4Hwecp
         s/g/HUVBAkBt487PPA4ANppeBtRDQ5Y4dxfnkLyUZClBty/I1A8v2wPNYeb3roGlf3xC
         31IxB82UiedbMO3njgRhOPSHtKFe2Y88oLO2dHDO3Fpspw6NykKOjDBX9GYheFuI/0mB
         TSzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RmWu5L4XF1JSf6SMuIfCAjF4w7lZ2j3Pm51HCxVaooA=;
        b=v/cf+yBoZovRPekeXosQa0zGnLVU8AsEGZbMr2k9IDuUSfE37IHVtBWuOleer9jKFT
         JWtpwPbEwFnzZirseVzf2vdeV+XmhdaEUrOmh9n+6gSrcxmFgr1Ak6yWHBgFNbGjN6JN
         lJgffsNsr//OXzdlWRcnu5RxBLDZKUCcGf+ZUsy2wisbNHzy2sdhMTHqiMG7RF0alzA3
         qnhKyxptA8MKw2mQN0iuJ/2yJsxLkHg2nGVd2vAuExwmQhTdOiyvzPD/PIKg5WEdhHO3
         vauTL1T/Zs3r1kM9c6GyabBZQRhalbeJT6k1jCSJJdMGDs1o6ZRR1XrReuJiMrw7UkHa
         uMkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kT5nbH7Q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id x14si214412qkp.6.2021.07.27.14.47.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id k1so99568plt.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:47:25 -0700 (PDT)
X-Received: by 2002:a17:902:a513:b029:11a:9be6:f1b9 with SMTP id s19-20020a170902a513b029011a9be6f1b9mr20025348plq.55.1627422444596;
        Tue, 27 Jul 2021 14:47:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t37sm4805774pfg.14.2021.07.27.14.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:47:23 -0700 (PDT)
Date: Tue, 27 Jul 2021 14:47:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 31/64] fortify: Explicitly disable Clang support
Message-ID: <202107271434.039A9777@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-32-keescook@chromium.org>
 <da989ffc-da64-33a2-581e-6920eb7ebd2d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <da989ffc-da64-33a2-581e-6920eb7ebd2d@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kT5nbH7Q;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630
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

On Tue, Jul 27, 2021 at 02:18:58PM -0700, Nathan Chancellor wrote:
> On 7/27/2021 1:58 PM, Kees Cook wrote:
> > Clang has never correctly compiled the FORTIFY_SOURCE defenses due to
> > a couple bugs:
> > 
> > 	Eliding inlines with matching __builtin_* names
> > 	https://bugs.llvm.org/show_bug.cgi?id=50322
> > 
> > 	Incorrect __builtin_constant_p() of some globals
> > 	https://bugs.llvm.org/show_bug.cgi?id=41459
> > 
> > In the process of making improvements to the FORTIFY_SOURCE defenses, the
> > first (silent) bug (coincidentally) becomes worked around, but exposes
> > the latter which breaks the build. As such, Clang must not be used with
> > CONFIG_FORTIFY_SOURCE until at least latter bug is fixed (in Clang 13),
> > and the fortify routines have been rearranged.
> > 
> > Update the Kconfig to reflect the reality of the current situation.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >   security/Kconfig | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/security/Kconfig b/security/Kconfig
> > index 0ced7fd33e4d..8f0e675e70a4 100644
> > --- a/security/Kconfig
> > +++ b/security/Kconfig
> > @@ -191,6 +191,9 @@ config HARDENED_USERCOPY_PAGESPAN
> >   config FORTIFY_SOURCE
> >   	bool "Harden common str/mem functions against buffer overflows"
> >   	depends on ARCH_HAS_FORTIFY_SOURCE
> > +	# https://bugs.llvm.org/show_bug.cgi?id=50322
> > +	# https://bugs.llvm.org/show_bug.cgi?id=41459
> > +	depends on !CONFIG_CC_IS_CLANG
> 
> Should be !CC_IS_CLANG, Kconfig is hard :)

/me shakes fist at sky

Thank you! Fixed locally. :)

-Kees

> 
> >   	help
> >   	  Detect overflows of buffers in common string and memory functions
> >   	  where the compiler can determine and validate the buffer sizes.
> > 
> 
> Cheers,
> Nathan

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107271434.039A9777%40keescook.
