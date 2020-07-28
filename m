Return-Path: <clang-built-linux+bncBCT6537ZTEKRBMPPQD4QKGQEKNO7CSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3DE230C85
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 16:35:30 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id d185sf10558161oia.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:35:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595946929; cv=pass;
        d=google.com; s=arc-20160816;
        b=N8LSbmXrEgRX3QXSCDaBw1HrpFOBg3koupOwzi8Eoj1BP2mOOZQIi0rrdagBcbsWv3
         wnf9V5bXmKs6cGss21QdFDFd8Vr3uahSYDNIS14KOvzPalzwl6T/e36VxnOkDccww0Yo
         B5mcNHOqwlZYza9Zn7cPoF/q8osYdg+/NcEOe4PP+PqM9x9OQPq9FEjGQt37g+J2vcy4
         5YIAdELPWIhJRntbChpM+6w5Clk0xeapojGAYMu3YSX/Pn9gxRcuNid51FpTuDYPONOx
         CfPbgXWiyCtNUCaj2fiaVJoFLOodt0Dw8qauWisZEa2VZVuXPUUd3IqIEfuFAFjT9ZtC
         i4wQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=S8SpqxpL05VACSA3MX+IOv7zME2kKYUfJOiHIqSphk0=;
        b=deTaZY0N9xKiAyscOz+UDt3SjW73tj8uykCT5ar8GVj06nyR0J+F0h5/kzp5pThEUJ
         n/JI8+9CFGkLpRUG+3SmuR9RtnC7hbUfukAYPUgkixvi7ZMonZDtzCD/mgff+c+nLa0I
         WtMRXZKn12qXwCav9tOa1keHl1xpq3WRU6SKL5AJEz68E3w6yOIDXhehfrPu7z/i67su
         t5om9aYP2cY7Qi+lnSWAe/1n0Uw1M0cs5zAFhLifqUC+ihCqJ0xlFzl7XQL6Sp/V4lTW
         oWb0EbRBsCwtikFsAyEiNnmluEfz8CS3S0gs+nmsQk/SQ48MCxLOe/DO93TXpjzm4GO0
         Om4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LhfgIFjP;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S8SpqxpL05VACSA3MX+IOv7zME2kKYUfJOiHIqSphk0=;
        b=clNSJ3vPxx65bypejR98JKGC4Hw2lqjILTnZN+yo4qkXlhXOQ87oY8Jk14ZfDEE9qe
         FUx8fsO1/o0gaN2F8Lo91R88hzKsONJv3RWy4Z9YBiynWBsQOM/TjuGj9H/Lga6JdgoZ
         sLgzGvXEVd3R4222UMVDmijRHW1oMPnm/UnPUvdSm34X7fei9NHY5GwYYPUYaiGFFnJ5
         paoNXOu7qDL/kKzpsNWxA+DIKKXskE0SAM9wjVmdnFVsgN9auZwHJWn0egImQgPz4W9J
         DlzG6iiOzyJ51a5OhbRrtfoKiZ2JzyR6X/YjO7Xhc4KfdYVPsCx9JIroUSyM339qmOjg
         H6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S8SpqxpL05VACSA3MX+IOv7zME2kKYUfJOiHIqSphk0=;
        b=C2p6roPuhGt2f9tLoF5H9l+REIbr3PvY95Le78Yf1G1z2pz/wI8dT0JmIobeqrz5OU
         94SIDu5ANbfB4bd/e78vDAeJRtIiYXCDiGJowS/BcNBDZ2lDD3euQtkIXmtAPTwFrm9y
         gMrSgLnEFc7CRqojh+Ij9Ame52fmB9O60l3CRiICmO2hsBpCo6z4sYb1OmRVK97NaJM6
         wmMhpcsvg6npSVgU8XrabIIiqJ4nmGD2orrslY6wYpnfOLgwJHJxGqfRlFpuOn1OnCXw
         GSrChjJsj8B2bD46u4VANNUc2KSxAWvQupz2euaKvYAskeMfojSxDcHIGz2oQBCam6hT
         C6Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/lxiHp6wdInz9qfXeZKtuEShr3Xn/1S/mDXl+1uKWzsUQPImB
	Bu7Jo5fpPOfNreFeiaEiGqQ=
X-Google-Smtp-Source: ABdhPJzY1u/d72tgRXcwLSYo/Z1tmX1oGR+X/bz6qQ2Yf+nNGBBqeLXpgmjuNYIWypa53OEQpDP4Kw==
X-Received: by 2002:aca:309:: with SMTP id 9mr3843232oid.131.1595946929424;
        Tue, 28 Jul 2020 07:35:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2103:: with SMTP id i3ls166474otc.3.gmail; Tue, 28
 Jul 2020 07:35:29 -0700 (PDT)
X-Received: by 2002:a9d:6b88:: with SMTP id b8mr16808528otq.258.1595946929008;
        Tue, 28 Jul 2020 07:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595946929; cv=none;
        d=google.com; s=arc-20160816;
        b=wpFyvXOgW7DEIIfPmHNkb4gHLwUbIGX9lhWIvwb9hI/PPerS8FoBljuhi8mNdVZh2w
         pyG0Afkw7CExWunE6J+KMhKVXSRfdP1S16Qt8f+CBgMjkrob1uUFtjYvVBmwdcQ6Iqhq
         6pmQt2rltOt/XcVq4SIytmEzXpOq5oG5pQbGxQmeXs/c6LguUDTNjGCixvQfJtXLuEQF
         jfXXvCsX01iiKBnSN+f6O+Y5fKHtosi0IOHkPaomEEIhMiny9B4bdYVgdjWvTHq2TS3P
         yax+4kczFk30SF54cGU/PWorlo4iCjSU8alsUxTXry3B+QrU3hw4JQnGFG2IhqiAWn/0
         t5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wE63hykpdOWCKf+hJ+uo4tJ4NmzeI9PTAqJH7wvSMlc=;
        b=WSkgbju2ZG7D7Um4/1YS8EWzYun3k+6v7e6w1YWxlnQAgy1+/b2RByc1vepGAwVnWg
         oCANi4F/jQnYCDLOHj2JCwxEF1Kx9Vosp+WXPdoi52oHcJSA025fwpDQXLNBloB+IRCv
         9YmfD1nfw41wbSF2Ltfh8mKsdHIDsYMV4DDxtPjDm6bcx62dbSqivq8SRAlOFv5G/GZP
         kA4hg71NSkAOojjBOwFaRhymc2kqH+KsRxppGtFAfe+E2FWhmjKNruzK8m7AeK7Pz5Gj
         yt8pTrM5PVZJORDfQWNs8ztSxSzn4EfPNjaEew+dRlCVcqt2qRRmB0q6rlP+2aBXYERW
         nkjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LhfgIFjP;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id l6si465942oib.5.2020.07.28.07.35.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 07:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id z6so21003329iow.6
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 07:35:28 -0700 (PDT)
X-Received: by 2002:a05:6638:134a:: with SMTP id u10mr6463616jad.35.1595946928305;
 Tue, 28 Jul 2020 07:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200727134914.312934924@linuxfoundation.org> <CA+G9fYvBRONMYwX36Hcju4JA5TwstkT2Afyuy2DB1zQcBcc1CA@mail.gmail.com>
 <CAMZfGtVV-u7K+Z0vFLkoKv1UOTfk=a9+r_6G4PYfGLywwnkm3Q@mail.gmail.com>
In-Reply-To: <CAMZfGtVV-u7K+Z0vFLkoKv1UOTfk=a9+r_6G4PYfGLywwnkm3Q@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 28 Jul 2020 20:05:16 +0530
Message-ID: <CA+G9fYs__nNa-090Cm8j_EPYGRfh+y+VTX3ZqR_W1Jcu2suNEQ@mail.gmail.com>
Subject: Re: [External] Re: [PATCH 4.19 00/86] 4.19.135-rc1 review
To: Muchun Song <songmuchun@bytedance.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, open list <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Guenter Roeck <linux@roeck-us.net>, Shuah Khan <shuah@kernel.org>, patches@kernelci.org, 
	Ben Hutchings <ben.hutchings@codethink.co.uk>, linux- stable <stable@vger.kernel.org>, 
	Hugh Dickins <hughd@google.com>, Christoph Lameter <cl@linux.com>, Roman Gushchin <guro@fb.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, linux-mm <linux-mm@kvack.org>, mm-commits@vger.kernel.org, 
	Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Shakeel Butt <shakeelb@google.com>, Vlastimil Babka <vbabka@suse.cz>, Arnd Bergmann <arnd@arndb.de>, 
	lkft-triage@lists.linaro.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LhfgIFjP;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 28 Jul 2020 at 18:33, Muchun Song <songmuchun@bytedance.com> wrote:
>
> Thanks for your test. I have reviewed the patch:
>
> [PATCH 4.19 76/86] mm: memcg/slab: fix memory leak at non-root
> kmem_cache destroy
>
> There is a backport problem and I have pointed out the problem in that email.

Thanks for your suggestions on the other email thread.
I have made changes as you said and boot test pass on x86 now.

diff --git a/mm/slab_common.c b/mm/slab_common.c
index 9c5eb4b08fc3..65bc49f19504 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -842,9 +842,7 @@ static int shutdown_memcg_caches(struct kmem_cache *s)

 static void memcg_set_kmem_cache_dying(struct kmem_cache *s)
 {
-       mutex_lock(&slab_mutex);
        s->memcg_params.dying = true;
-       mutex_unlock(&slab_mutex);
 }

 static void flush_memcg_workqueue(struct kmem_cache *s)

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYs__nNa-090Cm8j_EPYGRfh%2By%2BVTX3ZqR_W1Jcu2suNEQ%40mail.gmail.com.
