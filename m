Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO55577QKGQEOHPBY6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 074972F0C1F
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 06:14:37 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id w2sf3871262oia.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 21:14:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610342075; cv=pass;
        d=google.com; s=arc-20160816;
        b=pkjK6siVsu5eZX08zAahjoNPs89x2U5KclhLJjmPXk+2LSJ7ltp6cer4gmszXU+i3r
         KnBCAzpDI1pM0/YLkTdc7/K58x9rl5B6iz1xIQ1s5I5pRSzEMioiK3YOTkRjiDD05FQQ
         /y+v/E2pPtETh1OSuzyxZxp3FTKMpvo7BrEQ1i8bfoa3NSqGZ5fmbQBKKA70QBMwR0jX
         1R1kzBDw2ZZzsMll1lhhBZmkVGeQUCnq6G9+aMpchUiPpNfgOntsITQ3mWO/PdlMYlq+
         aQTDQSa2e4DAf29xehS21QZdOYUafxmrHTBW3pu3LZAktH/cHE1S0N59gjd3tB2sr25g
         wmvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=aTEHOAnOXTLyhjlLW9cV0g6KryA0DYCKSFk2uAu5o2s=;
        b=enY84faCE5w8Rbu4SxuzfSZkXpAZPMwCJYFBmzvrUdjqSVTfv1yK1ULkmrPx5rhMYN
         7NV/RclmbpIsiv4lmSRZwkUFmuJY4525BZcuNJtuv+kMxMR8Xb4vVgWNVJRjeX0XR1xC
         6Mfa0eQqpiVqWp5cqd0J1O80AtZrGbvSC8ZFhQzPgRq0hy3XvA7LhaJhsQyql3tg0+El
         hAzimYxG9RPo5ItlpCMeoZZyFPbywJCvj9Rhgm2CMO0pPoXqjbBzTrSHb70MQQfV++Hn
         WexumI4QpeUqyY6U55Z4RGwXxj+gQvDcnRZdv6PXR9eMKcAqlxNLKjonKN9f8W7gSuMv
         DfCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0q755Sy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aTEHOAnOXTLyhjlLW9cV0g6KryA0DYCKSFk2uAu5o2s=;
        b=jBUiZzSIkJU9zXC/VP3fFWupzKiEjz9Nhu2FtDTceoLgd+nuBnuh9lqj+DeYQS1Hnw
         dxtBJuIue2Kgj14XvRRjRmOoKnv7GqiqxRAVHt3dGkYgBq7enIBzzDw4QXIso0A/n6vo
         YitoKOcJQDt6WJT8BJ++Qm62D5/PUgTdI8wMjHEMwOyCXytL+vaIbVrLIiUDoZC7iPZ1
         FkV2l4UXYFYnvnC6EQhv0p1DcUUhuZ7CscdChNSciCc7YTl2V+eY2HVHp6+VPZBceFcQ
         iakuWk3Fps41n1ZKwO9X/5awh5MpKkDGeK0dw1hEVMhZSAPryex4P/m1r8YxEHwb/2zG
         2L3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aTEHOAnOXTLyhjlLW9cV0g6KryA0DYCKSFk2uAu5o2s=;
        b=QvY3M9vT7LvsSLrNrGfwHnTVj0jYxIQeCmf7UyKOBs0nLisl2lIoGiScGZ4iw4u16r
         m3Td+yYmtCv92NV8xtLfQd3WXigJ00hZEnktPSXibV2ySl6WdqRxqMkCQ83Z+LhZoojQ
         NixIdddwZLpBNiCezQcw3WUKY1XVK+qHufROw1IOm5Jzj2x65dVVrXZcaGO5bSJ9bCCR
         LWTZZyZ/6/DR773XOpoP7sDROO3PSMHoVhKg3v9HnIB4doBRC3hjp8dxGbC5pmp3fqiX
         jg0Wov9CDGn0JNDp6lwVu2TFglZfEVTslZ3ysp8dq/IdUtjMZz/3y74U6zlBBj+2eBX0
         wC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aTEHOAnOXTLyhjlLW9cV0g6KryA0DYCKSFk2uAu5o2s=;
        b=LR+C0nlpJxuSq6arbkEdjp3Ry+phJG4V+eM+L6tJ+r0dVICT67idKiHeoSBV1IIczg
         iM46n/OT5Ynj8l8hoiuwrDZi30XdBrL1GP0rwaIHOkkbWtZk8dw0sFukUD8oQDPSrpEO
         IWN97m3nBzXFYqNgPkU2ioWWo/7hWMNM57G+IYCOcqQGumzLxH5cQPa21ZZyaPWIkVU4
         +XNqjDZtq4EGfB33BWdlFh9OlpYTjDdYTIPN7B939u3s0+S8iX6MLxKsyz7BCPzHkP8O
         FockOxhs4NSp2hBGJ3LkZv9my6pAHmQm/OzDkDIU/OWlLqrr7rhCQZpYp+Al3zfpsvkt
         1vqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vq1AJxTygBWu8p4vql8CL0pDe7Hs//lpYSjCRNgJDwMV0fM1f
	HV6dNw5vCnRqvQiRp+cuQNc=
X-Google-Smtp-Source: ABdhPJx7lLPzFyC+segXPNuxcUvZi/emmnnD+loIBaPLSXk4bVfY2KQNmqyf5bFGMpyijrEvrkz7Mw==
X-Received: by 2002:a4a:ddd2:: with SMTP id i18mr10959496oov.10.1610342075568;
        Sun, 10 Jan 2021 21:14:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls4487888oif.11.gmail; Sun, 10
 Jan 2021 21:14:35 -0800 (PST)
X-Received: by 2002:aca:b943:: with SMTP id j64mr9498692oif.71.1610342075163;
        Sun, 10 Jan 2021 21:14:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610342075; cv=none;
        d=google.com; s=arc-20160816;
        b=nofaQSx4TrKetqJ7LrajV7DbtDEzEmKbkISj8ZQlNTYHJ5jWAlpn8YQuQAIJnQ2b87
         BuaEF5kd/CyEZXz7UuEBEys1L2a8ChKhzoeMITJOaVKY4KHImzdzYih1MIHxNOaS40nP
         w5IPhCqy5bZkz1sjenO4uhC8UZKc4Nc9GYRjXBIdJ83p/nl+5oDv7VlYosOhJu4MvbJy
         rKT43o1LyAPDy98OZ+OCuj5ZtfRneR5ki/911123WPVdzA51bHYKBScpmwM2XNMERluf
         cE1saBFmTJQCd1ZpOn2wdWYhpYNExJta5/b7kahBVYYlKwFKYJ7c6dqNv4f4d70s+PX4
         Frgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y6lvCdEIpkiMVJxjJGOjKpTSuStrIqmoYLqlHURBnTc=;
        b=u4XdKfU7rbdp7H+QbT4kZJbsf0nQgiuK811tAfav4VSIJ9yXOvcRic/nLhPllPGQjO
         IGYyREwkJxhCmCppvQDC6aKo+O5yk+uHo280ToEw+eXmjdxMDJIa1be+Cr80qbe7gTDy
         sg8O85sK9535dvkPd12gWZCPsRlqH/ImNJNXszmm+jC/stvx/agoj5NPHG52PemPTDVT
         6tvLgVP+IPEQgQgKQdmLddEowxUWo2IqZ7KEBkmYf38zywNffcamqr4UGvNMpB3DQrMx
         XOCDWyjho0dIUkxU4PX2DddYMquHIKsr0Ut1vZKtypx2GCVbX1xpLtTKIyB5dDXBtP8n
         d9DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0q755Sy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id r27si1921203oth.2.2021.01.10.21.14.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 21:14:35 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id w18so16626163iot.0
        for <clang-built-linux@googlegroups.com>; Sun, 10 Jan 2021 21:14:35 -0800 (PST)
X-Received: by 2002:a5e:a916:: with SMTP id c22mr13188457iod.144.1610342074901;
        Sun, 10 Jan 2021 21:14:34 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id p10sm5318659ilg.68.2021.01.10.21.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 21:14:33 -0800 (PST)
Date: Sun, 10 Jan 2021 22:14:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: danil.kipnis@cloud.ionos.com, jinpu.wang@cloud.ionos.com,
	axboe@kernel.dk, ndesaulniers@google.com,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] block/rnbd-clt: improve find_or_create_sess() return
 check
Message-ID: <20210111051431.GA4167786@ubuntu-m3-large-x86>
References: <20210110215726.861269-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110215726.861269-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M0q755Sy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Jan 10, 2021 at 01:57:26PM -0800, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem
> 
> rnbd-clt.c:1212:11: warning: Branch condition evaluates to a
>   garbage value
>         else if (!first)
>                  ^~~~~~

Ah, is it complaining that the 'if (IS_ERR(sess)) {' section in
find_or_create_sess() does not initialize first even though that will be
caught by the 'if (sess == ERR_PTR(-ENOMEM))' in
find_and_get_or_create_sess() because alloc_sess() only returns an
-ENOMEM error pointer?

> This is triggered in the find_and_get_or_create_sess() call
> because the variable first is not initialized and the
> earlier check is specifically for
> 
> 	if (sess == ERR_PTR(-ENOMEM))
> 
> This is false positive.
> 
> But the if-check can be reduced by initializing first to
> false and then returning if the call to find_or_creat_sess()
> does not set it to true.  When it remains false, either
> sess will be valid or not.  The not case is caught by
> find_and_get_or_create_sess()'s caller rnbd_clt_map_device()
> 
> 	sess = find_and_get_or_create_sess(...);
> 	if (IS_ERR(sess))
> 		return ERR_CAST(sess);
> 
> Since find_and_get_or_create_sess() initializes first to false
> setting it in find_or_create_sess() is not needed.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Every maintainer has their preference for where and how stuff gets
initialized but this makes sense to me. I am not sure the commit above
find_or_create_sess() is needed but again, personal preference.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/block/rnbd/rnbd-clt.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/block/rnbd/rnbd-clt.c b/drivers/block/rnbd/rnbd-clt.c
> index 96e3f9fe8241..251f747cf10d 100644
> --- a/drivers/block/rnbd/rnbd-clt.c
> +++ b/drivers/block/rnbd/rnbd-clt.c
> @@ -919,6 +919,7 @@ static struct rnbd_clt_session *__find_and_get_sess(const char *sessname)
>  	return NULL;
>  }
>  
> +/* caller is responsible for initializing 'first' to false */
>  static struct
>  rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
>  {
> @@ -934,8 +935,7 @@ rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
>  		}
>  		list_add(&sess->list, &sess_list);
>  		*first = true;
> -	} else
> -		*first = false;
> +	}
>  	mutex_unlock(&sess_lock);
>  
>  	return sess;
> @@ -1203,13 +1203,11 @@ find_and_get_or_create_sess(const char *sessname,
>  	struct rnbd_clt_session *sess;
>  	struct rtrs_attrs attrs;
>  	int err;
> -	bool first;
> +	bool first = false;
>  	struct rtrs_clt_ops rtrs_ops;
>  
>  	sess = find_or_create_sess(sessname, &first);
> -	if (sess == ERR_PTR(-ENOMEM))
> -		return ERR_PTR(-ENOMEM);
> -	else if (!first)
> +	if (!first)
>  		return sess;
>  
>  	if (!path_cnt) {
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111051431.GA4167786%40ubuntu-m3-large-x86.
