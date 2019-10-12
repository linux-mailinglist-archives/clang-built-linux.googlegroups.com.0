Return-Path: <clang-built-linux+bncBCUY5FXDWACRBXN4RHWQKGQEYKCXFEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF4CD533E
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 01:14:37 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id z20sf2601709ljz.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 16:14:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570922077; cv=pass;
        d=google.com; s=arc-20160816;
        b=BpX1Cg8227Jzd/YiXIAtaruwsEC14/+bmGoAIEUuyTZbZmhYrKzTEAYvOxTi4Ldgsq
         XvSJM/fBo6MxjZs0cR1ruBY5Ya3QdMvgJqxYF2xHDCQLXxU9yNVXzHC5zvv05HcJh4s6
         I1flhmOOmBSTwHSfAjS3ETKbRqNHZN5NbevwhBD2HsgUejvYNQNO2B/snQKsp39shrRH
         HofeRQ8b8J9k+6d7n5HyeDfUjsgfbSGI/y0Q0we3D9h1WF6QrwRS/if8eUNj/MV6BGi4
         eh7Zk5XW7wBJbIcu25d8sZrE/BCJ1M8SRljcWbed/wOD8Rfw93Bm6DuNjxGX8TK4O1JZ
         Ib2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SLHXeb4zBu/k3xr5N/BBz+ORkJIxZVHqPx8LZEMECdA=;
        b=kWRse+pS/fz66g/Flia5+5+EwyZy3TC+x2YCZhihg3RtIqAsaf8ly53pkNeRPVwJUG
         v7vvBzX50KflxHX8OrqXvfEM6Z287oA7TAJ9q22TIjii2tUG0kR3JP3zxSqWa+axWOlF
         AFN8Ux+cDx+Y9uPlXf557QAkYnuNjU5B0C/UyagEG+/KOtxk56h4jiNxV9uO0tc40bkF
         YdKu6p/nGeVsPpMaZd3H+ZastAx7PV7XhQnlP0PPet5DaIvSulXJEgNJn1TyQVpHVLWi
         /dBRTHMQhxGvqWhJJ77V8wE9/ZhIb4vWuLoWdkOG/61jcEvk97KqlJ/JcW/4jZhV14BM
         D74g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYQvrGg9;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLHXeb4zBu/k3xr5N/BBz+ORkJIxZVHqPx8LZEMECdA=;
        b=c/jBcfUHPIQPOFu//4Go15IPoXaCg9U39kzbzMjgxT19zZb3dVwbKZ1lxN2KnuiAPV
         60I3ul8MK9u6Dr4pMydKHaLr6lA5fGyFaypgH6vdWF++WO/I43tzAkUfuWXEeyuATLLJ
         s1+SGEcQDY41hYZ7aRKlb/8nOLBraERjHZI3yVWcLmVUGH23ZajEKrbg+QgU8TOsdy75
         FGiGsYTqgSg+wzzYuEf6p+6tb3QadhVgeE8vIrAKuKRhwRBu1spGNaDLh8OBhnS0xHwe
         ytJCVGGb15/rJ2hqXhVDb9sELS5xjhIuZnYueXM5EwRHxJ6+AioTDXDaPsfakBtWPpSD
         YcPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLHXeb4zBu/k3xr5N/BBz+ORkJIxZVHqPx8LZEMECdA=;
        b=HtdFpRe2xptbHExh5FQjf0LGb/HqVg1OnhxEbzgKki8oFgOah6YYVpHDFQAh2t5TJ4
         6SE9bsWvn+4oDkCOUearrkygNGzM5O7CjEY2cdkQChFAnr89z0xxftfjk7yTfDwxU0IT
         1tSImbrdv477u1UpCqhKguEdWAkfKdu53NDLOVs73GIty7vd1W3U0Ov1XubOM5MKll9/
         1HDd17w+OQtYgFYoe6NnIJ/FQGn9nUmqyaKTkhX8+A7RiGdy/4uOdlIzMg/xKDjHDHAy
         vR7oR7vaOrf+n5m+OrD50xxz21e0Hvp50qz26DQgTW8JqhR29S2KKlhrNYYEECjiv6BH
         Ml1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SLHXeb4zBu/k3xr5N/BBz+ORkJIxZVHqPx8LZEMECdA=;
        b=WPsPw1poMhXv6cpAPtgtTKXH92Hzxoo5UP/njhgmyayJUkuTa+kKhBgA3RMMx+Hny5
         DYl86ozZxhJ3Skl6pqu9tljt0fKgpIQcrWdJ+7eFuEa90vh08QlRRYg3/MgEnfndLtSI
         xn7MveDTGAxanjO9VTLgYzRqPYXsuexL200QVymRcJ0zN6WTdiJGsLneWX+RAgKAvNQR
         zXPZrO5aVjNQwXr/x353dACcAcCSL/IGOh71jXYvzQ+6D20MIqeqVdZedt54N6bzyM9M
         OWNm+dhgejS9lGg6gy0DLjMrzkAzGOrryncDZCGmDNFaLInaSFq5NW6xVWsRHpyKkgEd
         bTlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAURKpDHXIjWoWMZBVAlgZX9q/shbcSd2SMetQZBkIPahtwnwDbP
	RmdZ97azS3uYcmtylYprtSY=
X-Google-Smtp-Source: APXvYqwJmXaXJAc6PvRrEY0q9CeRUwVHuQqgbI2DLHy75yXUwhIwx8YdQUjeXgRmNB3InKS+Kxk8aQ==
X-Received: by 2002:a2e:8204:: with SMTP id w4mr13424966ljg.3.1570922077454;
        Sat, 12 Oct 2019 16:14:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls1380675ljx.1.gmail; Sat, 12 Oct
 2019 16:14:36 -0700 (PDT)
X-Received: by 2002:a2e:b17b:: with SMTP id a27mr13273447ljm.243.1570922076849;
        Sat, 12 Oct 2019 16:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570922076; cv=none;
        d=google.com; s=arc-20160816;
        b=HY8XTN+r1NeMAcxh21/LN7QL6Wcv28zVv74ttTlnRTG+ARC/lvjJdcic06s/QHM9OM
         jFOCSxIYuah1TAp9jOZkKq074qlFYvev330b/bGPtymj4plRZ+xHSB2jdAgHvX6m9pS8
         IxXb/EojM+6nD84budDzdCRDTtc3bZDWEixfNcG9Zl0Uh0fcAIA+cEuSmn8excz9Kfrm
         wZAsq3Eq/p3Ri2cD2omIimZ1Z+Vx59Hzj/8lXRDJDtrwUlwrGuqWAdn9MSn6/qrSxBht
         T6/VByfB0puHHHgZhaHaKo6fobPBy7nTj5futOgvW5y9ZiISPsZESVizJYzu8XZKv5t8
         +RPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ia0hSBa10knYKGOnZiDVQmpAvNOJ+DPL78NAZDUpJtE=;
        b=q+z9kD8NEDaVNG0mMtmFHQdBkonmz4FbfbQzwKrgh+TAdKKDekDLVL8Io3kjIGItNT
         vpM6PoVmD+rQbeuBFzKUs1cQvO64zqSwTRXBwhsnyEHNRr3SOTSFNWIfiMzjQefkHXV5
         93dlEetXLseZhwIqj0ZL2v9CjbCd007N74xymgIdnsagJNAdpm8lxQlmENzrg2oNH34I
         cz34JQxBAcs5qeiurrgHrIztEu22DD8S4TESAnHWNv7wHK6074CtAUTEoM5RiSSgLlOc
         Pt8DktQI25CZ/QbbWcS91AulUOorOo9SquGvO07UkPYNdxdHhG2Kc357Ykspxk5VtNxX
         lm6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GYQvrGg9;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id z4si683177lfe.4.2019.10.12.16.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 16:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id q12so9363858lfc.11
        for <clang-built-linux@googlegroups.com>; Sat, 12 Oct 2019 16:14:36 -0700 (PDT)
X-Received: by 2002:a19:f707:: with SMTP id z7mr11974821lfe.162.1570922076534;
 Sat, 12 Oct 2019 16:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org> <20191011120715.GA7944@apalos.home>
In-Reply-To: <20191011120715.GA7944@apalos.home>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Sat, 12 Oct 2019 16:14:24 -0700
Message-ID: <CAADnVQKhYohS_5KUHeFiiyXZWTNeDz3xBf5qBQgjvFiStO+TOQ@mail.gmail.com>
Subject: Re: [PATCH v5 bpf-next 00/15] samples: bpf: improve/fix cross-compilation
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GYQvrGg9;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Fri, Oct 11, 2019 at 5:07 AM Ilias Apalodimas
<ilias.apalodimas@linaro.org> wrote:
>
> On Fri, Oct 11, 2019 at 03:27:53AM +0300, Ivan Khoronzhuk wrote:
> > This series contains mainly fixes/improvements for cross-compilation
> > but not only, tested for arm, arm64, and intended for any arch.
> > Also verified on native build (not cross compilation) for x86_64
> > and arm, arm64.
...
> For native compilation on x86_64 and aarch64
>
> Tested-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>

Applied. Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQKhYohS_5KUHeFiiyXZWTNeDz3xBf5qBQgjvFiStO%2BTOQ%40mail.gmail.com.
