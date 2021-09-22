Return-Path: <clang-built-linux+bncBAABB45JVKFAMGQE7IQ7IEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id D9370413F6F
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 04:29:08 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id o7-20020ac86d07000000b002a69537d614sf5344825qtt.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Sep 2021 19:29:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632277748; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXjADW4hZuop4q0eIUE7+C299usOoqun4e4shOrnWcW/CaP8+QR+4wD6mhoYckn3Au
         e9J5u6IHccetRAJBR4lPzkEJKNv7CuUreYRgA9HlA0k9SgaNCxSIeKCDidFZa4NWvBgn
         dc2y6Jle0FIYsiR8XCztc2aJT92ykSW8SThlXsUKUtpuvCv7IlSQ584ys6Enn593iYFl
         vwL456O/bI5qcJBEkS8O9w+zX7oDSmwuS+IXR+eSyitt6O1J6s3I6y9sswTemJ8L+mXh
         uQiRAzWKyeR4ATfhxFTYHIaC2cevr+DghlcXEqZ1CALsxD0tga0xhvaZux3512Z6wyvw
         OEpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=3qZEml5A/e15vIvXPS46qcoE+rGgFw2a2LBLFhoNvmU=;
        b=d6Wf3xfgb4o6Nzwrr7XFfyFjg26ENLRaNOu43j07mFYF5SPqELpFMRjkHKibhuFZBQ
         +JAo3jS162Eq56F4yN6a2qnaA4X4D5k0+6TKG9YTLUrYMP83bcYZ9DvedLXHbs8pyCEX
         P9lC1A/d83f3MAtldAaTggEp+r5pB18R63+zsahYzdzZKwqmyS5ZfhADIK7t0OE0/qYI
         zZRi/bivUU/HtHstIaec6eIWjcT8ZS6ssyiIskqKpZEx2lk4jvscf78h/RDOrYIwRnYf
         K8PTL2JbjtjYtee/Ghmmn0cPYqNdGEyXftzgKDgfEmwjN1eBiNm/0cId7MMNSAYEpP1C
         NwNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tianjia.zhang@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=tianjia.zhang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3qZEml5A/e15vIvXPS46qcoE+rGgFw2a2LBLFhoNvmU=;
        b=iCv1FR2ZcDFJeU4/qjRzjD0qL3901e8VvwywenaWX6RApfK03INwvtMGuAQI0TpZ26
         poREogIB+5GTs2QU8aoXSycUumskGUYzBPa9LlRHJqici64881W0Hb1sE4gXJbM/+GsX
         4sr0WDfl3pVZc7Q83wKk6XMAjcmrqlryV3PDUzShwkYC/C8m8bw2EApSJllwsTtFsiPS
         Or/SgnnFkLDQKUTvUWxZkRWUZX/0obheMZWntm4YA1F6yWv2WKjZLGHgj1fvtnCD5OjJ
         BzZrLfGMVU237+oRFuJGSl/6613BX4oNntkLnB2w+r8ylNk9/szywd6Yy+Kq4L96YwDp
         D7nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3qZEml5A/e15vIvXPS46qcoE+rGgFw2a2LBLFhoNvmU=;
        b=t1DVsL27WW1sk3My7zPiyxJyjLF+WtQNuWUIR6+hLSzhcD6RfjSSCRG6fc/wTjyI41
         8Xb8+MgTmxNDXtR1jf3Uids2cqWhSHxVrQgq27GouKq2eyDq7+q4AsQ1vZXaCcDKU6Dd
         I4a9F6MUh6A5TctwsZ60mzG/ArzsSQ7WcR0Lg7qoQ6D/8oFkNT/00pzTpDDKxeH/owx1
         TTXMo0UPfdsje9xzqSLhoWd2JC3NYWsWuJeumcE41dG0ph7g81jzimuIvxOMaHZR0/X2
         bQwV3Z1ILokg14RSiNFYc7odUyp+4VzjgP+LgBJ7Alyj+Y5o7jAqEVViNwsDNl0ljCXv
         Q/rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533l9biIiCMTI6OlS/Xv5oU3/h0fHZC4l+tNISW3+1hkPqDa/Cqr
	1EKrWBhDwX9jbVUuJrD2XqE=
X-Google-Smtp-Source: ABdhPJx/6UOm6fGD1oMALAh3tdhAiqyak6vc20Vdn0yadKhZBgdwycnP5kCzGEOp0OEY2zRbV2+aWg==
X-Received: by 2002:ad4:46ab:: with SMTP id br11mr33981198qvb.15.1632277747733;
        Tue, 21 Sep 2021 19:29:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:100f:: with SMTP id z15ls931774qkj.2.gmail; Tue, 21
 Sep 2021 19:29:07 -0700 (PDT)
X-Received: by 2002:a37:301:: with SMTP id 1mr5417014qkd.510.1632277747313;
        Tue, 21 Sep 2021 19:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632277747; cv=none;
        d=google.com; s=arc-20160816;
        b=oc8bLaVqe8S3uFji0B0l0lhw+AZ5ueF+2sdXkY6mWFjPO7H/+WsbU/c/48knecrHXe
         p1+szitXngOcFY3cHlVp+cYuPKV9iTqtywMoov/skP5GRgPF3x9WJLQ0VGL1PJuE670n
         74WWiVmw2COoUuiHw2xBN1HTmimy9Ii9OCnKvxAgUq4zgC4JGU8G6n/stExNFDo1VxLB
         gJYdD3ONoCkUdO3HrNrzb+60jRzxbsDqPlyIQLyKK73ciwG4QE5tdtq0rAbc0m8hxDI5
         95V0I1dCbH7Q8ZW/nOvkDwl+t+zG+Wt+wr+EYjQzJ6DoUMWuiiteaH043fj2wp0vh/fQ
         0Jmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=J0QVKuWKouQFMFf8LGD3Z4Xk+ABYICk5bSFUnYV02pY=;
        b=c5+7bjkxhXKNdBZQxNS/f5Kv8GeawCEbKiCJamc5eQZ+sOAMoyYBJYGQuJLZ4slA+5
         hmFHP6zwKw5hMKf8E5Ebjo9l0a5U7j0t95FD32jXn4Ca6CSK5gda4f6uzkH0jltAznQc
         ENcvV4kMyc5WgE2nRdHKdx096i9vBnG32I7B5mUK88rLD84lO612983iwbagYjzAumZX
         6ZrNZlivwviY0IYtPS1mCS4Cfdm1sqn19GcNS866AsPLX9fGFlI2Le8efTYRbksZS3iK
         u9xXggayfvNw2IWr0z6ddVoH9W4rGS05xMDn1Yg4JawlWiAVPpxkMDyDPzA+faaNhJMD
         OqYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tianjia.zhang@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=tianjia.zhang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id a21si102141qtm.3.2021.09.21.19.29.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 19:29:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of tianjia.zhang@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R141e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=tianjia.zhang@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0UpB2F3U_1632277730;
Received: from B-455UMD6M-2027.local(mailfrom:tianjia.zhang@linux.alibaba.com fp:SMTPD_---0UpB2F3U_1632277730)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 22 Sep 2021 10:28:51 +0800
Subject: Re: [linux-next:master 3857/7963]
 arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool:
 sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with
 modified stack frame
To: Josh Poimboeuf <jpoimboe@redhat.com>, Arnd Bergmann <arnd@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
References: <202108160330.T1EbbpCi-lkp@intel.com>
 <CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw@mail.gmail.com>
 <20210920175656.cjvrr4wn7a3k6tnx@treble>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <6d49d3ba-ae5d-cd57-d1fb-d9df5b859cbe@linux.alibaba.com>
Date: Wed, 22 Sep 2021 10:28:49 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210920175656.cjvrr4wn7a3k6tnx@treble>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tianjia.zhang@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tianjia.zhang@linux.alibaba.com designates 47.88.44.36
 as permitted sender) smtp.mailfrom=tianjia.zhang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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



On 9/21/21 1:56 AM, Josh Poimboeuf wrote:
> From: Josh Poimboeuf <jpoimboe@redhat.com>
> Subject: [PATCH] x86/crypto/sm4: Fix frame pointer stack corruption
> 
> sm4_aesni_avx_crypt8() sets up the frame pointer (which includes pushing
> RBP) before doing a conditional sibling call to sm4_aesni_avx_crypt4(),
> which sets up an additional frame pointer.  Things will not go well when
> sm4_aesni_avx_crypt4() pops only the innermost single frame pointer and
> then tries to return to the outermost frame pointer.
> 
> Sibling calls need to occur with an empty stack frame.  Do the
> conditional sibling call *before* setting up the stack pointer.
> 
> This fixes the following warning:
> 
>    arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool: sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with modified stack frame
> 
> Fixes: a7ee22ee1445 ("crypto: x86/sm4 - add AES-NI/AVX/x86_64 implementation")
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>

Thanks for your fix.

Reviewed-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>

Thanks.

> ---
>   arch/x86/crypto/sm4-aesni-avx-asm_64.S | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/crypto/sm4-aesni-avx-asm_64.S b/arch/x86/crypto/sm4-aesni-avx-asm_64.S
> index fa2c3f50aecb..a50df13de222 100644
> --- a/arch/x86/crypto/sm4-aesni-avx-asm_64.S
> +++ b/arch/x86/crypto/sm4-aesni-avx-asm_64.S
> @@ -367,10 +367,12 @@ SYM_FUNC_START(sm4_aesni_avx_crypt8)
>   	 *	%rdx: src (1..8 blocks)
>   	 *	%rcx: num blocks (1..8)
>   	 */
> -	FRAME_BEGIN
>   
>   	cmpq $5, %rcx;
>   	jb sm4_aesni_avx_crypt4;
> +
> +	FRAME_BEGIN
> +
>   	vmovdqu (0 * 16)(%rdx), RA0;
>   	vmovdqu (1 * 16)(%rdx), RA1;
>   	vmovdqu (2 * 16)(%rdx), RA2;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6d49d3ba-ae5d-cd57-d1fb-d9df5b859cbe%40linux.alibaba.com.
