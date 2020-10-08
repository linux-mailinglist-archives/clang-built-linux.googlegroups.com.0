Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBMGO7L5QKGQEP7M33HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D56286E3E
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Oct 2020 07:44:17 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id p6sf2040630ooo.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 22:44:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602135857; cv=pass;
        d=google.com; s=arc-20160816;
        b=qclm9cdbQIekDJqPW6dRXfok8J+xbGJjEv7cCYGo5I8XGCbxmmOUgiuaCXzeCLwpF9
         IFiVei8hsZ1HzTpNdJUg91DuLt1QIjTD/xwX6zRAWI9zjX93XDPFUAC1SuboTGnfOENj
         8C6dVmzy2jL85/2GJthrrdrrq52wYKYOAU8e11YPMnG858V+BP04jcHsiiPAjZgKMMVp
         +KPRaLdpIuw8QG6TojJrHUV+uO0S0tSTHTVi0sX/6ujYfUr8l8LEQfd5+KjcU8XbId2P
         C9601jHsn1iKlbFwi1za3ne7B3saK5jex+l4XMjCN9/MzbCRcjCR0gMj7bKOtVPNiT6N
         b2Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DXAqQEZGTAIDQ/O3DkdDTul8hR6fbT8W9cNCqjTyh88=;
        b=lppa8zz7hN3P74XMV0E+tC4XfG8ACbKIcN3NFlZnl9VvPoP5d/N6wItkt6isJhXZxv
         u1zm4OdkdVrAbtycNI4cvFBrzsI9yxV7+nrNKErHUynBF8L0Y4TO7oNWhWDiMa1J86xX
         /KqkJw7B8ObTeQX2pLD2L1GtAkmG8m85uE31/vc1aeD4BYLwQfI5Pmpe8PFC090hkw5v
         bF9LL0eUUw6MK+UKIzuHqPkoZ3nLNpj/KjvnT83lt8EjFdBOZUEqfSQY+BXQs4z1EYJM
         XNYmHrPsCt5Kg/5Dj2/NRy2//JIETrzO+gSKcw8sLRgpZF2W/RFm4Xpg832ouSDcJbBE
         /kXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DXAqQEZGTAIDQ/O3DkdDTul8hR6fbT8W9cNCqjTyh88=;
        b=ITvO1edW1JRG6kM5x9YxcmzYpZEE9fQNesOrTrB86d83/lw7wcnKxQdWi+6gqPwr6o
         uIpnPtjdtrP8PJbE0FpGroZfm9ywcq0H4ROzwBs1nZyZVeQWe8YLcJXgLfwRUlwbi8Ev
         vGSCVp8iemH+vZEu4DAg50YxW9JMU2tosKq0Voiliik/uOET5l6IUfLYCt9azIfS3YIA
         H9wVlecK1aGkFNdspP9auyIAXNBVZGvmehvGidpDLX2RlmVFmQ5+6Q/E2EkJtnyuUmIH
         kfVvOUKTYXJ+JbQYhQA7q9kpdLPOuEkeS7b3yy8mh3FRdu+AMXVILn5X6xGvWFkYzRa3
         IflA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DXAqQEZGTAIDQ/O3DkdDTul8hR6fbT8W9cNCqjTyh88=;
        b=m+W93D92LYQbac+9ieSBtD850qHkJv6G1wBQ4SQQKZpkwKyEZbcyXyjRGY8R74iUAn
         DxF8rPQmcJACjHrqe6lKfrvMGVfND+Iyd9e+ApdY/dNX0pQhVs+h+NA3bnsYVvWPQF6s
         nFAR0HVdnNEoWAF080rfchMo8sVwPV0V0INPLpQKr/4GBugRxDuYb53iPd5p6/q7D6M3
         gcgcErMbLAYCqpu+ItVunO9IFlT1gFUdYr26dXs1R13Lq7UUL7+Uw++ZUbZ8PLT5nz++
         YeHmXsKa0Slm590FJDH8qb1PfiXHuxSRAXbrnpJczPxuZPXHLLyBWt4h/HBY4tEuXRdm
         tgsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s1hFOgbszeJ/vVseN8MMhOUOiiYT+HRE14+Cu+5N/tOWNoV1X
	z6ssZp9kRrrXHVKQu8Mzo7w=
X-Google-Smtp-Source: ABdhPJzPDGN1w3vF4lL9aEZKUn75wnQVv1RuCc7iM2gFr3aewoEXCulgvOMdXAIFwlQ0cACDo4+2YQ==
X-Received: by 2002:aca:b4c4:: with SMTP id d187mr4282128oif.21.1602135856822;
        Wed, 07 Oct 2020 22:44:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls1012872otg.3.gmail; Wed,
 07 Oct 2020 22:44:16 -0700 (PDT)
X-Received: by 2002:a9d:6c4f:: with SMTP id g15mr4071781otq.277.1602135856441;
        Wed, 07 Oct 2020 22:44:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602135856; cv=none;
        d=google.com; s=arc-20160816;
        b=ovBtgs6tmeYIvLI1GJH+9OkVILwCAL87jjfTeZqzTNE5fZBmK7Z1dwEUzCAOxflLjv
         ZTxB3SfELAtot+oLjYTHz0mg9K4OcHIUaN/kHiy+Ve7bEYUs+b8UM+6PL8BmylmOU3QI
         /kyr/bzmmV5tGB2e54PT1S/iweeg3pchhTAoZKWjlXQLy6M1dg53RkvH6biwA6g+wnk0
         Q4ulXlJ7F8kteNQXvmyHL/GBhHu1VMUxN1a4GtBhuMu/5XYapZwC7P4v0s2V0J9QYKXw
         PObt7LjeL3rbO1/YPhowBE4uHQkGI2BHMKLkOUQO80/49QtpT6PahX+/FH4uvmSjAIV0
         Ue6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=oziTb0dDjrnFgPMIbxnp7v2FZ8w/yYt5LogNr5CrM6I=;
        b=JALW3ZhDWeeM6n+TysOBvIugS+9nP25AjP8Cx5BZvk/Wy9yVPmj7JHdlHdmbkjAvnJ
         bUmd+8WDnEq0Rh0wXqHmM6XhOZQH3vyxXvPdnrWdDTrdQZS6gsCCltK7K8Wk2dbGxhIW
         BocEbSr7HH1H7AxSbuGrGoiNLqZObMnFewOPul9ct+ShEjaLEQQp4Ev0k9XjCfenU4Uq
         kk8r0jzPS68BxIa1oEukPSrF2k/hFwJTQqgMfLjRHCSSDdLMTxCZNBYrP/Bp2Z5s7R0h
         XgCoTqXQr3Z1nXoh1i5pjZ/gUzWXFfF09HjZTZZJMZUuZPXCHrWqNHN4DH9m57ChYDI8
         fASw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id n7si292237oij.0.2020.10.07.22.44.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 22:44:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1kQOih-0006Th-Oo; Thu, 08 Oct 2020 16:44:04 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Thu, 08 Oct 2020 16:44:04 +1100
Date: Thu, 8 Oct 2020 16:44:04 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Ard Biesheuvel <ardb@kernel.org>,
	Douglas Anderson <dianders@chromium.org>,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: xor - Remove unused variable count in
 do_xor_speed
Message-ID: <20201008054403.GD9733@gondor.apana.org.au>
References: <20201006195848.707504-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201006195848.707504-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Tue, Oct 06, 2020 at 12:58:48PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> crypto/xor.c:101:4: warning: variable 'count' is uninitialized when used
> here [-Wuninitialized]
>                         count++;
>                         ^~~~~
> crypto/xor.c:86:17: note: initialize the variable 'count' to silence
> this warning
>         int i, j, count;
>                        ^
>                         = 0
> 1 warning generated.
> 
> After the refactoring to use ktime that happened in this function, count
> is only assigned, never read. Just remove the variable to get rid of the
> warning.
> 
> Fixes: c055e3eae0f1 ("crypto: xor - use ktime for template benchmarking")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1171
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  crypto/xor.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201008054403.GD9733%40gondor.apana.org.au.
