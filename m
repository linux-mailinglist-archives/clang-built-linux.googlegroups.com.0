Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3OA577QKGQE2CHVHZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE1A2F0C38
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 06:21:51 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id w135sf10455073pff.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 21:21:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610342510; cv=pass;
        d=google.com; s=arc-20160816;
        b=E5x+Hry6AaEfserAArOT1T7gojYUUIiNz2msLP52KcfNWvR4aDR7Rh8lSO+pn22EC5
         rudUuWcezA067M1r9I+SkGeTsquwts9j51Qs/UNhZJUXltJmz3fWA8Bzmv6lPxAr2inW
         2/vFMOA/o654H92/cQU8wLgWU/Tq00zFwXMDtpjVq+ktKfi/qbkyOvh5VFQPQILIY57C
         eIuxFzS8USAOJpF/quGcn2AGExdePE7bJ+M/l7+ot08HPYJM8G0ieipxKuAHuvMEUz3Y
         142eYDM9TfzqvUNTydZY+usQ99nEFrLdhs81QUWnhCiSEynW/8j3xkjYQQLpU/L7jCgI
         7mAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=sd5HvhFpHl+YFIrbjp/XhZP8RY+9aCsVhx1aQBiiOAM=;
        b=kL1M8PM/UDFiCF9w1qHiVXLAtoGk2y4pr0keguWsyiQMACGR4QpFley9D9Azrr0Rql
         QVfPpCM1vGd6/38eFGsHVTJBzdoQcLcOBWwUvgsBqJTuDYI7aom1iPjPNbJr3wiaXDH6
         c4DxfidUtfZ3I4uy8X0gq0JOcyJPYYsiLkHnmCNeqjqbqNmbqx0cMVr3GuO9Y+BeHGU7
         j4gTHI5fHA0HlMxU50+WT4rqula4TLlTZJDTAwc7Hw9LAFB0CUEEBBMIA8g+v4w3Hr32
         owi4ZKd0OApdi5jV+DSdjGQg6a6lRBQ6a0XcnjR0ceDmSKwnvL0tzhlizCuLSIviJGma
         1B+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xr76vSnV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sd5HvhFpHl+YFIrbjp/XhZP8RY+9aCsVhx1aQBiiOAM=;
        b=so+KAURwle7r4b2IZLkvm/E3wSTGqDAkFx2SrEjjD4t+lYSSD1G7VN/q6EkftbbUcI
         ZQVKeacT2fRSMPODXXa1nyiSSo206ZQvcxwPbruLlFSPvFIzaW0cWng/sT6OxduTHW6+
         9sknsbsys+sFo8Eg++S7XYUqhsSjN5SCRJkHjsB/sZIIyly/nnOM6WppfNOKc+ORN5H8
         ETmPWzjlHlZCT2qrccfhOT/2TAUKIXaJzAoi82zqBqu3VTZUIdd7TIxz7xuxge7ppP7E
         YuSPtYJF6Dh0w7KFVc7IeRZ28pC5vPj/xXPE8CFWz4S+Z945bL5nSTX/QfZMeHLHvmyG
         Csjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sd5HvhFpHl+YFIrbjp/XhZP8RY+9aCsVhx1aQBiiOAM=;
        b=YVMmWuzeCAU8xiDF6g8WZkX9su5Pa7hwhD6646fhPdGV8nfcW9BCF88u/PcDXTEj3N
         10U/pFW/lIMfgUmNurtGwNnZb1r60uzDs7Yl8narSKgp/4dMM1oobOUJ7qC7zE2rne94
         cBLUrV1/QLUm9qceltUFbuO+eHNld8Qt1wkU/y5Elz4gLxxs0XqkUapaJUN1G2tPlnff
         lC37B4kkO5nQCeV5Gyh8F1eXWZFq/sPrSoIhOBvWMRT7UKC/Ou5s3WMV4R5NxVeXLmFg
         ++o9dZokamIQLLmC/04HLzL6+vHdsoCd17JJFa0N6kx6QSKPbqQaLOS7jUGpzN+9H/Si
         icaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sd5HvhFpHl+YFIrbjp/XhZP8RY+9aCsVhx1aQBiiOAM=;
        b=i/RwbqU4gDgfbUVbiX2XH8un3ImApl1G+Ic7YI0nqV9N3I+TaEBje3dD//yKWX/KiK
         eZiCaVzNmrcD/3g+yzwqPB0c1ncV4tDktl/EhsJt+OZHcetNatXoFP+qYgRrxzQrTjB5
         /3U8lW7SmdvvfJPnAyn72KXbAeRRbB1SWV537bKmIKAgBjvf41h2Aj2lX825jDfe+ykH
         jtwoUPtQf+sxckebyr9hVHPiA7cxHre8ifEdZiAMyzfJwxHxMOl4ykuqDhdsqMWLIdy9
         I0u/QOR7RAWkaUcvjqFP039SUX2guTaXM6aDW5+DeUilAV5rVTpN67N1Yk+qYV3rnn/B
         RyDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w7zgRHyqtH98Ad9t2ks1zNIVcTXFwV2vmAS8t9194i6L/Rhia
	c5o7+h+MQvJFd7II5DMZ0bQ=
X-Google-Smtp-Source: ABdhPJwBogI9C3yBmuyvdSBBLGbXdTQUHPHosRfdcR3V2yZT7E/nPKIV4KJNMAHv0T/Q6K/DNvXGRQ==
X-Received: by 2002:aa7:9784:0:b029:1a6:5fb2:ecee with SMTP id o4-20020aa797840000b02901a65fb2eceemr14848919pfp.41.1610342510092;
        Sun, 10 Jan 2021 21:21:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb95:: with SMTP id v21ls8324059pjr.0.canary-gmail;
 Sun, 10 Jan 2021 21:21:49 -0800 (PST)
X-Received: by 2002:a17:90a:8e84:: with SMTP id f4mr16340516pjo.129.1610342509539;
        Sun, 10 Jan 2021 21:21:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610342509; cv=none;
        d=google.com; s=arc-20160816;
        b=s3bVhpFkHkl7zUWkBKNeyKFb2xkif+Z69t/MYxRk3tNI362okXMbI32WjtPql/WF/w
         lTezQvpzI2TBWyv6R8a1/cLvzs/+0NIODjpNu1EceXUset/0k7SakniNSKSQZYlDiiVs
         3S7WOZgcTAWJOggFFY/72fyqhQPER1HumEx6SGj2ovLX1ACtrEI0YYbECp3hbrwijIvk
         Ia2XUAwWc50w7Vj857lUf+AqEJljXnzwuDmsve+hih0t7D6LMiemaUSbTwdlTJKWxs5D
         lchpaUmLyHRKzqxIQn7xvGQg9/nx+LPYWAFk+UJGbNti518JhvR5JHuDW9pU73N4hYa1
         bi4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4l64O1cL8mld7+QbyRcMbphc6gWq2pCIGE+VaAyHP00=;
        b=xL6uLJoexn3nYJudt6YZOoWLY7uAHt8T71yzhyHLS6XYAC3i/UbUk9i9A5+T3ricmj
         Q8HgtKOAUmhewcR0GiBjw2cqvRZ+HZUt1/9MkSQ4OAgjC51OuSCvYx5KbCEkacT29vQr
         O321rM8z454ZMb0hh/exQ6QKjCaRgjHRrFWsuGIp6TAMrM7WJZFVNgvemyjeE8yuZC2+
         HfPuysQBbioQxGmIINje2ywt2pO7x3fs/8L24cNmx35QY27Abx9nlxbyL9FX0eiC2Tp4
         GZ6Oh6d5ZCuDwIebE2Rf/e4VK1QYH6/L9v+yTxcx+EHTrODOFabktfLLDEXmps1ABftv
         gxNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xr76vSnV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id mp23si1523861pjb.1.2021.01.10.21.21.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 21:21:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Received: by mail-il1-x12b.google.com with SMTP id t3so13044306ilh.9
        for <clang-built-linux@googlegroups.com>; Sun, 10 Jan 2021 21:21:49 -0800 (PST)
X-Received: by 2002:a92:41d2:: with SMTP id o201mr13827519ila.117.1610342509012;
        Sun, 10 Jan 2021 21:21:49 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id z18sm14020189ilb.26.2021.01.10.21.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 21:21:48 -0800 (PST)
Date: Sun, 10 Jan 2021 22:21:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Jinyang He <hejinyang@loongson.cn>,
	Ralf Baechle <ralf@linux-mips.org>,
	Matt Redfearn <matt.redfearn@mips.com>, linux-mips@vger.kernel.org,
	stable@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH mips-fixes] MIPS: relocatable: fix possible boot hangup
 with KASLR enabled
Message-ID: <20210111052146.GA1018564@ubuntu-m3-large-x86>
References: <20210110142023.185275-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110142023.185275-1-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xr76vSnV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Jan 10, 2021 at 02:21:05PM +0000, Alexander Lobakin wrote:
> LLVM-built Linux triggered a boot hangup with KASLR enabled.
> 
> arch/mips/kernel/relocate.c:get_random_boot() uses linux_banner,
> which is a string constant, as a random seed, but accesses it
> as an array of unsigned long (in rotate_xor()).
> When the address of linux_banner is not aligned to sizeof(long),
> such access emits unaligned access exception and hangs the kernel.
> 
> Use PTR_ALIGN() to align input address to sizeof(long) and also
> align down the input length to prevent possible access-beyond-end.
> 
> Fixes: 405bc8fd12f5 ("MIPS: Kernel: Implement KASLR using CONFIG_RELOCATABLE")
> Cc: stable@vger.kernel.org # 4.7+
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Apologies for not being familiar enough with the issue to give a review
but I did reproduce the hang that the commit mentions with
malta_kvm_guest_defconfig + CONFIG_RELOCATABLE=y +
CONFIG_RANDOMIZE_BASE=y and this patch does resolve it so:

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/kernel/relocate.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/kernel/relocate.c b/arch/mips/kernel/relocate.c
> index 47aeb3350a76..0e365b7c742d 100644
> --- a/arch/mips/kernel/relocate.c
> +++ b/arch/mips/kernel/relocate.c
> @@ -187,8 +187,14 @@ static int __init relocate_exception_table(long offset)
>  static inline __init unsigned long rotate_xor(unsigned long hash,
>  					      const void *area, size_t size)
>  {
> -	size_t i;
> -	unsigned long *ptr = (unsigned long *)area;
> +	const typeof(hash) *ptr = PTR_ALIGN(area, sizeof(hash));
> +	size_t diff, i;
> +
> +	diff = (void *)ptr - area;
> +	if (unlikely(size < diff + sizeof(hash)))
> +		return hash;
> +
> +	size = ALIGN_DOWN(size - diff, sizeof(hash));
>  
>  	for (i = 0; i < size / sizeof(hash); i++) {
>  		/* Rotate by odd number of bits and XOR. */
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111052146.GA1018564%40ubuntu-m3-large-x86.
