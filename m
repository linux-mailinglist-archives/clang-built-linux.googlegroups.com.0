Return-Path: <clang-built-linux+bncBC3MJ5UR74ERBBF7XL3AKGQESJSIA7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED381E4B95
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 19:12:37 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id 74sf5662108lfa.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 10:12:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590599556; cv=pass;
        d=google.com; s=arc-20160816;
        b=vVypPd9GdhIJ+KN9IpvfICdRbhsTMjyUYdd6XW+bXo2RmLJ51CyVCDGDwoDuzuKZtc
         gInRmv5DdsEg+asE1W3JpkIZJJkeFRLb5/WJalNT08beaybOmDosxwy9WTu9q/MggCqg
         +RNUGjAlBL/FUH8a2i1pjfegPQovt1VRJ6A5H7BdxNP7bFSubYS1jYo66l2SCK2wJt2A
         lA3BBnTdFIUrStQ0ToJSpzvVmNisff6V4Kbz/M5rZeviWAlGVr6p/sicNAAPGnyunEO3
         a6r04UN0vo+4TNqTucVgokUVBuYhm3R/5TCTnA7btwwA0P7gJ/eTfde0dxy0j654chNS
         Fcew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:to:from:subject:cc:date
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=8FUB+9YgEOxzET1MSMjpWH50hEj9/Yhl9a+IZfqQVnc=;
        b=ibvNPpfKuUYr6ABGS5syy82gaDg6Ef9zhjWlpRWw0rL+bn7e+hCGyDgiZw9b+cRTPy
         4+PoDMC4lIt1e9jiudpuQTPy+/SgPkrMNMQ1yGXKyS6NC5BLdAQwxgsrnJ2xMcU7X2Hk
         j33/gFUGP1v6yfQb+aRHPnbuhV3I6GXa2o1tOD/kPDyQE4l3NmHwJCyNSpHGJM/AswXI
         AzzdHZIkBCZWKVVD+PfZvXMnxNbyFAreRlZzMk1Uom62sLQBHbvmbUvmFTamQ80tdP5D
         1hH5Wz7IZOF8flAH6NlOzMTBkONeRu4CtGsnWsrgKdm8BxZIfJZEgdL2eVBb9dy6exEL
         lbrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dxuuu.xyz header.s=fm3 header.b="Dx1/Dmht";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=0IfLJJFz;
       spf=pass (google.com: domain of dxu@dxuuu.xyz designates 64.147.123.18 as permitted sender) smtp.mailfrom=dxu@dxuuu.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:date:cc:subject:from:to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FUB+9YgEOxzET1MSMjpWH50hEj9/Yhl9a+IZfqQVnc=;
        b=cK9s4j1ZQSsYPXE21A03eCtubEvJIuJmKz/VigUJqvh6SYfpuu62zrc7rWT95DKnGR
         nCe0n1rbHlJGcdBfM0G+hndPbQy0ybdioDdMmDrrbd8Lwkc2/Yyun9xxVHFSu4nTvFgp
         uVk2XRbnQdSK5qHbHH7rmNAqMEnJ+XmWELvFoL8UmrnwdV9LjX0EslOnyasYFsCFZUY0
         RII/3ndY+F4nT9Etelj+0Xd0n9U+Qukgk2LdFn4zIDFihLPduSyEOMeMYyPbgRui/Ai3
         cF/aTGAKa4pTji/32EBtt7BadHr9/0M4JMfoFxCm/ztlt1IwFRoSwo9c1Aa2UXcNkaDh
         guDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:date:cc:subject
         :from:to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FUB+9YgEOxzET1MSMjpWH50hEj9/Yhl9a+IZfqQVnc=;
        b=RvqPrsb/nygeV7zseoW947tBDtwOPDPyPRY895/jc3gYwe6UX7zyaG2ZMJvOp/9Lhi
         HajImgVL73rgLS/xdFrnTzWieU6UO2sFiUtnQew96NJxF4a0CZlbq6pmTOVXi7ukyYw5
         VyZdxdKxDl2k3QdV0ZiP5sEhJ1z4hr6JKVTdsi8iFr3P17OY/Y1bquSvI+iMLS0xifCa
         bFhENJbtAJNKEr06YCHOjyEQPa//TIMbz8b8UKl2wyXGvk4qZ0DdOQM0MP/OzqtWKElu
         tnpym+FLtPciIkU9/63Qw9oq3tYyxTYEOUeAtNzZc370VEB8ZCeL3JpH2+WBvabShhWE
         q3YQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ut+6mTinV8PA4AXOvwZoPf1OHFXx0FhaH9fqkNrKgsNC1ATsX
	9ZnGKm+DyclvTJfvyffo/8E=
X-Google-Smtp-Source: ABdhPJzbVF4bdgxUj8veeDei0SD95vgKCulgmCyzVxpTuKas4fn0cJq8zvP3ElnZmeu+6JBNdGDN5A==
X-Received: by 2002:a19:490d:: with SMTP id w13mr3529410lfa.96.1590599556669;
        Wed, 27 May 2020 10:12:36 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4b43:: with SMTP id y64ls4495080lfa.2.gmail; Wed, 27 May
 2020 10:12:36 -0700 (PDT)
X-Received: by 2002:a19:c88e:: with SMTP id y136mr3698714lff.78.1590599556026;
        Wed, 27 May 2020 10:12:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590599556; cv=none;
        d=google.com; s=arc-20160816;
        b=k++506lwz0FOvKqQLeu8gGXZYsAl2l+4h5HK4kQIfBO2HponB0qnELyGWTEy9M7mAh
         2CI/04Ik5TyYjRCNdbrDgvxZw588SxjOPZugXdjn/ceWgj+oNMcroxnwM9bbel6eD8xY
         3YjFWiK/1p/QKudHO0ZVKdsdKgEzWRYPV/aTTfGGpSIelKdOKvhpQ9bz3qcC024nLOZp
         h+AQs1V2x10VsUUVBC7V4E2tDQ5cRLfQdYe4tyWK44hf3aakdj3KwDmz3hrJu1yoaTkw
         wBjWI1U0R/eiA5avJ8KJcznCHBv16NMn7nPndnB1B07tzQsocmtRmXIArk5svnz9/nBN
         xldw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:to:from:subject:cc:date:in-reply-to
         :content-transfer-encoding:dkim-signature:dkim-signature;
        bh=6pxEigjWfelMjOWs/Jq1DeSXeYEVsneKZclbXHsrvFQ=;
        b=qme7w6YSYRGoak8Y1ka0jWC3Wdq4uVRbSbSKIrDhFfRTuOi595zg+c8F/Pu5ItjRJb
         HQ+5codt1od0A1ofXgnmEfBMlLCjaj5dSPve0wxwjRNXVTB0H/zclV5TRssmEOZDD1Af
         Lw/YOgatq0fbmbv+hkTm5xsNo3Qcl7OwDpjbC0BYbXR6zE1u0rm9SWbEdfMJeSo6/Hd6
         VIM2bIluCQcn9NArznTKA46UqgPs2CURrFRQuqdJjTLDaw9rSM3l4xnucN31atGqkpf1
         HLrQ9qtn49PtbsE29hncCYTg8U32ik4LjaF5J5Dhkk43TL/9jZEVlpVf0KZvw2jBP2++
         FQpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dxuuu.xyz header.s=fm3 header.b="Dx1/Dmht";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=0IfLJJFz;
       spf=pass (google.com: domain of dxu@dxuuu.xyz designates 64.147.123.18 as permitted sender) smtp.mailfrom=dxu@dxuuu.xyz
Received: from wnew4-smtp.messagingengine.com (wnew4-smtp.messagingengine.com. [64.147.123.18])
        by gmr-mx.google.com with ESMTPS id 130si173312lfi.3.2020.05.27.10.12.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 10:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dxu@dxuuu.xyz designates 64.147.123.18 as permitted sender) client-ip=64.147.123.18;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.west.internal (Postfix) with ESMTP id 022B8A97;
	Wed, 27 May 2020 13:12:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Wed, 27 May 2020 13:12:33 -0400
X-ME-Sender: <xms:fp_OXnzMMddzuGs3DxMkcMGcAaZYDGTqZrX0dF1dx5rYHJOk_uyfcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgleelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    gfrhhlucfvnfffucdljedtmdenucfjughrpefgtggjfffuhffvkfesthhqredttddtjeen
    ucfhrhhomhepfdffrghnihgvlhcuighufdcuoegugihusegugihuuhhurdighiiiqeenuc
    ggtffrrghtthgvrhhnpeelleelfeekudehudeitdefkeeutdfhieeiudeggfdutdetleek
    vedtteevieffteenucfkphepjeefrdelfedrvdegjedrudefgeenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegugihusegugihuuhhurdighiii
X-ME-Proxy: <xmx:fp_OXvSUMbDbI3ZC12QTnicdy3P20kMOKD3dc3jOfmeB3oesg5oXDA>
    <xmx:fp_OXhX8P3FO9-Nt1LGVYuVV2rj-Slpt8I8KW0srICQtB7EPwbtJUQ>
    <xmx:fp_OXhif-JI4R5yF4LAsFNrABBnXAQv97F_q5pBCEdII_QRGP4NGBg>
    <xmx:f5_OXt7AKk-ovSiZzUxVTphnwaOqRn5Id8NRDUl4Od2wBnp27IJaxlzjc_g>
Received: from localhost (c-73-93-247-134.hsd1.ca.comcast.net [73.93.247.134])
	by mail.messagingengine.com (Postfix) with ESMTPA id 7C89A3280063;
	Wed, 27 May 2020 13:12:29 -0400 (EDT)
Content-Type: text/plain; charset="UTF-8"
In-Reply-To: <CAEf4BzbR+7X-boCBC-f60jugp8xWKVTeFTyUmrcv8Qy4iKsvjg@mail.gmail.com>
Date: Wed, 27 May 2020 10:03:56 -0700
Cc: "Alexei Starovoitov" <ast@kernel.org>, "Daniel Borkmann"
 <daniel@iogearbox.net>, "Martin Lau" <kafai@fb.com>, "Song Liu"
 <songliubraving@fb.com>, "Yonghong Song" <yhs@fb.com>, "Andrii Nakryiko"
 <andriin@fb.com>, "john fastabend" <john.fastabend@gmail.com>, "KP Singh"
 <kpsingh@chromium.org>, "David S. Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, "Jesper Dangaard Brouer" <hawk@kernel.org>,
 "bpf" <bpf@vger.kernel.org>, "Networking" <netdev@vger.kernel.org>, "open
 list" <linux-kernel@vger.kernel.org>, "clang-built-linux"
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next] libbpf: Export bpf_object__load_vmlinux_btf
From: "Daniel Xu" <dxu@dxuuu.xyz>
To: "Andrii Nakryiko" <andrii.nakryiko@gmail.com>
Message-Id: <C31OATROKNZK.27CUNDSXX9I4K@maharaja>
X-Original-Sender: dxu@dxuuu.xyz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dxuuu.xyz header.s=fm3 header.b="Dx1/Dmht";       dkim=pass
 header.i=@messagingengine.com header.s=fm2 header.b=0IfLJJFz;       spf=pass
 (google.com: domain of dxu@dxuuu.xyz designates 64.147.123.18 as permitted
 sender) smtp.mailfrom=dxu@dxuuu.xyz
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

Hi Andrii,

On Tue May 26, 2020 at 3:09 PM PST, Andrii Nakryiko wrote:
> On Tue, May 26, 2020 at 7:09 PM Daniel Xu <dxu@dxuuu.xyz> wrote:
> >
> > Right now the libbpf model encourages loading the entire object at once.
> > In this model, libbpf handles loading BTF from vmlinux for us. However,
> > it can be useful to selectively load certain maps and programs inside an
> > object without loading everything else.
>
> There is no way to selectively load or not load a map. All maps are
> created, unless they are reusing map FD or pinned instances. See
> below, I'd like to understand the use case better.
>
> >
> > In the latter model, there was perviously no way to load BTF on-demand.
> > This commit exports the bpf_object__load_vmlinux_btf such that we are
> > able to load BTF on demand.
> >
>
> Let's start with the real problem, not a solution. Do you have
> specific use case where you need bpf_object__load_vmlinux_btf()? It
> might not do anything if none of BPF programs in the object requires
> BTF, because it's very much tightly coupled with loading bpf_object as
> a whole model. I'd like to understand what you are after with this,
> before exposing internal implementation details as an API.

If I try loading a program through the following sequence:

    bpf_object__open_file()
    bpf_object__find_program_by_name()
    bpf_program__load()

And the program require BTF (tp_btf), I get an unavoidable (to the best
of my knowledge) segfault in the following code path:

    bpf_program__load()
      libbpf_find_attach_btf_id()    <-- [0]
        __find_vmlinx_btf_id()
          find_btf_by_prefix_kind()
            btf__find_by_name_kind() <-- boom (btf->nr_types)

because [0] passes prog->obj->btf_vmlinux which is still null. So the
solution I'm proposing is exporting bpf_object__load_vmlinux_btf() and
calling that on struct bpf_object before performing prog loads.

[...]

Thanks,
Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/C31OATROKNZK.27CUNDSXX9I4K%40maharaja.
