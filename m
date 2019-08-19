Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3OF5PVAKGQEDCDXMVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFD294C1F
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 19:57:01 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id r9sf71566wme.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 10:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566237421; cv=pass;
        d=google.com; s=arc-20160816;
        b=b4C6CC56943+A/GXK/UlYY+BdQyoZRFNSJYsSb8sbnUdeWDVg8iTWgnVk7hMbMbasw
         0VhGQ3y7guw9HH6zkAtiC3nbTy+Ea0guLeY2rbylivYtOydoFUTljAl4oAxvF2IIsozl
         7GTjSnIAQL6fr76/8k4lYfM0EsWsivKy3CEfy6MYGSuAwFw8yO9hjd15R8KPRkOzx6TR
         EtKGmfPUdZxb1ULt3aJCTC+fBWjenmVS+jjt+AI4LjYNv5981Gkuc3C3/ePud22HxpNI
         HrLxULV3Kzg8G6IPkFGVeLHHGyZ2ROxFjS8yo+I3KVJcxlGD8ORXWpHrErstYBerSQFu
         6UOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=j8TSh4K31E3BCdQ6qrhsIK5vNFzZ1z28u1rk5rOla5I=;
        b=FHkvqe9mXaCHJOmr0WQ2tBInA+VKAP27Iy7CDTlOVAb6WpYzW+lB6SGvWIFNQmjsRP
         8Y1q00smsJ5Vp6jBeKMxL4YypGQtkz+2hr/u5ZX1/+BTUMQnryICVKMRdgo7mpXlZKrD
         3QbjpazPIwekvofny/xqlrSWUOhi8QIUEnJw+ySg15MXyWbJHZz58d5nojKbMqPYG+UN
         Gja2wDPcGj5gAkai+ujUdcMVSDywV5DP2ngPIXwtRxHWdnkD4Xgi1uHtQGItkdi0Mfjr
         M853czckoYmupAq6tf41T87NPQVRya5rq6ZKxGkTvsxv15Jvl8tP5gq+ozNWRzRK+76u
         ND3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MG19Is3d;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j8TSh4K31E3BCdQ6qrhsIK5vNFzZ1z28u1rk5rOla5I=;
        b=LuC14RR0LOtwmhxw9VWyFj81W0NV+/NIDxr8+QK1dYUdfPmD9zui1/wsxmtkMNvWTF
         t0RqyDyXceLHyn96eTmz8dxu2AO5vf1Kl7owtwLDDJm2HXBcaSqaQIJii/BSJjP0KgST
         6GQSFik4PCZ7+psrcDOYNkULNu+SymzAYOEIfpQIYlDfHijiVmBh81AN4L7Rmx96IAtc
         +ln3k00PHX3JrcCqsKXjpS7K9iXoYJS4jKkMxjUaB1R7P4knkYss/hjXDuh3EcYjXrC5
         4YxGaXWYAOpbuWw84SNuf90vUmowIqkDmkRw7pGw1yz94NQF5uSDAad+xn0aqhXoyO3V
         YO6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j8TSh4K31E3BCdQ6qrhsIK5vNFzZ1z28u1rk5rOla5I=;
        b=Oo0yqgobQkduKNZFTKL5l6Bc5BHWBuNrGVL27CWYFeJXhJeXMtnWLt9AGafJYXW7Q8
         kKDo916ng7PLUeZyuNzqEARP9FYB+BkTY5kgYHpUUboKvKx7CiqGx7qojWU56K+tU869
         /N9VqIcj3tpx/Mm/LV5fzIyj4zdPhiIH9teNwt4tob6f6GRmYfFuZ8WcvkFEPoiWjDel
         kca6QyhdHdw01ZjZKWmoKGpu2O1ls4JgfugImawWbhekfvzoHN99mxWXOmtCSLb3G031
         GBA1Jb8OKHnLJm3GCZdV9Spw7AcspMdZufl6cyUJ5T/8bD9obq6SnJvccILXhgtZ/svi
         t/Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j8TSh4K31E3BCdQ6qrhsIK5vNFzZ1z28u1rk5rOla5I=;
        b=VpOq2VhVr01qxIt15OIv77nSF3IoH9DlUJphf86jaxdI8cKyC2Z24pyp+rCfeYI5+z
         RyVsYzDRbhB77j38OMe9Ici3hbCnpBxVzC0mkNGwED4vWZjWi5Nl8L6vqCmqyCA4/VnF
         xqbibAAWuuZoEk1UM8haXzot9kUAL2s87R5nC5zjx4mQoP5zNdVW4mHT+mQghFolN+bB
         rOHfuCMdl+L5MYYxvUInZ4PXtxdxB34MYXEunUe8CXt9nu44FGvmSmgkZoKTjdzxU7bl
         ehg8SMuwbkzFBnP/7dgK1Wl+h8CowBXxSJx1+Mn7f1gSi3TqkdKVfBDiFBAMKAJLNmar
         SeNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWcPn4OhC0iRTlZhpRsAeGcS5iJLQ1yH8BjENvMgqmkCO1FG8y4
	zW8vk/PlhA3fv77G/2y242U=
X-Google-Smtp-Source: APXvYqx94Q9mm/FzJKzUiZigjVA2qNGveQJFXXbdugIrovis/+eWSXjC5mxpy0ibS7GZJpeH1l72kA==
X-Received: by 2002:a05:6000:1284:: with SMTP id f4mr30184586wrx.89.1566237421221;
        Mon, 19 Aug 2019 10:57:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7713:: with SMTP id t19ls100715wmi.0.gmail; Mon, 19 Aug
 2019 10:57:00 -0700 (PDT)
X-Received: by 2002:a05:600c:2486:: with SMTP id 6mr23085309wms.80.1566237420587;
        Mon, 19 Aug 2019 10:57:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566237420; cv=none;
        d=google.com; s=arc-20160816;
        b=alNMBKd+g6oRa+rI+cUlGaTSD8JQQv5oLiRyIrh/vedrZdOOJMKIi5vwvZsup+apa6
         hDkqjGm1CUik8PeEufFW5SUmxhDyg55QJsCOdrhFiRrC8NS1FUyf2iVKpPZD9eGi7j90
         zUQCd2oSf+/kQ0GwfVHpl109TLZma3fHxQC01kXjYYeuREwAxiE0K88QFEB9YFRDUDix
         r1092ghUEvGHS/Hm9kIs28HBb8Dn8XE+PSseh5+OUwhd5+MMqoWqbfLwpUje78uM1bzG
         ptNz0ueAdkZLm5j0S0CjSJhDuJVhk+S6KqhOSd5QXNDQE6QO4XWuLpEIPBcntD8bmEqW
         rQgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PstLfxbMd5uoHoJPwRPUMJ1FERZxzGFsbBHxhmU6GgM=;
        b=AzEq9xtZZWnHOXq/VKvOabu/zU285idHRu/AazR8+Z+Ef2paucZgO2njtl1u71SaEr
         0BNr0U97rwsinuZQhBeo69D5BbNjInzFQrcJYxOP4BngsoUdXuXVxikca8VuvgK1TOPX
         zQHRw3gf0GXb+ATQyM3emoj6OkOzFDRdBd/qLZXOsR56KC/A3E3iOGTPvSeo4+VEDrug
         FcwjbEfJCihcNNGWRye5TSgdGwLrzjISEQuoewVU5qOkqc+2uKvYERb0l5F3KBQ720A2
         +mYannI4PhKiuCehhIOPCPmvPNW+MGOKCJP7YQy/y+Xn2sfWVSMOlYS1e5JQSlIbw2pi
         nDzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MG19Is3d;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e7si608411wru.1.2019.08.19.10.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 10:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id z1so9619614wru.13
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 10:57:00 -0700 (PDT)
X-Received: by 2002:a5d:4101:: with SMTP id l1mr30615382wrp.202.1566237420255;
 Mon, 19 Aug 2019 10:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-13-ndesaulniers@google.com> <1566237106.8670clhnrk.naveen@linux.ibm.com>
In-Reply-To: <1566237106.8670clhnrk.naveen@linux.ibm.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 19 Aug 2019 19:56:47 +0200
Message-ID: <CA+icZUVc528uRJ7SPcnzzZQuomdGGOE6+BFPPyRSUpFP2J+Lnw@mail.gmail.com>
Subject: Re: [PATCH 13/16] include/asm-generic: prefer __section from compiler_attributes.h
To: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Cc: akpm@linux-foundation.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>, Arnd Bergmann <arnd@arndb.de>, 
	Alexei Starovoitov <ast@kernel.org>, bpf@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	"David S. Miller" <davem@davemloft.net>, jpoimboe@redhat.com, Martin KaFai Lau <kafai@fb.com>, 
	linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Masami Hiramatsu <mhiramat@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	netdev@vger.kernel.org, Song Liu <songliubraving@fb.com>, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MG19Is3d;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 19, 2019 at 7:52 PM Naveen N. Rao
<naveen.n.rao@linux.ibm.com> wrote:
>
> Nick Desaulniers wrote:
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
>
> Acked-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> [ Linux v5.3-rc5 ]

Patchset "for-5.3/x86-section-name-escaping":

include/linux/compiler.h: remove unused KENTRY macro
include/linux: prefer __section from compiler_attributes.h
include/asm-generic: prefer __section from compiler_attributes.h
x86: prefer __section from compiler_attributes.h

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVc528uRJ7SPcnzzZQuomdGGOE6%2BBFPPyRSUpFP2J%2BLnw%40mail.gmail.com.
