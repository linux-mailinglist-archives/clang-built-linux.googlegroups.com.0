Return-Path: <clang-built-linux+bncBAABBS7DRH5QKGQEW7CKPZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D984E26CABB
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 22:13:00 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id r22sf20979pgk.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 13:13:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600287179; cv=pass;
        d=google.com; s=arc-20160816;
        b=IfEOFAvMtwn8juOd8j1AlMnAHTtgkBkAs6VEaUkqkN8vD4knpUs2uTfdKBxkDBmgA0
         /sqHcF87R1kJ1+6MDS9vrTQufTSVjRCx4MkLxlMhGZOKRMFTgmE9I6QxCIPjTxco0oDe
         okes+NN0ZEjvEJ9CKVC1BCSpZCzZA/htH30plt7Pl4cyzD+zF46Ud1/9VI0jycMvMGZU
         67y1NZ4eNdUm6U6KXJiHJTHT3eFWjJGEuXABLEpKBDVd0DPY1qvmFN/AhuRrEEjE1SwB
         OllG9N5tuOpsLNImuMTlYUXtlf57J2x7M190TRUNBnrWMvY1grs32QXcaJ2WPDBv7hFO
         HQNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6q9tCYnkyf92JcSE6JOU9LeG4N1caC1gHfNznv36nho=;
        b=qslJAlvsRnTg7oOg6Trp7BHsVPNwEwFc1r5SrIh+eEJLI654h8pxxDb69gwlW2H+m/
         dnVcc9zC1twnS9HUOtb66E6IVrUIAnSh8hIdp3JK700rR0NWTjH9+mMHfYsl12frMgC2
         L9vCVLsDZIYhxSwP8qjvyDTpFXyugICZ0QzGZW3vCBJ/9ZyP3i/eh3b3f1UKhKqxDSe/
         f2Vpu+vNEYRrb0dhsL4gKu8t2iE7VZPUvidWJP1qNQHOom96AqQe6X8sQvXi7s42a1nf
         e8/yHeQtUR+q2ncX8oahOdUIq4ncxOgeNQj8AJ6+uaBBvWuNH7tPdANEkgt9zRM1Aus2
         YiOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IPTBAYXv;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6q9tCYnkyf92JcSE6JOU9LeG4N1caC1gHfNznv36nho=;
        b=nMGUv7VRKnGwXAVVfaeINcAAijkcOAVlE8Nyk6GbrZte8UlJN9f0pBcROQgNSLNe1W
         I3zxY4WZxmws3jcDIU8SiPPQUg5qlNQWDr9WQRXNwD6H6Em3klQLJvwPw+e4jDJNU3an
         7MyJmeSb7d1+mGMxsOZzRp90tyQWOL1eqFb23tQwTlFrEZU9NgB2r0/Vh3yw+XKXmpCw
         WbnBjbz2yVLrr53v3FYxuAWlDPQccsXPbIH8TG48Yxs1bZwY7bLJN57bZp+1Q1CQL06r
         XWDxUO6IjVgG+gkhRF0qSyGihiEMZwBoV1Czo07kqmMHJ/YNhOr35N31trgJVx1lbDV4
         0URw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6q9tCYnkyf92JcSE6JOU9LeG4N1caC1gHfNznv36nho=;
        b=j/9b5ksEUKmg3mkFJBKIStWjI2ubxRgcI4XHsswYjwR+6GRBic7B7IQiTZvuORFocq
         e0LhVJf9G5LQvx1fxgvmbayFCENasCGetb80cZYLIODp/0eCqHxD8udfZaWuGn/4jG40
         JQMiVtqlWMeMs0cv4hMOTyH0Y4T9FZa4Iy2KTqV32I1/P9ueDMZjqESaclC1+A4bVWpq
         nKyinT74UHQ567yXnKI8BzmINBdH//UDjtYLp8WbZgyc8aRxGTRU4pNZUEuANgy3mQgR
         XCzP5hhwqn1ObNCtgWvLhLiVXUr0pVMie2O7U1+nkEFsXRGt8cDz2/rShofmIOmwsnrF
         52rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Kt+834mFOwjfxb1Tzg3FWAWUMWsj6eDgR9gueY2FjYJ0mmDIE
	D20tnxEUQo3XgVSlPy9fZdw=
X-Google-Smtp-Source: ABdhPJzYLrkicwUB6QNSkjR6DzQUQcmXXCMMrRsnzdPwgSvoM14asj/MlNxa913Ukvuv4xdMFt8IdA==
X-Received: by 2002:a63:548:: with SMTP id 69mr20341658pgf.386.1600287179586;
        Wed, 16 Sep 2020 13:12:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls1556799pjr.1.canary-gmail;
 Wed, 16 Sep 2020 13:12:57 -0700 (PDT)
X-Received: by 2002:a17:902:bccb:b029:d1:9be4:9d22 with SMTP id o11-20020a170902bccbb02900d19be49d22mr26293108pls.40.1600287177544;
        Wed, 16 Sep 2020 13:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600287177; cv=none;
        d=google.com; s=arc-20160816;
        b=Xhh5CqhgSfELcpDtRksxYUunmOGiblMdgUgHuu1RpeWRo8nOq2OjOys6H3M11IM1pU
         Zs29Vf7lt/QiYWzVM5vGyP8C4C4sLv9EKN+cwb6cYwpAgMzHAYEvlK3jzng75mky+Uyx
         MAyQ/fvqjHWgWNK9/R24zlVqqlT+FdAvvsoMs5iX369Xzbn2hB1ufTzW4lMu3gAQcDU9
         foUFm0fmtw9dG9UBZvR7ZhYimL7p0yzJu3AgEFx+BYvZadJMCGXhi3+mwNHAyj2Aqm1m
         qojxYkQP7dDR4zh0c8Y/LdNwXFVLxaVB2pCf8VlN1pK5p8DSGVDhCNeZH6mPXKID3jeE
         fFYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SDhRT2ekOHGG8HJDxl0OkfXN6xy9eHvEyBTvJogquDk=;
        b=XvjOF6lEVUEBJRfJgCxPJ4I+zmwt89zRO1+qsZvmiu2/bZOFRI9gjbP6r9qeVBcIDT
         6mXMddea3bg4c5QSxD/goBiKNKfjh129D98xXy0G8feHbU/j/9satHZEhdum7em6lsNa
         e+aXKj6hSxZxW7ME20zrDaUZIkh0HIjTuxCUwfbe6ZlGbqjZ0BQ2qWfK6ZLTI6SuqFnK
         2bDzUq9u332GfKA/WwH41BhD7O1IG0Tl30myjXa+ddca4DGHdHdninTwICwcginGFihh
         623Dl5FLHjz2G0plw6KagO8SpYFP/zRSpll3sFOyb2qVEaPTCJ3o8XtQs5pE82FPbOK9
         OewQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IPTBAYXv;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o98si234658pjo.1.2020.09.16.13.12.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 13:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D11BC20936;
	Wed, 16 Sep 2020 20:12:55 +0000 (UTC)
Date: Wed, 16 Sep 2020 15:18:27 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>,
	Anna Schumaker <anna.schumaker@netapp.com>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Joe Perches <joe@perches.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Hongxiang Lou <louhongxiang@huawei.com>,
	Miaohe Lin <linmiaohe@huawei.com>, linux-nfs@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] nfs: remove incorrect fallthrough label
Message-ID: <20200916201827.GA22908@embeddedor>
References: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
 <20200916200255.1382086-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200916200255.1382086-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IPTBAYXv;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Sep 16, 2020 at 01:02:55PM -0700, Nick Desaulniers wrote:
> There is no case after the default from which to fallthrough to. Clang
> will error in this case (unhelpfully without context, see link below)
> and GCC will with -Wswitch-unreachable.
> 
> The previous commit should have just replaced the comment with a break
> statement.
> 
> If we consider implicit fallthrough to be a design mistake of C, then
> all case statements should be terminated with one of the following
> statements:
> * break
> * continue
> * return
> * __attribute__(__fallthrough__)
> * goto (plz no)
> * (call of function with __attribute__(__noreturn__))
> 
> Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
> Link: https://bugs.llvm.org/show_bug.cgi?id=47539
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
> Changes v2:
> * add break rather than no terminating statement as per Joe.
> * add Joe's suggested by tag.
> * add blurb about acceptable terminal statements.
> 
>  fs/nfs/super.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/nfs/super.c b/fs/nfs/super.c
> index d20326ee0475..eb2401079b04 100644
> --- a/fs/nfs/super.c
> +++ b/fs/nfs/super.c
> @@ -889,7 +889,7 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
>  		default:
>  			if (rpcauth_get_gssinfo(flavor, &info) != 0)
>  				continue;
> -			fallthrough;
> +			break;
>  		}
>  		dfprintk(MOUNT, "NFS: attempting to use auth flavor %u\n", flavor);
>  		ctx->selected_flavor = flavor;
> -- 
> 2.28.0.618.gf4bc123cb7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916201827.GA22908%40embeddedor.
