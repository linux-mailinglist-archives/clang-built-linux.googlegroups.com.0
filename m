Return-Path: <clang-built-linux+bncBCIO53XE7YHBBZ5KZ35QKGQED5AR6UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F05B927D7C8
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 22:13:28 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id v14sf3214769qvq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:13:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601410408; cv=pass;
        d=google.com; s=arc-20160816;
        b=n7TOw/Pl6gQL4KC+hdtJVYP7AN6Cn4WBRoW82j4B0cg5nm7sHtvdm7YEmteiToRO/0
         JrfCTFBumIw5p8TsfgG0vFfKjzULUzhhu3IBnB85bukX6jNXj3trlKiuLGng2FH49gvs
         uVc+sHTwC1o3ioh8JS0EoDwqusCNpuMN17qx610Z+2b34UdKOVq/6E3wV5si8QF56fU4
         E4/EWo8n6ORr6TyLvfZwFNnxsP4DHOvOHv1C6S8N4JZJsDxFnJ4HEYCcClkc//CUFNwH
         51htRn99IBSuOZez3FXbhRDbATy/oogdU0yYGQ2mQ/r+GEqikkIqZXgvghVOeKBNuafk
         uWWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=azlLjRAz1Ql7DOjPtdddK2rC7uUcI0DqTRswGYsEaBo=;
        b=1KbHnmaVI3rs+Vf7f/h3GYk1CbhoaIU4Xlip7TcdP/BMVkUQ3e+FPkzIGxdv2rFHOa
         xs26BjzwURplXvP/1PtFjC7T14McyR6RNz6/VQMciBlIHz0BLhGLk0wefr2t5FvK2iT0
         E5leqek2tVSIeYtfBiJoyHIZEU6EoRBQq3zBqQW3DkDHL0/6ubYb/8O2Kmsrk066cWX5
         K2/8QuhgE+iFwuuVj/DxfqJNzFNoEusvLY7Am+CLJalUnNTmOe+OdQ0+AW+QliJpuQjC
         +n6XM3sewA46dlYGkqUjFKIO14S0UY3Y3to35110vMQdvfdEOhc7IoBI+/fFU3Z+s8WQ
         fw1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BIudEvYy;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=azlLjRAz1Ql7DOjPtdddK2rC7uUcI0DqTRswGYsEaBo=;
        b=ets6OvBzZ9k3JLuuhMFrsPewimXjMa8VYn8HYWIfLzeyjfXtl+jb0nk+EltCH8Nshv
         JzGXN3i6c/kBKOukfRrtG9Gk9863HKToSOEr0V2LyUkRemE4gylKRP2t+Vqb94x1zko3
         +mBgPrNnXvTn4PfPwPOmMf4QhoP3V4d6CN/1gCXSD537Gfbi8qcwQO6Fskzc7LlVPKQm
         pCCf7YAi16UBRqPxhVW03GNNgoRtQNcugl+Ba4VmdtPsAn68w5+eoI0lC14mm6MkUztK
         SeZQSxxvGl6ui7Tj3kvmLsUFOhau4tgr3j1VdBIFtjMftz7abo+/pQjahvMyrM7vTosu
         ODDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=azlLjRAz1Ql7DOjPtdddK2rC7uUcI0DqTRswGYsEaBo=;
        b=fd9XpfPFGHaCD4rN4ME0Q9mycfbR5Qi5Q44gBOzlis1Zd5i1AKhgQpxVPRlYXsfl9Q
         UugKpqJQdFvLHUYMZvKlD2xw1MThmdWVnBQjxCt5TArJwsp7JiOFHv3J/YkC8RKL5elt
         YfiBehcn+Ct/MRNDdgqbgXcJ6ll/zMywd6HIZtmyfh/Thh1adIS8aamnAS+CXjjYZjt2
         uGe84/Nc6lbOy3nVIk+IxNu81KxF9XftKcNNdOTQO64SHxRzgd9QZa94Cu+XzjbZTjXE
         OVaPRJ7nHwC78FuDsTjY/zTgTY1BmJIWMfp+Xy/1ym3Scu12ydqRaXRxTA89S2DFZ3yV
         avfw==
X-Gm-Message-State: AOAM5339iaUxlqpWnMQM7DbNXaLGZuT7DFdamGeSxyrnA/5UClKYNegf
	s63SdutXG6n3wlSG4UowCo8=
X-Google-Smtp-Source: ABdhPJzLfwAoKUBqlo9TU9RAIh+wdsjHIgYkXivDrM/sN/O4cQs6/cotp137nTzAidk+/ONc3d6lew==
X-Received: by 2002:a05:620a:1265:: with SMTP id b5mr5977782qkl.27.1601410407527;
        Tue, 29 Sep 2020 13:13:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:8f7:: with SMTP id y52ls5942qth.10.gmail; Tue, 29 Sep
 2020 13:13:27 -0700 (PDT)
X-Received: by 2002:ac8:60d9:: with SMTP id i25mr5101256qtm.209.1601410406965;
        Tue, 29 Sep 2020 13:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601410406; cv=none;
        d=google.com; s=arc-20160816;
        b=GDyDCXQzlNXkJ2diiGFryCAQPZlBDWN/m4I7NY/gQ6IUT8I0rzYqVr0NqUrVcovp88
         eXNkv+KsIZFNEpyoGX/JlEvUnB4qMWp+7jUhoxi+/WeEGWC/VTienYpsIXBWb6KZP5lZ
         BYMdkeFIeRAJobSaW+v4N+YYlLsNFnz44+FDiixaK1Tny+uI2sPgqFvEeT8P6/nK9IdP
         DIR8k/QXvIZD/JCyUKpRXFZSjqxYayIvTN9v4XjfYZSuHeIvr9Ib29/+G2+kxSkswtvH
         msZyMy8CqNwA+A1yzpODZjvcl5hxToJYZClkdHdCxNTSuqAHZ7vJQRaTIR3aejQ4JKX8
         Rirg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=2yE8tLnNFogNu2DcQZ3zwF/fyfjhAGFtUaRsrh9630g=;
        b=Njpagb9IRyPBgvcg8VSTgRqVBCxd9DRHzp8659QUycSd/iPDISnmCvIZcA14NYPLBQ
         1Gwi7EagdKGPWE7ZaHW0HIGsNcccmmWrwRfPu3T/k5qo23GvsTAnMrCrupnMy8todojN
         gtpsGRW3CoYx7arAyRQZ6k1Os/yM799mzHz/46LwmYo5Ok7L4zGCTT4RWanRqkKllB2c
         NNOjSojurv/knQnc0/Moz5lpwKvBB+YD9vRvgUrtSrqpqlHsT2K+74Jd89N7gheQ8Zek
         CV1DnSTFW99zwCJMGQQU7yPbuazYfPB/fddR9BLSOQQM5wqOHhJLQV56G6Thz1cKQskn
         PlLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BIudEvYy;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id k6si338619qkg.1.2020.09.29.13.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id cy2so2991202qvb.0
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 13:13:26 -0700 (PDT)
X-Received: by 2002:a0c:d443:: with SMTP id r3mr6364147qvh.17.1601410406562;
        Tue, 29 Sep 2020 13:13:26 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c40sm7012393qtb.72.2020.09.29.13.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 13:13:26 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 29 Sep 2020 16:13:24 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-sparse@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler.h: avoid escaped section names
Message-ID: <20200929201324.GB2668747@rani.riverdale.lan>
References: <20200929194318.548707-1-ndesaulniers@google.com>
 <20200929200801.GA2668747@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929200801.GA2668747@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BIudEvYy;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Sep 29, 2020 at 04:08:01PM -0400, Arvind Sankar wrote:
> On Tue, Sep 29, 2020 at 12:43:18PM -0700, Nick Desaulniers wrote:
> > The stringification operator, `#`, in the preprocessor escapes strings.
> > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > they treat section names that contain \".
> > 
> > The portable solution is to not use a string literal with the
> > preprocessor stringification operator.
> > 
> > In this case, since __section unconditionally uses the stringification
> > operator, we actually want the more verbose
> > __attribute__((__section__())).
> > 
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  include/linux/compiler.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > index 92ef163a7479..ac45f6d40d39 100644
> > --- a/include/linux/compiler.h
> > +++ b/include/linux/compiler.h
> > @@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> >  	extern typeof(sym) sym;					\
> >  	static const unsigned long __kentry_##sym		\
> >  	__used							\
> > -	__section("___kentry" "+" #sym )			\
> > +	__attribute__((__section__("___kentry+" #sym)))		\
> >  	= (unsigned long)&sym;
> >  #endif
> >  
> > -- 
> > 2.28.0.709.gb0816b6eb0-goog
> > 
> 
> There was this previous mini-thread:
> https://lore.kernel.org/lkml/20200629205448.GA1474367@rani.riverdale.lan/
> and this older one:
> https://lore.kernel.org/lkml/20190904181740.GA19688@gmail.com/
> 
> Just for my own curiosity: how does KENTRY actually get used? grep
> doesn't show any hits, and the thread from 2019 was actually going to
> drop it if I read it right, and also just remove stringification from
> the __section macro.
> 
> There are still other instances that need to be fixed, right?
> 
> Thanks.

Ignore the last question, I see you have separate patches for the rest.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929201324.GB2668747%40rani.riverdale.lan.
