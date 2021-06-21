Return-Path: <clang-built-linux+bncBCR5PSMFZYORBZN7YGDAMGQEB4MDOQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2463AE65B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:46:14 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id j11-20020a67ef0b0000b029025d2626b5besf4801729vsr.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 02:46:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624268774; cv=pass;
        d=google.com; s=arc-20160816;
        b=bdxq8q/JGJYU4AddkiUwLSM8wCLzw1UoEFFsIxlH6Qt+bCOxE6HzjfxLMdcIWyP/IB
         Gh2o8TngX+sgF+UCVj8HBAewTt6CCL489bSTbrRdZARfSD2sAsUqXS+OGZrSuvOAlFbK
         ujAbA+/C32ydhOeKQKhTh+4JoRFApqvY/vvFYjeM465NW+ONtYZyysvQ79OYrHoczF7e
         KRjcLrmN9cSaVhMaSQjzdMNKrkJUPcea4Wd234b2DrnafOQ3imG+YcoCj615YQdPad6N
         FTMkneRuouOcdzHlVaj9sg5dbYhRrX3C/Q/9yGePBdw+G+oPlfGUVI7rauDxiL37kF79
         ShDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=5YB18UgdMPwk2dY5OKCX1HGYpmaxAWhgUhCsTio8bhU=;
        b=KaWR+jvoMRd+8+3FkIVr2QHUcNm5K8TgplRMSzplhsSJ+OPFm0DbF/fQ6Gi0JZQjZP
         lriqWikmVby7j5TWVezsXtWVOtZeRQL4L+EVW0L24CW1URumh1GS1U07Cb6RntpldvLD
         HIqKSq7zXaFB8NdqXZGd3QVtPzPRUGZeXB5oq59qUMdhyMe2qtp8u81Du4sZ+ctDcrRa
         QIh7lcj0lf00BTeUaZ0UueyJrY+H/7c1xVJCKwxxd77qvBlnWk+pcuTvsMx37DWgl4TQ
         wla70XIUqpKMfzNU3ny62PrX90Pv9ka2mH2cFJUDIVjY81U7R7HBgqKkVmkFCQS0KicK
         5o8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=qjIZKqzu;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5YB18UgdMPwk2dY5OKCX1HGYpmaxAWhgUhCsTio8bhU=;
        b=Kcwumq1tmNWZNgYgs3QKB8YNAJzYyygmshojE3Rc20Hl1Vt3Q5N+tylgGIaUZ4Ohfe
         /r7v8C57jfudb/VmlLRYm6U0Dub5pa8StbMJr7l8MirADLksAmBUBJvbIZJEUMFXEgx2
         0/tm/85r6cmuG5MxvXxGTNSXPOPuJtLN8co0CAeBTWWjMsv1aBSN97MAW4VSvNtdX5cq
         uMwt9HJYz7aqzfk2LN/Moe9iiLF32I+c9TdTBCP27S5jU0P8jk8SZJ8Hv3gmglfViWiM
         4XdhoFm2tVV4f6vH7vZjLfVWNpgsxOKLwpa6hUQuPgpWNUO01V/Iruwi+gpQytih5AJY
         C+jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5YB18UgdMPwk2dY5OKCX1HGYpmaxAWhgUhCsTio8bhU=;
        b=j6Ws2Wo8vGPbW7P/a+RcrsYwI5r1Y5Zi0lgmtVAiOHis36GkOQOmHse2I/kZ2vPXRB
         BEvkYN+QkIQ4/UHxRJhmOszHHaWV9UiVsMRICgnYsxNV+89z9WiAkQAIX5uLTuetmlvJ
         MbvrQdLbYEm9mMZw0CdScUCAs8+djKaD42hKlCDAuACGuPf5PcO/fXGP83KwRvYxGJAp
         bv1w9Jusu3tpyd/OPhyvoio6GKt6PePm0XJE6mfC44+iFQYtjgroboRAtRbGHZNXQL4R
         zQlg9zMAmOvzUioU4bVzMqKL/kC7hNj5DkS+OMZdbNyXCWydcvFQHD2cY7qG2Hkg3dzg
         0zeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ziiboX87FVjZFC5XOuQFe1NqoPWDR9zZGYlYIEruGT0nmIbvX
	nh3jUHzLwOgtfVCnTcKW7IU=
X-Google-Smtp-Source: ABdhPJx9c0bv6SnSyWENZ2efmfphFpKgaS0raUf3Y4YZiULGHU1+t+UejykLP3HcwO3CMKhp0xyHUA==
X-Received: by 2002:a67:887:: with SMTP id 129mr15634920vsi.23.1624268774005;
        Mon, 21 Jun 2021 02:46:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls2842775uak.4.gmail; Mon, 21 Jun
 2021 02:46:13 -0700 (PDT)
X-Received: by 2002:ab0:6998:: with SMTP id t24mr21433046uaq.72.1624268773215;
        Mon, 21 Jun 2021 02:46:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624268773; cv=none;
        d=google.com; s=arc-20160816;
        b=IFvEd9A3Yp8HHv47TSIpEhw/U6B3n7cebbdtuy1G/L74M9euWDLmlgif/y05SUo0Vc
         yE9nKp/mzn5LujOLm4aPhM1I4Iwzd+zocU4Ku9rwBpbvnwdqSY/TWDhGn18kP6sTIX7f
         qG1uBSc6DdA0b9/vT82eEVgIrvaBjMFdSItteYhQdGhxd1PMXMa9FVmzzU1babelXThP
         0hCYRJLM8pbhQ6qj9sdsoDVUaKrWdpderRj1yNuV7y3OMYUnQAcRwZ1TWNKDwU5oINg7
         BsRXkuKxFEtMMq0lE/tFAVOSKUgrZYQQyullcLVf76TF1i+eaBCPZVIn4JlPDHIZY5KM
         tIJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=Hb21Nn6g42SJ39Koogxh1jjn42VLgf2TIzDVKkAOEw4=;
        b=BD+YAtKuS4QJNLRqi2LAjexC2QgA/sZklrG5ktfZg4PP1uABJ6Y6U4aVhMymEeWgJh
         X+jaVdfGKav/lyr5gfBTFdI4vlUG1nou4cxWR13J75aAvXJxIGn6NkM4FsgYdpFljyMi
         +Yf3mH2c8zygfVIYoup3rQ+Qax1zt5eLXLs/eU3yOSppnRzJc4/fcemGp2+CcLW8mUd8
         XpDrPBkOGfrMliiehiFS+HmBqRjAH6yDfljLyB3rW82pappUA/WEP3j04/29ajkP+u6r
         3u0u2D73P+1D135eKE//KjjGKPJTZtQSgQHlVNAVY7hJTSjT3tUNsOB5pw/WtTT5pgxU
         ZNFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=qjIZKqzu;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id k62si1134947vkk.2.2021.06.21.02.46.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 02:46:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4G7l5p14q7z9sWl;
	Mon, 21 Jun 2021 19:46:06 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <nathan@kernel.org>, Nicholas Piggin
 <npiggin@gmail.com>, Arnd Bergmann <arnd@arndb.de>, kernel test robot
 <lkp@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, Kees Cook
 <keescook@chromium.org>, linux-kernel@vger.kernel.org, Linux Memory
 Management List <linux-mm@kvack.org>, linuxppc-dev@lists.ozlabs.org,
 kvm-ppc@vger.kernel.org
Subject: Re: arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame
 size of 2304 bytes in function 'kvmhv_enter_nested_guest'
In-Reply-To: <e6167885-30e5-d149-bcde-3e9ad9f5d381@kernel.org>
References: <202104031853.vDT0Qjqj-lkp@intel.com>
 <1624232938.d90brlmh3p.astroid@bobo.none>
 <e6167885-30e5-d149-bcde-3e9ad9f5d381@kernel.org>
Date: Mon, 21 Jun 2021 19:46:03 +1000
Message-ID: <87im273604.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=qjIZKqzu;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <nathan@kernel.org> writes:
> On 6/20/2021 4:59 PM, Nicholas Piggin wrote:
>> Excerpts from kernel test robot's message of April 3, 2021 8:47 pm:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>>> head:   d93a0d43e3d0ba9e19387be4dae4a8d5b175a8d7
>>> commit: 97e4910232fa1f81e806aa60c25a0450276d99a2 linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
>>> date:   3 weeks ago
>>> config: powerpc64-randconfig-r006-20210403 (attached as .config)
>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0fe8af94688aa03c01913c2001d6a1a911f42ce6)
>>> reproduce (this is a W=1 build):
>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>          chmod +x ~/bin/make.cross
>>>          # install powerpc64 cross compiling tool for clang build
>>>          # apt-get install binutils-powerpc64-linux-gnu
>>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=97e4910232fa1f81e806aa60c25a0450276d99a2
>>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>          git fetch --no-tags linus master
>>>          git checkout 97e4910232fa1f81e806aa60c25a0450276d99a2
>>>          # save the attached .config to linux build tree
>>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All errors (new ones prefixed by >>):
>>>
>>>>> arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame size of 2304 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
>>>     long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>>>          ^
>>>     1 error generated.
>>>
>>>
>>> vim +/kvmhv_enter_nested_guest +264 arch/powerpc/kvm/book3s_hv_nested.c
>> 
>> Not much changed here recently. It's not that big a concern because it's
>> only called in the KVM ioctl path, not in any deep IO paths or anything,
>> and doesn't recurse. Might be a bit of inlining or stack spilling put it
>> over the edge.
>
> It appears to be the fact that LLVM's PowerPC backend does not emit 
> efficient byteswap assembly:
>
> https://github.com/ClangBuiltLinux/linux/issues/1292
>
> https://bugs.llvm.org/show_bug.cgi?id=49610
>
>> powerpc does make it an error though, would be good to avoid that so the
>> robot doesn't keep tripping over.
>
> Marking byteswap_pt_regs as 'noinline_for_stack' drastically reduces the 
> stack usage. If that is an acceptable solution, I can send it along 
> tomorrow.

Yeah that should be OK. Can you post the before/after disassembly when
you post the patch?

It should just be two extra function calls, which shouldn't be enough
overhead to be measurable.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87im273604.fsf%40mpe.ellerman.id.au.
