Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPOBWTYQKGQEYL6UJUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id A17271498DC
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Jan 2020 06:16:47 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id h6sf2674397pju.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jan 2020 21:16:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580015806; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZhbEyM7f6f7xhiBh3kAiVYCcaJnT8Z1LEXh+WJ7UjKcLSeci/VMPyk2yCWZfAkqpqK
         j742g87Zs3Ei0K5+jgsdq0AJHY+AGlZ+JaUh/CJxB6sToiDNyK8zhr5vWclA8YdkgTsy
         iBeAgVzw0t+e3/P/EnQ35DbxbQ//cbjLNBae30BoI1/BK1ozcuhzrhdM7xNvFI4rDjbb
         rnRofAtlaB4VVVKMRlzYCHWS2Rr2NWkzO3A2/D/DuOULMZa7RW4feeSCXFBfvyzhZ0ov
         D2rEAnEyrXQ/aFtHIVa9kK2fULS0gDa/je1orrReyudYRMXwF2ROkGllZmSTL1XynHGK
         o3KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=3RscCWIPWI0Pyd6R9kHInz8y/SyaPSMgkV+tnux09rk=;
        b=VaRVnCB0Yy1atQxCOsiyhHnDlBuCqA+13KZak4A1CMblGT/RauyQvbsNbvOclHVM2y
         rINw1tMgHvaO8rsaBWpW70vcmfevCqM3j9di5g0iwnHjFuW0UUNrcEnykX4/QiHzLrBg
         w0Pi0U0osHDVqI4zin+JeuvO2SEprtVcStdszR9Rj28l9os5uTMkPB7Fd5tgbslSgTHZ
         oiWiTFpqxtfLUat94UX7cEx0A3WBM3cqNd3dA+EqtSeegF30Dl4vlGZbewMR7vu05dte
         1Brk23utWEulaktD9b3kQuxyyyMrPqthgMAzpBEUbI2pmxk+V2k3pog6Kr8dsb5GtErK
         NJ1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QFBpyFiy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3RscCWIPWI0Pyd6R9kHInz8y/SyaPSMgkV+tnux09rk=;
        b=JDsfuKslPaLoAzqrWvfQGXXdaT9BCGqQIOoc1hdNYqJn0C4vwPvDk9VcRKkc6bgzd7
         pP2pZ5dl0ossUiG+J0Zhk4kffSVb+tiqrVXFF2CBmmtekAVgjS8ONtpK8ukrmOuH++vT
         n5iMPBXUl+xnuW3CDjE4KimiXEFiSrz4pcgOw7VkzF2niqvP0MlSyzHMCzEZIj6n2ybn
         vak9UQzr1PoGZHn/EVLMWQGSPc1cm9jJnHJm/HpEWR2ryEv21FXw14NIsQsDe+FO3j5w
         6eFcDpMb5p0ZToVWAJEY6fwOXW70RwYStb0eDk5wvcO1kZXs+8xg+b2P/HMurYEXQa0A
         mYVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3RscCWIPWI0Pyd6R9kHInz8y/SyaPSMgkV+tnux09rk=;
        b=pH/STBR2KfRiJumfpriinBtFYLKunmv6UiRs22i+cqp48pmrxO3CWh7yccgDxAUW1v
         BkFRbwQOqPYcuM4MDOuI9y36JErCfjYqQ+qCtqpFACUfZDHdz3LGhMBTy6+mstXhG8jo
         /DApvDxxYBom7bOMpjpqxK5U74JRY3VQYJvxWNARBntrfAXHKcyvNJfMcBoyLTL72LA+
         F6Y7+YYI808isU4N8bcyeXgvpSOnbnOfSvLDIx0Xz8uciojsk173T8u+W0JBWhDQwO/l
         neE2RGqKA5tMftQMxNz0JIbdDO4DkXLqUPAEEDAZrUUYmWzJ+v+F200Jvl8gif9GMrw4
         /fsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3RscCWIPWI0Pyd6R9kHInz8y/SyaPSMgkV+tnux09rk=;
        b=mAmLFn5hTeq2Qu/gnzfJZhatZ8dY0hHg0sQ0qkGSnhPme3UNguXvZR7OBTdZHaM9CW
         oSRVVkn31LnUT+nJ04mIq3eQyd8224Zc7w9O0UOXSrt+YdJu/6FtaZ6soBrH/ubP/wts
         y0obRpSzvsRtoAnzFrvCAWVLpPpi6jARhAGIXGOuNCIxsdjZBDNKt/ClRrf3AKfPRx6i
         qf8P6kFFeNcJVFWaA2se+xGJ4sQJQDjxHk8o7mMKK5nymDKwYqeO4yBCu2qbgjgFBSZD
         btMTC20OsiEsf71Zmlaj2M7+kOiTWToBczJJYzo9Q1/GMAqFSHwuSqI8PPOTr+ekmH7Z
         JSeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/z05KZd+VMl8MV3+NN0VSG94Wbcc0HSSp7C/US8TehMbdr9zu
	aHKMlePE4wFbKs6XHT+0jV8=
X-Google-Smtp-Source: APXvYqzo67SOSDC+U8epEzsAzfgttsn3dHhoWVoG3jKe0Ek7LAtfZ9cEumA6ka2i07TsoudpAQnjGA==
X-Received: by 2002:aa7:8f3d:: with SMTP id y29mr11021002pfr.183.1580015805894;
        Sat, 25 Jan 2020 21:16:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6483:: with SMTP id y125ls2986109pfb.9.gmail; Sat, 25
 Jan 2020 21:16:45 -0800 (PST)
X-Received: by 2002:aa7:95a9:: with SMTP id a9mr10434769pfk.15.1580015805263;
        Sat, 25 Jan 2020 21:16:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580015805; cv=none;
        d=google.com; s=arc-20160816;
        b=UKeH5DurKAe2lNVcqFSRuf+isQrxKMOcd4l/fLUhw81pVYNhdXl8ba/OyU8j4SaEes
         fVt0AXo2+YDzujpa4OpzXn4QXYHuUJslE2Lu/wj75MAuBDTZRKuADDtPJAefNiyuJ3C7
         rbk3myVLj3yIkLx76wvq9adWB3GHrODW42AUOHy2BaL1D1VWWgZDTMZwIwnA04f3cJHI
         pUx7Rexc2isRcexTX5a8UuSdqt0mdASOBBsT6pg2YgYYC/lXdsUr+ErvfsMMt/fufj6g
         0miy64qIUNioapxiW0PMes8zZzwB0UcBnHlBvs0r/q19qmLK727YSCu0pQUpi0VqSJQH
         RytQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tdQTRj4tn9tyIE0eFvqPGjSncUurrjE+KZhOiMRqlSw=;
        b=ZUM4JadHzENJ4JXZq6QKzZKiTRgN+2XklzLsaJkWdTtFqclvhl+8uk8p6GuxVkiDXk
         BVLLRwoZHzDNUQ8Zu9/ff8JnxWE9EmoWCPjNnvO8TTLVhw75AS6bc2PsTljyj/1H41UP
         +foNj1w9r8FRIXdM9Bd4DcJylvX3rkaA4XhWuRaFAKPzxhSSuacG2yGoccmMtt88rIUV
         DKfmYu2cXQbX8DUNkntFUh2v5xWogma2yI/LJ0980CU6k3+GfFAlHn/BiOcBb2luhorE
         /0qCjimkdlFMJHlMzale2EBI2KpTPhH0PkMPsmrzGBcb4jFRezLMpLJTY5WPVHO8WlrG
         1OIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QFBpyFiy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r18si541226pfc.2.2020.01.25.21.16.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2020 21:16:45 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id i6so1586970otr.7
        for <clang-built-linux@googlegroups.com>; Sat, 25 Jan 2020 21:16:45 -0800 (PST)
X-Received: by 2002:a9d:4f15:: with SMTP id d21mr3172415otl.253.1580015804395;
        Sat, 25 Jan 2020 21:16:44 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b49sm1756561otc.6.2020.01.25.21.16.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 25 Jan 2020 21:16:43 -0800 (PST)
Date: Sat, 25 Jan 2020 22:16:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Brian Geffon <bgeffon@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	"Michael S . Tsirkin" <mst@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-api@vger.kernel.org,
	Andy Lutomirski <luto@amacapital.net>,
	Andrea Arcangeli <aarcange@redhat.com>,
	Sonny Rao <sonnyrao@google.com>, Minchan Kim <minchan@kernel.org>,
	Joel Fernandes <joel@joelfernandes.org>,
	Yu Zhao <yuzhao@google.com>, Jesse Barnes <jsbarnes@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] mm: Add MREMAP_DONTUNMAP to mremap().
Message-ID: <20200126051642.GA39508@ubuntu-x2-xlarge-x86>
References: <20200123014627.71720-1-bgeffon@google.com>
 <20200124190625.257659-1-bgeffon@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200124190625.257659-1-bgeffon@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QFBpyFiy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Brian,

On Fri, Jan 24, 2020 at 11:06:25AM -0800, Brian Geffon wrote:
> When remapping an anonymous, private mapping, if MREMAP_DONTUNMAP is
> set, the source mapping will not be removed. Instead it will be
> cleared as if a brand new anonymous, private mapping had been created
> atomically as part of the mremap() call.  If a userfaultfd was watching
> the source, it will continue to watch the new mapping.  For a mapping
> that is shared or not anonymous, MREMAP_DONTUNMAP will cause the
> mremap() call to fail. MREMAP_DONTUNMAP implies that MREMAP_FIXED is
> also used. The final result is two equally sized VMAs where the
> destination contains the PTEs of the source.
> 
> We hope to use this in Chrome OS where with userfaultfd we could write
> an anonymous mapping to disk without having to STOP the process or worry
> about VMA permission changes.
> 
> This feature also has a use case in Android, Lokesh Gidra has said
> that "As part of using userfaultfd for GC, We'll have to move the physical
> pages of the java heap to a separate location. For this purpose mremap
> will be used. Without the MREMAP_DONTUNMAP flag, when I mremap the java
> heap, its virtual mapping will be removed as well. Therefore, we'll
> require performing mmap immediately after. This is not only time consuming
> but also opens a time window where a native thread may call mmap and
> reserve the java heap's address range for its own usage. This flag
> solves the problem."
> 
> Signed-off-by: Brian Geffon <bgeffon@google.com>
> ---
>  include/uapi/linux/mman.h |  5 +++--
>  mm/mremap.c               | 37 ++++++++++++++++++++++++++++++-------
>  2 files changed, 33 insertions(+), 9 deletions(-)
> 
> diff --git a/include/uapi/linux/mman.h b/include/uapi/linux/mman.h
> index fc1a64c3447b..923cc162609c 100644
> --- a/include/uapi/linux/mman.h
> +++ b/include/uapi/linux/mman.h
> @@ -5,8 +5,9 @@
>  #include <asm/mman.h>
>  #include <asm-generic/hugetlb_encode.h>
>  
> -#define MREMAP_MAYMOVE	1
> -#define MREMAP_FIXED	2
> +#define MREMAP_MAYMOVE		1
> +#define MREMAP_FIXED		2
> +#define MREMAP_DONTUNMAP	4
>  
>  #define OVERCOMMIT_GUESS		0
>  #define OVERCOMMIT_ALWAYS		1
> diff --git a/mm/mremap.c b/mm/mremap.c
> index 122938dcec15..bf97c3eb538b 100644
> --- a/mm/mremap.c
> +++ b/mm/mremap.c
> @@ -318,8 +318,8 @@ unsigned long move_page_tables(struct vm_area_struct *vma,
>  static unsigned long move_vma(struct vm_area_struct *vma,
>  		unsigned long old_addr, unsigned long old_len,
>  		unsigned long new_len, unsigned long new_addr,
> -		bool *locked, struct vm_userfaultfd_ctx *uf,
> -		struct list_head *uf_unmap)
> +		bool *locked, unsigned long flags,
> +		struct vm_userfaultfd_ctx *uf, struct list_head *uf_unmap)
>  {
>  	struct mm_struct *mm = vma->vm_mm;
>  	struct vm_area_struct *new_vma;
> @@ -408,6 +408,13 @@ static unsigned long move_vma(struct vm_area_struct *vma,
>  	if (unlikely(vma->vm_flags & VM_PFNMAP))
>  		untrack_pfn_moved(vma);
>  
> +	if (unlikely(!err && (flags & MREMAP_DONTUNMAP))) {
> +		if (vm_flags & VM_ACCOUNT)
> +			vma->vm_flags |= VM_ACCOUNT;
> +
> +		goto out;
> +	}
> +
>  	if (do_munmap(mm, old_addr, old_len, uf_unmap) < 0) {
>  		/* OOM: unable to split vma, just get accounts right */
>  		vm_unacct_memory(excess >> PAGE_SHIFT);
> @@ -422,6 +429,7 @@ static unsigned long move_vma(struct vm_area_struct *vma,
>  			vma->vm_next->vm_flags |= VM_ACCOUNT;
>  	}
>  
> +out:
>  	if (vm_flags & VM_LOCKED) {
>  		mm->locked_vm += new_len >> PAGE_SHIFT;
>  		*locked = true;
> @@ -497,7 +505,7 @@ static struct vm_area_struct *vma_to_resize(unsigned long addr,
>  
>  static unsigned long mremap_to(unsigned long addr, unsigned long old_len,
>  		unsigned long new_addr, unsigned long new_len, bool *locked,
> -		struct vm_userfaultfd_ctx *uf,
> +		unsigned long flags, struct vm_userfaultfd_ctx *uf,
>  		struct list_head *uf_unmap_early,
>  		struct list_head *uf_unmap)
>  {
> @@ -545,6 +553,17 @@ static unsigned long mremap_to(unsigned long addr, unsigned long old_len,
>  		old_len = new_len;
>  	}
>  
> +	/*
> +	 * MREMAP_DONTUNMAP expands by old_len + (new_len - old_len), we will
> +	 * check that we can expand by old_len and vma_to_resize will handle
> +	 * the vma growing.
> +	 */
> +	if (unlikely(flags & MREMAP_DONTUNMAP && !may_expand_vm(mm,
> +				vma->vm_flags, old_len >> PAGE_SHIFT))) {

We received a Clang build report that vma is used uninitialized here
(they aren't being publicly sent to LKML due to GCC vs Clang
warning/error overlap):

https://groups.google.com/d/msg/clang-built-linux/gE5wRaeHdSI/xVA0MBQVEgAJ

Sure enough, vma is initialized first in the next block. Not sure if
this section should be moved below that initialization or if something
else should be done to resolve it but that dereference will obviously be
fatal.

Cheers,
Nathan

> +		ret = -ENOMEM;
> +		goto out;
> +	}
> +
>  	vma = vma_to_resize(addr, old_len, new_len, &charged);
>  	if (IS_ERR(vma)) {
>  		ret = PTR_ERR(vma);
> @@ -561,7 +580,7 @@ static unsigned long mremap_to(unsigned long addr, unsigned long old_len,
>  	if (IS_ERR_VALUE(ret))
>  		goto out1;
>  
> -	ret = move_vma(vma, addr, old_len, new_len, new_addr, locked, uf,
> +	ret = move_vma(vma, addr, old_len, new_len, new_addr, locked, flags, uf,
>  		       uf_unmap);
>  	if (!(offset_in_page(ret)))
>  		goto out;
> @@ -609,12 +628,15 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
>  	addr = untagged_addr(addr);
>  	new_addr = untagged_addr(new_addr);
>  
> -	if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
> +	if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE | MREMAP_DONTUNMAP))
>  		return ret;
>  
>  	if (flags & MREMAP_FIXED && !(flags & MREMAP_MAYMOVE))
>  		return ret;
>  
> +	if (flags & MREMAP_DONTUNMAP && !(flags & MREMAP_FIXED))
> +		return ret;
> +
>  	if (offset_in_page(addr))
>  		return ret;
>  
> @@ -634,7 +656,8 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
>  
>  	if (flags & MREMAP_FIXED) {
>  		ret = mremap_to(addr, old_len, new_addr, new_len,
> -				&locked, &uf, &uf_unmap_early, &uf_unmap);
> +				&locked, flags, &uf, &uf_unmap_early,
> +				&uf_unmap);
>  		goto out;
>  	}
>  
> @@ -712,7 +735,7 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
>  		}
>  
>  		ret = move_vma(vma, addr, old_len, new_len, new_addr,
> -			       &locked, &uf, &uf_unmap);
> +			       &locked, flags, &uf, &uf_unmap);
>  	}
>  out:
>  	if (offset_in_page(ret)) {
> -- 
> 2.25.0.341.g760bfbb309-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200126051642.GA39508%40ubuntu-x2-xlarge-x86.
