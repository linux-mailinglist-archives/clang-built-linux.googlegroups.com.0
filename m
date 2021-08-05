Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBP4MWGEAMGQEOG4CGRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D72B3E1D32
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 22:12:49 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id h21-20020a17090adb95b029017797967ffbsf7507210pjv.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 13:12:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628194368; cv=pass;
        d=google.com; s=arc-20160816;
        b=ov2MxSB54Imp1liF4sJtl/1WOSLUqtQq5agOqzQ3DXjfAEkxnXBCpTn6dIo2FxO4VW
         BhIQW8J/eur5DUryQ51pT8CS6YYRtxxBkXzcv7wFt6TBUsGjclfNFhgFA2rBEcBEQFYb
         gkmCqpjpe2P2Ns05IGMji/kDyoNElBNKcPvNym9HASCNj/vB2xHG2cFKvTDExLuyM6nO
         y00b2i7nYmPySrs8/VR0UMHSx6hzaEtDeorVtD9hsurRR92CM+Ww7F/UgPie33Se6iuH
         ZjZbWKrCWeKKT7/78S0s+EkC44pFEJOzh/ZueY87imIBIuvbvKjrsHlc818Bqi82HTQa
         lJrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=LGkpXDLZvbe73k0M9+5ZS4c6e55+GCzzkxH88kcMjsk=;
        b=RinEQo43+8XSKEc6qtHlk8hAGsfxW22+6YatqCcGbtkju1US+W63Oz7iNGp1M/SWk8
         snRs5h+oF1ckZxtY/mdBO54pdDIc2VyG/zKSaCvQyJ3qev0foPKl3h0hZOD8OwIUH9pM
         b8XHm387fYgq1m7W6PLdHP3fuHRV1IbgvA89q7e8x5WlIJnXaRgayElOWSktKkdR8fdx
         8e/WqnVn7d3zXGZoXCSw7BQuCkD2/9Rx7yy5SEdM9tKLLUkUsoMH6NzbvjR6fOWcbX0O
         QGnMlHwtjeWqyB6x9ncc6TYR4T4gZlvND0ose4ZuacACqe0oHvJzmVQi1Egv1X15kHTF
         rHUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BEFWnj73;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LGkpXDLZvbe73k0M9+5ZS4c6e55+GCzzkxH88kcMjsk=;
        b=FITanfEo90CbjBU4JvcbrSFsLRMW8CsK4h9gpeRK55KuZyt3gHPZzi7yWsv7RvWLvo
         4eqROwFoyrnBccwiVdQrBKdhWU2WdVhti5gpuc8GclldY+xr6NrXProscd1W0vmMjdNg
         XooiDuwv0KO+xORrpcwEuZCrU9/4C5IryeyYq7D4T/ARShcd+Hb0N0fykQCASK/DMkFB
         q8+PvRBBYEe+W3dHNRlxl4sViG4c/1G7vmOPzKQjpqGafzenBLij5o6yk4Hsg89XqFlF
         CwdmNO+tnc3/G1vb8ZHAOXZB0BZK+opJYpmemYzzjEfICWxM4YS7AwNG9H3vRv6g4k7g
         Y3jw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LGkpXDLZvbe73k0M9+5ZS4c6e55+GCzzkxH88kcMjsk=;
        b=WTFEVdAZS76YUJPVWLL6XPNyCgJVG4SJ1cw+YPo+Q2lsGpqrbCmJXlrZ1+nni0PCT7
         JJl8E0hAr8C/Ks+bZc/8+UaxPTC2nyG++bXJv00qcxYHi4+CjCUWu/Hc055sBY6eZMS+
         P1yokDnYzoQ6X2Up+V1hUmmvMbcQvWuHsuYdIGVpsTfSy76N3SKYANQjTfg3d7P0rWSw
         gMMvUHNH1tYJWPNoeAHL/4qtdoUEBIGYGsAyHqr3O/mvWq6hNQH9R0p9DGSqBCcO/H5V
         1EO0nHOzpBdO4W65XJnJLonOxQCeJSj24A/Ef6lGLk5gARZSr1Ou2PGIwj/7Wr3YK5GJ
         GyLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LGkpXDLZvbe73k0M9+5ZS4c6e55+GCzzkxH88kcMjsk=;
        b=NTiNw1ZJJKDiKmT2yEbPk+gGno0PJILnRpsDctaj7sEW+1TLLCnUDLunQDX4c+PPUt
         H/tVmRMEGxqWtjJMQRNDdh/Z4/2LWyfVB31BN8jIRWOgFNGsNe1HiZLwf8ui75qDPYbg
         1k7NZhL9B4kB8KGmJD70Hx1fj96rmKlXBsNdHvMyplw2VlMWkWSER5DLHDGaInrjj069
         OwpuuXbtZLFexEgas4gPJRRK8Z31HO6GWGuqF+g/k+6RWurtqqCdgmdbfneMDAdOtHqq
         +8q1PrfhciJ7siNXg+QWYTnlkirnNqxr14Iy9iGbEn8v36mU6dZ/OYOB24zSeosSO4uC
         aDxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530a75zPLdbJ/QlQoNiT+shxKFTgBcZy3HVwVtilOpUcN8oDv0eX
	fC0eBNNP8p/aiLRq/LLp3IM=
X-Google-Smtp-Source: ABdhPJwWTnN44PSJH9iZeW1mbrIjVnDRXpH7zJ7KeCe/lMykjmNvJ4A3/Y6iGi2sFA+e9v/THl8eYw==
X-Received: by 2002:a17:90a:bc89:: with SMTP id x9mr17511759pjr.52.1628194367875;
        Thu, 05 Aug 2021 13:12:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2341:: with SMTP id j1ls2573881pfj.0.gmail; Thu, 05
 Aug 2021 13:12:47 -0700 (PDT)
X-Received: by 2002:a63:154d:: with SMTP id 13mr623577pgv.116.1628194367288;
        Thu, 05 Aug 2021 13:12:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628194367; cv=none;
        d=google.com; s=arc-20160816;
        b=ctH5T0Rxl0kliJZZmPPloMTO75bgvRFyfNSaeLsFkwNvlMWcJpFF7spFqkr6SQoY2x
         uJ1AiAkDvgwf8X1S4GzDJVJFOYrhN1WtXQ8qoRzuIw6mElnjIq9iZgViVAb+WBH7AW5K
         LWbIoyj5CydsxKPfDXCDUtEU2FhUJKXjAeyMpcT7GKBCDp7q+NBC5YwAvkHFOdVzmoTd
         +tu05ubGokqRDwf0FUFEFY5gWSorIfdhE031cVcVw3dKiNheqzoSp7q27GCnRFNG6cOr
         o7lKlofYUJ6jXiKTOZLFdM4n8zvmEC25cHP6ZZQY9Yfe8HGGHcIX3noCqFgd/WcF6OZC
         3slQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=zxMNsCnDZfscYCp8Pd6Rb0DW8Iybthh+JtApPuzegLk=;
        b=x6Twjy/lbZXnV7yLcmvoL+9xmmDDn8rCuEcdA3Sf0jAYQq8DiwNxbkX7gBfsS0V/kK
         TcI+K2TgAITWWo9s6itRBpt3TimNpcydpAqHj64erlDSGCsb1maxABEZBFYSKwjido6j
         04IswQZVoIHgmvM6rt76u0dclc+9LtbK17O0GE+my3i6gvK1rkjLensofhYEB9dVnHd6
         JvOFa6Rda4Lf9MIxwnT8YXnortGd/tg8w9Z/0XCu7EJ2lp7Jv1ziLb6waxBAflPIQZf8
         /6kIxua/NqnQAhtFyB1QIGzaqrdkh/Ed94jnuvab7Xk7UwGwIhy3sn+APaaguZeRZTBz
         c2Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BEFWnj73;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id p18si240584plr.1.2021.08.05.13.12.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 13:12:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id s22-20020a17090a1c16b0290177caeba067so17720545pjs.0
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 13:12:47 -0700 (PDT)
X-Received: by 2002:a62:864b:0:b029:3c7:7197:59fc with SMTP id x72-20020a62864b0000b02903c7719759fcmr3092420pfd.59.1628194367010;
        Thu, 05 Aug 2021 13:12:47 -0700 (PDT)
Received: from [0.0.0.0] (hope.twd2.net. [45.32.56.123])
        by smtp.gmail.com with ESMTPSA id p3sm10177017pjt.0.2021.08.05.13.12.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 13:12:46 -0700 (PDT)
Subject: Re: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
 masahiroy@kernel.org, keescook@chromium.org,
 Nick Desaulniers <ndesaulniers@google.com>
References: <mhng-4af8be52-7620-478b-bf69-73306a2ffc3b@palmerdabbelt-glaptop>
From: twd2 <twd2.me@gmail.com>
Message-ID: <a6615b69-d99f-220b-d980-1f5f40ee2999@gmail.com>
Date: Fri, 6 Aug 2021 04:12:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <mhng-4af8be52-7620-478b-bf69-73306a2ffc3b@palmerdabbelt-glaptop>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BEFWnj73;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1033
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

Sure. I'll send a v2 after the LLVM issue is resolved.

Thanks!
Wende


On 2021/8/5 4:59, Palmer Dabbelt wrote:
> On Mon, 19 Jul 2021 14:14:59 PDT (-0700), ndesaulniers@google.com wrote:
>> On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>>>
>>> Pass `-mattr` to `lld` so that it can generate proper machine code.
>>> By the way, it seems that `-march` does not work well now.
>>>
>>> Signed-off-by: Wende Tan <twd2.me@gmail.com>
>>> ---
>>> =C2=A0arch/riscv/Makefile | 7 +++++++
>>> =C2=A01 file changed, 7 insertions(+)
>>>
>>> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
>>> index bc74afdbf31e..bbc186a3ab45 100644
>>> --- a/arch/riscv/Makefile
>>> +++ b/arch/riscv/Makefile
>>> @@ -52,9 +52,16 @@ riscv-march-$(CONFIG_ARCH_RV32I)=C2=A0=C2=A0=C2=A0=
=C2=A0 :=3D rv32ima
>>> =C2=A0riscv-march-$(CONFIG_ARCH_RV64I)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 :=3D rv64ima
>>> =C2=A0riscv-march-$(CONFIG_FPU)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 :=3D $(riscv-march-y)fd
>>> =C2=A0riscv-march-$(CONFIG_RISCV_ISA_C)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 :=
=3D $(riscv-march-y)c
>>> +riscv-mattr-y=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 :=3D +m,+a
>>> +riscv-mattr-$(CONFIG_FPU)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 :=3D $(riscv-mattr-y),+f,+d
>>> +riscv-mattr-$(CONFIG_RISCV_ISA_C)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 :=3D $=
(riscv-mattr-y),+c
>>> =C2=A0KBUILD_CFLAGS +=3D -march=3D$(subst fd,,$(riscv-march-y))
>>> =C2=A0KBUILD_AFLAGS +=3D -march=3D$(riscv-march-y)
>>>
>>> +ifeq ($(CONFIG_LD_IS_LLD),y)
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 KBUILD_LDFLAGS +=3D -mllvm -mattr=
=3D$(riscv-mattr-y)
>>
>> We should prevent the proliferation of the compiler internal `-mllvm`
>> flags from Kbuild Makefiles; these are indicative of LLVM IR specific
>> issues with regards to LTO.=C2=A0 Can you please file a bug against LLVM
>> that `-mattr` should be encoded in the IR for LTO's sake?
>
> Works for me.=C2=A0 I'll hold off on taking this until the LLVM bug gets =
sorted out and expect a v2 (ideally with the other textual changes Nick sug=
gested).
>
> Thanks!
>
>>
>> See also:
>> commit 0236526d76b8 ("Makefile: lto: Pass -warn-stack-size only on LLD
>> < 13.0.0")
>> commit 2398ce80152a ("x86, lto: Pass -stack-alignment only on LLD < 13.0=
.0")
>>
>>> +endif
>>> +
>>> =C2=A0KBUILD_CFLAGS +=3D -mno-save-restore
>>> =C2=A0KBUILD_CFLAGS +=3D -DCONFIG_PAGE_OFFSET=3D$(CONFIG_PAGE_OFFSET)
>>>
>>> --=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a6615b69-d99f-220b-d980-1f5f40ee2999%40gmail.com.
