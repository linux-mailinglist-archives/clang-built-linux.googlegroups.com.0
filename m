Return-Path: <clang-built-linux+bncBC53DEHVQICBB7GUTCDQMGQE6ZRA4EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C90FF3BF217
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 00:28:13 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id i9-20020a0566021349b02904df6556dad4sf2688984iov.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 15:28:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625696892; cv=pass;
        d=google.com; s=arc-20160816;
        b=roSiRhD/GkcLB+7croXukOZHc2zwfHMEs8zCXzSZfekNhVlRTgP3htIL6sBLtR9SRH
         FHgxgzscZQIArPCIBqGrcCG/kEbZaGLRaBqIFVjGw56YMu2PphEr/TQ3OdWvl2Usftku
         WN9zN+3rW9weqQ+6DmAHf5a5r09FFQvS9RC6npNfVl0/bcvmVhVABL+lleDPZCok5NDf
         MlyaJandZX710BpMHFB5xF2zDa0MpsJoWLDgE7oI7ufHJah41zcD4kIS2t0poNV8N6+0
         cV0ecuDNCsQHOFLHOk7qnamqRqlTMlptEnqK376RDsnF4FIUi8MArvjW7lOc/EnM/dC8
         MHzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eRcj6ZNGgTf2U0INUfBV8sfWWB3a6DTf/uERr2F3hXE=;
        b=BFby2hTrPehno11gOht13HeuYaocCbvWllCO6nrSREKF0oU6BlXa+ofLab+oRTImpp
         LBEEgLLnsHPwf91WhWyVaiELsguKN/NDqMAMnQRHOTJNE6LG86PaFdomRX3yzhb43jbl
         TLSOyTnBHNGf6+Xmnv/VcTUa6jnmlJPpOE5kdqUWgXexSjegYWwB/ojMmapNwiG3KI5F
         qYIRpL4Tm2A+NCSgiVkC+C0+GOn4vg9XzRUeCg8jCBkkbf7pcweLc4T+SEDgkO8wYyDI
         bwey5wUdribfb5MQO/pzrgLTTxxwlGCs663aywTf6sYSzn+9hpN8+a4GWJILqyWjSwDF
         Mvqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="V/PxZXdH";
       spf=pass (google.com: domain of song@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=song@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRcj6ZNGgTf2U0INUfBV8sfWWB3a6DTf/uERr2F3hXE=;
        b=EcPWYMQ8fDcIC69YL6NTYScs5V8kquUVCbWNdl/9RtbqiuT6nkVKo0Y2d+s34NxWBf
         2a25YGWO+OySqtAZ5l/31J32J7ijER5JfToNv6ghqVIKZUcgAivJg56mpZdpiEVIT+rK
         bP5fqTvpfdzoBgNCfQheALpWeJz9YrtGa5zvuJzysYGUfPfT0UE24wR6fBwhA5LQ8vHq
         SzF9QKVNN/0/koxyG0+jZDzFwN4osXTfYuBH5OMqX+5auGK48ORvtghW8VVcuTcW3hy7
         XnOGx7XT9KDLk0q68P26ERjWEgvx0WWFz2xdeMO8xNnkcWfJwNQFeG7QIYMGDfV1IrHI
         HrrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eRcj6ZNGgTf2U0INUfBV8sfWWB3a6DTf/uERr2F3hXE=;
        b=la8F5M/drImHdNiimtWFrnimucqEtqJ/Hfv0i2eu1l6r08fLhmxfkmpO8xAYzJsONy
         Gd9pIn+9LvIYCTeqy/xj+dibbIDVH6B+xTbIyVoEJYeI6lOKiPFN3hwCrZwlYgoQCeOP
         YO3N0XLBaWUGyWQZlLoJwegDOJD8x5/jEBTwvv1w5b4CPzHdx3ErOpUxuqwCFicWpoB5
         wj1VpD/ksYkUL9ea6MiEpCequhT+ZpLxtLXhtLBg6gC0XTW4tPF+LbzlUitIDqGH7l7c
         XGjyI9h2W4JKwracxe68KFI9XjaxsE7L+EpNr4kU/4bnaytURqm8D0kDO27NI5IZmC3e
         B69Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302x/J2Q8fSBObO1klLT4tpFN2OSp1VTxwYUyQj77uVER+Da5Pi
	yBmcD/7pcyBKfDENS6xeVz0=
X-Google-Smtp-Source: ABdhPJyxFoeypaXCBrndCM9InvHQhksqac5l1Kz8ltZrURKNePnwRxB7ctuQBgqdWnBAjDwXMWk/uw==
X-Received: by 2002:a92:c148:: with SMTP id b8mr20006330ilh.215.1625696892213;
        Wed, 07 Jul 2021 15:28:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1c83:: with SMTP id w3ls31236ill.9.gmail; Wed, 07
 Jul 2021 15:28:11 -0700 (PDT)
X-Received: by 2002:a05:6e02:1207:: with SMTP id a7mr1486332ilq.283.1625696891881;
        Wed, 07 Jul 2021 15:28:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625696891; cv=none;
        d=google.com; s=arc-20160816;
        b=wg2N/3iPtE9L7PFjMejYDTT06SDRxpK+lCNS0ZsqIriSM7gbV9V5LDT7UWEqlyA+Mr
         fH9EhDaumJUYB8hy0QcpIvgPxGN9hoXH2qEtQoHnuJaFare6K9tOgw0lw0IqilLwcOKA
         rDrIw7/sPac2Ut2VTiPh01lwWZ34WM8gS5s/i3pzNVd4Rh787nZowONlSH/JnamvmRcX
         4MFuIbHnJFrEjffp3f01kDBu3eSfQ1Bv449JhUgWO8EgAwbmE5LmOXcD8GMjHV4klKlN
         AlZfEBQBq0Q+Z9Wm4YGjUSKStrkzyrRRCcWeWfyyFFbejKk3W6gqYSk0C6Xz9s+wWzdr
         a0Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a5+YhNNILsNaLGJcn/Vl2gDcQBAX+fPbnVx8ML7cwEU=;
        b=PuQpNqQQpQ4XZIfrBoyhlwy1xtzb9RPy0RI208YzZQvNlkrhqhKsoXJqHKy6LW10U1
         kn6Va/vkyrkaq/jQHa68BzjBK3nA2wQ40WHESe/YRFVHNTNb8L5UIes6U7jUoo020aP8
         haqiwOXv2lNxqMC0Dj8SW5JHXS6JFPcA81Egl9AaGipqvxbeiOqGlIajNKL+7Tx3LR0a
         sJtPL9CbLw7gMH42ofQ8OCKbwZmP0oc1H+hPl7MPvGcZM8XBeYcAWHBOEVgeOUS+1CnA
         EJShzMDxukhdeA2EqGI92N7WlEM0adcfJcOIIR5EQ3PMdKElkB4FswXr/PeiVrxpOi2x
         m3rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="V/PxZXdH";
       spf=pass (google.com: domain of song@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=song@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e16si13524ilm.3.2021.07.07.15.28.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 15:28:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of song@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F50B61CBE
	for <clang-built-linux@googlegroups.com>; Wed,  7 Jul 2021 22:28:11 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id w13so2809408wmc.3
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 15:28:11 -0700 (PDT)
X-Received: by 2002:a05:600c:4f53:: with SMTP id m19mr26994484wmq.176.1625696588806;
 Wed, 07 Jul 2021 15:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210707174022.517-1-royujjal@gmail.com>
In-Reply-To: <20210707174022.517-1-royujjal@gmail.com>
From: Song Liu <song@kernel.org>
Date: Wed, 7 Jul 2021 15:22:57 -0700
X-Gmail-Original-Message-ID: <CAPhsuW78LzzFL_=9LmfXWxfh9=mG1CP33+w_cko1=W8BSag+RA@mail.gmail.com>
Message-ID: <CAPhsuW78LzzFL_=9LmfXWxfh9=mG1CP33+w_cko1=W8BSag+RA@mail.gmail.com>
Subject: Re: [PATCH] docs: bpf: Added more extension example
To: UjjaL Roy <royujjal@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-riscv@lists.infradead.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: song@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="V/PxZXdH";       spf=pass
 (google.com: domain of song@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=song@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Jul 7, 2021 at 10:50 AM UjjaL Roy <royujjal@gmail.com> wrote:
>
> From: "Roy, UjjaL" <royujjal@gmail.com>
>
> After reading this document observed that for new users it is
> hard to find an example of "extension" easily.
>
> So, added a new heading for extensions for better readability.
> Now, the new readers can easily identify "extension" examples.
> Also, added one more example of filtering interface index.
>
> Signed-off-by: Roy, UjjaL <royujjal@gmail.com>

Please prefix the subject with the target tree. In this case, the subject should
say [PATCH bpf-next] xxx. Also, please revise the commit log as suggested in
Documentation/process/submitting-patches.rst:

Describe your changes in imperative mood, e.g. "make xyzzy do frotz"
instead of "[This patch] makes xyzzy do frotz" or "[I] changed xyzzy
to do frotz", as if you are giving orders to the codebase to change
its behaviour.

Otherwise, this change looks good to me. You can add my Acked-by
tag in v2. (prefix v2 with [PATCH v2 bpf-next].

Thanks,
Song

Acked-by: Song Liu <songliubraving@fb.com>

> ---
>  Documentation/networking/filter.rst | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/networking/filter.rst b/Documentation/networking/filter.rst
> index 3e2221f4abe4..5f13905b12e0 100644
> --- a/Documentation/networking/filter.rst
> +++ b/Documentation/networking/filter.rst
> @@ -320,13 +320,6 @@ Examples for low-level BPF:
>    ret #-1
>    drop: ret #0
>
> -**(Accelerated) VLAN w/ id 10**::
> -
> -  ld vlan_tci
> -  jneq #10, drop
> -  ret #-1
> -  drop: ret #0
> -
>  **icmp random packet sampling, 1 in 4**::
>
>    ldh [12]
> @@ -358,6 +351,22 @@ Examples for low-level BPF:
>    bad: ret #0             /* SECCOMP_RET_KILL_THREAD */
>    good: ret #0x7fff0000   /* SECCOMP_RET_ALLOW */
>
> +Examples for low-level BPF extension:
> +
> +**Packet for interface index 13**::
> +
> +  ld ifidx
> +  jneq #13, drop
> +  ret #-1
> +  drop: ret #0
> +
> +**(Accelerated) VLAN w/ id 10**::
> +
> +  ld vlan_tci
> +  jneq #10, drop
> +  ret #-1
> +  drop: ret #0
> +
>  The above example code can be placed into a file (here called "foo"), and
>  then be passed to the bpf_asm tool for generating opcodes, output that xt_bpf
>  and cls_bpf understands and can directly be loaded with. Example with above
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPhsuW78LzzFL_%3D9LmfXWxfh9%3DmG1CP33%2Bw_cko1%3DW8BSag%2BRA%40mail.gmail.com.
