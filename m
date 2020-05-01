Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBB2XKWL2QKGQESJDZ64I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 363621C215B
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 01:48:59 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id j19sf5380381ejs.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 16:48:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588376939; cv=pass;
        d=google.com; s=arc-20160816;
        b=fE3qMhpy6qUzUOc0GZ+aIKz/ceMM+A2hwN7U1w/Q1Ur0BBfaKW5daKbikGm0e6cJ73
         QcBdzzrM4IpRvIt3YrmjYhg8DOcfenBREfmgIA+TDRsme/AkXoGEXpEfpLGh7pR2L+cr
         IxkIynNbKh3fKBAoPrMoBs05zM2eYKexWam/GuPI3yuFTCwXmZyh7nyEzwM+O5bFsTt3
         0bOit6segK6DxLGDniyJKBes064K4N3bwvQEbTdLxvItYVJ3/MPPcwt8Zz+GvoQyOCT7
         denC3PaXx67MAkpffE8LQIv7xqyBdx6ak/67vRTMX3LgC9BS9PMnCCGYiOzxMf4/rGws
         bLhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=oX1b2ycz6ZleyE3pPAG8kslnL1c7b8xBmHjqVomJGsg=;
        b=iWSqDLTRmPQKHvf4uYUOlBtRUhcfKNHVQTFMxne8irovs7ci/FnjWj5Cn7RkzpSiVr
         4fqpwzYzS6yfaMhYg71O9aH6LmKW0LFI+boJr0eGZfQFOUPz2fnFYSN9Fv3JUwuD9uc3
         WaL3EneKCjNoDFi4e1RKtaG2GSkejRW+BknIdCvkjxIiLK/UgIvX7ER5vGo+2ANJUSbl
         0G6BVgoqTIxSeOnxjypYMNUkWzG31zThTJTz9Xl8Qmq3urbf1SgaoKB6I1Y8iJptV3XZ
         lLUKtK2oYpSh56mVCuOzsalFHxQaKc63uLvIaLfHT4WhIcOJ7ZQPcjjQVeTcVR0imeJO
         6PSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oX1b2ycz6ZleyE3pPAG8kslnL1c7b8xBmHjqVomJGsg=;
        b=lihT3ZR8BNFzd82U3ctckhv6dItVJeqUGNWylqwv3gahuSqnMAs5wE+EQ93dC2youg
         JgVNtmgaMVXxn6af6zcU/7VWdAl4vscAe0kM210DvwrElqlHuh1f+c+IF6YDXWQkudBv
         8GwMrYMzbrLY0YFY9GhfMSW39CFK0S0L4Rc384vg0LhKbw9SH/1mvXlwp5FvGG33EuXG
         F7m5snk5CDk6fdTSQfqOKnbviokWmhJGKQKQ9ZCyze5oqUJoXSl9dgr11U0HwcQvjtx1
         Gl2yib4fiHAunOeM97AFRPDDYlCX757dtkHL3lztCLeNgxKg/n0mcEWWOv7GeQGslqoE
         n9UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oX1b2ycz6ZleyE3pPAG8kslnL1c7b8xBmHjqVomJGsg=;
        b=aF/fzmns4mp9KvAhQYZrJ1xigIy1+6uBf7qluekydLhjpijnAPXyJePuIg539VYPUw
         Fyhgs3RG4W5ixXeQNjVtgy1moH9BxgdxQXRDThxmmE2I05av/byD0/A4VReIvIQgZOxd
         O8ky8QUjE33gaMh7jlwBbbmM8UtKehVnMPvmbj1SzaIBUg51rmCegx0yaUvBbz3uJ1D4
         g0pzGUVdzEIqEcO99RB1pFMfW7x+Mcz5c9vBn2OdpcFaxiMkmh8cqZbFUNjXqp5tJkgj
         NCTvUZcu/RGJtkqY9DKUW8ThcoEvZTzOCnWlWFCdxFMOMB5R4Vtje2jYiAk03ZejUUaR
         sN6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYoY/Zsdl+smahdCkVFtnGEEFis/2pmsLK2tS5O2eEV2qLib3+C
	IED89zYA1R2T9nw01tVmWmc=
X-Google-Smtp-Source: APiQypI1uB9Cacext8cFHesUpbYEZDoQzDv92xDb22HhWr89Uj1YduY179kRd/YtxOfG3aIpnTNkSA==
X-Received: by 2002:a05:6402:558:: with SMTP id i24mr5466494edx.347.1588376938762;
        Fri, 01 May 2020 16:48:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:ca0c:: with SMTP id y12ls2946817eds.7.gmail; Fri, 01 May
 2020 16:48:58 -0700 (PDT)
X-Received: by 2002:a05:6402:3056:: with SMTP id bu22mr5741430edb.192.1588376938187;
        Fri, 01 May 2020 16:48:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588376938; cv=none;
        d=google.com; s=arc-20160816;
        b=I9ial4mek0CzNRnY52yM5IdOp/fwgIXPIRoJ6gxh7O5QdkTLTzXjI4BxzGYn4HQG5F
         Vw9dEx1J4zMpSA/Q14GaYKawTymim/g/+8bJIC//JcIPn7BvPNYj5Miyb4obfigo8sff
         ntd0jMBAl9oICFrtKTZISRA0jYKL+VBjaDZhdVy3FIqh3UN+FkK5dZJ3tNS5U9RILIwt
         Md8/vqkElHXBA6pAheazu8wxrzGA9qViRv0OrMyORgvyEtx4csEMLMHIXvCwylLwiHRk
         U90x+wvMYDe+IVRfOYkCQ73IHpll4crGeKQpZ2uju807i5TNnOD8HnVqYxtuJBuAbxFZ
         z24w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=P2y92sCsuUPEDlyu9BA0Wq/18EZ31sB1WJx13O8wxq4=;
        b=I+ZqH2w5SEdWBFyM/Qk1JbryXii0d0VN3Yl4nSDHROU9VkbXVOTqqqWNp3mJJaJFzC
         gG876q6sWHYIj47HB73NYYTSUjj6fxaqo2igudDnMjUGB6BXynGUJZiVWRMm9LflyrDe
         3zzGGGoyxmtQjjLHfL6aKuOERa2rm62CWG6tDQSrnMbpXU/igAhxVzWK06/pflXdmy31
         vlHvqvsjsrUafyeZ8Spf6QZr42pQt9E3izamf8sSk73sb1OhRV1zz6V8bmQjK+ZuYzD9
         JPmNOwEgci30gE2P4BgJd9VmcjOsaVmz+qg/o+X+PR1MpzSpv54Z9xp547AR4lJblHtG
         FIZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id l22si342661ejz.0.2020.05.01.16.48.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 May 2020 16:48:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1jUfOm-0004Dg-V2; Sat, 02 May 2020 01:48:53 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1jUfOm-0008u3-Ja; Sat, 02 May 2020 01:48:52 +0200
Subject: Re: [PATCH 1/1] selftests/bpf: add cls_redirect classifier
To: Lorenz Bauer <lmb@cloudflare.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Theo Julienne <theojulienne@github.com>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Networking <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com
References: <20200424185556.7358-1-lmb@cloudflare.com>
 <20200424185556.7358-2-lmb@cloudflare.com>
 <20200426173324.5zg7isugereb5ert@ast-mbp.dhcp.thefacebook.com>
 <CACAyw98nK_Vkstp-vEqNwKXtoCRnTOPr7Eh+ziH56tJGbnPsig@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <185417b8-0d50-f8a3-7a09-949066579732@iogearbox.net>
Date: Sat, 2 May 2020 01:48:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CACAyw98nK_Vkstp-vEqNwKXtoCRnTOPr7Eh+ziH56tJGbnPsig@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25799/Fri May  1 14:11:09 2020)
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

On 4/27/20 11:45 AM, Lorenz Bauer wrote:
> On Sun, 26 Apr 2020 at 18:33, Alexei Starovoitov
> <alexei.starovoitov@gmail.com> wrote:
[...]
>>> +/* Linux packet pointers are either aligned to NET_IP_ALIGN (aka 2 bytes),
>>> + * or not aligned if the arch supports efficient unaligned access.
>>> + *
>>> + * Since the verifier ensures that eBPF packet accesses follow these rules,
>>> + * we can tell LLVM to emit code as if we always had a larger alignment.
>>> + * It will yell at us if we end up on a platform where this is not valid.
>>> + */
>>> +typedef uint8_t *net_ptr __attribute__((align_value(8)));
>>
>> Wow. I didn't know about this attribute.
>> I wonder whether it can help Daniel's memcpy hack.
> 
> Yes, I think so.

Just for some more context [0]. I think the problem is a bit more complex in
general. Generally, _any_ kind of pointer to some data (except for the stack)
is currently treated as byte-by-byte copy from __builtin_memcpy() and other
similarly available __builtin_*() helpers on BPF backend since the backend
cannot make any assumptions about the data's alignment and whether unaligned
access from the underlying arch is ok & efficient (the latter the verifier
does judge for us however). So it's definitely not just limited to xdp->data.
There is also the issue that while access to any non-stack data can be
unaligned, access to the stack however cannot. I've discussed a while back
with Yonghong about potential solutions. One would be to add a small patch
to the BPF backend to enable __builtin_*() helpers to allow for unaligned
access which could then be opt-ed in e.g. via -mattr from llc for the case
when we know that the compiled program only runs on archs with efficient
unaligned access anyway. However, this still potentially breaks with the BPF
stack for the case when objects are, for example, larger than size 8 but with
a natural alignment smaller than 8 where __builtin_memcpy() would then decide
to emit dw-typed load/stores. But for these cases could then be annotated via
__aligned(8) on stack. So this is basically what we do right now as a generic
workaround in Cilium [0], meaning, our own memcpy/memset with optimal number
of instructions and __aligned(8) where needed; most of the time this __aligned(8)
is not needed, so it's really just a few places, and we also have a cocci
scripts to catch these during development if needed. Anyway, real thing would
be to allow the BPF stack for unaligned access as well and then BPF backend
could nicely solve this in a native way w/o any workarounds, but that is tbd.

Thanks,
Daniel

   [0] https://github.com/cilium/cilium/blob/master/bpf/include/bpf/builtins.h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/185417b8-0d50-f8a3-7a09-949066579732%40iogearbox.net.
