Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBR733SDQMGQEGJDJMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FA93D03C9
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 23:19:05 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id a18-20020a92c7120000b029020757e7bf9fsf320654ilp.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 14:19:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626815943; cv=pass;
        d=google.com; s=arc-20160816;
        b=SfttPaJp1qkNjnkdKHdPm9l1JFKvthndebh2j+Iq7Gv3KQot73m8ycK/p4PUQgduZC
         77oS8zPyx/P2orGk7+kc6emtJKrd8ey32yHWFhFQSLXL6xJEq54qLrxDbZmAgjpQBA3L
         urt9mkvYk+EpsS2U9dx8eRxdvdMvC4yIoxsV/YSnmNqx3xPIUQzZNC6d43TOQ2ffQ7aS
         odWr4M6wet2cOL06oMEyke4BxpxtcPpkwvaDxg7nTd3jaO3VOusAilJC0TGLuXJ+Js34
         UzQWhvXxoPtbSSTyoVZ1q+Fw476BakyZKjgZPD67ZHpsMZ5Jr/KtK1Odf+hhw63SlC4l
         he4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject:sender:dkim-signature:dkim-signature;
        bh=Rf8zYuGwBGA4xbvoIQW6D7uTSm2fMb9yyYfUXBgBGIE=;
        b=jyJRLl0SzyptAOmbhVzOr8Rco4dcDNWbaI/RpMuvSk1k14x8n7afkOaHlTA9LgS/dR
         WRhEcuEtcPK7qjwVSoVgSZw3Byd9KZOp8hhFcBpP28h71pk2CxcO4iq6DUT92Zm1MxhN
         TdWe8YEk5ALdf0nhR48rbmqPTITxMbZX3ipGlTC9pVso4cqLABW5067UfiJENc2Qe9h+
         +5INJL1hFI08L4nPSxeZDf4epcyecuheosyDp3DZW8YGeTvLBocBTCxPVLdNfU3h0l4E
         cBrGvLKVwlONdEWRpdjBAnxq/RH/4ak3wMiJpFppURxih+kHs4aopoUaQU0TbgP7l/ne
         ruqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gyu9Rp2E;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rf8zYuGwBGA4xbvoIQW6D7uTSm2fMb9yyYfUXBgBGIE=;
        b=DX4eKM0Zj/3eJSe2jPKatt/MxMtJGwfSnbSqeNt4uuMPHJwYagsV+rME40Xnph5lZy
         YsXoShd+qG/pks5Dh71xAFx/oQrDp2LTwISYeq8MWH1znlt+8zt9xD9boCkAOF911mTA
         UFdEnAe/LGmfn4mu03ju2JVjX/qjgSGKE86d5MDucdMfGbD3oj6hhMxtzo6gfh3x1SE1
         zVOMODkEX8Tvy44JCgrtn3nse3f6Pri/6glbGStWci7iFOdnoHtQGC8YeQu/NuduHSzo
         z51km8RbEJBbLQ3FuWt4FuGnhaP2dofWfDFKpuDXg9DEWVC0d+3s0ku/SUe5iGZxr79f
         iT5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rf8zYuGwBGA4xbvoIQW6D7uTSm2fMb9yyYfUXBgBGIE=;
        b=eYimKIVmi3bW/8bB3GAxViaG5VzdNFcuIliXDQ5k07u0UtMcPw3ccWyWWGdFOqogN/
         F5i4vFns52LILDTx8RSHUtFiYu1v6kwr+82kdNBQdeg3k/Yb24VZS4kJR11tV+i39qiL
         YNoQYJKOXoYg3lXqrCyQ/nue8ftM3ehTtorBqqKPmsyEjM8tQ49e/mVFmejXg1ZU1sqn
         rle9ci/MUUlhFefdraR1lCqalJYYwhrMNdYKiFccsAyn8cza0nFGawgY4jhJ0u8unVAp
         OgJeVsgJ1VRD84mgTByhbpBAvsk8pKkXlPzFeiUWU5vxNBDdCmkthnsKZTlB/b89/9Qj
         qDEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rf8zYuGwBGA4xbvoIQW6D7uTSm2fMb9yyYfUXBgBGIE=;
        b=ujTSK6GW7VUZUnh5JnJtBysX/DkNqKdvtoGT+9wmhv6dLbmgE9jAuJbAFgP8QS1H1S
         G8SAhBXJ+AW9xa+w7WLbpRtFy5KJZHEqNiqQOkAFxziHLP2jbYOHT1zZvgWpssfGMtuh
         QDNSQBWznVQy4CXNVtytJUJ+tJh7ZKNqxtpRB9bpHHnE5tYDC0q2GbcRROvwsm42Jt7+
         CKZdvvaKasYMZ56dz27wdaJVeaXRyUkiDYrjCLdzywhArMbwoE3Kv2SVa0GL6VTEH2SJ
         B6oXKD9oIqCRTDvc1Zq6XOInFWu2E4BrdEeYFPbp18dYgvdnnvCx4T7HqO2tuEbtsgQ9
         SddA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SJzirhkRM62vCp3StZ4qe1VVTJhvUsOTXbVqtj8fMCD/pesmi
	pJ3wokThJ9gMoxZqooDvpuM=
X-Google-Smtp-Source: ABdhPJxItQ3kxl0cEgXDDbymKJxaapfq0ANljjHfrABfIU513zezc1p/qadUhyFGTtVyjtI92x4iKQ==
X-Received: by 2002:a02:90d0:: with SMTP id c16mr27983340jag.106.1626815943591;
        Tue, 20 Jul 2021 14:19:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d02:: with SMTP id p2ls8918ioj.6.gmail; Tue, 20 Jul
 2021 14:19:03 -0700 (PDT)
X-Received: by 2002:a5d:9f11:: with SMTP id q17mr23086614iot.62.1626815943172;
        Tue, 20 Jul 2021 14:19:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626815943; cv=none;
        d=google.com; s=arc-20160816;
        b=Wgx53fFz3yMPaWOSmHG9c71dl8tSyNd1wMX1Eq7cT3zJnumCp0UhncHVVJKfycMQ5U
         /SArtZaWwNcGwMegaG8hP7RvuvMwGK0r/K19ROL1MARtosZLrD98dYgz56E5mVd/SG1q
         TIOflnJ+yPgQ8reTmsuk5AQNXL2Gu+KZwRf1OgNuDDNsGlBWiB3dzFQdTUgSR15fcKMI
         ilU9FcnRpjbhfzkEsQZfLd4GwlCekxkuFM1eEej/zuK64BaegqagkhxrzxX+1VjbJES4
         a/9qyHWZr3hU36njz/4SeD4d3gmg3XdfftK/WX/UQxxNcNjIp1lIWt/uy6phnVByWmGs
         6jFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:dkim-signature;
        bh=B8o/q41XapjmWGG21qetVfphUKyjf05uB802S7fF9ZM=;
        b=OIJUjRXqyLchApt0dfZqiwqrnFZJZIeMgpUtBWKdDWtoAcHrYjyCLTNrEVXUSilFOZ
         i04ZBeSzOsR0AIAGmIAx9Ahrd8ZHFRcZp8CN1y1zfT7RnMRD8++/ccptiH4hf6sUecge
         dhuGOINqQLoxbEbV5667UUjSJweY/mHYpVYkuw70NprvxoyuaDomvvGazGpldPDvs2Lu
         MheRIyxH8xdhfj2+dfELHCo7yJwrI6VbHnV8GvRaEzk3WtUVqFWb0ThCQBmwA3XEfBS/
         +8ij9Xl7VaqwHDQmVULXX+9tp6uOKKKdTgkXn5p4G0wvO+mliK3BWlBhw0jm/205QbMP
         g0HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gyu9Rp2E;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id w12si1666867ilu.1.2021.07.20.14.19.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id p4-20020a17090a9304b029016f3020d867so392920pjo.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 14:19:03 -0700 (PDT)
X-Received: by 2002:a17:902:e807:b029:12b:43ce:18dc with SMTP id u7-20020a170902e807b029012b43ce18dcmr24801837plg.70.1626815942597;
        Tue, 20 Jul 2021 14:19:02 -0700 (PDT)
Received: from [0.0.0.0] (jp.bgp.twd2.net. [2a0c:b641:571::1])
        by smtp.gmail.com with ESMTPSA id d2sm25025439pfa.84.2021.07.20.14.18.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 14:19:01 -0700 (PDT)
Subject: Re: [PATCH 3/3] RISC-V: build: Allow LTO to be selected
From: twd2 <twd2.me@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <nathan@kernel.org>, arnd@arndb.de
References: <20210719205339.1023572-1-twd2.me@gmail.com>
 <CAKwvOd=H-UN7dgHYgsvubv7t82UiPaOHCF09GAi6kTvjxpT4iA@mail.gmail.com>
 <475c3797-e048-97bb-095a-c55aff38bc42@gmail.com>
Message-ID: <970c36ea-c5a6-2b47-3024-7cbbf428ebfa@gmail.com>
Date: Wed, 21 Jul 2021 05:18:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <475c3797-e048-97bb-095a-c55aff38bc42@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Gyu9Rp2E;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::102d
 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Also, I tried `defconfig` with Full/Thin LTO.=C2=A0 It can boot and the
busybox shell works.

I'll put this information into the next version of the patch series.


Thanks.
Wende


On 2021/7/21 2:29, twd2 wrote:
> Hi, I just tried to compile with this patch and `allyesconfig` except
> COMPILE_TEST, FTRACE, KASAN, GCOV, and XFS [1].=C2=A0 It finishes with no
> issue, and takes ~22 min and ~25 GiB.=C2=A0 BTW, the kernel panics during=
 boot
> even built with GCC, so I didn't do further tests :( .
>
> Command used: ARCH=3Driscv LLVM=3D1 LLVM_IAS=3D1 make HOSTCC=3Dgcc vmlinu=
x -j16
> Kernel version: commit 2734d6c1b1a0 ("Linux 5.14-rc2")
> LLVM version: commit 1b61d837b9d0 ("[Inline] Add test for PR50589 (NFC)")
> The `.config` file is attached.
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/1215
>
> On 2021/7/20 5:25, Nick Desaulniers wrote:
>> On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>>
>> Consider adding a little more detail to the commit message.
>>
>> In our experience with other architectures, we've hit numerous
>> compiler and kernel issues especially with allyesconfigs. Has that
>> been your experience with riscv?  It would be good to know if you've
>> hit issues with LTO plus certain configs, so that we have confirmation
>> others have seen these issues and so that we can triage fixes.
>>
>>> Signed-off-by: Wende Tan <twd2.me@gmail.com>
>>> ---
>>>  arch/riscv/Kconfig | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>>> index 8fcceb8eda07..b593e5031c79 100644
>>> --- a/arch/riscv/Kconfig
>>> +++ b/arch/riscv/Kconfig
>>> @@ -34,6 +34,8 @@ config RISCV
>>>         select ARCH_OPTIONAL_KERNEL_RWX if ARCH_HAS_STRICT_KERNEL_RWX
>>>         select ARCH_OPTIONAL_KERNEL_RWX_DEFAULT
>>>         select ARCH_SUPPORTS_HUGETLBFS if MMU
>>> +       select ARCH_SUPPORTS_LTO_CLANG
>>> +       select ARCH_SUPPORTS_LTO_CLANG_THIN
>>>         select ARCH_USE_MEMTEST
>>>         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>>>         select ARCH_WANT_FRAME_POINTERS
>>> --

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/970c36ea-c5a6-2b47-3024-7cbbf428ebfa%40gmail.com.
