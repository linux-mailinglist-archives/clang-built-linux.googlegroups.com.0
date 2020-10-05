Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFWM5X5QKGQEJPXEOVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 179FB283E49
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 20:29:44 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id s201sf3190561vsc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 11:29:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601922583; cv=pass;
        d=google.com; s=arc-20160816;
        b=NJiRnU+/7ZWj8EKKdMBM9/u44ac47tldugOg4cfuyw/Jtbver1W6/2SVh4IVJYKFuS
         +78yw2Ix5T3Lay39xCy3knxMNEwHpkCv3JjXKRol2dZ3CmHRzVUklAruoRkjf2mS9t2P
         lWw7q7GVblmM61+ZX55cLGneY8CYJaumbIUI3vzLcFfVvULLTZn/Yg1dIUXKIYcn+BL5
         5r03JS2x8C2rF3/44eJyy3ZA+upD5UCedYPJqgLn9fGMUWuziqysTPxdzkynVMsex/gk
         VyW20eclTRt9RWJq9OdM2T2v8YHlzCTc+3CbYAlVZ8Ol0WgHaUKTG0NLoUy5IQGwZ8fm
         0TAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e0CjpH6PjbQdXW1Aj4wE0ZKeg+WJUo7A3OdkD0w3/Do=;
        b=UbugiFWWOjjc30FCVuPVGCJLix1zS9+KYnJnSD6RiCtFee9e7qUaSgkFFRSi722RVI
         gilJLIsw1Y2su0BmiaFodeo/9fF6SThtLq2kWmwRn/DfKVLXwxzXxs1RjRc1hoJlCbAt
         G2GTkS8y4jT2g0VIlQ45ff06SANQzwQbq0FJT5BurosGgJGBcuOm5JtFC6IkC4O3R/PR
         +kP+G/LryzjDAM6UHcQJexU8XCqtYmFaNZVeG/h94ISAAG6S2cHSeJ3OOdoH815gWKOh
         IE8kH/w9bWsd/Rtdbt3XLQVi78VH+M5yN1JCKrJgV7xqEsTHepe5JSnlmteWDzPTaFvJ
         lfNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MiJI6ey7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e0CjpH6PjbQdXW1Aj4wE0ZKeg+WJUo7A3OdkD0w3/Do=;
        b=BMmpz0KgndboMjKm/Fn2/SFTrXSFYCRj6sBVBdbU7aC0sfWp12E7Nb/k8vjIp/NGaZ
         nYpdMc0X6MdN/0BA1NDTSjvn3de7v9Y+ES7Qv7XpXUc1UwgJkM8yrbuRKdDe6t3SCE6M
         VeBWSF+Sxo9HoJtowWrYCdPC41uCiHqspkESPX4pYdDprvFtu+KZQcmmxMMVjTQGcrs6
         j07zTf7ywjC+7PfhnZhHIfZNziav1oYvJQ1vfELrMiwUGOZ5wQwkmG6sYY+LY3eAkuIG
         Quof2h4UB4huJs1w5LyEvWaOiBJUntNzPHsBv7fWhL8LCNGojDoIBJGG8Jd1+ZLqvEaL
         KMug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e0CjpH6PjbQdXW1Aj4wE0ZKeg+WJUo7A3OdkD0w3/Do=;
        b=VwJTPtiz+GcMUKgCxOjMN2NatH+omk1WXUEojJQ4p0ydxuuA20hXSz41VwCnEF/1Xg
         CU9fHezTmvd219y8Ww8cYTxtgowJ42AJtAe0uX0PVq9XzKVasufMVpTDCuqvz/xyVe/h
         GMSeuRV84v76MKlRveCtYgpOGGwKm2Ewyxy099tF2UIVF6oYwQ7XF26KyuR5tZGG6lu4
         PRuEfCBQrVxhGhm04ZAbzGVwArFf8Oct92nkuiCOS4W+2eVdOTaDOg4lCBriaSTBGZfc
         d//Yv7A5bsn2zzOLAJ8KAv5VXLO+kk5LvqyWYOdt1q7cO0CgZ1ZPB4Or/U2rF177UYTd
         r06w==
X-Gm-Message-State: AOAM533pRQibo1UK7bgjVJ+VLbmpjp+PBHIxAQU8SEvmPEEXozwqV8O/
	uUGZC5jtGqVdbiJG6DeoVoU=
X-Google-Smtp-Source: ABdhPJy31H727eR8OL2vfmqApIIuD+RUNp1wfvN1hYqbRb/rWpZqjjqJspxtTERhOgo7I9mOLQQVBg==
X-Received: by 2002:a67:69c7:: with SMTP id e190mr1119031vsc.15.1601922583002;
        Mon, 05 Oct 2020 11:29:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:edda:: with SMTP id e26ls778047vsp.5.gmail; Mon, 05 Oct
 2020 11:29:42 -0700 (PDT)
X-Received: by 2002:a05:6102:2c1:: with SMTP id h1mr753194vsh.44.1601922582522;
        Mon, 05 Oct 2020 11:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601922582; cv=none;
        d=google.com; s=arc-20160816;
        b=KRdtXJp4ecz+aku/vaVVUnGJWr6eQle3PdVqVH0BV5oj4tkxcC03MMpuIw3yk+DXze
         +ODbM0d9ilh+64qbNk7+rQVH66UUWuxiygA4YnRnstQT/lthOlQCmE5tMxDUJ4wom6ME
         fggx+oJVQr+E7vB7Vp7wjAkcVUnavzYlDlxENTn3mMNKUTfTmyewmaYUHYZ8GdVc6sOb
         r5p5QkPSp1GY5O+yfc4YI8wsDmItPzKiULo+SA3AWzLYCyjmbHctFbsD05VlA/KWuWbR
         LvsN2FOsO8N/PQLexrLGJtNLlaFg8Wd8MdgIUm9NXLJUbtst2pF/s2q3GSzKlvIpCDhu
         Pllw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tGk+HufVuvkodYsqg3pTpLFvIgJAITpmfFnUXPHR2Jg=;
        b=vGhEs/3F3K2xMFzzxnOxounVsmSQEZRWAe3RBVej3/a8yqfPJchWvtcqDfH+a/0fzU
         zQFwKLRSv7qSxLCMsS/hCxmKlTtIWFAgMduTsvR7GofwSUCVZ4MbuEE/hXeTO975noK1
         jq335PXLoSCxGCBpe4uJDF4vOvwMCmf1xzU6SHZ3jprP1qmZjwjcOgm10y7JslNI+Xpz
         lR8GOSJfZ8IdsS+pptiW0c3m0VRkmVE3B0B9ah57bkyG3HQuhZwaIA4tJ9oLrwXKbWtO
         wQDRMm8GEJADmokHtoiYO7vRynSV48guCVKv0WT4v1/MpiXqckwGwCeE7HYExKk3z2NW
         TpvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MiJI6ey7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p129si65125vkg.3.2020.10.05.11.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 11:29:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id d6so7497612pfn.9
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 11:29:42 -0700 (PDT)
X-Received: by 2002:a65:6858:: with SMTP id q24mr812037pgt.10.1601922581328;
 Mon, 05 Oct 2020 11:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com> <20200930204044.GZ29330@paulmck-ThinkPad-P72>
 <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com> <20201002205130.GK29330@paulmck-ThinkPad-P72>
In-Reply-To: <20201002205130.GK29330@paulmck-ThinkPad-P72>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Oct 2020 11:29:30 -0700
Message-ID: <CAKwvOdkPMSwQneMLFNg3ihM5zHorFy+uGvzAL7y70+hu_1q24w@mail.gmail.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	rcu@vger.kernel.org, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MiJI6ey7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Oct 2, 2020 at 1:51 PM Paul E. McKenney <paulmck@kernel.org> wrote:
>
> On Wed, Sep 30, 2020 at 01:55:48PM -0700, Nick Desaulniers wrote:
> > On Wed, Sep 30, 2020 at 1:40 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > >
> > > On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> > > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > > they treat section names that contain \".
> > > >
> > > > The portable solution is to not use a string literal with the
> > > > preprocessor stringification operator.
> > > >
> > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > I am guessing that this needs to go up with other patches.  If so:
> > >
> > > Acked-by: Paul E. McKenney <paulmck@kernel.org>
> > >
> > > If not, let me know and I will queue it.
> >
> > I could have bundled them up as a series.  I think you can pick it up,
> > and I'll owe you a beer?
>
> It is queued, thank you!
>
> When does it need to hit mainline?  (Your default is the v5.11 merge
> window, that is, the one following the upcoming merge window.)

No rush, this patch wasn't blocking any known issue, just a cleanup
while I was in the neighborhood.  100 years ago, I was an Eagle scout.
Pretty sure there was a motto about "leaving things better than you
found them."  Thanks for help resolving the merge conflict reported in
-next related to it.

>
>
>                                                         Thanx, Paul
>
> > > > ---
> > > > Changes V1->V2:
> > > > * drop unrelated Kconfig changes accidentally committed in v1.
> > > >
> > > >  include/linux/srcutree.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> > > > index 9cfcc8a756ae..9de652f4e1bd 100644
> > > > --- a/include/linux/srcutree.h
> > > > +++ b/include/linux/srcutree.h
> > > > @@ -124,7 +124,7 @@ struct srcu_struct {
> > > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > > >       is_static struct srcu_struct name;                              \
> > > >       struct srcu_struct * const __srcu_struct_##name                 \
> > > > -             __section("___srcu_struct_ptrs") = &name
> > > > +             __section(___srcu_struct_ptrs) = &name
> > > >  #else
> > > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > > >       static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> > > > --
> > > > 2.28.0.709.gb0816b6eb0-goog
> > > >
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkPMSwQneMLFNg3ihM5zHorFy%2BuGvzAL7y70%2Bhu_1q24w%40mail.gmail.com.
