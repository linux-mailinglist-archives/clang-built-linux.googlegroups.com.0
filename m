Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBU7JXH6QKGQES4RDFTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id D029B2B1A63
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:58:11 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id s7sf4375631eds.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 03:58:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605268691; cv=pass;
        d=google.com; s=arc-20160816;
        b=FvzjQnJOf9ztH8P6mWVwXCPW393oxw+qx3d3N33nV7q+bQ16Y26eLy+dtilAFtnKIs
         WkrDF1n6KPpF8L4wLNnuesnlHD7mRxZoLW8QrPOOVdbwi0M1woIDfn/FY/QeY2Wjuz++
         D+RIXKt2QEAdi604rWffBN1+n5iiHtD1lFdQ4WNGxGXU/nPymuM6OxupUA2YWdvYqTXT
         rO1i5Ds3ML1Xx2HrAq0TC1hqb/+Hhtv+FfEv7PpKdw16zTmW6YIJBtSpSd0iiPA7FMMh
         FLrpVShWkwErajpAoHZpY8tEbrH26Fs0vCd7vsvVhXuGdpBYCtkGa+8xMxADHcYvGeud
         jtZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ZCoXOlCJiF17eMvTfhatGbJV2wxPSVjtr7Urdc8ecls=;
        b=u4OeF7jEO7jVbeJE4msGUq8ROfn8FRinUqRMI099Ay3ccoOkB6g49JCTCU9x9xgKgA
         BfEgE9hy+TKxLpyK9pBm5sndcx5K6buta9kWrpy7oHoqw5VFflwQaLUOl1xImNZFrnLw
         IfdXw8TadrAZO35/HBxYfpIc3al1x7Y2v4h9Z8i1/8NDbF13L6jKzkpqMbptGbgnkqI8
         tyI+HVy3tEr55kkeIGSKZePGKKo12u073LNw/NMjp/0jw3mFcac073i3V5ObpzVqdUTu
         5NIuUJop9x1mgrDDFM8AZIdOV/5uxAOGnZdsDwSHFJPQhNj2fYadbL4U8VmP+kMXMYuc
         WegA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCoXOlCJiF17eMvTfhatGbJV2wxPSVjtr7Urdc8ecls=;
        b=tgTZVLRM1ykMoxQX+eBUVimvHqNmzLNPB6luak3k1qqCKdg6Xf7w8X7B2i6hQnnQx9
         WtoQGbc6/zhFDpLwG+YDC36i0mb1ly6vJn5l2bW2zkxv4HaRbzBzJxqdX8NU4x8ybCi/
         XugQyyJl8maElxQlnFSC+aIzf9s0x+/bdJ/mXIlfcSz8Updc7sVtSRua7RmbBpCMtBv4
         /ot1tNPzJu+72RwDRJD57Z4p2VgzqeJlUi9PT1VAic/4cW6EHlq53BUG4vSdp2/VbnTx
         btQUdC0mbiI5KUekHIhaTgbABBg8E6DBCRgBzufj20UPjAhYiNdhPZYpZarNZ/9/n4qD
         Rn7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZCoXOlCJiF17eMvTfhatGbJV2wxPSVjtr7Urdc8ecls=;
        b=sEF469jJJEwl56hHECdtjCP3KKDGaxIZugDVb7k65rUqhtT66dHbkcQuecF1p8TRaR
         A/2bcuZjhXJyTDuMHBV6aJZpbFB9+5p7GVqNDaRQiccgmGJH6BzqtkIZbGXJ89sakb29
         S4Mj7c0Xbl8Z14WDiPMMdlrT/kZVGiUMHq3+OXyQagNTxvNYS/V8I+so73ugHV2ZZB8V
         g0BWpaDKK1rQoklcdZwAQts5Cb8HuFmHfQk/lKoZAZzrHqFL2Q66p4uIz+FhBa6kZ08c
         1TsKFUsACG2ScMdsHbvyJEWU0yMbmwUKXzCLhVQbw358eyyO6PkVomdehh7jgbUfaLWN
         fDqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wc6hIL0n3fejKEIKgNb7s+IZ1RDSOl9JJzEm3Gmf83ZL+JLKw
	pJW2tvyVBe+ztzKXe7ntVk0=
X-Google-Smtp-Source: ABdhPJx17Hcwfkm7iYPCua6dT23/UDr4u/i8ZOLEGxna3wxx+MKxQTm22UB5rr+kTOWz2YIN/ukbcw==
X-Received: by 2002:aa7:c3c1:: with SMTP id l1mr2093638edr.153.1605268691524;
        Fri, 13 Nov 2020 03:58:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1351:: with SMTP id x17ls2962115ejb.4.gmail; Fri, 13
 Nov 2020 03:58:10 -0800 (PST)
X-Received: by 2002:a17:906:3187:: with SMTP id 7mr1000513ejy.225.1605268690596;
        Fri, 13 Nov 2020 03:58:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605268690; cv=none;
        d=google.com; s=arc-20160816;
        b=GLns34+wk3ELWt8X4VNh2X+lKXPWe1ZNvimmGQNEuth1LkdevGKi5PQYpKkVUBgXKm
         aK/wfnqJz1loJui/MRLjqsVWQ1YAtqTLDdevAQPNnuwXF0GrxDaBwhvAz7qbfwGo5ipK
         K0gLPu+9RuqPY/7Wh4nj+FHyu8pZR+wRhROqp7/3zM7pbfd99/o6joS3/uCf2Gr1dJ1K
         s/qEAiKBHkz3232hPlhx/fXRUMz5DiYk/+bxd6+Bd8TREZE2pQDxelqzpqE4vZOPaaRr
         JQw/f53hKBop17zIcVc3HFds314OI+PRkbT8fzmXbA0mgkZFl/4PccpngZFD1+zecCK6
         zMYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=NmZ4bBOMMrT/bMw1/YNkZfNZHNicwJS6QHpGwEJulcM=;
        b=OfXYPlNt3ocYt9JYvgy1sFGTlU7kOalg2A3c8dMgmjo4V2KiCXg34ZOLE1phI2OUp/
         EbBrO3L9NVk8p/hpnnHTFCW/6CAn2GXaG1OUez7H63tjuWvH6YQUeOxnpwHtyKDHMkfQ
         2wM8737PDsG6azu+TZsOQPR3jM8kj9YTnfSKhH/2S0H2Q+pPz76I52vJt9ollIgYg+5Q
         jOOl2L7KJPH27z2sXeNFIwT9AnyoD8ggRIK1n/GvPLGioZsFnaSkJrG19pPYtK7uQia1
         R7od56EBUHlW/7aTsZwAg+TOQV4kY/+4AySFpBHoZvBLdj/LwpiyMpNIbUvpVYdCWz0l
         o+3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id v21si181106edd.4.2020.11.13.03.58.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Nov 2020 03:58:10 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id D046D1F4693B
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Arvind Sankar <nivedita@alum.mit.edu>, Collabora Kernel ML
 <kernel@collabora.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
In-Reply-To: <CAMj1kXHQ94ZzoSUg6U70FnRtFs0KeVXT=Zg6ri2+OU_TKQcGfg@mail.gmail.com>
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
 <20201112212457.2042105-2-adrian.ratiu@collabora.com>
 <CAMj1kXFbLRTvGuRt5J3-oEuJrrHFV9+SBGFFDNsAftGUbwoTPw@mail.gmail.com>
 <87mtzljz12.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAMj1kXHQ94ZzoSUg6U70FnRtFs0KeVXT=Zg6ri2+OU_TKQcGfg@mail.gmail.com>
Date: Fri, 13 Nov 2020 13:59:48 +0200
Message-ID: <87h7ptjwln.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Fri, 13 Nov 2020, Ard Biesheuvel <ardb@kernel.org> wrote:
> On Fri, 13 Nov 2020 at 12:05, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Hi Ard, 
>> 
>> On Fri, 13 Nov 2020, Ard Biesheuvel <ardb@kernel.org> wrote: 
>> > On Thu, 12 Nov 2020 at 22:23, Adrian Ratiu 
>> > <adrian.ratiu@collabora.com> wrote: 
>> >> 
>> >> From: Nathan Chancellor <natechancellor@gmail.com> 
>> >> 
>> >> Drop warning because kernel now requires GCC >= v4.9 after 
>> >> commit 6ec4476ac825 ("Raise gcc version requirement to 
>> >> 4.9"). 
>> >> 
>> >> Reported-by: Nick Desaulniers <ndesaulniers@google.com> 
>> >> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com> 
>> >> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com> 
>> > 
>> > Again, this does not do what it says on the tin. 
>> > 
>> > If you want to disable the pragma for Clang, call that out in 
>> > the commit log, and don't hide it under a GCC version change. 
>> 
>> I am not doing anything for Clang in this series. 
>> 
>> The option to auto-vectorize in Clang is enabled by default but 
>> doesn't work for some reason (likely to do with how it computes 
>> the cost model, so maybe not even a bug at all) and if we 
>> enable it explicitely (eg via a Clang specific pragma) we get 
>> some warnings we currently do not understand, so I am not 
>> changing the Clang behaviour at the recommendation of Nick. 
>> 
>> So this is only for GCC as the "tin" says :) We can fix clang 
>> separately as the Clang bug has always been present and is 
>> unrelated. 
>> 
> 
> But you are adding the IS_GCC check here, no? Is that 
> equivalent? IOW, does Clang today identify as GCC <= 4.6? 
>

I see what you mean now. Thanks.

Clang identifies as GCC <= 4.6 yes, so the code is not strictly 
speaking equivalent. The warning to upgrade GCC doesn't make sense 
for Clang but I should mention removing it in the commit message 
as well.

>> >
>> > Without the pragma, the generated code is the same as the
>> > generic code, so it makes no sense to build xor-neon.ko at all,
>> > right?
>> >
>>
>> Yes that is correct and that is the reason why in v1 I opted to
>> not build xor-neon.ko for Clang anymore, but that got NACKed, so
>> here I'm fixing the low hanging fruit: the very obvious & clear
>> GCC problems.
>>
>>
>
> Fair enough.
>
>> >> ---
>> >>  arch/arm/lib/xor-neon.c | 9 +--------
>> >>  1 file changed, 1 insertion(+), 8 deletions(-)
>> >>
>> >> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
>> >> index b99dd8e1c93f..e1e76186ec23 100644
>> >> --- a/arch/arm/lib/xor-neon.c
>> >> +++ b/arch/arm/lib/xor-neon.c
>> >> @@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
>> >>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>> >>   * NEON instructions.
>> >>   */
>> >> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
>> >> +#ifdef CONFIG_CC_IS_GCC
>> >>  #pragma GCC optimize "tree-vectorize"
>> >> -#else
>> >> -/*
>> >> - * While older versions of GCC do not generate incorrect code, they fail to
>> >> - * recognize the parallel nature of these functions, and emit plain ARM code,
>> >> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
>> >> - */
>> >> -#warning This code requires at least version 4.6 of GCC
>> >>  #endif
>> >>
>> >>  #pragma GCC diagnostic ignored "-Wunused-variable"
>> >> --
>> >> 2.29.2
>> >>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87h7ptjwln.fsf%40collabora.com.
