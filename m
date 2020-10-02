Return-Path: <clang-built-linux+bncBAABBU5F335QKGQERJ4KSAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 29477281D23
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 22:51:33 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id o9sf1793028pgi.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 13:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601671891; cv=pass;
        d=google.com; s=arc-20160816;
        b=D7c3/rYcXHnks+8meoJmM5LhMa231nKbzroaEnvIrbFlEzjpnttCkYXo9V7WbW9u0v
         jae+xYcbMUM2Z502pDaPAYjfH8cSx8eGrY8lMARILip+9UvjxnxZn7FTfqR0jA1F07RX
         hDE2z9DIB1yikzO8F4uMQp72oyzYTy6YlaVdWHied4GZp4+0EwmGmswhHSwwLRK3QqoN
         yUntoV+JwqnG82NnZbZR2386e6O0O03ly2f/XM1PS9AXuvKF5WBuPtvp2wOlengxy9t4
         6KSvMB1YdUzGLi9MLV2uk/Q+A0D1gBtM9gylYZX1wTborCCUAMvTbtz42f4qQTCt/AtF
         5ivg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=ehpu6bW+IkWdzOSaJ6AaboEjjsNqQ8HByHqhWkIfnVc=;
        b=ac0XhTPT5/pe6XDSYRLIVQJ4V+KfvvBJKqF6eWW/kWWQ8DCxFEx4CV2iBJL4MK0wdg
         Adm4RxhmhiuoMxAYbjjJ8W+YLTH3QAB97I3pmnit7NBCQw63JPymkIoOuy/9qj2sMy5J
         qKz3accQL8SQCdYYVlFrB8vHQ93TRAbaeKAHu3y0e2LdH/yWUtGo1Qpzat8bnxUGysNn
         FTMtbXnuJsE4A4U4NOrmLbSLl7b1OUL/oOolDu90XzQUHhyNNo28BtGSTnjogdcgerry
         XHkm7QRI3b14JNMaVMPumaxeG4MJHvkp7e4wL4eAF0GKqHWvdjU65kM+cazLxzNm1j7D
         5HAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Cho9pbht;
       spf=pass (google.com: domain of srs0=yhjb=dj=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=YhjB=DJ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ehpu6bW+IkWdzOSaJ6AaboEjjsNqQ8HByHqhWkIfnVc=;
        b=Kr+8itEpLXSeub9v20h7jESG5TomWhCs8/E6OxH01lexX7TYdZ1mashFswkpZx6ROP
         4eXCg2kuBilMN2PRWXWnVDpgSRFEq0vL6qokzWWiVdoE6+E9iKtgLLr83Z/oXKFx735S
         86acD8soSWBpOGhhvYsksad7wQj/hKqqtVhTBXVJC/VwILpqv6OzfH4NfrRNXxRnY1Uu
         QEN2QLieI3X+/KxmC73DWVOcuWHcQ8OsesJ4jkR67W33f2AG4jQCSPme15XwCoXJxXR2
         6S3ZR5Gzd19oSUb754Lj16lPwaBncSoJ3im8z3smzppCAzmmLDpg9A9Gw/X5zCd4Jg8i
         LWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ehpu6bW+IkWdzOSaJ6AaboEjjsNqQ8HByHqhWkIfnVc=;
        b=BGGRMiRAyXxoSt1h8ZJzg8b9dVdGrvz0lwMMeByBtIDus/j72B33kfG+fErV2lxu7F
         aNDckVORYromYHHftaJkrp5Wq6bhL3dBfG9lNdet3digQ6LG6YBdUYJGukf4jrl2ndyx
         YNrGFQLci3LbW92apr1zFQ2MGCnp8GrSaQkDgcuWI6qRCcSwosmr8Hvx8p4NnAklFE2r
         GXuQ3Bjbt18bqgB8Ph0D+X3TrQkPcTpD2Z0BXugnyRbZv7gL3cUffMpuPBfTYsA+Y/Db
         wAxkQo7dxe+bdiRWQbDxRH2NstSg23s08MUTLAov7Da6CYGhbIPNgqP+3AU7Sqg7DYRG
         flNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z0vNvIn0WnVW/nfv2IK9WY0ZOhjD6kzoE8/pMx2QCVFNbch2c
	39TsGHoySjbdbOEADLg2hzI=
X-Google-Smtp-Source: ABdhPJxx37Mltz6STrr3WgQtGG5CFnp/RG0QKbkH6i1KN4Pnn+yQYIoiBL6LDFUZcwcTd/6M+pd3ZQ==
X-Received: by 2002:a17:90b:617:: with SMTP id gb23mr4514786pjb.36.1601671891658;
        Fri, 02 Oct 2020 13:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3855:: with SMTP id f82ls1363758pfa.10.gmail; Fri, 02
 Oct 2020 13:51:31 -0700 (PDT)
X-Received: by 2002:a63:121f:: with SMTP id h31mr4064176pgl.274.1601671891161;
        Fri, 02 Oct 2020 13:51:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601671891; cv=none;
        d=google.com; s=arc-20160816;
        b=hBSkxtB3UZEqJ7KcIXaFjB2Qjl8u0kYs/vCY1jZ3efVuqYemmQE9J90yKehNGqPmqG
         Aqn07EQciTOLNGMx+fy50qBXax/G/m+Rz8ymo6RQ4JCaeHag8lNP3QChc5gg3jEIsInb
         dMJblBgRo3q9qFuLCsl+atY7P19BI3/i7y4JLcHzYKBjhyp1r4QWOKnoBQIPhCp6Th0Z
         Ji9Hsq8fkx9Eg+vcYsnqaeP3KJAmz7FPHVHcev59PM8iOVksNAirG5+0KU5yIrVmD+6C
         lDJfqh3hX5MH4f/FdQFpTq9YjMPlIQXy6STnWD3nkpB9wnDXQkCZyBOIsr2Wg/kXRiJb
         MziA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=aSgN9/cTN92BiYFcr3GjvPgZ1iddPU/tOxRIhlOw934=;
        b=eTOlTcuiMenBkHpd8Fz6pv0H1gDt/dxxSShc1MOWSkqkiBxOjGnzeRZNB7IWSav75b
         tGynA3t2ZRQblfUZQtUGOvFQlsUBwmY1bvOPLWLtBXylMCR8oBxq6ug8psYOBLOpFaP3
         8pG6tcTJzjJxnYZ2fGlIfA2ZLsAzIW3fi7YR/TX4PG0yN6vIaXkrTyY971dz1NuaDvld
         e2cZeM4SjxnZU5g1wgG05ub2DJ79AAvWEFJa2LnwHW1lhQ1Eq+K4de3I4jTR6bM47o8e
         izqe9jEBxna5J58QWYU/TkjAwqdNXiZ2NzAd6l4rTUza/W91covfroPgF2GPYFQ+vSk2
         cZCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Cho9pbht;
       spf=pass (google.com: domain of srs0=yhjb=dj=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=YhjB=DJ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mv6si208422pjb.0.2020.10.02.13.51.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 13:51:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=yhjb=dj=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D29082065D;
	Fri,  2 Oct 2020 20:51:30 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 9705335230A9; Fri,  2 Oct 2020 13:51:30 -0700 (PDT)
Date: Fri, 2 Oct 2020 13:51:30 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
Message-ID: <20201002205130.GK29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
 <20200930204044.GZ29330@paulmck-ThinkPad-P72>
 <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Cho9pbht;       spf=pass
 (google.com: domain of srs0=yhjb=dj=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=YhjB=DJ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Sep 30, 2020 at 01:55:48PM -0700, Nick Desaulniers wrote:
> On Wed, Sep 30, 2020 at 1:40 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> >
> > On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > they treat section names that contain \".
> > >
> > > The portable solution is to not use a string literal with the
> > > preprocessor stringification operator.
> > >
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > I am guessing that this needs to go up with other patches.  If so:
> >
> > Acked-by: Paul E. McKenney <paulmck@kernel.org>
> >
> > If not, let me know and I will queue it.
> 
> I could have bundled them up as a series.  I think you can pick it up,
> and I'll owe you a beer?

It is queued, thank you!

When does it need to hit mainline?  (Your default is the v5.11 merge
window, that is, the one following the upcoming merge window.)


                                                        Thanx, Paul

> > > ---
> > > Changes V1->V2:
> > > * drop unrelated Kconfig changes accidentally committed in v1.
> > >
> > >  include/linux/srcutree.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> > > index 9cfcc8a756ae..9de652f4e1bd 100644
> > > --- a/include/linux/srcutree.h
> > > +++ b/include/linux/srcutree.h
> > > @@ -124,7 +124,7 @@ struct srcu_struct {
> > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > >       is_static struct srcu_struct name;                              \
> > >       struct srcu_struct * const __srcu_struct_##name                 \
> > > -             __section("___srcu_struct_ptrs") = &name
> > > +             __section(___srcu_struct_ptrs) = &name
> > >  #else
> > >  # define __DEFINE_SRCU(name, is_static)                                      \
> > >       static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> > > --
> > > 2.28.0.709.gb0816b6eb0-goog
> > >
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002205130.GK29330%40paulmck-ThinkPad-P72.
