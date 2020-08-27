Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDFXTT5AKGQESR4MCIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF05253BE0
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 04:33:49 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id c3sf2839478pgq.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 19:33:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598495628; cv=pass;
        d=google.com; s=arc-20160816;
        b=zuEVihXbqwsL47k+Kvvj3yitk9RB3kWi7Y4snD7GDK8Me64rTaqjDG1xOq99dVC2dX
         XCWFVOVNBdGfw4dktnXUJjGEQJCsufKWT94P29IYcb2Pidr7idF5BxbcURtujNuAowCL
         WxNponKx/7gT+JyaIr4LUzWYQ8ridrGjd8/FjQRD5Wq+UYXhijYFaVOOpcpAbnHp1Pzi
         ZtkHlofsBKgNNI1Lu5cALG+tzKgw1NkTrtUJM3z1AKZHHePQpxldmhAzlNfTFAf0wJ5F
         7jhUWWyuSuIHrne1eNLqOaJJLcu5oYJKDEl4sKIVFqIn7s/WHpp+Aesbvij47QR7cume
         TC0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0syeefrpXf2FJaNz8bsmh9yAP9+1flkhwC6J+dhjZws=;
        b=Zk0HHZqu4dolSAnWvebI5KqkoqW1hE0vM5I9JWUE60xD+lKiKRAI/iyx7MIG7jn16J
         9O+I8aSGn237LSTlFadb9rEPT7pr7uU1rUyvTLJcp9IQVpVbpYHOipQzKaNypvFGcdLG
         P8twEZhLxcSi7bZmnJb1avkhbh1u+y8fe8D5Nj09JHTrmDlA8ITJpBlPP2C628GJBY5s
         0dmhZylLDLLbWop/ege2GpvAz1o0S2N4j0o6PuqExE0wVQaz5SdQOX3P05i6+x0X7J8b
         NkFGDWUcPS2BoVtu5x6Vlms+FNPJtzIZqKEMGNXxZBQMCtkN4Q+NvWURuRHCykWHIs09
         QiyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VTsTUaMy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0syeefrpXf2FJaNz8bsmh9yAP9+1flkhwC6J+dhjZws=;
        b=o6vUxHmo5+ZeDhWZNTuKfJ8PP3AsbxeMQKRQozOmCd8J+H5zvcGbXa9anyAxGsk35Z
         UQ0nM6yrsiQvEFFC4OF0XhBkNn+2akz+x71LTfexOE5y3Qfzr3lnkO0rvOq2UMt59HIW
         /CwomQmaIvwR66XSM79TGdtSmq3E527rBlEv7pCXZkaK0aRt+0BBAHqj4jKmz5aOhonN
         Mp4Ik2UE2UsztKq+bHeydEQ0ovkzIwIpVdTIAVicM770QBr4p9ErtY3vibvxwIhk55XL
         32mISSzu27Zhje0HGRZ4LGpETJqL7irtdB7ujFd41KeDo1h8OCXzpXwi+pVhIqVZrLZp
         E3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0syeefrpXf2FJaNz8bsmh9yAP9+1flkhwC6J+dhjZws=;
        b=gumpcmQJz9G2Djj4USMRD+Av0QGyAeAIyl7YUh9s3Of3oK6RoJoMKZSMwkpiWxv/0e
         VBLwF/923CeXcHIKIGPCI2vCqqxbA35Me6i2RuA869zYGvSua7hPs6VTPK5DSWENKh8F
         eo63EbuW1rP+AO0tkSPtb0oUSMniXPk2ktNhETwCwKseffx3QJeRNDCbag6H84EjmiSf
         HTrLx4Hudh1UHVn7xV2+licdIG+L2279PNbDocm1IpIhPo2Mz+mrnzdLsMwRIXf+WZex
         Qchmbqmo5WamMbqD3HoUm+SMIZX4x4/BUKDt1y9Y5rufqdtKodF6991pzDRjawP5bZgT
         Pu1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531I3jPKJhAIXZC8/v/OGQAO7a/az+KCHDd12eFSJY8ujh63YdTQ
	adiHiL7dHw6cxig8Ck8R7mQ=
X-Google-Smtp-Source: ABdhPJzk9oHE4aojgv10eBzq6gupweAxwvzRwPKuGnjS27dyzEAf7OzI+Bw/btFv1ZCKneBrXd06xw==
X-Received: by 2002:a17:902:6944:: with SMTP id k4mr14016391plt.147.1598495628425;
        Wed, 26 Aug 2020 19:33:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f1d:: with SMTP id x29ls319495pfr.11.gmail; Wed, 26 Aug
 2020 19:33:48 -0700 (PDT)
X-Received: by 2002:a63:62c7:: with SMTP id w190mr13061343pgb.25.1598495628004;
        Wed, 26 Aug 2020 19:33:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598495628; cv=none;
        d=google.com; s=arc-20160816;
        b=MlqEDv9WoHvs/1+05cm8j4nRb+IxuWjFLU803cO+nvdsk9RDm+YT9HGvgmxTuUZYlw
         0EpdLcvZ8GxCYMz4MgnN2xVBJMiKutW4mFqHAn3HK3ShPYvTXyCOYR94xbIX8rz8lQDA
         4OAgxRjbfsHBEMeb0iLvm/B7BR0979wlgzIVQy0GetJJTioXyhtvQSiGhgSovGsIIK6s
         2LqzmpwWg4rbA3diGEHO7odKhnfLHqa55mmr7l0nXb4HYkYxoshOM6MWfmiaf/UxxXF4
         fUno5fzsVXMK3AUa1WyBU7a2Y2CEsDfi89ZeQ5RECqWR23d/9+QGuzeOVB+cZMbyT/h+
         Eh0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x1FlPbUtnes2qpBqooOcQ2o2d41W/mH568giujPfLVI=;
        b=ZapBBGJj18OGdMM/McD2P///qXvMIYPVfi7aD5N3Wd2yBtYLFLnLG4nH6u7vlBr2P8
         Q8a5LKt9Q2Yc86A0ZrlsueLX5CfNot0sRVG6mCsuXxHHuz1/zJs9OJEBSGnDwIsChL1K
         9+9BjBLTlGqM573GjROotmyjmLy8989rCwy56YOYQ+XcZIESYcQb0AzYw9d384vYCPhu
         0CkjyP9H0plwr5lb5SXJvXs4iho0is2ADjZQ8H+ap9HJiVhIIRYJX8qyfz/w9lZoWM8j
         IkYX9Svi5Cf0pjCKUYVKapdfCkcn+rdKTe+U+DoknZQIq5elLpws+r71q4BvNUK3qQCK
         UIUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VTsTUaMy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l26si54154pfe.2.2020.08.26.19.33.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 19:33:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id p37so2266158pgl.3
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 19:33:47 -0700 (PDT)
X-Received: by 2002:a63:36c6:: with SMTP id d189mr12091053pga.392.1598495627669;
        Wed, 26 Aug 2020 19:33:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v134sm572683pfc.101.2020.08.26.19.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 19:33:46 -0700 (PDT)
Date: Wed, 26 Aug 2020 19:33:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Yury Norov <yury.norov@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <202008261932.FF4E5C0@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook>
 <77428f28620d4e5ecad1556396f2b0f8f0daef41.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <77428f28620d4e5ecad1556396f2b0f8f0daef41.camel@perches.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VTsTUaMy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Wed, Aug 26, 2020 at 04:57:41PM -0700, Joe Perches wrote:
> On Wed, 2020-08-26 at 16:38 -0700, Kees Cook wrote:
> > On Thu, Aug 27, 2020 at 07:59:45AM +0900, Masahiro Yamada wrote:
> []
> > > OK, then stpcpy(), strcpy() and sprintf()
> > > have the same level of unsafety.
> > 
> > Yes. And even snprintf() is dangerous because its return value is how
> > much it WOULD have written, which when (commonly) used as an offset for
> > further pointer writes, causes OOB writes too. :(
> > https://github.com/KSPP/linux/issues/105
> > 
> > > strcpy() is used everywhere.
> > 
> > Yes. It's very frustrating, but it's not an excuse to continue
> > using it nor introducing more bad APIs.
> > 
> > $ git grep '\bstrcpy\b' | wc -l
> > 2212
> > $ git grep '\bstrncpy\b' | wc -l
> > 751
> > $ git grep '\bstrlcpy\b' | wc -l
> > 1712
> > 
> > $ git grep '\bstrscpy\b' | wc -l
> > 1066
> > 
> > https://www.kernel.org/doc/html/latest/process/deprecated.html#strcpy
> > https://github.com/KSPP/linux/issues/88
> > 
> > https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings
> > https://github.com/KSPP/linux/issues/89
> > 
> > https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> > https://github.com/KSPP/linux/issues/90
> > 
> > We have no way right now to block the addition of deprecated API usage,
> > which makes ever catching up on this replacement very challenging.
> 
> These could be added to checkpatch's deprecated_api test.
> ---
>  scripts/checkpatch.pl | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 149518d2a6a7..f9ccb2a63a95 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -605,6 +605,9 @@ foreach my $entry (@mode_permission_funcs) {
>  $mode_perms_search = "(?:${mode_perms_search})";
>  
>  our %deprecated_apis = (
> +	"strcpy"				=> "strscpy",
> +	"strncpy"				=> "strscpy",
> +	"strlcpy"				=> "strscpy",
>  	"synchronize_rcu_bh"			=> "synchronize_rcu",
>  	"synchronize_rcu_bh_expedited"		=> "synchronize_rcu_expedited",
>  	"call_rcu_bh"				=> "call_rcu",
> 
> 

Good idea, yeah. We, unfortunately, need to leave strncpy() off this
list for now because it's not *strictly* deprecated (see the notes in
bug report[1]), but the others can be.

[1] https://github.com/KSPP/linux/issues/89

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008261932.FF4E5C0%40keescook.
