Return-Path: <clang-built-linux+bncBCL37IXQZQHRB2VGX2FQMGQE4C5J5RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B29014343FF
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 05:56:27 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id c8-20020a4ad208000000b002b6b6df6b7fsf2510245oos.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Oct 2021 20:56:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634702186; cv=pass;
        d=google.com; s=arc-20160816;
        b=mU+nVJzJUeb3mma1ITUwkhUw3D1+wY49clixhGl3a0+uRqilxzOuODb9vdEnZdeu1o
         NxexEdCax2BoJYo2UYGpeNgzfgG7hVMw2/OOfAlZ0CorkBH7zsmgW3u0JZLrBv7snIwG
         YLW25WWPVNc7LiO538/O7qZjpmOJIIjHBggWS/Ajd1i4zX/IQDJSyCl46hcdv4VcHuhd
         m7wp44yiX5xd5v8JF8lydrGcEpeV3vzO4lIAXmR42f5ZapsOtbGNZYH8EjwD26q5iKP8
         C4yBs0yu/6SJRy0dn69ssrFKcuPA5MrjvA6jG8MP/0u42L7c6WsU1ype55PJP1xSj/D8
         ubfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=5THE5u70I0MBcM2o7OX+adVyCPcgzxjGOijQfPOZzF0=;
        b=AOWS9/hKowHuTL17wx6QHc8xDB/HuP4CX6eTbFOxes5jIWZbzw5HwTSlpbRwr3n3Y/
         aIEye4gSVmepcaUgt0cNpRXTo7ygNczVyQWIbvqZFmwNWZ/Ro2VFqjYnE/M1pDkUgsqY
         FGww4Vg4esEW3j9EUR4FUDWxn+oDo0Fin9PCSo+YIdHONQ6mKaNJAM5ByG9tlCD8k9XB
         3GgCLEHK+kkUeCcvQGH/fXuIr3fIA8BgvwQO/ZsCEwgtBKF0BTK+B2E/jXcez6NUltge
         1lu60fgxrJG4xW4V0NPE3bdLmYMMwJbOGoMuuzDffdZjGkkyx57srGKNKsz8gVtzpnYR
         nGfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="EV3be/r3";
       spf=pass (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=memxor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5THE5u70I0MBcM2o7OX+adVyCPcgzxjGOijQfPOZzF0=;
        b=HQ5kqZnnhr6NWC0H6/zqZIRIRkzb8HHAjfhM8EESbeAq/NPe22l/1fFUshLHXWEgZO
         HL5fOtvZWv4AMF16J0IAiYypAKouZFDXKHWzO9OHkXh8ozVeeyMAa/qYMew9F9LS7n4J
         AVw4BsRJl0XLv3mzLQIn0FJzFD9ZM4dZ9e5SUZqufwxyGDzeNkGD9tJC3y9AZS+12Xhp
         KFJFERNn1Vzw1C49b9VTyPdWr3oGid+4XBOxw3vXNRk0dGNE2nZXu5AvTfyalCeNme0l
         sBxVSouDfzikxgfYAByN+LlfDnVuDn/qZpSQ2TjvFfF0eu2c5Ixycy4WG59RYGqARFiq
         b81g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5THE5u70I0MBcM2o7OX+adVyCPcgzxjGOijQfPOZzF0=;
        b=gnDH/JTz7f8mqZ3EiC9ZRpJIgl8muGl1ZHDSyg/h8FjpFTg3k0/yF4297zKdK7L48q
         +ETmIB6zro0Yu/3rhSx4pwc6HYooCuUX+SfRhEwWJDFFu4Rq3/HoCIrAyEjJGJAVSef8
         fs8vZJjoAkV0eVhdFJ2MuXAlnvZUSohwoNRENpn/gLVfqawKkoYpQUZqm+Kic16um7iJ
         CcY4TpnuBuDJ1+CjvTBvNMW8pCu8euyLkK9VwU/MJQaVpb2hwR0ycWKS9YIs/FWg9aDV
         NGRKW1yNP03Hy41ZOQEG+2JDAJLUwOnr3IXyOpTuEEMiG028u2Ax4DUTIGmlk5sxDbdp
         mmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5THE5u70I0MBcM2o7OX+adVyCPcgzxjGOijQfPOZzF0=;
        b=rHqUJaPCYlvLWHI8WVtEBDVM0WqdicaSbm4WGNgfwHZ+WYzR5HkkOei30VGlR8cIUk
         fcXcPm+UqrsRc+VmxvChHkFtYNR/MexOdaRdQ2ao6B1zIg0Hkl3u9bgZ0TlZJtk4LfmG
         hSLgQGKaIixQ/vlA55adapFf0v6YMiozwhfzln3fAc9t5H9ltkhic2EKtfYVB5psTFvt
         zoAsisC8u6zI0unWJkUFgNwdKaJzjKWswNxHF23XM1/JhQwYWOHsoB+dcyxzAMVKrqSp
         c6SB2Dg/prl2z7Z6d2nEbUqodHvpLt0kTjCt5/C8h3jO8HJbQf7QSGN9lq9ZDD2Z3T2F
         mUFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530g/99/3J9zdMp5IfwEVx5pqV7uNBEVabpierAJvjBzXjhFmDcK
	HxguenyAg7ejAoSY9/fAflk=
X-Google-Smtp-Source: ABdhPJwKc3XwC2hQElfw7SupnI7S0iBbcUqUmXH1BO2SeEgfre42w2HT6kqdVzDp0fX1XaJVf6zUUA==
X-Received: by 2002:aca:3bd4:: with SMTP id i203mr7100672oia.69.1634702186277;
        Tue, 19 Oct 2021 20:56:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:356:: with SMTP id h22ls284284ote.5.gmail; Tue, 19
 Oct 2021 20:56:26 -0700 (PDT)
X-Received: by 2002:a05:6830:1dfa:: with SMTP id b26mr8676720otj.325.1634702185940;
        Tue, 19 Oct 2021 20:56:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634702185; cv=none;
        d=google.com; s=arc-20160816;
        b=T13RbgJKeyJj6Ozj6IU0wLsF30x6ZZvMRX20lAdRk+85x5hssav/T9wxd7fg36sZM4
         thL+SULsxi6GxmWeCphAlFaGAmRVzlpeYYo85XsKgDNwrrXqk7dKaOVKZhk730H3L3Wg
         La3eYhwTtVNk7b+Pupl4V0iNcrfL8Q8iFqdJGJhwa0h7zSJhKNRdE/iVPc159C9yxS7D
         jTQ8xxpXCraZoDVnKr/hlkfzIucEONPzjiq6h84SE+NVe4mbz0+xE5jClKPA5bD28fvG
         YzjtM4O8lyfYWvE9zZJVNXG+BBEGNXdFao5SdYXFW0GegQk98mmWk+NwfEYOCVETGUYN
         eniQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=op8GyiwFUTxPnKC1m15ZOngYa5VFL0Iokc2X0Lz1nP0=;
        b=v+j6vFr50OmUUUkuFgyKh3b8HViHMTn5utiZbkVLrYWWQSNLIiEasr1rqmoNQXEF/T
         fvi2sw+9w6QQxtO/bxL/Ioo26h/XCaKphdaWf7P35reONnWM/JIMmJ4tBVD3fROoLuzw
         b0Mni1V30/pOv0IiQzCf1sEdlWvlhqOGm/duS0roPgzoUfEmzmlOpjHj8ZKSWTQlUGi6
         kwsgt0i0gpYdKV7kOXAnsmy8IRQjq8W6EHSC4AeCW2ytkMYr+9AhS1n/MxYRSpz6FTY+
         +Ysmxa15+Qu8NjOxpKIIBM1joTokXb02G2De4xN31ucK0W1gMDhEB6IBEDNK1VdmQU/4
         yTUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="EV3be/r3";
       spf=pass (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=memxor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e12si119531otf.1.2021.10.19.20.56.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 20:56:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id m14so1762651pfc.9
        for <clang-built-linux@googlegroups.com>; Tue, 19 Oct 2021 20:56:25 -0700 (PDT)
X-Received: by 2002:a63:b006:: with SMTP id h6mr24101108pgf.366.1634702185232;
        Tue, 19 Oct 2021 20:56:25 -0700 (PDT)
Received: from localhost ([2405:201:6014:d058:a28d:3909:6ed5:29e7])
        by smtp.gmail.com with ESMTPSA id mq3sm2125712pjb.33.2021.10.19.20.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 20:56:24 -0700 (PDT)
Date: Wed, 20 Oct 2021 09:26:22 +0530
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
Message-ID: <20211020035622.lgrxnrwfeak2e75a@apollo.localdomain>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211019144655.3483197-8-maximmi@nvidia.com>
X-Original-Sender: memxor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="EV3be/r3";       spf=pass
 (google.com: domain of memxor@gmail.com designates 2607:f8b0:4864:20::443 as
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

On Tue, Oct 19, 2021 at 08:16:52PM IST, Maxim Mikityanskiy wrote:
> The new helpers (bpf_ct_lookup_tcp and bpf_ct_lookup_udp) allow to query
> connection tracking information of TCP and UDP connections based on
> source and destination IP address and port. The helper returns a pointer
> to struct nf_conn (if the conntrack entry was found), which needs to be
> released with bpf_ct_release.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@nvidia.com>
> Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

The last discussion on this [0] suggested that stable BPF helpers for conntrack
were not desired, hence the recent series [1] to extend kfunc support to modules
and base the conntrack work on top of it, which I'm working on now (supporting
both CT lookup and insert).

[0]: https://lore.kernel.org/bpf/CAADnVQJTJzxzig=1vvAUMXELUoOwm2vXq0ahP4mfhBWGsCm9QA@mail.gmail.com
[1]: https://lore.kernel.org/bpf/CAADnVQKDPG+U-NwoAeNSU5Ef9ZYhhGcgL4wBkFoP-E9h8-XZhw@mail.gmail.com

--
Kartikeya

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211020035622.lgrxnrwfeak2e75a%40apollo.localdomain.
