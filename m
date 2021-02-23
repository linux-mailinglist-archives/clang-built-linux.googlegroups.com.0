Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBKV62GAQMGQEI3WNMSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0698F3223D6
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 02:49:31 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id y16sf9065775qvs.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 17:49:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614044970; cv=pass;
        d=google.com; s=arc-20160816;
        b=ALMfujZ/z5985rVAId7NvLN+0Gwit/+mh12zPw2YkfbDn5epzjJvZOy4+7xnS9ROTp
         wtXMw73YdB/kDmc3po5axOVHlBD+Wb09ODtLITClNlYb7wqlIsl8Kr5X5b84o60aGEiZ
         SVPBNEyIL4aP0fgW6p07xx2zGnCSG6ow8Kh8zFn/u+vbxyy0v7h/SH+yMeBZlouCugkS
         U7e0BX7fcoK3dSOANDDhXFg+Q/6XOPtVAdKohRI0m3aLfdVJMfSc2jTOGiA9o7TC7IkD
         AWa3y4ulYWjZPlDznSdJbjJ00hCDMnVpYNNvAqthA2VN9oxOFGqohCg6FOvOHtE8llG4
         UXuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=O77ySDYUIw1zYKbcJF+bpkDhoMayi9GvL8uIaIHdTcI=;
        b=fbbUroIngEz7y9TqVuYb55bTp6QfrFLzr2jHhvoER0oGfDNKCRchZdsM+mfvCI0wpo
         59Skycf5+yioGlj0XCVXlSyQL3wXQdzYDcmM7XGedh4xT59qDN97wik+imOUPid9giqK
         5dvxp4l/XjIpc1Cj51ch6QRVemQCOCTY2J2GGp4eA6mo0B5FgQoO4vHIWMm4ReqjXw5j
         yv1IhKFOa2HC5nEN6vmeKw9dKPhDtXyJKzb6AnfqK/sp3HiSDg102rMTTwby6FwjZXAD
         3fS758kCd7tj/6KuaABNu9BUnRt8UEYBRHtPNRZ6JVFEcDtNTIIwPauRY75AqKNVMuJM
         0FHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LypvH1qw;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O77ySDYUIw1zYKbcJF+bpkDhoMayi9GvL8uIaIHdTcI=;
        b=iKWIUiqV9l0UOQkCzUZJIjr5/rDGF+Gm85h8iHav3TU4d0IAmw80+/OYXc3L8IHiDu
         IL802J4zlaecn+9/NLdclGlRfbQ652yINnzmtMOBOLTHbTmaIn/SNuxNsNywk55f/x89
         nRsU9QNkwHo367v1tEL0Zgq2HvIKt5608Ca2ey88z9DQ6t5LZ1M16RcB7wwWTP1Et/pP
         qkeqQh04+4tA0xFU8iBDOwrUsim85+5WSJ4t8yOvm1A4QcdJDEX0ov8kU4gXcrO0uKmP
         GyoUYaijHgQUYv3+oE2LeNYeUJQwItOvSjGLwOIzi5pvaxDz9K4n/0yvUM7y2sNw2oz3
         tTXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O77ySDYUIw1zYKbcJF+bpkDhoMayi9GvL8uIaIHdTcI=;
        b=CgS9OGOtkEWkLlJvh6MxtXxAMYxguut3zZQDR2ir7q6rkmrDwujCwv9Eoa75Lbo8/j
         2EW8qY+p8WJq6OHdPG417GcTRNpOi05o3XgH3ynWxSFrQ/HrLG9LGviLXskPPMInDSKg
         q2k4K/9etUYN0cu1KVGJpWjchfK7WvqZeUoCzMo21sjgh57BbK2KvWwiSdeTJN2x03A3
         Jl/JqY28Xtfjx7FErVLjjdWp1f6n2c0qkLuAKgPg7dhDffQIYov6zjiofjTtG5SEUMfQ
         86rSk1wuPtHntXZpg4Rh78+AJgvepgbXofhlCmc1CUP4+j3J9TDjGDNtL5rjnFGaaPg1
         Up3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O77ySDYUIw1zYKbcJF+bpkDhoMayi9GvL8uIaIHdTcI=;
        b=JYCLQuwJAvLmJnWi8CWG882sU/W5snfOisb5wP55A3qSSrDa2O3jEiVBIfza1zKcHL
         UkDX2c1FsokMhqgOuUvk7QTsMw4bqxf2oyc35rvPgcogOmWxJcnrtwFTNbb0HEwZqUrU
         WL9PDZ1bBlx1R3ax42puSdQvFEm+iy7Lh/aRao3kEA7hjKTvatJLHxlHkjmWUGOi/RyB
         LBWNs0A9dMy9PaISEqAfyQdVJk5dfLrgSk9tY5iREf+nzfsP41vx7CHYvOgRTW4C6onq
         mvwr25kY2YQ6FRJBG+FOvSy67kKJNITRqlWcOi0U6pawSbrsMGeUF1VEGFyB1ch3TPj2
         p2Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531afl2sZzWv33h7NFEVKA9yNNRZT9GALf4cRI5m+UuDsTbn2kD8
	ItP0h81ErBdgPVe1kBo6r40=
X-Google-Smtp-Source: ABdhPJw4tqxecIUbZejlUCUvfmApu6bPV7fbXb1uf6862VYzM30+2cESYmFZMaNGncUm8S7ll390mg==
X-Received: by 2002:aed:3a22:: with SMTP id n31mr16792636qte.267.1614044970122;
        Mon, 22 Feb 2021 17:49:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e6eb:: with SMTP id m11ls4688625qvn.3.gmail; Mon, 22 Feb
 2021 17:49:29 -0800 (PST)
X-Received: by 2002:ad4:542b:: with SMTP id g11mr23894413qvt.47.1614044969798;
        Mon, 22 Feb 2021 17:49:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614044969; cv=none;
        d=google.com; s=arc-20160816;
        b=LupU6EJzKZiJeDX234eVuLQ86EPrEJMKrYHpbhBo5Ku7X+urfxUDm6JOO9cNzpLUsa
         fR7AeWfWvTAwZhjrj4M9+GtiUkePlFBFlHYPdI+VJbRuCAnDN2G5ihET0olsmd5yjCa+
         ZWiQhGVE+hqO5/5fq/tGL7+8q5YQ5QJibrbiUeDCYVlG6fNblRDNown0agNNRgW0ePbr
         R0FK0gdifRtXEZbUWpCKJjFvPlfjOTXFZfPICf2WatpM/wrhkyMpQMgThJzf3DmHvK2j
         vxA7uvH6Np7DjK5+HIryT7Khjvh52f4EiYznYb589bvtvpvd2ComOdl7pMkmGRqpjKMi
         P4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=19ACJ1fic9mV42uUnpDAFR0NZ9Dw4Na6mJs9CQ+BSWg=;
        b=G64pcVMw5hP1EI6/sBEtk+UVdEhKU5iLlBcJTWfxqCa6cFisWQ7f0yLwGYCjjtcaTR
         UVJaf4ngt1CXlPzutCO5S6sVg9tuc/qsOc617zPQLNy3QMrfOkt+Bih2lLgn0geDEHOZ
         i/N3QaGUXlmnvSanS+qlCPfcuK+o4iHMhs2VfjTcAbXqs8iUpVkE9XQ7FbuJsXEJU3bh
         8vOzZhQqcEtJLRdwsFbV4Wy5fnRZFq+3mcl4Al9fRQ16tVHQFPgA7U0QdNDkZWMtC4oy
         /XhTG2xtbFSwZgxzbEYLP66k365+M1nk0LX8Q+gRA3NCtDIlv+m21yOPXKyiGhD1JeQA
         N91w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LypvH1qw;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id u5si379109qtb.5.2021.02.22.17.49.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 17:49:29 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id m9so14914455ybk.8
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 17:49:29 -0800 (PST)
X-Received: by 2002:a25:abb2:: with SMTP id v47mr36212197ybi.425.1614044969515;
 Mon, 22 Feb 2021 17:49:29 -0800 (PST)
MIME-Version: 1.0
References: <1613812247-17924-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1613812247-17924-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 22 Feb 2021 17:49:18 -0800
Message-ID: <CAEf4BzYgLf5g3oztbA-CJR4gQ7AVKQAGrsHWCOgTtUMUM-Mxfg@mail.gmail.com>
Subject: Re: [PATCH] libbpf: Remove unnecessary conversion to bool
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, john fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LypvH1qw;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Sat, Feb 20, 2021 at 1:11 AM Jiapeng Chong
<jiapeng.chong@linux.alibaba.com> wrote:
>
> Fix the following coccicheck warnings:
>
> ./tools/lib/bpf/libbpf.c:1487:43-48: WARNING: conversion to bool not
> needed here.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---

I think this came up before already. I did this on purpose and I'd
like to keep it that way in the code.


>  tools/lib/bpf/libbpf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/lib/bpf/libbpf.c b/tools/lib/bpf/libbpf.c
> index 6ae748f..5dfdbf3 100644
> --- a/tools/lib/bpf/libbpf.c
> +++ b/tools/lib/bpf/libbpf.c
> @@ -1484,7 +1484,7 @@ static int set_kcfg_value_tri(struct extern_desc *ext, void *ext_val,
>                                 ext->name, value);
>                         return -EINVAL;
>                 }
> -               *(bool *)ext_val = value == 'y' ? true : false;
> +               *(bool *)ext_val = value == 'y';
>                 break;
>         case KCFG_TRISTATE:
>                 if (value == 'y')
> --
> 1.8.3.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYgLf5g3oztbA-CJR4gQ7AVKQAGrsHWCOgTtUMUM-Mxfg%40mail.gmail.com.
