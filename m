Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKEGTOEQMGQEO5F6ZZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBF63F7E61
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:24:40 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id w28-20020a2e161c000000b001ba14fc0cd4sf306288ljd.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:24:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930280; cv=pass;
        d=google.com; s=arc-20160816;
        b=APR76zs95xyb9x61r9/k6iqpaEzGbTw+cJSugPtcWH97eu1VfuDz9sZGN1ExKOJzES
         8kZ0BBPDqplU9qs45WNfzdonlOMH2iU4QPQAL3ssxpPTJlpAbJvxilcUL0817UFSCV28
         /iPRMQDON49D/yeCPK5plquFzPqVVAI4Ds7hsWJsc9f8mk5vndxNYslKh3Eb8pOZmn+P
         b1Omqigruroo+VhdJPhNnSvhavQMQC9ojXA4PYUndTerRWTBIlVS6k41mPVaWBh/Vt2d
         A8vrUym1N25STQy54lIf0g9TTmdylT37nmpYbyNgfH2vdrChBr2zdE6WtJwdVp2dzRuE
         tTOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=owjuE1TKMOGJTUzSJc1auZthJIys+0elIhLNzUUcRjE=;
        b=TvywBKr3uIgvm5CwZ4bo5rS3CBnQUdmhWZ4sJzlsvCytvwR5Gt95whwmA/DYvZHVdi
         eu/yYfaQ9Yvyg+4mYm1hDg9UtAz39PYwxeTl94uLm/F91tJGqRUj9Psb0rZxn3KIs7Fm
         6uvJ0gVzTaQQuJhbt/F68Rvd5ZPA5lgWwwkMPffom33Esdw8wSotpiL7R1y7VfhS9uZY
         Oq32G5qtSv10Tbj0uIxKXTiMuyfINCjm5TNT1pKs8oxRjL70PYxcvlEfj+z/2ZwhsYAN
         WYHtX/kAw05t/7y9r7ET+gQGV1/JpafHPC7aXF6f7G6gUcTyuwuVzkOuMeHef7eG5Tnb
         sehA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BP2XN95T;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=owjuE1TKMOGJTUzSJc1auZthJIys+0elIhLNzUUcRjE=;
        b=r/ATOwNeci5F8bhtW0ShBGmJpVi8gmCBBrfUv9WLcxohHZsag844TuNVvrG4gTi8VR
         4GSvAy/MFgkmRpfhAZ6WlPXrAZ6ug0eaMUCsKlZxlB/dBGK0sp+BB8sjVi6AUuqzOpqi
         W3gygIC/GztVvW9lctH3e3XUzffmERWh/j8vTM76VkPMvU+coWedbBipppS6k9qrmxSQ
         L6S3zCboUq04PJ6KVI3YVm7FvCjyFkMUkG2CWLNgRaVUVFB6/eeB5EAFFIPVQvOkE0k9
         vyK3CdNaqqm++J5mQHTpyZnuprueSc/+PL9g77CfpJLUoAwbmmyWa+sXd1K6xEO9tPJ8
         x6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=owjuE1TKMOGJTUzSJc1auZthJIys+0elIhLNzUUcRjE=;
        b=RgPf3S9pWPyWEBE/IgpE6JnXQAC43lCqAOhkGhEsBAbcxcy7gBMYHAQb9Cq/Z0uGZ5
         CbJLrfjCCKAMJFKsYx/D6sf+wYMzxgZgW1Z0IOHO8ax0FXHj8E07yyaNCxhhxnJZJMDO
         jteiv4E2e8Kfw1M+dkDGym3PBDO54AOMaUzqcmM73kdDZLoInVDgQht1a3XoatAN5Dnr
         g1inbmeN6GoCuFxfRjwircgIcA/GnopryymtOWhMNorFs8pqopi7FsAfFYe6zkMchM1x
         YgQoiXxMNRr5a+/iKX3gzXtqjVlAbsPs8p7fR5c+od9fT6GsJdmRyFr0Y0ZNG53M6V3K
         ddvw==
X-Gm-Message-State: AOAM533s1+vCDAH5OpORdQim2hGLDbXgkbOJ5m7w6kabRcwGfx5NOCHJ
	niv4KbRyIR55amZi7DdJ0MM=
X-Google-Smtp-Source: ABdhPJw814ciLcKoQy2iFX6RaqBUHMTm43UhU6U5iNtMMRGYIQWau+Hym/DJEYwFZCTVxvHlZKrzkw==
X-Received: by 2002:a05:6512:3f8c:: with SMTP id x12mr284071lfa.320.1629930280471;
        Wed, 25 Aug 2021 15:24:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls728758ljr.5.gmail; Wed, 25 Aug
 2021 15:24:39 -0700 (PDT)
X-Received: by 2002:a2e:b0e8:: with SMTP id h8mr369580ljl.189.1629930279490;
        Wed, 25 Aug 2021 15:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930279; cv=none;
        d=google.com; s=arc-20160816;
        b=Rp1eVjfW5WDjiXhL7FM5bpcOPnSSfFkFz7TGTjLmeE3oHt3rV0h3rgWi6xL+NANwYM
         YjEl1O216lTPdlAfNXxPqUJbXi2v3ch2oTr+Meh7VV3Fw3EUhMdTniAfFTjkpYHaqO/P
         +FB5vWV3gTHgxGNmNmevuLdD+wg42ixl2TAX4Rgco20/6Vcyplau41ocQQDRiBOi6acg
         Aa7Y14K/e4+rLPCsh1g+dtViaNatSmsvwVBhdArmibug4xRI+XYVKVYeFeh9wmRfgm+H
         xCPaj4c/U0obHJ13/bWgx7Xc1TY5xsDtI9l6t2I4jaU0a5XFpD/hIJxnoLmtEi+QXsXP
         IxMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Pefv3vqeuX4St3jq1M8WoFYRA23I6Vantt927BxIQWs=;
        b=KBcJ08uCTn/YrImODDT/bnyOBnmUifWqGeuaVDNyYwN6HnnckvIJvSc7vXz+DIttlw
         ZG4okYKJIgpUUQb/lwgfdfCkWlQqahAVcS4AxrKmJy/TWRAZVg1W7DtDyFmSKG76evIk
         yol4FGDvn+4JnzjDKfefzKiBJfDDN1O1p+bbFxS7Qe82NSq+Y+5rmnkonGhsv1MVJRID
         BabULfcQrZ1lilcBSJpdnbPFmOUqrwaRfwuSlXuufJAPVsU0ah9iAutYlNOYbBKuMXMM
         09FXmMCxOP9cu3iWsoneo5fhPTYJvqPJuwZUcVZSs8WC4nHVA55rUjZczCnNnLlArymp
         1zPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BP2XN95T;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id z4si75273lfr.2.2021.08.25.15.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:24:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id p15so1340923ljn.3
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:24:39 -0700 (PDT)
X-Received: by 2002:a2e:a788:: with SMTP id c8mr401858ljf.116.1629930279047;
 Wed, 25 Aug 2021 15:24:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210822103107.28974-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20210822103107.28974-1-lukas.bulwahn@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:24:27 -0700
Message-ID: <CAKwvOdk4iqT0pW7eLQyQggWMkfeJENTeavehexeCO86yjDcXyw@mail.gmail.com>
Subject: Re: [PATCH] crypto: sha512: remove imaginary and mystifying clearing
 of variables
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>, 
	linux-crypto@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BP2XN95T;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Aug 22, 2021 at 3:31 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> The function sha512_transform() assigns all local variables to 0 before
> returning to its caller with the intent to erase sensitive data.
>
> However, make clang-analyzer warns that all these assignments are dead
> stores, and as commit 7a4295f6c9d5 ("crypto: lib/sha256 - Don't clear
> temporary variables") already points out for sha256_transform():
>
>   The assignments to clear a through h and t1/t2 are optimized out by the
>   compiler because they are unused after the assignments.
>
>   Clearing individual scalar variables is unlikely to be useful, as they
>   may have been assigned to registers, and even if stack spilling was
>   required, there may be compiler-generated temporaries that are
>   impossible to clear in any case.
>
> This applies here again as well. Drop meaningless clearing of local
> variables and avoid this way that the code suggests that data is erased,
> which simply does not happen.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  crypto/sha512_generic.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/crypto/sha512_generic.c b/crypto/sha512_generic.c
> index c72d72ad828e..be70e76d6d86 100644
> --- a/crypto/sha512_generic.c
> +++ b/crypto/sha512_generic.c
> @@ -143,9 +143,6 @@ sha512_transform(u64 *state, const u8 *input)
>
>         state[0] += a; state[1] += b; state[2] += c; state[3] += d;
>         state[4] += e; state[5] += f; state[6] += g; state[7] += h;
> -
> -       /* erase our data */
> -       a = b = c = d = e = f = g = h = t1 = t2 = 0;
>  }
>
>  static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4iqT0pW7eLQyQggWMkfeJENTeavehexeCO86yjDcXyw%40mail.gmail.com.
