Return-Path: <clang-built-linux+bncBAABBCMRRGAAMGQEJ2623ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB0D2F8A9F
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 02:59:38 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id l18sf18220490iok.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 17:59:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610762377; cv=pass;
        d=google.com; s=arc-20160816;
        b=ctoBFjbNoLX5VANeHaGqdcwL+2d0bOdeyuS6eYHrXcG5LqsGwKtWk52KqWK19BC7ZE
         e3iimtH5bgpaL5m5m/cp85w1vFMmb6Fdr+6xQrPNuucH8swXWwvKL8UT9O7dv/JoAiGl
         Kil6n43c0WXXeVfM+gcPjHNMgIPgYeOtiNkNgwnKFkNKno6NKi61GlEXBeGSzfNml47m
         emoa35Upuj65rB1OQA4vAtSf/M5ibgGk/wQiPM6vYL13GLRh8FKGbAGajWeCS/EHH39j
         YDvoVO9q9+DYaruckWxNs1xru8Tmyw6FK0huV5HmuzABVde2fEUnwEkinkSu2GFIHn/D
         BvRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KojWT7MiqVGM25jK45Z/XO2ip6YdH1BrgUI35ARQq0g=;
        b=k52vSXN1cpG3nNzzfEbHT2dyxc3o1o+ikRCNM4P4btdlF/9tDpU2Gocny+rRuSHuMR
         KNe0nJoV5Gzl8c3+Vb7PfAHjM6d9pMyhlFLP95Q4nuEAV+xviooKLOAr62GiYBvw1v5B
         a+TxRoGBmcrjPeT4MzZPankEktYtLmBPn9cSCHKGeHxXGVA3jAlyycV7RaMQ+00ZDlg8
         FzQEmjzDJ1Wsee9ayO2ZR/m9gidPbBKw3fWGx/EMiPPB9wMj6qXv//2pub9sduSE/Wlq
         nAtNQnNztbovPkRNe9Y6q7EgNRm6eH2qevy4ksh7UBq9blJ+c0+I6JuGpPMlILsRnarM
         u41Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hfM1D+Wo;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KojWT7MiqVGM25jK45Z/XO2ip6YdH1BrgUI35ARQq0g=;
        b=p9zhbxXPHw/2jQvOW/CLzIOd80i6mpRWusbnfCHaZTeSGFq02P02KSnnAvqLXHJJWI
         /tk/S660vyfwwhHvgExQk0o9VIU4FgJ/PqkX+erzf55ZwLQFQ4d7dc4/oUVct00BbMgN
         MH9/WJb+I7QAPINZU9aprhjWvYzEM3kGdjoZbxT4zPk0NDNJiNexJs1hzutXHrmrRJvB
         159s2r0BRc/BukKHiXLyAUaE1X/HDl9BZe/d8pxVGZJSZJNEymxU12S0eobC9FLL7Wff
         fUhuYNRXiyoYLzpfNYUk8Yh7w7WzE09LJvB6ru8xGMi84nyZFF1+5Ms1GaddOYmPk9kY
         JTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KojWT7MiqVGM25jK45Z/XO2ip6YdH1BrgUI35ARQq0g=;
        b=jqTHEYiAxvJAMwbaptqmzfPFe+HjiKnhzq8/FWnhAVzXRoVSQ4ImSgrD5nNgk8tAQG
         YqOKfSkDrKMJDADLjTfsnh0vxQlYfX/Kl1WgGL7jn/XjkszVbPGPc0eU4wor1YOTwAtQ
         n+gt4lkG9Ak/S3jqseHAr1AwpHTsniwSXxW1tfs0B4Q/Rd6CGLa/A8vKD3O+GkunuEcL
         4jPrCuw+JUbCg0FKzgUQZFGmgbqDJDLkP1V9SzShW555UlGOqi7uhHrzlPTHjE7/R8rZ
         ZvJrhzLzN6+pGhoZWQVM7iB4xDzq+LqtYrBs07hWiXUUHAtGunVpcid2AryaJRs/K0ZP
         YlZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sSEKNU5DX98aIxIbm2+jUFN1UNRGsXw5YwvVHa+WzAfzeLi3p
	qSVbnjTAtGQ5yp7gEbc+1cM=
X-Google-Smtp-Source: ABdhPJyUn2cxXnEqGrKU3e+Q1Nf4oo56TBndepFmdB0vqiBIVrQFNlvbWONQwVZp3n3+UDuzDm364Q==
X-Received: by 2002:a05:6638:13c6:: with SMTP id i6mr10917257jaj.141.1610762377312;
        Fri, 15 Jan 2021 17:59:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls1670449iol.7.gmail; Fri, 15 Jan
 2021 17:59:36 -0800 (PST)
X-Received: by 2002:a5e:c00e:: with SMTP id u14mr10486912iol.194.1610762376855;
        Fri, 15 Jan 2021 17:59:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610762376; cv=none;
        d=google.com; s=arc-20160816;
        b=juep7i+TODo5fSLkmnzfZnxG/qhcMUzPs1H/wBp1Bz0Bev9Wc26pgY15FUvMFdIOJk
         31eZ4dQVExg/218DrxmJEIBL2rO0uTR/j3ZieUmi5YOP3VVXQR0fgWmUbmaX3UG2ZTvs
         oK2kRx0KTCQiBliiyalE0uKJCucWxeDP5lY7u4lELX7XvggFrpQFTZyVwHQnVzsnsKxb
         e0yK1oI7pNT9PeL0fvsACx4xVtWMgMgzJh6mwpqCO/n/LMW69SnGYe4RKya7OkUDfcsc
         ZkmiywlsLtdTBh2EtyuZILahkAQmls1mjxmcK26PnJSwhqDee343U9Pk799l7GToPzQz
         ATGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hHJJGP6sTJpt+sXHUm/5v1QTho7B9kdy6w/PTl5pNI4=;
        b=eMhZxShemYxYPN0dXmLF6Y7eUm71/JUIEAPejdxpOn1TZlrGB8b3yOY4iJPm5mBsrT
         xdqID2fqWY8C4j+GxRv0IIx6dpIn2CB81VFHP/uTFNYFFKXbYGworwui3lheFx1yufRe
         uPaJUkvY1tkargTedJwgTk2tiEWjXO9dd/CjpAUE0EKGUrN2atsMMNno1YIQE9MVrxj1
         EmjNSjjl4ESKO+FWt/SxJC5xi4mSRCLQpXYG7YblbzYljKtG3cby1sl8kElp7humwQAa
         Xpe4Oy2oO5thY+pZYokmqky1MucHHqmKKpjXLC7QEC+jl68hPQHYCZlVUyjPE4SI6cnQ
         bftg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hfM1D+Wo;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b8si1268562ile.1.2021.01.15.17.59.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 17:59:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E23522075A;
	Sat, 16 Jan 2021 01:59:35 +0000 (UTC)
Date: Fri, 15 Jan 2021 17:59:34 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	linux-crypto@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [linux-next:master 952/3956] crypto/blake2b_generic.c:73:13:
 warning: stack frame size of 9776 bytes in function
 'blake2b_compress_one_generic'
Message-ID: <YAJIhjzmvszXAXUb@gmail.com>
References: <202101160841.jUXjdS7j-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101160841.jUXjdS7j-lkp@intel.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hfM1D+Wo;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
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

On Sat, Jan 16, 2021 at 08:59:50AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   b3a3cbdec55b090d22a09f75efb7c7d34cb97f25
> commit: 28dcca4cc0c01e2467549a36b1b0eacfdb01236c [952/3956] crypto: blake2b - sync with blake2s implementation
> config: powerpc64-randconfig-r021-20210115 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5b42fd8dd4e7e29125a09a41a33af7c9cb57d144)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=28dcca4cc0c01e2467549a36b1b0eacfdb01236c
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 28dcca4cc0c01e2467549a36b1b0eacfdb01236c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> crypto/blake2b_generic.c:73:13: warning: stack frame size of 9776 bytes in function 'blake2b_compress_one_generic' [-Wframe-larger-than=]
>    static void blake2b_compress_one_generic(struct blake2b_state *S,
>                ^
>    1 warning generated.
> 
> 
> vim +/blake2b_compress_one_generic +73 crypto/blake2b_generic.c
> 
>     48	
>     49	#define G(r,i,a,b,c,d)                                  \
>     50		do {                                            \
>     51			a = a + b + m[blake2b_sigma[r][2*i+0]]; \
>     52			d = ror64(d ^ a, 32);                   \
>     53			c = c + d;                              \
>     54			b = ror64(b ^ c, 24);                   \
>     55			a = a + b + m[blake2b_sigma[r][2*i+1]]; \
>     56			d = ror64(d ^ a, 16);                   \
>     57			c = c + d;                              \
>     58			b = ror64(b ^ c, 63);                   \
>     59		} while (0)
>     60	
>     61	#define ROUND(r)                                \
>     62		do {                                    \
>     63			G(r,0,v[ 0],v[ 4],v[ 8],v[12]); \
>     64			G(r,1,v[ 1],v[ 5],v[ 9],v[13]); \
>     65			G(r,2,v[ 2],v[ 6],v[10],v[14]); \
>     66			G(r,3,v[ 3],v[ 7],v[11],v[15]); \
>     67			G(r,4,v[ 0],v[ 5],v[10],v[15]); \
>     68			G(r,5,v[ 1],v[ 6],v[11],v[12]); \
>     69			G(r,6,v[ 2],v[ 7],v[ 8],v[13]); \
>     70			G(r,7,v[ 3],v[ 4],v[ 9],v[14]); \
>     71		} while (0)
>     72	
>   > 73	static void blake2b_compress_one_generic(struct blake2b_state *S,
>     74						 const u8 block[BLAKE2B_BLOCK_SIZE])
>     75	{
>     76		u64 m[16];
>     77		u64 v[16];
>     78		size_t i;
>     79	
>     80		for (i = 0; i < 16; ++i)
>     81			m[i] = get_unaligned_le64(block + i * sizeof(m[i]));
>     82	
>     83		for (i = 0; i < 8; ++i)
>     84			v[i] = S->h[i];
>     85	
>     86		v[ 8] = BLAKE2B_IV0;
>     87		v[ 9] = BLAKE2B_IV1;
>     88		v[10] = BLAKE2B_IV2;
>     89		v[11] = BLAKE2B_IV3;
>     90		v[12] = BLAKE2B_IV4 ^ S->t[0];
>     91		v[13] = BLAKE2B_IV5 ^ S->t[1];
>     92		v[14] = BLAKE2B_IV6 ^ S->f[0];
>     93		v[15] = BLAKE2B_IV7 ^ S->f[1];
>     94	
>     95		ROUND(0);
>     96		ROUND(1);
>     97		ROUND(2);
>     98		ROUND(3);
>     99		ROUND(4);
>    100		ROUND(5);
>    101		ROUND(6);
>    102		ROUND(7);
>    103		ROUND(8);
>    104		ROUND(9);
>    105		ROUND(10);
>    106		ROUND(11);
>    107	#ifdef CONFIG_CC_IS_CLANG
>    108	#pragma nounroll /* https://bugs.llvm.org/show_bug.cgi?id=45803 */
>    109	#endif
>    110		for (i = 0; i < 8; ++i)
>    111			S->h[i] = S->h[i] ^ v[i] ^ v[i + 8];
>    112	}
>    113	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Looks like the clang bug that causes large stack usage in this function
(https://bugs.llvm.org/show_bug.cgi?id=45803 which is still unfixed) got
triggered again.  Note that the function only has 264 bytes of local variables,
so there's no reason why it should use anywhere near 9776 bytes of stack space.

I'm not sure what we can do about this.  Last time the solution was commit
0c0408e86dbe which randomly added a 'pragma nounroll' to the loop at the end.

Anyone have any better idea than randomly trying adding optimization pragmas and
seeing what makes the report go away?

Also this was reported with clang 12.0.0 which is a prerelease version, so I'm
not sure how much I'm supposed to care about this report.

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAJIhjzmvszXAXUb%40gmail.com.
