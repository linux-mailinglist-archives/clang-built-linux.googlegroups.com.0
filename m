Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLMMZ6DAMGQESYUNLXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 932F83B2401
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 01:39:25 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id j2-20020a5d61820000b029011a6a8149b5sf1609326wru.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 16:39:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624491565; cv=pass;
        d=google.com; s=arc-20160816;
        b=PEKNRHVsSBkZwxj93FSyjjhZgin4DY3MGnXefe/yMxGg0lNsGTp4030g7S/Vj5b8Lm
         bmM94OwsScbrMX/s+56zGtrDYiPegUhtic7U6Ko4uBLXTIe+Fo9WM9cAWO8auosdqjJj
         oz8TdGZirAI7X2fEtKqiIAW1B8+zeWk5ef+CQYPPGeWXP6OijO7vBGPTYYZS5myaPMVv
         aJ/TEFkplMYfDHeYf4ix5Pbh4ZwdIGu4/HDSsXqoLkCHyIaxOdV8POs+lCV2wL4mHh1z
         ffiduJgIHPiZ/Rnbs9oKA4XL1n6JLSOsgF5jCwAwC5Wp3Tf/2cpEktKV1auQk/gnnEBS
         zb0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KVfLBEsOhkhoyzCF5mTyF86W/1JY7aDDswILudYNasY=;
        b=y43FFXvg3ZA2h5yGqxp5u+JfMzhX3vwkxjKugnWGpzkVNqvhB3CuHeLLuqLyYH55MP
         zs0ESl/YamMHOe44JJellY7hhicD1xCDnRpI7CJlCAz0NScQN786KZF/3lygbSvSGL39
         vvvRmKu36+Xf/RdKtD2G1FJqaj384xdbUg4OZk+UKHGuY86cm7dhKaaqt24TZJhy3s0w
         uVIflGxAGdnyCVtQ0jZNeD0SGliKZSJWtAYoTmUBYBU3LAoD65mVck4WMPdmt2oQAkrJ
         vaKYawI3J77VC0KPyy/pU7I4N/oKb6Fx+D2D2foVINQi4JJ84zbVmQnttdt/i9S3d0kH
         XAgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DmxrR811;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KVfLBEsOhkhoyzCF5mTyF86W/1JY7aDDswILudYNasY=;
        b=msIdSbNZrUobUqr5lq2tYut0+Dy7S655xmb6U8jRmFrXNvynDIXHCC0GtjIVC8rrwh
         QoNC8mKybY5RBLlW+T/c+pwPqrC9MlDqiVAlcO1zYfmKsTIDJ+WaO0TH6Eg1SlHY6uDh
         FKxRPK8pxBJ8M1uPZjTdJOzCaGly7/bY2q0SSbo+fRGJRs7HA67VHg1z1h0oxVUxN11A
         XAtlpqfo94HsnyJhs+HfEp+wncCWEdBzjGV0edf2MhYyPDmk/hKQEWoUt5lCMMEl8IJn
         n69cgihk6zhfWUTMjChErXmoHRVBx1bfMf4oJ6dMVLge5Zam5edu3pxd27P1guc8t2VQ
         nUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KVfLBEsOhkhoyzCF5mTyF86W/1JY7aDDswILudYNasY=;
        b=qiEBokN8tbqPt3sUYmU1XbtCeawzYu8KhOVAPGk0FNTxFbIc0fcvAmUKJdQInxjMJj
         MhBkH1en2/b1xvm5lS+Vex8LMIYj/C/LcQok9SwzERgSvEH36Hve4qgNul/70STAkok5
         SL8dJiLME6wos2ptgrL2jB0kEgiVvxBATq0svnoCJOOu9rWjB6T6LmXDp0FE01JnRj9W
         euo8Tf2eRw8F1ssOhw+oLNxaw6lklq8mB33T93bHtm8d6xGLRcllh9A9ez5l2v0hLUMH
         ZAc7eTm5Jpt3t8rMViLKArwoG4YOjfpM9wZazmykufs7i0ypiTWjkUv4Nf7DcsRYh7Wm
         c31w==
X-Gm-Message-State: AOAM533T7Cvn9q4J4snFU2X+iMaILC8HN6f7g/YDxCyxIIXO/OpRcbpi
	DbAEFNqhoPFbIAhWt/Gc/v0=
X-Google-Smtp-Source: ABdhPJy/eHbAAu5e08IGW7RfqFwACiNA145uKRORgATss5B2oVlSD0o3ln9my0oMaqgUjTLWzs7ktg==
X-Received: by 2002:a1c:a901:: with SMTP id s1mr704336wme.184.1624491565312;
        Wed, 23 Jun 2021 16:39:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:45c9:: with SMTP id b9ls1893722wrs.1.gmail; Wed, 23 Jun
 2021 16:39:24 -0700 (PDT)
X-Received: by 2002:adf:d22b:: with SMTP id k11mr761828wrh.57.1624491564494;
        Wed, 23 Jun 2021 16:39:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624491564; cv=none;
        d=google.com; s=arc-20160816;
        b=082pAtUR8J33YntuGfPfVOqFaQCrhe2I2oygziVtiS06IokkYn8ctBsqu1TXbK24Wp
         2XpgfJfwnCFmzdh5at807AGn4nRKXE42B0V9q9seTRA6yVV1BgbOTOflomlo41D9us+9
         cvEIYEdENvXOQmeU7t1N2ZqFjj1FPHosz1IEfLyIv1pHZIsnYUW7OHIOT8BU4TZVApvm
         PXNhqmq0vqwHZtM0PUosJWwvicD8ssroL11p3xuNEpf51Mw6SJS57DSQML99OGahH0eg
         heIHwFADYsQVQ4f9Q1opT2Xun87TbSV0sa8itGKIXZjTFRKKZ13u4DJwIC40knJ03kWE
         QS1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8Sp9kvKEzYyUtaXztGUZ5tIFsqruRShTDkrjjkj9hMA=;
        b=asn+ynWYCr8TSOZtC+K5RL0tMi0E6cCKgs+k8jCnTorP7+vA3Ktd3U0kz7PtZg8flo
         ekGqUVIflz9b0uu8cGph7PNtw+zt5/GuKjR9wcXC0Wptcsjx0blyzMDtfa28UKu4sWjU
         khfURqEFOZ4qTq7JRGcI22iFX4uRSEvLNtPUo5hj0GNglnC5vxzXf6NROflpWYbxqzSE
         WqbUWrDXgjwuMxsi8OZZcFEmoBLsFt6hLM526fVH7W50nuHVQO30M7OKEi3Lq4LnoPcY
         VR62w+dPIcHrgp2gKpWQpKPSwiHPWvYdqVbcV1jfPS4R5Zk3NTYouywxqM16y26S7g4R
         zq0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DmxrR811;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id c26si88579wmr.1.2021.06.23.16.39.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 16:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id r16so5208860ljk.9
        for <clang-built-linux@googlegroups.com>; Wed, 23 Jun 2021 16:39:24 -0700 (PDT)
X-Received: by 2002:a2e:5c03:: with SMTP id q3mr1506404ljb.233.1624491563981;
 Wed, 23 Jun 2021 16:39:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210623223015.GA315292@paulmck-ThinkPad-P17-Gen-1>
In-Reply-To: <20210623223015.GA315292@paulmck-ThinkPad-P17-Gen-1>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Jun 2021 16:39:11 -0700
Message-ID: <CAKwvOd=Y1fhJM7NpotvjNy3OE+JtqEBy046ctwE=cqV_ge5tgw@mail.gmail.com>
Subject: Re: Build failure in -next
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: aneesh.kumar@linux.ibm.com, LKML <linux-kernel@vger.kernel.org>, 
	Linux Next Mailing List <linux-next@vger.kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Marco Elver <elver@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DmxrR811;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Wed, Jun 23, 2021 at 3:30 PM Paul E. McKenney <paulmck@kernel.org> wrote:
>
> Hello, Aneesh!
>
> Yesterday evening's next-20210622 testing gave me the following
> kernel-build error:
>
> ld: mm/mremap.o: in function `move_huge_pud':
> /home/git/linux-next/mm/mremap.c:372: undefined reference to `__compiletime_assert_395'
>
> Bisection landed on this commit:
>
> 257121c5aabe ("mm/mremap: convert huge PUD move to separate helper")
>
> I have no idea how this commit relates to that error message, but
> reverting this commit on top of next-20210622 really does get rid of
> the problem.
>
> The following reproducer provokes this error:
>
> tools/testing/selftests/rcutorture/bin/kvm.sh --allcpus --torture lock --configs LOCK07 --build-only --kconfig "CONFIG_DEBUG_LOCK_ALLOC=y CONFIG_PROVE_LOCKING=y" --kmake-arg "CC=clang-11"
>
> Run the above command in the top-level directory of your -next source
> tree, and using this compiler:
>
> $ clang-11 -v
> Ubuntu clang version 11.1.0-++20210428103817+1fdec59bffc1-1~exp1~20210428204431.166
> Target: x86_64-pc-linux-gnu
>
> Thoughts?
>
>                                                         Thanx, Paul

++beers_owed; for the report and bisection. Also reported
https://lore.kernel.org/lkml/YM0mrZIPM+sWTDHf@Ryzen-9-3900X.localdomain/,
let's chat over there.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DY1fhJM7NpotvjNy3OE%2BJtqEBy046ctwE%3DcqV_ge5tgw%40mail.gmail.com.
