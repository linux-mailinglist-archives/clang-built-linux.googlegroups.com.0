Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBG6W4SDQMGQEPOQQHZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 607883D1FD0
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 10:23:57 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id p8-20020a1709028a88b029011c6ee150f3sf2328661plo.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 01:23:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626942235; cv=pass;
        d=google.com; s=arc-20160816;
        b=X1elUDgPoPjgGnZaKbwSmx/nlrt3cpbaWETRCxxkpGKeNSIcOpd7CaHn9/sh9z0WVH
         2B9mCFnirm1JGSpto7DYnqnytem/yhp1vHKicnW48mnY/SnW1extdi+Ag5+MDGA1kaBl
         +AMaJYhdwafjR9ZfNVk5QCTw5Y7ZtYlR9YPFY5aFqrdXsyzefHKgICRKQalaTlb1yYE9
         V2aFfeEWXi+eiuN8vXuS3EPYKtfurnqPw3C8iy8+AscQUBm0kUVuLfh3BNI8FcbV8zV0
         eo4rYEyUmr19jj653f3t1ebHJtkIKlRwutOZYKa5nLqTakXrQJ0EEhVRztWEwYHYckiN
         HTWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=gWQnWvSh2LYRSKNlnjGhHuPTdl1TgE3pns/t46cFOqg=;
        b=VDE/tUl9Pip8fj34d80iwxoNeA4quO2204AyDNUnTEfPg+s2Ou/ICpPCv9M0uzaaTM
         uso0oYLB48n6eLFKnYkgCyZ/QcUinCL26BccH8KHRyEwxQpui1n+DaBZpCsXO4kFw/DT
         1BCtWPJKQ17TqageqHzRj8ewROj4b6iDOMTKst8ZQDzN1C74Qhgoi9/Ai/Pipkve9h/H
         4MW6nay5jyPQI2IHMSHVTB4aaEBk8Ke/6oUwbUswvPlKKvmgIBJQYBlcM8PTWJ6yxQGE
         zE70FyaSN46iRSXiyiRMeqqYrX51eer1cJqI/iYpE5XrY/iPW5fkfh/XFSJgjWK7Ezc/
         8oKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FaBRnXey;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gWQnWvSh2LYRSKNlnjGhHuPTdl1TgE3pns/t46cFOqg=;
        b=O5zcWRieiObUL+V1vwZW8nBgvRgYeo5q9n0L9iXCQSmCCePuSU10zupWrOyj2uZUMJ
         oD7H3wtIwLk904q2xct6xFB9V/YrdchnSSHL4JsuQtXHhD3XXGk2fdUixR/f/oEdm+cp
         1MwmwWYLyleX79U1elKTD/Phm8XuHp0EcDVUZg83TK+2mqDoDO07Fpqi4PXyKuo9B4d0
         yi4Z+53NnBX3vX/wffAyeVUWiWwR3ViTc76Rqsq/10Sv/OaKkDvzj33DFmbiwbC9sH5R
         711657BBj6smiijVEtXubb0EElY0qgZgRWGvbPm5w320dofvy5X1fAiID/UYh6dgX/Mm
         1NXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gWQnWvSh2LYRSKNlnjGhHuPTdl1TgE3pns/t46cFOqg=;
        b=IQikqBOaKh8mje5Mx7jYQbdXQgzifY84MED5b11IbmwjW60It5tAoApBj+C57GvH1e
         UYIB/QQTAMMKnjEU0cg7X0m4uTTerg3ttW8mzNLFErc05puHX+ve/+glF798+Ud6czAi
         kkJ4KfjDviWugpaxj5julSWZIIxmx8MvwdM4DoWj+35RJHbmz3zP2/FJM8FryAxz5lwm
         hmgnRdnvX4tiadzxVFZkudNSq8Wb2hlcCZ5yaUqbqElBS12TZufgjNPSuTHhbnJSLKiV
         noIx/1Ce4pnonK2kZI1Gw3/5n7EFTHB3ssslb288vHOMi+io+QU9sYZOeUaVEPxya66G
         fqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gWQnWvSh2LYRSKNlnjGhHuPTdl1TgE3pns/t46cFOqg=;
        b=auMAPcBgs9hJkUWw3PEwgeBtnwE+BS/qKA0yfke1F60Ot9yFz9jaYb9mA+e/Z/TW59
         6zPBvKGUR88M8SQyVfS7DpdiVmCSqJ6YLh0yyLiEpmCWv0gPeWzOOp1YlfOiIl66TFzv
         j426SUF5GKSrPo+acju6KahZ7WtIZ11h/VvYeszzPsysKIpLxZDWjT/PnUL0/vxY8bSE
         +z/ZwaBf+pU8S8E7LQosiXX9nMyxpdJqjd3zxmubsbBaXUYRqAQEqWk5SzEQxlvpJnvI
         nqBy+QufaBxqDW05muZCZB1yYkgxSey/ta2G79bWkPMqqMXKfsHd+Y6UgWQT3SNNr92k
         3snw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jQWkhvQQMoIx6PAkzpTffffDpNPv2EunU0lHiRcSkNL027Ern
	I65ceI5scrXtikpTF/Z2qmM=
X-Google-Smtp-Source: ABdhPJyQ/47z18PRKtY4nrL1MLiTIfsN5WUwiIEaPkUrTnGzeKj4aIsGyBwnzQflMKYw0T4IMnERjw==
X-Received: by 2002:a65:53c3:: with SMTP id z3mr40673633pgr.381.1626942235488;
        Thu, 22 Jul 2021 01:23:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a38c:: with SMTP id x12ls2575783pla.6.gmail; Thu, 22
 Jul 2021 01:23:54 -0700 (PDT)
X-Received: by 2002:a17:902:8ec9:b029:12b:a69d:4146 with SMTP id x9-20020a1709028ec9b029012ba69d4146mr6707126plo.32.1626942234840;
        Thu, 22 Jul 2021 01:23:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626942234; cv=none;
        d=google.com; s=arc-20160816;
        b=xRazVnpdf8yVs2NLm3eBqKXXhQlRg9ut8VmJ7mPWqK+2Sp8n4gUMfmds2DuerTQTQ8
         383OueHDI3laz1QtilxkYddnplgOJ9+7Wlgh9XDJf+Gi7SX4jj9GGwLoAjvQPVR/ZKLb
         3qfG17BgjeVtDgEZoGT7rNkAJMJF6YoW+01u6LiTEgudK3IxmakftnRDwElfLFTk5Deo
         C0nUL6mz1w0de7vFysG8EFqYXmepBaO2bGhQq23to9MNSl42bCVnT7oCzS6lhSz1fQKO
         COFD5LIqy+D42UKDeeEw0zLFJzNZCrHSUL8tRlvgnJlb3wzGznCBDeWPTW+sDcQ1fOm2
         hqOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=ZRZd7mnuBLNO3WOYOopO7fTCuLmQea3GsZq8O27f1yg=;
        b=ksO70DsZpgJSsFh9gnLppN1bB7gR03PLDd+QoLQtzLOgxt1msDklKmN8OlQMH0IBzf
         cP+1cdo5TeaA1ijx4cFqDneeWQlbadyCbEM1oxK8IvksaVkGwzzAkUGN/xXWwFCVehBb
         /G+g6tqk8C7q3ZW6t5LihhIy3H4EIi6nUL7uKMX7nDg3jRaFotfLbKZ3EGOU9jnKTnnr
         xfdIScSolr6nFfCh6FjmQoyKgDsXlHdhoZsfMqJWKagHdgS1ZGXwtJj0SJ2DqPI2cIx2
         jmDbvuZh4wDO1J0JGRsBwp5dG01HnE5ovlMQ5i3fRVdv9Cj1kDDHYn3+goWPWaWIYy43
         puuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FaBRnXey;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id c9si3442422pfr.5.2021.07.22.01.23.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jul 2021 01:23:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id my10so5129732pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 22 Jul 2021 01:23:54 -0700 (PDT)
X-Received: by 2002:a17:902:e882:b029:12b:1a47:1687 with SMTP id w2-20020a170902e882b029012b1a471687mr31443031plg.2.1626942234561;
        Thu, 22 Jul 2021 01:23:54 -0700 (PDT)
Received: from [0.0.0.0] (jp.bgp.twd2.net. [2a0c:b641:571::1])
        by smtp.gmail.com with ESMTPSA id y2sm12017759pfe.146.2021.07.22.01.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jul 2021 01:23:53 -0700 (PDT)
Subject: Re: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
 Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>
References: <20210719205247.1023289-1-twd2.me@gmail.com>
 <CAKwvOdmNji0AbYUiOSfb5cLD+g7YCpXk4oDupa8gTfgzYmxvBg@mail.gmail.com>
From: twd2 <twd2.me@gmail.com>
Message-ID: <8a21bac5-2445-2d4f-3639-8660285a626b@gmail.com>
Date: Thu, 22 Jul 2021 16:23:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmNji0AbYUiOSfb5cLD+g7YCpXk4oDupa8gTfgzYmxvBg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FaBRnXey;       spf=pass
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

Thanks for your advice.=C2=A0 After some investigations, I find minimal cod=
e
that can reproduce the issue I have had.=C2=A0 The bug is filed at
https://bugs.llvm.org/show_bug.cgi?id=3D51161.


Thanks.
Wende


On 2021/7/20 5:14, Nick Desaulniers wrote:
> On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>> Pass `-mattr` to `lld` so that it can generate proper machine code.
>> By the way, it seems that `-march` does not work well now.
>>
>> Signed-off-by: Wende Tan <twd2.me@gmail.com>
>> ---
>>  arch/riscv/Makefile | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
>> index bc74afdbf31e..bbc186a3ab45 100644
>> --- a/arch/riscv/Makefile
>> +++ b/arch/riscv/Makefile
>> @@ -52,9 +52,16 @@ riscv-march-$(CONFIG_ARCH_RV32I)     :=3D rv32ima
>>  riscv-march-$(CONFIG_ARCH_RV64I)       :=3D rv64ima
>>  riscv-march-$(CONFIG_FPU)              :=3D $(riscv-march-y)fd
>>  riscv-march-$(CONFIG_RISCV_ISA_C)      :=3D $(riscv-march-y)c
>> +riscv-mattr-y                          :=3D +m,+a
>> +riscv-mattr-$(CONFIG_FPU)              :=3D $(riscv-mattr-y),+f,+d
>> +riscv-mattr-$(CONFIG_RISCV_ISA_C)      :=3D $(riscv-mattr-y),+c
>>  KBUILD_CFLAGS +=3D -march=3D$(subst fd,,$(riscv-march-y))
>>  KBUILD_AFLAGS +=3D -march=3D$(riscv-march-y)
>>
>> +ifeq ($(CONFIG_LD_IS_LLD),y)
>> +       KBUILD_LDFLAGS +=3D -mllvm -mattr=3D$(riscv-mattr-y)
> We should prevent the proliferation of the compiler internal `-mllvm`
> flags from Kbuild Makefiles; these are indicative of LLVM IR specific
> issues with regards to LTO.  Can you please file a bug against LLVM
> that `-mattr` should be encoded in the IR for LTO's sake?
>
> See also:
> commit 0236526d76b8 ("Makefile: lto: Pass -warn-stack-size only on LLD
> < 13.0.0")
> commit 2398ce80152a ("x86, lto: Pass -stack-alignment only on LLD < 13.0.=
0")
>
>> +endif
>> +
>>  KBUILD_CFLAGS +=3D -mno-save-restore
>>  KBUILD_CFLAGS +=3D -DCONFIG_PAGE_OFFSET=3D$(CONFIG_PAGE_OFFSET)
>>
>> --
>
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8a21bac5-2445-2d4f-3639-8660285a626b%40gmail.com.
