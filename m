Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBZWLX6FQMGQED5FIEII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E75543483F
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 11:48:23 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id g20-20020ab00e14000000b002c96bfebaf6sf790194uak.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 02:48:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634723302; cv=pass;
        d=google.com; s=arc-20160816;
        b=mKioChCAL1AjounTnNShy7UXKmn7N6g+4hnWQhh0E3iPJbcf8XnHcXrPE5yRcEcxom
         MPk9S7vR6Qvb/tLtLfCFYK00ewcKPbicVTHjdZJGeX6ePO3yfQvdagP/OuLLs8Wvphre
         fm+iF9CG7xkK7vP1UoZwwwXJeFrIHeIBAwLJY/M9Qd51M/ZACBoROso5WFgHu/L+CqWD
         EELcZB2F6EMdo1kyh5QJ97Hv/Kgnv2MwRIsMt/1+8I7+M7YlTY6LnjZEKsxXHqS/2QHX
         3tTEh3omJt0iBZ5gf81BNwP5vSWBuss8L5iGQ2qTyIFU0spGDqzWlHbWgV66ySzhOnAS
         yiGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ImRvJDS777Ak0cKajT41kPOsk4GycFAO702qKBc/QiU=;
        b=gjcJLMzAhzFX8qbJtFPXPTGMPSP2kwsuiE24mFfjJbzZ0OW7USV95OG/PBgckiRw8a
         XGSFUUG8BNJGtyR7bUEsvSfSei7u87Uz90X3BpabqBYblGayYvDY3zXA+q7ztE1bg8TK
         jVsRSompq6glBFSwWISzDXH7xUSpf7rfTacyufYQ/uafUaqkr+CAOXE8YMXZb+dhxqVw
         X0cmVuCfJGJUp3l3M2LPa+jY6pTvPmtcwZJk0LtIF/tDz82KQT2brtx11MNjxCAXvjZm
         yx4v6+5jz4R7p6TBpTa+koKW2RPvaOSV3n/YmRuDI1A5T8qEW0RbWuwBRlJ2SpOFmzYO
         LSCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G78Zvvik;
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ImRvJDS777Ak0cKajT41kPOsk4GycFAO702qKBc/QiU=;
        b=nBICwgIgqsv/qztmV/ZE6JcD6cR7oe97qInA05VoR5AyRkj/eut52sdPHDGAhwmZPb
         JnurcLdoTHbkSdBXXRRXmZki9+BXwAaAQ0XUuWmc0Ajxdy9x9igUvcficMpv8XYyxisg
         0vDNYdqyiCS0BUDtJ1SsEZZp+1wu57HH8qddC+EAOM8Ld2ervGG+3JcYO+2ypek3t4V4
         r/Rj92KwE3haLJy0+ripLl74uN7TCLObYmXkYFMJeayFl0MzEiPvNBqmrBsavUuL0/oD
         IOmU7OcLFNGvWnvaEV6hw1msRVatyqYKP4+L9LJF31gJShnOY882gKt9R88ut8MfL0hK
         OmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ImRvJDS777Ak0cKajT41kPOsk4GycFAO702qKBc/QiU=;
        b=BJRZfi6Ba/SsfNHG0EiUeCYByupbz12PrU4yXF5WiI2p1yk5HQaqDHkcr7wD0+uHXX
         AssoHu0OY7Aj7lSP461TOWvY7MRwpHo9XyXd9K3ShqQo8QrkcD8kHkOKv1F0nT5/klat
         f+DJiUL1rVJq1VQ6nTPi9sER3hDQRGxZvq1PqxYnEavxtjIY03iYi/ThiQXIHj9kSMMP
         ZW233wgRj4lIhtOkieLKYRkbABszIbFjt8uWB3wa8RCH5RouKti7ykSHjTjh8rLy4PhS
         HZEhc8HAVrwwx+jQZaCztIAx9POlwSoQkBNGMJqQzFTunaCHz/IE4Y2CAnzZ9lZ9QGx0
         TWNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZJ63/5uxSLN9b9HbqedwD0kugAbfDdGTh0gCZeV6DSBJ6Xi7g
	7RN4k3M11UuQeBDR73Ps1hc=
X-Google-Smtp-Source: ABdhPJxnUwSWAI+6G+ZRAGpsoZr59PtCfANyvzf87xAcz9VaPsd/TRCqDEy8rblqvCyrztNr0ja+Jw==
X-Received: by 2002:a05:6102:c87:: with SMTP id f7mr22189454vst.37.1634723302497;
        Wed, 20 Oct 2021 02:48:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7c74:: with SMTP id h20ls329089uax.1.gmail; Wed, 20 Oct
 2021 02:48:22 -0700 (PDT)
X-Received: by 2002:ab0:2611:: with SMTP id c17mr564870uao.68.1634723302002;
        Wed, 20 Oct 2021 02:48:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634723301; cv=none;
        d=google.com; s=arc-20160816;
        b=EQLTNfrzjnfo/M+wl5dGzyx4tnRGcOf0c4aUEHABkV+KvDdEIPDX9wh/VEvemMePJp
         XwsJpJMSeFJtFLsQiWv1rZcvTGVAPwAs8Z056JVF2NyFB6ynaDRUF3ET0/q3tjiYMbs+
         K//+EKa4kE1kr4Wv0XYscywPinlmZGrTz2Tpy0PrPZeyRF8OazBKPfOa0w8L88y2D5mn
         W9Vcb/CFo/6PKlUrnQ7OPCm0DBSz+ZsHwhFGQgJkY/JPbHkPCM9j8gq1mF9Ht3DUSuZQ
         zKzWxCCtRaLLbrkgujNtOTa6r9FoqCEAjbP4SvbpqI2PcIZkWDEMw1UIiroYOevpiPmm
         /KVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=qwhcV7+62mZC/QuDizoFELn4/8v9RpDLeJdqv9FXywc=;
        b=oJyN2SmAis98Cy9jo0xd1GINnLz8tUwpecpCWNyqfq+9hXmBwN+DM/q2bx24GyfE2x
         0i/Po0xkRaJ2A6hiDh1hKiZ6Nwm4WiJbH2cMpLfWCbpNK6iOCApmaXhFDNomxT+ytafI
         I6bsx9dxRbxT4Rx3QJr62yp3Hp6Qv8RcU7Y8AQh3IYX57fSXICtemv+BeoWM5l3EWECy
         6fCN2wPbwgyyXLcoDb5EibkIXEmQTIQYlhaep5+YjqzjjUaW36htLjMbHY9gkmdHHwWE
         JS7OVS+RoHtTqQ2yQ2WrC5qraBPV32rEPj8mun/s41XMX955CQSz+xFHZQBlUpc38P04
         hHAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G78Zvvik;
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id 3si126005vkc.0.2021.10.20.02.48.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 02:48:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-424-5HVNOjvRNPOwpjE6u4K4kw-1; Wed, 20 Oct 2021 05:48:20 -0400
X-MC-Unique: 5HVNOjvRNPOwpjE6u4K4kw-1
Received: by mail-ed1-f70.google.com with SMTP id v9-20020a50d849000000b003dcb31eabaaso2757814edj.13
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 02:48:20 -0700 (PDT)
X-Received: by 2002:a17:906:4a09:: with SMTP id w9mr44543672eju.419.1634723297470;
        Wed, 20 Oct 2021 02:48:17 -0700 (PDT)
X-Received: by 2002:a17:906:4a09:: with SMTP id w9mr44543586eju.419.1634723296599;
        Wed, 20 Oct 2021 02:48:16 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id e7sm959484edz.95.2021.10.20.02.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 02:48:15 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 62278180262; Wed, 20 Oct 2021 11:48:15 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Florian Westphal <fw@strlen.de>, Kumar Kartikeya Dwivedi <memxor@gmail.com>
Cc: Maxim Mikityanskiy <maximmi@nvidia.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko
 <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu
 <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, John Fastabend
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
In-Reply-To: <20211020092844.GI28644@breakpoint.cc>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
 <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
 <20211020092844.GI28644@breakpoint.cc>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 20 Oct 2021 11:48:15 +0200
Message-ID: <87h7dcf2n4.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=G78Zvvik;
       spf=pass (google.com: domain of toke@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

> Kumar Kartikeya Dwivedi <memxor@gmail.com> wrote:
>> On Tue, Oct 19, 2021 at 08:16:52PM IST, Maxim Mikityanskiy wrote:
>> > The new helpers (bpf_ct_lookup_tcp and bpf_ct_lookup_udp) allow to query
>> > connection tracking information of TCP and UDP connections based on
>> > source and destination IP address and port. The helper returns a pointer
>> > to struct nf_conn (if the conntrack entry was found), which needs to be
>> > released with bpf_ct_release.
>> >
>> > Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
>> > Reviewed-by: Tariq Toukan <tariqt@nvidia.com>
>> 
>> The last discussion on this [0] suggested that stable BPF helpers for conntrack
>> were not desired, hence the recent series [1] to extend kfunc support to modules
>> and base the conntrack work on top of it, which I'm working on now (supporting
>> both CT lookup and insert).
>
> This will sabotage netfilter pipeline and the way things work more and
> more 8-(

Why?

> If you want to use netfilter with ebpf, please have a look at the RFC
> I posted and lets work on adding a netfilter specific program type
> that can run ebpf programs directly from any of the existing netfilter
> hook points.

Accelerating netfilter using BPF is a worthy goal in itself, but I also
think having the ability to lookup into conntrack from XDP is useful for
cases where someone wants to bypass the stack entirely (for accelerating
packet forwarding, say). I don't think these goals are in conflict
either, what makes you say they are?

-Toke

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87h7dcf2n4.fsf%40toke.dk.
