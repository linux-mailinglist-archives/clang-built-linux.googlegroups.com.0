Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBNBSGEAMGQEU2EQSYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3863DBEE4
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 21:18:30 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id z25-20020a4ad1b90000b029023bbaaddcbbsf4272010oor.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 12:18:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627672709; cv=pass;
        d=google.com; s=arc-20160816;
        b=gyl5jCFy0w8njVkxK6WK3ic2z4pkv+eURWeOAOw03HT+36ajZKUkT4PeWzfRgkjo00
         1Dvd4vDK2n50nK+aRXgNg9OdEq0dbA0PAPsGNXjBqeNSp/DuQPGYn2CcayoJ6USkluXz
         H+cAdL2ZtOGheNdXToYT/5bQZf4gyKclg8rJA1ObwHcsd38hTA5MeUEuGpw6d2O7UkAW
         KJSGxxURpP9gBd9LZ2knN+wXL5CZH7jMr/XqkjovXQPkJDuLy9q15J5l55EcV2C92bIW
         NQ1yHr8XNQoOWJoVP4378/qsEyXHjrc7diVnyUQNjV17Dt42xqJANbf5VpqU3sGe+GFV
         DzpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UCagV8w9/UJkxBYqmGlc+WNW0HiFnd0Q73GhYq0sYYY=;
        b=b/OmitWyvMEM5Z/PHbVOj1AjhXeCJO9bVJDn3P3VzvvFjxbabHfUSxjShgsJbAQrtO
         BGDQN2aBwarm6xU8jhqdQKqGXCdoJprsZjKtv/9pH6dKK0t/3stEDYA93qggPC9ufei4
         czCzyrh6QQXhcuRnkNBHfOiM9SZ9q66bcJMz8dxUNDGk5aZGKdnLRuPm82AJROiMzmtg
         uyCjwds8h0rTL+luJPar5dCMrfEeryU8PBVwg99ea3Yjh6CJwO5waMhPTf1atqFqzz3e
         YV+f6+iHrGiXdk5hCcdbPw4wvdGCna5coi4Q7Osg5DEikJK/i0u8tOjhnR+PRBSK/cHG
         6Y8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WS5dYESC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UCagV8w9/UJkxBYqmGlc+WNW0HiFnd0Q73GhYq0sYYY=;
        b=NohTsc9S5ztAygzkIqTRqyIcBEQplBQyB8Nl+DRYBS7sX8ILET5f2F474wOYgLr3YA
         b8ZeYUz5u/rrwlxrqSvvSrHg8t7qnuBv4vDT1eKuP7T/B/xoeDOB7IWXpy0/9YgeAb29
         L+Ga2qrTsj/A8ChLyrGpImpI2ZXJE0Ccq0tmYzE0uNBPAmdAqC5csI6On/Rv1+Or1yS2
         OISm22mTc6agCbb5AHMSdosDW5qXPdmPS2RKcLItwmsZr6uwOeT59LYylFC5RlVrQj1r
         PanslblngCjPh37LmxTnV19c516HVX9SkU3UWkxFQtINJg/4V5o0vezRjsJLLkl0K5zH
         EO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UCagV8w9/UJkxBYqmGlc+WNW0HiFnd0Q73GhYq0sYYY=;
        b=pDBJ1B8vsnqH83rWVvp7DcHCjcnn5S7g0N1+fEpxfJf22ImIalkUGAUQkliqjsHWLU
         gZHS3bcmkEMMg0Y1NmvZ56/ldUdpOxeP0i8Scpo/cLKlnjJ3YXEz4HHVF6TfKocqEyxe
         4BAoNa/wSEWOp2aCol2SmPZm6IgT1YJbeggG2HHJjWF0D2QnPoT0eg5vFUhZs0Mn7sFA
         8ZJnQP6W8VjmUwOdcqL0lvFVDkJUyumvHQj+DynTmiIEdz/Lii0JJ4JFWouDx4JhjZ12
         bOQXBc/M7OZ3olxnI7mVEYlsqJrkEYj6rZQ/vf8yLV2yZx9RLcz+ltXOIJ5nYnUutMpR
         YD+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RSMff6r8DAOWq40OCD/P6z8PAq2yfp9BkTglucR6wipzFLIPi
	QzXz+T6q5dnwHfkY0Pfl0C8=
X-Google-Smtp-Source: ABdhPJyw+Yaa9ATl5ovIhOKQw6n+VVqYGERg4HoADQ36Dkzcl5pvvPhUMq0F6rjIk2OPWQGWbnxTdw==
X-Received: by 2002:a05:6830:348d:: with SMTP id c13mr3180817otu.207.1627672709387;
        Fri, 30 Jul 2021 12:18:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c4c9:: with SMTP id u192ls627065oif.7.gmail; Fri, 30 Jul
 2021 12:18:29 -0700 (PDT)
X-Received: by 2002:a05:6808:1925:: with SMTP id bf37mr3149804oib.154.1627672709000;
        Fri, 30 Jul 2021 12:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627672708; cv=none;
        d=google.com; s=arc-20160816;
        b=BrZK9t8mLEF50az6bttsTcmpRdqyDRwFNLNQm5r/hk8v2OdwjnKd7I5MWSS5KTNDWj
         ysZDrVJmoZlq3urWapZUlTk5SIk+QKnOvW2m6q3VL9BkeUBNUKjXftxF/fCrcwcynbEr
         7hdHthnB2q126M9UPHx6cPveZcR7PiuiOYgamShj62vPZq0i9FoaLsNzC8cHH9cRNcsU
         83uIT4KtgARpqqOOVvTwC0YZ415iLKFLZRvKhk9glpEN5F8YsJQBbxpvjCJXait3AVCF
         GQeRFd5rJDht0Ic9nYhOSqtRi4ZwALCAjARTUT23rgjpBS+SBg+/Wtqerh3EtMXfIqRh
         ubPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GxQ+HQk3cdftqAN6ekEINRB7/ckK/Y3btr+5Ktub3O8=;
        b=BNpKkwWEWHOYrStZ5NdToYPqyb5cpaQoglmSb8iPdfOZUNTA6VaifLnxnLJA2zyo3H
         46DMOMd+64nozqMrcctHEQxKZsR5IRYWxuQBrdTkF/rT5yqxC60T/YnFIo5YE58fXvF3
         aq03h+VS9HMvDIb03gr57YkBWwmt6/YK4cRSl8pzEP1YSvrEh0rC2plUunDGVogakpah
         DjM/tViBgjXm3E6a3vxRsWOiXouBwEqBKb6SYTWlSU53kaimuW9fsv7JGgR3qD6xde2R
         eaRi4gjH2odaO/WYRqes/rx/7Aq+6rLRqLmHaGkA8PfCF1ic7wsUCmxZ2GaQPrWulpg6
         l68g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WS5dYESC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id k24si172108otn.3.2021.07.30.12.18.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 12:18:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso15748889pjf.4
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 12:18:28 -0700 (PDT)
X-Received: by 2002:a65:498a:: with SMTP id r10mr500564pgs.7.1627672708339;
        Fri, 30 Jul 2021 12:18:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 26sm3040727pjj.27.2021.07.30.12.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 12:18:27 -0700 (PDT)
Date: Fri, 30 Jul 2021 12:18:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, dsterba@suse.cz,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bart Van Assche <bvanassche@acm.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <202107301217.46EA9DA@keescook>
References: <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
 <20210728213730.GR5047@suse.cz>
 <YQJDCw01gSp1d1/M@kroah.com>
 <20210729082039.GX25548@kadam>
 <202107291952.C08EAE039B@keescook>
 <20210730083845.GD5047@suse.cz>
 <20210730090054.GX1931@kadam>
 <202107300937.C7016A82@keescook>
 <CAKwvOdmtKszUS0-OyGMHuhqjyXQC_283KOQOouWWtimYCvsAoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmtKszUS0-OyGMHuhqjyXQC_283KOQOouWWtimYCvsAoA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WS5dYESC;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

On Fri, Jul 30, 2021 at 10:08:03AM -0700, Nick Desaulniers wrote:
> On Fri, Jul 30, 2021 at 9:44 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Fri, Jul 30, 2021 at 12:00:54PM +0300, Dan Carpenter wrote:
> > > On Fri, Jul 30, 2021 at 10:38:45AM +0200, David Sterba wrote:
> > > > Then is explicit memset the only reliable way accross all compiler
> > > > flavors and supported versions?
> > > >
> > >
> > > The = { } initializer works.  It's only when you start partially
> > > initializing the struct that it doesn't initialize holes.
> >
> > No, partial works. It's when you _fully_ initialize the struct where the
> > padding doesn't get initialized. *sob*
> 
> I'm pretty sure that this has more to do with whether or not the
> compiler applies SROA then observes uses of the individual members or
> not.

Ultimately, it's just not consistent, so thank goodness for
-ftrivial-auto-var-init=zero. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107301217.46EA9DA%40keescook.
