Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB34WUOFAMGQEA3EWUDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 390824120B7
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 19:57:05 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id y16-20020a929510000000b0024fca7e125bsf5723945ilh.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 10:57:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632160624; cv=pass;
        d=google.com; s=arc-20160816;
        b=hkS7U5fqpf4eHBxTPd0NJpVitBrRUQzvXozFBuYcXM9WO8BrfwNVTxTde29Lb4Iork
         23wr8yjKrw+sc47vDFyGL+1YtYyix6We0dJJjmzdDFDWzDaSD+/oofDOCQsUdBEChSzD
         rGnfDaqfnco5tLY/Hn8mEWkyHYIA2jdYQI6gRLqCNDMlfEbgQkVRiEz6MirCW8WLHwbL
         2qyd1vn6UOBs7N/NyeKw43wweNzKzk/zzZDz2P2WrslhpuiPrxkHmK++5FF30G0i7ExP
         K5atDz4ihBI1DqPiboBuCC3k7eEHry1BJHYccKNSLziiEGh8Cab7rxoS4CPjeFCLFOI0
         mJrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1CT4nPmPTTkO2oN3fWkI0haeiwd7drRoF1ft7yK8GZw=;
        b=rvksMcQvqxCv3RMZSuAhtcKtij1hi5TtpYua+y5ZQ+zqeK61UwQBXwtyP5b2L2zz+z
         5zs90cq3U6JGe+waGBUNv1NWF73CavR4wDn/xpmg0+QrbdAji8RERc+v/AEPKksqmzoD
         Tw5oJ2LXpQdOfu4GX9nizyw4b/kUxe9XwOnLQCUO5fnFgSH92smox/9VCetFk2ffkO5p
         LlqkpaZBhydIDmsLB6fVzztpLhJgOHPaNh07Q06oCtoWr9OyBNPHgYSjslJkL9H92ekU
         GqZKda1g6mCYv4+No05F/7Hr3aQGJpxxwfZusHdRExi48+BCwL3jRwvkmGlCL1ctvCUX
         3D7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WiJi7LLN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1CT4nPmPTTkO2oN3fWkI0haeiwd7drRoF1ft7yK8GZw=;
        b=VGHhVgxOYNSM1t2FWnv967HzE2VTJIIA+1O2rHnfnaWeStonktDnnmTriemkCp/H6i
         hVlzxMxt4FaoKC2QDWKaRVc753a8OjsZTEfaHH28rRNhtJQO/C1MrzqtZZOI9o9Ryrd+
         Q2AXQi7K9gIPkL45u90gVz3gkiBnwtu9xd0sjlFTp7bwxX4zekcwb53L7K8tVk9B+G6H
         vdebGwB4OP1i/6PmaqiuZihPoOZIskslIm6whddOcU3pXX5y6qaMqO5GIQhYHvRrzXbN
         LSrid25hc0iltQYeAtFMWwhF1b4UhTLYwEQt4rthOLAmuxKATmrYQn5l8wQ1tmhKmB2R
         +RgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1CT4nPmPTTkO2oN3fWkI0haeiwd7drRoF1ft7yK8GZw=;
        b=aLrhRqYXaEjumtKCy3iOKI0gdwMMpnYMEwBWH+AnsDJAQwwXA8rF3RJVij7NvjGUVk
         PxQznKklW6nndA/yU/GE9dsOHGtT+BlQu2MxAbNGaO3GvubT0buUnDU3PwlsGdDkgOaF
         QhjrQjSfN0CkkQXjC+gjtopMGpoQ8GnOAhfhZW4ICY6iiJEnlJsYD/jkhe42NXTbmJ+W
         OYWTTSBtN5gledNj7QQ7DNBTlmoqpTPhYkgBSqKN6G+nNAqNTT0EcnrVq9mYssTsTFHL
         e7sQFZQ5qoLUoXLePQsTiGYBz81+vr3h2zQIIvMKB6fBsM5ZRVphlb5JnMp7y5Y7XDAo
         wv1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532daG23GfnXLpIX2f9bCsR78gyLahX+LYsOTRAcmTpDiE7xQw+Z
	ElZUs7QdkUPB6P9tgEPjhWc=
X-Google-Smtp-Source: ABdhPJzvqPE2vRQ8FdDPeegKiNbYJqKUTeGiNu7kKBVjpD+1v7t4B2kIyA4CrhzzzpLNPe6sEV37sg==
X-Received: by 2002:a05:6e02:2194:: with SMTP id j20mr17173886ila.268.1632160623853;
        Mon, 20 Sep 2021 10:57:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:11c1:: with SMTP id g1ls4330547jas.3.gmail; Mon, 20
 Sep 2021 10:57:03 -0700 (PDT)
X-Received: by 2002:a05:6638:140f:: with SMTP id k15mr20649508jad.113.1632160623332;
        Mon, 20 Sep 2021 10:57:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632160623; cv=none;
        d=google.com; s=arc-20160816;
        b=muNLMSa3B6YkrKxrMCMGU4dK3HaQCLjvuoPiAKgYBGmOna4At6YSuClhvv0LkO+EDw
         YvoaGFfEb0Iz0NpI2ECoOZafnpwDiRIKyfvxQzEXKCsSG62zdDOcZRu2VK69+/hwRuBk
         nAVihrLLNvqkXQMZx5vYI/LaNtqMGHm8XG+kuz+0W8wXESVhehaWWicdSXhUWuPTG3Sw
         /BLZYa6+aOBNq/Vx1V669IB4y9tgyvQHTltNXBjnWBf6EfRgmJLjgoaWjlUPrQlZH46p
         snsDbDsVrn6UsxzIrn2sEQvzrI80uqoY13rYOx6KUQHW511YhvguwSdeuWFJtFEel4m+
         v8Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cuAibYLZasUCXt7JfvCFln2RdO+nXugCTkJrYqMtj0c=;
        b=aIpeQgHSm009Xh6izTaHEd9V15Nx8WjZfRpe6G8BhlMxATVFY5GssKfx3Ji7bfQsZ7
         BcL1WnPJ/xOzk3mq9JInBCSLOav1mlvABIRstfKB7Gl8RMNjFy4mvLC7LwxO6QMvJdiW
         Q3r3uT82fgQq0Ias1T3EATcpH+wByqNQ6//4JV8XtLgzdQ4Dmv2FzHU4KHC9ndYlpQQ7
         212SOJqKQptRIV/JDFD2eIQctasPHk05i/kYhsAPYmk61CA1Zoyn3TY7twgOUXfZFHBU
         s18wrPoLBCFBMk7tA8xe7D2AxxtQHUZmukoT5i4P2/t/aypG8jQ7RK9l/ZWhjRveOC21
         C70A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WiJi7LLN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r4si17708ilb.4.2021.09.20.10.57.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Sep 2021 10:57:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-dPKBFZpTPAuKKVtsBDZNOg-1; Mon, 20 Sep 2021 13:57:00 -0400
X-MC-Unique: dPKBFZpTPAuKKVtsBDZNOg-1
Received: by mail-oi1-f199.google.com with SMTP id y65-20020aca4b44000000b002719194f1e0so22343449oia.7
        for <clang-built-linux@googlegroups.com>; Mon, 20 Sep 2021 10:56:59 -0700 (PDT)
X-Received: by 2002:a4a:a289:: with SMTP id h9mr5114978ool.86.1632160619215;
        Mon, 20 Sep 2021 10:56:59 -0700 (PDT)
X-Received: by 2002:a4a:a289:: with SMTP id h9mr5114961ool.86.1632160618947;
        Mon, 20 Sep 2021 10:56:58 -0700 (PDT)
Received: from treble ([68.74.140.199])
        by smtp.gmail.com with ESMTPSA id j17sm3643290ots.10.2021.09.20.10.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 10:56:58 -0700 (PDT)
Date: Mon, 20 Sep 2021 10:56:56 -0700
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [linux-next:master 3857/7963]
 arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool:
 sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with
 modified stack frame
Message-ID: <20210920175656.cjvrr4wn7a3k6tnx@treble>
References: <202108160330.T1EbbpCi-lkp@intel.com>
 <CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WiJi7LLN;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Sep 20, 2021 at 01:02:07PM +0200, Arnd Bergmann wrote:
> On Sun, Aug 15, 2021 at 9:41 PM kernel test robot <lkp@intel.com> wrote:
> >
> > CC: Linux Memory Management List <linux-mm@kvack.org>
> > TO: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> > CC: Herbert Xu <herbert@gondor.apana.org.au>
> >
> > Hi Tianjia,
> >
> > First bad commit (maybe != root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   4b358aabb93a2c654cd1dcab1a25a589f6e2b153
> > commit: a7ee22ee1445c7fdb00ab80116bb9710ca86a860 [3857/7963] crypto: x86/sm4 - add AES-NI/AVX/x86_64 implementation
> > config: x86_64-randconfig-r024-20210816 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 7776b19eed44906e9973bfb240b6279d6feaab41)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a7ee22ee1445c7fdb00ab80116bb9710ca86a860
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout a7ee22ee1445c7fdb00ab80116bb9710ca86a860
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash arch/x86/
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool: sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with modified stack frame
> 
> I see the same thing in my randconfig builds using gcc. This is an
> assembler file,
> my interpretation is that objtool has found an actual code bug:
> 
> .macro FRAME_BEGIN
>         push %_ASM_BP
>         _ASM_MOV %_ASM_SP, %_ASM_BP
> .endm
> .macro FRAME_END
>         pop %_ASM_BP
> .endm
> 
> SYM_FUNC_START(sm4_aesni_avx_crypt8)
>         /* input:
>          *      %rdi: round key array, CTX
>          *      %rsi: dst (1..8 blocks)
>          *      %rdx: src (1..8 blocks)
>          *      %rcx: num blocks (1..8)
>          */
>         FRAME_BEGIN
> 
>         cmpq $5, %rcx;
>         jb sm4_aesni_avx_crypt4;
>         ....
> 
> SYM_FUNC_START(sm4_aesni_avx_crypt4)
>         /* input:
>          *      %rdi: round key array, CTX
>          *      %rsi: dst (1..4 blocks)
>          *      %rdx: src (1..4 blocks)
>          *      %rcx: num blocks (1..4)
>          */
>         FRAME_BEGIN
>         ...
>         FRAME_END
>         ret;
> SYM_FUNC_END(sm4_aesni_avx_crypt4)
> 
> 
> sm4_aesni_avx_crypt8() starts a frame and conditionally branches to
> sm4_aesni_avx_crypt4(), which starts another frame and returns from
> that without cleaning up the parent frame.

Indeed!  This looks completely broken with CONFIG_FRAME_POINTER.

Needs something like:

---8<---

From: Josh Poimboeuf <jpoimboe@redhat.com>
Subject: [PATCH] x86/crypto/sm4: Fix frame pointer stack corruption

sm4_aesni_avx_crypt8() sets up the frame pointer (which includes pushing
RBP) before doing a conditional sibling call to sm4_aesni_avx_crypt4(),
which sets up an additional frame pointer.  Things will not go well when
sm4_aesni_avx_crypt4() pops only the innermost single frame pointer and
then tries to return to the outermost frame pointer.

Sibling calls need to occur with an empty stack frame.  Do the
conditional sibling call *before* setting up the stack pointer.

This fixes the following warning:

  arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool: sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with modified stack frame

Fixes: a7ee22ee1445 ("crypto: x86/sm4 - add AES-NI/AVX/x86_64 implementation")
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/crypto/sm4-aesni-avx-asm_64.S | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/x86/crypto/sm4-aesni-avx-asm_64.S b/arch/x86/crypto/sm4-aesni-avx-asm_64.S
index fa2c3f50aecb..a50df13de222 100644
--- a/arch/x86/crypto/sm4-aesni-avx-asm_64.S
+++ b/arch/x86/crypto/sm4-aesni-avx-asm_64.S
@@ -367,10 +367,12 @@ SYM_FUNC_START(sm4_aesni_avx_crypt8)
 	 *	%rdx: src (1..8 blocks)
 	 *	%rcx: num blocks (1..8)
 	 */
-	FRAME_BEGIN
 
 	cmpq $5, %rcx;
 	jb sm4_aesni_avx_crypt4;
+
+	FRAME_BEGIN
+
 	vmovdqu (0 * 16)(%rdx), RA0;
 	vmovdqu (1 * 16)(%rdx), RA1;
 	vmovdqu (2 * 16)(%rdx), RA2;
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210920175656.cjvrr4wn7a3k6tnx%40treble.
