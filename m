Return-Path: <clang-built-linux+bncBCL67PHQ6YKRBAE5YCCAMGQELIGYD6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 990E337171F
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 16:53:53 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id j3-20020ac874c30000b02901bab5879d6asf1572394qtr.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 07:53:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620053632; cv=pass;
        d=google.com; s=arc-20160816;
        b=UisFbAt4CwzYrwLVEJgbY4kDsilFzEzCneTcksvK/xpJWCTD1wlgU9hWuEmm/bTiUF
         1gFLv1Cw9xJvSOIFVyoasQGl2ZabemVWJHcPGpuDmZIhRwHZfggr6hlA1mGyvVpOdVQD
         qKfB9EwuSp0ZnO5+MqIIX9lAEEuU2HJtEihiLP/5Fk2Zi4fUk+BRsAoJ9Yrl4Sf6r8aG
         lSCdX1i9mzVd8Pq80k1qA7RjCOcrNx+OSKhkNq8cAJM4yGXAfP0Dh5jnrEPG0IZbRlvq
         knZBF0UpqbHT8wD6FVrewhQJ6wMAnFuyUWxf9/YXFTUd0GqYrSvbnGGbRosXb6VrgrG4
         70CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uLct0raveDRZjbW51Gdg/yGPbcbvUTr0EWGvhNSYE9k=;
        b=p8M2C0UxomG6k9ABVkLFQGBsjP8wVGGxoXclwSQSAQOPVZ//fQoKElTrm0H/j1KnJQ
         ynboqPXa0X+EpSJEF8i/nK9QD7wesyCiSsLJQA7ruMyjtn0PLfXk6CeJ074q/fJFOYsd
         8E+VAGnFdnbCq/XLb5pSMKl99mqpGatpSbZ8gnh0OSAOi5zYREUmJnMehEpNXqjpHfYf
         QGjV0mLeYgpyKo53CpihsMR7NKn7jdwQw0PJ6O6mZR9YC9LuxcWftYFuvRkpxejPKWob
         vt/to1OX+q6hpUbNb2AGG9n4Uh5gVrlLVN9Os9RLkt15sdaqv/dixHlXXTmIp91AzTlY
         I8jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mzQluamz;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uLct0raveDRZjbW51Gdg/yGPbcbvUTr0EWGvhNSYE9k=;
        b=sp0b+lpVCg41S4UjQRgtEjDX7mF2gIkW31pQmdpKSvnqNbt8OkDQpOp43socEGBUoS
         sLoO2kB1IY6N5whb7ofGIs+z2DadFO8GJkNgONhD2kGt/I92IVulh8TCX/2H+g/GAa3N
         gRnCMgO/pzAKA6w1dVI5L2kL69cqoqQf/cNJbIOddhtCnmj7iIu7W9xU0bOAb3mf68W+
         +OrNVYCORPvmzmQH2c3hDmHSjqccT1UJv51QXNf3I5jvb0WVeVz8WAAnrijBwT819oFx
         j1fWIuVRCb+fJqY7yGBCEXcqOdqEKFcHQA/HVFaec8e8FZTDf6YrK2nZkYDl6o+jK2NT
         CROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uLct0raveDRZjbW51Gdg/yGPbcbvUTr0EWGvhNSYE9k=;
        b=Sxysk3bLISAPeMZ+dKopIlGBqEwuQ38uPg170PrrvAMakOyPlLGwvoCkOoNKOe+h+v
         GdTk9XwvtU6RtbW4N+DdbP3Fvl4RxjSHYbejNdMGqYAW734ibqbybWmHQJ7vPDzXqVgz
         rKnYMpKrnG+l+rxHV7zDiA7KXr2mUZiHq1YQo3JfR+OUmZQFce1LEeGLP9WonU8BImi7
         dCDF5rp9drChvSw1cX+5/+Cl81ZC57XhwHRVxSNO71J4yyXuD6OmTl42hVkgc/BYe/54
         EPLCL+XavPpVqr654gQKCLDcy9OgObSElUJWXEZoF+Ji6P9DenT7vsvLsm2DCSMrRRUS
         9vUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XhprurQz+SQkoPAgTTXpiF94B5vzmtHuL4k/VghobrAIIaKTV
	u2PnUTP+2wfq1x1FenJhBcw=
X-Google-Smtp-Source: ABdhPJxndJkyKuABEaetk52W8qpAtNzVH1bZ7ct4gp6eBxOr09L8ByuOLQwjOBu9axOCereimsk+aA==
X-Received: by 2002:a05:620a:2f2:: with SMTP id a18mr19514978qko.236.1620053632529;
        Mon, 03 May 2021 07:53:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3024:: with SMTP id 33ls6091002qte.8.gmail; Mon, 03 May
 2021 07:53:52 -0700 (PDT)
X-Received: by 2002:a05:622a:11d1:: with SMTP id n17mr17242463qtk.360.1620053632071;
        Mon, 03 May 2021 07:53:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620053632; cv=none;
        d=google.com; s=arc-20160816;
        b=VTAW9Zz7BjTbUUeF9pGIWXyyt9/XVBGyHJe1hbZHhAjy55GaWEqhKa8oew4ifH4qM4
         4KtBOz57/3BzCy3w59l11ZphooyjRUIMFrvW5KfTl0kNVfW5J1xoXkZK+Xw+DS5i8fUL
         kPIH5JOOIcROn68oBXTdz0f9Z08wVa0FpND8rm1LnMoKVafffJ5LMCkMUl3wizJeMS3L
         IWRfl212WtHRzxbXbBkbCZzTymzjn9IEDfMnNPRt7/dctag4ct77RXfZT8FVz7jQwHs2
         Lj9QpBqbpT1PxX6z2PzDzxfrEdyRavJj5Jcfb5mckKQ9VG0rRjj1W2SKkeQa/afzXeYs
         uCBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZuJtGzjRAhiCGD35K3dD1HporoNEsKjw5sshOB8J2cs=;
        b=HXLmdCTR1yuHZiN2dP6n5B+ydM6oibxH7uJHzph/Tbgg13n4hARAINUaY91K6GgJuk
         6GDon2qoUwErj039ls+r2MFF9CDE3HGxvqPw2pGZ1nQn/x6uaVeVd3symI9AAbSiwLCj
         dbAYb6PnT4mZwozD41ZdhliCT+u6Q4w7ZIdTVg+LBf9L2ENs9DQYvQjIjr7qEOyw1AXO
         yceClkYSzquTRFcuRyS7g3SOXLm4Sx1SOU9vmkNifTUF+G32gUzjlH0+ReXKQBRfYmMV
         h0yE18jFlS7KslMdlEVo3nXkQ3SjcY3Oj4V5WinWL6yyIkpPMOnuBYk1W7nQF2It3npL
         gjZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mzQluamz;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h62si1329388qkc.3.2021.05.03.07.53.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 07:53:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4FB09611BF;
	Mon,  3 May 2021 14:53:50 +0000 (UTC)
Date: Mon, 3 May 2021 17:53:48 +0300
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Colin King <colin.king@canonical.com>
Cc: James Bottomley <jejb@linux.ibm.com>, Mimi Zohar <zohar@linux.ibm.com>,
	David Howells <dhowells@redhat.com>,
	James Morris <jmorris@namei.org>,
	"Serge E . Hallyn" <serge@hallyn.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-integrity@vger.kernel.org, keyrings@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] KEYS: trusted: Fix memory leak on object td
Message-ID: <YJAOfJyMy6Uu/Cia@kernel.org>
References: <20210430113724.110746-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210430113724.110746-1-colin.king@canonical.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mzQluamz;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Apr 30, 2021 at 12:37:24PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Two error return paths are neglecting to free allocated object td,
> causing a memory leak. Fix this by returning via the error return
> path that securely kfree's td.
> 
> Fixes clang scan-build warning:
> security/keys/trusted-keys/trusted_tpm1.c:496:10: warning: Potential
> memory leak [unix.Malloc]
> 
> Fixes: 5df16caada3f ("KEYS: trusted: Fix incorrect handling of tpm_get_random()")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
 
Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJAOfJyMy6Uu/Cia%40kernel.org.
