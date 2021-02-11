Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPOQSWAQMGQEX75MTQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id C544A3190EC
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 18:24:14 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id u14sf4802316qke.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 09:24:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613064254; cv=pass;
        d=google.com; s=arc-20160816;
        b=VFQJ7S4szmZcmXqJO1aN7pHl9lmq0dN3/1VUwMEeeE2JiEOo/jfv1NXF8CUcz1VpDI
         GscgVVftFxacDODBkOri1CnIGiYoei/yWiuslLVrgopHyYXGVSZz1ANY4SMnJkZz5/Rn
         nqlwSx0rtjhr63vXox/qCe052Oarcjfcog7bP7UERjpIba8nCYV2gMWKBr09aUhtSsfk
         wh8/mfZKcwOgmCYg6jRLY3UXwrM2RWoJ8TaJ27VVeNK5rAudG7j80QBnhXbKaraC9iZ0
         3wNEEq16/07er52RltPR+joRau0xr+lIqu/ca/OiwdKAM6v0ylf78mJpTjmv3JYE74Ye
         qAcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dwygTNwJ/eLAxgqK3k2q8uAvJrcOI8ZQ9DaZrdnW964=;
        b=ZUR+HdjJKqqTFnaekHrnf4Iqn9plae3h/iSr0b1PFrDDeWfC4tfhOyXc7QZNPxVAoB
         fwA477/jysrgzxSxSL+oftOOfM3LQD7IjkGw9y8H/YSDBefe7dCXZ4bVzH5cglKC1gsy
         9MGmfEOcHcTnnvFvue0u8LP0fm7/ZvYLwvHDmue6YgAVpDuuK9X1/u+O6hw1DPL25qzC
         cmedWEphLw2ThMRjewtYJH4jHcrhZmSNZfig03hX4PkEzf8sHZV2h13kXv3wKe13T8Sh
         eSKbwDyp4FuH3FVyvmyzuJEzjnGfwd3LnRsT1R4/tvho9gmx7HGkHHbsaYr6CMHgbLuu
         6N8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LkIGSf2m;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dwygTNwJ/eLAxgqK3k2q8uAvJrcOI8ZQ9DaZrdnW964=;
        b=EZ1OTU4Lhq6OwoyEcw43g1ybfe0Up/6qce6Nyug3nM8ou/jEw6hIbHg+YsJLS/GIaA
         ANNya740L6ZJ+WLhp9ueJjgyg3HGxw0PUb/Ek8hrJyt6hooIXlf7ujrs3rzskB+vTnXt
         otAwdcK/6OsWjxLmaLO8dFInUg1f6BWqYzetGbwppvDS6aJmLQsTOsS7t7I/+extZSFL
         V3UyNieDn13sz5MM2DQak6EtrumHpKmEE8rSpD/oV8w453TGMBgnUeVj95ZWZ6l0hXvG
         q0w2qE6bOZx2aidj7Y87CHLLSsz5/zqq76Tdleo+bwiobVIOjLJLOZyHEjr+G/T+nqfT
         jGLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dwygTNwJ/eLAxgqK3k2q8uAvJrcOI8ZQ9DaZrdnW964=;
        b=jCm7SqhXOJY8yFtNyi4WuR2OaM1iGIRKFw3RZUmHAGgXCUV0dFgQAJjEapzG2+aruC
         rrrpH2vqQ2px9cFLH1iZxs7+kvFLe/c8/+1K24AEzhO8DeZ8paWRZ+Oqpp4bRzfTrUEt
         L9ZCgL/zbzpFHkv0SnjQ+ttpwvYv6nhl3lgDOpLSjobiUkYLJP+0QacDD6/GzCcVplob
         Dx82kwGVTZ5E5hu9xRbOaUTlXgunqGS3MZS8Sid5GLowBm8bt6kwgAXPy4ydWBH+bP10
         eic0D8mw5gnpNj5gPxlPn6hWWE0iNym5YhjzJjAhySlU48f9ZBKgmp1MjBn04vvirUaW
         HNBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jqvFUsPWdbtqROAbrMeibBJkYAtOu7VVg/I2rL1B0H3/0NxVZ
	XQFxQDGzNCbmOkwRhla1XaI=
X-Google-Smtp-Source: ABdhPJxa7tF6dFjyorDEtcgA2t8pU7+nMe1PvG15ljOZauzwnfhOfyY1hRY9Kyy2Bm6eWKRP+8u4Kw==
X-Received: by 2002:a37:b1c2:: with SMTP id a185mr9554727qkf.95.1613064253826;
        Thu, 11 Feb 2021 09:24:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e8b:: with SMTP id 133ls1613629qko.2.gmail; Thu, 11 Feb
 2021 09:24:13 -0800 (PST)
X-Received: by 2002:a37:4483:: with SMTP id r125mr6995315qka.387.1613064253400;
        Thu, 11 Feb 2021 09:24:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613064253; cv=none;
        d=google.com; s=arc-20160816;
        b=nCj24GMZbjejBXaT53I6emX17dEV3Euepytyet9Dof3EYlw4U9nBdhNL8jRDNN6ll4
         dO8A+5aHryDD91nlcE8Vf4hrVanYjiYH/8M65EHtKmFRuZZZhScbmv7OFl5bw3lwZg4O
         cONkmIm65NfNY6WUbLLiALYgjoouFFkaMttWerV60xp+TkUksXGRXI+rCl/1OqPnCzpK
         uTycGuUh5ulAOT/B4cWHNX5pvtKHVGhnNDdgu48oP0KJqO4TfsOnwhBTL9OngzP3gkhe
         q4AEyNrObEiTOT6f4DznAiSGCJylEx1l/NuWVNH5tqt9Du5H4OeseLgDnJCzz6SmL7TN
         kBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kI6DwTDsaanDojESbLN8GPTa6aeQ8dkEF6Naq94cHa8=;
        b=mGlQFogJdNq/wlYagCbf8UbXzD1uk+CynHq/iCA9KA6h7oRi3OFicrxEC+K6msKpdq
         BKHJiT46LXznkuWBRNpU0GIAm7xnUbU/G9WorCV75h5Kyle0qqZ9fXX3nZ0NSeOxC2Ho
         +qO3GD/WNmZqfXElrYihMz/54j9NACaq9/C7H84ahmZ8erh9zDMYiq3l5aC6eFyfEX+W
         fOy515DJX7BO5po5nek7/NWYh0zKtRg4t8aGjrKqJv4JTSJDfYFMTh0AUIja4CHWgfLK
         LQzSmgcuCLEvR/3UBdR4LVov1jyoK/60bVtd2u28CjbfOk9DRDefPN4/9IecJJHwC/3R
         Vycw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LkIGSf2m;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si221534qkn.0.2021.02.11.09.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 09:24:13 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D002461493;
	Thu, 11 Feb 2021 17:24:11 +0000 (UTC)
Date: Thu, 11 Feb 2021 10:24:10 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <20210211172410.GA3301430@ubuntu-m3-large-x86>
References: <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
 <CAEf4BzbzquqsA5=_UqDukScuoGLfDhZiiXs_sgYBuNUvTBuV6w@mail.gmail.com>
 <YCQ+d0CVgIclDwng@krava>
 <YCVIWzq0quDQm6bn@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCVIWzq0quDQm6bn@krava>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LkIGSf2m;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 11, 2021 at 04:08:11PM +0100, Jiri Olsa wrote:
> On Wed, Feb 10, 2021 at 09:13:47PM +0100, Jiri Olsa wrote:
> > On Wed, Feb 10, 2021 at 10:20:20AM -0800, Andrii Nakryiko wrote:
> > 
> > SNIP
> > 
> > > > but below is change for checking that ftrace addrs are within elf functions
> > > >
> > > > seems to work in my tests, I'll run some more tests and send full patch
> > > 
> > > It seems unnecessarily convoluted. I was thinking about something like
> > > this (the diff will totally be screwed up by gmail, and I haven't even
> > > compiled it):
> > > 
> > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > index b124ec20a689..8162b238bd43 100644
> > > --- a/btf_encoder.c
> > > +++ b/btf_encoder.c
> > > @@ -236,6 +236,23 @@ get_kmod_addrs(struct btf_elf *btfe, __u64
> > > **paddrs, __u64 *pcount)
> > >         return 0;
> > >  }
> > > 
> > > +struct func_seg { __u64 start; __u64 end; };
> > > +
> > > +static int func_exists(struct func_seg *segs, size_t len, __u64 addr)
> > > +{
> > > +       size_t l = 0, r = len - 1, m;
> > > +
> > > +       while (l < r) {
> > > +               m = l + (r - l + 1) / 2;
> > > +               if (segs[m].start <= addr)
> > > +                       l = m;
> > > +               else
> > > +                       r = m - 1;
> > > +       }
> > > +
> > > +       return segs[l].start <= addr && addr < segs[l].end;
> > > +}
> > > +
> > >  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
> > >  {
> > >         __u64 *addrs, count, i;
> > > @@ -286,7 +303,7 @@ static int setup_functions(struct btf_elf *btfe,
> > > struct funcs_layout *fl)
> > >                 __u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> > > 
> > >                 /* Make sure function is within ftrace addresses. */
> > > -               if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> > > +               if (func_exists(addrs, count, addr))
> > 
> > you pass addrs in here, but you mean func_seg array
> > filled with elf functions start/end values, right?
> > 
> > >                         /*
> > >                          * We iterate over sorted array, so we can easily skip
> > >                          * not valid item and move following valid field into
> > > 
> > > 
> > > So the idea is to use address segments and check whether there is a
> > > segment that overlaps with a given address by first binary searching
> > > for a segment with the largest starting address that is <= addr. And
> > > then just confirming that segment does overlap with the requested
> > > address.
> > > 
> > > WDYT?
> 
> heya,
> with your approach I ended up with change below, it gives me same
> results as with the previous change
> 
> I think I'll separate the kmod bool address computation later on,
> but I did not want to confuse this change for now
> 
> jirka

This still looks good against the original and reduced problematic
configurations for aarch64.

Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..34df08f2fb4e 100644
> --- a/btf_encoder.c
> +++ b/btf_encoder.c
> @@ -36,6 +36,7 @@ struct funcs_layout {
>  struct elf_function {
>  	const char	*name;
>  	unsigned long	 addr;
> +	unsigned long	 end;
>  	unsigned long	 sh_addr;
>  	bool		 generated;
>  };
> @@ -44,7 +45,7 @@ static struct elf_function *functions;
>  static int functions_alloc;
>  static int functions_cnt;
>  
> -static int functions_cmp(const void *_a, const void *_b)
> +static int functions_cmp_name(const void *_a, const void *_b)
>  {
>  	const struct elf_function *a = _a;
>  	const struct elf_function *b = _b;
> @@ -52,6 +53,16 @@ static int functions_cmp(const void *_a, const void *_b)
>  	return strcmp(a->name, b->name);
>  }
>  
> +static int functions_cmp_addr(const void *_a, const void *_b)
> +{
> +	const struct elf_function *a = _a;
> +	const struct elf_function *b = _b;
> +
> +	if (a->addr == b->addr)
> +		return 0;
> +	return a->addr < b->addr ? -1 : 1;
> +}
> +
>  static void delete_functions(void)
>  {
>  	free(functions);
> @@ -98,6 +109,7 @@ static int collect_function(struct btf_elf *btfe, GElf_Sym *sym,
>  
>  	functions[functions_cnt].name = name;
>  	functions[functions_cnt].addr = elf_sym__value(sym);
> +	functions[functions_cnt].end = (__u64) -1;
>  	functions[functions_cnt].sh_addr = sh.sh_addr;
>  	functions[functions_cnt].generated = false;
>  	functions_cnt++;
> @@ -236,6 +248,40 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
>  	return 0;
>  }
>  
> +static int is_ftrace_func(struct elf_function *func, __u64 *addrs,
> +			  __u64 count, bool kmod)
> +{
> +	/*
> +	 * For vmlinux image both addrs[x] and functions[x]::addr
> +	 * values are final address and are comparable.
> +	 *
> +	 * For kernel module addrs[x] is final address, but
> +	 * functions[x]::addr is relative address within section
> +	 * and needs to be relocated by adding sh_addr.
> +	 */
> +	__u64 start = kmod ? func->addr + func->sh_addr : func->addr;
> +	__u64 end   = kmod ? func->end + func->sh_addr : func->end;
> +
> +	size_t l = 0, r = count - 1, m;
> +	__u64 addr = 0;
> +
> +	while (l < r) {
> +		m = l + (r - l + 1) / 2;
> +		addr = addrs[m];
> +
> +		if (start <= addr && addr < end)
> +			return true;
> +
> +		if (start <= addr)
> +			r = m - 1;
> +		else
> +			l = m;
> +	}
> +
> +	addr = addrs[l];
> +	return start <= addr && addr < end;
> +}
> +
>  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  {
>  	__u64 *addrs, count, i;
> @@ -267,7 +313,7 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  	}
>  
>  	qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> -	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> +	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
>  
>  	/*
>  	 * Let's got through all collected functions and filter
> @@ -275,18 +321,12 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  	 */
>  	for (i = 0; i < functions_cnt; i++) {
>  		struct elf_function *func = &functions[i];
> -		/*
> -		 * For vmlinux image both addrs[x] and functions[x]::addr
> -		 * values are final address and are comparable.
> -		 *
> -		 * For kernel module addrs[x] is final address, but
> -		 * functions[x]::addr is relative address within section
> -		 * and needs to be relocated by adding sh_addr.
> -		 */
> -		__u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> +
> +		if (i + 1 < functions_cnt)
> +			func->end = functions[i + 1].addr;
>  
>  		/* Make sure function is within ftrace addresses. */
> -		if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
> +		if (is_ftrace_func(func, addrs, count, kmod)) {
>  			/*
>  			 * We iterate over sorted array, so we can easily skip
>  			 * not valid item and move following valid field into
> @@ -303,6 +343,8 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  
>  	if (btf_elf__verbose)
>  		printf("Found %d functions!\n", functions_cnt);
> +
> +	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
>  	return 0;
>  }
>  
> @@ -312,7 +354,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
>  	struct elf_function key = { .name = name };
>  
>  	return bsearch(&key, functions, functions_cnt, sizeof(functions[0]),
> -		       functions_cmp);
> +		       functions_cmp_name);
>  }
>  
>  static bool btf_name_char_ok(char c, bool first)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211172410.GA3301430%40ubuntu-m3-large-x86.
