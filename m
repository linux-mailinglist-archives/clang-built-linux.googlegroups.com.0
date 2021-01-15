Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBWMTRCAAMGQEIKRO5RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA802F87B0
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:32:11 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id e137sf8296270ybf.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:32:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610746330; cv=pass;
        d=google.com; s=arc-20160816;
        b=KctYum057jlb4K/sfZ1IkYZjQV6V/QPzLZ+t8jCJ/WCFwXShyuZIv/lV/+maPpnsT1
         tBJosGOM7muSU5XCfXBmkrlM2atMFK06wrwgFs7w1c7UWppB7kHLcCiOeNv9exswkGjH
         wRjgxdEZEXpqsGC4GjQ+8x0KOTEUjedchHv5u5OGtUuM9zohnjAYdGXC6uCpIw7AB5jf
         p4R9Z7+RVTf2ejYubinA4drukOyJMEYS0YXLwSHeYhP4lhQ2ZXqDQBrzblKQjd+2134i
         cjWGCG10+dMSucO6x4xZH/9VHsTCAEz7xhpWjgRrR1Pkr1uzNyH8fd4t8o7iKPtSyQN3
         e5+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=jR9dUoBa9RveRnfNpvRD2T0BUA3hRmcwO2pjfL8xkjQ=;
        b=pPaafpq+9jKBUsNnH01US83KvTv+n5FB9wcPrh5N/LcVy4t5W0pQ8R1xHASyXnA2Tn
         ZLaQODkKF+NN46QDkJZUQ8LcJZAvIPWH+3BhDg5AqZOy1oktrXaeKoUJ0L5ptons6cRg
         ZfHed1AzjWTOUPjmLP4UdkQ0zOMIZ5RKEPXEJfi6+Su7hz9ppd0/Oc2E6kQ5CAsgCVc5
         xuqw+DTVxAuYsyk7q+oSSlVCTCMm9EN/UOab1eBVYXS1VZTxz0Dq89giXXc9QBFjUnve
         MvnufiPA/NqyUvm/ezsmgIY9pAwuWYv+CTg0p1mrlhAXu0Fj+XxB7Z5tZ11Y1R5hUcrM
         W1Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=sOO9qAS9;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.144.21 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jR9dUoBa9RveRnfNpvRD2T0BUA3hRmcwO2pjfL8xkjQ=;
        b=brQz0rYd2lggxZLDsGkqWFQgW5CcT+rANn1IC0rijd9NvKynrG6D000FK13aohW7fm
         dXOgXBlu+kObkCUd9VQ1xho0qZzJrojv6RzauMy0ADy8ztyIzNrhBbiJLGntJULf/ls4
         dLAKtB4lXDQtNRKjbvx2djAsLpeezaf5ANIN209DfWkASv7nqRV6wxmYF95OoKCh4pEB
         RklhFPkionPGSkmBVRkT4fomyYt9H8TlKmOctQ7QexyQOqcrUkz9tBGp0WpNZGy3br01
         ZVIlJah9f/qw1pBL8PuJTyoqkqsEkwoiHi39+vu0XD4+2l394oNsW/XNjk/0MsHdS/or
         0/HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jR9dUoBa9RveRnfNpvRD2T0BUA3hRmcwO2pjfL8xkjQ=;
        b=VxGybw7W9gKUh5wWHkvZWAF70DmoiEwUW6C5TcSr4FaSvuw/kLBHaUWj+yRzHxyqlD
         9Bcr/9S7a4P3J172mT96QnjAU9tTogdvOpfWtKp0J5XxMFp1wYOcVUhK+sMcIi/qefFr
         ttS2x3KnxLUJbEP26BiiJiHNPsRtfLdRuNcnHRMuTsdx0lMcUboxyI3CgFnlwE9bw8O7
         VKtQBrLXmu3RXJuNnGV9fE54FlHeb/XjsAasPZ4mJ7TkganEUx+gpHHnlPLV136uyu2m
         UgecEYIAGJY072CrhUjBXgpnVdm5KMHgLTo0OjTeW+aVbWjG9gsnWl2C+l8lCB0e7EXC
         MtFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533G2unKbmVNfED3lpggiar6dJ3JDOaiv4QMnLMZi+V9IAlEE+Ya
	oZWLVnE1Gt+95DaxrfvArXo=
X-Google-Smtp-Source: ABdhPJzGKXINrtBKEMfan2UnRvqdM90kkFdF+dyMIlv/wnFBKxwtWOXJpSPceAR62zUcrBlZfkp6XA==
X-Received: by 2002:a25:bd83:: with SMTP id f3mr19873040ybh.240.1610746330110;
        Fri, 15 Jan 2021 13:32:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b5cb:: with SMTP id d11ls5035179ybg.5.gmail; Fri, 15 Jan
 2021 13:32:09 -0800 (PST)
X-Received: by 2002:a25:6ed7:: with SMTP id j206mr20752773ybc.312.1610746329753;
        Fri, 15 Jan 2021 13:32:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610746329; cv=none;
        d=google.com; s=arc-20160816;
        b=zdZ0W4ULVp1NNX2OAicre2iMDZCjJIyt2RdzistgvRoekB/FmxX0sSWXb6xWtn1ggv
         gXCntuvwzo3FIFeno7Tp4Zw6VWCJzEKlGEfy+bqgliuovIeaQDVz85CO9jLZJqp9abhT
         OH9LapIuOiK6lFllBZcPSwFt/WVmlpArX5NuSZ99TEk+jhOtwvR62V+/8AnhrOIkk/uq
         XF4Vw2qaXuJVHsBrZczNVsL+vIxSvIClxQhT7K5uflxe1OAeQw/UmcdSJpYYHISRCHma
         8RUyiGfdeLLUmNLcTDLGeGkMEcQgct/suvo+M8kXnssMjNe/mai3Ne9PTTkUqBTRUH+D
         +QYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=OREiDURaFZ8nXv9TUdcbSNA+rhUalW0dQydGvIv+fJU=;
        b=HmmKCpgIrXsXCVV7Uuweuk8U9B9cfzsSwLZUwUf5b2+xTudSgCjjnieTZ4mVzX9WLU
         D8ly5QbTdFCv9v9vRtb01kVpqbSvvZAiYF/i9rbD0I78TdNjw1NH9QQbVJOzoYq41/FW
         OvJxU3ShbZU1F2PvjZhWDXyX0/0LD6IyR81S3OTjqTkCGEFVeQ65alhlJOs8KuXxSimH
         TQlByN11Ck7Q90uM7NYjLKmgb58uSMz9d3fytCqh1wizghwp4bjAfPhx8lMa68twKbVC
         RzRk/aQ2qmeCSeUxZ9fMYk8rL1Sh5AFmKXQbLK6HAPswLZAnlm8qp82mW0rhYPHY7yaT
         jIfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=sOO9qAS9;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.144.21 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com. [192.185.144.21])
        by gmr-mx.google.com with ESMTPS id s187si898257ybc.2.2021.01.15.13.32.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:32:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.144.21 as permitted sender) client-ip=192.185.144.21;
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
	by gateway30.websitewelcome.com (Postfix) with ESMTP id 249209FA9
	for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 15:32:09 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 0WhVlO5WGSrGM0WhVlCUuy; Fri, 15 Jan 2021 15:32:09 -0600
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:48172 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1l0WhU-00319h-Rj; Fri, 15 Jan 2021 15:32:08 -0600
Subject: Re: Fwd: [PATCH 3/9] ACPICA: ACPICA: fix -Wfallthrough
To: Nick Desaulniers <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210115184826.2250-1-erik.kaneda@intel.com>
 <20210115184826.2250-4-erik.kaneda@intel.com>
 <CAKwvOd=16U7n=d3AoVq6X=kVimHVj3LcuMUZHzn-99f_WmKPkw@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <8c447469-0cea-0d30-14cd-7108314fbd34@embeddedor.com>
Date: Fri, 15 Jan 2021 15:32:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=16U7n=d3AoVq6X=kVimHVj3LcuMUZHzn-99f_WmKPkw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1l0WhU-00319h-Rj
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:48172
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=sOO9qAS9;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.144.21 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 1/15/21 14:39, Nick Desaulniers wrote:

> +/* GCC did not support __has_attribute until 5.1. */
> +
> +#ifndef __has_attribute
> +#define __has_attribute(x) 0
> +#endif
> +
> +/*
> + * Explictly mark intentional explicit fallthrough to silence
> + * -Wimplicit-fallthrough in GCC 7.1+.
> + */
> +
> +#if __has_attribute(__fallthrough__)
> +#define ACPI_FALLTHROUGH __attribute__((__fallthrough__))

Why don't we define "fallthrough" here as in include/linux/compiler_attributes.h:

207 #if __has_attribute(__fallthrough__)
208 # define fallthrough                    __attribute__((__fallthrough__))

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8c447469-0cea-0d30-14cd-7108314fbd34%40embeddedor.com.
