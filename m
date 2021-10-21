Return-Path: <clang-built-linux+bncBCTKRTXYNEIJPMOERMDBUBDAIQCGU@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id B05D0435BD5
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 09:36:56 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id f7-20020a05622a104700b002a7bc1702d3sf4001565qte.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 00:36:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634801815; cv=pass;
        d=google.com; s=arc-20160816;
        b=lkN2lF5D3f8iMwE1kfd+RyGG4S0+iJGmP6N903Qv+LOZI3ChRsfLUERUnaK+n+vou1
         rk0srx+Gi+0L9qyMNcyn2dYyYktLWFLTEtmLeClxaU0Usx+Cslv6zY2Qm9QdS85wxTPe
         JFVWTpHt/linT+gSOuDMhUXfzWmGODRMTP3QRMVrXqHmHdHEvjtc+Sp8ate/ZmyN6At7
         5A7BbelPMtPLPHNw99AX8Qf8YG0Yx+tVVRJGYRc847kQQLrMTH8D4A8+eF/Xfk17RAOl
         R+SdkTj7V8IR33oN+Ig3uXBuyM/r7PyBfsCUW+W3vNysxpbRDXScoLksMXJ0KIQL4AdA
         Q2ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=bEFuoOQOwf8+fe0Zkl1cGgEX1VDjJMioNvkJAD8/Ghg=;
        b=TOn/mP/QYb1D7kwvIHfoYnglhaSMyyNGiPwLvmz1/YJOUbSAC3nqBm6b+7Kco/qUge
         Sx2QCSUupb/GkXrFEzoPFUbI6Qlax0LtirQbB6aocfsPKDqFHte+vFDVwnnc6viJPw8E
         YgnomRfJ96Wn4LE8cM+nLc21HKIkSfoLHYyN7fE++fgYCCN7fii2jUaaV9qxFqQE2Njf
         XUWkzcIieWjoP7HIQQNKjbqE9pWqfXiAE/7H0Ck1IcuNlpIcFp4AwzzG3QTJXrfRQmEN
         O9T/y8h/jNN9691/Hjs4AbferBFmEWN7/hGfnmkyt828lpsUaavne3Swf5KAaOJ9bRoo
         jDWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bEFuoOQOwf8+fe0Zkl1cGgEX1VDjJMioNvkJAD8/Ghg=;
        b=ZHEjzgMCfcXGKO1o3v/WrV+SZGDLoMCZ8JY43KiWjxcDEIqvsxbe1A/B3DBqz+2+m2
         SBj/WlhRHWXTvU8NFwMWGbd8KzESwNflv7W/tVPDdq6u+RdD1ZM+tYl/k9p90wAaWcHG
         dMN/Ucc+cseUbS0SoTwn5oeO5cI5pebFGlhmkJQczpSxTaxHtEqneoqP5bgwhbmRD0i8
         5pQpfGhPxCAcYEtLhtEijX8qedcRhIqWXcOH9vONq49b7MBuvJBKo9OEU7Uu9sZVRcd8
         LtKeKcpxic9iWHR/IMfE1gfrbRdqYutjAJcGPhgX84IlOvO/hUli6c7hZAvR+08yF/Ta
         9O7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bEFuoOQOwf8+fe0Zkl1cGgEX1VDjJMioNvkJAD8/Ghg=;
        b=BrHCo0qw6rjPy1+RRUjpUFDu80H4cTtWZ7S5RqzvBNeOluxn1PQyIx607s3faSrhUI
         1yBnqCnj68TZDoWuuj6JGWIqkGrVKbZKgkO8Et+EcS6dGkkj26LbftZE7Ctgpdy2cCIf
         tteWjZ40caqlhz5KQjLUPR5Xk6IJy8rnT+1N81fL6sDnuvi/NaBsQ/Rg8Pg2Ssjehw4S
         mvmtebuG+7+ro37RA+nTi9BiXF0naOkIRp0gmcEV1l9MWaby56bZefWs8ONEcYgwv9P1
         qW7ythm0xJC5t/lrc1yCIwjqyNXlPIR/WxevZCUNuJJYxCSBfuI+OKRbg4Ekn27OgqCs
         A1HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dRaOA6vU06qVlTIjCSOUxtNyP8mPMRMCf96BzkaGgScfHY2RC
	IUYfOb9j2W1GKKihyzNZHMU=
X-Google-Smtp-Source: ABdhPJzTWZUee8vfTKH9zG3dZvLAaAVp3faLU5VJlOCSZYLnqOYZH/Re5itPlbRGiCH7CnNQw9JrDw==
X-Received: by 2002:ad4:5667:: with SMTP id bm7mr3277441qvb.45.1634801815543;
        Thu, 21 Oct 2021 00:36:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:15d5:: with SMTP id d21ls2557139qty.11.gmail; Thu,
 21 Oct 2021 00:36:55 -0700 (PDT)
X-Received: by 2002:a05:622a:88:: with SMTP id o8mr4343560qtw.244.1634801815073;
        Thu, 21 Oct 2021 00:36:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634801815; cv=none;
        d=google.com; s=arc-20160816;
        b=qMWl+hsMWkJOa2wTgEOoWSB+b0b8Vu+eiRBANVrdd2/X0jBb6yoxmPuiblRhq3kpuN
         Dww3jgmrN38QG+nHBNh2OQyZQSG/wXHzyT90hNyjjswsjQcfqaL9HL5CcSfwOj98+xgt
         yIvjWDsLeNlbD5xdVroRKAH5r8dqk08uofdIir1rdkdJYDQgqpfwpn6/ru+602Myzjjm
         /nKp0ITzWzQoLEaZnogqzcmWshvZ/nI17I5IbrI8Jj58FlQJQoKiP45vNn1oDUopzSZc
         fkQDXIw37sta+0dlFhJpIUqt2JR7vJGJZTLKcVPzTtw5NOi5aAE/tePGDwlmfWmT6SR5
         N9Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=+MSYclIfbx64GGAF17MVUbubN+PExqd3tMF3aSmjryI=;
        b=zcIxYBPzMRRFPSDlLnjXAOQdy3ZlDBIu3uOeQPuNY7GB6PQ/LdYU2y9WtiKHPaaQsr
         RZUpHvCpHnaJe19uR9UEEejhJUJRFeh91+dH7aaX+/pJIBNVVFmoi/P/JcmdIh6UTMk2
         dzN4Er1R6yKqBKSDxWzfWUSChGvzmbDtc0mfsqLkYtcDeZBj88JFnpvch3bdTuFIV0rz
         yUFGmbsCqDJ37fVMf58wY6pxlmVgg01w9RnYR/XgEg2BsLeyLgT+io1qVrZsyp+1YMRR
         mu9b2dQVAoXAMNKSUOOY9gMV8Od6fXH/x7FHd0OlyS9xPaa3u7SN9Woc7415unMyiv/c
         DBHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by gmr-mx.google.com with ESMTPS id m17si569849qkp.2.2021.10.21.00.36.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 00:36:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1mdScj-0007At-Jb; Thu, 21 Oct 2021 09:36:25 +0200
Date: Thu, 21 Oct 2021 09:36:25 +0200
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
Message-ID: <20211021073625.GE7604@breakpoint.cc>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <20211020092844.GI28644@breakpoint.cc>
 <87h7dcf2n4.fsf@toke.dk>
 <20211020095815.GJ28644@breakpoint.cc>
 <875ytrga3p.fsf@toke.dk>
 <20211020124457.GA7604@breakpoint.cc>
 <87r1cfe7sx.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87r1cfe7sx.fsf@toke.dk>
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
> Florian Westphal <fw@strlen.de> writes:
>=20
> > Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com> wrote:
> >> > Lookups should be fine.  Insertions are the problem.
> >> >
> >> > NAT hooks are expected to execute before the insertion into the
> >> > conntrack table.
> >> >
> >> > If you insert before, NAT hooks won't execute, i.e.
> >> > rules that use dnat/redirect/masquerade have no effect.
> >>=20
> >> Well yes, if you insert the wrong state into the conntrack table, you'=
re
> >> going to get wrong behaviour. That's sorta expected, there are lots of
> >> things XDP can do to disrupt the packet flow (like just dropping the
> >> packets :)).
> >
> > Sure, but I'm not sure I understand the use case.
> >
> > Insertion at XDP layer turns off netfilters NAT capability, so its
> > incompatible with the classic forwarding path.
> >
> > If thats fine, why do you need to insert into the conntrack table to
> > begin with?  The entire infrastructure its designed for is disabled...
>=20
> One of the major selling points of XDP is that you can reuse the
> existing kernel infrastructure instead of having to roll your own. So
> sure, one could implement their own conntrack using BPF maps (as indeed,
> e.g., Cilium has done), but why do that when you can take advantage of
> the existing one in the kernel? Same reason we have the bpf_fib_lookup()
> helper...

Insertion to conntrack via ebpf seems to be bad to me precisely because it
bypasses the existing infra.

In the bypass scenario you're envisioning, who is responsible for
fastpath-or-not decision?

> > In the HW offload case, conntrack is bypassed completely. There is an
> > IPS_(HW)_OFFLOAD_BIT that prevents the flow from expiring.
>=20
> That's comparable in execution semantics (stack is bypassed entirely),
> but not in control plane semantics (we lookup from XDP instead of
> pushing flows down to an offload).

I'm not following.  As soon as you do insertion via XDP existing
control plane (*tables ruleset, xfrm and so on) becomes irrelevant.

Say e.g. user has a iptables ruleset that disables conntrack for udp dport
53 to avoid conntrack overhead for local resolver cache.

No longer relevant, ebpf overrides or whatever generates the epbf prog
needs to emulate existing config.

> > I suspect we'd want a way to notify/call an ebpf program instead so we
> > can avoid the ctnetlink -> userspace -> update dance and do the XDP
> > 'flow bypass information update' from inside the kernel and ebpf/XDP
> > reimplementation of the nf flow table (it uses the netfilter ingress
> > hook on the configured devices; everyhing it does should be doable
> > from XDP).
>=20
> But the point is exactly that we don't have to duplicate the state into
> BPF, we can make XDP look it up directly.

Normally for fast bypass I'd expect that the bypass infra would want to
access all info in one lookup, but conntrack only gives you the NAT
transformation, so you'll also need a sk lookup and possibly a FIB
lookup later to get the route.
Also maybe an xfrm lookup as well if your bypass infra needs to support
ipsec.

So I neither understand the need for conntrack lookup (*for fast bypass use
case*) nor the need for insert IFF the control plane we have is to be
respected.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20211021073625.GE7604%40breakpoint.cc.
