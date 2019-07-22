Return-Path: <clang-built-linux+bncBC5L5P75YUERBLOW23UQKGQEUQFFBTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F3A6FF8A
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:25:17 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id 12sf8484378ljj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 05:25:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563798317; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqq0t2hDsYbfo1NCVYHevMklvDWIyGQJuq0wSSFmE2o3BQYwlRsXctivYNqGIvXo1E
         7cwjrSf6L9ANrlZWVi74sDfGeL2SbdvZlqrMRW2g0qRah0n938KtHg1uciS0kY3UMcPm
         B/oht3bwWtuYMtNpAsz8PG/a0tS7+jrk2O8G7kpm2LGfEgn34muxSuJARFidJ8XJKrUe
         ULKcxZ9Q+VDB7GW4T4TUxeuBEheR/4kJnhO5EgBOkfq89TxNagG8lwrQxHCKs/+vFnHf
         5uRhhO1L4tL923iL12QKeESUcGmdNeWcyzreBY3hYB40F59BVwL6PAZZUpgTWfvFOKG3
         YDsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=FUNhu1JQ7L8sNNWc5F8RMjipLVR2+Bq6cIXFgaFRMro=;
        b=LShwoJqES4RlQYuvj+fK0We68g9Axj0BUTjH7IGk8AroG6/J+vH1y+BjA9kP2m5P4Z
         h35HG2lHKXnzryiIzg/lRMg5TS504kn945IhNFB58c4F+DJV4fPj/tyX1sN6ZDA7YIkw
         ulfPnZYGCwYH4DOTqqelewKGu1q4ANutlys+adcQxcym8i9NTenQ9vigkUv+Y8ovFQhm
         Pl9ma0CLNqFGsboO9w2QOji6aynPvVLKa5d5PsgT6sBjeWGDYn4gEi59IcasaS6PSM0S
         kJp8k9pgS5XOzo6wxQoDXWj96/C2MHC5k6+jhpt2VpibFnUzEnqAjYBqeITcopsO4YoJ
         WVGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FUNhu1JQ7L8sNNWc5F8RMjipLVR2+Bq6cIXFgaFRMro=;
        b=bOypazAY34gkyM4BIfoANDvDOS/+89xR+4fzaGd3gGjE7QU0oJ3mRsOXSMK3VquF2M
         IbrMBWzt9EuEFNMwmca6aLpyFJ/pOYr9UXT1jBdc4xwUuTXNBtzx7GSsXzaNuk1jNzBC
         ck2gEMSdO2mV/rWIFQ/VtBcdsDPDOqPW89gBcO3aJmxTaxdKwG/RSCThEkdsVEYUNvR5
         Okzbl2b+ZBPehn4XdJqqgis8t6EyPOZYyWkCYuYaXgBQDBNfV+CcqAIHMICeDt38/42a
         vm3JB9dj+Yt7c89gWVlbJytG3M8GznQ+9/S11gg7wOH52jjurQdFqVgo/5Nkh+v/gDd8
         Wi9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FUNhu1JQ7L8sNNWc5F8RMjipLVR2+Bq6cIXFgaFRMro=;
        b=DzG2W1Im6dodAo/WZQmsLeYND1t1PcKlXLdDPTmduvejPgQsGBrZ/N/ziwLrcvAOx1
         C4o5+gd+kS5n+ibe5l32Bei8Fnr+V6Giq7ahGX5+xaN1xmkI3poBVllS+K5Lweh+cq4d
         5TkUT8AqRAgfkFTXRghxljxFsqeThgNb6GMCH8xuagKTfYMgduT0GZ6KqSVX3Ji6GrpU
         BUgz6uFsS7yEs2SFmmDNWFyRQJgFEaRRg1QIKC0GpoS708LAYRPfKKQNatn4g3oZuivP
         3dJaYhbvKDRqkCi9iul6kCUV+sw8IKc7EuFKb/qMXOl4Oh3amBYGw9aoKfNzwpU0+Ee1
         Uicg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsrnGCR5S98FBtLV4BobGRL9AipyBOIdO+mKxaf/tslmOeGLIj
	J8xR0yz8RZkka+ep2Wab4+8=
X-Google-Smtp-Source: APXvYqyGyQbXnT5GgFzh7XyTwt9q902JyLnoNiNkpM521Sz+FwMQfmFR3d+vE2Mngg5/AWW/Obzxuw==
X-Received: by 2002:ac2:52b7:: with SMTP id r23mr921624lfm.120.1563798317365;
        Mon, 22 Jul 2019 05:25:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9643:: with SMTP id z3ls4436170ljh.7.gmail; Mon, 22 Jul
 2019 05:25:16 -0700 (PDT)
X-Received: by 2002:a2e:2993:: with SMTP id p19mr35132304ljp.202.1563798316811;
        Mon, 22 Jul 2019 05:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563798316; cv=none;
        d=google.com; s=arc-20160816;
        b=X0phO+Rx8dr0m66FuErMMjMINCFzsdfT+j8XbED3Fhnn9UZF8b7U5LBSRCLg+7cxXn
         Z8oiIUYNzPsNAjXAxqztJd6k2+768yJUE3CqQ/XWp/2/hnku/HqI9WWpoZC/Z3V+fJpB
         2X1kKOG0eGvL5mssye7k7k5RlJoTMEbv2/IL9k86r84c7F/VojuFnCs5+VOGLPmoGptE
         BhVCxs9v8e0ZU6ELozCJtZhoRKQKVpxB+R5ZgtRsz8p4MQrca36GqG/i3IyuzatzwiSo
         arkLLSanHhrWfteAotgLLndKDdKNMks6yCPzwUtDNRRnvCfbX2QtnWgpSYcMrFnsJ6jc
         ogSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=GX6WTIGpXlEmgpoBSTRC9ODKtMxSOJRGIMA2HYYDI+w=;
        b=fu5zu/o6dW0ymMVz1PMSDXI+zN7grhv/A2eiaX50sUak/YUKHadGhhRJSYhR+SKMCJ
         kyLhU+0AcdzGpud6L3UrmpaNRs8p8cdX/w/9eC2T/KxVJeE+bEFSNynV+wGtgUkm/hFd
         wKIjgClInX8v7NCykG71Y+kx4vRUJ8GBK1bpsglk0iPmgn2NTuIZ0rqx2npyHYlGmG+G
         8AkVXHFzqS7pRD+D42tTn7YK0mTuFzsY1azsTr21qTBPFOv1xeKlQRDbcfVxe+tHa/jp
         oV8Pc0Y1l7PB28+Z2TGQ+K9Pzv2A3xNgyhjvthQ6J0GZOJsllRhpLPM/tiQpczs9e9I+
         6DUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
Received: from relay.sw.ru (relay.sw.ru. [185.231.240.75])
        by gmr-mx.google.com with ESMTPS id h11si2145633lja.0.2019.07.22.05.25.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 05:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) client-ip=185.231.240.75;
Received: from [172.16.25.12]
	by relay.sw.ru with esmtp (Exim 4.92)
	(envelope-from <aryabinin@virtuozzo.com>)
	id 1hpXNO-0001ko-UQ; Mon, 22 Jul 2019 15:25:11 +0300
Subject: Re: [PATCH] ubsan: build ubsan.c more conservatively
To: Arnd Bergmann <arnd@arndb.de>, akpm@linux-foundation.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, stable@vger.kernel.org,
 Sodagudi Prasad <psodagud@codeaurora.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Kees Cook <keescook@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20190722091050.2188664-1-arnd@arndb.de>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <c7da8503-93bc-c130-2e50-918996abe6c7@virtuozzo.com>
Date: Mon, 22 Jul 2019 15:25:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722091050.2188664-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: aryabinin@virtuozzo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as
 permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
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



On 7/22/19 12:10 PM, Arnd Bergmann wrote:
> objtool points out several conditions that it does not like, depending
> on the combination with other configuration options and compiler
> variants:
> 
> stack protector:
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0xbf: call to __stack_chk_fail() with UACCESS enabled
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0xbe: call to __stack_chk_fail() with UACCESS enabled
> 
> stackleak plugin:
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x4a: call to stackleak_track_stack() with UACCESS enabled
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x4a: call to stackleak_track_stack() with UACCESS enabled
> 
> kasan:
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x25: call to memcpy() with UACCESS enabled
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x25: call to memcpy() with UACCESS enabled
> 
> The stackleak and kasan options just need to be disabled for this file
> as we do for other files already. For the stack protector, we already
> attempt to disable it, but this fails on clang because the check is
> mixed with the gcc specific -fno-conserve-stack option, so we need to
> test them separately.
> 
> Fixes: 42440c1f9911 ("lib/ubsan: add type mismatch handler for new GCC/Clang")

There was no uaccess validataion at that time, so the right fixes line is probably this:

Fixes: d08965a27e84 ("x86/uaccess, ubsan: Fix UBSAN vs. SMAP")

> Link: https://lore.kernel.org/lkml/20190617123109.667090-1-arnd@arndb.de/t/
> Cc: stable@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  lib/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/Makefile b/lib/Makefile
> index 095601ce371d..320e3b632dd3 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -279,7 +279,8 @@ obj-$(CONFIG_UCS2_STRING) += ucs2_string.o
>  obj-$(CONFIG_UBSAN) += ubsan.o
>  
>  UBSAN_SANITIZE_ubsan.o := n
> -CFLAGS_ubsan.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
> +KASAN_SANITIZE_ubsan.o := n
> +CFLAGS_ubsan.o := $(call cc-option, -fno-conserve-stack) $(call cc-option, -fno-stack-protector) $(DISABLE_STACKLEAK_PLUGIN)

$(call cc-option, -fno-conserve-stack) can be removed entirely. It's just copy paste from kasan Makefile.
It was added in kasan purely for performance reasons.

Not sure that it's needed even in kasan Makefile, the code which was
the reason for adding fno-conserve-stack might not get into the final version of KASAN patches.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c7da8503-93bc-c130-2e50-918996abe6c7%40virtuozzo.com.
