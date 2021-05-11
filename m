Return-Path: <clang-built-linux+bncBDDZ5LVW4IHBBEUL5OCAMGQEGB4C76Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3520B37AD76
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 19:57:39 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id y15-20020aa7d50f0000b02903885ee98723sf11312565edq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 10:57:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620755859; cv=pass;
        d=google.com; s=arc-20160816;
        b=eDv1nySF3meEb1qIGDafvOlqcYpWVpinvJjbc2W//AZ4VWKKccQVuHvnNQBzLlmLCo
         JO1szk79+TnzS4aXUpG1Ot2v4ViolR0DfJYoD1eMEk0CnupzxDCQvlVNj1Jeo/cERd8y
         yg0ml86GiIPX+rEG7uVRlfitvpx6MZhqn+bTztAaLSyzq4LsjJjlh4eUPXf43RtXGhzM
         kEQKX/FCpIv/lCuu6HHoa8EZCXEMRvaTo0/5jDdMQE3LQh83+BxGv6fGA79bPt7Lj5aY
         giYbhJp0TRTrBKr2E8dfzw8GKbM/+EN04fw9CjnmlinzAUHb4nwRXvKYp9z/uAUxyYPq
         dcZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=SOrRtNL9awKJAyoOZPpKDm+YpWvda74Ub9ozSKIdjFI=;
        b=PZSnt0e8P2bcklLL6BK0lAA1hzG/DP767K36nW/5HhbbFbKL7/w/UD4F3aRILGMkPq
         LzMaiAJ3ABL1+yl7ySzcriT3wdsIL1fd1G99YokFX5ifuxk88rvtEkjLQl78FpFQaYOj
         v3C4WWfVa3P28QAeo8VESIfdXUD/7R6LZqKuTV+MUdVvxJZ+nSoZiFFopXjanpes83Sv
         yF81Z12v70LvLI4YiLQCdQIGKsl48/LlDkt5AisOfW2NZNoIEWkYIKryqgcEjj+PhWcl
         hs7MIrNKJ2b6fmYgDq+bNPmM7A4j2e2UUCWTF93r0ncGxLwKxO8+g853s2f+vN4XXUSR
         yheA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SOrRtNL9awKJAyoOZPpKDm+YpWvda74Ub9ozSKIdjFI=;
        b=PrZF70TfDmSBvfgRAXKOVs1+hN073QdK+TxPLFrc5lXRtQifO6Z1bIP54LEc/4r7dl
         gF9gCOQYsRn+HOUx2Z7r9JVdlj/QkEFRSNLh7Vv/yCtD+vCfwDRxcGLAeuAhQysvbunf
         F0pZ3dMbP2FZ99u6TBdZdLsUhd+wjiF+Gqlr5b+51NOuixvpaxntkCpa/djQotNiwvMd
         03VC0Wc4VLEtiOeD/Dw/NChBduR53NzfeuD72zvmpRZ+u+yYMDYLsHrTX2glWtHLYlgi
         Qqtc52O/hFLeyFYS4hj9XXyde329lSHqIy5EVvV9Zwx3KWcRTGTs3l/udM8jcqJmFwvW
         KGIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SOrRtNL9awKJAyoOZPpKDm+YpWvda74Ub9ozSKIdjFI=;
        b=hJoaw+IHzRDG8Nb6IbayErbApzjogk9gEXLcanHFIk3vpwAAbNRMAU8QbIJJBs0gBY
         KwUe9lyCcjStdQJIIyCkQ8x+fw6hiGDFh9zruZ1/0XWoB7BNxZ4jJya2+PZWCKxaOolF
         m/phSzRbW6a92RnRfJbjmuCmrhAXCo7LglKoB5IHZWQtn38LsY9LAFFSNc9RvwRQYrak
         dACFpcjWwnlw6LRKFvf0tGwXWwNXv8xUoRB6uAgajervUpeQkkM1vqHBsX/U6OSenlzR
         pfoMgOZ50lyiCVwiWcS01z0ru5dv9ys4B7l06owVlGfoBGhCLlW/ke7WazXf4bGu1lJc
         B8Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BqRr6j4aA1dqot6sWXgbzbu6Q4z1mAj97n49KVDpFtlYk9I1U
	6yebVROMvRpzMIk3BK3YWCk=
X-Google-Smtp-Source: ABdhPJxVWPsp7FfyzS9SDIlVSXd14AlrE6Grdcff0RhDDkX1a0Qe+5+w+Ybw4W3pQ8kMf+jGW+Ebqw==
X-Received: by 2002:a17:906:35d2:: with SMTP id p18mr32594144ejb.339.1620755858990;
        Tue, 11 May 2021 10:57:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:ca0c:: with SMTP id jt12ls8584944ejb.11.gmail; Tue,
 11 May 2021 10:57:38 -0700 (PDT)
X-Received: by 2002:a17:906:538a:: with SMTP id g10mr7974062ejo.243.1620755857995;
        Tue, 11 May 2021 10:57:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620755857; cv=none;
        d=google.com; s=arc-20160816;
        b=k3zywNuvmL6lUKC6vkdVjy75kbM10uykY3yGRW7pli4NbWSmd3bP9C2Xn5WDu7bPZG
         gKS6uuxf/8Xu3vBHeoVMARrepYfvsFIFUeTdmRYPhvebOstDS9u/N5z3MmdX6JXWyajd
         3vrnWasGAM/KKk8ZDRAbveRl598s8AUnWEXBsNP5tlKkQgJsHmu7yqRN58SZ8QqXkJic
         MrdLOGk/hPV4O4/uXWezPzBM7W3d+7WHJVct09zNJfsDLNdmIPk7BWpESzkuHm/vW7I2
         pCd7Qw+aNRPiB+m+ps9KnOausLEValUWCQO/ghJ2W/aA0ZB4m3s+mbljy5MUgnU3CTXE
         0bZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=94ufJ3ormqHNZspvl8FvlXfnb6f1wmMKW3qzHjBjIRE=;
        b=dfBQAYhRNMuZUJDswSDe+dZfA9k1jO5wV1gbzwBsZ8nYwZhWp1nuUR6xxbCHtD//U9
         7S52oh+3UQwEN5MY8ZjTRzxxHc/FzPp93llAxGcJew0UlsQHEFJ2tHqCnUJVsKBbefvd
         TixVQ1ggVvcfs7Jx1VoiKHGRYmoAbPYuXAuo5tFAlNBd9Y6Rfjax5kgn91tpEi1RkGvh
         gyQQGKrJ4swDlNVDChGJPz//jS44IvCa3uMoYn6w0ImZgTaI5w/EQhynEqqhTp79MskC
         SuO64/t05kSmP5QpsoVjD9BFCDnATTrDNOymGHBo3787MYjr7trLuLInX6qONCVYmBsD
         hv7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id h3si1109322edz.1.2021.05.11.10.57.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 10:57:37 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from mail-vs1-f72.google.com ([209.85.217.72])
	by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <krzysztof.kozlowski@canonical.com>)
	id 1lgWdV-0001Db-Iv
	for clang-built-linux@googlegroups.com; Tue, 11 May 2021 17:57:37 +0000
Received: by mail-vs1-f72.google.com with SMTP id d10-20020a67e10a0000b029022857e9d007so9177779vsl.14
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 10:57:37 -0700 (PDT)
X-Received: by 2002:a67:3113:: with SMTP id x19mr21194671vsx.40.1620755855156;
        Tue, 11 May 2021 10:57:35 -0700 (PDT)
X-Received: by 2002:a67:3113:: with SMTP id x19mr21194644vsx.40.1620755854977;
        Tue, 11 May 2021 10:57:34 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.48.6])
        by smtp.gmail.com with ESMTPSA id k198sm2338299vka.37.2021.05.11.10.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 10:57:34 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] memory: tegra: Enable compile testing for all
 drivers
To: Nathan Chancellor <nathan@kernel.org>, Dmitry Osipenko <digetx@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20210510213729.7095-3-digetx@gmail.com>
 <202105112125.VctfC6sX-lkp@intel.com>
 <dd0b550e-76a0-bfbc-9d6f-5d867812046d@gmail.com>
 <06addbf3-0090-b76f-65cf-e0c10d284c69@canonical.com>
 <3ab5d50b-4955-7144-5d1d-d44cb0892d65@gmail.com>
 <YJrARxhVD7QM/GPv@archlinux-ax161>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <6fc3e47b-cef6-0d78-0578-551608856ae6@canonical.com>
Date: Tue, 11 May 2021 13:57:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <YJrARxhVD7QM/GPv@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: krzysztof.kozlowski@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 11/05/2021 13:35, Nathan Chancellor wrote:
> On Tue, May 11, 2021 at 07:00:34PM +0300, Dmitry Osipenko wrote:
>> 11.05.2021 18:31, Krzysztof Kozlowski =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>> ...
>>                                       ~~~~~~~~~~~~~~~~~~~~~^
>>>>>>> drivers/memory/tegra/tegra124-emc.c:802:26: warning: implicit conve=
rsion from 'unsigned long' to 'u32' (aka 'unsigned int') changes value from=
 18446744071562067985 to 2147483665 [-Wconstant-conversion]
>>>>>                    emc_ccfifo_writel(emc, EMC_ZQ_CAL_LONG_CMD_DEV0, E=
MC_ZQ_CAL);
>>>>>                    ~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~~~~~~~~
>>>>>    drivers/memory/tegra/tegra124-emc.c:154:36: note: expanded from ma=
cro 'EMC_ZQ_CAL_LONG_CMD_DEV0'
>>>>>            (DRAM_DEV_SEL_0 | EMC_ZQ_CAL_LONG | EMC_ZQ_CAL_CMD)
>>>>>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~
>>>>>    13 warnings generated.
>>>>
>>>> This doesn't look like a useful warning from clang, it should see that
>>>> the constant value itself isn't truncated, hence it should be a proble=
m
>>>> of clang. Do you think it's okay to ignore this nonsense?
>>>
>>> I admit I also do not see the real issue here. The DRAM_DEV_SEL_0 fits
>>> in u32 and there is no other bitwise arithmetic than just OR, so why
>>> clang assumes it can have 32 most signifcant bits toggled on?
>>>
>>> +Cc Nathan and Nick,
>>> Maybe you could shed some light here on this warning?
>>>
>>> Dmitry,
>>> In general you should not ignore it because:
>>> 1. This breaks allyesconfig with clang on powerpc (or it is one of the
>>> stoppers),
>>> 2. We might want in some future to build it with clang.
>>
>> I meant to ignore it from the perspective of the memory drivers, i.e. it
>> likely should be fixed in clang and not worked around in the code. Thank
>> you for pinging the right people.
>=20
> I do not think this is a bug in clang, gcc warns the same (just not here
> in this case): https://godbolt.org/z/e9GWobMnd
>=20
> DRAM_DEV_SEL_0 and DRAM_DEV_SEL_1 are implicitly signed integers because
> there is no suffix on the literal 1. DRAM_DEV_SEL_0 is 2 << 30, which
> can be turned into 1 << 31. That is equal to INT_MAX + 1, which then
> overflows and becomes INT_MIN (undefined behavior). INT_MIN is then
> promoted to unsigned long because EMC_ZQ_CAL_LONG and EMC_ZQ_CAL_CMD are
> unsigned long due to the BIT macro, resulting in the gigantic number
> that clang reports above.
>=20
Thanks, good point.

Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6fc3e47b-cef6-0d78-0578-551608856ae6%40canonical.com.
