Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQFLR2DAMGQEKCF3YOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EC93A4717
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:56:33 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id mg5-20020a17090b3705b029016e1ef20338sf5785730pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430592; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+gTpMOsexV1+4NsuKCcBz01SZhnwHbnfTmNph1LOBMTOHKjdCHkgPYYJH6gQd2o8n
         UqVz1m8RbsilpQQLaTaksxKF8Q9VhbrIth5sDEd3jKWFh6+JEQSS0WfqCpTJQDE6lg/+
         e553hnZle9bypdn8xmZ8vePWdvVfqjJGCsAagHBgZHwKZZqCTZ+59yRIKF97VTxNX/dD
         Y2FK5H4ogUrH/TKhiuorU4yuSYoQI19tUXIb957CtalWY/sfFu7bdgJ4ttZxsh2RI1F7
         2wNa0+ajVOhfwUXJlyQ0ixNiZYzi3t6DkMdDm+ybJhlvhbGGaJ0O7MsWpz8rsfVswsJP
         JFxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=CX2zor2u6gCNrGPG39dV+usJq9wSOoPzXvZcQ7SLY3M=;
        b=cTXrOj4/miMiwTVAOnjrzHauuQp0cgIEFYeEBdrNuVg3kZXYixF/FrE5USf8AkfwSp
         3Ce07FONt6qeMKl9jiDnONXPHC1HPjEus7Zk2XxHm8uGfZFN0/jIS7ijSwmL6zB4Lj4G
         sdBGfk1rYk2aTllfnbmtWy3Tdo29wy2AoLpOxVB1SPECcvcssrjFyjuVQV7pIIStwjVQ
         3n/vLy0BUn8Gmg5eVlt2uWj/C7yfoXKhTgqZwuGDhotWVZb1gbscjdxbjJMuh1WmyxbT
         kyy0//LOeCz4GH05SXkfl6mzbzhjOmz6mDjKG2zxt4wc692nzUF9lYdD26jGlAnw+bmp
         SURA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lKT7CBhk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CX2zor2u6gCNrGPG39dV+usJq9wSOoPzXvZcQ7SLY3M=;
        b=f4ODZNbZ7dJvA/NZaz9fwh6ng+JsHTJWFZzPdIL6sagTOcXfi33Vza0LzYg6g6Ng6b
         FFXk/N9aiREgbqC4wzAlwiMacGFh3FY3tDLi0NWXTBRUqrWDB0KjDgTO/MW9SqfkQqTa
         abvDOjB7FbPKS0Oo1bEcy75SpMxAmnysYciHEC5e42jyP4q3xXEJLS4oOZTj14St03g9
         UdEWNoC7lgNVTVXBAleqcNZ6cvkMCU8/RmGA5Altc9rtONQzVn/vd6ZB7q0qvBq7pNl/
         s55yBTkSaQjSAKanbp1137yx6YP4BDKAB/ct5Ui3bSAJ33PoSewUgNWKbFWMfztX1tO+
         QCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CX2zor2u6gCNrGPG39dV+usJq9wSOoPzXvZcQ7SLY3M=;
        b=gLb0J+qK6JW0G33xyaeo33tOj/kCyLSun6wE81O2B8jE+dmPBZ1LL0hbs2tBl0ne7m
         Tyy2le2vdA8YGCxp3Qg2/lKOXYC37ZhuSPXGHHuF2SBKQeSxg9yW/Fj//mgTDlNWjdeC
         1tcLxVJKMa7TW1AN0buwEerZn57EZj6FXvJfOUtcBGtjgbYpUduKKZWFxpWzdP4wwvq4
         1/HH8wyJBQBFEOH7hPkSRAnpOMZ1qXuDLgn7Ayocpn3iKocAe8cRx1JVp6dRzby8KhIZ
         L0Z+BSbpHQygv5YPIA7Dn5sHvFqIxsaY2p3jbhZQQZHFj6CeVhxN/vqLaU1cuqx4v1ou
         dqjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531G/Sm3ESu8eNluXClC+/pgMMpw3S171fS/vTYjVLxx2arAPDRs
	3ZrLkXVL6iE+tuHGY11DMPI=
X-Google-Smtp-Source: ABdhPJyYoIjnvqwEuZhPQDOAWzLl+wa79XBt9veHusZdJ2gCPx6Sd7rlfe4qOq+INlIq32Z5TYe7pg==
X-Received: by 2002:a63:fe4a:: with SMTP id x10mr4572440pgj.132.1623430592159;
        Fri, 11 Jun 2021 09:56:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:24d5:: with SMTP id d21ls5096369pfv.1.gmail; Fri,
 11 Jun 2021 09:56:31 -0700 (PDT)
X-Received: by 2002:aa7:96c5:0:b029:2ea:7667:ff3d with SMTP id h5-20020aa796c50000b02902ea7667ff3dmr9246040pfq.52.1623430591600;
        Fri, 11 Jun 2021 09:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623430591; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlEhBSicd8NThP0PuNfqYxh+Pbr7x5heNXO+WkuGyAOQ2bfdmacLkqyKKblY+smOAm
         tvr4TTFT7PWOyPpM7S0Y5VbON7JCFxbNgyvcDLpHVI0jOt3NeyfgDL+EZDUBUWk+I9z9
         QTSVjmCAhw0SkkTvFJ7OCsbQN172cTIjWwW5KlbKyo6K0F0AI0J4XrIyAcObwlB3wiX1
         FaqpYKhPPwBBVdjWcBs+nWYcj82DIjUz2Va6s+eCyKuUsiBNJkpmhWqF9Ltv7kLpoqFT
         M8DzE1iXQt7pxCaYTdNk90bzYN9lUC7JB+6jBqR7JkGsNYOayGSvKM8bM2WiPDsH4XXz
         XvnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=qC8DwbJiHdStspqnLS7tXLLzwNgQM8u5+jZ09VV0fHs=;
        b=fV828zlgq5XxD1vU/XoZYf6dIYXIR9LbjOWSCf7mvNAZj+V3OUF4ba5UaCXfpos0ku
         KyOdsC9lFEz8i/QwOKVTAgXa21h5tJLHgfv6exHkQDV1OnPtwQPJcfBBlskr8S9P/TMW
         jt1E+rAYpz1GgOHnF3Wg7hUNDKxzXdUlN2KFSZfUZrjFXPjS4RW9qwZ3GafBUzFzC8n+
         6hmBubTa5MNOqzGyjvwl6psHaaM9OYE56qcdboHIcF/Swaw2sive09kuVlPYnlNlVq0Q
         lOQqmLga8PPL6rnVgsJ3p1YBlXsCntUTNgDfAjAjt62cIeOplcsLpkGCNK2J6+d5AhKr
         DD9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lKT7CBhk;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o20si945149pgv.1.2021.06.11.09.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:56:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E520C613C3;
	Fri, 11 Jun 2021 16:56:30 +0000 (UTC)
Subject: Re: [linux-next:master 7012/7430]
 include/linux/compiler_types.h:328:38: error: call to
 '__compiletime_assert_183' declared with attribute error: unexpected size in
 kmalloc_index()
To: Hyeonggon Yoo <42.hyeyoo@gmail.com>, Vlastimil Babka <vbabka@suse.cz>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
References: <202106051442.G1VJubTz-lkp@intel.com>
 <20210606110839.GA13828@hyeyoo>
 <eb652efc-7695-ded7-350d-4373dad94460@suse.cz>
 <20210607122550.GA752464@hyeyoo>
 <06af75da-ffe9-7070-1da8-bcb2cb7881d2@suse.cz>
 <20210607154957.GB927582@hyeyoo>
 <6e1d48f2-409c-0a71-4d04-a907fe4183b8@suse.cz>
 <20210608170528.GA28015@hyeyoo>
 <2d2d792e-e189-99a4-36cb-f1473a4df9ad@suse.cz> <20210608184501.GA5505@hyeyoo>
 <513f82e6-175c-d040-691c-5d0e7dacfb83@suse.cz>
 <CAB=+i9StdrGQWXXoQHKU5oLK3eKuNcuCAbrd88kPLzM_Yw==Jg@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <99de1f59-1e38-6410-86ff-0ea1f016c49f@kernel.org>
Date: Fri, 11 Jun 2021 09:56:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAB=+i9StdrGQWXXoQHKU5oLK3eKuNcuCAbrd88kPLzM_Yw==Jg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lKT7CBhk;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/11/2021 1:58 AM, Hyeonggon Yoo wrote:> After playing with clang 
more a bit, I got to know that
> compiletime_assert makes weird link error (undefined reference to 
> compiletime_assert_XXX), Not a compile error.
> 
> 
> I think it's time to CC ClangBuiltLinux maintainers, who work on 
> clang/llvm build support.
> 
> [+CC Nathan and Nick]
> 
> I assumeed that compiletime_assert (in linux/compiler.h) will make 
> compiler error, but it makes no compile error, just makes weird link error.
> 
> I'm not sure it it works well with clang, or somewhat buggy status?

I am guessing this alone is why we were keyed into the thread so I am 
just going to respond to this.

Unfortunately, this is a known issue with clang:

https://github.com/ClangBuiltLinux/linux/issues/1173

https://bugs.llvm.org/show_bug.cgi?id=16428

As you noticed, building the full kernel will result in a link error but 
it would certainly be nicer if it were a compiler error. Something for 
us to improve indeed but I am not sure when we will be able to allocate 
resources for that. Until then, you can build a full kernel to get the 
failing translation unit then use nm or readelf when building the single 
translation unit to see if there are any "__compiletime_assert" symbols.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/99de1f59-1e38-6410-86ff-0ea1f016c49f%40kernel.org.
