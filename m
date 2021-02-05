Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEM762AAMGQEDAS4YRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6E5310FF7
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:33:54 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id j6sf4186496lfg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:33:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612550033; cv=pass;
        d=google.com; s=arc-20160816;
        b=OBYkZ57T/JBv4+32LjZI3bhcr3QW0fqOm96fPCwXS0SN8L6OVPeV2YKFPKV8IFwLI1
         4K8I/FszbSTT7IG8GnjEYHsSdn1vb3APY6/Sh5mgVnWJZW0hh5wvtqmgC4If0Tr+Pxjo
         CEH/5yJnEjaszdsYFhAZgxvjP5ROcWiIdsPkFSpTqdnPvBJbzSJWUyKxocFXuGTILmko
         hwlXkPwc549xHd3REeRvh5BpN5by+358QOAMs6g6F85VF5b963q10GMRC8Wc/r2FPGKu
         nE9n+MRAiHBR/J5JqEN5NYCwBqehydivq/b/9FydGouUTt1eCcgedOTVvZcylmzWZT2d
         CVCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l8xxk7llKVKhH4megzfW5KirufqSVHW8MMyuKQOL7CU=;
        b=J0kmzaXSykprUqqVoIPcEfYtLbaxmBu8Kv0CovVT/YEAkUR2cGUANT5haNCCSYAMb0
         MpW0MOKIv9wfEnYPamQFi8C3CW0vMLlEtxILrmhsdyoGIzyJSSVdvf+PtSZ0bhL3XU7c
         gZf7tpjzRIFcFVl256+Wfpa4giN6sElfqX2CfPIryaRdNyIf/H0JIEfYCHhm7AeJbWBp
         +IjFiOs560q0MMU8NaIUkVbPhtVa7oWFlkTCsS0CzF8ARzdbJWXkVq8Dmpt7jQoNYjZB
         K3YO2lYjUSsM//987i4fNztO85DkvRliJ1hVqR3nRrNXeUURuEhMHs22U5vF07zI9K7h
         VOgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oh+oZFzj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8xxk7llKVKhH4megzfW5KirufqSVHW8MMyuKQOL7CU=;
        b=K8HMBQrLi0qDtQTHUYjp0vPaxletzeWLAhXS1fpAQKrnzM+kHyczEV6CsCfBJ9203p
         bKsNB1KJYvxIGBev0C0s76x9cU/SKvCQuKBHgCH2NLOH8zqU3SPRqfqkaVOllR1ESY5w
         914gbWSmGgjyNJEDqnA1uTFWuABVLyPJvQBKnaWTR7pV2gSyvaLKLLyCCh49+c/4Xa5k
         emRiaNzOq4iRl9cG7gkWkoJhnzlrMWMUQ5KHQfiVpY9BpPUDrPBqcfu/GRW1OCkgFIPJ
         SnGWp5Sdz+oXmogUHoUalaFu18ruZ+vMt2B5hwml8lVkZ8fCRIMROVDGVHMvbtv27mYJ
         1Nrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8xxk7llKVKhH4megzfW5KirufqSVHW8MMyuKQOL7CU=;
        b=DymlDBeeTlQounxYolssEGIjBptUwsv2WZNHlyhzqI+pJbWXAmle2lUo43uE9xBzuc
         jXf+MioQKbTEo0FZtu/KPt5xr9hjPHrqz2pH/Tb+gkjWpMS9QAOnXXgb1YQg628l4C1h
         ITrHilCYz8VBLmPcK4d+eYWOBXusdtspM2I1xe//XxLGiQvCnw49w2I7CwEof8AJ+AoQ
         PxGCPLdNAKd3VFS+Ipv5av5NPGyOb0IICBdKLgMSe2npILeHFWaaW1AK1cS7+Ky6Dp3h
         orbWG53LFF+fGB+IAa5E4JeWHIFQQvS5fr7Lb92bRJopIfMkqor8znNeQx4bjjx+XBgI
         rj5w==
X-Gm-Message-State: AOAM530gBqF1gttePbl9ee6gm/AdA01Z+PlglJZkZA2sgmljEykCy3GZ
	wTjZnVEIYLY+KMVSPTPtqww=
X-Google-Smtp-Source: ABdhPJystpcdV+CM6PUUlUjNLJNQqE0PP39CB/VkJwC86tRVi2WT3tV/bObY54gNm/nY3Z36mSyVmw==
X-Received: by 2002:a19:4893:: with SMTP id v141mr3154968lfa.183.1612550033720;
        Fri, 05 Feb 2021 10:33:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls266603lff.1.gmail; Fri, 05
 Feb 2021 10:33:52 -0800 (PST)
X-Received: by 2002:a19:ca03:: with SMTP id a3mr3096206lfg.425.1612550032538;
        Fri, 05 Feb 2021 10:33:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612550032; cv=none;
        d=google.com; s=arc-20160816;
        b=fMk1bnc3iSB6MAQqv2AV4U4abyDoyXWAaNJKkqLYcM/JvApdoqu4Vq5kNIB72FMAFU
         gejin/YhL1hwexD/FkRLOjighBjcoCo4lE0pEk7M1Z6FZKCa6GcOqV2mj8HBXbtt1Kb8
         RgoqhpGKtGZ9swgaI7qo8uj/Z74fkhS6tx5MlP1hzwdoCJAHAey/MoOioer+AcyfCMHr
         FpHwagc6/MXuXEHXRcKpAe/tLNjEHqW9ke1uViBBfgQUtFNTjNIT3gLzZ/8fSegaLVCm
         E8FoWUwAf6MsIDG5r9aIQoV1/Wm2XUXaFz1xfQh+hjrYVajMbYH31I8JdjETDNN8ApTZ
         IC+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h2QQGa7WmUtOnh1lnM8t/aGQgM70oTQkAKJTNVCw1J0=;
        b=YqZx026DdAeaEf9ald9cvEkeYVOl+upNLdLk7Rq/m5U6qiTLHT4aH9N+mV6Fzkb22I
         f0b5cqo0yrW7sfNVDKUkKkMfgtAUpFENe9hf8L1kTI9MG3NyQI2eBylA4TS6dbNBRsNu
         ygDkmX/zmCro6MAvM814IRv2y6hFYI6ts/hW+jZ5hURc/FFv+MxxzShygPV36qQFFoEx
         6PhmZK4ahg3Zs2Mtr/aUQVYWJDtuBr86jIYUtq5nmUnJxf7U4zkz+ZvzCf+E4oWzohhA
         amWCkPUHXnY6kx9lAoTZ7X1XiEjEOMzn/6Mvtfvpknua1PE806k5q2BlueyptR7+3gsr
         zqLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oh+oZFzj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id h19si331647lfl.4.2021.02.05.10.33.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:33:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id c18so8896025ljd.9
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 10:33:52 -0800 (PST)
X-Received: by 2002:a2e:1519:: with SMTP id s25mr3379949ljd.495.1612550032109;
 Fri, 05 Feb 2021 10:33:52 -0800 (PST)
MIME-Version: 1.0
References: <20201230154104.522605-1-arnd@kernel.org>
In-Reply-To: <20201230154104.522605-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 10:33:39 -0800
Message-ID: <CAKwvOdkSyP-eZT=GGpg7z_C5z0GUsfLRHN2HOn8JgoTT_XrfGA@mail.gmail.com>
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
To: Arnd Bergmann <arnd@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Wei Yang <richard.weiyang@linux.alibaba.com>, Arnd Bergmann <arnd@arndb.de>, 
	Vlastimil Babka <vbabka@suse.cz>, Dmitry Safonov <0x7f454c46@gmail.com>, Brian Geffon <bgeffon@google.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oh+oZFzj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Wed, Dec 30, 2020 at 7:41 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang cannt evaluate this function argument at compile time
> when the function is not inlined, which leads to a link
> time failure:
>
> ld.lld: error: undefined symbol: __compiletime_assert_414
> >>> referenced by mremap.c
> >>>               mremap.o:(get_extent) in archive mm/built-in.a
>
> Mark the function as __always_inline to avoid it.
>
> Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  mm/mremap.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/mm/mremap.c b/mm/mremap.c
> index c5590afe7165..1cb464a07184 100644
> --- a/mm/mremap.c
> +++ b/mm/mremap.c
> @@ -336,8 +336,9 @@ enum pgt_entry {
>   * valid. Else returns a smaller extent bounded by the end of the source and
>   * destination pgt_entry.
>   */
> -static unsigned long get_extent(enum pgt_entry entry, unsigned long old_addr,
> -                       unsigned long old_end, unsigned long new_addr)
> +static __always_inline unsigned long get_extent(enum pgt_entry entry,
> +                       unsigned long old_addr, unsigned long old_end,
> +                       unsigned long new_addr)
>  {
>         unsigned long next, extent, mask, size;
>
> --
> 2.29.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230154104.522605-1-arnd%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkSyP-eZT%3DGGpg7z_C5z0GUsfLRHN2HOn8JgoTT_XrfGA%40mail.gmail.com.
