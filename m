Return-Path: <clang-built-linux+bncBCT4XGV33UIBBUEG4CAQMGQE6FKE2NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id A5256325745
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:06:41 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id 63sf2515887uak.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:06:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614283600; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCca4M0FZ97vB0qxPHgar5cO5qLVHM4MJ7b5EeHTChu1p1oZIfGy9PB/oUb+obIcmg
         UNyKPvmqrn4oWK7BZccLjybnb1chZAX8bnhuVagRk1xqYa8hcQBHoWvXOJ8M4z9kQBof
         mZCVoNmOYb7r+KIeyTNesltyWvnSQ3wcT+VOozBpO5Z8ItsVLP/1dPvfGczmrTrCN+at
         CuEPc2df2UTI8B/UoMsvwYMHsb5bv/8ExA8kOvj7eaJ+HM3Aca3zsvQwHV4DHr7rP7hz
         eWA9la9iGM2dXpmZcLryyo6BM58ad2fyPbuvexGMdhP8HQQ8cydk5u6hbWX33LOQOaGR
         y/qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=PfvtOnooWLn9C4g/SFlFyd+TXDssCRy4i4tQODCPReQ=;
        b=JdP/Xe8gxDj7S576BUouMzjaqK5IDWUj/0KPpahw4mmcTFLVt5F/wXyN6wk1agTSlq
         N13q0sPzqDyaPqrjzhIw4jUbzuLOGbQl4kER0YgTCECDZWzdaYk98pNpWtKYPVdvhIEW
         5EvJhmrf+Nxi4jb8MzGDRYTx5JHZ3Bg1Qs1AciB94YDMbZE8kr0Augx79QC29iv8mYsu
         rWQDjuhD69cIyOExOHpW4lmDOaGUFrJ8rH/Baau6zc83jEFchfIUVb+9kyiw2mHFrTfn
         WLZygjM6GMbPT5MG5kfAfdiuTVWUpGGYbP8UyHvLWo/+YVuvFe7tC/c2+WfhObX1jtE3
         rQLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=S33rec2d;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PfvtOnooWLn9C4g/SFlFyd+TXDssCRy4i4tQODCPReQ=;
        b=pflUdn0S9IiiHTyhl/yQj3vsY2xMOVN2T9I8B22NDA20Iq/I8MLmygErIL2xXPMm5k
         SOkBn7x5gRd9Tc1uNxQxKnE7xbCbEuUgVtWjfNVo9rLu5li+jwGM0bHTgFC22HPb8QdY
         2J+v1/8y4YRJqaHIBi3bniCvKIxBpXNFsikIdyTd5WQL8KuVnV88oUjvrYudMU3h4P13
         30VKSFlt3OvhY4m11pcw/UcbbRpxEA2FBm05QTvwcu3Hhc++Cd5FT7CtFK0MpHH5VAjp
         +67PeedWOzbcSXG4uGw6QM/TQODqsvc+tOu+3u0UhM0a7lsaZ8rvXmIuydd5H4GAoGsV
         JZqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PfvtOnooWLn9C4g/SFlFyd+TXDssCRy4i4tQODCPReQ=;
        b=HWNhZ10kyGVkZ5UqVjYwp+LGCaPvR+Td8rJpg0X7ysqTxRJ92MojMcHzz0SC+9/8Uj
         y9hu8HPCDAYzg6XD3hXU9+BWLTgmuouN5OOKhtMfCZ4LOlEFQesCLTIoaiiYw+w7NKZl
         KxmrZDJuqxN6z0k9Ffv+KnoHj3DrH06NWOrzvNkiyF2m/u8mYHvTCjvADoCZa3Go5q0Q
         wNrhYkSMBKN98+0gPh+d+n0TlGNGPne3eQ6nuEDz7dthph2oswQoXXdcg5APlQIF4MD2
         LfoK9Qeb7lej1C/qXfay2n+5BzjmIPjbzlOnvCK3OWPangqWZ/1StHXdfKzD1zmAAKw/
         nMHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bbDvyuvYxUWuZ4upGKxav/n49RVK8FlHexF7/jxOM35JTybBn
	YOePBydPDwQN+7um41MmJ2k=
X-Google-Smtp-Source: ABdhPJyEym/PHaeZRapbuWqGQjNoulWlcLaB/l4C1I/R7sFMfVAbqqL2gZUNSK+J0CCDcJ2TIxse9Q==
X-Received: by 2002:a67:f455:: with SMTP id r21mr2561504vsn.42.1614283600766;
        Thu, 25 Feb 2021 12:06:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ebd2:: with SMTP id y18ls831615vso.11.gmail; Thu, 25 Feb
 2021 12:06:40 -0800 (PST)
X-Received: by 2002:a67:f9ce:: with SMTP id c14mr3005370vsq.28.1614283600284;
        Thu, 25 Feb 2021 12:06:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614283600; cv=none;
        d=google.com; s=arc-20160816;
        b=YasQvR1OCl1DTk48KL3fwBj6P6PeEcxzEIJHjek7WB7czmuCI6/IwEzY9FLRvzLqqD
         Rm4sqFCd+4LY9EAmS4380X9h4aiNo2qbN/MIMDQEqz4d2l2NkadkyvKJBBjG2WrgAYFi
         V84PxYQCyksOoFQ851ubZxt/Wk7DHhUeed8XK35qDywNVAAnv0a6vS3aITdhcCsLkYPJ
         CC2S6qeew8HmvUmm8EhkuEi+tkOThf9KptQtv38N6d1w5NTNX0A9FrLdG2XlN9k8c+Ot
         Qg9b236oct4gJZJXOnxnV8AriGqiiqllpIDUf22aGUv5ZMQH9zGAV9CGMNSICIvdEin8
         wSbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XnwYf58+/MJ9ya/9zMcFFH/6+V3KSyipl/k5Rw01xEQ=;
        b=VTBwgpoMhuKbIe4SUknob+JXddzbLTViX0fBC2w61F0hSh8uiMGBCnuW2so7udYo1V
         hvI7C+TrDq2ww6oyV2J86jftNjrwms1FuQ3YoUzjAu5AoDfuwo/4byMUFb6ovgEkRMXH
         InQZWe8i8M7aZW6zM0hYW5Vp+SFzqKE1zGXh+pDlN7xVI4C1oCLr/5S14UWIF5Pop1T1
         8dFhRmw0kIrZddku1gXTkcRsqhO9Ni8tHGEdRzSB6K9M+tBzQ1Vwpxy/qEWwBdvlvR04
         1PyVPE+Xl2qR9FWy4RNRE2aWRe+GefBbc0Jkk2y8JdN/QFCh8zUhV3MAKcb2uhY1NDJP
         cn4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=S33rec2d;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a136si142629vki.0.2021.02.25.12.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:06:40 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B79460235;
	Thu, 25 Feb 2021 20:06:38 +0000 (UTC)
Date: Thu, 25 Feb 2021 12:06:37 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda
 <ojeda@kernel.org>, Marco Elver <elver@google.com>, Sami Tolvanen
 <samitolvanen@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, Randy
 Dunlap <rdunlap@infradead.org>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Message-Id: <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org>
In-Reply-To: <202102251203.03762F77@keescook>
References: <20210225164513.3667778-1-arnd@kernel.org>
	<202102251203.03762F77@keescook>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=S33rec2d;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Thu, 25 Feb 2021 12:03:48 -0800 Kees Cook <keescook@chromium.org> wrote:

> On Thu, Feb 25, 2021 at 05:45:09PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > Separating compiler-clang.h from compiler-gcc.h inadventently dropped the
> > definitions of the three HAVE_BUILTIN_BSWAP macros, which requires falling
> > back to the open-coded version and hoping that the compiler detects it.
> > 
> > Since all versions of clang support the __builtin_bswap interfaces,
> > add back the flags and have the headers pick these up automatically.
> > 
> > This results in a 4% improvement of compilation speed for arm defconfig.
> > 
> > Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Cc: stable@vger.kernel.org

I figured 4% better compile time isn't significant enough to justify a
backport.  Thoughts?

> Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225120637.8e2a234f192952829fc5f471%40linux-foundation.org.
