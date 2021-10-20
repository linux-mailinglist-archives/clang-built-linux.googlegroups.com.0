Return-Path: <clang-built-linux+bncBCTKRTXYNEINVHWARMDBUBCU7342Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 662BA434B7E
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 14:45:18 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id if11-20020a0562141c4b00b0038317257571sf2696269qvb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 05:45:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634733917; cv=pass;
        d=google.com; s=arc-20160816;
        b=p6zLCLUqLT5IocB0NvSWr6TrnomTsV16GL7ILkCAL+KBDU50QUyK0pg+IHHpj8FvnH
         0azFwsUxO7b2zCqa6lWgrvtDFZotrhQDq/2PMFSraJzTTZQY0MRrHbCepsKJKva6wt4M
         rqE356b7VFT+CdVoBEPVzhdEdphqpZpBzb4xLYQSX7XTaCi6VpIMQJ8h3Jykof1bn56D
         AYA6nrwJ0elyi+kHfDP1Fqao736I19nYllwI68Q9ToBh5dY1+9bEagmatpf4LWiTBpnw
         iJmxiyF9IB3ZSsHsAvSB7OgJpBmI9eT7yJmysDiymY7tPJU+BVJ7nRdEFSsiAWKpz6dz
         4N1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=qa6mMuZsugq+hBF66NHG6Yn2LA3dbDvmO8ddgM/KAxU=;
        b=z/NeaNSRmNjOoANGgV/rHnRwppxWO8XKn34PhXLtTs3pPf6FRBYNzPy1rLrUkh8Ctz
         Pwqo8+RXmcm0QRKeLGLZ5kI2HkVww60NLXz1qT5yoCzsNohO8ojdLx2HilX9SGOhg+IZ
         ZQ7Qu7VuMeAA1K/JjsiHzWQqVYOzSeefjcL46kb9j0ekmwccIqIR8EgWWHjXttp126Rb
         3VDUhJcAP8acQA7pN/JnOot0cA7hUdYhHG7z26A76hBkfJDMoZNNF+A1gYwf53714J+E
         2LPiRuk8+pHDp17UF8UfWTs1OtGa9ujwBrkwRbrambTOEEkbNdm+eUu+voqaijXmZw4d
         ckgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qa6mMuZsugq+hBF66NHG6Yn2LA3dbDvmO8ddgM/KAxU=;
        b=dNor7SoiOJ/4lNsORcUoW6d7hSkrc/PqgVo1WbCF7BvpIEhC1WVjuxHzPntDfX9Nvw
         oaI0GxbwqB2+vJxHhgrFFyYklnoR9x5SQTJV5Z9SFG7PnOOKUqgoDN8GiTP9z6quGaVp
         az1tNOf4aNNGwIXKeulCmGJTXheJlo2YTyNMiWcR2M0K2TQiaEUMsorCFWUO6kG0L9S5
         b3v99aVHd049blk0gQClbADjpgy97xa3t9+4TD7Bn8n8B86Y/WRZVUJDw4dd9D/PgL13
         N4I0XoW3Jh27ql3/c/zQ45gMNUBG48K0UZRjx0rL58SvNgZlBWKrp6seaYgz8SvzlwIE
         sDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qa6mMuZsugq+hBF66NHG6Yn2LA3dbDvmO8ddgM/KAxU=;
        b=sl3oZ1RZVk/M+Ei/1JVE0M9y7MakG+HXwLHZZo1vB1AH4tkzf9U7Eijr7VRbQRh5Jg
         6dWvG6TYCkMjVFtK/iWXTEVS8QocOMgNmu9n4ZbJtpQXPMeDgCfYgU6AxJTx/sXweP7b
         3fbD9CSN+rQ+O0LVgAiD2QuYh2NOrgHzEqZ9rQ9XoSUXgEaO7WnvcBJIq29BkOVcMUex
         HOJXEMeTlRExHOyilT9nYXbic5rZHC31/SZnsiL//7b1nhVj2TL4Wq5rLWJZKxH6AUV4
         eyFq1z22GwhQa/y3f/XoQdTO89JY4i/SiaO6Ek9XbJtWDiaC6dd4gnkUzhQihw4/FK/p
         tkkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532r7L8z8mUXydcafoJOFGnepqiro96faAOUAnH8b2kkasWBF6V5
	AohEBCODTDgAASag4ik9dN4=
X-Google-Smtp-Source: ABdhPJwpTnG020ZeVnbiNIMIPeX/Hxmtc0cKVKy0F3iQPWDuzyd/CjaxMWNny0v5qc3+QocjVp2UxA==
X-Received: by 2002:ac8:5a0d:: with SMTP id n13mr6584035qta.198.1634733917161;
        Wed, 20 Oct 2021 05:45:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bb05:: with SMTP id l5ls1077247qkf.3.gmail; Wed, 20 Oct
 2021 05:45:14 -0700 (PDT)
X-Received: by 2002:ae9:d842:: with SMTP id u63mr5132522qkf.44.1634733914626;
        Wed, 20 Oct 2021 05:45:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634733914; cv=none;
        d=google.com; s=arc-20160816;
        b=MObFfodDUKPYgMjTERxzIU+WnqNAyIcmzgAhDwbMA6O4KQL8XlI2p0Zbg54d3BxaYs
         iw5LZ8CBABINagg71oeA723qzkZNg5qkOsreLEx7Lew/ll0LIoY0R4h6I+lQVtKkyC5A
         bjdD141kr7e8ISJYe7Nc6uS6xWzAJU/R/wKO8zMApw7aMHh6t2SsGMDYrSvbzsd759ap
         Bbcri/iPLhFbUxBJLNr53aVyZDfYZiLsyVDXRay+YW5jUv/HTmqtq3j4/zE12MSoXZh4
         9QOSpZGVNDwhu8vdFTvSAprvsJYsAeG0hBm6JzQ+p9ar6Z82V4we90shm8oh7vOiV+0M
         sGcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=6i32yzwZJx3i3sJoGL8SJHlSlEtvvi/E3OsVdrPid3E=;
        b=O+AeTYA6MZ1kyrrX//tESUsvXJ4Q1sYD78I/VUrN6rCRqKzz//on0b9H/lFtYWUbRr
         DcVG9q8bOBj5IFRvGHjvwTS3y0GTWLFhKGyPzb3FIZnmlK9rO/SCeeadwsn80CV99Cnq
         c4RxO+wlYk3oC0UewNQgU2m/rcZGNNARASB4PLieNniTJVDHpr2hlBF838qHmp+5BxmZ
         JtygBhrEy1v2/3XZN3iCMQezo7ZOyNY7m/DY64l+zX/YQz3SUDVfVPtRQ/WlbeiBvsXr
         a1NqiLa98Kp9Q4r4lqBrEWqvfWc2wRxLUErEET7PiMU6bCZWsXG57a9ztGTpX/ADPveR
         D34g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by gmr-mx.google.com with ESMTPS id z23si227263qko.6.2021.10.20.05.45.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 05:45:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1mdAxl-0002e4-9A; Wed, 20 Oct 2021 14:44:57 +0200
Date: Wed, 20 Oct 2021 14:44:57 +0200
From: Florian Westphal <fw@strlen.de>
To: Toke =?iso-8859-15?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Cc: Florian Westphal <fw@strlen.de>,
	Kumar Kartikeya Dwivedi <memxor@gmail.com>,
	Maxim Mikityanskiy <maximmi@nvidia.com>,
	Alexei Starovoitov <ast@kernel.org>,
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
Message-ID: <20211020124457.GA7604@breakpoint.cc>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <20211020092844.GI28644@breakpoint.cc>
 <87h7dcf2n4.fsf@toke.dk>
 <20211020095815.GJ28644@breakpoint.cc>
 <875ytrga3p.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <875ytrga3p.fsf@toke.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: fw@strlen.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=fw@strlen.de
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

Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com> wrote:
> > Lookups should be fine.  Insertions are the problem.
> >
> > NAT hooks are expected to execute before the insertion into the
> > conntrack table.
> >
> > If you insert before, NAT hooks won't execute, i.e.
> > rules that use dnat/redirect/masquerade have no effect.
>=20
> Well yes, if you insert the wrong state into the conntrack table, you're
> going to get wrong behaviour. That's sorta expected, there are lots of
> things XDP can do to disrupt the packet flow (like just dropping the
> packets :)).

Sure, but I'm not sure I understand the use case.

Insertion at XDP layer turns off netfilters NAT capability, so its
incompatible with the classic forwarding path.

If thats fine, why do you need to insert into the conntrack table to
begin with?  The entire infrastructure its designed for is disabled...

> > I don't think there is anything that stands in the way of replicating
> > this via XDP.
>=20
> What I want to be able to do is write an XDP program that does the follow=
ing:
>=20
> 1. Parse the packet header and determine if it's a packet type we know
>    how to handle. If not, just return XDP_PASS and let the stack deal
>    with corner cases.
>=20
> 2. If we know how to handle the packet (say, it's TCP or UDP), do a
>    lookup into conntrack to figure out if there's state for it and we
>    need to do things like NAT.
>=20
> 3. If we need to NAT, rewrite the packet based on the information we got
>    back from conntrack.

You could already do that by storing that info in bpf maps
The ctnetlink event generated on conntrack insertion contains the NAT
mapping information, so you could have a userspace daemon that
intercepts those to update the map.

> 4. Update the conntrack state to be consistent with the packet, and then
>    redirect it out the destination interface.
>=20
> I.e., in the common case the packet doesn't go through the stack at all;
> but we need to make conntrack aware that we processed the packet so the
> entry doesn't expire (and any state related to the flow gets updated).

In the HW offload case, conntrack is bypassed completely. There is an
IPS_(HW)_OFFLOAD_BIT that prevents the flow from expiring.

> Ideally we should also be able to create new state for a flow we haven't
> seen before.

The way HW offload was intended to work is to allow users to express
what flows should be offloaded via 'flow add' expression in nftables, so
they can e.g. use byte counters or rate estimators etc. to make such
a decision.  So initial packet always passes via normal stack.

This is also needed to consider e.g. XFRM -- nft_flow_offload.c won't
offload if the packet has a secpath attached (i.e., will get encrypted
later).

I suspect we'd want a way to notify/call an ebpf program instead so we
can avoid the ctnetlink -> userspace -> update dance and do the XDP
'flow bypass information update' from inside the kernel and ebpf/XDP
reimplementation of the nf flow table (it uses the netfilter ingress
hook on the configured devices; everyhing it does should be doable
from XDP).

> This requires updating of state, but I see no reason why this shouldn't
> be possible?

Updating ct->status is problematic, there would have to be extra checks
that prevent non-atomic writes and toggling of special bits such as
CONFIRMED, TEMPLATE or DYING.  Adding a helper to toggle something
specific, e.g. the offload state bit, should be okay.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20211020124457.GA7604%40breakpoint.cc.
