Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBONZYSBAMGQEXYRQMNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D9133DFAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 22:01:46 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id e13sf14154309ejd.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 14:01:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615928505; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnPOaeMzoY5/VFcVyQgaQv0exx3MtkOQEs8hb1nuZnXp9pmLwd0kWMwu2WeHFJOS7I
         68uMNx0Y1gQW7SHg8UNOg4bpuEroYUhPPa5GBfYRpUf5RajpePYC3/zIhmhkkBkx8xgN
         h7mm9feGhznlRJZ4CGrm8hc/lrZaRoqDNWUIZ+otA0FwlCYa775q85Z5KEivnpTGNAlZ
         FQXAw5sZaR5XmxJo43o06NSYLHgjxpo7zpQmzNr49jyHIKTj4bEQeWef42gXjJSlc1rt
         UEIsaaTEGee8Nrpp0u07GF5FHinxMJs2H8ngN70RNsoZBUEONTobfRQKcGeJb2BCbXDy
         RNlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1dgOMZ38Wi/hqpTAH50sX9Yp4lOOKpoImd/CBpNOysU=;
        b=oGAsEtJEXkOQyespLIwI7TLZUdZEuRBZLMnarwnfaE9DtcLetB73L3OwXRkEAzJ+Jh
         J/qFWBjEz4xxfMwyurhvZO1HllK3ADvIyTgRAhPu6NmGcXOv4u+X8dmJKKSfmscQiquQ
         kjXT2DYpJrVJ7sW/OFWx6IMhRfj4GhZrv+CgWNVQqs9MsdO5hR2eGd9OmjUxtSfBGtbC
         McoFOIif6aJcQFQrikQPcVGL9vZDvSzeAqJr7Ow13PiC/CFHgEwaPaPZcMmq4E/ZlmwR
         LsfVk39mkSZXu/zDluaqXZ3oT3ktSc8srNekF2M7GE7kFFzMHhJVWevuQI/6C/CVmXix
         +cgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1dgOMZ38Wi/hqpTAH50sX9Yp4lOOKpoImd/CBpNOysU=;
        b=XOJmhHWEVM44+NJW9Pnd2vn4024F0LwlThT5N+kZQktqgIbt/STF8BPVb0z/s5cVzb
         Ac4G1RrK5YJvtF9uSZpc5OU586ToSNYh+JKrAlq6IhWt7x4BpApPvAt6uW33V7M1iOu8
         i2ncF/5/aqZRjkNKC+jgwRMB9lBJsWMFDBjJHUtCRH8UMgakJBWtmZgKCymsyG/NlVvz
         75ggdbPqPFLTdzOyrdusghev0VGAupzBM4feC99yyXkkF1HiJ2j7OoclDWyf9xskU7Zj
         y3anURapa0t46mqiVWKvHE2udIFc+zTv04ZY4DvP7lD83PRw4bTo3VC5bpjVRqkehC1K
         Z3fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1dgOMZ38Wi/hqpTAH50sX9Yp4lOOKpoImd/CBpNOysU=;
        b=S+8XizLAfu052Syq3qWv7c6h7XzBgQhdxI3nhtDu8oRNMA1tcatRrTwlYc6Oly7ebC
         Ed2u1t0L3f24BYj+gbCRI4Myy/xzYdnK73VIRM23ImLA/TtvKluqnT6sB+z69g4QjSR3
         CQf3PpPM3jeEFH5kLie4IWgKPKXMdcOOReaK+vuU3U2389pVYUd+iyrrK/wRFBsJm9WM
         qz4U/5yeegqrJ/VowgCFkXHZJ2G2swN+ld9hH4N+bBK8/EPoaBYDWx7NjRw+PaG5dTiD
         oKVS5cczyhRTUBEeLuGIgzt4+0fSf2v2JyYL1EuVKR388VpuHZPV6oWjP0CvX09zx8aO
         265w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53030vwM0tIgOlYM0TT1oYBlx7ag1xzevodg8L307iViFMVV3uMC
	tFkcHOd1NrL9hrRzW+VIehg=
X-Google-Smtp-Source: ABdhPJzbJ3zQJQcGQ2Tv+K++W/kpKuobxOSpYcHEpmUDICm/O5WmaTk4RJkfG4WWucIwDtBbKH9TCQ==
X-Received: by 2002:a17:906:9714:: with SMTP id k20mr31585581ejx.519.1615928505823;
        Tue, 16 Mar 2021 14:01:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls7843115edb.3.gmail; Tue,
 16 Mar 2021 14:01:45 -0700 (PDT)
X-Received: by 2002:aa7:d3d8:: with SMTP id o24mr38367560edr.165.1615928504998;
        Tue, 16 Mar 2021 14:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615928504; cv=none;
        d=google.com; s=arc-20160816;
        b=yr/c2iVLPxvXvHAHItTmPXhrCaN6OqzYas4wAIg3051GTQcdO9zEGPlHNLOLcbYbbP
         xSH2Kk7XrmvFL6n8kXGNmjh959Pl0VgLXj8Of1o3xa37yzQbMF2trUcFitvUdRX08Wjc
         Xn7Y9OPY/WMdcBTJEybHjqRCjDkEt/54EdsGZjZGuvO2n/viK0zB1ZnrP/2pENjpIY8o
         4AnbY+Bgr9BC5SrTEW6kOWLwQTWTcD2DUVjOxKhxz1FQIg16wi9qWFRPR4zjZNtPHgGq
         T4JMw84z+MAQk+/Z7seknsEGmsq4KmLy1NXdlbqg8krip0pI3LfL0qN6CvUbUtK4pjz4
         yebQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=9j/6hBpxYn36SrqleC0WR/Asrgq0BJhWFdV+yuWTqqI=;
        b=S/oQ7u7Pth/WuvglCueUGzh5HWN2D71yRyiao5NWPETqNAfqyK/T9ZV1CjPAHP4wjk
         dArL3K/NwPBmOvvJQ/+bs2TYUa1ckVRRUQwqnstfXqE1IMJhLim/6I/45ej2nUppPqk9
         UgEz3Hmlvg9c6UteMlUnJFuL+cp1XtQz97d8xjSShIi/ElN7R0uEk0fsuWh7LPr5Ys1b
         WOdaWEMjOilY690O3232kigBTzvLj6S/rwT6GjrfGiXRVzfW5vp6MBf/XkU8H00ini38
         NjkHvV1H2v2sSwKGnKiwablndIbZcRoXaay7RM/KbHhKbMCgQvSvlhQbam+fZcnZKdqU
         E1Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id sd27si601550ejb.1.2021.03.16.14.01.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 14:01:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1lMGov-000DD5-8i; Tue, 16 Mar 2021 22:01:41 +0100
Received: from [85.7.101.30] (helo=pc-9.home)
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1lMGou-000NvJ-VU; Tue, 16 Mar 2021 22:01:40 +0100
Subject: Re: [PATCH] libbpf: avoid inline hint definition from
 'linux/stddef.h'
To: Pedro Tammela <pctammela@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>,
 KP Singh <kpsingh@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210314173839.457768-1-pctammela@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <5083f82b-39fc-9d46-bcd0-3a6be2fc7f98@iogearbox.net>
Date: Tue, 16 Mar 2021 22:01:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20210314173839.457768-1-pctammela@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.4/26110/Tue Mar 16 12:05:23 2021)
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

On 3/14/21 6:38 PM, Pedro Tammela wrote:
> Linux headers might pull 'linux/stddef.h' which defines
> '__always_inline' as the following:
> 
>     #ifndef __always_inline
>     #define __always_inline __inline__
>     #endif
> 
> This becomes an issue if the program picks up the 'linux/stddef.h'
> definition as the macro now just hints inline to clang.

How did the program end up including linux/stddef.h ? Would be good to
also have some more details on how we got here for the commit desc.

> This change now enforces the proper definition for BPF programs
> regardless of the include order.
> 
> Signed-off-by: Pedro Tammela <pctammela@gmail.com>
> ---
>   tools/lib/bpf/bpf_helpers.h | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/lib/bpf/bpf_helpers.h b/tools/lib/bpf/bpf_helpers.h
> index ae6c975e0b87..5fa483c0b508 100644
> --- a/tools/lib/bpf/bpf_helpers.h
> +++ b/tools/lib/bpf/bpf_helpers.h
> @@ -29,9 +29,12 @@
>    */
>   #define SEC(NAME) __attribute__((section(NAME), used))
>   
> -#ifndef __always_inline
> +/*
> + * Avoid 'linux/stddef.h' definition of '__always_inline'.
> + */

I think the comment should have more details on 'why' we undef it as in
few months looking at it again, the next question to dig into would be
what was wrong with linux/stddef.h. Providing a better rationale would
be nice for readers here.

> +#undef __always_inline
>   #define __always_inline inline __attribute__((always_inline))
> -#endif
> +
>   #ifndef __noinline
>   #define __noinline __attribute__((noinline))
>   #endif
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5083f82b-39fc-9d46-bcd0-3a6be2fc7f98%40iogearbox.net.
