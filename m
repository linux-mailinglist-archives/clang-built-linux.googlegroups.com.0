Return-Path: <clang-built-linux+bncBAABBHMD5XZQKGQEY5YZZ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C7719272B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 12:33:50 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id e10sf1024260wrm.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 04:33:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585136030; cv=pass;
        d=google.com; s=arc-20160816;
        b=wpZKYrGppint1dhGrbVHgqnC98srNQz1OoiNDS52kdpdPPM9QG/M2b3/Vsh78B1PTn
         y/S9U1Tv0uWztonLwpY5CFzLumLyuocdR+bAngKRV3cR3kITj3470GA4Ft3TkFnHAvyY
         e0n98J6l4IKzD5ZvNfOpphZgf+mn3pF8EqtcBIjt4MjxrxLNVxyEME4BVQpdIGWMJkyX
         hdA14TRDe/vlYgVFlqzoPmNNx+IKCjQ5t8Lhx1p3aeoQ8Nboe7ZVntYLXlucORdP03cE
         og8h2k5BHgjd9KIfuVcCuwpQZoimpYDXV7n5qeRSXMJNEQZ6vt/4tLtn8MRi/sMg8Whq
         CByw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=m4SRA/on3x2XVvXeQVMt1GzsbPK68EvCTmS+iPPtPFs=;
        b=yC4y8dUD9Ay3ry3k0T/2tzd2Wt+lOK6p4fI6Gl++GX0r/l9vzqTKuwPHHOAbm6UYSO
         7U0uHT9ZEOi2KXXH4Nu80TNfcB7F20l6OzqpAnlPn9JoLBuzUX/9B9FNs0nqkxutRiHV
         yTDUf0jKbOZFCG3zZ6Lj8gJH8kTOLEodFBBCv9f3lp7dpZzDHGMvN/Ic8IBc8YJZe0GV
         NrenNoePs0rLWNJMb0MB+oBPVYx2MK4AeDNKv2A11zQI6+etbNf6heG3+0xJrXq/gE87
         fkDROgDKKmE3ILMZMp4fDsijxrAGyLJIsLhXeby8bdMv2mxO+zqHUm3QyYnIRcy/LunG
         CVWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as permitted sender) smtp.mailfrom=bernd@petrovitsch.priv.at
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m4SRA/on3x2XVvXeQVMt1GzsbPK68EvCTmS+iPPtPFs=;
        b=FAXDuIa+7S9EKXDphjx0/0QTS3CU64w4/Nbi0Xmum3mgAbxjcxXQBYzOKkyGNslOoy
         l+JTKV/HVTgCbg3wTr+1d9J8N9ItyQEsNeAJ8BqFj8ytS7//t0LNheypad+zkRUr+3M2
         aXHWZR3aN/RGzUSd+/wX1IcKd9w+eT3CECS4J4JXfRzajqeiLc9y/9s53vhZkOrzgzkO
         BVZjrChvS5WGbh1HX5mVEW0DinM2gAc+EivXd1Pm68vBpA1I4FCey8CtiKUgd6hXMFe+
         HaKRcujz99rXzKc1QnEvDu8Q141iuEpAMA9f9gxWqrBKi8k0ZTGIRtIe2G0pIEqONysC
         hLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m4SRA/on3x2XVvXeQVMt1GzsbPK68EvCTmS+iPPtPFs=;
        b=mGABlNuN2egmfvklWArWYvDeYNxveLn65IZY40zRqLTAS70h4El+7ElIRPD9ECboOj
         xr3eW0/vWpLBtoSAiYgW5qDSiy6VeZ5acm7c/vlgWXZy1HKOrU0XgPkj3/Va3RvJqNUN
         5nuLho5AmOb0VKKjHAYc9wHh9bLsE/6+UPsAq7DjD9copJOii2M5wTqsoeECpnMQPbfe
         RPhF3TXJR+63+MFWItK9DfIi78B2B76sDLrQtjluBhvISg3xwF8LdTO3BXuUY+K/jTJX
         7q/T4tM52stTlsKym3qs/Rkf/h6rOW4ZMLTs0h8nIVDHDxs6WF5yNE1EvL0fOlZ7YYKd
         iyDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ25ffPXqcrAbi54YfXegY6xuNtI1WhuYYGrGx8/MW/EZ7PEakhd
	yfxbRIEImdl2thKrTSwtj70=
X-Google-Smtp-Source: ADFU+vsHEl6mC7K+nF1R/SUxQGiE7c595xW3VrIxYjqLcOEgik3XpSwA9qbVK8MNhF8BnftvwSlPPg==
X-Received: by 2002:adf:e3c5:: with SMTP id k5mr2909667wrm.216.1585136029789;
        Wed, 25 Mar 2020 04:33:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls149904wrq.11.gmail; Wed, 25 Mar
 2020 04:33:49 -0700 (PDT)
X-Received: by 2002:a05:6000:1205:: with SMTP id e5mr3135154wrx.73.1585136029444;
        Wed, 25 Mar 2020 04:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585136029; cv=none;
        d=google.com; s=arc-20160816;
        b=bnCKg+DWLUeHKXm8M/uFsNTgdYHxie6mg99p1KJiYITVEGLIwF31xOiuuadxPQaBkT
         NTHAtWLIxVvTq/tu2DXsDlYiX0Ean/kd6V60IQb+YzRp+qmgh3SadFg1y3GT4NdrIPpC
         zV1AFN5u4/+sqH7SyuVcl78MTlgalgGVcfPDSw+RfkFaStoBu8uvN1qm1EEF0teVEG5t
         /v4tmLwZYrmySzTtDfIZAkEpS7aZrlUPI6UwkHsExQ+CDmW1xjxiig++it8SZpJvFcgJ
         ZjCJwI/68Kmcj4uJZls9bkfpHpVl2jDvWJG/mf3F7se53b1t47/dHIrHPplzc+yPsZJL
         HL7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Tm5Z+k+rBP6F88YL+wQ+Wpuiw3AdZUz7top8Qzt+Svc=;
        b=ycnRVeOZXTwdKkFaoDfGKfliZn1S38owbXIM2KFPJ2pImNCGTMitNPByNCQl8Ek/ci
         1GZmYGfiU76/apvlrqqM5X1eupRlVrfbG1XMgg0/PZsOH8Vh+wI9OWxemEClWbPw7vUX
         o9Tf6E5p6khvEH7NLZQVTeO7wdK7A/nWRJOpUSS+Iq94xGQvAKblEcT43eT5VahRqR7m
         ztp2Owh+BM+tvLjSaLkpy8vjSZWk2QCgVAy2H26am+e8tJXelOw2vAmvGCwwjR+uknRp
         t0Pf5RL95fwOcxAQtDE3Qi7X6RU5vvIbQ7tg0dQSvp30Qwtk3EY5Tqhb6+o2sjeBbgVG
         ygPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as permitted sender) smtp.mailfrom=bernd@petrovitsch.priv.at
Received: from esgaroth.tuxoid.at (esgaroth.petrovitsch.at. [78.47.184.11])
        by gmr-mx.google.com with ESMTPS id l16si345411wmg.1.2020.03.25.04.33.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 25 Mar 2020 04:33:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as permitted sender) client-ip=78.47.184.11;
Received: from thorin.petrovitsch.priv.at (80-110-108-220.cgn.dynamic.surfer.at [80.110.108.220])
	(authenticated bits=0)
	by esgaroth.tuxoid.at (8.15.2/8.15.2) with ESMTPSA id 02PBXCX5024904
	(version=TLSv1 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO);
	Wed, 25 Mar 2020 12:33:13 +0100
Subject: Re: [PATCH v3] x86: Alias memset to __builtin_memset.
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        Joe Perches <joe@perches.com>, Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
        "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200323114207.222412-1-courbet@google.com>
 <20200324155907.97184-1-courbet@google.com>
From: Bernd Petrovitsch <bernd@petrovitsch.priv.at>
Message-ID: <fdcd36df-e2a2-b8b8-abec-8448412af360@petrovitsch.priv.at>
Date: Wed, 25 Mar 2020 12:33:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200324155907.97184-1-courbet@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-DCC-wuwien-Metrics: esgaroth.tuxoid.at 1290; Body=12 Fuz1=12 Fuz2=12
X-Virus-Scanned: clamav-milter 0.97 at esgaroth.tuxoid.at
X-Virus-Status: Clean
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
	autolearn=unavailable version=3.3.1
X-Spam-Report: *  0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on esgaroth.tuxoid.at
X-Original-Sender: bernd@petrovitsch.priv.at
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bernd@petrovitsch.priv.at designates 78.47.184.11 as
 permitted sender) smtp.mailfrom=bernd@petrovitsch.priv.at
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

Hi all!

Sry for being late at the party:

On 24/03/2020 16:59, Clement Courbet wrote:
[...]
> ---
>   arch/x86/include/asm/string_64.h | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
> index 75314c3dbe47..9cfce0a840a4 100644
> --- a/arch/x86/include/asm/string_64.h
> +++ b/arch/x86/include/asm/string_64.h
> @@ -18,6 +18,15 @@ extern void *__memcpy(void *to, const void *from, size_t len);
>   void *memset(void *s, int c, size_t n);
>   void *__memset(void *s, int c, size_t n);
>   
> +/* Recent compilers can generate much better code for known size and/or
> + * fill values, and will fallback on `memset` if they fail.
> + * We alias `memset` to `__builtin_memset` explicitly to inform the compiler to
> + * perform this optimization even when -ffreestanding is used.
> + */
> +#if !defined(CONFIG_FORTIFY_SOURCE)
> +#define memset(s, c, count) __builtin_memset(s, c, count)
To be on the safe side, the usual way to write macros is like

#define memset(s, c, count) __builtin_memset((s), (c), (count))

as no one know what is passed as parameter to memset() and the extra 
pair of parentheses don't hurt.

And similar below (and I fear there are more places).

Or did I miss something in the Kernel?

> +#endif
> +
>   #define __HAVE_ARCH_MEMSET16
>   static inline void *memset16(uint16_t *s, uint16_t v, size_t n)
>   {
> @@ -74,6 +83,7 @@ int strcmp(const char *cs, const char *ct);
>   #undef memcpy
>   #define memcpy(dst, src, len) __memcpy(dst, src, len)
#define memcpy(dst, src, len) __memcpy((dst), (src), (len))
>   #define memmove(dst, src, len) __memmove(dst, src, len)
#define memmove(dst, src, len) __memmove((dst), (src), (len))
> +#undef memset
>   #define memset(s, c, n) __memset(s, c, n)
#define memset(s, c, n) __memset((s), (c), (n))
>   
>   #ifndef __NO_FORTIFY
> 

MfG,
	Bernd
-- 
Bernd Petrovitsch                  Email : bernd@petrovitsch.priv.at
                      LUGA : http://www.luga.at

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fdcd36df-e2a2-b8b8-abec-8448412af360%40petrovitsch.priv.at.
