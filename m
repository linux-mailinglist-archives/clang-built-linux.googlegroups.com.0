Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBBUEYKFQMGQEAVM2RBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4225E4354CE
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 22:54:31 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id k20-20020a05620a143400b0045ff6c9119bsf3028413qkj.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 13:54:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634763270; cv=pass;
        d=google.com; s=arc-20160816;
        b=cgu3DRJp17LJ2XHGCWtEf8D750jDKSkesl959BQA8cezJ3IyJ3LpbwLjMKq2U/lp3m
         2MS9DRcwIZPwnxK9q7qUR94ypPKKM5nZEODxiNxK3AgjsYlhpbNVH1LRjXWYWYRBR9q3
         jbZO6yRo4Y2/jRYmapZkloQgS+OsRcvJ5Io0cmpItAAHEokDpBujoL6zJAB74NRYQSod
         E8fj3LtPaHywEgUxQhR/nKtZ/unSagy0Hlf1IfTHr2o8RHa6+xF5YhuOGqlCEUcfFqYL
         /ofuQJiBr3BJ4cN7I8Q9c0yPCFPp0Lka3F4rhzW/eDFeWgMc33oPXcYwzfiszAhPw3kF
         M0uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=2N5zdzbNTldwzNAR7JB4aNyMqtQpaRrqJBD+qsO1YE8=;
        b=rjaUk06ARWQoNuKfXIKloTvbnM3v3uH8dtIZ8X1iCbCpxj+DskDz2UA4jm2Y0pQjeL
         zr89eU3jt/w/HfJ6scV2KPydsU92waMqzqrQcagnOmFLr2BOCokGWIrv1/c77BFcObAm
         ijmW2f+jqyIzgRMK91cbcvsuFOgAIMPC2C70OLe8HRNRon0vhcNJcVh7v+LPuRhG+8dp
         C8snR4cvBO/h3DqYTpPUhjocx5YZtNBmp4uHzz2zrC16hTcyrIXN/C9e9qJqb+L5bCp3
         WOnvBKAuTZwLAV4vhRLC7BDYmXqeHXJQPN2vRWB0o1YUWmgOhZpBXtRPf25w+FWb6dgb
         o57w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BFiNPQfm;
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2N5zdzbNTldwzNAR7JB4aNyMqtQpaRrqJBD+qsO1YE8=;
        b=ZCWclXc8d/l4UrP9SAepFh3X747EJcah740kFhHyFGeUVqkAbjocwc0Hu8rFZ0Djt8
         5Lq1AMI4AJ9y31uokgiyOdDED96Fsv/3mdh41H9ed4rnO3S8wtJYn1nF+SOV4DlU9dFg
         o37mLWZmTdDVU2yxuYJ4C71k3dvcIb5giBSSE2FBgDcWn82wMEBK7aKRCd+UaVRRRItu
         LFJ+ZzoxPmx1WAF5aby0Qc76TU8PuydMLtPH1M1Kv4DHBDWUSlnrTkg0nMYcJIJGlCHt
         Qw/xmHwztf5XWEGJdcVOS8Wf3XZQGvRmu9+ILrMU9WAYQ9fzfjk2qKgYel4CG2ojCz4e
         BRTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2N5zdzbNTldwzNAR7JB4aNyMqtQpaRrqJBD+qsO1YE8=;
        b=hMoUXgBSYWPHQJlaNmne4ezR2fhLSJxj3xh9HXeg12a8gtOQUoq8V9gUy7Gh4moSU7
         pddyWGRMlByDZDneWnr3KIqYJiMJ4hBaxNccKjs+gX7BoDm4J0OPupqjJ/VGNqQ68oXY
         ZQH5wX6imqlc2mH71n0SKwxg4vpFINsQl+6KM7K6BhuMKmxHNOg/zUC9NTn6P+DFWp7V
         2P181XpP48J5u/0jVKdyNnQdqrx5Gcwkg3qZD45aBLze9RXj95JpxqOriWXOnmmB1GlM
         o6f9AJ7R/sWHuLDG+MAaS1DxSUTK2XNk8BQEWNjjEt/u8r22gtV+Q4mEG+F20PR7/mf2
         QJsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pdSIexjt1UaYSdJRuCk/L6YhqFhIhy/5yy7eKOu5EsQq4Auga
	lxZTsW0O4XowCTkjKh3i2hQ=
X-Google-Smtp-Source: ABdhPJzpvVgeYHm9wRKMSKj49KeWmw3HGVGs2biIE1JKR+blWYv+TX+vuUxFyMuOxxlObjnkNmBMdQ==
X-Received: by 2002:a05:620a:4407:: with SMTP id v7mr1203509qkp.45.1634763270198;
        Wed, 20 Oct 2021 13:54:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e646:: with SMTP id c6ls1011977qvn.11.gmail; Wed, 20 Oct
 2021 13:54:29 -0700 (PDT)
X-Received: by 2002:ad4:4691:: with SMTP id bq17mr1280072qvb.56.1634763269795;
        Wed, 20 Oct 2021 13:54:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634763269; cv=none;
        d=google.com; s=arc-20160816;
        b=gKecNcdVWbEfpVhgdKjgMLZIWe0UQ9sxhW55pyn78tsRFf84zJ+KgWEx8xwAlkZVly
         vqyXnSf3fl8LsD6Cr8Zg2PhhgTo326grCFgLm8X/Afvn0daSgpmXQHvrQn+z5j2N54wX
         VrQ+x+QRqoS71cNlqYf/53W4z2Ekyt+8bujbXf5qchaXwc3/7lbvRKfzepCCAnQ0mijO
         V9jCM24V0oZ8M7VQfX2VilDwIKavCcMkBZqcWRHve4pN6jYEVbZ2oW+SQnGvH1OPbRqW
         0a7wOl7HaFbo/NC21JrR4j37RcsCI412F0ot3KYppk7etiIV7thiflsYG0/02xmWZ/Jg
         mPDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=JlVQH1uLv7ZatNMq1r21H30ERd3KdAhMXJbH64TljGg=;
        b=SIZ5jIuBnG83b7mJE2VJwLwdDMOfYbg4VTL6RELlkfKgwHI0WX3KKrfI8bBL+iH+ad
         g0ihz1rlzRPsw2VeTgN1FZ0Cm0/uODbZUB4GzegX+ZnPCcWcUvEQC+4s6z95I1Z8VuKY
         g/8sbOMLYfgh34qJbaWkMKR/meTKI87YIyjo09XB0tgO0g7L+2RAoNHx38+eGhRgBONH
         +lV0Ywkow0F8HtnFyeleo7ajee0v5MXjEDPCC2gcVEErey9wqN7vQ7Rmg+gIbEUaTXiy
         nAKVF41ubBaHJIRAolZiqAq1FSdV2bv031cXULA4eCylYebeY51nr8D2HnQ+e187OxY5
         CcpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BFiNPQfm;
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id b8si309353qtg.5.2021.10.20.13.54.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 13:54:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-VG-AKSBnOue8E8EA8KTUDw-1; Wed, 20 Oct 2021 16:54:28 -0400
X-MC-Unique: VG-AKSBnOue8E8EA8KTUDw-1
Received: by mail-ed1-f69.google.com with SMTP id u10-20020a50d94a000000b003dc51565894so15511959edj.21
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 13:54:28 -0700 (PDT)
X-Received: by 2002:aa7:c952:: with SMTP id h18mr1775564edt.18.1634763265091;
        Wed, 20 Oct 2021 13:54:25 -0700 (PDT)
X-Received: by 2002:aa7:c952:: with SMTP id h18mr1775390edt.18.1634763263555;
        Wed, 20 Oct 2021 13:54:23 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id u8sm1728823edo.50.2021.10.20.13.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 13:54:22 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 12B14180262; Wed, 20 Oct 2021 22:54:22 +0200 (CEST)
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
In-Reply-To: <20211020124457.GA7604@breakpoint.cc>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <20211020092844.GI28644@breakpoint.cc> <87h7dcf2n4.fsf@toke.dk>
 <20211020095815.GJ28644@breakpoint.cc> <875ytrga3p.fsf@toke.dk>
 <20211020124457.GA7604@breakpoint.cc>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 20 Oct 2021 22:54:22 +0200
Message-ID: <87r1cfe7sx.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BFiNPQfm;
       spf=pass (google.com: domain of toke@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
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
>> > Lookups should be fine.  Insertions are the problem.
>> >
>> > NAT hooks are expected to execute before the insertion into the
>> > conntrack table.
>> >
>> > If you insert before, NAT hooks won't execute, i.e.
>> > rules that use dnat/redirect/masquerade have no effect.
>>=20
>> Well yes, if you insert the wrong state into the conntrack table, you're
>> going to get wrong behaviour. That's sorta expected, there are lots of
>> things XDP can do to disrupt the packet flow (like just dropping the
>> packets :)).
>
> Sure, but I'm not sure I understand the use case.
>
> Insertion at XDP layer turns off netfilters NAT capability, so its
> incompatible with the classic forwarding path.
>
> If thats fine, why do you need to insert into the conntrack table to
> begin with?  The entire infrastructure its designed for is disabled...

One of the major selling points of XDP is that you can reuse the
existing kernel infrastructure instead of having to roll your own. So
sure, one could implement their own conntrack using BPF maps (as indeed,
e.g., Cilium has done), but why do that when you can take advantage of
the existing one in the kernel? Same reason we have the bpf_fib_lookup()
helper...

>> > I don't think there is anything that stands in the way of replicating
>> > this via XDP.
>>=20
>> What I want to be able to do is write an XDP program that does the follo=
wing:
>>=20
>> 1. Parse the packet header and determine if it's a packet type we know
>>    how to handle. If not, just return XDP_PASS and let the stack deal
>>    with corner cases.
>>=20
>> 2. If we know how to handle the packet (say, it's TCP or UDP), do a
>>    lookup into conntrack to figure out if there's state for it and we
>>    need to do things like NAT.
>>=20
>> 3. If we need to NAT, rewrite the packet based on the information we got
>>    back from conntrack.
>
> You could already do that by storing that info in bpf maps The
> ctnetlink event generated on conntrack insertion contains the NAT
> mapping information, so you could have a userspace daemon that
> intercepts those to update the map.

Sure, but see above.

>> 4. Update the conntrack state to be consistent with the packet, and then
>>    redirect it out the destination interface.
>>=20
>> I.e., in the common case the packet doesn't go through the stack at all;
>> but we need to make conntrack aware that we processed the packet so the
>> entry doesn't expire (and any state related to the flow gets updated).
>
> In the HW offload case, conntrack is bypassed completely. There is an
> IPS_(HW)_OFFLOAD_BIT that prevents the flow from expiring.

That's comparable in execution semantics (stack is bypassed entirely),
but not in control plane semantics (we lookup from XDP instead of
pushing flows down to an offload).

>> Ideally we should also be able to create new state for a flow we haven't
>> seen before.
>
> The way HW offload was intended to work is to allow users to express
> what flows should be offloaded via 'flow add' expression in nftables, so
> they can e.g. use byte counters or rate estimators etc. to make such
> a decision.  So initial packet always passes via normal stack.
>
> This is also needed to consider e.g. XFRM -- nft_flow_offload.c won't
> offload if the packet has a secpath attached (i.e., will get encrypted
> later).
>
> I suspect we'd want a way to notify/call an ebpf program instead so we
> can avoid the ctnetlink -> userspace -> update dance and do the XDP
> 'flow bypass information update' from inside the kernel and ebpf/XDP
> reimplementation of the nf flow table (it uses the netfilter ingress
> hook on the configured devices; everyhing it does should be doable
> from XDP).

But the point is exactly that we don't have to duplicate the state into
BPF, we can make XDP look it up directly.

>> This requires updating of state, but I see no reason why this shouldn't
>> be possible?
>
> Updating ct->status is problematic, there would have to be extra checks
> that prevent non-atomic writes and toggling of special bits such as
> CONFIRMED, TEMPLATE or DYING.  Adding a helper to toggle something
> specific, e.g. the offload state bit, should be okay.

We can certainly constrain the update so it's not possible to get into
an unsafe state. The primary use case is accelerating the common case,
punting to the stack is fine for corner cases.

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87r1cfe7sx.fsf%40toke.dk.
