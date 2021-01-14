Return-Path: <clang-built-linux+bncBDQ7PBVA4YBBBF4HQCAAMGQEDYA7UFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1362B2F5C8B
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:40:56 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id c11sf1743342lfi.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 00:40:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610613655; cv=pass;
        d=google.com; s=arc-20160816;
        b=AvE5tsycnxTtv4woMa/3Ul4yVT9yiXkkLJuCFhi5anSGC+pSPzdJ0PY3z7ChHU+eSR
         XZr+E8AnGvOM6IW/vsjrxIUp7prtu5gGQFoxYs76ZXyfG0l70DbDyEE6kep2BuwmSyxO
         eQM6imIC+iSM0JtPh0C56i+HXvzwSrZoS13DaorfM2C/saKUqXNKn6BvsTKKh4655mUk
         m7LF8Hh3zoylHwJszds5TQFHzaZtoXubyruTpTZP4VjyYnn1QnA6qcX3YgLSGe6FqykI
         ZK1fuwbtVOM5VSW80U4/D64N/3nY/GoS7YT0LPuslEKveRLDDBzAdhEyqlCWyiCl5jt5
         aVBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=YkPEvU+/Hj5fBTuDk79M0iDfEY3qe02mHZBf3+hc6cA=;
        b=W0ymQ59m3k3AvutP/PyoCFqOTtDxZe42B3LiGzFiuY3T9sd9KiMh2bt13ToyKESkoE
         +g8mDVUMmPjH7jj8Ck0QbpJhtcCkmbYoCoZamDapeOKxL5bM1jo41OgQ3yw8YPkjJcDT
         YG11AvwWj3htvg0DFI8ELriMRUaWisv5cHrGKCVFRv018LKGkd9t2v7fiGzq4bNnRsDC
         McS0EITKLk2bEocUsXlYJyxJHLqEvuPPdBpaPxoRGWB8avLG/2wfjBnQQONK24+VwOum
         ZeOziRAWeZ93B+VYTWkoC05BNCM26hlmMx3W0mtPNQFfHZzvtCNx+VDpR5BgT+HSUxPU
         976w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M9TsRLMO;
       spf=pass (google.com: domain of sergei.shtylyov@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YkPEvU+/Hj5fBTuDk79M0iDfEY3qe02mHZBf3+hc6cA=;
        b=X3drBls9XPg98E9UsCYoEFplzKZ0JWRZbnn5yyg2CkhmgpcR2fppB6LFe0MblBexv1
         EPXM1rUTpsQyDqDaOGB0j256tGh6Qxh1zAqH8ZlZ8FM1xu7kTqolgiFHG+nlcyq+UlaO
         QX2p6wbFov06KEVqWXPAXEE+uxSKIAjKR9GdM/yr2SXnwjd2SVUyh8yBCHL1E8UhiUSn
         YXzEh4T0hdC4vFTEhnCyZpedwq3dQuknG6xUJ8aTHyZXY43CTWaXzZZZlRjVHgPva6yP
         MCQTICDDdpjDu/8VC25x33+IpMwroPwDYOz5y3IJUot4jagsxeNcnU2OK4j+RLhglExu
         53IA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YkPEvU+/Hj5fBTuDk79M0iDfEY3qe02mHZBf3+hc6cA=;
        b=NApN9R+91B1Im982VD7OjlL4hd91uopULC6ZtkF8gey+mstTxtbPAmAXFz7gR9ureC
         krajYA1LLC8ahCUvxXeFNOLcDNdOjgQQoPqcKDrhdKAC5Cc9x9yzm5QBu/83uzh0s5dV
         nRiowUeYrjE2PMZ8chYAy5aEVnRqbz3fOt6XPALwhzkDpOSwFjHOUDCG5yWrnQESyjYw
         e1nv4BZ3nicqmVtIk5qnDWy8WyNalGJrFunCx8DKQPBRy5r2AhXcu8XLAg6Uad0UfU7b
         f4kOkXVuCsHeuq/HB2nmZOlA85mpwyVnp33rQ6YrkiNqJsgbCMCPW1zdoZKbY5wtLpFK
         qYjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YkPEvU+/Hj5fBTuDk79M0iDfEY3qe02mHZBf3+hc6cA=;
        b=cGiEBZ3gwvGFjtyx52zqg8TLWRGHms9f7V0am0iiuFizCIvhyViILxiRmlc67IFQeA
         xscRIAvPW8ycjHJa6zcKws5pemfANj6jAsnMU+RHKJ4P5AdBYJbdORc0OhNgYQY6Be5v
         Y6iVcvlMGftZLiqP7GIXpWUdPeLh7huX+aInCBzTLCKuRD0rlp1o9Mwsqap089dKNV/R
         TGCO6oKxBCZ9L39aaxWLhtLZ1I5pluXIxu1F41Q4LwPUIaKleyEo0De/vuEPnQnCugVN
         dEVH03+lPVkPzHqhqKT+TND9i7e1PEtEm0ozqhbUdtNFK05wXESwOqjCPBb7niP2OONF
         qkeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530j1pzcjTjeNjKfPPyq0h+3byY1WmvuSVlRYKsjo2oihPdDt12Y
	qBJfMX8JNZs17NTBrVcEdRo=
X-Google-Smtp-Source: ABdhPJx5RR8uilFcITkf4ToV8heUSivgJ6dDjLkt7IbhFUfJryzdDvI/JLriX28aWBCGcOzl6H9uXA==
X-Received: by 2002:a05:651c:48e:: with SMTP id s14mr2784793ljc.159.1610613655566;
        Thu, 14 Jan 2021 00:40:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1a5:: with SMTP id c5ls795953ljn.10.gmail; Thu, 14
 Jan 2021 00:40:54 -0800 (PST)
X-Received: by 2002:a2e:b4a7:: with SMTP id q7mr2667834ljm.391.1610613654410;
        Thu, 14 Jan 2021 00:40:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610613654; cv=none;
        d=google.com; s=arc-20160816;
        b=0GgthcIQKv6rct+NhMOSau7SwTRRF7crfE8ybEm+zSwy0Rfxynw3K0YCfih4D6iWVs
         bfJKL+82h9dXuHEJxpZSHqzahrcddEX/9yWvS3dsYwzC9aoGUPEhrVVqxRUH0gmrH0HM
         0DXZD+t+eWZWSGRcexfng4t70E+UflV+2L+PjCX4nUDFMff0H6cPY5qEx/sCTqalwffY
         42jrIygbgWvkIsxBmDHE4oM+0c3BjiPhGkCUYaq3FZWTY0Im/pUJ/Safd4QjH7/X/gRo
         ONrDSJpd8D1/VSE6rN20V4ZPnnulAUjMRKctfBFdztDOQQyUwkHWyZZvUx0N2phcnkNG
         Mjtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=yZyuwqgUBskABVFLYIWGAD2FMF/t9yzwUC2QTWtpxG8=;
        b=MCVZh4Ch243+K21z0feTAlaxw+3f/+8fEEd6XYzbWb+G6fZlC7VUtRGSE4NJR6Edzz
         0RUf4zIOAJqhtsLTGO5VY3uThmsYEYH/g8EmRsy/rGj4kOzfo9XSwi3CJHhbgxfOWGvi
         abxR60M+e9o/SsSw5jltNcmn+5KEbI7H9qoyH40NFT/m9YE1byCZiHvy/e9E4FL5r7M9
         tm02/O1P2oIRnveEfMkF3uyFEUkxNgLi4nx9tuC4MoBNhN3JkIpQ+6hWcZj+slhXHqvM
         I0vr8/RBe+abJua8F9bBpF07A/94ToBJSdrq5rkghPkbZLF7P7cfgyK0YZ3unYaCilh7
         J9Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M9TsRLMO;
       spf=pass (google.com: domain of sergei.shtylyov@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id c15si259512ljn.0.2021.01.14.00.40.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 00:40:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sergei.shtylyov@gmail.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id w26so5538007ljo.4
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 00:40:54 -0800 (PST)
X-Received: by 2002:a2e:8745:: with SMTP id q5mr2546502ljj.77.1610613654215;
        Thu, 14 Jan 2021 00:40:54 -0800 (PST)
Received: from [192.168.1.100] ([178.176.79.115])
        by smtp.gmail.com with ESMTPSA id p5sm476176lfj.295.2021.01.14.00.40.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 00:40:53 -0800 (PST)
Subject: Re: [PATCH 2/2] compiler.h: Include asm/rwonce.h under ARM64 and
 ALPHA to fix build errors
To: Tiezhu Yang <yangtiezhu@loongson.cn>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-sparse@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 Xuefeng Li <lixuefeng@loongson.cn>
References: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
 <1610535453-2352-3-git-send-email-yangtiezhu@loongson.cn>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Organization: Brain-dead Software
Message-ID: <04749e2c-6e80-5316-a575-e4aaf780bb81@gmail.com>
Date: Thu, 14 Jan 2021 11:40:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <1610535453-2352-3-git-send-email-yangtiezhu@loongson.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sergei.shtylyov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M9TsRLMO;       spf=pass
 (google.com: domain of sergei.shtylyov@gmail.com designates
 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=sergei.shtylyov@gmail.com;
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

Hello!

On 13.01.2021 13:57, Tiezhu Yang wrote:

> When make M=samples/bpf on the Loongson 3A3000 platform which
> belongs to MIPS arch, there exists many similar build errors
> about 'asm/rwonce.h' file not found, so include it only under
> CONFIG_ARM64 and CONFIG_ALPHA due to it exists only in arm64
> and alpha arch.
> 
>    CLANG-bpf  samples/bpf/xdpsock_kern.o
> In file included from samples/bpf/xdpsock_kern.c:2:
> In file included from ./include/linux/bpf.h:9:
> In file included from ./include/linux/workqueue.h:9:
> In file included from ./include/linux/timer.h:5:
> In file included from ./include/linux/list.h:9:
> In file included from ./include/linux/kernel.h:10:
> ./include/linux/compiler.h:246:10: fatal error: 'asm/rwonce.h' file not found
>           ^~~~~~~~~~~~~~
> 1 error generated.
> 
> $ find . -name rwonce.h
> ./include/asm-generic/rwonce.h
> ./arch/arm64/include/asm/rwonce.h
> ./arch/alpha/include/asm/rwonce.h
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> ---
>   include/linux/compiler.h | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index b8fe0c2..bdbe759 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -243,6 +243,12 @@ static inline void *offset_to_ptr(const int *off)
>    */
>   #define prevent_tail_call_optimization()	mb()
>   
> +#ifdef CONFIG_ARM64

    Why not #if defined(CONFIG_ALPHA) || defined(CONFIG_ARM64)?

>   #include <asm/rwonce.h>
> +#endif
> +
> +#ifdef CONFIG_ALPHA
> +#include <asm/rwonce.h>
> +#endif
>   
>   #endif /* __LINUX_COMPILER_H */
> 

MBR, Sergei

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/04749e2c-6e80-5316-a575-e4aaf780bb81%40gmail.com.
