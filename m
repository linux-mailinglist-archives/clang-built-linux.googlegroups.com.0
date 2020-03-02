Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWH76XZAKGQE6B4ZGLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC6A176660
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Mar 2020 22:51:21 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id p26sf827441iop.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 13:51:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583185880; cv=pass;
        d=google.com; s=arc-20160816;
        b=EL7sTLjB/FcxZmvBuLY7UhpUppsISkjnWyW78TuGeO5ZYAsvTfALazCG2+EdhteV4p
         wf9OJehaOrXfZXYVXEYgvuL9RV1tlIyjgXKID4O6gkueTAWu5kNbxB6v4slfXGsHXkBJ
         T3dVfn8hqJwWWPLRfftx4vBzj6ETHUN8QxFnnX2lS50SSZ//F9KCMo0olA9v6H5CaIYt
         GjQYj4bnlhcwfl5vczcCHOFc9kHcop5KdoA6Fe50GRaO6FaWnZTk4452LnQ6rqOVryV1
         v/0PWXFB/tI+xbLOM5EztgijHbkwYNq/UsSJMCoQIDWX3zAnlqLELxGjlq9ZSWcXVKsc
         WiPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oemRTGrZ+8ItlsYvIPwEFvqbJDKYnfE4C+G3jUpmBZU=;
        b=00APlF0TsTRx0gjkaPYN4+tcwxxq9NwCbXUHE67QuMKbysH3ie5OFEdxwSXffvJH2C
         owgW7fW4og4UnNkkoUts+mzoxdAAdGj/GCF8vKzgVnE63YmmdOIZt5Byk82Upbr5K5MC
         yPGSmb9ziejntmCNFvw/fU5YFb8j4D2YRhHHR4F1u+YfZaifCjD3oxJ+ia7wR0RtZgOr
         4eHBBXa/nMxrop/n61T+X0UddTroiWnqmqlYiIjTMKDM21fQwUPCIovmmcX74TN0AL13
         DCvy1rf8cZWtTnIvFnqsCbx3c9fn4vaW8G2g13OqH7zNcKxgcwqOa5rLu3v4Bicwgggs
         Oflg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Btl64gHC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oemRTGrZ+8ItlsYvIPwEFvqbJDKYnfE4C+G3jUpmBZU=;
        b=pjecGokRV+Bk7XkrnxOjvpmFAUIE/YQXnlfggAhPvYyYESIIvkhAraqkP6LJ9cD6CO
         JHNt2S6H3sqIsSxmCQOLf9W1H4G/OKUdT4v59oaav4x000TA9NDBV0iqjOny2hhQSx6H
         pDvuZYPWNePdOfwg8LatrONLlfe9MfKugeTF7giMUdkwakKXG4JYz2bFCionGaXhjHh3
         LYaNrSoNWIaTfDhrkoK3DeGo2YY14b8VBWf4lddeBjaw+abc+cz+zuMtAwJMO/gmhkE8
         idg8b9zMaIQHZqG88Z5IspcvOa5oO6zAssf7XMx6zTekpyYuIlNhv5mdSNMcMPqQYkyF
         zNzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oemRTGrZ+8ItlsYvIPwEFvqbJDKYnfE4C+G3jUpmBZU=;
        b=MwobhzbnzxvF1cPkKvXgotTMDyCC7MpsjsT/NximVQr1e3N99y12/2Hdq6G1WUOOfR
         MOtQQlvqTCk573ekHiaw0QXUWakmIlDsCCHhcldVROWx5IyJw6ue4vUHP0YPBlo5aK3Q
         noyWscvnbozdXHTtprzjl+g/dWHFcPk+c7Aa7lXR+xBg73oXZvZjlMJlB6/p4+JU3cxk
         mgitFX5r2Jl5X0jaBnDBzz82C1DWTSRhaKHfYOdeYum1FrnAypCr7mhGk4qkAIaNCsuQ
         QDgxtQ+HbMXigAAbnRCGi3MNWijtc31nnS0tLycE2rmtnoViXnP9or5f5AO4DdeCm5Ar
         T8hg==
X-Gm-Message-State: ANhLgQ23Vv+6lST1/hTTFLOPPGmMigDYM9EyIOpkPmWVxtsfnTBxozRo
	H5bkGY+TOFw9HkpeZUogxeA=
X-Google-Smtp-Source: ADFU+vt6rk8SKcpUREWyRLuLz/u7QDtGO2SY9mg8/wyZFAD5hyhOj1QbP/93M91LQ8668azO/yjixA==
X-Received: by 2002:a92:5c0f:: with SMTP id q15mr1676681ilb.151.1583185880281;
        Mon, 02 Mar 2020 13:51:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3084:: with SMTP id q126ls126720jaq.6.gmail; Mon, 02 Mar
 2020 13:51:20 -0800 (PST)
X-Received: by 2002:a02:8184:: with SMTP id n4mr1111991jag.31.1583185879906;
        Mon, 02 Mar 2020 13:51:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583185879; cv=none;
        d=google.com; s=arc-20160816;
        b=nP0czrnmgxBZ+0lyZeOC6uX0DdJbd27Ty3Hy++8ixHE1hdfqHE/IxEbIAOFmDdktrw
         +OdaGODmu249XJ9Cb/0+iZP21NJZgYRGKrzFPGqLBFai3/xCygFB7cGAJsVGb5EPXCHS
         /EVk4cA6pY1Sb1Jx/QQJq3LIYvoEBbxGub5BnGezIiq3+Njfk/VzziyuHrwsyPh0mhlZ
         lG3oiLEyyxIKqftCSmt6VsREZ1gp+EaWTL1loiTRv0eSiF+TwdXH384lzOiAFn0oZHOo
         KvS5Rj7gImN1yIj3T7Rev8ynQWQVzThsQCZuYLf2IdWP98LBKZM7WJHyo4u3KFzS8XM7
         MzMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A14QEnluAfy61zPlyOAgKgUKJNYdcdSbcWS256De/Mg=;
        b=efcoA9lSE/T6O2WKr5JT5+3CkMZKfQJ4zi1lQTgrR24oJeMnfQqBfRyAnM2uvcBFsY
         tW8D9x03fLuPDE51+gIAVcbcwyyOuW0iLMsQ4XUBKGJATPOJkn0s8FM39v+aPmnhj/f9
         TVjE9IA69lSXZxR2EQLXdcO3TP3cHMx+0UFH4M2IaF0iMLiQD+V4ct/V29BibL2FGZet
         MUSxEBA/6UW8rY/YL/X/nDayH5vIj2yZLRWXewVELN+ZX32LjUNBynXqadgQeFc7QUBz
         awXb+gQD0/gexzcO2isBTPQ1eJLKbkakjER6aZWQIc5yEkqB2clClIsYas4N+8xJtFPC
         2qMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Btl64gHC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d26si721839ioo.1.2020.03.02.13.51.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 13:51:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y21so374385pfp.1
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 13:51:19 -0800 (PST)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr916704pge.10.1583185878849;
 Mon, 02 Mar 2020 13:51:18 -0800 (PST)
MIME-Version: 1.0
References: <20200302213402.9650-1-natechancellor@gmail.com>
In-Reply-To: <20200302213402.9650-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Mar 2020 13:51:07 -0800
Message-ID: <CAKwvOdn8SgY-C1YRGOcCnTn84MHHGirkDHPfg=mCONmUV_wqSQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Remove unnecessary NULL check in cti_sig_type_name
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Mike Leach <mike.leach@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Btl64gHC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Mar 2, 2020 at 1:34 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
> address of array 'grp->sig_types' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (grp->sig_types) {
>         ~~  ~~~~~^~~~~~~~~
> 1 warning generated.
>
> sig_types is at the end of a struct so it cannot be NULL.
>
> Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/914
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Yep, GCC and Clang both eliminate the false case as impossible:
https://godbolt.org/z/tjbDqR
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> index abb7f492c2cb..214d6552b494 100644
> --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> @@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
>         int idx = 0;
>         struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
>
> -       if (grp->sig_types) {
> -               if (used_count < grp->nr_sigs)
> -                       idx = grp->sig_types[used_count];
> -       }
> +       if (used_count < grp->nr_sigs)
> +               idx = grp->sig_types[used_count];
>         return sig_type_names[idx];
>  }
>
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn8SgY-C1YRGOcCnTn84MHHGirkDHPfg%3DmCONmUV_wqSQ%40mail.gmail.com.
