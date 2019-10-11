Return-Path: <clang-built-linux+bncBC53VREB5EHBBWXHQHWQKGQEXA4OYRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE3ED3F64
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 14:21:50 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id 19sf4653065oii.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 05:21:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570796509; cv=pass;
        d=google.com; s=arc-20160816;
        b=We/NAK3u+wsMBj+c6niVkVE/bR1uARfiGdarBvzMu3WnFgRoX4oKe6+aaipF0Fr6tb
         JiVQC5WyqRU8K/B5W4GYUS/s4JwWYoQA4JoCnZhzfTskVkycPybxTeJ1hiqi5eOOnxXp
         Vzg2qozY7vCX3he6AagWVzMbyfYF1fbf7YFOGkWBr1eDc0wFyhQP9RnnOnBA1J81wjiq
         ut+M/okqZ+KGAY9OB3DV7QAID8VONAHytm11emwrgn4LHaYNFIXXY5GFBcVJxGlmn7LC
         gyLfDTZflGjZdJWyEFEpYeEYAv/2SJRAB5YkM+tuKMYgWQwvS4PUO0tLdaMwOdOjd52q
         b9cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nWSLrA0pdbjWXAQpmGzQZk0c5Q7AYOI1zpupIAyuon8=;
        b=uoc5TnUS1p5KdkyATkDm5Y7wHof23KHgOCxrIiCTAEU4ZYmo5+yuBv+Gs0GTR3FK6v
         yxAXsNC+UBxCDxgjYLPZ9Y5l1esNcrVQ6AqZ/tlwayuMqxtp0OnuCjNYyFGK++W5v37M
         MwpyKqP+WPJYbyw07QfGJKcb7tLmjHSlephOhgFXzuXQWi2oq1vEnNmE6fMMp3RA9g6+
         BZ6wW1D2a7xCREuk2NgAQ4j+AIFOSE/vikipzB2XITgqrduqj/Pg7MJ6ZgLaWSbg1EIZ
         b/2oRwJ/m4pC7fTfmlMvga+PuKseT0nB2EoB9ZmOlDFCBzuJHYKtpx5WpNH8F8GjpQuY
         TCIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nhorman@tuxdriver.com designates 2001:470:7:9c9::2 as permitted sender) smtp.mailfrom=nhorman@tuxdriver.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nWSLrA0pdbjWXAQpmGzQZk0c5Q7AYOI1zpupIAyuon8=;
        b=GFdQxVShpaB1jf1iM93cYExjaZLKhqC1Ij0UzkJZZQxWFRfE0bCPRN7WVFePEr6Pcn
         enM+KGgARH4KaEkpHSI6Jwktn7PvoNWom8RPt1xQfm5uv8mabQJN+0l4tVc6zN5KoRn/
         3vyHTxaIbRy2Ue7MFPgEB2/eMnBmZBe1jsaoBPYVkE++9M+sqODbi2gGFiMsfUmRWkoN
         ahFGrn3GAFvFfnZI5MgX/MmCQGyQ8Xib3wTLoaj0gbxvkDjMuxmcX2CNmwcB/4YZ18QK
         /gwRb6DJf7jDrkegVbeQxIWyM0pOht2GkNIT5AuBrq9RFxlhdk5mReUgBf+hDoVHBqj5
         75ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nWSLrA0pdbjWXAQpmGzQZk0c5Q7AYOI1zpupIAyuon8=;
        b=GMEIojZuvXhm8Q9x5LDQOGrxgVeHK/qEqHxMeBKbxb8bM9vxB9u+qvr+5ZG1ZW+YYX
         RJdPpW/wnkX2jSuekvxCeClXVByxfazBSx/6Q328hmOmq6CRnnC3EH3uJ62pIYdiGzjM
         gRbZPUaPQB5C3+fC0wpdI0NopaJEMttRihMMqmytE8HiSuyM/FVuzql6bLwGSKX9pbrI
         hJZSfCRO0wGDlNwlYvUl+tNfVpOfiSdirTmI5YmlsSkt7cLBB3OXyvOuhgIRw5YjM5wE
         CoutqV1D3wpFnZ7H36qqQG8twdxGseJHo1yvEF6ehkgCbe46Pk6rt5NpFrtG7PD54Drr
         owOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWkkHEJTpEd0rV672W31/OS2mYhHaHwUro8NyhPA4jxs3b/yaOW
	6ybvrnR7AvbG7x09QeJO09s=
X-Google-Smtp-Source: APXvYqwvxt92ib/rhyj9lOU4hfS4g+WdRoEyxh8M3BZWSasccmF9995ynamMYOLl5ORu/KHf7E5GBQ==
X-Received: by 2002:aca:3e03:: with SMTP id l3mr12226932oia.65.1570796508853;
        Fri, 11 Oct 2019 05:21:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4f98:: with SMTP id g24ls1365487oiy.12.gmail; Fri, 11
 Oct 2019 05:21:46 -0700 (PDT)
X-Received: by 2002:aca:d706:: with SMTP id o6mr12328522oig.57.1570796506490;
        Fri, 11 Oct 2019 05:21:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570796506; cv=none;
        d=google.com; s=arc-20160816;
        b=kI1pNqFDyIpl+MXYYywY7imyBmZavAx6b1FjpSlaAO8UjAI2r6b+K82F7ui2NDOtGM
         tj0/xOfoVojCerkY9R7A7Bx9OvIN2di8xAXUYTMN7v9HPpTxQqMEHmxZy0vFz98x/6XQ
         OGfW2oqyA+4kabI1JThy81VqY68DE/IV62sukqjHAmHwJX7dROyB0LEzFwVQ1gW5FH5D
         RAdtpB7MCAu4kMg4r+RfKDuLXADoyRGYwa0+CdDR9TW9/ymu8lRhtAIC5lvgck+rNt0I
         hsNE4CTVwlQWAldayR0zv9kHebgq5ed4o/pNZ6IYxvtirZjHo4uyeUcJfWUbJf7xc4bK
         f+5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=h9prKIfwhl6BgpPw42Ppw6x1dSst/WlwJtO+uY0Qleo=;
        b=Y4x8fHrMC+TSXnMkIeepl2/fjUegkriXz+O7TLNcUC2ZrATchOzbFO5O4trfUdlUQs
         Mx6E+/8/Hj1Q6b0Xl752IHcSpwHFd28fXvwXrWxXXpcoIO9ensJQP/78k5zlRWkwap9N
         m0brq6aD2qL9YMwVOwIYxTVYD25GznsIIYEQa9zxn904kPB5LWIi3oPjYhJ+RGMCYeet
         HZgW657akM7TL8Ua5bqhjCNwzQGxWGw1fSYeGE905zqMBs0b6Mrokgt1w93TU7dERYxp
         1VYrO+d6nP27Yq4zGjRnkVPjPFRIOCBHYCpJNrml9eMa7jPEhYJ3575fb5ZWZk8ELiqD
         cqgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nhorman@tuxdriver.com designates 2001:470:7:9c9::2 as permitted sender) smtp.mailfrom=nhorman@tuxdriver.com
Received: from smtp.tuxdriver.com (tunnel92311-pt.tunnel.tserv13.ash1.ipv6.he.net. [2001:470:7:9c9::2])
        by gmr-mx.google.com with ESMTPS id a22si85309otf.3.2019.10.11.05.21.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Oct 2019 05:21:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhorman@tuxdriver.com designates 2001:470:7:9c9::2 as permitted sender) client-ip=2001:470:7:9c9::2;
Received: from cpe-2606-a000-111b-43ee-0-0-0-115f.dyn6.twc.com ([2606:a000:111b:43ee::115f] helo=localhost)
	by smtp.tuxdriver.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.63)
	(envelope-from <nhorman@tuxdriver.com>)
	id 1iItuT-0005XC-6F; Fri, 11 Oct 2019 08:20:47 -0400
Date: Fri, 11 Oct 2019 08:20:37 -0400
From: Neil Horman <nhorman@tuxdriver.com>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Vlad Yasevich <vyasevich@gmail.com>,
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>, x86@kernel.org,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux@googlegroups.com, linux-sctp@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH 1/4] net: sctp: Rename fallthrough label to unhandled
Message-ID: <20191011122037.GA16269@hmswarspite.think-freely.org>
References: <cover.1570292505.git.joe@perches.com>
 <2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2e0111756153d81d77248bc8356bac78925923dc.1570292505.git.joe@perches.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Score: -2.9 (--)
X-Spam-Status: No
X-Original-Sender: nhorman@tuxdriver.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nhorman@tuxdriver.com designates 2001:470:7:9c9::2 as
 permitted sender) smtp.mailfrom=nhorman@tuxdriver.com
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

On Sat, Oct 05, 2019 at 09:46:41AM -0700, Joe Perches wrote:
> fallthrough may become a pseudo reserved keyword so this only use of
> fallthrough is better renamed to allow it.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  net/sctp/sm_make_chunk.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/net/sctp/sm_make_chunk.c b/net/sctp/sm_make_chunk.c
> index e41ed2e0ae7d..48d63956a68c 100644
> --- a/net/sctp/sm_make_chunk.c
> +++ b/net/sctp/sm_make_chunk.c
> @@ -2155,7 +2155,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  	case SCTP_PARAM_SET_PRIMARY:
>  		if (ep->asconf_enable)
>  			break;
> -		goto fallthrough;
> +		goto unhandled;
>  
>  	case SCTP_PARAM_HOST_NAME_ADDRESS:
>  		/* Tell the peer, we won't support this param.  */
> @@ -2166,11 +2166,11 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  	case SCTP_PARAM_FWD_TSN_SUPPORT:
>  		if (ep->prsctp_enable)
>  			break;
> -		goto fallthrough;
> +		goto unhandled;
>  
>  	case SCTP_PARAM_RANDOM:
>  		if (!ep->auth_enable)
> -			goto fallthrough;
> +			goto unhandled;
>  
>  		/* SCTP-AUTH: Secion 6.1
>  		 * If the random number is not 32 byte long the association
> @@ -2187,7 +2187,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  
>  	case SCTP_PARAM_CHUNKS:
>  		if (!ep->auth_enable)
> -			goto fallthrough;
> +			goto unhandled;
>  
>  		/* SCTP-AUTH: Section 3.2
>  		 * The CHUNKS parameter MUST be included once in the INIT or
> @@ -2203,7 +2203,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  
>  	case SCTP_PARAM_HMAC_ALGO:
>  		if (!ep->auth_enable)
> -			goto fallthrough;
> +			goto unhandled;
>  
>  		hmacs = (struct sctp_hmac_algo_param *)param.p;
>  		n_elt = (ntohs(param.p->length) -
> @@ -2226,7 +2226,7 @@ static enum sctp_ierror sctp_verify_param(struct net *net,
>  			retval = SCTP_IERROR_ABORT;
>  		}
>  		break;
> -fallthrough:
> +unhandled:
>  	default:
>  		pr_debug("%s: unrecognized param:%d for chunk:%d\n",
>  			 __func__, ntohs(param.p->type), cid);
> -- 
> 2.15.0
> 
> 
I'm still not a fan of the pseudo keyword fallthrough, but I don't have
a problem in renaming the label, so

Acked-by: Neil Horman <nhorman@tuxdriver.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011122037.GA16269%40hmswarspite.think-freely.org.
