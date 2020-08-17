Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTNO5P4QKGQEVP6DJWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8A82474C7
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 21:15:26 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id p189sf6529164oib.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 12:15:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597691725; cv=pass;
        d=google.com; s=arc-20160816;
        b=JS/jhNiJrDy80jdPYYq1NHNhnkj/begdOpu3BDDc5MGyCZf4y3LoMXNwYziOJgIyPY
         VhKS3QSFjs/yc60/stgD1Jj+mBU4PvOrQiAYIFbikv2DHuRTqEGDWuz+IMOjFI4/A7y+
         xN8v5+wsrALsVQpGEyaYL4/+RdZmGQgPs2316sjEv/jJX55B1oweEyxWji4DQRGybtkJ
         /cvs7krrj5LZmOS/3zo/i/zO4XEVMJjutsClh+SI5opn5m552fJ/tAKX/FfG1TWLsJ+R
         IvQEUjO/G11MZkVQDTTuXl7c4RfimWiI5zCZTtl/lWyIoUQwTnbX083dPxXb3I9/PzjP
         3V0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=29BFx/q5kQJHI6SvIx2XRk1LMm5zbRr50+ZiLYiJu90=;
        b=imFqzk4IWMnu+Jf+xkvwA6hKM+ExJk75MZA3Dz27gUw5TUjUFU5h0jKSEcKqcF5Olf
         rFIamsSFppVOqCmWx2zf3hMQENINA7QD/BI+LqDlAwb5ha4pgJOBuOrlycCU7N5i0Rm3
         cJlMhNSMld/1RNkEgedw9bB20MkrlsIMP6u2Kvr5NbVzMucq9Nl1zRjIl9/+b2BSDpjH
         ki3G2hKyweQOd4Y5AgxmQXX/wMoExxMg9OzXrmDnJGjtl7byPwyefp8gMtwyM4cKHgom
         Qh63H8cKzofPLRJdMcGbW3OMTBMR0cl50eVB8+H6w5JEyWTVEKew06SgHIcuI6jjOaJQ
         8ksw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aX4E0LFg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=29BFx/q5kQJHI6SvIx2XRk1LMm5zbRr50+ZiLYiJu90=;
        b=D7ojglNlicSHMtUbz4gT7fGAieez7dYvi+RDfnF9o+z+o3gjL1JO6P9h4XjhDtnt+G
         E69DKMq8p7mvN9rtX3GxsYzufwTEuf1YD6k55Q/y1T32CxbgDbWeb6k+mYmXf/UCI2vy
         2MKcBnHqrA4IqM+6SaK6slJK0PHMXcdja3AxOksGTp7S2XHhjOaxegxrQvcKdRJQl91Y
         BaxS4JR3ErPt3eYiOz/2fL8aQZr7G9neK0qnA0w5Qh+5g8Ai7LQIZLIQKWjaICs6XsPi
         s/zpuzsBZyR52L726bPjqL+KsawzJj5kRH93UM7uCWneEbsneXmmJKDOLbhOvulUAhkV
         U+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=29BFx/q5kQJHI6SvIx2XRk1LMm5zbRr50+ZiLYiJu90=;
        b=RB974Yt9X2bD97zmOfUeG/fXTUG6sERDGLvtEB2e9/2kUZNxQn/oduC0WbhsHToWVv
         R9+0w6Oqt9Y2GWK1QrYM1upXg5+wYUzHflEQVICk4M2CA40FUVKnF3I1yhzVUAAKcPTA
         vorUDjI35M95Mkib1x/qgzaST+vd6ftWRBbpdesVYY8aw3Brm7BZw/v2q9/JFLXp9+Wc
         KbXa0dna4j0w5Dutot25O2nWmTU2cdX8W3/IlZd3P2hKF9zQ+YZ+NowPbAFtGvlKjV+v
         fBRZ8jHdtbK0/su4S61UGHBg5mzm1yIAQBStc9n40agrL1kujWY/A/S6DzTrLfR+/2J8
         TzYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EJw2NXhAFnAUjUKotKLU2vmfOgY4zFY5A89WmY6ocqnfmLJk5
	36Xlh8gEpshp+OCGJIWlC0g=
X-Google-Smtp-Source: ABdhPJyQLy1/kbaX9BUbqMX46UMx6t59xWh/BW0L31ync+TmnsR7CIobL84mzw8SFij01nkK0Aggiw==
X-Received: by 2002:a05:6830:1db1:: with SMTP id z17mr12921215oti.170.1597691725101;
        Mon, 17 Aug 2020 12:15:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:724a:: with SMTP id r10ls1002941ooe.1.gmail; Mon, 17 Aug
 2020 12:15:24 -0700 (PDT)
X-Received: by 2002:a4a:da4c:: with SMTP id f12mr12169514oou.41.1597691724749;
        Mon, 17 Aug 2020 12:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597691724; cv=none;
        d=google.com; s=arc-20160816;
        b=IzTrvwerojWx1kQ+cRtZR3vIhAF5JlbP79OG7sWkhWCbBsS91SOYE9W4dJg5cHDfzF
         DF/Pcq2yxs1cL+xH0PGQqJCgsZw6sTbvuS8b9lS/VMDj2uJB8Or3shlD3BTrdFNAQHms
         ESEahsZAcSplW4/OPdsmAGjg1Tes4NGR5JqwbXl3o7c4/RuJrYWVcEf1DRc2QDPaXM4t
         DyV7tsMA2l6+GNmScIoHclM+6UCyW6bG+dtQkspsUVCx1WGfAr6HrfV9l8VY/Dcf1e0t
         hWyU45N2RNBrzkfMYAKw0RnhtWiCXqJ279r44/cDajFodokwd/z2yjFkyh1o3/UuaT8T
         TqVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tmBgqfU+29UH3A8gIAUsMUZvU1W2cHudzSZ0yYhvH2g=;
        b=0GATpoOUmKPR6UVwZmqcPlS669/IyQEtBd7TApm+cPFo0EaBgh7FxpuWOieJTYZlYx
         FTC//oUnSFx/eLb/Z03E7Umz5irAOM5oAeuBvqyw15+kau7q3z7gsEJQ7arXFV3sHiAQ
         pNPM4YFFeQThhzSs166q3rsGgVXvTsUA+8bmU203sMOokoMWBNAaxr5SCvoLOoD7S535
         FgM7/gPempXw4Eb+sEIZDnotBMCOC3ipOPISJNmX+gHgk+MLADHkfhvlFIM5kjYG1l4j
         8UqQ3FFO3IFCef+r3muFGCD0NJPG5wceZHoMy5MvXhrjUPHCpakJVxFNozwEf6U+ey9p
         RAVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aX4E0LFg;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p10si1250521ota.3.2020.08.17.12.15.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 12:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id y10so6453006plr.11
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 12:15:24 -0700 (PDT)
X-Received: by 2002:a17:902:7293:: with SMTP id d19mr12778333pll.303.1597691724086;
        Mon, 17 Aug 2020 12:15:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q5sm18109334pgv.1.2020.08.17.12.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 12:15:21 -0700 (PDT)
Date: Mon, 17 Aug 2020 12:15:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Fangrui Song <maskray@google.com>, Joe Perches <joe@perches.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	=?iso-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
	Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Message-ID: <202008171213.CBCFF5D67@keescook>
References: <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com>
 <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
 <20200816150217.GA1306483@rani.riverdale.lan>
 <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
 <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=aX4E0LFg;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Mon, Aug 17, 2020 at 11:36:49AM -0700, Nick Desaulniers wrote:
> That said, this libcall optimization/transformation (sprintf->stpcpy)
> does look useful to me.  Kees, do you have thoughts on me providing
> the implementation without exposing it in a header vs using
> -fno-builtin-stpcpy?  (I would need to add the missing EXPORT_SYMBOL,
> as pointed out by 0day bot and on the github thread).  I don't care
> either way; I'd just like your input before sending a V+1.  Maybe
> better to just not implement it and never implement it?

I think I would ultimately prefer -fno-builtin-stpcpy, but for now,
sure, an implementation without a header (and a biiig comment above it
detailing why and a reference to the bug) would be fine by me.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008171213.CBCFF5D67%40keescook.
