Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBNFFWGEAMGQE2M5TGSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FFB3E1DB2
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 23:05:58 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id v9-20020a17090a7c09b02901778a2a8fd6sf11981831pjf.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 14:05:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628197557; cv=pass;
        d=google.com; s=arc-20160816;
        b=HxAl/I5BXcSzvRcow26tAfoZV3+82B0M3ymCROyNioRmvDOUul3iuE76GS74VmiXNZ
         ditH7nXJd/KA5ttTkoeHvC4GpNYsqsElTZORa/QurgCSuAnxXu1e90UBDOAWEjm/t8fT
         Zf5NGduBow4MFeK/WnRqMs8D1JLAAECsgdZ8D9laNCMCX+mK1gTT0L4Hx3GLV3Gdhpwr
         16Yk71OUOUlHvp9xbaQtouipjOE1WjMzja2kKNSeTN51LWEUM5OxLnHGSUF0HnHRjiHs
         Vf5VXbuZhJ8Y3CFRlSyUDud/HX0IErwTTUdqyaBxHb1rVRe0skbm4/3N5BX3sGSRro6Y
         kD1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=slO26Rib4amqEPYS42JbjmX9rnBDvOK2enD4pa5RnR8=;
        b=HS41bSndRAJriIpq1blRjqAmq5iVQAF0gtNFa8lcn7AZIUECoqLB2qlfBlalVQX405
         ZYQoTrn7i12Fdfzp4IlkJ7egSlONawjcKWNRPlcALKjms1FBPcUmMIYfgc0G/pPchfaq
         5edgVHk52jdXYbKxI/+FvFGqlz/kF3WdhU+hbDa4PGkPOKpUVC1tPCSedgnAbT0CNQo1
         9XMu9/4vUpmpfM8PAVvIp4o5yPZIMpsCT1e0b4ImuqgsIhvT3roX8kP8pA6b9MR/UOeO
         Eek0KG5DXLuTPhXksK1zYChbARL0fltmKWPk5HxCuGJu2e267DdwpCNlkXGh6K0aXxKe
         DNsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y5GOTUdp;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=slO26Rib4amqEPYS42JbjmX9rnBDvOK2enD4pa5RnR8=;
        b=P3qfz0bix4uzsmeN3cyQLCjvz5azhYqF2G2lWBnmLbps5nIipWb8Ki1j9NcBBHQQr1
         1qUaue9i5r14+ZjJvl3Z4oUsqIbNhQXdYH3Me9+VZRTQdLnj/ikZ8h/dYZzeUb4iNBO3
         iNpC47WOhctpoapyv6kDcasHq6h4XR9xhKokohOJdBsvS4FzSgf0N4Dx8KwKJkBDlY8n
         UXbv7j/iu7Y6dAx8ihoZ8CXcD95oBKXJoj6/BF6/joesmlVyR5cAX5vIWaES6KqPggNC
         LCBr6sbFySzI8jrtYvWot6G5agCKcCgYVZgsdtS9rg0OXffBMDYtI00o5jAu98RB0f6B
         82yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=slO26Rib4amqEPYS42JbjmX9rnBDvOK2enD4pa5RnR8=;
        b=G2I99ZGhMRPqrHqZRYaGM5W5ZGj0TgX8j/i6qc0gLp9wh55SFyr/4QKPHf/UeMHkNB
         cLiho9GQBY5UjeJenEjUptFYtK7QPg8yv+QH2qg0DfL9hB5O9ZIsoC66db/rn/JoTB5U
         Uo0W+2ft+nhy6o68BgzF4cZWRyFw5Pus4cFDYRv5RUGUglvuM2Ow0OinfgC4s5ISmIhN
         DPdxOuIGePS1CSiagyGan5ePwwW6d29gjYRYWBWIgxE60LDReh4M7HPq/48i6UPxanY2
         cj79sNq2E586t7qn6Bxi+Gqie5/Hb4fDe7NtBXoOKGZEHr8AM5a2FG6bJtfKBDmVhpsO
         t1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=slO26Rib4amqEPYS42JbjmX9rnBDvOK2enD4pa5RnR8=;
        b=uWNq1vFckVabCVxlEQsD5rOcAMs8DurSxZxr+ZcBIWTcZNoSUTWUZYTj+SP6Mbwt+H
         UGQbKbr8WmiOhI/s+hVFus8UtwJvTZm6mDdoZxnsdgoTRxv/KbM5cuS1qyAiF56ONRtF
         Wesgr/VhtIhqlAWQQeMjrJuVPZdqlSSpIE2a/f1J0dBcSe9kK1X+/2u99oc8wh08IOn5
         yFoiI3SjkfzEN3BHROG0gRjg3Ij+WXLluPunpTXj65Ud14JVXkw4yYkryrI+B5V7yVXR
         tv3T+bZZ0r5YPcVlpDWZieIklBpVWo9NZy5gnjEBiXUX+n8mEYzvmI+gpf2pbZ34k5Nk
         5upg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CeBetkcComouKhItFaHmcbcvLTXGvetAdLOwknAZPWbm3A58x
	ZeZEo1lZXxuEw//S7ZOl4Bs=
X-Google-Smtp-Source: ABdhPJyQ43tadBuxbzsQnx71w7OSvm6ld+xlrRsLxfr/lL0unVeYxYyiirlT+d8IKPav54sPoKgi9w==
X-Received: by 2002:a17:90b:1bce:: with SMTP id oa14mr6456341pjb.221.1628197556848;
        Thu, 05 Aug 2021 14:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a38c:: with SMTP id x12ls3273092pla.6.gmail; Thu, 05
 Aug 2021 14:05:56 -0700 (PDT)
X-Received: by 2002:a17:902:e5ce:b029:12c:403b:7fb7 with SMTP id u14-20020a170902e5ceb029012c403b7fb7mr5529865plf.68.1628197556199;
        Thu, 05 Aug 2021 14:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628197556; cv=none;
        d=google.com; s=arc-20160816;
        b=Zav58F3gkrid8tac1vaoCAvzqqMiVQdq/BPjxJmv/NA1VuuhM1oNqorgquA1bk+Jj2
         62q1MdpGDci2eXSRUnmRvbaDgAsrS5/Iav9oxqYPvK8K/UxceQZvjeaSP4R78MCpY0q5
         Z5zr/XS8r6iJFW4QzhyZwZM77tmlnvrpStiq50PFQ/zENQ2zJYfcwnxclfch5llbjSIz
         SoFjOzosRwNod7hoKlGlx91/dA5V2XjpxNKuRcdsnMmImxIyEjf/mJkwJCNnN2jl0GYL
         j1kAsUoUYhY2T5CMSewCtxbXqIZCmI0VzZ0TGcpZ0pw8Fh55dDN80O82TA4ZtUbRvOcs
         y8ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=1A6zVE75UmYU5dEKrc8fYnAEYlLr4AgyRlgzHl1LV5k=;
        b=WN3+bFAlDWvdKMHLQIMgMu6ZnxbRVqlz1xcfZGc2uInfW0EFRPhwY5ZxhdmWu9cjP9
         GrvmKiwpbSzFLiS0Ja/6b+4ETTl96XsREWfuvl3tUCLOD0XzXpopvUdvSXMFaeK7z7KW
         hY1UkVtOdjAOSrP6+0/PhZDH1C4U16DpMhOHQpiNi3bwYBGF6eEv2ClrYRTIn5Wep6kz
         rCV8Khua/wJtN1tMJaeeXdn7MPOLmEpYCOo/uzARLnD6cp+n1x4TkAj0x6ZMro5my6hs
         FEu2cw6KXnsZpbSHiZzGe7pPPorvi19O7pe4Sq4dX65l8KSNverhnp1pjkDbVLiUevv/
         I3Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y5GOTUdp;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id c23si268245pls.5.2021.08.05.14.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 14:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id o44-20020a17090a0a2fb0290176ca3e5a2fso12691464pjo.1
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 14:05:56 -0700 (PDT)
X-Received: by 2002:a17:902:6b09:b029:129:c61e:e31a with SMTP id o9-20020a1709026b09b0290129c61ee31amr5480995plk.57.1628197555914;
        Thu, 05 Aug 2021 14:05:55 -0700 (PDT)
Received: from [0.0.0.0] (hope.twd2.net. [45.32.56.123])
        by smtp.gmail.com with ESMTPSA id q21sm8694240pgk.71.2021.08.05.14.05.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 14:05:55 -0700 (PDT)
Subject: Re: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
 masahiroy@kernel.org, keescook@chromium.org,
 Nick Desaulniers <ndesaulniers@google.com>
References: <mhng-4af8be52-7620-478b-bf69-73306a2ffc3b@palmerdabbelt-glaptop>
 <a6615b69-d99f-220b-d980-1f5f40ee2999@gmail.com>
 <CAFP8O3JKw5CHiYwM3Pqj5w3vnib0UW2PEs8HRBORci9dSAXwwg@mail.gmail.com>
From: twd2 <twd2.me@gmail.com>
Message-ID: <ea692a6e-5920-e03a-6083-59fa833d6437@gmail.com>
Date: Fri, 6 Aug 2021 05:05:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAFP8O3JKw5CHiYwM3Pqj5w3vnib0UW2PEs8HRBORci9dSAXwwg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Y5GOTUdp;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1032
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

Hi,

I think we even don't need this option after the issue I filed is fixed.

Thanks!
Wende


On 2021/8/6 4:18, F=C4=81ng-ru=C3=AC S=C3=B2ng wrote:
> On Thu, Aug 5, 2021 at 1:12 PM twd2 <twd2.me@gmail.com> wrote:
>> Sure. I'll send a v2 after the LLVM issue is resolved.
>>
>> Thanks!
>> Wende
>>
>>
>> On 2021/8/5 4:59, Palmer Dabbelt wrote:
>>> On Mon, 19 Jul 2021 14:14:59 PDT (-0700), ndesaulniers@google.com wrote=
:
>>>> On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>>>>> Pass `-mattr` to `lld` so that it can generate proper machine code.
>>>>> By the way, it seems that `-march` does not work well now.
>>>>>
>>>>> Signed-off-by: Wende Tan <twd2.me@gmail.com>
>>>>> ---
>>>>>  arch/riscv/Makefile | 7 +++++++
>>>>>  1 file changed, 7 insertions(+)
>>>>>
>>>>> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
>>>>> index bc74afdbf31e..bbc186a3ab45 100644
>>>>> --- a/arch/riscv/Makefile
>>>>> +++ b/arch/riscv/Makefile
>>>>> @@ -52,9 +52,16 @@ riscv-march-$(CONFIG_ARCH_RV32I)     :=3D rv32ima
>>>>>  riscv-march-$(CONFIG_ARCH_RV64I)       :=3D rv64ima
>>>>>  riscv-march-$(CONFIG_FPU)              :=3D $(riscv-march-y)fd
>>>>>  riscv-march-$(CONFIG_RISCV_ISA_C)      :=3D $(riscv-march-y)c
>>>>> +riscv-mattr-y                          :=3D +m,+a
>>>>> +riscv-mattr-$(CONFIG_FPU)              :=3D $(riscv-mattr-y),+f,+d
>>>>> +riscv-mattr-$(CONFIG_RISCV_ISA_C)      :=3D $(riscv-mattr-y),+c
>>>>>  KBUILD_CFLAGS +=3D -march=3D$(subst fd,,$(riscv-march-y))
>>>>>  KBUILD_AFLAGS +=3D -march=3D$(riscv-march-y)
>>>>>
>>>>> +ifeq ($(CONFIG_LD_IS_LLD),y)
>>>>> +       KBUILD_LDFLAGS +=3D -mllvm -mattr=3D$(riscv-mattr-y)
>>>> We should prevent the proliferation of the compiler internal `-mllvm`
>>>> flags from Kbuild Makefiles; these are indicative of LLVM IR specific
>>>> issues with regards to LTO.  Can you please file a bug against LLVM
>>>> that `-mattr` should be encoded in the IR for LTO's sake?
>>> Works for me.  I'll hold off on taking this until the LLVM bug gets sor=
ted out and expect a v2 (ideally with the other textual changes Nick sugges=
ted).
>>>
>>> Thanks!
> For GNU ld compatibility: -mllvm -mattr=3Dxxx =3D> -plugin-opt=3D-mattr=
=3Dxxx
>
> Which can allow us to drop the CONFIG_LD_IS_LLD condition.
> (gold doesn't support RISC-V yet.)
>
> Note: LLVM LTO + GNU ld support is experimental and has very little testi=
ng.
> To actually make GNU ld work, we probably also need to teach GNU nm
> and ar to specify --plugin LLVMgold.so
> https://llvm.org/docs/GoldPlugin.html
>
>
>>>> See also:
>>>> commit 0236526d76b8 ("Makefile: lto: Pass -warn-stack-size only on LLD
>>>> < 13.0.0")
>>>> commit 2398ce80152a ("x86, lto: Pass -stack-alignment only on LLD < 13=
.0.0")
>>>>
>>>>> +endif
>>>>> +
>>>>>  KBUILD_CFLAGS +=3D -mno-save-restore
>>>>>  KBUILD_CFLAGS +=3D -DCONFIG_PAGE_OFFSET=3D$(CONFIG_PAGE_OFFSET)
>>>>>
>>>>> --
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/a6615b69-d99f-220b-d980-1f5f40ee2999%40gmail.com.
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ea692a6e-5920-e03a-6083-59fa833d6437%40gmail.com.
