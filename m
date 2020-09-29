Return-Path: <clang-built-linux+bncBCIO53XE7YHBBJFIZ35QKGQEHICNIUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2DA27D79C
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 22:08:05 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id o11sf4357003pjj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 13:08:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601410084; cv=pass;
        d=google.com; s=arc-20160816;
        b=yCRmqCUCONuS5YdAS6V2Sarmy8N7aYy0kdcWmjG7Yf1msq+rdutN01SwVx0ozP9QUf
         NbwIqHXnleWPlmHCT8TyZK5CHlrWXkDO9vof2T4A8ex1mo2l4MfBeFxHtx8/2ptfr2u+
         sevS4TmaF4WT6/ll/ZlF+9GW9e0McyqSWqccq+8hUKQYdDHsCcs3Fqt8RfQAKRy6eHgE
         FobHT/LrtQk3jgDnIRvYAOt6Mjx/WS2o9rNrmDH5SlujyIcvx4Bmaeb4KnSgNPZvsfAn
         cvU4/bRx7fMHp4s4JsRhPXAxlLRZU+bUuXebIq1psN8puslsQL2vMxZTAgURuJ29NTvw
         gW1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=TrBnDb2FJ49I4pL+YCQedT7dGDzKX60xI9TPFpIlDDs=;
        b=hiB5ZRz6P4JiHrsMKMM7/EuWtBk8oLWRpXgco2ecO55zipkh7W1EkQcZGLRXqXby7O
         3l5ynafVf8Z72seMb/yQEt/eiY+XxXRVVuv5QD4rfY8cDqZ2pn0kulnVzt5gvlG1cOnj
         v6gRmNfj7asIlUAnMqu7yzzusAjzOtoRTbQsZcdjIbDtN1Z0Yi678BKdPxjmKACUpsfA
         va2bewxPxMQu8bGgGSCUi4u2Ei3hHa2dgpZafzDwNdNykgyJ1fRzhyfJPTfEZceqoNfi
         8OsJYMxPKwKfw9/QSuouxLUhg5+FDjDiizC8e6Q5l+urYYdVJEJHJu6QafjnDpkZzIZO
         RtBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=stCxwfWf;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TrBnDb2FJ49I4pL+YCQedT7dGDzKX60xI9TPFpIlDDs=;
        b=ArjtBtx2qJRKYI5k9ZGPFquKmyI2KeNBFOlsjzEXQikGF9DZqhZVynJj490yxs0amZ
         EyIcaJn1DQhz97CVPvD3IuyXL+qzlEARzoOvmKRnAZXomUgH/XU5nFxTQ2fHPDC0lqft
         6cgARrHmjm0YUSbwvPUSikGxP1vT0tRsfGvSHLV2PpGfcSCxe9s4A8/h0YVv7sKWbzod
         UsZIr+89m04qQQN7OxaSqDG8xTTVvPf5JzKqNjGbaqjML6vKu8wC7WjCDxlSk91IpOVh
         4nY6iul4iQGI+Y/8CUPzKbyVvmcnQVYH7QGO2bp19NvkHJNcaEOAHUQyFAX5AUHlaAs5
         Ijtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TrBnDb2FJ49I4pL+YCQedT7dGDzKX60xI9TPFpIlDDs=;
        b=bXlwjMO1/qf2o/evW1zPJm5C3nbfa9tUYD4PABUHlIMYELlB5+dVqU5quu2sjbEMj4
         IHR29PDg7PgFp5+bKJ+zneMWHGimHQfFQf+7wE5y9EwwArOfhNwGxRJ+J3UQVdrpd8w6
         M2yIEWM417RFz0WEkTPijNi4+74ULt1oVEbkQXPeXbnzFlcR9e9b5INZXdNMc3X3OTD5
         23x2T3y+hNRZssfu5AVwsZrLw0b1KkIVlK2agptlsBfo01UUGFXifPvwp91U53mETukD
         YJ0RPxcgSzSW/rIJgEgjCsa/vXCSkpC2ineRkdt7ad+FOdObq922EknxY+/knCcRrxD/
         K2bw==
X-Gm-Message-State: AOAM530S2+rIQlK4xE2ceLdggy1SqUNq0P9Q2NBwXijscL+wfSHzAu7z
	EgofFZifijcZnwEZn6V0p58=
X-Google-Smtp-Source: ABdhPJyKzfpfC6J6FjIiybAMKpg1TFdnQiSDjkI20UI5RUy97NbfzJhTiMl/MicEqBCcmPoA7hmt5g==
X-Received: by 2002:a17:90a:ac2:: with SMTP id r2mr5496139pje.71.1601410084317;
        Tue, 29 Sep 2020 13:08:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls47319plb.1.gmail; Tue, 29 Sep
 2020 13:08:03 -0700 (PDT)
X-Received: by 2002:a17:902:bd48:b029:d2:8ce7:2d4c with SMTP id b8-20020a170902bd48b02900d28ce72d4cmr6308608plx.42.1601410083744;
        Tue, 29 Sep 2020 13:08:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601410083; cv=none;
        d=google.com; s=arc-20160816;
        b=xP1wpEEqsLTlbIXLZZcOwJzUYzIdNvvLGUHYEgQS90LAtAa5SfuFG/pt8LhKPlXnSR
         ofjev07+rGv2fwXzY4ZUThZg4/BSDSVQqgKp14JYH7LeBevx3SKNuI+bwgopubt+SQMS
         vcW7kcHcfqFQ8oPaAfEiAGITGgOSuBbJF3ew6gIgTcA0sYGjC65azL2zmx8u9vNhxP7i
         CeR1OrOJbF2NUHQG2EqPOhIZAXw2CFCRRJEStt300CaaSBXl58m5FBJHCwrQo9iIKsNr
         tqzmOqWtb2Bi+VUE+osVEIKyp+TIQkaPw2BqL65sV2sefM4K3KJebS8QVsQhLiL5ytiy
         XiwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=w5yusrSGveqthrL87NLW61j5LhSouuB+VXSBKe+YvgY=;
        b=AN0FV9gwodiQIG6aOSGkXQlAn6IU7jxwaTpy9JGh9JO4rJ5BA0wQJCy52h+hC8tZGj
         nzzENDazuevJV9KoxUhJlduOo4+YVQ7kTtCi9DBTyTAGIzFvfTOMkWPQPm8t+2UclPCn
         XUEmsgdfYnWcP7CZjxpzXJRP2/Lljrz+fVAsgbq0vL7gvCL1rey8Efk5XhdCzKBjlL8o
         5QhiubhPRHDohlC9aq5dH5ucEAp2XILoq+Ti0E8L7K+T6Ln1Ox3Hw4ngn75HTsxuxqpA
         y+aktPHgyGOMh30S1eENsSjEgn1L/CAx2V91Ij/Mu4YyevqyOWO/in8fSuD4abzhqMFY
         uX7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=stCxwfWf;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id n8si492365pfd.4.2020.09.29.13.08.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 13:08:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id cv8so2947079qvb.12
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 13:08:03 -0700 (PDT)
X-Received: by 2002:ad4:5653:: with SMTP id bl19mr5770754qvb.7.1601410083317;
        Tue, 29 Sep 2020 13:08:03 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y30sm6932829qth.7.2020.09.29.13.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 13:08:02 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 29 Sep 2020 16:08:01 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-sparse@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler.h: avoid escaped section names
Message-ID: <20200929200801.GA2668747@rani.riverdale.lan>
References: <20200929194318.548707-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929194318.548707-1-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=stCxwfWf;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
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

On Tue, Sep 29, 2020 at 12:43:18PM -0700, Nick Desaulniers wrote:
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
> 
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
> 
> In this case, since __section unconditionally uses the stringification
> operator, we actually want the more verbose
> __attribute__((__section__())).
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/linux/compiler.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 92ef163a7479..ac45f6d40d39 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>  	extern typeof(sym) sym;					\
>  	static const unsigned long __kentry_##sym		\
>  	__used							\
> -	__section("___kentry" "+" #sym )			\
> +	__attribute__((__section__("___kentry+" #sym)))		\
>  	= (unsigned long)&sym;
>  #endif
>  
> -- 
> 2.28.0.709.gb0816b6eb0-goog
> 

There was this previous mini-thread:
https://lore.kernel.org/lkml/20200629205448.GA1474367@rani.riverdale.lan/
and this older one:
https://lore.kernel.org/lkml/20190904181740.GA19688@gmail.com/

Just for my own curiosity: how does KENTRY actually get used? grep
doesn't show any hits, and the thread from 2019 was actually going to
drop it if I read it right, and also just remove stringification from
the __section macro.

There are still other instances that need to be fixed, right?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929200801.GA2668747%40rani.riverdale.lan.
