Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOUOZ75QKGQE6QMRRDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3617F27DCDA
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 01:46:04 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id j6sf32693pjy.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 16:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601423162; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hq2Omwa7VZvB+AA8IK+5VXDA5RJFJQw7NVhh5hgYrD1Q3mGU9EJqmcv2xbTcfYwABH
         bYjAIfKvDnCGDqDk4+M6QjFvu4BlMU5wOHZXBDluJNdHySwdyX3GQBHj899c31Wm1oe8
         8o4J1meOimJOZ+Zx1BJS7+XjphanVMgTG7xORROEUQ0FOYE+meqK1bM9wKgMdJE5zcZl
         zs/1bXfA0dv5c7mahzOfMPeIG+htCFhIGl4ysv0yXh2pbjIH+3h4o6qKoVuM1dwijDL5
         iMLaB7N4hYHZt5dnGov78OAO0GIHNUQewqx6pgRmSyT5Y9pM6i91ZuB9S/WbSKYCXv9Y
         j30g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=grQyODc5gkSflCYFUKh4HmDk50aTg/j7dFVlKtXRT5I=;
        b=wOjr2em30ykHOaJlflNlFO0ouIKQF8ywj9AgvIac56knXxlsaLL3FTSc7WRU5Gn0/b
         jknCB3Pv8xhPmib0sGuCL9Sy1VcSDtIIj53/VNCFYX8NYRCaU4J0E3bwhB0LiuD0ld4Y
         gEywX/gVER8XxpF0li2ejYKH7eJDeekGVQzE+W2SL+6mS/1z1cAazo8Y2IycQpGJY3By
         18J3C02SuWJRsBKuEzG8wZGEwGSBPHYP1mZ2N2tJ5S7O5rCUNTIZdEjmr+lox+9vFLID
         UzJMbAFk7fo0wx0bwTGK0Ge6AlxZw/8G4wRjvW+ZmZM2WHW65+RbRnCDFIpSCPz6lP60
         kMQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QXOBgazQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=grQyODc5gkSflCYFUKh4HmDk50aTg/j7dFVlKtXRT5I=;
        b=L8FxgXpFb/r8gdmaIiWoANIZmn3MnyOy4D6CXJzZC21NiH+XE2j7YMuwR3qcXa+plm
         NJb+Qh9Xw3/ZSRr24BaFiSZ7RI5Vw4HSvvWGQ5APeHCbF3v/24i3l8xqYHjwRh3/Ataa
         BbLjPJS57O0/FEnumFkzmHYZb0htxMEfZ+3t5LzVPPuvL7anmhoMHZt18i4Z0zOWh9zK
         grzgnCEuhmgiqT1Oqq7JasPD1RuCdGSA9Z85CO/XShaPkHhCRiQf9cJzN5xTuUd0J3vP
         CqCz01drbGToTAKapGxyNdmzjWFLRTHLemtiJof5scjmh0884beXlm7O0yIRSkqtUDZ/
         /oig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=grQyODc5gkSflCYFUKh4HmDk50aTg/j7dFVlKtXRT5I=;
        b=fMyPmPuLclNTjlZvhDSPOAAU64wwwQxRPzJxMpeoX3ZLzSGK1YibD1VcBXXLNIlBWT
         iKncYyWakb6Nf1LsAi8BldedRV5X2VoWFnoQrxsdzz9FTCQCRalj9/WJjC7OzDwPHagv
         EgHzS+xsHisuLURix5OyOTXIiN9YbWFvVvx/AYic+lEm/m2CdIXWp6eOyStyjEJGCw5X
         /xJt8Fue9OQggKzIY45+P4t/9ALye/8iLmjGVIi/BvbZ26FZhSDhriFYbMtlPhTHGSse
         ZmV7vGV0eNbO/MeSDX90DRQdKnqB+lvcbCk2P2wyomnRFtMQEmX6yH9G8gPPL4WQpt+3
         RKzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RogwiyTTFHYbbFi2TxMl+Dk/iA1nMJPilgVpA/AzBnM+21v50
	KGTuYyjRszfod7jh34pgClY=
X-Google-Smtp-Source: ABdhPJwW4hWascWcn6cp1XsJzYBlgSoAzzBzq7VaX3CZgHNH8bMCGqUNTQjXGQzemAFe1SvgjRtEig==
X-Received: by 2002:a17:902:b211:b029:d2:1fde:d452 with SMTP id t17-20020a170902b211b02900d21fded452mr7025834plr.36.1601423162338;
        Tue, 29 Sep 2020 16:46:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d09:: with SMTP id y9ls82990pgc.3.gmail; Tue, 29 Sep
 2020 16:46:01 -0700 (PDT)
X-Received: by 2002:a63:c948:: with SMTP id y8mr21394pgg.164.1601423161624;
        Tue, 29 Sep 2020 16:46:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601423161; cv=none;
        d=google.com; s=arc-20160816;
        b=EdSMc7k3t2kfUlodaH/mWrD4t+HTkLgo61pVRFE7MZuKJRPBC1ffZE+6ZqjkhEq6Si
         IDU7XWJ0l5G4yNefUrlDIFgb5iAlW4h5QROC/qGDZnpvgWO7nRWdxNjq2wswCAXb6SUm
         Ard7HQm2eJWD6z5IFFlsp0mtPLYZT4FvBP4eRKsk59c8RFC4pgSv0QSKSPFLsuybbFAO
         yrrzjfEOilCtBN2Z4Wp+IqLLfUTuzr3s/iGmDBiwG5eSgcaluoTknX7nKHxEZYPMMYJE
         oeaNLXVMaHtkwdU5jeLEhyy9OADdg+XrCrnYjPYjy3B+0do6VlwuZ5vTng++qAyEdJrY
         qr8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BE3IS0ree7QIjSeFdWMob24S2TufDcRFBlLIISZlO6M=;
        b=a5iyqgK7YrxvD1Vsw9rxjuqzbZyJg7/gMUI3zc+VgGRtGj+UZ5PgTIrY6q+PvZev3U
         DkxStDM6YiXmmjZJo+pYGXZNGbF6TnTRJHnxmMqp63MbJpQnGmMVqU5hZXibOQ6P+fYk
         wHHDq/QgSnpkYr8V54L1lJNqcqC9Pjw/7BlrsIjkTs8uNu7ofLV6FoCbYnJnRLjbwF0h
         qH9QqthdLJEvzxlfavEBOM3zHhvxfJQfAiulag5NSoD1iS7azNJ6RvB4uC2WNPVRrXxD
         Mcvl05Lk8L7ks9cg1tGaEpdovpCJ/uAgdsEKUui5nDcwf53BKil3cBKqnKRlbl37Tas0
         cqSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QXOBgazQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e18si1071pld.5.2020.09.29.16.46.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 16:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e18so5304248pgd.4
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 16:46:01 -0700 (PDT)
X-Received: by 2002:a63:511d:: with SMTP id f29mr4006pgb.11.1601423161354;
        Tue, 29 Sep 2020 16:46:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i15sm6744827pfk.145.2020.09.29.16.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 16:46:00 -0700 (PDT)
Date: Tue, 29 Sep 2020 16:45:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Paul E . McKenney" <paulmck@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>, linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] srcu: avoid escaped section names
Message-ID: <202009291645.283040FE80@keescook>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929192549.501516-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QXOBgazQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
> 
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Ah, ignore my earlier question about also fixing this instance. Here it
is! ;)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> Changes V1->V2:
> * drop unrelated Kconfig changes accidentally committed in v1.
> 
>  include/linux/srcutree.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> index 9cfcc8a756ae..9de652f4e1bd 100644
> --- a/include/linux/srcutree.h
> +++ b/include/linux/srcutree.h
> @@ -124,7 +124,7 @@ struct srcu_struct {
>  # define __DEFINE_SRCU(name, is_static)					\
>  	is_static struct srcu_struct name;				\
>  	struct srcu_struct * const __srcu_struct_##name			\
> -		__section("___srcu_struct_ptrs") = &name
> +		__section(___srcu_struct_ptrs) = &name
>  #else
>  # define __DEFINE_SRCU(name, is_static)					\
>  	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
> -- 
> 2.28.0.709.gb0816b6eb0-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009291645.283040FE80%40keescook.
