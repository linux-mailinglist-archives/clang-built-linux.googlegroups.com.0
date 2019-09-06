Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCFGZLVQKGQEQAEZJQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id E9085ABE60
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 19:10:32 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id n5sf1511297lfi.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 10:10:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567789832; cv=pass;
        d=google.com; s=arc-20160816;
        b=cQf8nXTip/eyHAiLKAUvovkkLw6P55RF2BOSaF3G98KbmDw5mtNUesPAy4vOeZH8ir
         Mbtoi5C3FtjETxvqbEjqvlvQAEtemduGbmXuswnRCY2YhROqdGM+rXCwPU2VXoUW9q5v
         Of10A2C2eez9CZMytfMWuaRTAGWDy3NHYMs2r9Efb7xHoEFaG/lDK2qeznCGgrsnHiSY
         TszjeCx6ROM5F2WW/yU7faAMVgXlBNpe7ihFjf0rRaESKso5lrWwgPD7+elVWll/35p7
         IC1AkdN5SAc0lTZEMcmRLoBmKiJOrqQh+f0JKO2Tuhe6TdQNT+WIlPBo9NXIx+ihS5Dm
         f2kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=V3WwZ0VM1oWuVEfH0uRm18KK8SXxtJzINoqwJq9BzVE=;
        b=K0HEZsDdz2mAmfTBj0d+wXmnaS9QNyspoX5hlleHkjtZ+sbBE+XFKHDIiIla8r6TIh
         by9YPnoEyQ4rZcoBDcjf3KWZRadcI6x1v/EUN3bE2oeJwekKf6QU5ysQfvVhZKt2Vp4R
         w4nqfEQsJSlWPg9OSk7WrBjEIVwbTwMfAN5/pFDgq72S394dABpupFxuWzFF/UXw9S0X
         aCPAl9yBYXnF3G4x2zW3LBrYGZDOsYsgrXuwYeR2oghqjSp7F310b3HRDqZPN7UnlASv
         08vM+rjQZBcR75nvKb8rj31m5stsbjLEkVBRec3OZfTB95L5ikQ3PsgBIXLfRhcdTcsB
         xW8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YTP1BpCv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V3WwZ0VM1oWuVEfH0uRm18KK8SXxtJzINoqwJq9BzVE=;
        b=npVcpjG3kGaw7WbUdzDymTnMdjROyugKZlxKgKgs6EAbCJosB+vDcoL/5qBT09kmyJ
         9xeNYBb0uZg3ErLGtlgIh8cO7Kug7znriV5ql2bNBah1uuWYuIRnvVbLDEWkdjhuDYZq
         GJkFBcVrUcftQROIhXlzvssP++bf+mYUBpo0pRSmJNzxvoZLZryd6KarhhsKAa+JTNxm
         Ce9fFeJyVRiBIqIs74vuIBjhdtjElAfF1hQRDJZLJrwxddmRz/////MvcNWe3TjZVcxv
         elej3sIR641t/rWau0Yow8UVTyL44knTL3iILk2UCXFJegAV9dnA4l0Nu6WoGn+F2yTC
         q7dQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V3WwZ0VM1oWuVEfH0uRm18KK8SXxtJzINoqwJq9BzVE=;
        b=lf8d1lDaOVatUsxcZR0Jfkm1D/hP7LFFZOptc6HxErhOIFL4GSsYDgidkiFXaBZDkK
         ZoR8gvk7Hc0ZKHNn+H8MtnoG35lotbTAwREdMWdUbMcBzjU++qF/PqRNG5bD6efoEiFc
         rZRyyoacTCqV69AWfRrOL7DCbvHQvo3j8CiyKA9fEBuK2Y88vlbTP1BM2yFYSkgh+uWL
         5YzLjPWtVuWhi0b9vwKr9kdmATIEh2D5laCncAodN57KW9ynXjrRf4SB9414b+by/PZ1
         a5v8tDF4xHOpVy+dffirlrXmlwDC5r30gmEn3g6QYhUf3XZ3I3B8zd8czyIwNp3y8yW1
         rrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V3WwZ0VM1oWuVEfH0uRm18KK8SXxtJzINoqwJq9BzVE=;
        b=sDEm8sCJTDOvf5p0UoZOQ6WsJSrZCosgjBcTwi3uROPQJUHZr1GzlB5GTZbqVRC9FJ
         rtez+/vIML7/KR/apkEGRhVl8ptSF/8k8vyHi2rQ9lHH0vv2vfiUMPhPiSKyWqJRSxZQ
         j6t8J8ogJ1PcyQpDSEf9bOSVmNnmymMkIDTmRlrqkeB3Vla6k2Iyzfloz3jGiVdnVUB0
         BAqrOjx8iPiVGgJErW+gnHtR/YzV+TPc5AH0u+Z3FNBFTfv6TkIdxkl0uqFbXN1S78lK
         yzH7pvLKg2eiyqmki9hBMbVW+12oll0YglbpGbaWjIb/+yl4oa4LxFb0R5wZ/g44es7L
         spzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVS3m6kGIzZRJaZNSDrVBXUaSKD7bZFSRVXj6Mh3cdSNqvUh3QI
	c4uicZUjdUcvjx/GsrkzQ1U=
X-Google-Smtp-Source: APXvYqzI6uEUkUWYtftYf8Nqouu4NHhWyRg3VU/gAPiz048bnIx8zGu10eJc4/6tB0xVEDCAff5f0A==
X-Received: by 2002:a05:651c:1b8:: with SMTP id c24mr6392031ljn.2.1567789832427;
        Fri, 06 Sep 2019 10:10:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8586:: with SMTP id b6ls787825lji.12.gmail; Fri, 06 Sep
 2019 10:10:31 -0700 (PDT)
X-Received: by 2002:a2e:9dd5:: with SMTP id x21mr6307891ljj.182.1567789831961;
        Fri, 06 Sep 2019 10:10:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567789831; cv=none;
        d=google.com; s=arc-20160816;
        b=mRDH+pfRbtjHZzE/Zka54n7JrASzqZ4/OCM4H0iALKjgxXrVEOWeGM7l7b1c3ASHSq
         +rI06XYVC0Hao5KUdl8h+qAF1k8a/cn0Z438f5hy7s++v3DjeA+Jks3RkPvBzhZ0XHCi
         CYmdVKmLxAwhODcZeecxqWXk9HC9A5fMuk04wSw624qW5ShHwB+mtSymOD6TjAQPdI1Z
         Jx7nlhwRCifxNhszrPh+RS7FBs9iCgZIc+F4YndPIvocr8mPNnxYIXhOdpcKXRdfoSXu
         U/h3wy5hE5CymjzIXu6AueYIJIqwlgJTySO4kahVBdSaZ0S6RsYN4XRfJuvYqH46qxHO
         twWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=89jxYd6l3STICLgmFTDK3Ojsw0ab7VnPARLrr0XA9GA=;
        b=dib44tR6lBTDxqjubJKARiFdcreZ9arg3BN0uc529AHuk+DuqW1DUi2NswVcMvRW2u
         p/fR1Xg7/r/sNByjOUX9nw3KRhddUcGqXPGVj904mimAZ0TTQOPWhqTB4jwU1BTzrmGv
         vRtgD1lu/U7owtGH5Up9wgb53mmZ8bvMcqEncYrjiU8kdrl4n1BiTJeqaNNU/m8JorQG
         6LidWSjzNdfmQ9zaSDzxHZcZ2yWdqhS02Bn5TlVHxR8WM/mWia7FrDsjDN2R8vQwP04o
         qs43DqJtNvCO7eQmHcO6rQ2vvJecU1P4BhTRa89e+4Be1MpQF6w2jcnrKkwcwmMPES4X
         iJVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YTP1BpCv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id q7si315139lji.5.2019.09.06.10.10.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 10:10:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id r17so7860659wme.0
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 10:10:31 -0700 (PDT)
X-Received: by 2002:a1c:28d4:: with SMTP id o203mr8410471wmo.142.1567789831202;
        Fri, 06 Sep 2019 10:10:31 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id u68sm9437845wmu.12.2019.09.06.10.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2019 10:10:30 -0700 (PDT)
Date: Fri, 6 Sep 2019 10:10:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 bpf-next 2/3] bpf: implement CAP_BPF
Message-ID: <20190906171028.GA111058@archlinux-threadripper>
References: <201909070127.EhjTfkOC%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909070127.EhjTfkOC%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YTP1BpCv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Sep 07, 2019 at 01:05:40AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190904184335.360074-2-ast@kernel.org>
> References: <20190904184335.360074-2-ast@kernel.org>
> TO: Alexei Starovoitov <ast@kernel.org>
> CC: davem@davemloft.net
> CC: daniel@iogearbox.net, peterz@infradead.org, luto@amacapital.net, netdev@vger.kernel.org, bpf@vger.kernel.org, kernel-team@fb.com, linux-api@vger.kernel.org
> 
> Hi Alexei,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on bpf-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Alexei-Starovoitov/capability-introduce-CAP_BPF-and-CAP_TRACING/20190906-215814
> base:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/bpf/syscall.c:2087:7: warning: address of function 'capable_bpf_net_admin' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (!capable_bpf_net_admin)
>                ~^~~~~~~~~~~~~~~~~~~~~
>    kernel/bpf/syscall.c:2087:7: note: prefix with the address-of operator to silence this warning
>            if (!capable_bpf_net_admin)
>                 ^
>                 &
>    kernel/bpf/syscall.c:2087:7: note: suffix with parentheses to turn this into a function call
>            if (!capable_bpf_net_admin)
>                 ^
>                                      ()
>    1 warning generated.

GCC also warned about this:
https://lists.01.org/pipermail/kbuild-all/2019-September/063921.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190906171028.GA111058%40archlinux-threadripper.
