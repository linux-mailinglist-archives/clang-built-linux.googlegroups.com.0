Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSN7SCAQMGQEOYEJBZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 20658316DA4
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 19:02:51 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id k7sf3270372ybm.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 10:02:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612980170; cv=pass;
        d=google.com; s=arc-20160816;
        b=RSZBDiamUCeiLExJJEmjbcpPpbv+s0hTGxgE+PH2NcInipbNtun/EoVHp7XVm9ZTeZ
         7maTL9d+aFXWaqRwM3V1rN3w0HjFFJL0S17hr5W7Nr3h2zYRZC6V7LF8Rk7ni/KvwZYh
         xOepmznQ+GvcNvi4YFS2BTkZTMEGRac1J5XF67VvBMc9k7iy8qt2LFMEtsVs0mCoiftP
         ZH1bKxl2SQ2jx/R4mUJlXAMsL38iW4t/rTCX2giC27rscF+rDzZjHNo6AqPapXdFLh0E
         eXBlFE/2WrOL5psMFGgl/7KmB9XZu537O6o2A2oXAxTTK65lFoVcO1uesDKvNU2HrIOP
         31gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9chC8s04nkR+3Djkan89OaFWIsw8F8KSnATkdNMellc=;
        b=ke1SBjDkOmKX/NIdxwUecRSmcl6wyZVy7U0yTihcfYiS0IJCu3sb6m6cFbs5Indad5
         Vy4HHpI35tOVdAd5FjGnlX3olTliBfc6hI8vIU7j4UygwvqiTID81PXQxY8++qNfm6ml
         BX+cD7PRwfdHL2D1NQlaL+I63zp7+qpvVvJTmjKjvEMI7oieNaTvJW74pSjdzn0CIcLq
         uqKiEuZD3MSO5oCMpMml1mk8MUZHgEI9Dnt3W9gHi2Tnlp5AbTkvFJEYt12YZyBsaoAP
         n5qUxg2CzIRfngN32mdRSKcVKgzDMywLkjH0eCM3F3NHuglex/5FbkSIk0mWMBJLtGOB
         7vPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TV6sz6nP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9chC8s04nkR+3Djkan89OaFWIsw8F8KSnATkdNMellc=;
        b=Cd35Z4AtAxn6wgxl4+D6pmdLyq8vZsm5oAr1LI29/VT0WRiJxHBPUYTPffD1Cso2l1
         wSZMiM/iGeAGlhG53JQoH1l194bj6fZRtMdh6tz12tvGbbqZEM5m14gY169YE6X47fR3
         qT7TPG5QiCc085DHxizlwQ/Pj3btLT+CsP/L+oLEjar5SU/JrAYhjWze1n50F/+fela+
         j99tfiG5uxHwAb8TcNfxCgQyuQ1IXcpnkPNDd44CnqVMfztciM8yG1mxicGDwZFa4RUd
         MgLXE9gwE9gClzGGjCj5fb2Sxdjv6aRUxje7sHHS2O16403GJKvVhOTDDEx7aEcIAscO
         K4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9chC8s04nkR+3Djkan89OaFWIsw8F8KSnATkdNMellc=;
        b=Ug9bpSL51r+nqiqqII6CiNFEpl+hbtaL12RGP49+MR9jCKyX0tdp9o0x3M4D49Vebk
         AU6bc13/psT3ChlLJiwhGheyhdmMHlfOsaT1/wvmhf7k62zPjCYPckJyutQ1KpqQQkmS
         3QfVnZgpH/xE2GALNOGrHrIvsTSB3djJEgVFS/EklAwNh9NIbXfxIRshwU6SUTjD8RjP
         127OhWW8wMG3xljGyJNGwf8DcCh7D+gkJWfLBfZvCdBxDz4Y0AeJHW33k9OvwRfRSG7G
         k2CKvnCONi7F8XGClUWOvCwDnA7H5yuBDxG/+CNXKpShDt+bzq52G/wCdoonIhqhyhfh
         Fi5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SYhi7GGE/VXMUUVneq92tVE0pGtnGZDdGc++2TrujEO7xxBGM
	pqSDziM07Q3bU21v4ZOg0Co=
X-Google-Smtp-Source: ABdhPJwaZ4htgZQ6lslMB+dAqOnqaxwOUvo653DTm186nM1Is404DD1M2i1xQzQBNxdqvFfR1Ii7+w==
X-Received: by 2002:a25:af94:: with SMTP id g20mr5915928ybh.414.1612980170002;
        Wed, 10 Feb 2021 10:02:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b325:: with SMTP id l37ls1324172ybj.11.gmail; Wed, 10
 Feb 2021 10:02:49 -0800 (PST)
X-Received: by 2002:a25:7183:: with SMTP id m125mr5923989ybc.151.1612980169566;
        Wed, 10 Feb 2021 10:02:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612980169; cv=none;
        d=google.com; s=arc-20160816;
        b=qiZbx5eUiWSxR7uRPbk2GyTv7vIrMNsbgX98zvhgVzLv6apY6r54NksS1bXAaqq6HN
         YspvC3+s4BUJ+H5glvrc3de6ryehV0alFhz9ho5d+HdAlMwNDN7F6DAnSSP6h3ZC00B8
         +EGH414xMXlFClL6Tx/UgGOfj0eqhFxBmtsKDuoQMrUZkes23obHJLZgr+Qn2uG6piTH
         KjpOM6xz6W4saX18BWPC3CXCEP7K5XR1M/59SovOvbMPGXvBbye6UcnmM5wMEk7PESiZ
         TVuCUJkK1sj0H+rSu3M740pdD/NN8HTCwdJuWWmm1qfD3/i637fi9oL45eFC7ph0ktmD
         Gxvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Or54sIQZO92BAajhA3YpDAuHp18NWegv/ubJMj18vxo=;
        b=p9OHcW0ONl0o1Jy3JPdD91X2Rb8oI7WLDeJJ4hy8krUvwnAgsx5/oCXjeKlQqUvBYv
         ZRWmtNvQbRPxxtzMausxYQc6ZUyLQVOeL9KnXXqy0NAXQKxFzYx5sFu6Pk9Op9GOOKBs
         XEPPvuX1eA8IK6m0JujfmpfaIzXqFSNRbvePWvu2CACgrDOpeh79RbH81HcbuyZxR47X
         RhOIXFqdx8HZEJr34CErZGw4W8+6/XCMILA7wpbTcK3AIx21vZhZpWdDOLYWCTqv+oQu
         FIm6mNG6AJbFUf2u32p06kALl19+ntHJe+c3JH37kXNLoaGx0NVu9ilBj2/zKV0Bxgjs
         HEWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TV6sz6nP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b16si197963ybq.0.2021.02.10.10.02.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 10:02:49 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCDD964ED0;
	Wed, 10 Feb 2021 18:02:47 +0000 (UTC)
Date: Wed, 10 Feb 2021 11:02:46 -0700
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
Message-ID: <20210210180246.GA1945861@ubuntu-m3-large-x86>
References: <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <CAEf4BzaL=qsSyDc8OxeN4pr7+Lvv+de4f+hM5a56LY8EABAk3w@mail.gmail.com>
 <YCMEucGZVPPQuxWw@krava>
 <CAEf4BzacQrkSMnmeO3sunOs7sfhX1ZoD_Hnk4-cFUK-TpLNqUA@mail.gmail.com>
 <YCPfEzp3ogCBTBaS@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCPfEzp3ogCBTBaS@krava>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TV6sz6nP;       spf=pass
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

On Wed, Feb 10, 2021 at 02:26:43PM +0100, Jiri Olsa wrote:
> On Tue, Feb 09, 2021 at 02:00:29PM -0800, Andrii Nakryiko wrote:
> 
> SNIP
> 
> > > > > I'm still trying to build the kernel.. however ;-)
> > > > >
> > > > > patch below adds the ftrace check only for static functions
> > > > > and lets the externa go through.. but as you said, in this
> > > > > case we'll need to figure out the 'notrace' and other checks
> > > > > ftrace is doing
> > > > >
> > > > > jirka
> > > > >
> > > > >
> > > > > ---
> > > > > diff --git a/btf_encoder.c b/btf_encoder.c
> > > > > index b124ec20a689..4d147406cfa5 100644
> > > > > --- a/btf_encoder.c
> > > > > +++ b/btf_encoder.c
> > > > > @@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
> > > > >                         continue;
> > > > >                 if (!has_arg_names(cu, &fn->proto))
> > > > >                         continue;
> > > > > -               if (functions_cnt) {
> > > > > +               if (!fn->external && functions_cnt) {
> > > >
> > > > I wouldn't trust DWARF, honestly. Wouldn't checking GLOBAL vs LOCAL
> > > > FUNC ELF symbol be more reliable?
> > >
> > > that'd mean extra bsearch on each processed function,
> > > on the ther hand, we'are already slow ;-) I'll check
> > > how big the slowdown would be
> > >
> > 
> > We currently record addresses and do binary search. Now we need to
> > record address + size and still do binary search with a slightly
> > different semantics (find closest entry >= addr). Then just check that
> > it overlaps, taking into account the length of the function code. It
> > shouldn't result in a noticeable slowdown. Might be actually faster,
> > because we might avoid callback function call costs.
> 
> I'm still not sure how to handle the external check for function via elf,
> but below is change for checking that ftrace addrs are within elf functions
> 
> seems to work in my tests, I'll run some more tests and send full patch
> 
> jirka

This passes the build test with the initial problematic configuration
file and the reduced one that I came up with. That is about the extent
to which I can verify that it works though :)

> ---
> diff --git a/btf_encoder.c b/btf_encoder.c
> index b124ec20a689..548a12847f99 100644
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
> @@ -236,9 +248,25 @@ get_kmod_addrs(struct btf_elf *btfe, __u64 **paddrs, __u64 *pcount)
>  	return 0;
>  }
>  
> +static bool is_addr_in_func(__u64 addr, struct elf_function *func, bool kmod)
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
> +	__u64 end = kmod ? func->end+ func->sh_addr : func->end;
> +
> +	return start <= addr && addr < end;
> +}
> +
>  static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  {
> -	__u64 *addrs, count, i;
> +	__u64 *addrs, count, i_func, i_addr;
>  	int functions_valid = 0;
>  	bool kmod = false;
>  
> @@ -266,43 +294,62 @@ static int setup_functions(struct btf_elf *btfe, struct funcs_layout *fl)
>  		return 0;
>  	}
>  
> -	qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> -	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp);
> -
>  	/*
> -	 * Let's got through all collected functions and filter
> -	 * out those that are not in ftrace.
> +	 * Sort both functions and addrs so we can iterate
> +	 * both of them simultaneously and found matching
> +	 * func/addr pairs.
>  	 */
> -	for (i = 0; i < functions_cnt; i++) {
> -		struct elf_function *func = &functions[i];
> -		/*
> -		 * For vmlinux image both addrs[x] and functions[x]::addr
> -		 * values are final address and are comparable.
> -		 *
> -		 * For kernel module addrs[x] is final address, but
> -		 * functions[x]::addr is relative address within section
> -		 * and needs to be relocated by adding sh_addr.
> -		 */
> -		__u64 addr = kmod ? func->addr + func->sh_addr : func->addr;
> +	qsort(addrs, count, sizeof(addrs[0]), addrs_cmp);
> +	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_addr);
> +
> +	for (i_func = 0, i_addr = 0; i_func < functions_cnt; i_func++) {
> +		struct elf_function *func = &functions[i_func];
> +
> +		if (i_func + 1 < functions_cnt)
> +			func->end = functions[i_func + 1].addr;
> +
> +		for (; i_addr < count; i_addr++) {
> +			__u64 addr = addrs[i_addr];
> +
> +			/* Functions are  ahead, catch up with addrs. */
> +			if (addr < func->addr)
> +				continue;
> +
> +			/* Addr is within function - mark function as valid. */
> +			if (is_addr_in_func(addr, func, kmod)) {
> +				/*
> +				 * We iterate over sorted array, so we can easily skip
> +				 * not valid item and move following valid field into
> +				 * its place, and still keep the 'new' array sorted.
> +				 */
> +				if (i_func != functions_valid)
> +					functions[functions_valid] = functions[i_func];
> +				functions_valid++;
> +				i_addr++;
> +			}
>  
> -		/* Make sure function is within ftrace addresses. */
> -		if (bsearch(&addr, addrs, count, sizeof(addrs[0]), addrs_cmp)) {
>  			/*
> -			 * We iterate over sorted array, so we can easily skip
> -			 * not valid item and move following valid field into
> -			 * its place, and still keep the 'new' array sorted.
> +			 * Addrs are ahead, catch up with functions, or we just
> +			 * found valid function and want to move to another.
>  			 */
> -			if (i != functions_valid)
> -				functions[functions_valid] = functions[i];
> -			functions_valid++;
> +			break;
>  		}
>  	}
>  
> +	if (btf_elf__verbose) {
> +		printf("Found %d functions out of %d symbols and %llu ftrace addresses.\n",
> +			functions_valid, functions_cnt, count);
> +	}
> +
>  	functions_cnt = functions_valid;
>  	free(addrs);
>  
> -	if (btf_elf__verbose)
> -		printf("Found %d functions!\n", functions_cnt);
> +	/*
> +	 * And finaly sort 'valid' functions by name,
> +	 * so find_function can be used.
> +	 */
> +	qsort(functions, functions_cnt, sizeof(functions[0]), functions_cmp_name);
> +
>  	return 0;
>  }
>  
> @@ -312,7 +359,7 @@ static struct elf_function *find_function(const struct btf_elf *btfe,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210210180246.GA1945861%40ubuntu-m3-large-x86.
