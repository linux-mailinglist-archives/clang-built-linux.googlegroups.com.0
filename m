Return-Path: <clang-built-linux+bncBCTKRTXYNEIMVUF7RMDBUBGGZVBGK@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C2443486C
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 11:58:35 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id p10-20020a056a000b4a00b0044cf01eccdbsf1607019pfo.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 02:58:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634723914; cv=pass;
        d=google.com; s=arc-20160816;
        b=PS3TMAqos/4PP6NrKJejP+UHIKNKzocr/fc62F4dGXrllaFvhjDxvN1uxrMHcU+yMM
         Je+PrpcYnGcfMu+jze+DQ0fTDC0YMGbokhpIlSVoWcPMCuIL+B3oNsiuUu0efBSf0fIm
         zDWOf26Tg/9WYDrjUP6eJ5MQK8TsMmkdHcdCLbO5rf3BuEEwEvUmbNexCKWK5YoIEPGH
         8fgGjv4lbj7SiB/0FGfyR+fyhzUULM4/cR12SdjQy+HMt8Yjql7PNpA/45KTmRpDyJlh
         gxLn1QGuQylrWSIDjCgx6Vipfvquatr2h+7SSPLyFl5MIv22Sj+NC9CttPWZZ5W2Vqw5
         DUIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=uPZqP7BefvLIL2iweTQjiPAyIOkR03JbuA/u0HFcPoc=;
        b=faqi45SDVf8WHR6RhzZin/T+oOhT+EdayMfrbwUuYxcjJQ9fZvKX5nMVMk/1qSmpwR
         NMLPKln4/BkaPvEPAdv+OI1FRTx9rHd8HPJ4uR6PH3jr1EWRgnOcVgTJXu2IxSKuw0j3
         fpU18FYTYPH0FnPJbWBimhwDaQMWapjl2y0dbuYV76+VQEx/n9ZvnHHZ8Q2lXrZ28wp1
         3Ak3HOUoX16/o4nkQm5AHB0aqMGwvS8yV2JxyAk5TH/New8cqz+u53dB1/zQq9ByMMoH
         JKqkETrYnBbW8QUU+PwHukLmeJ9phygeew8ZVM2wVbmDbKQaPrh/StxRAyIUG5iQ/Zvx
         zpPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPZqP7BefvLIL2iweTQjiPAyIOkR03JbuA/u0HFcPoc=;
        b=iAvdojo+fyE2J5D4NI9oz/sD328P838T/Bj/bWRx6DxQYWHGRwTURCXd2H/T0SwpzR
         sSfQ0L/hS0ufk5YoMvgDV0GtHByX2ahUCV1tqThOY2gdJKV/WWIn2I5zavKP9vWV6MoI
         n3s5ONuwiMUOL1Z9cyf6jke78OexgTJpYlFPf6mOk72ZJQFzC6ZEHJLBYJJwkbIMqNgO
         UR0Jo+RdUQvtHTW8tr0OrliWyhhHdGdzNToIAvoMTHbnN2wvDCB/zdKUd4zIg6OcjXBA
         1ecdhK9k6jyh0hKCypbmxDMXdIUA3b2K9KNuuzzmQJjbeDApUyA+KDX2nIeUAO7U3e34
         eRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPZqP7BefvLIL2iweTQjiPAyIOkR03JbuA/u0HFcPoc=;
        b=CIQ80q2DxYcMYTrYE3KJ7B9/UHkz58RCrGkVlEcK0xecogdUoL8coQn2xC31hLqir2
         3bHAfds7hchAvskBj9If/R4M47fXyt9w1FqejtMhCxWmevcT6B31npd0ddNQxBn+nrMD
         18BoZOS6bRRf2qoZ/1g4IImP3rsrtrZhzC/fu82oLEfPD5yuklQ1XAZ6q/6BNoo4XKiK
         tPs9hy2lI/3/zn83QbLMD8g85e+xZaxPutNPUv3QQ2whGnqdBMrcC/1wKQTlKoOn4lbF
         /dJERJ4txYqlhCyu8Gt+cOYi/9E0CSIMUBeJiB87adf24YG+CMrmn+gyCjNbfNU8LY74
         JxhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lG25ns64Egij6hw7RBc8WLux+G0E9Sxtw+cwoejl57vejText
	2n91yQ3QGsrWuYyGg13UvzE=
X-Google-Smtp-Source: ABdhPJyNi3n8AZa23bPtIQjs/QVv/lz93BOi5xAhqCI6OiMSPh0S8Ss21fVLCSiZtVmPvc252uJoDg==
X-Received: by 2002:a17:90a:c86:: with SMTP id v6mr6151179pja.149.1634723914390;
        Wed, 20 Oct 2021 02:58:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3718:: with SMTP id mg24ls1034196pjb.3.gmail; Wed,
 20 Oct 2021 02:58:33 -0700 (PDT)
X-Received: by 2002:a17:902:c950:b0:13e:fbf9:7939 with SMTP id i16-20020a170902c95000b0013efbf97939mr37855464pla.65.1634723913866;
        Wed, 20 Oct 2021 02:58:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634723913; cv=none;
        d=google.com; s=arc-20160816;
        b=v87bHvgXoDf49SL+soIyKXMNnXRjp1Pi8ivChM6z87s81xK6GESPX6nVBDnOiL7FDK
         5KUqML6NXFZ2A+59StDAm8Gm5jObs7RJ2FQV1gP4LBHfDCD9XQE7/Nn6Mbi23HBmuAHQ
         i1PsosVnaV+Ag44FkkcUIWSe6B4qI1EG003j20PQgX6Av67UpV6TrikphBs41hqoc/sI
         Uf5+ZhSNvOg90jrgvTBvKkBvLqJj9T91PwelmQgYemhXo/HylmiClV3ZdqXmuWpmTJQ8
         q5CwEnOQDXfLlDZ2k4fyNbLxjgJnmMwMWNSHaFsKQdnzguE43CCLEtOBz9KJbenFk/ph
         oH8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=/ZJ9xLqq/2kKx7KDwCldXBLMt61a9LtyOsrMeep8BvY=;
        b=cmsn6eyv8mgO3u6WCz1cL7OZ6K2leY+q9yK/3X0Z8ZOJrBzw9v6qpm8eHHGZl7SuNt
         blzRWAnpt/+WSSiuBiHl2aVXLiT6qJCKxlp0d05V1uTdGXGFWC3obfrIiX20RD9DHWnl
         KVxCPaRpXnjxZg10vHC18U0pYoyHVJy0U/w9z3G+9wOL6DLRf+KkW6BxG06To+D5HOXj
         vN2y/lgeKyVe7RGXr7ZcJOflrxZv39XCpDkOJVfOVniQmREvrFymvW1Xjg/l5guzKfyE
         OuM+18uOncP/98LZvL6dL/RdLj85t0bcrCeP1pdEr60hSoQ0KHywyVE5vyw1FN06OTvn
         Ozrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by gmr-mx.google.com with ESMTPS id v8si112135plo.3.2021.10.20.02.58.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 02:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1md8MR-0001sI-1c; Wed, 20 Oct 2021 11:58:15 +0200
Date: Wed, 20 Oct 2021 11:58:15 +0200
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
Message-ID: <20211020095815.GJ28644@breakpoint.cc>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <20211020092844.GI28644@breakpoint.cc>
 <87h7dcf2n4.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87h7dcf2n4.fsf@toke.dk>
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
> > Kumar Kartikeya Dwivedi <memxor@gmail.com> wrote:
> >> On Tue, Oct 19, 2021 at 08:16:52PM IST, Maxim Mikityanskiy wrote:
> >> > The new helpers (bpf_ct_lookup_tcp and bpf_ct_lookup_udp) allow to q=
uery
> >> > connection tracking information of TCP and UDP connections based on
> >> > source and destination IP address and port. The helper returns a poi=
nter
> >> > to struct nf_conn (if the conntrack entry was found), which needs to=
 be
> >> > released with bpf_ct_release.
> >> >
> >> > Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> >> > Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> >>=20
> >> The last discussion on this [0] suggested that stable BPF helpers for =
conntrack
> >> were not desired, hence the recent series [1] to extend kfunc support =
to modules
> >> and base the conntrack work on top of it, which I'm working on now (su=
pporting
> >> both CT lookup and insert).
> >
> > This will sabotage netfilter pipeline and the way things work more and
> > more 8-(
>=20
> Why?

Lookups should be fine.  Insertions are the problem.

NAT hooks are expected to execute before the insertion into the
conntrack table.

If you insert before, NAT hooks won't execute, i.e.
rules that use dnat/redirect/masquerade have no effect.

> > If you want to use netfilter with ebpf, please have a look at the RFC
> > I posted and lets work on adding a netfilter specific program type
> > that can run ebpf programs directly from any of the existing netfilter
> > hook points.
>=20
> Accelerating netfilter using BPF is a worthy goal in itself, but I also
> think having the ability to lookup into conntrack from XDP is useful for
> cases where someone wants to bypass the stack entirely (for accelerating
> packet forwarding, say). I don't think these goals are in conflict
> either, what makes you say they are?

Lookup is fine, I don't see fundamental issues with XDP-based bypass,
there are flowtables that also bypass classic forward path via the
netfilter ingress hook (first packet needs to go via classic path to
pass through all filter + nat rules and is offlloaded to HW or SW via
the 'flow add' statement in nftables.

I don't think there is anything that stands in the way of replicating
this via XDP.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20211020095815.GJ28644%40breakpoint.cc.
