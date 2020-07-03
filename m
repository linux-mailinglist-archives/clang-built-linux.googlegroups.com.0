Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJ647P3QKGQEAONV3JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id A54AA213685
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 10:36:56 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id m4sf17816999pll.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 01:36:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593765415; cv=pass;
        d=google.com; s=arc-20160816;
        b=MYlretsXnN6Xjv8CQ9VukabnZH3gS95T1lePWhEvpsjBW1nKYVfl/HhfW2WJFxiOTj
         qKWQ7R1ovj9+XixCbfSS6FuV0u5DW7FXjPrpQNvzPNPyRocyWezUc3XX7EWeKtlooMCO
         Q4lRFHLx9aIN0RnM3LYzPHOUrpMe8PFaKg8AupSAWNcR0VseEotgGqXSc5OO4ZbNj4tv
         o7a4ekRTN4NjLBICATshjWDV5So8ekjBaYxF0wr8CV1yzc+hkCpzqJiJC9YYMqqjsv3b
         qblKgf6/YFBN1Ps+AJeiSQB5Isip9cC4oG6n9w7YkIbp1+rg7rF73SRAdWQz9Sa07k+V
         xHfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0HC0a+eJ1Y8xIHO9sxA7XRk3PEOi6ojWjXWUNI89Svg=;
        b=CqYhPIg9cTlxLzacp2V0WIdzYC/+VnDJ/D3o+noGTLHRxyaA+6+k5w50OY8uQ1fSX1
         f4UcSVXq0AZ8uDyd93YtrmImxKqIkq61op8KwNZX4XU+p3ZqwUOkTnH8vna85xnd/foO
         wxkFDSuM6D4cwQ6cYyH8BG3kQTlLiF0KfwP4TfAUAVOq9BCp0i/sG8iVwMpMEFWl4X7X
         +YyyK7bOqa9fcCio0+ZwqelCJcAti0odFxmvlsk5GHoHWDIXfiBZdIJ4CKXjqBJn0lTU
         wTY9M9vP6G2wLTKzCV/18oJB2fY1MtnnsG6DL6g9fo+1qaGRUJ+BGClYaS3ZWl8jEZ3s
         ETKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DincemqM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HC0a+eJ1Y8xIHO9sxA7XRk3PEOi6ojWjXWUNI89Svg=;
        b=GEectlp3A4n9ajqt6py4fpzxpEBHXzbPJ7EAdXsVXMQtLzPctls7qGwYWvWOUvNDyy
         3oujZiGHCUqI9wajRATGl6IYb6/7auIxKQ8bRZZ9+LbcafUHwp4XDRQxH4bGPwku0+R5
         S4Ep2HZ8P5JBcNfkghMFVaLdp4wZQ0iDvxx55k6oFvlsJkriu4sa1Ufdiy6pTIccI1g4
         Q3XU+f/9n1D0b+To3TU6BX23G8KHFr7snkAB0Lx4GKN3DD63rr6gzQNAavAB9zG9tsa8
         h6kspr0wboNFcIK2vKiOQrFSG0hwu2P6XyyTtFw270/Gii7tGklq29ZzCfZyUvTzYKsN
         f5Cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0HC0a+eJ1Y8xIHO9sxA7XRk3PEOi6ojWjXWUNI89Svg=;
        b=WO9T3PBrtOtIeZUSnmPm053B58NSGgxWi9JFVpKusE0NPOVd+jZKYKi5/HDmDA1NBg
         yYo0cR1jIzzFX3kAKvwcYrlolAY/7G/rN1oLF2deKU8T0oo5sjfrboDGD0cA0gz1SXRk
         WWjMlKtou50JQfp5CGUZ43SOQGkPsMpGTj+8Y4wAjsCyikvl3drx3MQBzUzuvFRra93b
         2Lf//F7HM+P9mpaEwnGu+5m6ILM5Y20ojdOJ7sGhkBy1W+1wCS901NOKdExXAN4ymVdJ
         zFqwq53fe6LU2cloDQvMeShpQPQyp+ZQBNdoi0DMch0D9gIU7cSBusWrE4rTuyQgBCv1
         oE4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0HC0a+eJ1Y8xIHO9sxA7XRk3PEOi6ojWjXWUNI89Svg=;
        b=MkbaPpo7/XdoeKO2ufp5e4fdZaSrjOB+q/epuGY7rAL0X3y0c5jy2kTNjhjFWDQNIr
         ZFEjzMkhwQraRuH99006t7TAuZqmghas07K7C7wjGYvjqwkB+sL5a5+l+Q7Wq0x0krHH
         VbScGHB4DBsB+liebZ0N8EWQ15iy6dMY0GMdNKFQfWXA9b5wjuLq1bFMEte4T4Vivv9M
         SxpIiDuyUq/KLvMjytxz3oD5Q3MNnZWJjUVtS8A5hVeYes6Q4AHStTJArgJotqeuIz9L
         qNnUmBAp7lgKR8AAJB/eLuUCaUnYM8pDgSuYUSA7jGoUvxDJ4yCWsh40AveUJiYvzZwl
         Tscg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZZCVaMaSB4e0AFauQvXsYu9Y42dWKh6bLe+N+8s2vtYliz1fy
	TiKQxWin/uH/Aan5+YFUb+g=
X-Google-Smtp-Source: ABdhPJx9HJMJ6uWyALM5p9GzJrgdEvRpVse2AjO+DurzC/OjxxzqBhytaC5XnEfkXmLnTTSbkI1VoQ==
X-Received: by 2002:a62:17d8:: with SMTP id 207mr30263267pfx.44.1593765415331;
        Fri, 03 Jul 2020 01:36:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls3275328pll.10.gmail; Fri,
 03 Jul 2020 01:36:54 -0700 (PDT)
X-Received: by 2002:a17:902:b78a:: with SMTP id e10mr31707256pls.194.1593765414856;
        Fri, 03 Jul 2020 01:36:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593765414; cv=none;
        d=google.com; s=arc-20160816;
        b=rxnVy9Zlt64lOVZrrHixZ2HhmucTWV21B+lG+UpyGQQb49iMQ/SuB1F37Vhd0BFCW7
         elruqdmunXT3ya+lp/UidmIoQH1/k1l8UxLmOYntqj73Zx2vEP0R3Jw5L6PonyhSsqro
         OaLxsyYbjobxRu2jPjPN4veOk4KIS1LfZTZJIwM04s58mq38BQ63Rv0F+P3zkRFLRKYF
         OO8ikvB6OxQZfggWnosFHG5mLFp0u6bwsoR1YGR5kPhyQiGNfEyLsUqp6StQ8BZve2au
         T86J/5BoTDMgkqap/dhhu5ww1nibZ/rIsi3f7S6PnGEMXWbeCwcE2t4E4oInoyNEAIhG
         85Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xOHCU2+2Hl3oR9DNasCEydEOombBF0/71/PXB/IcwFo=;
        b=jyNnb+HXB8nf01vhzGr4KPcg7pcwdHE6uDCem1OJ60qTz+rJabTjr8KJfly4dFNFSp
         mkKI2VVcJwenuG9KwE08EkBw1TOBKBGeU+8dyGUEIV5z8FrlKEUAYrPSUi0x+ro9BMJd
         d6Nj3ndFFfYAiqxostbO12tx36SGHAsRNpkZFSi6+XlnAb14cDFM1VRgfjP8es5TlVZX
         DAmvK98PSWp9k9UlB+H+gyYW/XMN2VZ5Sb01TjknBXh6tIXS0meTmcAc4Xa+Ue7owUiC
         COiqIHONAwFrgfWIlkf8dC3t6ZzuvUQwiDlW9eYDFxPH5xMrBa/88i9PgVY4ni1uFy51
         GE/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DincemqM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id y9si637626pgv.0.2020.07.03.01.36.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2020 01:36:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id i4so31658319iov.11
        for <clang-built-linux@googlegroups.com>; Fri, 03 Jul 2020 01:36:54 -0700 (PDT)
X-Received: by 2002:a02:c785:: with SMTP id n5mr38854511jao.75.1593765414282;
 Fri, 03 Jul 2020 01:36:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200622232434.162730-1-caij2003@gmail.com> <20200703044832.GD23200@gondor.apana.org.au>
In-Reply-To: <20200703044832.GD23200@gondor.apana.org.au>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 3 Jul 2020 10:36:43 +0200
Message-ID: <CA+icZUWwpY9rnfgyy81-78fH+PH4wmAS-+yZFBDCjBbARabQfg@mail.gmail.com>
Subject: Re: [PATCH] crypto, x86: aesni: add compatibility with IAS
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: Jian Cai <caij2003@gmail.com>, jiancai@google.com, 
	Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com, maskray@google.com, 
	"David S. Miller" <davem@davemloft.net>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DincemqM;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 3, 2020 at 6:49 AM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Mon, Jun 22, 2020 at 04:24:33PM -0700, Jian Cai wrote:
> > Clang's integrated assembler complains "invalid reassignment of
> > non-absolute variable 'var_ddq_add'" while assembling
> > arch/x86/crypto/aes_ctrby8_avx-x86_64.S. It was because var_ddq_add was
> > reassigned with non-absolute values several times, which IAS did not
> > support. We can avoid the reassignment by replacing the uses of
> > var_ddq_add with its definitions accordingly to have compatilibility
> > with IAS.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1008
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reported-by: Fangrui Song <maskray@google.com>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build+boot Linux v5.7.5; clang v11.0.0-git
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > ---
> >  arch/x86/crypto/aes_ctrby8_avx-x86_64.S | 14 +++-----------
> >  1 file changed, 3 insertions(+), 11 deletions(-)
>
> Patch applied.  Thanks.

Hi Herbert,

Can you please apply my patch, too?

For being able to compile/assemble with LLVM_IAS=1 *both* patches are
needed with CONFIG_CRYPTO_AES_NI_INTEL={m,y}.

If you do pick this up, please add a...

   Link: https://bugs.llvm.org/show_bug.cgi?id=24494

Thanks.

Regards,
- Sedat -

[0] https://lore.kernel.org/patchwork/patch/1263102/
[1] https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git/commit/?id=44069737ac9625a0f02f0f7f5ab96aae4cd819bc
[2] https://bugs.llvm.org/show_bug.cgi?id=24494


> --
> Email: Herbert Xu <herbert@gondor.apana.org.au>
> Home Page: http://gondor.apana.org.au/~herbert/
> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWwpY9rnfgyy81-78fH%2BPH4wmAS-%2ByZFBDCjBbARabQfg%40mail.gmail.com.
