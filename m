Return-Path: <clang-built-linux+bncBDEZDPVRZMARBRHTXGEQMGQEHTPKJII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 940583FCD15
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 20:49:41 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id x11-20020ac86b4b000000b00299d7592d31sf362569qts.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 11:49:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630435780; cv=pass;
        d=google.com; s=arc-20160816;
        b=I9jFmBBHrxRS7fnNesnTo6ByCNSt+ke2S2NacRqdtO9zIJjaLgpyszkO+l1fG9igJd
         ZWlaN8x8uSm821nUf3Q9ZwPuXL/ZsBFqVhB70DIiJC6uv0JGBNKbZtjzBuC/1vdsrP7p
         jDtd7/6Ehl9Yd/mzcIncoPTNhce7Dazm9w8zSNv9K3dZxhJL/Buio/AreOw4lF1fHSEy
         LMuZrtaaFfbNmY3lHrHUWkgK0KaeNXIAiAGEpj+oh0gQTSRhonZBrsY1gH8YixVTmuXw
         ZmWGdX7VCuGMaHdVZrc71pwr940gUJxJfBqnvJhiTYj3Y4gEifXL28Wm/a6g/zwwSlTr
         JCkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YDqWRYxhUaTZvNX/aCEgaXu11KqtbK8g0fWDe1ZDxww=;
        b=lVeUE2lwSOs+mvMSrsm+bBLRE7CYDRCyCxo+JiC+DUkyPlrW4XhV1Y2vpSefE1sxKo
         zJLgRvy6yXXCZSIL04nvSq0jdD31aeHE3OyYVx7WGI7FMkkrKupcD38RiYIepRsmBQZn
         B9h8wbyvIJ3erpSOnOnMpvN5hl7eHiz+FdzNLf8RrNHudX0q/yfQSN0ddcq69PXb7109
         WA265cJuau0ntqkotBCl/XvubwHre4kmYDqZB7na6GNmCeo/5K6wqsynFQGXgsp6XfD4
         MDbnnBPtOa4fcfnkEc/X+bsKZ7qCEBuJaiWTWzwsorlV4a/PDZai9T+Ahv1RUoU3d8iM
         17gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lOs8rPbw;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YDqWRYxhUaTZvNX/aCEgaXu11KqtbK8g0fWDe1ZDxww=;
        b=sniCa7xVYZWPorAQYdAjT6erc7nRqLWjTqz+nafsiGtXD9OSaQrtim3OCmbZaH7a61
         M9XTTlNhgWmBVSXa2iATCRTW8C8t6gNrPWvcOYYRwTfbEsp4t4bZQkvKzEdQw/mU91a/
         FzzYaNNAi7vw4iHFYuqDSkh9jYq//Vfio7dNFV3Ek3pzHFeYVGoLC+dRqUgBPGocM157
         wIRnEeHGO12scTDkiDEtG6YTAjTP1ijlpyzoY+gowha0EHwVKlp68oeBTRP9AavCZhjs
         AWZ7Kuh/cZeuzjXA0SHZP+aA8rnfzoLavsR3G70Hu8PSLj6TpQlAgZys945bYDnQkOl/
         dBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YDqWRYxhUaTZvNX/aCEgaXu11KqtbK8g0fWDe1ZDxww=;
        b=qPpCKfE3sH7ysAOnOkvkLfnyPi0heU6ek5KntxlH9j0V3UEE575foefVzmbj6b9SWp
         ejpqIszj4NsrPcU7ooJNG+Mn59nuhQK5E5zfp5ZRrSC5lyezS/tcNKzXUwh0jTYL4VTd
         rZqYpIkJH7O8lKzjxJMQVnTUcgNixivQ/JxoQP7q43GPIdQojA3QdbyYl7Ni4QHVHs6S
         5aRKOjj7Q9uLcONOJiXMiCGMZYJMFYfeqtIo8u/mpCZ/rn8lCj1erzPRP+gUcrMOUd92
         ZPwqB/LFELQGo5R14p4bqfsppFB854kurSgOZAg6DkvGQ0Ihzosxo3Ajr6etahD03EPS
         vTuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qcmkBe7W1XNi9ybjY47uCUlqsqJnZAKfwiaH/nBHJwZz75M6p
	xTWaano8yUnxUBsQbNPjTVA=
X-Google-Smtp-Source: ABdhPJxQYnhhYbp83507ms5OxfuKXsTj//UWJhO8ni4Yn/wYjIbWj+h9JX3hbCMR9T5JGBRUfhxA7Q==
X-Received: by 2002:a37:a1cc:: with SMTP id k195mr4620982qke.230.1630435780693;
        Tue, 31 Aug 2021 11:49:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:50c6:: with SMTP id e6ls6853670qvq.2.gmail; Tue, 31 Aug
 2021 11:49:40 -0700 (PDT)
X-Received: by 2002:a05:6214:10eb:: with SMTP id q11mr30245638qvt.7.1630435780286;
        Tue, 31 Aug 2021 11:49:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630435780; cv=none;
        d=google.com; s=arc-20160816;
        b=MSI9h8pmMqwjCgnnNhfBWcHkVjK9/7Ki1k2b9Ci84Hnit9acNE3/tAgAtAfc1W/OJx
         pb9DsWWedetcYxf1haK5Tb4d7OZ6OiLbe6gMpvemz/uYgORv8u2O2UKYLB5FacAgJf8Y
         rntuW7Ntdv/plwlHi3Xip4i3IWSmK26xYIjRbDpOlxw6eqqVtDW84icTbwiM9pd0YpEg
         sHoMZTrJWbx3is+qcwnrtxvKYaFMfo/NiU5UHJKDp2fM/HceIldVtgOE5TluJwG5LMwd
         0yf35TOjoBgOST3o6hDCptikX6zeaJLoAHvd26DZWEg9u8JHSkn1MQua+jizXkZpBXiR
         9cdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NZ7om+PEjbZs2krGj/fcLmhe1iqA3wtrhKdDf4GtlPI=;
        b=TjdFgQkUh9OSxa0YWKoSWIGJFG/EPkbl+u6bzUdwwoKno6l7+u9O/DxzC2LiuZLSoA
         j7q0xA7znpdz7a5KOq+kycpdn8VXP8dJaE4rUksIOJl4aksY0344f7Dkle3sJ7Wyl4L/
         uzEe8uoRGbicz1P4dEKRxAR/wakocGTcsb9HvVMkONu7UJa1NUzsia7HA7WF4nhMtpfI
         s3ADkcQZoRv4czbMtQ2qEmjTPML+yCrZKp4xvcHcVfW+lzSfoSlOW9X82dFGGjviDGpn
         vR50a0beiqHRZ7o1jbilWFz0mXlpH9ok7bEfxCzuu+lXCbb63rhcxxLxfYdV2tTX+7/H
         Tvpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lOs8rPbw;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s128si297714qkh.6.2021.08.31.11.49.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 11:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4BE116108B;
	Tue, 31 Aug 2021 18:49:39 +0000 (UTC)
Date: Tue, 31 Aug 2021 11:49:37 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Sandy Harris <sandyinchina@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] crypto: sha512: remove imaginary and mystifying clearing
 of variables
Message-ID: <YS55wSEVAYhmrtWE@sol.localdomain>
References: <20210822103107.28974-1-lukas.bulwahn@gmail.com>
 <20210827083842.GF21571@gondor.apana.org.au>
 <CACXcFm=sRBr6cORdyntuOum6n4dJpKv+vTZSi98_JrDWWKF1NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACXcFm=sRBr6cORdyntuOum6n4dJpKv+vTZSi98_JrDWWKF1NQ@mail.gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lOs8rPbw;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
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

On Sat, Aug 28, 2021 at 03:46:50PM +0800, Sandy Harris wrote:
> On Fri, Aug 27, 2021 at 4:40 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
> >
> > On Sun, Aug 22, 2021 at 12:31:07PM +0200, Lukas Bulwahn wrote:
> > > The function sha512_transform() assigns all local variables to 0 before
> > > returning to its caller with the intent to erase sensitive data.
> > > ....
> > >
> > >   The assignments to clear a through h and t1/t2 are optimized out by the
> > >   compiler because they are unused after the assignments.
> 
> Just no.
> 
> You are right, there is a problem here. I thank you for pointing it
> out & I've already fixed it in some of my own code.
> 
> However, I think your solution is dead wrong. You are correct that
> these assignments are useless because the compiler will optimise them
> out, and that's a problem. However, it is not at all "mistiifying";
> they are there for an obvious reason, to avoid leaving state that
> might be useful to an enemy. That is quite a small risk, but then it
> is a small mitigation, so worth doing.
> 
> The correct solution is not to just remove the assignments, but rather
> to replace them with code that will not be optimised away, force the
> compiler to do what we need. We already do that for operations that
> clear various arrays and structures, using memzero_explicit() rather
> than memset(). Similarly, we should replace the assignments with calls
> to this macro:
> 
> /*
>     clear a variable
>     in a way the compiler will not optimise out
> */
> #define clear(x)  memzero_explicit( &x, sizeof(x) )

Clearing of local variables is never guaranteed to work properly, as the
compiler can create multiple copies and/or put them in registers.  It's much
more likely to work for arrays than simple variables though (and not cause the
variable to be unnecessarily spilled from registers to the stack), so that is
the only one the kernel really bothers with.

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YS55wSEVAYhmrtWE%40sol.localdomain.
