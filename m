Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAU6VT6QKGQELIYPRGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1132AE27E
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:06:59 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id x141sf131803ybe.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:06:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605046018; cv=pass;
        d=google.com; s=arc-20160816;
        b=is3NdbpBvTOjLkXscCQVH6dhNJZairQQoDuUP9zgTDvoz47Km6/S3in49pqrux89hb
         9O6D38/jGSwyG4uJZ1yvFUo1bOHpwwtWWyGGikexjs7ixUiOEVofYBxTmEKotSJDtpRD
         eoRS/250G7Pf+hKsGigvBc01HwRirsh907qlRFpwEi8icUwg9+Qwntj6fjV0K/VfaoJ+
         j9YMNVfjQ+jBII/mgUZ8Hein0wzHZEg5mkqzxD5WbMY0OBtcBfaa8yi33EKVf3AuEONg
         8Mz44iDjPLJN+Z34AlL9lxyJ9zb4qf+9jgKd5exW5hoY/NGREmysZZoiUv1rBcHSND8V
         Je4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Mfy9rXB04oNntNk/P9H4TC5wTuFXtGwkjpOejIbLv7k=;
        b=Hm6lTGOzNb6MRl/rg3rxMwHkDvQ7KhezgXxEmC3zS2qM7FA1vmgKLbIMY6GYqBubBb
         weEYrLkxR2HZ+NnaR17j/Spp9vRJR1c72KTR3NhMtQi61yT0Naapq779ucxlRPVpQE5X
         Ra7rix6CFAWwzHSx5lzkRLo0dC5Lq0DG+Lfxm4ffQsOgP9gLcsyuUGZ9zk7NM8M57Qf4
         hooiV6xdnUjlbF6gfz1ycnFBXrVThkNOYABIcACJ16Q1XeKUpG7NH5+zTmjbX43u9wJD
         4mHY/cbeN6cz54FlylPkMikfJQOHVdW4edwh/diPc6e//DFygsmKniDy2TBo/ycTuvjp
         pRiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v+5eq4VY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mfy9rXB04oNntNk/P9H4TC5wTuFXtGwkjpOejIbLv7k=;
        b=JKv/+7LPqGQUsmjkZGzn12zzBF39WsuVxvhDX2SMiD2SuMZXo4vaz1Mabvy2zOrHud
         V5qX9ahjaemoPINYgJMsLyotdTN++WhpDIzDJs6xvHkvotkIkIp0I93PQK1Pfdgf3Rgo
         /mX0GTYPjMqVstEMrq2PpTJULawBLjiTUdz4ewXqcU7oXLSd1qt1Yug85vyFtovg3RN2
         S0+64pegFYBwqO26LCHr7sYuki4D0aL75vgptKBIAuob9BOMPs1qzG9PPDhTk4xynnuI
         ujxhKgSAERgLkgxwRVeB1xsniA/DFfobqPtIVrpxILZ4ePPMuojQBXRGoe2KLeOuE9UJ
         zZ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mfy9rXB04oNntNk/P9H4TC5wTuFXtGwkjpOejIbLv7k=;
        b=XrsGH/K5SUW1ILEwm+8PjW8N3FpU1kWvzNwNIizarpBpqjqRJaxJTGpL5E37M0T3WR
         fn3diSxykSm0CxymW+4nXU/ch2Oh/08S26rJT+bHSp2edF/80Ndrn6YXYM4lfb79LEv1
         4gPtTOsHe7HuWzNBI/mLXTzj2dXvI/OgKKEViB80fsVPALuOjZOxbCLddXr0G1iOAFuk
         kiruJ4n6EqIqNtY8VZwQi+nt8JhBXBaSiO/atvORTCokm+BoA/B4oQwM9worGZe9LDE1
         ea9/g6p3wXpw/NhlmdamcDp47Mp4maeMWSbwQjX4Zso86FC16WlclKiWnzLQQFbKDhVZ
         gu0A==
X-Gm-Message-State: AOAM531Opq/LmzfPH96fdcRjmGGkSzXy7QAzFejcipouTajd6SgREJRP
	6kIcZnH4Ew6NyNfxqVHysgk=
X-Google-Smtp-Source: ABdhPJysHUFapz9Tke4dJqOri78nn3k5d39Kz8Ovsoq01ehbudosHRphGPBSAXbla3TuE/l6XRXQ7A==
X-Received: by 2002:a25:aa6b:: with SMTP id s98mr17566168ybi.214.1605046018210;
        Tue, 10 Nov 2020 14:06:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:84c4:: with SMTP id x4ls2107564ybm.6.gmail; Tue, 10 Nov
 2020 14:06:57 -0800 (PST)
X-Received: by 2002:a25:3b87:: with SMTP id i129mr30809144yba.237.1605046017753;
        Tue, 10 Nov 2020 14:06:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605046017; cv=none;
        d=google.com; s=arc-20160816;
        b=B5FCSEMcOlNKZgshXoUl3UplIwhLCz+lZjwZ77mjJZAy598shXbAi0cxCsFsjhZrOU
         aldfb8iNeIGkl1Z5OQUm8BahAwEoyk8+JCtoxAyB9rDn0LUVoEFWkmk2eEL+xGqDmQ9f
         650vzfi2ZsM+e2wxSzf6EtTqC8kk04lIJ/x4NLTzQcWbd9SuvzinuMQVczUuBEz2Oeil
         9CGsrWAjdWyqoOY2QzbSPe0zgAcCpWrnfQ2+9E5WICAyt4YkpdwMsbeDuD+rg4bEDjsh
         M9lUKfJSbjnjGGxn0xKphsCYmkWLZlzKVZpZrRt1lOx4l6MnqwRW6fBF7Ubdxk9XsDzw
         Q13w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qPQ341XlioetJkwvUmegnpo5yieLqIlhYMF1JNCPQv8=;
        b=T3JuCWlDa9elUUWzOU8SMA4KV2XWvzik9fDfrKSg+fnX3yfsySHgDzZME3sSfHSK6F
         RhyMBr/kzufTvXYS1OwsG6cl8HtHnjPOKwiotiuKs142LnRYeiIMtYd3Oz7jEFS7gxRo
         r1Xtb1NU4wYTs5DCzOCzc5GkUWtRJOLmXrpW1Rqvu6R3ubYHefeGDsE3G299frACkKv0
         ijLZp3KnW3664lti1MPbDQtbevo1BBf/Dg/u0hVPuhq7ObuLhDPACmZF40ZrIajnmIe7
         /w6gOCuYlt8EgQIlkgyqyIk1PgnIEVxfxMVz44K73GPjAM9dOiDIIvso8o+BSZMy7Ks6
         En7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v+5eq4VY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y4si7389ybr.2.2020.11.10.14.06.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 14:06:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 10so134880pfp.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 14:06:57 -0800 (PST)
X-Received: by 2002:a62:870c:0:b029:18b:d345:70f3 with SMTP id
 i12-20020a62870c0000b029018bd34570f3mr16322041pfe.30.1605046016802; Tue, 10
 Nov 2020 14:06:56 -0800 (PST)
MIME-Version: 1.0
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com> <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
In-Reply-To: <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 14:06:45 -0800
Message-ID: <CAKwvOdku3o0nHhPppPOJzFXa3j1j_4r5ix3kbkduxY3YSpj9wg@mail.gmail.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Joe Perches <joe@perches.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, netfilter-devel@vger.kernel.org, 
	coreteam@netfilter.org, Network Development <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v+5eq4VY;       spf=pass
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

On Tue, Nov 10, 2020 at 2:04 PM Joe Perches <joe@perches.com> wrote:
>
> On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:
>
> > Yeah, we could go through and remove %h and %hh to solve this, too, right?
>
> Yup.
>
> I think one of the checkpatch improvement mentees is adding
> some suggestion and I hope an automated fix mechanism for that.
>
> https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/

SGTM, please try to remember to CC me (or CBL) if you do any such
treewide change so that I can remove -Wno-format from
scripts/Makefile.extrawarn for Clang afterwards, and maybe help review
it, too.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdku3o0nHhPppPOJzFXa3j1j_4r5ix3kbkduxY3YSpj9wg%40mail.gmail.com.
