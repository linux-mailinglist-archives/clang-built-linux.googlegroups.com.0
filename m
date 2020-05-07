Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBB3G22H2QKGQESTNJPWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C92B71C9C12
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 22:19:56 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id k15sf1278069ljj.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 13:19:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588882796; cv=pass;
        d=google.com; s=arc-20160816;
        b=VqHR9Ui9z7m6X/J9DuUqf7iSkDrpPVk/xeQ/BWyDv6aL6KcqQ5odofFFZgdaehRiwH
         7ZaWdzQq8zwwQL/M/Iy8OdwZR2YS5aSPv/4Xh86lEK0CRyxOsePAM+6U5Q6Yr9esprxA
         gTpAgZR5EuXhBan4hKJEivkB1rVY659tbcGtIcb3tt6+ZJe2PasLpLeEv/Y7IshTyj17
         OMApV1BXy44DiN7aL4YkZYf0wEg3HqSs6Ldh1Niq4caDEbc6jE/BZoOk4H0KaPZN+C1c
         6K/SYHBQFveRoMs5I6JVosjPdUX5FoTsIzxub8JvCM1gWfYeyPp3ES5y0YrLo1mfUaIw
         Wftg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=txNJTYdK/ImxyYqXeonAFhJGORWp82fEUgXi0+8Ubp8=;
        b=uE81e/DyYvMfQzincqPZQ6wZiH9Zvwm/JSug7KWigkrfiv3fN4Ag5zeASo79OqQLr/
         nEYP5TxGJBWOS2eD6PnJUbY3klFwYDg9aWQcc2S2ynsHdit5yTxXBzvyN4nKddMRwxrc
         jiPBQcaSilVybUV2N/NTor3/AszZWg7oV7OpzRWst2XxLIu12POrRqLUHGLq8f3u1D4g
         ASfxHT4SF0qvby+A8RzwX9A3nO6PSigNJwvXcxaXGTp9PgmiGu8Q1gA78IQfBjsEbT1h
         lLztouQZPvcqJ4/X4ScOm3MN8CZdFZVi9CVGvB4uUmMkc30TCAoutSKcPiyqS1S9bhVI
         3etA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=txNJTYdK/ImxyYqXeonAFhJGORWp82fEUgXi0+8Ubp8=;
        b=iOvMmzd1G903rlH3bDNGbwecfypN24P4cdJr9G4Fl8NHaYy5zhyhz+iPBbLY+p1URI
         lBBoHz33P8WIJQRRwcUuGXvt9f8goi853pWyJ5JsOTMlKq9p4T2pBX+ZlXcSloL3itcp
         YXty1XBracYc+cM9oiJB4aYW/2drqVtoorrznj6XbfDqgI5i47/Hd+KCsz4+vAB312Bi
         +TdSTw2bDVRJznECWuFLtW6nQMVgC3YaZ9pGRB4HgG/USzwSsViSeXuTE4TJrgmhWsSU
         JCTc5M40AgJ2X9MtvbzNqPTpIwHJz0LhYQqLE7R4cfxmhBakf1CYpu5FEYGH2HlPwVnE
         6+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=txNJTYdK/ImxyYqXeonAFhJGORWp82fEUgXi0+8Ubp8=;
        b=SKWeqh5zGV1cywNSI3dGAmhDY1IGy7S1OaDia7EFkgrv+MMRYEmYNDPEBmE8kKHsq4
         XT8Be7h5VJPfLN26TiyuPDZLCfLXO89xAF3TvAXna2y5BFJZenXX/tfMx1WFX0j+07Lj
         5lBaC19ycvQz73afy6IEgrQX/misR6f71O9R7I5ha0HjvpkSvFswV/zQUQeRaJ3kBcMT
         1z/dAQX0PNUIG4e1px93uDdKW4ieLSrwzNe20FzqkEUNYEaTL3hds/tufSqdUUc+fbi3
         WHF2LLYqordFUOhk6sj4ftm9j+8BmZnPiK355cPS4j18Up+66CYyGpvcEVjzfyxSv7DH
         2G2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IqzfNIc0K1xDMbbk6eI/jwAZ0FQD7B/J45KermXOB8f2szG6k
	NSnJhKS8I38y5NmRhw64P8Y=
X-Google-Smtp-Source: ABdhPJyEHTXuIn6L+7sBDi9/owLfRvb79szaziu/bcR7JiqVtJ5o/5O3B9H3zykKDnDVHM3mmfh7uQ==
X-Received: by 2002:a19:ec7:: with SMTP id 190mr3114771lfo.203.1588882796289;
        Thu, 07 May 2020 13:19:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9397:: with SMTP id g23ls2220781ljh.7.gmail; Thu, 07 May
 2020 13:19:55 -0700 (PDT)
X-Received: by 2002:a2e:b0d4:: with SMTP id g20mr9585888ljl.18.1588882795542;
        Thu, 07 May 2020 13:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588882795; cv=none;
        d=google.com; s=arc-20160816;
        b=Kqhod6rWgZAgzwt0uK0+xahT76Lc1DdAjH9OsmfkqUre/OPiboRRrgk0kbyBsIIH3a
         K42jXar4eCFCv0GNdtIQUtlTHvS5L+Vy0v9HCiC+5sHEOzRWii5xTC26g9Zp9KCG3ojY
         zhzIlUX6aTq9sbj0iHagQYABIT54EnqUIkyITbgorUtbMB/urkKQCUGraXPQ4lPK2fW4
         2hRDiAdDDaX4eg9uFkDmD6z1Q7qHC7YKkn60CkdkfdxAlDFF58xhVKJfJSA6yAYw4olV
         QI1StoKmDTPawv6LdOnNZnmT3ZiWTabJh5IxNkSqkFSBU09Dp+q/6EI/Pk/vgzI62i17
         0+aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=DQ4cukI1zpZScWOk4NGYdJ/llAFzl57UcopCz2+B6f8=;
        b=yVbXlHUQ1SYPLwzFBF+RqRBaBzw54W7Hyt/xVw6pru3QG1qIb7G43Nw0uVSlezM3WQ
         hA+OVueuwgjDt3Ov4IWzCHpzQOzAhu+wkTzdMWM9Dsp5fHxAtL33hPD9ang5wjuaA0BK
         D5QLeJkXhWEGsarCnad0HEuLI4sSy50fV8BTbYeBobp9d0YpFJ3lQvBSI6qX6VLliTzN
         Y2TVXoEop1D67VN3sZqHNJq8VYYVYsqbKmvjxCAdE/VUlpQRhV/qQhwcpKaz3Ni917iO
         Igng8EMUVMKx0TX/IvxZvZi6J6mZuId6d7FEw6Rt+snyBDf1gRYqPAaTWUY3302k8zro
         on0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id k13si337558lfg.5.2020.05.07.13.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 May 2020 13:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1jWmzZ-0000uo-43; Thu, 07 May 2020 22:19:37 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1jWmzY-000Pq5-CQ; Thu, 07 May 2020 22:19:36 +0200
Subject: Re: [RFC PATCH bpf-next 2/3] bpf, arm64: Optimize AND,OR,XOR,JSET
 BPF_K using arm64 logical immediates
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
Cc: Luke Nelson <luke.r.nels@gmail.com>, Xi Wang <xi.wang@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Zi Shen Lim <zlim.lnx@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>,
 Mark Rutland <mark.rutland@arm.com>, Enrico Weigelt <info@metux.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Christoffer Dall <christoffer.dall@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-3-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <2b05950b-5f7a-e5e7-81fe-27703c3ef77f@iogearbox.net>
Date: Thu, 7 May 2020 22:19:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200507010504.26352-3-luke.r.nels@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25805/Thu May  7 14:14:46 2020)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 5/7/20 3:05 AM, Luke Nelson wrote:
> The current code for BPF_{AND,OR,XOR,JSET} BPF_K loads the immediate to
> a temporary register before use.
> 
> This patch changes the code to avoid using a temporary register
> when the BPF immediate is encodable using an arm64 logical immediate
> instruction. If the encoding fails (due to the immediate not being
> encodable), it falls back to using a temporary register.
> 
> Example of generated code for BPF_ALU32_IMM(BPF_AND, R0, 0x80000001):
> 
> without optimization:
> 
>    24: mov  w10, #0x8000ffff
>    28: movk w10, #0x1
>    2c: and  w7, w7, w10
> 
> with optimization:
> 
>    24: and  w7, w7, #0x80000001
> 
> Since the encoding process is quite complex, the JIT reuses existing
> functionality in arch/arm64/kernel/insn.c for encoding logical immediates
> rather than duplicate it in the JIT.
> 
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Great find, thanks! Given Will wanted to queue them:

Acked-by: Daniel Borkmann <daniel@iogearbox.net>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2b05950b-5f7a-e5e7-81fe-27703c3ef77f%40iogearbox.net.
