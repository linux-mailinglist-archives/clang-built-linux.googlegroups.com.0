Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBY4TYCFQMGQEFNKVCWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 40717434B14
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 14:21:59 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id r12-20020a5d96cc000000b005dc1dcac76esf15565101iol.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 05:21:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634732517; cv=pass;
        d=google.com; s=arc-20160816;
        b=qolaXco635CpUW3PzuGgC8yv4z82w1fXxjGVro+nXgzeo7wliP2jNvrgq2R9GqQ2+F
         DrlnkLBf4SRsrJTiQT/+l5zGsDrCQ5FqGEf3G6ShDYm0/9NVpxQARDofvvag3W0QOrRO
         fWI1OIc9LKb9cl+HA9rys11szp4lw9oRLmcsG8gy9qySEqgZq4/imnHUCDiwNTbumCsb
         cyRx5EeTIIWyIu5E5DsXsqFJztjFjIbXvB32Iz4+/Vz0xmtXt4HVCYtQmIhaRgW73qso
         0nWhFgH3gtXmI/NtdpEA53GYue83IlFZ/Smasc+0p7phBhhMZATKiRkj47zDL3OFOliF
         rDGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=OW3ed/i/Zh8GE+woetkF7RNNNuC6KoDAZMVVIDOdT2A=;
        b=tb19kTijfZ8GXoMOFwqXoPMw52XFEOZ1euKI56GXZ61QAvZKJgUHAJMWySKYkvUl8x
         IEo2IXpNoVfEVAkNZx5b4YT4Kg3ob05q33R5i1OFYYb7CNNATA4GpAEpDDsp+yZehZDl
         bpPgDbD54WaRDX0YSsoLFydxEmd+1zdUGIT6sdouiBJUf46EH0lM9zWW736jty5CqW4c
         SAhMSHCtLac3Kx8gBnYryIEdOzTr9o8YOEd9H6piGY3DXxUiEsLb7QJB0AqkB5THruov
         nY1889/IGw5kmK5ekIHgtxoYPvgvqbqscRcuCN5A0eAiwBX7ac1UO7o9pzYTyNElTkv7
         s2/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dZJWUXjA;
       spf=pass (google.com: domain of toke@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OW3ed/i/Zh8GE+woetkF7RNNNuC6KoDAZMVVIDOdT2A=;
        b=IDZpbVfV9lYHowPTzSBZST9RMk+weQTDaO/G43LA5IrjVC2rJyOyipyuf8lkmfRU8q
         wI8J49s5ej0MDh43voK2E1IBl0w2QhXmeot1m1itTT1XR8QxyVCVjrVct03xwrv7//93
         t+NuZuTakO+u6dQ9W+m8zoONb3Wf/TmQZ8Q6TQRIhMVX9HJnvgpH6h01mPaxUcfFhFu0
         7cpafvwmoG9bdyd4zLDXP/PkeUyaB7EUOdlmCWizp0qx0zC3BygDKamkcJcgok4Y5Q5t
         BqoA+c55hZVH6Ea7Rn+SGhRx3arduB4cpx5ZaO5ogpQFOJ4pEhDzvikUBpx5nObpKJey
         3ZvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OW3ed/i/Zh8GE+woetkF7RNNNuC6KoDAZMVVIDOdT2A=;
        b=kGO48N3rquILMlSoGYXODfelVv7EsT9p0YaJtjKoLqwxUMJsDdLMKw6N4nUtvTpREU
         7mS3RUP724PMm3YG+VjwYG5kfFOC7RSGytAIgcSyh2HLeBwCg3EIT7RsXZSNIZVxJaki
         hCeBTiWkQ7ejk1a4zYB6xOAztybbD5lvmD32X8S4sU3R+KidrRSROeEPaUO3NW28L6/2
         3TiySmouC/u5DqneV01GWf5nDuXcUWtO5demcM7reEgDHPuu3NCS7MJXmYMUc1Sf9Qx8
         /8aKmm3Zc7rMrPqH1Xx2NwZuXaCTh6eghEdYKKsR5pEe5xin3pVb28gS6ifYLXe0NU7n
         HIyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NR3OZcm1+XRVwHtOyeUrROlrO90x+8MbatFGj7B2zv7OfoEHt
	r/pUYnBXLOLih1nS+ejb8gU=
X-Google-Smtp-Source: ABdhPJx4K7GZjaztQWMcKy4hihu3/jJ/kwn9Nnh2XslPRtWJD5tUxo8Cm8gc0tZ2x8EVhs7J2EBG6w==
X-Received: by 2002:a5e:9612:: with SMTP id a18mr22640191ioq.57.1634732515966;
        Wed, 20 Oct 2021 05:21:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:3428:: with SMTP id n40ls351487ioz.11.gmail; Wed,
 20 Oct 2021 05:21:55 -0700 (PDT)
X-Received: by 2002:a05:6602:1594:: with SMTP id e20mr12193546iow.14.1634732515540;
        Wed, 20 Oct 2021 05:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634732515; cv=none;
        d=google.com; s=arc-20160816;
        b=P4l36gcZ4YM/xJCJ9SU32ZU292DOod+0SheJ0znxBumgUxFyH8hnuJBg7qYE1xSc8t
         8qXeMOvscmzSV4TKjn1TaEAKT0wNQBW+QlJaw9s7eGEtEaToDTzL8diraz6kf2POyEu3
         WoX1RwPU67X15mwOBQmmix2+LXpg7l8BPr488xaH8DivhzeiDT2o3DdcKuzdGHFNveW1
         El8Z3wWT/DI5wV5dl+HS1k+ljwiyh74kcpJ6uNLYr6JfuSX4hq4I+QEsFLO4J2G7XF5o
         d+/MUlHwWdumQY8wyAWObdECPeEYAUj6JFSo2kzNGVGYncVB7Ieqo2RJhZCSfueMv5My
         JN/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=MglysCWfOaKC7TH+QAW/uW1q/Tj9LCbAd8L7q/nFdkQ=;
        b=zbX92xAEhNl+TuBZJ3GINE7E38wSGA6Vc7G6wQIGSzg/Q7H8oe5pOQTBWZadBUFNjy
         ddh8cY8oUSKF6ySWlgZDKMrvcp1TZp3qixc91hpEF8vSm4rRWyUd+n8/LdUf3knekOAi
         weu9/tPkh62gepDgM9BkzkkBsyEZQ+UCogl3p1lLgaeM9PfZ0MWB0zSlExeSZ6SKu+Bk
         2LwAN4/rPFh7YGL2YkzfQMzCbPtJY5eRIgv9eBhz82ZLiCwKVPyCPvE+2FIo96GcMSAn
         YnFXUOF6VTrCZsUOUXFTYk10pXB1Q22zr6cXJ4HUc/ddyTzRyIxz7H9g5YuWKzuK2Hzp
         +Esw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dZJWUXjA;
       spf=pass (google.com: domain of toke@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d20si177728ioy.2.2021.10.20.05.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 05:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-e7ZLxQxkNrmM2_fKEQFl0w-1; Wed, 20 Oct 2021 08:21:53 -0400
X-MC-Unique: e7ZLxQxkNrmM2_fKEQFl0w-1
Received: by mail-ed1-f70.google.com with SMTP id u23-20020a50a417000000b003db23c7e5e2so20832905edb.8
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 05:21:53 -0700 (PDT)
X-Received: by 2002:a17:906:2ccf:: with SMTP id r15mr43670262ejr.182.1634732510394;
        Wed, 20 Oct 2021 05:21:50 -0700 (PDT)
X-Received: by 2002:a17:906:2ccf:: with SMTP id r15mr43670018ejr.182.1634732508083;
        Wed, 20 Oct 2021 05:21:48 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id d18sm1137041ejo.80.2021.10.20.05.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 05:21:47 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 8BFE5180262; Wed, 20 Oct 2021 14:21:46 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Florian Westphal <fw@strlen.de>
Cc: Florian Westphal <fw@strlen.de>, Kumar Kartikeya Dwivedi
 <memxor@gmail.com>, Maxim Mikityanskiy <maximmi@nvidia.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song
 Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, John Fastabend
 <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Eric Dumazet
 <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 David Ahern <dsahern@kernel.org>, Jesper Dangaard Brouer
 <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Brendan Jackman <jackmanb@google.com>, Florent
 Revest <revest@chromium.org>, Joe Stringer <joe@cilium.io>, Lorenz Bauer
 <lmb@cloudflare.com>, Tariq Toukan <tariqt@nvidia.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 07/10] bpf: Add helpers to query conntrack info
In-Reply-To: <20211020095815.GJ28644@breakpoint.cc>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <20211020092844.GI28644@breakpoint.cc> <87h7dcf2n4.fsf@toke.dk>
 <20211020095815.GJ28644@breakpoint.cc>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 20 Oct 2021 14:21:46 +0200
Message-ID: <875ytrga3p.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dZJWUXjA;
       spf=pass (google.com: domain of toke@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Florian Westphal <fw@strlen.de> writes:

> Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com> wrote:
>> Florian Westphal <fw@strlen.de> writes:
>>=20
>> > Kumar Kartikeya Dwivedi <memxor@gmail.com> wrote:
>> >> On Tue, Oct 19, 2021 at 08:16:52PM IST, Maxim Mikityanskiy wrote:
>> >> > The new helpers (bpf_ct_lookup_tcp and bpf_ct_lookup_udp) allow to =
query
>> >> > connection tracking information of TCP and UDP connections based on
>> >> > source and destination IP address and port. The helper returns a po=
inter
>> >> > to struct nf_conn (if the conntrack entry was found), which needs t=
o be
>> >> > released with bpf_ct_release.
>> >> >
>> >> > Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
>> >> > Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
>> >>=20
>> >> The last discussion on this [0] suggested that stable BPF helpers for=
 conntrack
>> >> were not desired, hence the recent series [1] to extend kfunc support=
 to modules
>> >> and base the conntrack work on top of it, which I'm working on now (s=
upporting
>> >> both CT lookup and insert).
>> >
>> > This will sabotage netfilter pipeline and the way things work more and
>> > more 8-(
>>=20
>> Why?
>
> Lookups should be fine.  Insertions are the problem.
>
> NAT hooks are expected to execute before the insertion into the
> conntrack table.
>
> If you insert before, NAT hooks won't execute, i.e.
> rules that use dnat/redirect/masquerade have no effect.

Well yes, if you insert the wrong state into the conntrack table, you're
going to get wrong behaviour. That's sorta expected, there are lots of
things XDP can do to disrupt the packet flow (like just dropping the
packets :)).

>> > If you want to use netfilter with ebpf, please have a look at the RFC
>> > I posted and lets work on adding a netfilter specific program type
>> > that can run ebpf programs directly from any of the existing netfilter
>> > hook points.
>>=20
>> Accelerating netfilter using BPF is a worthy goal in itself, but I also
>> think having the ability to lookup into conntrack from XDP is useful for
>> cases where someone wants to bypass the stack entirely (for accelerating
>> packet forwarding, say). I don't think these goals are in conflict
>> either, what makes you say they are?
>
> Lookup is fine, I don't see fundamental issues with XDP-based bypass,
> there are flowtables that also bypass classic forward path via the
> netfilter ingress hook (first packet needs to go via classic path to
> pass through all filter + nat rules and is offlloaded to HW or SW via
> the 'flow add' statement in nftables.
>
> I don't think there is anything that stands in the way of replicating
> this via XDP.

What I want to be able to do is write an XDP program that does the followin=
g:

1. Parse the packet header and determine if it's a packet type we know
   how to handle. If not, just return XDP_PASS and let the stack deal
   with corner cases.

2. If we know how to handle the packet (say, it's TCP or UDP), do a
   lookup into conntrack to figure out if there's state for it and we
   need to do things like NAT.

3. If we need to NAT, rewrite the packet based on the information we got
   back from conntrack.

4. Update the conntrack state to be consistent with the packet, and then
   redirect it out the destination interface.

I.e., in the common case the packet doesn't go through the stack at all;
but we need to make conntrack aware that we processed the packet so the
entry doesn't expire (and any state related to the flow gets updated).
Ideally we should also be able to create new state for a flow we haven't
seen before.

This requires updating of state, but I see no reason why this shouldn't
be possible?

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/875ytrga3p.fsf%40toke.dk.
