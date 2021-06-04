Return-Path: <clang-built-linux+bncBDYPJU7FYMARBUNC5GCQMGQE56CVY7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6B39BCCE
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 18:14:10 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id f15-20020a17090aa78fb029015c411f061bsf6199181pjq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 09:14:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622823249; cv=pass;
        d=google.com; s=arc-20160816;
        b=tq4+gTcgVxVUJs7s5jken8uo/cDdE0HQGJaKoIA0uY+uxB92kIAh3GGjSfMNeiTWKf
         idTYJowJuhc4L/iOqqlRDC2inlo6jES3i4dRq5FkH3vpA/sqrIYwzFwR4S2wkqP/ejs0
         l2Q4LXSOd2M9IiJmyJ/ByZj0koU7I0+60MN/6k9gDm/93+jeNPkHabjKS0h/tfC0r5DY
         EgTAdVvVJTWLQxHBETbqCT+beeTmbNy3Ox5d1qZyb5G3AzGjFfUw6Cpr0gx/MjTE9xim
         l9dMg815wqNVfhnHXP3gQxTH0ZM9tccx5pDl2HNe/m2IEksL109wG8I2NLHw9RVaiG/O
         FQpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iR4AKGVRAPSte1VbVVdW7NZAbM1Tb9+egvi30SlkyYk=;
        b=GZo8CLsAEtuVXsG/uTu18LK6vF5ayU4pMfMXrWvpgPsZkCSVTYiL3xT93oADz/S27x
         qmxI0OhEb6LnINb7EnlwtjwDk+faRjnRyk0fOxgMpiLAWCZgSwXlirkApxGKpG46T5Na
         N3lhZmJ0a9T9liqKmBlk2VYd1Y6Va102Tol+4kcJ2/glObuIF2BiTQDiITeQJoO6H+Yx
         5AWaeDteopmoL4jqo8VrDINJZB61+yj+KTbZJDPBS2L7XrWfV/cjrFn9zLeG+NtOP+aV
         zTvylWiLHm3EwLmSSDf8AcNsiCTSvqUKKgSPXlyimKWv016R1xa/jNw5En9ktLomp8UZ
         4ANA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V8jguA0l;
       spf=pass (google.com: domain of maheshb@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=maheshb@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iR4AKGVRAPSte1VbVVdW7NZAbM1Tb9+egvi30SlkyYk=;
        b=dMEs+j2tMDFqZTA4+RqSVnjsMyXl/fYz6lLvSKyc3FU8tuATs29PcIS/q97h2Wbm/m
         pOFS1DQR3AL3UgDLpTectlIjI0kLYILCIMXWJPt6yVoUvYv+oJS2uo+mb3Hc2j95g8qY
         0/BPGJ4qNf8tBA+q9hXi0R65huzJS2hdnOYX7DHzAX8K1c7+dJWi/ib2WInks3BNYtGS
         o+XGCNE0usaLUfd3/KqFATQG8IotsdX5DZOAUZbMFxmpL7UJxAlcpfWUbZ1rt/NFyPlt
         AI3SGLGIPkc8yqeZsVQJgEcCu8047KKDVNKFPU641p31dzX7aa9KOmFxVKlT60J04dPH
         p2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iR4AKGVRAPSte1VbVVdW7NZAbM1Tb9+egvi30SlkyYk=;
        b=F0dXYozKUMYGTIlUeoV4YXfyzrDN5gK0s0ySOy43j/+A/utk9eLJkBXYgtZonYUbFq
         iap/1g4lel+uVh1Lpq10j3mY/9GhboiZ0jJRFxG6c8EdZ8NKQjabyM3ahuyhctiXzGew
         FbOC5/srR+fcvi3rMYZSs1+uYYm+BstOjnmxMQJhdA7tvCstAeTsf+UvxrUPnYl05BCy
         WgFDWOeT2Iisro8z48rPnLemJqN5aGEmOUy8eaZs1/K6jO/ac7Jvfy+cBFwNrx9IH8vB
         33q0RNzGF8srxlkgLcydMiMh2cXlvnQha4JGakkVhl3U2A44nBe1dvp1yfucCJjtLNvu
         iDUA==
X-Gm-Message-State: AOAM530Sxs76gvpp3opzhDP/vXPRwZ2j+INdkPeDbky1yN6DWG0jyObD
	6g1n0BlFL6TbpfYlfFPcI9Q=
X-Google-Smtp-Source: ABdhPJx3WMbm918fQJnInye8hkf+Napgt+h9h776mZFIyNiVlffaZWorDCR5Tkjx1dxA9YTPHehn5w==
X-Received: by 2002:a63:8f4a:: with SMTP id r10mr5718536pgn.242.1622823249582;
        Fri, 04 Jun 2021 09:14:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6788:: with SMTP id o8ls4348939pjj.1.gmail; Fri, 04
 Jun 2021 09:14:09 -0700 (PDT)
X-Received: by 2002:a17:90a:448c:: with SMTP id t12mr5792258pjg.142.1622823249041;
        Fri, 04 Jun 2021 09:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622823249; cv=none;
        d=google.com; s=arc-20160816;
        b=d5yPzZJN95XR8dT3KoqxgzZoaRhsSSs1MewKlDTuIDm1BtZwheF3caQLFXwkcVL0b0
         rW7BKTZCS+WAQWKDr+IypfxqmqrGxACVF27/jMr13EusPX9LU2zLwSaB45XLFEGacTto
         qlLitSeORfdkmeE5O7kxhrErc5PxrqOHJUixn/89+9gDtsXRxgzGp++Xh/L1IGQdDdTO
         KNyZt/1UedQYUaHQUaFviIBCn0iUsEorS3Yz2T34PyMxG6Yw//vPGNJBAdgjUKtwOH2g
         i6Mm/XTrBfTI1DNjqoDyjEUVb1Oy7rZzvohU63KzQr07pLdTE1Zd9EiJPEkd7YEtklkn
         l3KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jHDkY7g5NrokFInUh8eXOI2WOhq288vOUAo2+xW+Npk=;
        b=FYPoXLoTpX2hhlC0SN/ToJ1WkO6ksUnDI97CWHnw3HxpAjoNeMT/d7J8KMUrwXVRla
         ofo4wHoFT/JlpsHag80/yr7U/z+VUncu9PIkPmsef6whSsgreSWEgWUvJqtZJta1W5sG
         3L814QfUa2EkZNP8oFj5scNA0NVzcEjhiqAvUzO8YUIoaLfGiqS0xrmxnPyNwVPP6A76
         g/x76KKEkMlIHgdnfSJnSvChAKlbpuuRRZfCTwDUywisFwtQsz/t87YJ8aBRLyVXwHQK
         iLTaE32Iz6cw4rUUIntH0gDegQ7ZyhYtKUEGu2uQue7cqFAvCfJOJn3b/yRB03/VL/0F
         UK8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V8jguA0l;
       spf=pass (google.com: domain of maheshb@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=maheshb@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id o15si292989pgu.4.2021.06.04.09.14.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 09:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of maheshb@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id b13so14420435ybk.4
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 09:14:08 -0700 (PDT)
X-Received: by 2002:a25:6088:: with SMTP id u130mr6456989ybb.257.1622823248347;
 Fri, 04 Jun 2021 09:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210604020930.3374506-1-luomeng12@huawei.com>
In-Reply-To: <20210604020930.3374506-1-luomeng12@huawei.com>
From: =?UTF-8?B?J01haGVzaCBCYW5kZXdhciAo4KSu4KS54KWH4KS2IOCkrOCkguCkoeClh+CkteCkvuCksCknIA==?=
	=?UTF-8?B?dmlhIENsYW5nIEJ1aWx0IExpbnV4?= <clang-built-linux@googlegroups.com>
Date: Fri, 4 Jun 2021 09:13:41 -0700
Message-ID: <CAF2d9jgQb0=YV1=aGNG2Sw5nbgkKozmop8vnCJV7Eu1ewb99Jg@mail.gmail.com>
Subject: Re: [PATCH v2] blackhole_dev: remove unused variable
To: Luo Meng <luomeng12@huawei.com>
Cc: David Miller <davem@davemloft.net>, nathan@kernel.org, ndesaulniers@google.com, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maheshb@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=V8jguA0l;       spf=pass
 (google.com: domain of maheshb@google.com designates 2607:f8b0:4864:20::b2c
 as permitted sender) smtp.mailfrom=maheshb@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?TWFoZXNoIEJhbmRld2FyICjgpK7gpLngpYfgpLYg4KSs4KSC4KSh4KWH4KS14KS+4KSwKQ==?= <maheshb@google.com>
Reply-To: =?UTF-8?B?TWFoZXNoIEJhbmRld2FyICjgpK7gpLngpYfgpLYg4KSs4KSC4KSh4KWH4KS14KS+4KSwKQ==?= <maheshb@google.com>
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

On Thu, Jun 3, 2021 at 7:00 PM Luo Meng <luomeng12@huawei.com> wrote:
>
> Fix the following clang warning:
> lib/test_blackhole_dev.c:32:17:
> warning: variable =E2=80=98ethh=E2=80=99 set but not used [-Wunused-but-s=
et-variable]
>
> Signed-off-by: Luo Meng <luomeng12@huawei.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Mahesh Bandewar <maheshb@google.com>
> ---
>  lib/test_blackhole_dev.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/lib/test_blackhole_dev.c b/lib/test_blackhole_dev.c
> index 4c40580a99a3..f247089d63c0 100644
> --- a/lib/test_blackhole_dev.c
> +++ b/lib/test_blackhole_dev.c
> @@ -29,7 +29,6 @@ static int __init test_blackholedev_init(void)
>  {
>         struct ipv6hdr *ip6h;
>         struct sk_buff *skb;
> -       struct ethhdr *ethh;
>         struct udphdr *uh;
>         int data_len;
>         int ret;
> @@ -61,7 +60,7 @@ static int __init test_blackholedev_init(void)
>         ip6h->saddr =3D in6addr_loopback;
>         ip6h->daddr =3D in6addr_loopback;
>         /* Ether */
> -       ethh =3D (struct ethhdr *)skb_push(skb, sizeof(struct ethhdr));
> +       skb_push(skb, sizeof(struct ethhdr));
>         skb_set_mac_header(skb, 0);
>
>         skb->protocol =3D htons(ETH_P_IPV6);
> --
> 2.31.1
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAF2d9jgQb0%3DYV1%3DaGNG2Sw5nbgkKozmop8vnCJV7Eu1ewb99Jg%4=
0mail.gmail.com.
