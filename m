Return-Path: <clang-built-linux+bncBC2MRKEQ44FRB2FSYGFQMGQEDEON43I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D44D435244
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 20:01:14 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id c10-20020a5e8f0a000000b005ddce46973csf16327714iok.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 11:01:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634752873; cv=pass;
        d=google.com; s=arc-20160816;
        b=ufvFpUVLlaz1+raKLz/50sRfEQadEnn0K7Gq4svRARnAhl+X9DcLwz92mqvsr5jlUV
         dbNzkIwDYeQjUFwHZgOC9Tz7NUcdhyyVedJChogfVUzkObTN4AlglLdIsmKjyIi1to3k
         Tech19ubLx1NOtEVq40qqcdBBsj7dNLTDrPMKxenOQmbhPTzdwfYuhWDVBM9IBesqTM3
         ZK/LQS4fza3xm5uJrowU+PLXPcuzDH1ExKdKx/njoI5wL6eyuWLDlP8DKBN5XmdG99Xn
         KIbD0JHkS64dUkzFZtXkCDJ8HMlyKDPRRXXE2AdAGydwPPSR+nINxdwgupTCFgFkvX4/
         Eq/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ujxUJoArnguaa6MdNkKrcajYxLHFoiyIc3Mj4kKOLls=;
        b=LimvX5moBpWOMHt4V0TJVPJFMVOxX9tqKvPRkLf09zmHKIogyZuy9X28LKv7H+bH5u
         pKsBvxwgq53BmuI6/6BU+gw3rWtCIlTQky0jpNPMcSBBVF5z5+Mn1e+aVqJKhOFg+Wes
         brhCTcZB/7a4PY2TEG9u3tj66/iir4xisUy2/EiA7C93YV+6MoZVlr3hPpy/rQDYh8Lv
         jUvSaqWKK0WBCtmv7+MQejUkqYIQhWm+VcTCndNqjpak5+fVtV1JjaFv1LTVBjWzFiSw
         lJEvODC1K6sZaSXR7lsIJNUNCbTsIyYc6yPnygZJvILLRx2Mlo7P4ri3smlBpV5PLOg+
         7PWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cilium-io.20210112.gappssmtp.com header.s=20210112 header.b=SoIXUOtE;
       spf=pass (google.com: domain of joe@isovalent.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=joe@isovalent.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ujxUJoArnguaa6MdNkKrcajYxLHFoiyIc3Mj4kKOLls=;
        b=U48soUc3GlSj+DLj+a9JMUZ18RYE/OiFDIiRhuBhNtPVY2Bk/PHchcmi1d34cAm5WT
         cD3xjoENibFHoodMzY/RGyyDM7icYiyas+19HQCw2a0Vr9DIwBn3vJzIvaPGaO3ktzEp
         JwftjJzD/o7rtySZccp92txLfQkpPAiNnGJ/tzW29li121hNSgLxbERnLs+fmAHGlCoK
         1gKf0lG1zlQ9nU151CyRw1ih7FxDPIYaBtP/btlupp7XWt7fcTvi/2pCweYLSjDeSMoM
         XnJBH0WtjhEdlOnCdV0f7JA+s2hsprVfedo7DBEg2H/PXGf4y5lKFie7T1ZxG2E9zRDI
         Awww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ujxUJoArnguaa6MdNkKrcajYxLHFoiyIc3Mj4kKOLls=;
        b=xQ2BQJsrpFkp0Ul/vp8EfT5ltKf6ZIHYlvdwmTJsS0dmtrh0vtvdFhPN4MHNTyUAsO
         +H+JjPw8VZdnX2qzXrvMZURLdAZByLpT78U4Acv13XuGXCUVfhEeASX1JJMORhwvC/kO
         JDPO2SZOH4Rl8u78uFysZfADIoDTGStA3MJdIGcFMoBz9ZLnRZ6uOrlZd4ZquNYWB5Fo
         JquxSuurN93U1pbCibZaZne1lVq6AJ31ftBi6dWtt1uMvtyzufQI02goSQB+w9GYVInf
         L4tybEz3waZgzQ5mnJLJOWa0VsmqNCDz7I+1hOYpHPqBcifDqxzewhfvIWUbJV78Q3KA
         y2tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fw6LtO9lyAipSw1Lc7zUxU5ipFmu+CNWh8t/dxTPYQyhHcwDk
	zOG6Z4YRNhHMecY47f5yU3c=
X-Google-Smtp-Source: ABdhPJxqpcn3e1qP52Qltf5esCATAhAVyHVAZqadETSU8cj01+Q1IPvk2x3LTwioQyLqhOLZwVdMKg==
X-Received: by 2002:a02:6987:: with SMTP id e129mr572552jac.136.1634752872900;
        Wed, 20 Oct 2021 11:01:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:3428:: with SMTP id n40ls530314ioz.11.gmail; Wed,
 20 Oct 2021 11:01:12 -0700 (PDT)
X-Received: by 2002:a5e:c018:: with SMTP id u24mr465785iol.197.1634752872426;
        Wed, 20 Oct 2021 11:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634752872; cv=none;
        d=google.com; s=arc-20160816;
        b=wYXHRWnSpw3NKYV2u4YrsTe5XGAG+T0yhYauj8g7kW2gkvlIKuAwvPdm+4/IgJgLWT
         Jp/Ceo4flLwDAkoRq1PJefTECVspguKQ6NJDbGQI7c2K5ZFJP81w/hhgrG9G0kyF6s5H
         /KhQTnxVxNw+n/wRLkBhh/uLHwm6l5Hg/yC3NEVwbds4536FkwzXEDQrkiDMJRI4ww6N
         lHSve8deRxhAiex88olT6vtzgAZH8kD3FqxE9Z/SNqOeQefzTydLsh9IWrezjvWAaD7n
         mBbc9JWC4lDIyDHWROHLgjk/cfeg7i7T9oJCVMEDszBWnFc+fzRQFVY97qi4Ev/ICwMX
         /xEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Cupflte1zq90gW1ccTXvlIjvbCfDXy0IhF6QWIY1PEY=;
        b=Yr66/EYuWz9nQ6SUZaQM0Qr+davfGJmeE2SJfWWfvd/BRHDLTXyoHN45CJy/0Xhoef
         InFYyzapnms0IhI5yR2/sQQd1Ty7gKGRiA/K7SaswJFCiqinuDc7dpXqfh6bE4e/VjfC
         1XjhfkodgpU9Qr8OxdCZ/YNnGeegZyYYtLVRkK8N6Um+BEHh7iofMfzXdw90eSE5TiDN
         4J6As6pZsjL5vrrZVEEwySqls+SLpprlxG559mLAvASJlDMoZi/4wHPtJMrmwuHtq1tV
         jiJraoP+nU4VjwhjtnqkJhZFYQfjN7otCQXOR26oAlOkiQZSPl84f6ZppS4k09WVi9sZ
         2RkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cilium-io.20210112.gappssmtp.com header.s=20210112 header.b=SoIXUOtE;
       spf=pass (google.com: domain of joe@isovalent.com designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=joe@isovalent.com
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com. [2607:f8b0:4864:20::330])
        by gmr-mx.google.com with ESMTPS id p5si224571ilo.5.2021.10.20.11.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 11:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of joe@isovalent.com designates 2607:f8b0:4864:20::330 as permitted sender) client-ip=2607:f8b0:4864:20::330;
Received: by mail-ot1-x330.google.com with SMTP id y15-20020a9d460f000000b0055337e17a55so1773776ote.10
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 11:01:12 -0700 (PDT)
X-Received: by 2002:a05:6830:3096:: with SMTP id f22mr620491ots.195.1634752872088;
 Wed, 20 Oct 2021 11:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <20211019144655.3483197-1-maximmi@nvidia.com> <20211019144655.3483197-11-maximmi@nvidia.com>
In-Reply-To: <20211019144655.3483197-11-maximmi@nvidia.com>
From: Joe Stringer <joe@cilium.io>
Date: Wed, 20 Oct 2021 11:01:01 -0700
Message-ID: <CADa=RyxEQwQp++1JD67h5_JZMokGhMi6ediGKjQSQeBR2-TeBQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next 10/10] bpf: Add sample for raw syncookie helpers
To: Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
	David Ahern <dsahern@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Brendan Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>, 
	Lorenz Bauer <lmb@cloudflare.com>, Tariq Toukan <tariqt@nvidia.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: joe@cilium.io
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cilium-io.20210112.gappssmtp.com header.s=20210112
 header.b=SoIXUOtE;       spf=pass (google.com: domain of joe@isovalent.com
 designates 2607:f8b0:4864:20::330 as permitted sender) smtp.mailfrom=joe@isovalent.com
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

Hi,  just one comment related to the discussion on patch 7.

On Tue, Oct 19, 2021 at 7:49 AM Maxim Mikityanskiy <maximmi@nvidia.com> wrote:

<snip>

> +
> +       value = 0; // Flags.
> +       ct = bpf_ct_lookup_tcp(ctx, &tup, tup_size, BPF_F_CURRENT_NETNS, &value);
> +       if (ct) {
> +               unsigned long status = ct->status;
> +
> +               bpf_ct_release(ct);
> +               if (status & IPS_CONFIRMED_BIT)
> +                       return XDP_PASS;
> +       } else if (value != -ENOENT) {
> +               return XDP_ABORTED;
> +       }

Is this the only reason that you wish to expose conntrack lookup
functions to the API?

You should be able to find out whether the TCP session is established
by doing a TCP socket lookup and checking sk->state.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADa%3DRyxEQwQp%2B%2B1JD67h5_JZMokGhMi6ediGKjQSQeBR2-TeBQ%40mail.gmail.com.
