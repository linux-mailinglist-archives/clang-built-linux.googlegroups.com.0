Return-Path: <clang-built-linux+bncBCG4HBHYYQKRBLUQQSGAMGQEFUUCR4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCA0442A95
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Nov 2021 10:43:10 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id 69-20020a1c0148000000b0033214e5b021sf257389wmb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Nov 2021 02:43:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635846190; cv=pass;
        d=google.com; s=arc-20160816;
        b=vK0VAndLL/FGasklSFVvgVA9JLjEFruwFLn7SeKIoZ49aN+IyiS2hg0ILQWBR3KcJL
         z/6jJIrBtPjISzNG1Rc1PIU9JrWpr8fSgIghqQEJa5oepQaxFJqd1cfsG4uan9luXXCN
         EI4BktbkdjXesIc4VsxC3lIGs5xO6vxAeQwQHpPoN2BUeD0a7VVMfEASPpynZCeE40EA
         XrqmDsis/Ph50jwwL1/5vZAq/JZGGOYc0+WCsADlQvQOgX+C1tgNil4xdA10v2aa0wMy
         8ZUgZzcbhmQGh7jAPyAysD0Gw92j5HVnVvyav7I/olEyhW9H8MFXPEkdXRQ3wXUti4NG
         en9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=nBCrk0y+WXD1bhimocOexaWqx0coR5qBfVaT9YaFt78=;
        b=mFVUsgoUS1raCLa0Efo1QLxrV8k38libvsLC08JWqaF0i8vwZitnI1tUnotbt9gVbN
         XcitWmGs/dF2BQHglMpM+u6y1oDauXyRIeU3UhEr1zAqKOWCoMoeWqAL/93XWenSADwh
         3jpVz4ad3pGA3l31ejDWE3gBSzcmtf+GKcg1r1y+vRyUv9BMZo5d7j6aeU3zBzxUNv7k
         YWp8FLtBsxaWEWmuszGM2C7ECMznl3ht3d4YFTz6i4xtxKAZL9HDzpgSiLuh+8fWtQxC
         Dr94mDyg4eWFAD+bWJhdMS+CKd0SzaswiL4Aa41yYowPkr+jFFvp/A8/7NTlnEW7TYpe
         Jl0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nBCrk0y+WXD1bhimocOexaWqx0coR5qBfVaT9YaFt78=;
        b=ZLMCr8ZK1JWCUhz7j1M0wK9M/hlG3NwSeQaSdoftuGC/rzws0bAIDh3IEIZWrkq1Yk
         HxslO+ddHPHOi5I6WPebMkuTLrI8Z+65taReUYc2l/bXVDcie3gICc2/1q7v5vLVo3+9
         N7zkjEUazKZjV8ei5YqG1DxFnkRkSHmS9c1RkbCzKU5BivRQCnYLB4iUinkOvhFxj9qr
         mJB7ZJU0naY/QXwkN9hXwgUJngdpxTrYw5vqsQLHFfeYPy3KXFp1CCUKtV2tLIeJUaEv
         uK+hObgKRc3+vQF4RgaqtjjN2rdYQuKRtpV0XB7fWIPCBVbplevpvo7PfBw/dDTwkzfn
         E4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nBCrk0y+WXD1bhimocOexaWqx0coR5qBfVaT9YaFt78=;
        b=A4lkMYtw7p2Ss12jZBY8C/PPdB13VgXDzUKXYQbl3EcEIQEbmuMb8L/q+b7Q6KBmQi
         TVAQmEsIC+Bp2GNsPpQ7FPMnWwl1CAD+pieSOYB39kRs+w0zVLPegujZZEUaMaY/XbXp
         kEbw3dpQHd5X81JGu/d21YIkh6DXTYD9sIpMri+zPHHghKpmGVgPBukQaQ0FfJSo7Miw
         z/6MLOVfrnsTUz7q5Ye3BPEZEZKIJgJYb41+nRcu3eyrnSWm/rnjeAoppq+BrFAnW4lO
         kIhiAVfP8PpDoxjQT61rtOEFGNX886ikn3Iufu6VM0JEYjeV4BvkRF1KohEETer7cvuj
         9nSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Rp+Jff15Z9fbj1+08s+YG/AvI8tZvxBVPBdgsEHXuiyMIbR9d
	e4eGEMZ/Nr8MCL+zGluiijg=
X-Google-Smtp-Source: ABdhPJw8pRapNfdxA6c6LOSPBgbs7Mji51mteFlxIYvNNYAWLYyJnCVdp90b3ar2ZHKGdYGajREhog==
X-Received: by 2002:adf:ba0d:: with SMTP id o13mr44802101wrg.339.1635846190460;
        Tue, 02 Nov 2021 02:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls4329157wrp.1.gmail; Tue, 02 Nov
 2021 02:43:09 -0700 (PDT)
X-Received: by 2002:adf:9147:: with SMTP id j65mr45510233wrj.163.1635846189583;
        Tue, 02 Nov 2021 02:43:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635846189; cv=none;
        d=google.com; s=arc-20160816;
        b=Ust5okhi47rABIStd3OjtYlINFtuA+butfGUwDklx6h8jMvL7zo9H0VzkwdyGQ2iM8
         aaVJJIv8tb1AQDa0p3QpG52Nkoj5/5HXP6Wrv4sIxuyX220JUE34T8J0ItOhJACsnLqZ
         3j9afPIpaX5W4SZmBqyRyenFdUX2SMsHkrH8b/WQhAu0e+j4/geHIIXvViYuqXL7LF94
         9bpqFYWUAlH9OcmX6c+V9nG9HW/kIuRn14mjittTWpiyCT7f2NM7hSJlTaRS3u7XZKIw
         S79raaXkTtDLR8GYBXLjr7EJLXn/p2TYnO+VCcjFcg/H4h4LvFV1oXncqZK48sNcm5f/
         sXFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=USIBPH2mk6a+dFu37SEyRaDyGRytOZwSyWkL1kqxtIo=;
        b=peMnpzDAGGOzBGxJ36xGz64I15ZteqxlzZBzpkWEqPz7haWKbg0x49lAUsSuMzk+9M
         vJPE2dMda9vv3naQxKBEd7/OeQEIaRZKgeQpSstvDkiajOCqzpFAdltklQQk0lu1MGEl
         N0AIebUIGpdOy7guZXU5XM4CyrEfAwWVRVstK4IhXCeaIpd/eLeGmVnhEThUhmv1QqD7
         SQyjyD92C6iHyABixzKSrXyt6hIJKjUhICcXzXPetWiPXOrSEJoNbtGjII9FPZ2C0GZS
         yT4RHmmK8w7H3c8SedK25xzTp4nEJQoemypL6SZ5HUkrCTvucsUi6DKdY4k1NW2cuJHO
         b7Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.clark@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j23si264722wms.0.2021.11.02.02.43.09
        for <clang-built-linux@googlegroups.com>;
        Tue, 02 Nov 2021 02:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.clark@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DAA411B3;
	Tue,  2 Nov 2021 02:43:08 -0700 (PDT)
Received: from [10.32.36.26] (e121896.Emea.Arm.com [10.32.36.26])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E3BA3F5A1;
	Tue,  2 Nov 2021 02:43:02 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] kallsyms: ignore arm mapping symbols when loading
 module
To: Lexi Shao <shaolexi@huawei.com>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org
Cc: acme@kernel.org, alexander.shishkin@linux.intel.com, jolsa@redhat.com,
 mark.rutland@arm.com, mingo@redhat.com, namhyung@kernel.org,
 nixiaoming@huawei.com, peterz@infradead.org, qiuxi1@huawei.com,
 wangbing6@huawei.com, jeyu@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 andrii@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
 john.fastabend@gmail.com, kpsingh@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <cb7e9ef7-eda4-b197-df8a-0b54f9b56181@arm.com>
 <20211029065038.39449-1-shaolexi@huawei.com>
 <20211029065038.39449-3-shaolexi@huawei.com>
From: James Clark <james.clark@arm.com>
Message-ID: <415161e7-cdfc-557a-23cb-f72c5829bae4@arm.com>
Date: Tue, 2 Nov 2021 09:43:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211029065038.39449-3-shaolexi@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: james.clark@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.clark@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.clark@arm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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



On 29/10/2021 07:50, Lexi Shao wrote:
> Arm modules contains mapping symbols(e.g. $a $d) which are ignored in
> module_kallsyms_on_each_symbol. However, these symbols are still
> displayed when catting /proc/kallsyms. This confuses tools(e.g. perf)
> that resolves kernel symbols with address using information from
> /proc/kallsyms. See discussion in Link:
> https://lore.kernel.org/all/c7dfbd17-85fd-b914-b90f-082abc64c9d1@arm.com/
> 
> Being left out in vmlinux(see scripts/kallsyms.c is_ignored_symbol) and
> kernelspace API implies that these symbols are not used in any cases.
> So we can ignore them in the first place by not adding them to module
> kallsyms.
> 
> Signed-off-by: Lexi Shao <shaolexi@huawei.com>


I tested this and it has removed the $ symbols from kallsyms where I saw
them before.

Reviewed-by: James Clark <james.clark@arm.com>

> ---
>  kernel/module.c | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/kernel/module.c b/kernel/module.c
> index 5c26a76e800b..b30cbbe144c7 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -2662,16 +2662,22 @@ static char elf_type(const Elf_Sym *sym, const struct load_info *info)
>  	return '?';
>  }
>  
> -static bool is_core_symbol(const Elf_Sym *src, const Elf_Shdr *sechdrs,
> -			unsigned int shnum, unsigned int pcpundx)
> +static inline int is_arm_mapping_symbol(const char *str);
> +static bool is_core_symbol(const Elf_Sym *src, const struct load_info *info)
>  {
>  	const Elf_Shdr *sec;
> +	const Elf_Shdr *sechdrs = info->sechdrs;
> +	unsigned int shnum = info->hdr->e_shnum;
> +	unsigned int pcpundx = info->index.pcpu;
>  
>  	if (src->st_shndx == SHN_UNDEF
>  	    || src->st_shndx >= shnum
>  	    || !src->st_name)
>  		return false;
>  
> +	if (is_arm_mapping_symbol(&info->strtab[src->st_name]))
> +		return false;
> +
>  #ifdef CONFIG_KALLSYMS_ALL
>  	if (src->st_shndx == pcpundx)
>  		return true;
> @@ -2714,8 +2720,7 @@ static void layout_symtab(struct module *mod, struct load_info *info)
>  	/* Compute total space required for the core symbols' strtab. */
>  	for (ndst = i = 0; i < nsrc; i++) {
>  		if (i == 0 || is_livepatch_module(mod) ||
> -		    is_core_symbol(src+i, info->sechdrs, info->hdr->e_shnum,
> -				   info->index.pcpu)) {
> +		    is_core_symbol(src+i, info)) {
>  			strtab_size += strlen(&info->strtab[src[i].st_name])+1;
>  			ndst++;
>  		}
> @@ -2778,8 +2783,7 @@ static void add_kallsyms(struct module *mod, const struct load_info *info)
>  	for (ndst = i = 0; i < mod->kallsyms->num_symtab; i++) {
>  		mod->kallsyms->typetab[i] = elf_type(src + i, info);
>  		if (i == 0 || is_livepatch_module(mod) ||
> -		    is_core_symbol(src+i, info->sechdrs, info->hdr->e_shnum,
> -				   info->index.pcpu)) {
> +		    is_core_symbol(src+i, info)) {
>  			mod->core_kallsyms.typetab[ndst] =
>  			    mod->kallsyms->typetab[i];
>  			dst[ndst] = src[i];
> @@ -4246,8 +4250,7 @@ static const char *find_kallsyms_symbol(struct module *mod,
>  		 * We ignore unnamed symbols: they're uninformative
>  		 * and inserted at a whim.
>  		 */
> -		if (*kallsyms_symbol_name(kallsyms, i) == '\0'
> -		    || is_arm_mapping_symbol(kallsyms_symbol_name(kallsyms, i)))
> +		if (*kallsyms_symbol_name(kallsyms, i) == '\0')
>  			continue;
>  
>  		if (thisval <= addr && thisval > bestval) {
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/415161e7-cdfc-557a-23cb-f72c5829bae4%40arm.com.
