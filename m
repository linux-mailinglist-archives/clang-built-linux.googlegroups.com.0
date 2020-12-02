Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDNNUD7AKGQETFULSSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FCF2CC9A7
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 23:34:54 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id u67sf266453qkd.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 14:34:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606948493; cv=pass;
        d=google.com; s=arc-20160816;
        b=L6qMqC/UdkXOQyL5r5zZ9Q8rF6iuGV4dbpirhbLJScD02iF1++2QftgGL63Gf3yX6p
         FjiBXkEvn9JTwXHG4EsktrNH65pVFDpEyYMn5s4rE4VRO0QsOcgxeDjyjI7IByzRbkwX
         woEu+Tuq35l1dZWMSzY1NDyX3xJc6YmKgLHHlCu3XLqhsXyj6XT3NdYvK0JuRMjp3iFh
         2N/xGkmdmFnYb8OyGkxDLwyj4ZjrIM7Nxu+SGcywZTWiiDSY3kTNUsRtcw3/u6XQasjI
         zcmRH3L1MZzCgaabgFAdjfbBXBxBKR4K4N02cdnWAWcL/7XG46y5ppAufyKdYVhYTKBW
         +l0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZxjNkiH74d+yftJSueQgBOreXYRKG6JZ78cZc9pB9e0=;
        b=LQFZx5TIqgcRQ5wVZyVX4qxwqTYLoHsKSeqVbM2R0nCBzXf02gwE5AIOSyqetWE1w3
         OcnPaZ1slnHaLOYRV46nB94TOJAIj3/BfW60QLUqkPV6VOhtelouHqllSSgDC98xFaoZ
         EKsyyXyopX7JiPW95h/y7qtO/TL9WKY1Xu/RjTS8NjZwbrgzSGn87Vr4BS00ngK9dGAV
         TVuLpcO+ecm2Tcz4Tc6pVyRDYXOQjfB1GgoWur964y1ugeduTpFtYZWm7JCLXrQSVqKI
         xGYTG4Be3GGALWjj57Ujy8JNVEZiD2dtZniGZoZc5nCbJD4k16LJhE7Z6SUJuOTLcZAo
         3NUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DeLWj512;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZxjNkiH74d+yftJSueQgBOreXYRKG6JZ78cZc9pB9e0=;
        b=iKv5m7hntCHjmsdhNdZMlgH0cgAkP/+mOMdu6Q2GaLUzMNGqBYMihwqIlL0Zua5OLA
         Dkq6rAktZIgEf0a6tzCvrBC7QupojHlkck09kccZs8n3SwEXmAcTRqnZipywup820cH5
         S8Ixr3l7+aUneFyKI/s3xhTQlAJqCHd9T1Mr7N0titFjtWSdD9RApKXofqKm1gM9ymz7
         /Gsfqj2KXtIaJOW1OdpVpPNV2sAKgHEO949YtOWox8zGWNJOrRqTG9ZkmuV4PQkR2dIa
         fjunRC3clsRtEYXKEI1Z7VKfDMAw5xfDAgEe2qnRt0QB9yNTLOSt6JcMUJbSm7Kwb7qc
         MMIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZxjNkiH74d+yftJSueQgBOreXYRKG6JZ78cZc9pB9e0=;
        b=ned8iOHFabsF5uls1DWul9ThWuPcvU2wclvfUzkD6nh7UpvGcrM00mJkUIcj30TS34
         woTGUHWHu1mSufuEMLJb1L73Yqzk55Db5T8ArZoVRrZUu8uubCmndtGyEPQ7F9DObULY
         b7pjkEXfpRwcsf5tfAY9RdfxAXUw8FX+H9vahtybYfb70eRZN1evlKeJXqzoey8el8O4
         RabJxxjz/lXFgRxL2DURraH6MH1fWbO4Hclw+h8bt3caGaN/j/rI8YE8+sgNmUBN88/b
         ZeenjGCT2eHxQiBERFCmBTfdCIHNhM1BOHwdb+iTOm486MHnEFT8tXWsBtd4aNrWshnl
         sYmA==
X-Gm-Message-State: AOAM532UhRC/VT88DEEkZbGTd1iR6YxgmolRErkw/z9Z4qenz1si6W6N
	JCJnEZoRf/wdHrMtigDG0Ak=
X-Google-Smtp-Source: ABdhPJwzq0WQMpWre1KDuiP0CKo0SzxaIHsrPVQ5G1hsjjMcz4VtkHJD595tgTHzI1jggO9hXq/RYA==
X-Received: by 2002:ac8:7a7b:: with SMTP id w27mr434284qtt.76.1606948493359;
        Wed, 02 Dec 2020 14:34:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7904:: with SMTP id u4ls1538765qkc.7.gmail; Wed, 02 Dec
 2020 14:34:53 -0800 (PST)
X-Received: by 2002:a05:620a:1441:: with SMTP id i1mr4917939qkl.454.1606948492956;
        Wed, 02 Dec 2020 14:34:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606948492; cv=none;
        d=google.com; s=arc-20160816;
        b=P2iUBdzB3uwz3hC2HLF0VZCQVOT6BaRTy3+woWV9XRyL2GFf54L9Y3uNIyUlgISxrY
         ILOvzkL3phNqENywXcRn5j1J8cyF5WAI7zRl3pmj0r8dYaPLnGfe0D/Ot5vsa+EowsZr
         1KLTYSriqS6IRcOOrWb5DmQ+kokckAbhWxRoKyqA+xlA6jJCAAqPoNmDiweejD9hTvGN
         IwLQFTefUyry3QCDpoS0MFzdfCSrMf9Z2MxRnUGFtL9+7O1kc+OfxCEdYviL6MC2Twal
         0KYBJoUGVnBEVSqMDPUrUYBSx5YNPDYx9L4gB09NZNom4tX8FJmnOVK9X5vj9tenvkfC
         SvTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yj9uJKclERcz+3dgssLnxEsO561b5XP4e0V1kaqzzHU=;
        b=YyWTV5+FRa/tKgzlcN4MD7/AekgXvIg53sMu6U+NIExusFfWDhnUtOLh7SGcH7N9Zm
         ht2WhDYeFs0XrhR73a4NTxAC+erFc6vYD8K5zGYOyM3PAfMENbGg46TqyBXYx2jGk5w6
         CZNZydmWuWvRILtbJ8lg2J63GVEMy0aeEJpGpxbiFFjzIoEQ08n5RXjHvmhGpqcSGTlC
         uK+Mb2tv8E15spgCpVEANYuj1NZoCERh6sjL/eurv5QZ7beWupbhkqmCAxJr8Qi4qHxW
         72D2wKUpdinkJgE8NBAfhp5E7D7C1WWptckBzXMK6E0zQKfUcRsDFT1S9niGwB+5ZkoP
         tSxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DeLWj512;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k54si7155qtk.4.2020.12.02.14.34.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 14:34:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e23so138437pgk.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 14:34:52 -0800 (PST)
X-Received: by 2002:a63:3247:: with SMTP id y68mr437000pgy.10.1606948492350;
 Wed, 02 Dec 2020 14:34:52 -0800 (PST)
MIME-Version: 1.0
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com> <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
In-Reply-To: <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 14:34:40 -0800
Message-ID: <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Joe Perches <joe@perches.com>, Tom Rix <trix@redhat.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, netfilter-devel@vger.kernel.org, 
	coreteam@netfilter.org, Network Development <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DeLWj512;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Nov 10, 2020 at 2:04 PM Joe Perches <joe@perches.com> wrote:
>
> On Tue, 2020-11-10 at 14:00 -0800, Nick Desaulniers wrote:
>
> > Yeah, we could go through and remove %h and %hh to solve this, too, right?
>
> Yup.
>
> I think one of the checkpatch improvement mentees is adding
> some suggestion and I hope an automated fix mechanism for that.
>
> https://lore.kernel.org/lkml/5e3265c241602bb54286fbaae9222070daa4768e.camel@perches.com/

+ Tom, who's been looking at leveraging clang-tidy to automate such
treewide mechanical changes.
ex. https://reviews.llvm.org/D91789

See also commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging
use of unnecessary %h[xudi] and %hh[xudi]") for a concise summary of
related context.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F%2BU__qAsmk7vop6U8tpw%40mail.gmail.com.
