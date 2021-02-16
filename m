Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXEOWCAQMGQEX2VZYAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCB931CFB6
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 18:56:45 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id b3sf9462756wro.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 09:56:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613498205; cv=pass;
        d=google.com; s=arc-20160816;
        b=aWTJI+w40N3EVF/bKZgnFpAcdmrnw08zj8s4uhM+k4ry2aC5HDG4kRkyCQOGFwksah
         Ij01Xyml8Yx4Xv5LMWZe/GJKK8jQOC6qf0jgSMmlLBzTE4xP0tnLIVO7J3RrZ5CBrRUL
         Ak05wS58wb7OHFouO3ZvJIyll4eb1zlE+wJSLKJR5KPH0mdv5ZZMWTGpkPYzdC1HQJ4g
         ZpttnUvagfsoWYBG9ZtgCDBjsF5nKgu8afr4/zvrndJEVu0mwnV0CVGGnDlQg7bqIiXp
         rfnC9nWg3/tzkdlhXRZ5nNDn1SuC0h+5yLWO8YGc6JbjtmKLMTPpYq/7Ik7kdyWIkG/4
         9hzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ss0wxu2MFeo4aU5mz0VQVjHOIVC2CeTGjvOxJ4zvuOI=;
        b=KvfnwY+QA3Lpllm1FzCYZ9Qb52zePgeYLBqo01PW6WiKahNc2S+6y9+dTFbYFXx3dW
         b7ZAKVD5uB0T0h6GuYVGI+xVMj0KYcO6fSFRLqG+6unCuDPe8pCLZCpGPv9OGVoV664X
         wINRZyoYI4Yn+z503VYKJxhlMz2Z3jpdD9XFNOxXuHoc3NYraZ5XxX3pt+iWUpaJ/2hX
         H+vK4oXNLKMtaU5+/hwnJDQgsPCCSvm7jeotqOeqAgiM9Oy/jdbVWcsErBhfCKGBQTpJ
         Y5hlDSwnH13X+J2ZwlP/xSBnErdIMThzjtrCiukb7WuFhqJpHIYd0gu6w/RRzf5C+lkZ
         H9mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HeWFqx35;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ss0wxu2MFeo4aU5mz0VQVjHOIVC2CeTGjvOxJ4zvuOI=;
        b=g5bjeJIuzvkkOJjUcWKOPAX43fRaIH2qCehAFXslXWD81VLiMo6BFg2+1cBUwR4IJ8
         8C0R3CiZC3lsrt/BltaUqw1vqyZHNiXI93iBTLdm33pI3C2xHS2Xz5NxtIjLewztV2BF
         m20fzZg1jXurBXVHXsHvnOWX1HRo78PKhNdctd7K6g/Vlg1/Dxp4TH3aS6dTOiZuG7Xa
         3gFCTTRCjYrQwaN5LYyByQVludSsDsIGHRhP9azN22sBPR44eZQpPl2SRLMMqoa5SsLr
         t/kj/Fq4p952SaOXjNZxA10HEh28ST7bfcc9c4c2xxtEwwlpKNPuzCV7iPORI0MGgr76
         AV9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ss0wxu2MFeo4aU5mz0VQVjHOIVC2CeTGjvOxJ4zvuOI=;
        b=bg8BpI36VcZETh8ypBrtk5PAOAj6yyyxvCwX6hSA7fqK7RY5ASI1JC6ChIzI9ri3fy
         WngfWdFW1jhkxf98bgNUszp1vfLf6tx3AE48FdeAuGpdT5RreohFbHiXKSYkt+iaUXYS
         UcQd0kKMbUEglr6IYyf61ixfCi0+QgmqwcpiMMglPHPv+R6ofKYUciCIq97v1SiV+yjE
         L/lbTXjpVpeyzfwp4xbi8+cD4YxKt2SpyrANqB+sVkewJpcsrk8vMcft3DXU7uRwTk2K
         p6jRTlO/DnjenaQXkCAI0XB4BFrWNyd2g6FnbY6btKlA70AWJi50StivNAd0Y45BXVLz
         vxVw==
X-Gm-Message-State: AOAM5331D0maqB+OzNSKw+PTjXMC3D+7SJS0tpV3JJY5Kom1bKhPZqdx
	GTzRyxSzy4od5m0kzIcYWVE=
X-Google-Smtp-Source: ABdhPJyXimOIlfCFuqQsDVUmIdRoIkMz8qQW8tm1vbaTKPC5NpCus7zvzGFdAebb209ZgE1weq8UNg==
X-Received: by 2002:adf:e543:: with SMTP id z3mr3071348wrm.181.1613498205102;
        Tue, 16 Feb 2021 09:56:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2e44:: with SMTP id u65ls1387997wmu.2.canary-gmail; Tue,
 16 Feb 2021 09:56:44 -0800 (PST)
X-Received: by 2002:a05:600c:4fcf:: with SMTP id o15mr4169432wmq.96.1613498204304;
        Tue, 16 Feb 2021 09:56:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613498204; cv=none;
        d=google.com; s=arc-20160816;
        b=bo2jyZtaAWYIoQC8sACbxiUplFP6amzrVkjiHwHaMoO1zz/++Zqsk/D/W5b1tyOu2l
         1w0MiHxeoA3nmoIQzWhvJxi+42hwtVtp5d0W6jeti3txj+llQ70BN8wrVby7pSDsgTVs
         4R4YnoCbiRVsifB71P35pcWgEZkT7t5cTpO2ndutaHWSQUvSNkGhKb7AgWL95G2m1u3J
         HCl1kYjW6FVQZUjmppdIwXBxvhRY/fIry9GIs0GorbWvl5/NuMNqjJeBjOUvy9QPwoZ5
         rGvYDK1CXEWcQXKwZqFIsV/QpNXficohSdHX2eskgLqktalugAuoid5vzbxdrsw4aR5R
         fcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sB0GNU2NK22ymf4WR/Z3NGO8dPeB6xu5QjQGtDipdYg=;
        b=ZpmUbaBRpV85O7eVLhuHaB7Bq2qa1zQ7F4sxf/aoaRGOwE5fH6HJ+wxcimqPeACH3Q
         toDXVEBo2oRZ2jSPS0uA8xyFQOFq2tx2cO+IIoFtM73/XVDujtsdsJqZW17DnONSqDlu
         7tun/jM4pHqjkW47DPE9DluxLVZu+twQwWoaGlYnr9c1NGxXZS5lPHSspCsJVFfMmyUf
         LOYKZtIxKHgp4rFRBWakplAuLuCq0xh2q4agxvSRjwC9Zc4Rqo84gAKoi3+eocmTXvn9
         BtBnd72pdM/yu76VWPZXfmBu9zm0dR9NrXeIiiFvvBvg/HZg0hTQAZxAa9LF3bjrSdsn
         E8SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HeWFqx35;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id v6si347761wri.3.2021.02.16.09.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 09:56:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id f1so17363205lfu.3
        for <clang-built-linux@googlegroups.com>; Tue, 16 Feb 2021 09:56:44 -0800 (PST)
X-Received: by 2002:a05:6512:2e3:: with SMTP id m3mr12641403lfq.547.1613498203806;
 Tue, 16 Feb 2021 09:56:43 -0800 (PST)
MIME-Version: 1.0
References: <20210216085442.2967-1-alobakin@pm.me>
In-Reply-To: <20210216085442.2967-1-alobakin@pm.me>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Feb 2021 09:56:32 -0800
Message-ID: <CAKwvOdnBgpRff6wa8u1_ogCm_pRey5d_Yro4UCa_O_=tib0FHQ@mail.gmail.com>
Subject: Re: [PATCH mips-next] vmlinux.lds.h: catch more UBSAN symbols into .data
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, 
	Corey Minyard <cminyard@mvista.com>, kernel test robot <lkp@intel.com>, linux-mips@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HeWFqx35;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Feb 16, 2021 at 12:55 AM Alexander Lobakin <alobakin@pm.me> wrote:
>
> LKP triggered lots of LD orphan warnings [0]:

Thanks for the patch, just some questions.

With which linker?  Was there a particular config from the bot's
report that triggered this?

>
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data299' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data299'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data183' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data183'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type3' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type3'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type2' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type2'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type0' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type0'
>
> [...]
>
> Seems like "unnamed data" isn't the only type of symbols that UBSAN
> instrumentation can emit.
> Catch these into .data with the wildcard as well.
>
> [0] https://lore.kernel.org/linux-mm/202102160741.k57GCNSR-lkp@intel.com
>
> Fixes: f41b233de0ae ("vmlinux.lds.h: catch UBSAN's "unnamed data" into data")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  include/asm-generic/vmlinux.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index cc659e77fcb0..83537e5ee78f 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -95,7 +95,7 @@
>   */
>  #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
>  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_*
> +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_* .data.$Lubsan_*

Are these sections only created when
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is selected?  (Same with
.data.$__unnamed_*)

>  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
>  #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
>  #define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
> --
> 2.30.1
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnBgpRff6wa8u1_ogCm_pRey5d_Yro4UCa_O_%3Dtib0FHQ%40mail.gmail.com.
