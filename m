Return-Path: <clang-built-linux+bncBCL37IXQZQHRBMGWYGFQMGQEQ4V7YHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 303494353AC
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 21:17:06 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id k3-20020a4a3103000000b002b733cd21e6sf3672048ooa.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 12:17:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634757425; cv=pass;
        d=google.com; s=arc-20160816;
        b=o7x3rf1F8Bj8X+6ztVxrfBRzlYP2hM9JeNzrfrUMLimxaW8vMCbE2osMTP6LFoQkb4
         FctZvoV3Met2pnAueaBTm7EQu8/l4rKgevYAh+Boys1Vs87WH9xPo5FRbJYADpp6BM0y
         ruj8DWoEk9OR1gA8eSTT9i2APV1BQMowl1JK1TI1sVo+0+T4pIWJOET/UoihXWB/Hxo9
         6RDcfOYBZSA46rAJv/eYgFUYOGLGnVgk3oRgvJUi6OQnUJZI7IMUIAuF98BS5lXX7bq4
         M+VPZ8EQfRzIYrKqCM+oLygAG9BHBGBV2bYle0UB5znvp8KWLxulUp5RwU7bKHVsiWBW
         +Nhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=lsBqzi3XOgYfa/E20xd49gjmmOpCMqOajwGIu0ZZdiI=;
        b=J5lHplzCfGhxiJrIAoZlBclZoANThjX40Wn0VvGm/O5rHw4iyYL2gU1nze2BxX/RRz
         Q3j73GO1ANB56EjkVyj5UfNd1STEUtbenceCJQ3IDvvjSjdiw7fEGKcxFMLIVRI5Wz94
         bWIdnrtXyM4kODdhprHj90cjgrWJBS9vAJNADEH35SSgMne5mwpCEHUdyMZHGTgG4HuC
         s7Z38q6q6ejFd/qPYW02R2Vr28Xbl+rjip848O1Ek/CuFrQ0WIhJKim0WHp+0rUB8GB/
         oP1ezAHJn4nvY6Hw1u7OWYSY0BXbsc7wlCz5o7jDBayq3dNPaHqhrUpih9V//snkngqm
         d3Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ckED8qmU;
       spf=pass (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=memxor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lsBqzi3XOgYfa/E20xd49gjmmOpCMqOajwGIu0ZZdiI=;
        b=ozDxe353TuimFgEXcli7PrNo962jLlzBrUkknbuFW9bkhNlqo+egSVHhfS234O6aIv
         ONHY/YJp6zawDD++XgNAQBcvDr8kxtXnDUtwURKBauTjYCTazTedqnvtRcfMN1j2mJl9
         AApEaQafzbR+qIVkvptGnkDpAw9ys1cLCPwfWkOL2P9wOhiX8FPAHSWb8hpUf1O8Dw25
         OjqEw7GTLGcKfU51HYhUAhPTGnywHvtVAELEW1Dk82hhWnmFUlzsc0oJMYBjQyr8DsMu
         KGdDMwx9E96yK/FO2SNRnQaUBMCT7YOtqTEdw7/MQXWIFTcOnejt3jsJDREVRQAV/vD+
         2GQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lsBqzi3XOgYfa/E20xd49gjmmOpCMqOajwGIu0ZZdiI=;
        b=kjlvE5JoVZyotgau3MugX47X/mYCOcXQ048vZ2EiaghSpaA6LkLgDxTA0kJfoXfLmf
         6sfiBMjwdkIcGCL6CgFenVJrjUJiOEdE6+P4iShzKjdAYfBYlggWMg47TZHluie4QFbu
         gsf1lei9ipvljBxR6yrb/i6z8pQskv3RNKZ3QtTJCTGmqPSmCpxqeCdcJMtoy+pM2EaB
         UmzmDG0UM0bDfbwR6JboBwXCL8fgswqxceY+n3z5ETf35onUdbiY/PhzqAOI6+WHmBlO
         Wnvds31J3qtiM1ADFD6JO5lLx3Dg27B6mvQh+axPWU+kBLHUALGASjveA42gTEsv3z+t
         c60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lsBqzi3XOgYfa/E20xd49gjmmOpCMqOajwGIu0ZZdiI=;
        b=qm+DZqVu4v1Hoo1yb0gpc7Lsjj5bWtQI+dl8i8d20UdInkG/28tRIPLy0FvBEUBgLp
         R5eB8zGGcdPUC08zHQST8miIcyH+SqJQ9hASQB/owQwZckW6STxeOYmgI7bTS2E1skPK
         B/+AnzD0Pl2JjusBAc23l4hp+GR1tHGFmaCDzB4hQ08b1fXVU8GpZp4wyiHwjbXk9JiW
         Bx9sxGUqYcx3Kp8p+uogUC1uNs2F2EABzzVkFgckYjP1iR3mglcz5Ij0FK5BUV8m/UnU
         ddBAmQi4HD3PczSiOIf84Q+PlTHgwU0Dh059pQxgZjv8ef4Gw4bcmGn8W2+uzI6amt5+
         jpOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GPSdHIME1C63N6CzDjuY9+Kym2blUSLOjLhXy/U1PufLErKtu
	Yw2dPh5srBkgfNZy3rTshOE=
X-Google-Smtp-Source: ABdhPJxxbBMOGw0DlMkPY/9Oss6FpUY/ycfz1v4SL4TgwK87xJk+rizca4I1RKhs/fM0QJA7gMGGSA==
X-Received: by 2002:aca:5e07:: with SMTP id s7mr1066611oib.15.1634757424776;
        Wed, 20 Oct 2021 12:17:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2309:: with SMTP id e9ls959692oie.10.gmail; Wed, 20 Oct
 2021 12:17:04 -0700 (PDT)
X-Received: by 2002:aca:ac0b:: with SMTP id v11mr1042695oie.155.1634757424418;
        Wed, 20 Oct 2021 12:17:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634757424; cv=none;
        d=google.com; s=arc-20160816;
        b=oNFgPTWREwT8ulHdOe3j4OAJlGoEgSHYyr6iMWCOJM6Ia/qvWSRTYwmUqY7xuynRb2
         Q89ZoAm3udOUXymEI/Dtj8an1w+v+5uJryCkEXjTiZ7nxkqgp3L2pZsGJpOouQj3+tVc
         CwiL/siI+nooGLQAeUSy8Tw/Os0JaJShcYeJDiPACZFqZs9ixst+0gI77cRv41e4Jkw4
         1rv9DJMN1SGuaNIO0X0bgw7jXkJE7pwekggQ4Cfs1JUTpqNqy9wVpPdv2xf5L3HRIIjQ
         I1z+k9b25y7ktqA24C/WqOC6v3JcOgGJNy79rA6QIBVKARPzMMJK7DuZCSuvFXon0AxN
         UCSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HcIYWiFCVQnue2KbFMMttiWPrmdLbrKcP2fuUFsedaQ=;
        b=QXanteOQTR+s/dC3qcaMHQydNNS9N1h78CgCXP0T7/JmWmoDFJz4FAJQzAEsweAsSA
         6Vt2YCRnN/bpsITzxaaa+MXkFiRwiGXPxZAR7v3V9Qn9n1T8PdHBP4/RSel70IrbZEw8
         l1lGW577IsqbFLmiVBNw5+qeDegZcN0PHoe9R+skO5Wmfa5b9cVuw/oz28wEJDpqCXA8
         kQEF8pE+eYSYzzIgKEFQNH9VrQu5L/PTWo32b8G/vXeAvR8B/IraerA/E0Sgk5JNs9Wz
         kRuH+xU7RRJigswUGWcp8kMA2B8vMeupghLQSObl8A4q8H3uyqjlw0Y8SU0l/lBUcQCO
         0rXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ckED8qmU;
       spf=pass (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=memxor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v7si214310ooq.1.2021.10.20.12.17.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 12:17:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 187so3780466pfc.10
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 12:17:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:2410:b0:409:5fbd:cb40 with SMTP id z16-20020a056a00241000b004095fbdcb40mr1203946pfh.8.1634757424078;
        Wed, 20 Oct 2021 12:17:04 -0700 (PDT)
Received: from localhost ([2405:201:6014:d058:a28d:3909:6ed5:29e7])
        by smtp.gmail.com with ESMTPSA id p5sm3556289pfb.95.2021.10.20.12.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 12:17:03 -0700 (PDT)
Date: Thu, 21 Oct 2021 00:47:01 +0530
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>, Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	David Ahern <dsahern@kernel.org>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Brendan Jackman <jackmanb@google.com>,
	Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>,
	Lorenz Bauer <lmb@cloudflare.com>, Tariq Toukan <tariqt@nvidia.com>,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 07/10] bpf: Add helpers to query conntrack info
Message-ID: <20211020191701.kp3mwirgva2j3fly@apollo.localdomain>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <91d47467-93b2-7856-2150-61f75b1aaac4@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <91d47467-93b2-7856-2150-61f75b1aaac4@nvidia.com>
X-Original-Sender: memxor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ckED8qmU;       spf=pass
 (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::442 as
 permitted sender) smtp.mailfrom=memxor@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Oct 20, 2021 at 06:48:25PM IST, Maxim Mikityanskiy wrote:
> On 2021-10-20 06:56, Kumar Kartikeya Dwivedi wrote:
> > On Tue, Oct 19, 2021 at 08:16:52PM IST, Maxim Mikityanskiy wrote:
> > > The new helpers (bpf_ct_lookup_tcp and bpf_ct_lookup_udp) allow to query
> > > connection tracking information of TCP and UDP connections based on
> > > source and destination IP address and port. The helper returns a pointer
> > > to struct nf_conn (if the conntrack entry was found), which needs to be
> > > released with bpf_ct_release.
> > >
> > > Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> > > Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> >
> > The last discussion on this [0] suggested that stable BPF helpers for conntrack
> > were not desired, hence the recent series [1] to extend kfunc support to modules
> > and base the conntrack work on top of it, which I'm working on now (supporting
> > both CT lookup and insert).
>
> If you have conntrack lookup, I can base my solution on top of yours. As it
> supports modules, it's even better. What is the current status of your work?
> When do you plan to submit a series? Please add me to Cc when you do.
>

Great, I'll post the lookup stuff separately next week, and Cc you.

Thanks!

> Thanks for reviewing!
>
> > [0]: https://lore.kernel.org/bpf/CAADnVQJTJzxzig=1vvAUMXELUoOwm2vXq0ahP4mfhBWGsCm9QA@mail.gmail.com
> > [1]: https://lore.kernel.org/bpf/CAADnVQKDPG+U-NwoAeNSU5Ef9ZYhhGcgL4wBkFoP-E9h8-XZhw@mail.gmail.com
> >
> > --
> > Kartikeya
> >
>

--
Kartikeya

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211020191701.kp3mwirgva2j3fly%40apollo.localdomain.
