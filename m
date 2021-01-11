Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB67E537QKGQELS2GD5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D85D22F0AF1
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 03:05:48 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id 32sf8535482plf.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 18:05:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610330747; cv=pass;
        d=google.com; s=arc-20160816;
        b=u/luSCclrv6dzV8baZ9HkcGCMzQL3Vovf8xBSlKpbtBZ6dNJM0tUEI5o1+RAiVarkY
         9gCC2tvnYJRVV0DKdBW8JbysQl8kLFhYoROuNcHZQKTfMZHPiA8qUP9WRFphxlw+pOsK
         qG1rEn/eRL9c4EffyLR+WaOSY/XhLqNxJB8/eRa056gxmbSmDf/U8ss+Z9N9+ukW3HB1
         IvTekzIXXzevVJP7adIJTuEZmdQjEAQ4ivNSKg2frztnHkQX9EM3JBiYaFYT3sGjma25
         XqLnE7uh/U3pX57HL/sjVh3FBMfS7pxxQpKBIquir1VN8laP9ExtCFvmc8ONCrlZMF/u
         9MQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=0SU/cmocxPxGpcJWvj8p6SUq0I5kFVNFBqEIImxO1pc=;
        b=wJkWplXAWamAQmrkpaOwK4bUD0HiiZ8+BUA9VAKYnpdWFQhFscMnENkcfyIgRK9ix7
         P8nHoyGNpRdOk17uhDtrI93tMnxXUdzMgL3ouy+q29PEE1xPbXpLLkreqfzy/ubn71Si
         yYVIk2Yv0mxbc9WHbtPyOg7h+5274ZR9ScbBPJEuCBp1XkCahjCG78hiZOwV+nDudbOK
         Dg541YpFov1x8yGEsf+hnOmNUDuM+zyeW5w8nTGpkswTL/uiQxc+P8gfkzL+phVSWnJU
         A8f6pMJ05cz8iP2HoLneoNQt/jsgYV15CDKmUbA+tqqk7tPKQOuuX2sRaXGhdMILxPgw
         n9IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vt8cM4sI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0SU/cmocxPxGpcJWvj8p6SUq0I5kFVNFBqEIImxO1pc=;
        b=i7ngDpgCAoH5OOqFYyQ1J4iuUdJZWYd3WuSskRYZ1vr5M3XVEar4Iy0a9sMlnvUNkG
         5QaQDBDQ3KP8bEb9u9puV8brt8sGcIAc3/JjAgjTtIWHp4hLPKKZjWkZu5KelxnhY388
         +AWyVDUj46lxInPXTca9SHoh4l4O19tI9u1E7dxR3TrEzkMGuqRngi/BH5C6tSRsF88V
         a5pxSo8eUwXJszuqEgWyilR9R8GMbPP4cWr0dj9kCwDJIkAeh4ZoSP+YhIrlcYJCWzNa
         7TeVHRFSzrxcjYFgnRHrvLlgDbrNWPIxSSx9ax+t6QIpVsExQ078Ke0xlBPrGhVmo35c
         w30Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0SU/cmocxPxGpcJWvj8p6SUq0I5kFVNFBqEIImxO1pc=;
        b=sgUC7fcELSZpQyCz02kbzrDrjLntsGmIJ3mOK6x84AiV3I7GRAHK4Z0vDPnkcap+aP
         7G1o0fG74yWHMB6XsWeUZY15r2s2etaofirZb5Jyul23wsY0BaU1h/Tghv36pFUdWl5A
         ozw4CpvNjPApZ8ueMk/VUo0V6vYB/xMwZLtgzBVyZqHbYC5KFlKqlPvSpxbKJCU1IZ52
         Kl3DBct8lPpdXT8+6AHz9cyvQ6glP+XdFS2oPh8iVUgjCiMGKdYiQscQkG/XiDInxyEV
         +MEjU9NdjLFrhufmfXXSbVDB5ny/c/MYi+ls8M0fTHXSU0QWC4lx1r7su34cs5PwHdnd
         53pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0SU/cmocxPxGpcJWvj8p6SUq0I5kFVNFBqEIImxO1pc=;
        b=D/vbc+7bjAIJV8O3EIOJuAAw+VB2DEPL7EWMxGDHhDrWgV+wNnnd/mcrSucGlW4wdU
         MombmzdBzPShPGa5bmhbW7E2o2hdvvckMiVY8uRbfF7amUhWfdH7+dzDBqjCvjpDYCQt
         px1f805xESPtGN1/YD8120u9Ty+P0QR1H3fEh2ISq/08cUGIcWlk3ZEcpclw02r1sKXG
         +uO8MXAuwMcNzGODPXNGhl+uv/0uk3J//tU4mgLDY8CB9oSkTSU7oMk6zZmwNa2osPZ9
         tlZgNpR2DvtQJeAQFe+zmPhho64weLnUS7QRW6HCoQuWRta4dDKz1VAnIdsayEUKfDbo
         Wv/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532veulaJntIvRM3hawh77DfmozNzMotIa+Mu4ckb+zdqsLU8Ac+
	atuU8RX2W/P7OceNT5J2kqk=
X-Google-Smtp-Source: ABdhPJyXGiUR/bwcdgpByXA8xnkMVoVkhq8KoK634qWdeZDbwjuO8DYa2JcAFUBfw+0p2T1sAyQQzA==
X-Received: by 2002:a17:90b:298:: with SMTP id az24mr15604972pjb.128.1610330747278;
        Sun, 10 Jan 2021 18:05:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls6124283pjh.1.gmail; Sun, 10
 Jan 2021 18:05:46 -0800 (PST)
X-Received: by 2002:a17:902:db84:b029:dc:2efb:659b with SMTP id m4-20020a170902db84b02900dc2efb659bmr17497775pld.83.1610330746652;
        Sun, 10 Jan 2021 18:05:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610330746; cv=none;
        d=google.com; s=arc-20160816;
        b=0Or8cr4xF8RMAZScbjIXquxHKn92FmHRS9bPYfwyQh2e7H01Ix6m1oVSh/PYUMgIP+
         vWQeqU2f0lBMUETTLnxA9zVPka+3SvYgvKxn1WGdP2QdsF0rKTh6Hn3OhufyOWgi9uu2
         ml0SnCdfqnqYy/OIDGF2bXug/yHDkBeG9TwB91c7UvQtl3o1NfZPbw5qJV/vv/r52YM0
         SBmUl/nGejAr9Eyg0SiCZaPdzO3EN/DZSVjdj18/gLkR33rTTvay33qhTssEVU99JLWR
         9BQC8IzIw8iFUduvyJiMXgHvVtkxVLzny66CFOzdu9YcTrvmrIjXJAlj9CGAnO0GPSwF
         A3iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O1Kg6nMHufkZJeFYAwU5JUMRxW+lQuNTmDBb784fKLc=;
        b=xQGYQOnniTpcLCY4h0gHQIBkzi7xtRVjlcei/fbNHwS9+DRwfceJUvXN/oFglTNh+I
         98lDDKnXB7qy/HRCET/sOYNseKT/E37ab/NrY6FMg8bvnG0262ZUATW9UxHfBZAGN74G
         O5PLfZu1zoWG/nuoctjSaG9y0Ukavm2SoOim/tzspRmyM4FHWRyIcb+uik+m1s92kYwB
         D8FLCcMzUlVTXHALRXsV8V/1tgiIyO3ZlcF5zKAIqhT9c49UPJL9vVRCBOkSVcNrioiT
         vqI1rZ5NpoAODRVJGwx96rzJbtp+620jacW6Cq+XxDabccJQs2nMgZgcTNrG50PHdD9l
         OMbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vt8cM4sI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id h11si1447578pjv.3.2021.01.10.18.05.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 18:05:46 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id n4so16264956iow.12
        for <clang-built-linux@googlegroups.com>; Sun, 10 Jan 2021 18:05:46 -0800 (PST)
X-Received: by 2002:a02:8482:: with SMTP id f2mr12628976jai.93.1610330746162;
        Sun, 10 Jan 2021 18:05:46 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id k9sm9487484iob.13.2021.01.10.18.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 18:05:45 -0800 (PST)
Date: Sun, 10 Jan 2021 19:05:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 mips-next 8/9] vmlinux.lds.h: catch UBSAN's "unnamed
 data" into data
Message-ID: <20210111020543.GB2918900@ubuntu-m3-large-x86>
References: <20210110115245.30762-1-alobakin@pm.me>
 <20210110115546.30970-1-alobakin@pm.me>
 <20210110115546.30970-8-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110115546.30970-8-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vt8cM4sI;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Jan 10, 2021 at 11:56:54AM +0000, Alexander Lobakin wrote:
> When building kernel with both LD_DEAD_CODE_DATA_ELIMINATION and
> UBSAN, LLVM stack generates lots of "unnamed data" sections:
> 
> ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_2)
> is being placed in '.data.$__unnamed_2'
> ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_3)
> is being placed in '.data.$__unnamed_3'
> ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_4)
> is being placed in '.data.$__unnamed_4'
> ld.lld: warning: net/built-in.a(netfilter/utils.o): (.data.$__unnamed_5)
> is being placed in '.data.$__unnamed_5'
> 
> [...]
> 
> Also handle this by adding the related sections to generic definitions.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  include/asm-generic/vmlinux.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 5f2f5b1db84f..cc659e77fcb0 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -95,7 +95,7 @@
>   */
>  #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
>  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral*
> +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_*
>  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
>  #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
>  #define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111020543.GB2918900%40ubuntu-m3-large-x86.
