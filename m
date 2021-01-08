Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKUV4P7QKGQEEHUCAHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 368F52EF9FF
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:12:11 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id w17sf5187906qta.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:12:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610140330; cv=pass;
        d=google.com; s=arc-20160816;
        b=K74K16bhP+mh5bnDkZ1NsDsg+Vf3zPOIFI0ZWq4fEUPdL5YFYGvggzW1L5j+Nx8M9u
         edfMl6GA/5M1fLd7VKI+BlArvS7pyGwdL5T10VCVZn0uk7P4REs8J9v+bFLX2aGWiN0/
         yp21iVc5YRSPJnTAfovG9wzwR5Tw8UkyyGhhGNhc/8gcmVP07W/g1RZm1sAukEW1hbM8
         DAT7cNwnb4/nSkGRGfgR61qk2ULMVg+3mPhMs0Hcm4pw2fMYRkjowcsIrPK+gvgNYk86
         ng7OJVKssI29V9zvk7cFFnRl27dNG9R1uJsBnceNLr099WMfs8jQmzdHbAysZ3xkxfBW
         yXJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=FLw0v/E83Nr+IP6NKet8v7PeuYVXPvmHDOH8lLdNyEw=;
        b=k5oabZC+oXLE9EPwU41SUI//sNMubhFgicRZwqGwSqiryQpjp14yOj8INJt7FGcfDW
         83DXnfg7k+okV4WWMvMfVfjxf7pE6hb4HSzpCRGN6CaG+ZljwgZpisGRwBG53hPP2vQU
         EV+ZdCHTaUzqo5uBgp47O9W8P8OdJVAeIRjZQjdDK4F28jjvOM/TNK0myZeab5wdfaYr
         9SmIg9y8v9Pte17CSh/J95jqazELGnYc9M45/SWryPatUB+hdFySA7cUWL1NG9ok8N7P
         H+/v9O350mRulCOhXubYRZjF34ggvrAx3FwQsQGD5fsGtNFqhuYHa3N1j6fwePJXdaNh
         By2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9pjJ8n5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FLw0v/E83Nr+IP6NKet8v7PeuYVXPvmHDOH8lLdNyEw=;
        b=DM3lAY4C3/z4jngXz88IT/qbXjKyg5PoOgRYDwIpzMALw5IzPyPcyHivpI0dKd3bFX
         TST2x5UToHkzgqr2+jc7WUAUgNmGcGJXFS1OkwH6F9oDVApUwFjz2N6Zt2YX7y+ZJlfY
         PSL2SrsFpPYjZYDd1MwpghlYI9H9M2t5Fg4TGVHP/ygGWp8+yDey94LX0dNO3I0zb9Sw
         49dVuFhgRU7ItRE1Pc+T9nAB1+sTDpuWvT5MjUdXyIjuXyBlmxNy0k8IuGwqRgYttBIh
         tFhMaJ5543e5y7eV2pA23uBgIDuxhzA443NNIJmJJiaVqf2DFWwY5JK3ej0TNJHVJ1SX
         gedA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FLw0v/E83Nr+IP6NKet8v7PeuYVXPvmHDOH8lLdNyEw=;
        b=EUp8zxTiwvITNa4Nv3hYI6StlUIAzUl9a6jbdiQpCS4PcTSSL5DLWIyMVtX2vg0Yyj
         WaH4ZqbjAYPrN8Is751AmlRkywuEwqIIOGH4NfG4UJEIRTEpT8Il/VuY8rnUgNd+NVjn
         rh6wJVhV5YjcgjLFDYySMF225rTDPhqXqw4k1E3iJFPKZfDaC8SXkDMj80JBl1rpJeoz
         ml5nGNWNjgJPcskhKKpTi3e0d/OS0RvVuE3s/5+vkto//S4n6eNj/wG9ndf7wDeFb9DF
         RA0a9z0XELpuuzBoieYr9kNjXnSV93Ooy9qYjKGDmUw3OQ7c0WU7AC/M1ZgL1TNioVXd
         pCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FLw0v/E83Nr+IP6NKet8v7PeuYVXPvmHDOH8lLdNyEw=;
        b=mV786+ngxtuwMzZsmivRRfh2pVOFFO6aNM9an0FsQ7pfdKkkirKKFNF+BB8CY4d9XL
         I5PH+bineGIrcFu93xm5omuZui7XM/DxF3guif12B4NwylC/RdfMenjgxSfjQqX0xKxz
         +dAV5xbj1gK4C6phPyzNNe2Ys4dqxbCliK5mHv+PZ+VN12PqR4zX8+Evk7gmbUzp+zAj
         3lW0HPOPrZVJyNY7aEn7RGMfIr1s/l3hY2IpQ2w9VSFYq50vrMnXvjbMxl7m+wRpkMWr
         6ydjTCWCr2k267KQAs1+T7Ne5ahTIeQ6oD1OTPjiTo/WkF9E4+cKAeBoWrpw2LSTRHzx
         SkTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JNty/6IjMLpN9sPBzBsgL9cPnMInLSSUsOY/aHmZ76XFnI81t
	xOPbjKllUqBRefsqjlc4KdE=
X-Google-Smtp-Source: ABdhPJzb3Rbvyz7kF0i+mRc4V/myawczbk7QDmQTeFMrnN1sxx25sLFw6ry7/MRVaoPW24ZohLAJog==
X-Received: by 2002:a05:620a:390:: with SMTP id q16mr5835750qkm.417.1610140330324;
        Fri, 08 Jan 2021 13:12:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2350:: with SMTP id i16ls4721776qtc.10.gmail; Fri, 08
 Jan 2021 13:12:10 -0800 (PST)
X-Received: by 2002:ac8:7491:: with SMTP id v17mr5486699qtq.38.1610140329974;
        Fri, 08 Jan 2021 13:12:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610140329; cv=none;
        d=google.com; s=arc-20160816;
        b=Oz2SGxpQK/B7pqxAq2wcDCi2SiA+hqlev0aXb+Tg2ETY0qX8UW260wqu95LdXxja+o
         L17Jrl5SVTVOWxtu7rE1I4JhaHLquyQbrwY4pHhkzlitktJkbDY4RWouv/zhn4yQK9QS
         NT1TJxmSKjf7ArwjW6giFZNhp9srIO7HV433tzdFqNjm16POyo5k90lOZ3IH67ug7RuW
         TvJW81cK2V99KrLpMFqO5CYQIeJUePYAMf3cT/oK6u24+luq9Uf3rQwtIzmK+bvZe54y
         7yCzVWe1bjp4DDGXBA4rk7XADWPeoGy4LI+zRcg/gUkzychwrlLu5RLJ2ExRfnt9BkOr
         96vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6xrx36MCllhkC/SSYNU9FX21dLUBr12VQ4uA3o+Xi4U=;
        b=ZU7bo7KfpHmIhfMksep43agkl4rjWx+fadhRfxp3vj17QkTB8vX5SAIezUDPtGhv3u
         01S8zhgtZJgMeI7yDtiqUVGaw264duHbQb3ETIZ46wnTBPefRgqfVlpetkaUt+mYzdjE
         ApBvDKVKNo4n95+P4v8T7hd5Bpn3AYuYF0PSFwpME/h7zwehYEV40duYsXxuZGfeYJCZ
         rpXZ3A8Cp8tquKlMfLfdzBtTV973mJrj/K0xrywb51VWa0iHPNnSOwqBEDX1uuuKsnvg
         LSZD2HMliIkPGPxgzec5RXE37SIaXCXAG+K6ifDpQpp/fTy07FNc0Ix1+ExjKgYq4bWW
         GL2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r9pjJ8n5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id t2si1029740qkg.0.2021.01.08.13.12.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:12:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Received: by mail-qk1-x732.google.com with SMTP id f26so9807221qka.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:12:09 -0800 (PST)
X-Received: by 2002:a37:418d:: with SMTP id o135mr5954034qka.426.1610140329673;
        Fri, 08 Jan 2021 13:12:09 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 60sm4850070qth.14.2021.01.08.13.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 13:12:08 -0800 (PST)
Date: Fri, 8 Jan 2021 14:12:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 2/7] MIPS: vmlinux.lds.S: add
 ".gnu.attributes" to DISCARDS
Message-ID: <20210108211207.GB2547542@ubuntu-m3-large-x86>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107123428.354231-1-alobakin@pm.me>
 <20210107123428.354231-2-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107123428.354231-2-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=r9pjJ8n5;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 07, 2021 at 12:34:53PM +0000, Alexander Lobakin wrote:
> Discard GNU attributes (MIPS FP type, GNU Hash etc.) at link time
> as kernel doesn't use it at all.
> Solves a dozen of the following ld warnings (one per every file):
> 
> mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
> from `arch/mips/kernel/head.o' being placed in section
> `.gnu.attributes'
> mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
> from `init/main.o' being placed in section `.gnu.attributes'
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/kernel/vmlinux.lds.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index 83e27a181206..16468957cba2 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -221,6 +221,7 @@ SECTIONS
>  		/* ABI crap starts here */
>  		*(.MIPS.abiflags)
>  		*(.MIPS.options)
> +		*(.gnu.attributes)
>  		*(.options)
>  		*(.pdr)
>  		*(.reginfo)
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108211207.GB2547542%40ubuntu-m3-large-x86.
