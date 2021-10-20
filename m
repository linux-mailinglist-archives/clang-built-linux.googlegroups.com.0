Return-Path: <clang-built-linux+bncBCTKRTXYNEIOFQV7RMDBUBETAHRV2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id E631F4347E5
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 11:29:06 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id t7-20020a2e7807000000b00210dad8b167sf1557840ljc.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 02:29:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634722146; cv=pass;
        d=google.com; s=arc-20160816;
        b=FM3R+ubiMxt55FzKIqYUuNIDC3z6uVYDyaih2T45SwVRXI8kUBPzUHrSrpzNVQf2Vb
         N8KVgRnCRv5f9meQ7ideqDqQowrPv59fLLSDOQyKA4SdOAksfdrMm2sPFzPuhKNYLZlF
         YFNr64wsmCO0BMMNKBSs3rU5X6VjyKzEc+nYR7HjYC4Kr8orR/ws3a+6yWN3oKEr483G
         +2bg0ZxmiXI793aawqabOInWaD+ikap1JKc/5wy+JMg36F5XroneEecMcGS0ekyz0/+/
         1AqEupSlHSwB/pM8FSfTAGdMrLBoSWDNTU6kC5fGE/nvE3wy7p89R/31smnW51SVekNV
         qSWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7rso8zFOlESfdgwaMfM352buG15CPuJDyL1x8R4BDtg=;
        b=a7FSty338SQi6zXpCn0moIbi6BcaM/y+AfmOLdQeNjlMJXmF4noReVZ/I0oovukCY+
         93WwZIe9oSY/SLW4Kh7Q6Dzpfk/3Lo4GiXBToPg3kvj+CVI4VUzUvNS91MKrLUPJozrl
         Tzm8lGRAp+DyWg/MPLyj5py6knRIBG/cV1dQUWKiUo+3q7n1SFI0r7RqN9t/dE5zYanX
         A+Hk06g6atij1IE+doPCHw6cnyp7L1YRjBub2syRA0sQ8ojLoVaVtJ2J4O0D2xl5mNYk
         TUhIMX2wHr3tGJ7lQ1GFmURjkijJ3w9L656HnlJBRXcTk3SPEoz25E/cmWa2p4X3DYhN
         T3tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7rso8zFOlESfdgwaMfM352buG15CPuJDyL1x8R4BDtg=;
        b=bfM39yRBp2BEpQPeRhYctz0e7MqAGu+KS9fQ4kgh9GSkDbBgP4iY7PCWO95g6vvrHo
         bvn/z4YtUMlGYZzIMpanhqAodfByGv2qmTK00wXQvH9iVH7gpI0Eq1VKHzMMkelvjeaD
         /s+XbYjz9U+dp14anvYENmHh3B6el3K6UbImo4FwZ+wqsRI9/FS4fyq/FGGkWQXUw101
         JWRUicMB9DxfPUMwwh2ZaUG+QNH2i8Anhr7EK6ZPUbuk2wi78sy11yITJPIzskozB9Qo
         gNuAyYCgJDHSXIx0W8jUFQXUkUcfiPFjqs528we7CBXdVe9Wesx7thQNZvnUUtG3n4u1
         fj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7rso8zFOlESfdgwaMfM352buG15CPuJDyL1x8R4BDtg=;
        b=OhVwIKdpO6VLA34f5VX9o2RxMGzyZoDag6Q3EFo0KYdBq388YRmC+zccebRlQ/Blbt
         4CUFUdJ3Jeg/Gx9OeD/efBv4/r21C0XLRJ+DDUQSFVNSLDwYE/7x0hwlF40ZTsxXWoZu
         JhLCNL6tKhB+LsWFjDRIsATHjWXmwy0+16LywgLgJh4M2NCxWRQ1uoO8MrJu7UOhVMmn
         DrIfHKk3MOpon/dg2r4hj6CSJVaAF6qXB0yagjLD22nTNsG4lp2z6SMB9BbKjSEunOcS
         3cdbiY3SCYmN5ouL7fZgw2e1Q7EYXDRj+EiS7th67c42pMRbKKUL4k+8s4mU6yegEXfF
         PnDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m2ZRDkP36NVKTxxkylIUQhGouGRny0i+uoa9Y9qqGquF8UWXt
	rtd+12PP1iSKAcEm+w/jpyo=
X-Google-Smtp-Source: ABdhPJxokh0PyQbAPfBH89U5opei0thHMDjr5S+g0mkjfrto3B3gobgaEEjVM2OyzcIOVxxj8tnOMw==
X-Received: by 2002:a05:6512:54f:: with SMTP id h15mr10640072lfl.341.1634722146325;
        Wed, 20 Oct 2021 02:29:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:1314:: with SMTP id x20ls1037733lfu.1.gmail; Wed,
 20 Oct 2021 02:29:05 -0700 (PDT)
X-Received: by 2002:a05:6512:3981:: with SMTP id j1mr11390746lfu.417.1634722145324;
        Wed, 20 Oct 2021 02:29:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634722145; cv=none;
        d=google.com; s=arc-20160816;
        b=W8ulj7UP7pw4ot7Vq4zzZeeL5n7T3DH8Ot3ZiKkgVucZUgEortO967ZDNxM0pJLAJz
         s4E5RyvdQfwHDmuL71IzpQuwPOnf0Guk3HS9+5B7gt4+1lJwP8QmiqJ2moS5BbTlFXA/
         4ZucMIbqi2EX14wLNDgbsqcosAAwql4AVivTT82jKM07181ZPugFaYzxbTzGQSarkY6K
         lFQCQILEHOGphAzhP/yRcKmrnhnCHEGeMHO6qjs0xg5pDV2IcSpHTdP/xWdkl6Em2rai
         q/OqdghbtE5XEaJLcG5c/IppVj640UK8Gc49Q6gMZsQY84u0m/6+3n4LcRAesPDiLb/I
         MOQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9AaIK++mu18YTX+To4YCXih4fXg0f7tOTU8aGa+PXGw=;
        b=GxeDct7RvNAR3RxuPRLV2RyXEdobCQ/uwhdswvhGeerRB5/VAIuYJztZVDDlC4SuVS
         a026lhYd8N2avljOX92qX+kGPH2QIqkybj4ofTzW+VxnnozCFZKUwSuKlJYqlJPcUmhh
         jyhF3L7p5F/B9WnxRlUMu4ZCiWl4ihjXrLztkFX8wFpD+bCWtJdjzJIsczVwoQHpv40y
         KArmRj+OTpUjRAjLAcvEstdmSNysZp+65hdNh6XDt9M6fW7zZTryH2QH0SMnOBeLXGeS
         trgIg1iekrMDW8k/wTRd/nE8V2lPnsZLd1C3ovwfsqp4ujZjKVcVTZxIb+8zukJOIBzZ
         pVQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by gmr-mx.google.com with ESMTPS id s16si120707lfp.6.2021.10.20.02.29.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 02:29:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1md7ts-0001iL-VA; Wed, 20 Oct 2021 11:28:45 +0200
Date: Wed, 20 Oct 2021 11:28:44 +0200
From: Florian Westphal <fw@strlen.de>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Cc: Maxim Mikityanskiy <maximmi@nvidia.com>,
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
Message-ID: <20211020092844.GI28644@breakpoint.cc>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
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

Kumar Kartikeya Dwivedi <memxor@gmail.com> wrote:
> On Tue, Oct 19, 2021 at 08:16:52PM IST, Maxim Mikityanskiy wrote:
> > The new helpers (bpf_ct_lookup_tcp and bpf_ct_lookup_udp) allow to query
> > connection tracking information of TCP and UDP connections based on
> > source and destination IP address and port. The helper returns a pointer
> > to struct nf_conn (if the conntrack entry was found), which needs to be
> > released with bpf_ct_release.
> >
> > Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> > Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
> 
> The last discussion on this [0] suggested that stable BPF helpers for conntrack
> were not desired, hence the recent series [1] to extend kfunc support to modules
> and base the conntrack work on top of it, which I'm working on now (supporting
> both CT lookup and insert).

This will sabotage netfilter pipeline and the way things work more and
more 8-(

If you want to use netfilter with ebpf, please have a look at the RFC I
posted and lets work on adding a netfilter specific program type that
can run ebpf programs directly from any of the existing netfilter hook
points.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211020092844.GI28644%40breakpoint.cc.
