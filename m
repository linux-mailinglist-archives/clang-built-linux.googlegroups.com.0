Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBQPHSD3AKGQETOLFCGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 120CB1DA104
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 21:30:11 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id s23sf449425ook.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 12:30:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589916610; cv=pass;
        d=google.com; s=arc-20160816;
        b=YvM3E6j//VKya1EvCRrrbNBJ1MIUaXxQmPYhyQVtipmvzAk75eF+ucFKl3EQTc/Zd4
         UWdB9e9QTkVSiKpDMD5FGHoyGJK/ekL5bbfjDSTuIo3RdfMxbKJAFCcz/a+4BIjWJt1c
         tDsi3NgJPCFsczxRBbAJq8xbFWehmIQNJKILnxefUV1cxnshnwL+3F4dZvrtGD+UE6AD
         Aw0r7gtxajLzbLfamOlEuBfT8bk4JF9GcC+GZwmGQ4lp1aQ5R9Av1iNdmAl/frCWe4/o
         2FLfry4Ds4e2gWdxanND3ZPhZ1VvMBmUxDjKx29UEU2oLApbaVYuleqf1dCY8wZp0gOl
         LIwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=upFChs5Y1qYv+B1gvx1OrdZs+ZSLX7fO8yw2MuYns2E=;
        b=tS3xoVuQqmk06/w9WOs6eoVZZdhBLnVUm9oP5wC2nlIuZ7ARVak8v+DfKM4yQrz5f8
         admRDW8zo7H+05UNo68C2L+AY97Tj733dsq2IIEhS1rT6bYVsbQi2PIQg0gP9V6lKnQ5
         MMvYq1MYJajsqHRrGWz7S9jMru/xn4W6PrxOqT4q/Bg1vlcD6bv8cJTRxxP3ShLWQXTS
         HfsMO2fz7LsdBD8m1LJrhEsP/45BNt3F8XECt9q6SL8tBw2LeBat5cFQJNYmFiezC26j
         gL9GgCkpI8nSCxnKQJ2426eIkSG7awIC18rpDz/2EkwslgrO8TiOYq/QnHjrC7QqqGLP
         mTXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EmfmIBE2;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upFChs5Y1qYv+B1gvx1OrdZs+ZSLX7fO8yw2MuYns2E=;
        b=PvHtMdGK99lYJBOJEkM0GGawuKC3+biQwMlVQLofzvqzJLqqk/JJV/Q7iU4igUYqJt
         m2aW2D14HU7zQzM9rBAQ6exJy5HKhPJ/Qqb1iC5yWaWHtgxhwAl1yAnyjCdIpu/NZwik
         wsApvYeHcuIfdkDYOBOLU7JZryS91Uu+Oy6+46tAaLLXjVS+DuRlA5ubEsazGTZEOaj4
         JJtyhbd1gu8fR7t3Xrj7t3btnlegpegIom14U8/YGu8ULYUf/79pOe6LwuNiNwrnan0a
         h3tl9KOu8laWMNQ3BSkrM5PJwZetAT6GVuyu3UXC8+g4LNcTD7Nh3U4V9TBHEvYjYEL8
         pfNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upFChs5Y1qYv+B1gvx1OrdZs+ZSLX7fO8yw2MuYns2E=;
        b=rQeWgiXwx7SnBo3X+rwTNlp7Nl2mgEUPqRfl4XOO2tsKP4Zvc9L0LTIiWb5+r8HOSx
         +kc/1s0N307T+fAaEfzHXJoME94rwIFSdqcbMgp0Hu3AjXqAhuA6ks20fh5SgslNxQ9k
         qdJaEVcqbJ7gruxc9DTB042wC+njsvUDJS7awqvzv0J3LOUvIioDP69mkwgMv7bB8Orz
         +cMD1FhTFgDh96xob/qRNtTB+OLsqUFQisQS/N2j96PmZ3StECaPtQxdqpksVcpCBu7X
         saI+zkl5audIFl3g5I+VU70ghaBCdDJvgHDb46TTPDOyMOcgHm5xphVHefQQghARfnRz
         xY7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upFChs5Y1qYv+B1gvx1OrdZs+ZSLX7fO8yw2MuYns2E=;
        b=P031bml7n39HfHRFsRNydunLfakOtB5yNgiU9oKctjGuTkMQfO7ZaIahGpvBdexr/U
         5xFw7Airl9xJ8vBInZ12K3l2TlT5dduwCRYldGYXIF4olOV3zX+DRCSRAweJNk3nQlpr
         ewdFNOL/uPA8R08zLhsQ7TM9VhLt7wQlPdZvK9t+U+wAWv9HwL4x+xq8bwHnz+dnbm7G
         8eKeYtQbjUAPs5p8M4KoyYTnIWquCafvhzbmCMTZjHAFeLaoYFQwBmXveb/XcHL1og8g
         A/pht1WEL1s1zyvMr37ajrSRlHMXjGS/+Fu7Q798pIxBx9BS+5xalOVH07hWlIB29HUm
         WgEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Hq3CUNsxWRTOxoDh/GwdJZE5KucDIBNJFEpz1D2dhZmq3IDNO
	R3Z974XVd3Kb9haJ0HeNP/I=
X-Google-Smtp-Source: ABdhPJzQo5uIc2dCCr3I67MabcmYknNmEWMUo0M6BHQUwU6blSLkHYopSkcRtY49YWEaVNk1nZbwFw==
X-Received: by 2002:a05:6808:19a:: with SMTP id w26mr778005oic.32.1589916610004;
        Tue, 19 May 2020 12:30:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:aace:: with SMTP id t197ls69882oie.4.gmail; Tue, 19 May
 2020 12:30:09 -0700 (PDT)
X-Received: by 2002:aca:d70a:: with SMTP id o10mr741685oig.121.1589916609687;
        Tue, 19 May 2020 12:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589916609; cv=none;
        d=google.com; s=arc-20160816;
        b=OIS+SigRBdXtAF7XK+qXLDME5wH3LnMTppcr+MctVGgoldmLusMvFYmXWxhDWCjgSE
         RItpmUdk8MA7S+VX2AlnLP42kpUsH7FHwS3dLb/sRUeR6LSYLlrmHiIXquInuokFcpwq
         z7JFSkYyZspuzgv8VFg76M/VLsKJi7tno/ljIJLARlfifc+KixhOSyR4DXcNJDIO49dF
         Ebp+vP1knq4p3qUHiZISq28yWng8T1KYgprB2Avk7Z9HhhFI7XKYS8FkrJ2KEGjskQJ3
         0wsVx33IK8NWmYPGAkr0oWx1py+AOocJHJSQPDEWdJKY3XO5c2AnokNqwkSPvwFTORL9
         LbxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JLNTKuWXG5RL22GiqkJEO67M5+yDAhwqj8vxR1pC9Pc=;
        b=b2NeJ3s4567vgR/qAAZ6O6bkKtd7cgR8IR25Bdcn5+LAXCn5WDNl3Y8oh2hmwhm9i4
         xOVCU5cWloNeythqnIbvdKvNactj2Zvdb78HuqWKB8TiGn4+fi9yiKK/JNGZplGw8301
         5Hqk2+TYbw3eISoVVoZe8PlDtQyZCz3fh73wtfxk/FNi0yGmLe64E60Lm9OD1AjQXWj4
         yHEqXByudAvT6So1zfdqrYsVHmkqkpUCaEOnZL+CvYCysmmPedEZ8au5mbR1O5jwlDGe
         Xf7OZCZFsr19LNsNUPR5G39vz5RGm7adRjzO3eM8F9lLHZUD/HQLIkEKrBOtU8SnUWWc
         PnjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EmfmIBE2;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id u15si62599otq.2.2020.05.19.12.30.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 12:30:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id p12so565977qtn.13
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 12:30:09 -0700 (PDT)
X-Received: by 2002:ac8:1ae7:: with SMTP id h36mr1504281qtk.59.1589916609195;
 Tue, 19 May 2020 12:30:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
 <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
 <CAG=TAF6aqo-sT2YE30riqp7f47KyXH_uhNJ=M9L12QU6EEEfqQ@mail.gmail.com>
 <CAEf4BzaBfnDL=WpRP-7rYFhocOsCQyFuZaLvM0+k9sv2t_=rVw@mail.gmail.com> <CAG=TAF5rYmMXBcxno0pPxVZdcyz=ik-enh03E-V8wupjDS0K5g@mail.gmail.com>
In-Reply-To: <CAG=TAF5rYmMXBcxno0pPxVZdcyz=ik-enh03E-V8wupjDS0K5g@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 19 May 2020 12:29:58 -0700
Message-ID: <CAEf4BzYZ9LkYtmiukToJDw1-V-AFbwfB2jysMU9mM3ie9=qWHw@mail.gmail.com>
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Qian Cai <cai@lca.pw>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Linux Netdev List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EmfmIBE2;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 19, 2020 at 8:00 AM Qian Cai <cai@lca.pw> wrote:
>
> On Mon, May 18, 2020 at 8:25 PM Andrii Nakryiko
> <andrii.nakryiko@gmail.com> wrote:
> >
> > On Mon, May 18, 2020 at 5:09 PM Qian Cai <cai@lca.pw> wrote:
> > >
> > > On Mon, May 18, 2020 at 7:55 PM Andrii Nakryiko
> > > <andrii.nakryiko@gmail.com> wrote:
> > > >
> > > > On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
> > > > >
> > > > > With Clang 9.0.1,
> > > > >
> > > > > return array->value + array->elem_size * (index & array->index_mask);
> > > > >
> > > > > but array->value is,
> > > > >
> > > > > char value[0] __aligned(8);
> > > >
> > > > This, and ptrs and pptrs, should be flexible arrays. But they are in a
> > > > union, and unions don't support flexible arrays. Putting each of them
> > > > into anonymous struct field also doesn't work:
> > > >
> > > > /data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
> > > > array member in a struct with no named members
> > > >    struct { void *ptrs[] __aligned(8); };
> > > >
> > > > So it probably has to stay this way. Is there a way to silence UBSAN
> > > > for this particular case?
> > >
> > > I am not aware of any way to disable a particular function in UBSAN
> > > except for the whole file in kernel/bpf/Makefile,
> > >
> > > UBSAN_SANITIZE_arraymap.o := n
> > >
> > > If there is no better way to do it, I'll send a patch for it.
> >
> >
> > That's probably going to be too drastic, we still would want to
> > validate the rest of arraymap.c code, probably. Not sure, maybe
> > someone else has better ideas.
>
> This works although it might makes sense to create a pair of
> ubsan_disable_current()/ubsan_enable_current() for it.
>
> diff --git a/kernel/bpf/arraymap.c b/kernel/bpf/arraymap.c
> index 11584618e861..6415b089725e 100644
> --- a/kernel/bpf/arraymap.c
> +++ b/kernel/bpf/arraymap.c
> @@ -170,11 +170,16 @@ static void *array_map_lookup_elem(struct
> bpf_map *map, void *key)
>  {
>         struct bpf_array *array = container_of(map, struct bpf_array, map);
>         u32 index = *(u32 *)key;
> +       void *elem;
>
>         if (unlikely(index >= array->map.max_entries))
>                 return NULL;
>
> -       return array->value + array->elem_size * (index & array->index_mask);
> +       current->in_ubsan++;
> +       elem = array->value + array->elem_size * (index & array->index_mask);
> +       current->in_ubsan--;

This is an unnecessary performance hit for silencing what is clearly a
false positive. I'm not sure that's the right solution here. It seems
like something that's lacking on the tooling side instead. C language
doesn't allow to express the intent here using flexible array
approach. That doesn't mean that what we are doing here is wrong or
undefined.

> +
> +       return elem;
>  }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYZ9LkYtmiukToJDw1-V-AFbwfB2jysMU9mM3ie9%3DqWHw%40mail.gmail.com.
