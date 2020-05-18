Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB5GART3AKGQEUQB7U4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9D71D8BE3
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 01:55:34 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id m15sf12595271qka.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 16:55:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589846133; cv=pass;
        d=google.com; s=arc-20160816;
        b=f70N3i4sX2uPXksqtc79c6DYqqFfAbq+HSWU6CCIOvN2ezZoYD4SISnRYhdWNpdkU7
         SLKD523Ay0Xc3gqiyhIJp/aiNpjj1ZStqKQ+Pe9M/3XgeRPcWJZuO1nHczoAM4dlrIvK
         GOy3+/YkENEtpCkaecOEacVW/XTNJsLYabOm/E9kxhB4wawGC2cS7nCCOeiyxUP6QlIX
         uf7IcEMlPAvduO4VUUSsMnjNBkmty0bcBeel40gBFIVU5w3qE4CODrNnW4B0Ju5K+MBe
         gYYqit8ZOlGFkG4afGckFnQqhRVRqyLOSgESOdJhvMosnPWIbteiyF8SvIiiVlC9bzpo
         6JZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/+wZpl/NfLFL4cwq9PY8ddA10dY00CWhEVIKdxC4r4k=;
        b=0ua+fWBxmAv2KPd0W16zPQ8WyXy/n3kvplnJEu6usYMxwRvZrMjf+YYSwMWyBZR7rT
         GA+aRMimHB2jqkWXoTgDsmEz2/Yl+WlBNnWAFl49PvdTtQOtaw5LWd3VgdpEzoODjB0T
         ujen9xNEHGz90FmYcXzwwKQseHyMNKNkgim6evLhr8CWyi1zf4OhW0ZecC2jRRkb9sz0
         pU+jXaoOegBTE9QFBERLqjnKNEU0NJPvBmDuleoE8IvINTz8z7A9CnWhbb7GeyjimtxG
         4JJ0Z1d54yYvgIYr+VRN86ZxQsknDgx8mu3f0QfE+77y+t1yKicP7RnFIkyuuMccRkh9
         Jmag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=of7AbYv0;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/+wZpl/NfLFL4cwq9PY8ddA10dY00CWhEVIKdxC4r4k=;
        b=m4379lLRiQcXjiBsfEL8sfMYChiG8d4UU8jK5ys78voSmKT3bHOD7KTJ5rUKI2YpUG
         olEjyZ1HspqmCeqWjBH4efz5ZXBZWBGgXcx8w4+VdBarfjQZbQ/dyFJhGWFzyr2I41T+
         FFD7yBhC2u0N3RdmBVeh4Gto0PLUUFZQKsR+tfIsgTJ5lHfwOyHiO7qa4wszk84C9j8n
         zuY5GvuRImRw/1xj6a5/MUmNqkqJ9SASBrizz/NVfeSBz4XzBgpLadxF/GyTf9IYES+x
         W/yoMwCPaC6mCs4D8BQGIkKmnbIgOQC/XTUqtFlU/emqwITQAzlbdPNmjpNEp4ct/jKB
         b7lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/+wZpl/NfLFL4cwq9PY8ddA10dY00CWhEVIKdxC4r4k=;
        b=ArjVQDmK8jlyKpz0gXteVBKsH5JmRg+3Wfxb5/dn0RUP6BYxpTY8GRHCw6vDp6ywvo
         s45Hu0mOKi77kyGTffVWkrQTEztN/rrl9B6SypqAieoBuiGCP42diM/G1dbSkPfgQRKq
         ajqWUxMNKatEp9XlvW6Qsc7ve2xSwORe0gqm2r8zx0cZ67DWAqNZtv58jzy06j3ld2k5
         9FONX+T2KWQlMnBQdpLBxPhAqNCWoeCdDBbFza8PZa3U7xa/ufxFjkbMlZf5uB2QjsSI
         jGl1LqLeueDB6nELQCYNLDk4RcU+g5YG9zuMLtau+9Y6SNY/heZtY9OXKY/n/Hg9egrc
         8lTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/+wZpl/NfLFL4cwq9PY8ddA10dY00CWhEVIKdxC4r4k=;
        b=fead7hCUeDnoXFBb0fw0Kjwdom2bcOm/kYUSVRhAtnp0eDI16TdC+o10YiN7Ahzu++
         YbwsRRQS+zqU9EdwI6SVB5xSWlFUDH/SCIgsIudz9kZcWFbB2RwvFeerxS1CHSc9p4ai
         /Fo/em7JQ87lR4eRhR3iUIWXglMKiRQem2FuKx2ogkw6CwrPsiE2TRd+Q5k0LT/m046B
         7AS7mcTwOTuRkIHo9OgPq9fqL9a2IEc1ntwUyXrZpHKolwfUXTgOhVyQ7VflT2QZM7IA
         8d/7ju8oatHeHnoapoiJuv1u5wUTA6nlqBvUOF2c4Xgiilpmy9VLUB4GyRgPByKZnVo5
         7hUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533glA7U9N7SN4B9B8xNUya95AL/wZmlnYHpbjmwxrzGo8Iw6YlN
	PS0P6eCre4ZjWG4X7gJsuZg=
X-Google-Smtp-Source: ABdhPJyUj0WMik644z82A0HtI4aLCZdezS2XU1lzcyYO6bazFj3NRk892R1goEnkqoEO6Aqi/7+zGQ==
X-Received: by 2002:a05:6214:12b0:: with SMTP id w16mr4059835qvu.114.1589846132964;
        Mon, 18 May 2020 16:55:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2051:: with SMTP id d17ls5538051qka.11.gmail; Mon,
 18 May 2020 16:55:32 -0700 (PDT)
X-Received: by 2002:a05:620a:1184:: with SMTP id b4mr17578870qkk.364.1589846132642;
        Mon, 18 May 2020 16:55:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589846132; cv=none;
        d=google.com; s=arc-20160816;
        b=XKMxUyM0tx+KmsEBrBUYrpDaF8fotrlG2lgjtbAbDNyi/SoF6gupyNDq2Of3EwdRfA
         BNUQrz0IQvKk1TboERaTITiFlYp6shfiF6vpSbASdRx/t4888QA5CsAZLKI5xUXYPWyW
         Dyy41JJCVEiSCXloW2a8MJK+Xlb2IcO+bIrqUl7pebrpRzo76dPI0mtrtg5mZyWWW4Fm
         eRTFxi7/9SD6pNGrNxBBKvBpZuqVgiWc5pdSHafhDcNwxfRoo5AJCROphPRPVbNjCmTm
         vJN+B5k6GbByRM+YMSUiXcVsU2D4d/OOOalL7jSpJcxqEbrRG65Vp8iNvRwAdXhuRmcG
         jwQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qAA3OKl6AVtvhmTV5S8FL74OsHN/DYWammXE/OmRhwk=;
        b=Gbin87OWrQezMYmh3u2rg92+s23oyGBsH5zp39mJ/YWV+OAM4sQsGm2088vZ9F6S7W
         56TNgYbLeRXcBTF+n4K3s5rqs7KVoi6PgtU4VOdiuYTNcPw6LRW54G+dt55TC3siYBg/
         yOnWnLERCcVss2bwjClHfqFRcp1b7AgXGcpvXpsAD7KldTeYcSnIrFMhFPPXWDOTepr+
         kLbDOGg4KBIluf5JthKjmivh46ACXS2A5MJ6EdQK1g3MOItJzYJF/yeShTwJgH8H6vCQ
         pjvfmAp3TnlNunXqVHmSFXqpY3Ny8XKeaM9oAMIyIU3mpN6ejnjnugtf7jsCnBomujwE
         H8RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=of7AbYv0;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id q4si823459qtn.5.2020.05.18.16.55.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 16:55:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id g185so12511304qke.7
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 16:55:32 -0700 (PDT)
X-Received: by 2002:ae9:efc1:: with SMTP id d184mr19648194qkg.437.1589846132391;
 Mon, 18 May 2020 16:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
In-Reply-To: <CAG=TAF6mfrwxF1-xEJJ9dL675uMUa7RZrOa_eL2mJizZJ-U7iQ@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 18 May 2020 16:55:21 -0700
Message-ID: <CAEf4BzazvGOoJbm+zNMqTjhTPJAnVLVv9V=rXkdXZELJ4FPtiA@mail.gmail.com>
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
To: Qian Cai <cai@lca.pw>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Linux Netdev List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=of7AbYv0;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Sun, May 17, 2020 at 7:45 PM Qian Cai <cai@lca.pw> wrote:
>
> With Clang 9.0.1,
>
> return array->value + array->elem_size * (index & array->index_mask);
>
> but array->value is,
>
> char value[0] __aligned(8);

This, and ptrs and pptrs, should be flexible arrays. But they are in a
union, and unions don't support flexible arrays. Putting each of them
into anonymous struct field also doesn't work:

/data/users/andriin/linux/include/linux/bpf.h:820:18: error: flexible
array member in a struct with no named members
   struct { void *ptrs[] __aligned(8); };

So it probably has to stay this way. Is there a way to silence UBSAN
for this particular case?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzazvGOoJbm%2BzNMqTjhTPJAnVLVv9V%3DrXkdXZELJ4FPtiA%40mail.gmail.com.
