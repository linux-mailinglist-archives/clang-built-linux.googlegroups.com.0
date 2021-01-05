Return-Path: <clang-built-linux+bncBCCZHPMXYQEBB47A2H7QKGQEUVGO2FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id B68982EAC7D
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 14:58:12 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id x186sf26262085lff.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 05:58:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609855092; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjW/OtPaCs6hW4a08YczYUjpTFE7momV/WW8u1nxxm+QM6ap2RCGQ+kHbix1rmLGnM
         VD31VM1UWqTqsB22aHpvosXXKooZLnARfTjtTM0BjIFw9Eji2+0qv1qL0vV+MwTIkzv5
         Q6oIBE8j0qEEoS8Wt2B63uOZDidTy8KElMATNLoI1G22KblZECuDghJT0Xk3ngaoBas6
         nSYXLiLoUT9ZSpBV5SMF89QrUp8ePrCIGyRk0+pMNGVUcFSKmrLTzc0UbYo+cSN37Toq
         pdR6UNYE74r52FLJmiIi74SzGWziKR1owNvZJL/3w3zYuDLyn0V8e2LzhSRLqNQ1SOt8
         lBdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=paHmlFxyrxSNd9zDr2Zth4UQ1GIWRyS1QLv1Qz/Hqq8=;
        b=jXqpuFZ4JltFD09BrnHN+FBAj7TKOpFzhawI5qq6sNQpOqwyHOSFwTXFioQ8SEYn59
         T4X7gpnY3RVuNQgiyBxzUAKnmHxQxoicn2b6QkpvX1EN9yKp+PMkxrqTqWfI4+AxljJq
         DPcsxb9rWltfv5iYIxuIReh5DLUsBKV2v+akj1bAKFs8+BYPpqW4+murujopWtMJ5+sx
         NctHOYbiaDPQGmhf+XOFnr/MAY5gyWM9kIKlJvKNJ0UB99tDEtkpUHoimEse1XsmwXOD
         nNusGGbBGZetEpogyr9AW7SGFYvLlPHOR5SnTQH28o8z1uEdmPBPnCdVyTCG/qHxr9xF
         7Q2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=Gv6wjYb3;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=paHmlFxyrxSNd9zDr2Zth4UQ1GIWRyS1QLv1Qz/Hqq8=;
        b=am2+umtoHFaPomkDees5TyFCcA+6UF9utdDLGUBidWuGygADOW83AMwrL/akT8Kf11
         IHS47i4jyuuPZPS0NvxcGYhnSLORJKEEX1rJvBURd5ExZw7P54X/kM1K7zpo3ksSxVlw
         eJ4rAJp4EvG2mPXRrVPnnM6V3U5dsyHZ4hW4utzcyMzuOSmFoKSG3EO7BHapY65rSmHD
         Bfl//5k0oZEcO4XHMl1i0wdo52qmyF/Z+FaYGfDwsWM4s4sUu48jxeSaPVqLBovCc2MS
         Gtatu0FpMAQtvSKoxp0DK2dxEJ1pz3Wf2JvAmQxSAzoKcNHFenXVDy+2VOLzf0xLZFxM
         qtRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=paHmlFxyrxSNd9zDr2Zth4UQ1GIWRyS1QLv1Qz/Hqq8=;
        b=IGuSu745N1BJ9Qm4WWC1Ra4ftAl+31XXRy2oxpLjD/+AHMfmjY2l1nnyEDx/YPCfqF
         9KjO94sFX5o2IX4n7VyzgjP30VDFoUANWYYBJ8f8TN5vTdlszes74v8ASDj4couc4oEW
         01XbxcXsWcxetxZ7Zhtq8BDSLKSDNVv+PAbcw52SGJZhta0tyrS4rAEmczJ3A/p1DNra
         woAsgYRqHvpC484RFkGRqhMfP/wsSKKgw1awu2IG2/y+cApOzEo6U9IhytLIjsuXJeuh
         gnvYCEmOoXuo2Idas2yLVtnWZaYKeVtWmTANAl6m75y2A3V1F1GKakrIJVsg7uOUi3Qn
         Chmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dF0FyeVerwEMt1IJ710kad36XHbcdSYOGIVq5G33kVsW7SV8A
	LEokeHWvO3PoC1TSOP0q3Ww=
X-Google-Smtp-Source: ABdhPJy90eOqtcLF4tjacqkANndtTFOYNeqpxwImxM1Yqq3b4wyDgY5oi/cAVYrKjNg/g3sWAxH/Jw==
X-Received: by 2002:a2e:b88e:: with SMTP id r14mr36766183ljp.254.1609855092030;
        Tue, 05 Jan 2021 05:58:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1a5:: with SMTP id c5ls14409819ljn.10.gmail; Tue,
 05 Jan 2021 05:58:11 -0800 (PST)
X-Received: by 2002:a05:651c:1356:: with SMTP id j22mr2261102ljb.237.1609855091011;
        Tue, 05 Jan 2021 05:58:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609855091; cv=none;
        d=google.com; s=arc-20160816;
        b=MxYjwWv7LguoYEkl1XODcYeNXQP2MT5e3/41akz2OTSDPR3AYK6qcutls/ut1DR/IN
         KT2dSnwzTm+bu+rI0OZHhTqsO31Luwra9kI6YaZWMUZ4JHIOizCen/Vlmy0lN9NFGahP
         etw6Dd/jd3IPMLHGwcPVk9hcnKdwnkuf/EiYkZ0nY4ZefD/ZHQlzoM+emz51VpahGxp7
         Y9cRyMOqnWW/epgQLn0siXiJShA79mtgRPLb1tApXFAj/Bbrx04JQ1/KDBJsp5ePi+Oh
         lkAz4OKqHBXdL4kyBT5bKQdgDq9uk+SduZatsWDbn3l7NVTgI/Fe+0+02p/dxhfWKSOf
         olPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gJTK/1pMo6A+qaLw01gzTFXJRugznQUayRvN5SaM+RA=;
        b=kFp6E5Lu1kDvMGgzqpc7R/QfIXfPg8OVYxyGYh3z6Y6HwdR3DWJ2Al6CnWmPwYwm4Q
         a1DkRDWlZiqulGXLxVl8dGlZxZ5vsw4UBphVxfjaZA70vcE/WrRh19BYrwFakc0wz65T
         ggc/gCORtVfcNaFQD6eWEee1wdqygVVbmqf6OHiWNElJErRHZQp5fya7vp5FY5ipHd+O
         USI8VleDq1gbKbw8m9pPw4f0OYWUALjmVvKHf5aIcNZNYzw1d8d1WSpapOdJ/8vyIK15
         Q0Gvb2RF7gx4SVIDNOMefXY7H/nm4mC1u9rq8EjxkqAmMxGHamu4CZVZGXL0h5BDI2Si
         lQ0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=Gv6wjYb3;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [88.97.38.141])
        by gmr-mx.google.com with ESMTPS id d3si1956030ljj.4.2021.01.05.05.58.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 05:58:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) client-ip=88.97.38.141;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id F2539C637E; Tue,  5 Jan 2021 13:58:08 +0000 (GMT)
Date: Tue, 5 Jan 2021 13:58:08 +0000
From: Sean Young <sean@mess.org>
To: Yonghong Song <yhs@fb.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
	linux-doc@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] btf: support ints larger than 128 bits
Message-ID: <20210105135808.GA13438@gofer.mess.org>
References: <20201219163652.GA22049@gofer.mess.org>
 <bf26fcc9-a2b5-9d6f-a2ac-e39a0b14d838@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bf26fcc9-a2b5-9d6f-a2ac-e39a0b14d838@fb.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=Gv6wjYb3;       spf=pass
 (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted
 sender) smtp.mailfrom=sean@mess.org
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

On Wed, Dec 30, 2020 at 10:21:09AM -0800, Yonghong Song wrote:
> On 12/19/20 8:36 AM, Sean Young wrote:
> > clang supports arbitrary length ints using the _ExtInt extension. This
> > can be useful to hold very large values, e.g. 256 bit or 512 bit types.
> > 
> > Larger types (e.g. 1024 bits) are possible but I am unaware of a use
> > case for these.
> > 
> > This requires the _ExtInt extension enabled in clang, which is under
> > review.
> > 
> > Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
> > Link: https://reviews.llvm.org/D93103
> > 
> > Signed-off-by: Sean Young <sean@mess.org>
> > ---
> > changes since v2:
> >   - added tests as suggested by Yonghong Song
> >   - added kernel pretty-printer
> > 
> >   Documentation/bpf/btf.rst                     |   4 +-
> >   include/uapi/linux/btf.h                      |   2 +-
> >   kernel/bpf/btf.c                              |  54 +-
> >   tools/bpf/bpftool/btf_dumper.c                |  40 ++
> >   tools/include/uapi/linux/btf.h                |   2 +-
> >   tools/lib/bpf/btf.c                           |   2 +-
> >   tools/testing/selftests/bpf/Makefile          |   3 +-
> >   tools/testing/selftests/bpf/prog_tests/btf.c  |   3 +-
> >   .../selftests/bpf/progs/test_btf_extint.c     |  50 ++
> >   tools/testing/selftests/bpf/test_extint.py    | 535 ++++++++++++++++++
> 
> For easier review, maybe you can break this patch into a patch series like
> below?
>   patch 1 (kernel related changes and doc)
>       kernel/bpf/btf.c, include/uapi/linux/btf.h,
>       tools/include/uapi/linux/btf.h
>       Documentation/bpf/btf.rst
>   patch 2 (libbpf support)
>       tools/lib/bpf/btf.c
>   patch 3 (bpftool support)
>       tools/bpf/bpftool/btf_dumper.c
>   patch 4 (testing)
>       rest files

That makes sense, I'll send out v3 shortly.

Thanks,

Sean

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105135808.GA13438%40gofer.mess.org.
