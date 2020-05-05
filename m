Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBGGYYX2QKGQEE7JVTIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC9D1C571E
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 15:37:28 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id j5sf1055369wmi.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 06:37:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588685848; cv=pass;
        d=google.com; s=arc-20160816;
        b=N9oynXpvAolQac7LJIHWdtPoZIKTmeglLxxTZVMCUoSOyi2W0aGcMnHve7TEXpJq5s
         qm7EHTzcmBNJAdMD0/2Rk3IWnZe0URIR9WiNysMdmOR4t7u+kxjL56PyMlEhw+NYWN2i
         CFgZ4mWV7Y4SPqOwc8frCkc/QECzfckNg3YltQ3vjUSzL61olrKC5jsubwDjVU4wv7+R
         KDOwLbKtabCQi9iZTSJuv2TiNiPsanr7GNmqd3CsNX4Cg/tbAQygoF4Di5zHvdoXBdhT
         Cb2yWLqcThDIEIVjoKGfVYxavM2hrVTao9vgfRxZ4N40UQ0uhJPJniqzbrgowIOqxXil
         xZaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Ku4f700yM8tcP1bwVNHJuuISvvFNaHp2ZMNOz4uRzVI=;
        b=zqaQwJEraCWhnP/QxBCrQgWTyVug2dopcW0q7/1rUqyzt+IPN8J3jysC2NAmDH2rjZ
         JFt/rc6LiKoW5scFQpsodeTFvo+oAcSiGQ0MIo7AAzusPSAc8+wMiIJU+t5glMBiO/xJ
         WzRAN3LMWUuupYKW6T5i5VAiIIgi5sX6gpa40wIgHo0a/1gmKsGGOkwthKbzHAKz/2Ln
         BogR3eFDaXouM77uAPf3LOoQjXILT3VJr9Hwij/EEmjL3DvLIp5lv8xwgIkZRn9p7Vpu
         CRMj/GLeMdxG3tqYXLLfCbhxiFQ62nfgaVBuBeDL0ioCAHUZHX8h6ZT2pPR5AboqiTZt
         EDjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ku4f700yM8tcP1bwVNHJuuISvvFNaHp2ZMNOz4uRzVI=;
        b=kZRWjjFOX/9Pfu8qcYd2+BslPCqzuGUhMhrfZd1Dwq0vlwkuFr2I5j3aGs453ESpOH
         nW+VEJ4hw+UWePiUIMRC5/0p1XdQwMQar6eWuuzW4ncRPdDlcBqy5KRFMvZUbVI62mvJ
         wSgHazhYNlk5eJbP/9Lm4RLWV3GFe8aDmLVjIVDNB3jnvJVRX/Oq3+96ONLsEI5K6AUj
         37PdM9ubXWqdwP9I1iez/Zpa4XjSNBeybZ1J98OTvvOnLdZ+k239AKfMxhAHpKeLgv/O
         OQTO/AngHFV50spXoQDZLYqeA5s/yWCRKuuzJbH+6w0bGRB8hJoJXN7EgE+eWBIosq8A
         KtyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ku4f700yM8tcP1bwVNHJuuISvvFNaHp2ZMNOz4uRzVI=;
        b=tihcOr+BrYwWOXDkhoBtGBzajV0W7NxikMFw9v35/+9UDiDo2IavD/zC6hTP2Rg6I0
         x/FX0tBLoS2BB/gaVD7E8VGgvaBj/SRpj31sECNoOXhrFfYLvq/McSCWdEBDsuwq5aSs
         1grWOLk1AbpnAdP/YY7m0SMliN/3Ymk/CNUdUa8T6bRW3Z3uY61QqBk5ZVRoBdS5Oon3
         5+OsDAd0HKSHiWSxEWblsTjRGIFKKO4sPqGb4Dyt9xkyU/e4z+i8heOswWZIsER6XBRe
         9fMio1zASApY5YCwpNE0cAELieJGFAbEq52nXGGVZl1ILMMiGEhZSTIGxto1f92WT+z5
         oSUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuamIF5TLW30Eva9ryQ3C13D/rfYsjJt6YOCkccoaUJHaUfD2xr/
	e1SggWflG/I+wvsYqVqgUwg=
X-Google-Smtp-Source: APiQypK1+6/YOlVPuM4W8vVjFLosEd94/D+Qi3RQOqBeXnH8CDOeJMAbrcGKVWHFgB9o6q4CVe+/Jg==
X-Received: by 2002:a5d:6a8b:: with SMTP id s11mr3742485wru.258.1588685848520;
        Tue, 05 May 2020 06:37:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fa52:: with SMTP id y18ls3457143wrr.9.gmail; Tue, 05 May
 2020 06:37:28 -0700 (PDT)
X-Received: by 2002:a5d:444e:: with SMTP id x14mr4176172wrr.292.1588685847971;
        Tue, 05 May 2020 06:37:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588685847; cv=none;
        d=google.com; s=arc-20160816;
        b=DExAuXrpS5WcY6unrjtuq7K67x/52zYEFqzB/yDpY26ZGJp0ksQut/fGPnMZq4ho6A
         6dmpL7iB6fenzz2DunKFbHSGarpmsqTwpCrGv5cLHUrSAsAoK7oHolGlrbOFazM+4QuV
         GYOEc5Z4L/nG4rjADLgSEeBpMzgwCbaNRVQ70n2doSJh5PR26Tro/LBiNT6ecT4bh5WX
         gJmQRt81ISX5ujJAAOzJ3+zWZawVL96dVbZ3BJLhKvVOClyurlNDGuYYXxTXz6o7XeY+
         ZQINAo9NiajTlzFKjfieYQFLqG3Ro4SkldcK/OoJXbyk0pDr+EMQvEY2LSyea2MnRoB3
         Yq+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=7wDNs2i7f6n1tTjjk/gjiUPkblsrbHSccoKzCiViMVo=;
        b=V3mUaFCEcZImUIIU/Grcb/7ZX1UumBPSkDRIxOR+N0keQafB8eOgQQo4ZgT49h5LcR
         v84gW3ZH13ixcFGJNHfx0RGZrOkOst/ubGjrWIL3cMj76BwY/bQi16sGDQlv2w5hCiLe
         OGk3YFeVE/ickHV23o4XiQXMCvXpJaYr1+VSXBowM+Z3hIVhuxMCubyURwqbzUntTNAH
         /QNV7Q1/hyv4Uj7yG6HjWQtrTtijZnKi0SHpKhvWWVlloQ5P2FLWy5Uh8QRj1UA7MP1V
         IZ3JXz37J5aLh1eEmCAlpTASDOGqIj7Mbev4cqeOhdqJ89J2GzAKs4DYFh410ksRtmXD
         vH8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id 71si179123wmb.1.2020.05.05.06.37.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 May 2020 06:37:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1jVxlF-0005Bf-8A; Tue, 05 May 2020 15:37:25 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1jVxlE-000FC1-Su; Tue, 05 May 2020 15:37:24 +0200
Subject: Re: [PATCH 1/1] selftests/bpf: add cls_redirect classifier
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Lorenz Bauer <lmb@cloudflare.com>, Shuah Khan <shuah@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Theo Julienne
 <theojulienne@github.com>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Networking <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com
References: <20200424185556.7358-1-lmb@cloudflare.com>
 <20200424185556.7358-2-lmb@cloudflare.com>
 <20200426173324.5zg7isugereb5ert@ast-mbp.dhcp.thefacebook.com>
 <CACAyw98nK_Vkstp-vEqNwKXtoCRnTOPr7Eh+ziH56tJGbnPsig@mail.gmail.com>
 <185417b8-0d50-f8a3-7a09-949066579732@iogearbox.net>
 <20200504234827.6mrogryxk73jc6x2@ast-mbp.dhcp.thefacebook.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <a5829cb4-3759-6cd8-c9de-62e9813f00d6@iogearbox.net>
Date: Tue, 5 May 2020 15:37:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200504234827.6mrogryxk73jc6x2@ast-mbp.dhcp.thefacebook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25803/Tue May  5 14:19:25 2020)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 5/5/20 1:48 AM, Alexei Starovoitov wrote:
> On Sat, May 02, 2020 at 01:48:51AM +0200, Daniel Borkmann wrote:
>> On 4/27/20 11:45 AM, Lorenz Bauer wrote:
>>> On Sun, 26 Apr 2020 at 18:33, Alexei Starovoitov
>>> <alexei.starovoitov@gmail.com> wrote:
>> [...]
>>>>> +/* Linux packet pointers are either aligned to NET_IP_ALIGN (aka 2 bytes),
>>>>> + * or not aligned if the arch supports efficient unaligned access.
>>>>> + *
>>>>> + * Since the verifier ensures that eBPF packet accesses follow these rules,
>>>>> + * we can tell LLVM to emit code as if we always had a larger alignment.
>>>>> + * It will yell at us if we end up on a platform where this is not valid.
>>>>> + */
>>>>> +typedef uint8_t *net_ptr __attribute__((align_value(8)));
>>>>
>>>> Wow. I didn't know about this attribute.
>>>> I wonder whether it can help Daniel's memcpy hack.
>>>
>>> Yes, I think so.
>>
>> Just for some more context [0]. I think the problem is a bit more complex in
>> general. Generally, _any_ kind of pointer to some data (except for the stack)
>> is currently treated as byte-by-byte copy from __builtin_memcpy() and other
>> similarly available __builtin_*() helpers on BPF backend since the backend
>> cannot make any assumptions about the data's alignment and whether unaligned
>> access from the underlying arch is ok & efficient (the latter the verifier
>> does judge for us however). So it's definitely not just limited to xdp->data.
>> There is also the issue that while access to any non-stack data can be
>> unaligned, access to the stack however cannot. I've discussed a while back
>> with Yonghong about potential solutions. One would be to add a small patch
>> to the BPF backend to enable __builtin_*() helpers to allow for unaligned
>> access which could then be opt-ed in e.g. via -mattr from llc for the case
>> when we know that the compiled program only runs on archs with efficient
>> unaligned access anyway. However, this still potentially breaks with the BPF
>> stack for the case when objects are, for example, larger than size 8 but with
>> a natural alignment smaller than 8 where __builtin_memcpy() would then decide
>> to emit dw-typed load/stores. But for these cases could then be annotated via
>> __aligned(8) on stack. So this is basically what we do right now as a generic
>> workaround in Cilium [0], meaning, our own memcpy/memset with optimal number
>> of instructions and __aligned(8) where needed; most of the time this __aligned(8)
>> is not needed, so it's really just a few places, and we also have a cocci
>> scripts to catch these during development if needed. Anyway, real thing would
>> be to allow the BPF stack for unaligned access as well and then BPF backend
>> could nicely solve this in a native way w/o any workarounds, but that is tbd.
>>
>> Thanks,
>> Daniel
>>
>>    [0] https://github.com/cilium/cilium/blob/master/bpf/include/bpf/builtins.h
> 
> Daniel,
> do you mind adding such memcpy to libbpf ?

We could do that, yeah. Is there a way from BPF C code when compiling with clang to
get to the actual underlying architecture (x86-64, arm64, ppc, etc) when compiling
with `-target bpf` so that we can always fall back to __builtin_*() for those where
verifier would bail out on unaligned access? Keep in mind the __bpf_memcpy() and
__bpf_memzero() from [0] are fully compile time resolved and I did the implementation
for sizes of 1,2,4,..., 96 where the latter is in two' increments, so no odd buffer
sizes as we don't need them in our code. If someone does hit such an odd case, then
I'm currently throwing a compilation error via __throw_build_bug(). Latter is a nice
way to be able to guarantee that a switch/case or if condition is never hit during
compilation time. It resolves to __builtin_trap() which is not implemented in the
BPF backend and therefore yells to the developer when built into the code (this has
a nice property which wouldn't work with BUILD_BUG_ON() for example). Anyway, what
I'm saying is that either we'd need the full thing with all sizes or document that
unsupported size would be hit when __builtin_trap() assertion is seen.

Thanks,
Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a5829cb4-3759-6cd8-c9de-62e9813f00d6%40iogearbox.net.
