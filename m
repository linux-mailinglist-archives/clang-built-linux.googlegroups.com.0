Return-Path: <clang-built-linux+bncBD7I3CGX5IPRB6NL7CEAMGQEJLYNRFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B05B03F1527
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 10:27:39 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id c9-20020a2ea789000000b001bb60afc5e4sf136396ljf.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:27:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629361658; cv=pass;
        d=google.com; s=arc-20160816;
        b=1GVZZvSpsS5uFV0VtWtePTn6HjQRA0kDKSVslFgSXzX+YsHgpgcMOG1skmHwv7e5pO
         j4R87lUeOo0DckTSHppmCatufL/WfweFRzc6YueXt9daguzjto1dlMbCfI5p9FtkAhPs
         6jmvYJ6WakRlb++uBDq6X5Wfu8nUSDaBiKYwlm5S6XgPkMIwwuM9j11CzGKBerR6Y728
         AP+rUAwd4GvUvlKfdx8Y50bbM86RmAwOTWtV155wkXgJeFkmXQNeeUDLT5AOIKoLH7Qu
         7W3zNov5uhH8PrUGWFGzJ3+GBwMPfhnw1GP6NBZMdWp9fgr2iUdv2W0jfIfxn/SqqRMN
         qQbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8KEdUgFaHSUUE9ueT88mwvW+n065+bMkbH3eyqeiugM=;
        b=1FX8/AOM6LZvV7K4+cwKTiCH6u4ROqbT4NrzdU3ItcXxcE7G3sjK7IJ2O1wD18oPHo
         laitqd8ed/Qa3R9NKcQU/uaePNQ/8cT5qprFFwm6sm5D7UpxofckWBUoparf3HFkoLWK
         Ya2o8pqFspxoqn3iML7g4DnKo3X6Lyo+FGt7urZfKlGIVo6f6qEmPNXSV1hWpbWCSXlY
         Me6gRh2qnEMkycTC/tXKj+3fQo1kP39nkXPlfC1KPawNUxGVn6DlAQsRy9uJbzZsLgy8
         XnKdwoxFSe2AeqYp2eYF4cCeFD5N3Dn0kcTjyDRzExfxjyXAxd/oRJFUzr6ew0Gh45jf
         0Zfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=hOYdmFoK;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8KEdUgFaHSUUE9ueT88mwvW+n065+bMkbH3eyqeiugM=;
        b=kkVnQqBYYNUaQ0ABjW17d+xBvAh2a5SietSXkL2EnaoujQPDmHiqnhjIFgYePbp2ta
         zm5zD2+mr3tfjljU68iIRxVjrEKcdS7X//AWKH//qI1w2N8ZhgKdDteJdHMrhZp5wPKD
         hUlXUKrGYHwcfyR9QaF5fkksXzfrNa+KG9JyFV0ne8QBoVAjNWN+KUPUTyqIU692Lvx8
         ggPlfB+L89dy+kxo3Fa5iHMa7VbqFfP7dEMDS91NqyrlgCWzgDGwxlZ6NpNjw5bdE8Bw
         UmDDm4EBPTyy902B4/xy0Ou5tx52eOn7cbCtTJLWLa/XdEEpWRNi5CvruJJn1GV3XbxM
         NpXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8KEdUgFaHSUUE9ueT88mwvW+n065+bMkbH3eyqeiugM=;
        b=srBdx4cydNCWNtm1GnauvE3dxQCu5jomEMLd9uRaCXm2wlnP9ifYQBEZNrdWmTRxUs
         +8+me9WmxH7jmySVTu2LObVMtqVJOUi3XYBURrYWvIfIlTd70HUjX/ODxKvBrD8sm9qe
         99aQ6sEiNO9DWL0O/PwjRSOdfO5HaItVuVJzceB3+YtQTseEAPJmh/BWh9tK6rPdxIgu
         CH1nuMDRSMlYD3cYbmDR+3OgfyBwf2EqOyszPHL82jhgezo2D9j5GvYpn3ZRXcg6ouyQ
         +SlZkugO9fjYgfsijSniw59Da25WqYeoaqF0Zb/ifbmLCBKLbE0G59hH9+QE7YxyS8Iu
         i8rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hzfbsDzkZpt/U/ZbPXCFJKulB0taIhQbUKf0v/GsjpkHCfVag
	pSLgm5cBeCvUuzz40Doot7o=
X-Google-Smtp-Source: ABdhPJzOhUEVMAvwigcmRz1dua+lLvSBhyL2R5DileYxU0i3G8rjjNXrBZ704jQD96WPTbPaMxrX0w==
X-Received: by 2002:a2e:b52c:: with SMTP id z12mr11210031ljm.271.1629361657239;
        Thu, 19 Aug 2021 01:27:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls887369ljf.7.gmail; Thu, 19 Aug
 2021 01:27:36 -0700 (PDT)
X-Received: by 2002:a2e:a4ca:: with SMTP id p10mr11151279ljm.415.1629361656200;
        Thu, 19 Aug 2021 01:27:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629361656; cv=none;
        d=google.com; s=arc-20160816;
        b=Ze7+SGjJhC/jRirApzfclF1oeVPVV8khyOx4GP+rFCTFtM83Q6o9EwNAgEN3qdKs6V
         oF4/uf5duxFiDXk0AuoUOmzXUoVE95wdinQs9cQ8ClLTcqZj1AaxTDBlPOYn47HlEnoO
         ZXbSMrfKnQYfICO4lRBqZsXmyqXocZjH+k5jPwDw+n/N8/8s77utW1lAs5CGJR8JXVis
         5kXf+zJS8noxNnClWSl/VsAWn9cvvhU2fMJmrQsDxtiWdH4OQ1xKakyEM60d7UdE7cxL
         Mh1/6Qc6AFS9PeCfqmALQqNGMHNf/B2pSy+EzO/b5eezDgSbQvHMcYHf7rTnSraS7fZP
         uZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=fnux9c4rs4QAwYzHEIhmWyQkib9slllVEKuUIkxZE4U=;
        b=Z2Cjga6R6OwYTONo0gxHsbu+h3B/tt37WVSted3rcrLEfDrsI36GluWE0X30W3xpLg
         uFsOlZEMgs1JSxuhaqEIBYPe/aaouRt0SYqVwRYddW1R7NNFke3aRfdiJCUn2yEf+Lht
         +jxVVpBLWzsA+wIMQcAd0NF6/Bv+xafVpWko7dEATPkH5xKQKwVzGCeqWNmIYTt+FGqg
         7TS2DmU6+QA+6Qzho1uYduNP93ednUupQOk+1ZdPBmPXQcutUDivfLf72jajYuA56XT+
         H3ygX3TFgiOY0BKDSZhIn+G0AECZIxXTmUH6J7yfQ/tVpACu7J9jk0q47lRbjqpXFg8v
         HIKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=hOYdmFoK;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id t9si146497lfk.1.2021.08.19.01.27.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 01:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id i28so11124669lfl.2
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 01:27:35 -0700 (PDT)
X-Received: by 2002:ac2:5f0f:: with SMTP id 15mr9840865lfq.25.1629361655585;
        Thu, 19 Aug 2021 01:27:35 -0700 (PDT)
Received: from [172.16.11.1] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id r7sm256655lfr.60.2021.08.19.01.27.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 01:27:35 -0700 (PDT)
Subject: Re: [PATCH v2 4/7] slab: Add __alloc_size attributes for better
 bounds checking
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Daniel Micay <danielmicay@gmail.com>, Christoph Lameter <cl@linux.com>,
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 linux-mm@kvack.org, Joe Perches <joe@perches.com>,
 Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Andy Whitcroft <apw@canonical.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Dennis Zhou <dennis@kernel.org>,
 Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-5-keescook@chromium.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <a54715b4-3d95-293c-6b18-6d84299bd58f@rasmusvillemoes.dk>
Date: Thu, 19 Aug 2021 10:27:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210818214021.2476230-5-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=hOYdmFoK;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 18/08/2021 23.40, Kees Cook wrote:
> As already done in GrapheneOS, add the __alloc_size attribute for
> regular kmalloc interfaces, to provide additional hinting for better
> bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> optimizations.
> 

>  #ifdef CONFIG_NUMA
> +__alloc_size(1)
>  void *__kmalloc_node(size_t size, gfp_t flags, int node) __assume_slab_alignment __malloc;

Eh, can we keep all the attributes together instead of having some
before, some after?

I don't necessarily think this is a good idea, but just throwing it out
there: __alloc_size almost always goes along with __malloc, so one could
define __alloc_size in such a way that it implies __malloc, then just
have a "raw" ____alloc_size version to use for krealloc() and similar.
But I guess it's cleaner to keep it this way.

While declared in string.h, kmemdup() is also eligible for alloc_size(2).

Which brings me to an old wishlist item of mine [it's almost christmas]:
that alloc_size could understand more general expressions for the size
of the returned memory, not just the primitive one based on
malloc()/calloc() prototypes. So e.g. kmemdup_nul() returns something of
size $2+1, while it is also very common to have a alloc_foo(void) helper
which returns something of size sizeof(struct foo). Unfortunately I
don't think gcc's attribute parsing machinery can easily be tweaked into
accepting

struct bar *alloc_bars(unsigned count) __new_a_s(count * sizeof(struct bar))

but maybe clang could. If a compiler could understand that kind of
attribute, it would also pave the way for implementing
__attribute__((__buffer_size__(param, size, access)))

e.g.

memchr(src, c, size) __buffer_size(src, size, "r")

clk_bulk_get(struct device *dev, int num_clks, struct clk_bulk_data
*clks) __buffer_size(clks, num_clks * sizeof(*clks), "rw")

which could be used for both static analysis and optional run-time
instrumentation.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a54715b4-3d95-293c-6b18-6d84299bd58f%40rasmusvillemoes.dk.
