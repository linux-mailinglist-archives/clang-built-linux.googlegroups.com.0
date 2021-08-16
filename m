Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDE75OEAMGQECNOQ2EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2023EDEC6
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 22:50:21 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id x11-20020ac86b4b000000b00299d7592d31sf376074qts.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 13:50:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629147020; cv=pass;
        d=google.com; s=arc-20160816;
        b=krYB0fNubDghZRBXtsmD3tzwYW0vysnP1KODrG1LGyEvH51L9u7ewU/5Pd3LAi9jlt
         WI721apyFFMd6OLFzpoFwyhhLMASvjRohV1J644dmmyI+jxO6UBPlrEJnDXvosb/mjeq
         1cnyqfnUl8H68aGPD7Dm9aH0j/xkGqLStZt7mVza3jxauoeIs3FGj8UQzHsMAr0uSIXO
         Yzjyg6UGykMqQhC0hfErMgl7olLL0z3luw7XaTkyYF1ahG4Bepy9Qy4JArkLO7Ljg2cD
         SRZDwsgBMxZYyS7VQR/1NWCqISJXhgcGw887p/SQzvrhJFXdsaM3I5gfIzhWUwHS62Oj
         rhhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OFP5phYP3JXwYUTgCpPrpxis2oG2sCbEZPOiHn5bFf0=;
        b=o8gYOkPsht7sDG6x63aCEyele4VUZhHY1xlNDzXb5ulGGmNPl3DUehByWcVYk4lj8C
         KY1gPYxkeIbLFD4P/ixaByiPB9wnuRaXyMTwA92sudhBEvJguwXlIUinyscmnrSviGS/
         dOxyxlt31fW6LOULPpQhRHCyyPsFvLBxALI5ncAgoqPCeQSF5n5vmgHv13TfI2TD8zx7
         Z07NSADvWPbs4IQi87PY///HA/hAsIMmUL+dWI/Hl4B82zB6iFeR+hf6ukQjZk//Ncdb
         arOytBpJFCVPpPFc7Cx0oqzOD2R4ud0pr+U6kEfaAwwSuJswJ9nTnWuoV9D5FfjpEHb1
         WKwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="SZD/PpQc";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OFP5phYP3JXwYUTgCpPrpxis2oG2sCbEZPOiHn5bFf0=;
        b=d2ogT9kd1BbYPhUNcbLzZLplJCLlprdevNjL2M4KyveiqJRNkq5NSzZfg3Gbb37qIB
         VwMej4Uq8CGcxw3DTrC8Uks68qEO4/z9TUYCAXv88wMCFIl6wqoy7SKHzu7CkrB+nYoS
         yxCWQzv0cyrfWxslyh1br1OCk5eVdVZrgBFnuaDcM7qFSChLK0gik3vVW2FpIWnEpyHn
         cHp8PCdxA8E3TMVoI6scQVUfrJZd88Kkhp85mJOBXHS2lQ2+yUyMop6hkaav1TIKg3G3
         ZCPTrnYLNnFfHU5RhRpYhZCEULgaybrKJ2/dLNYNE1zuyyXS8yKAXwXI/BVxm70pSv4x
         2faw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OFP5phYP3JXwYUTgCpPrpxis2oG2sCbEZPOiHn5bFf0=;
        b=pX+Q6PLuh0kffyk2N69hq0gVZLvLEVwmvFU5qQ9GPDS0s7sfqZ0b0iV9S5CB7LOADY
         1RrVuqPprk/UPVbLn2AMfa4VLIi8hbiXnhLdV+auiN4EaJx5D1d7z1dlm3DLsy0Vk3rL
         1eAz19Qp/CeHsGEI7Z6s/g6MUlYGp3kD0HkTT9WmTkKthxQI0iLT/AkZASvDo2AbSOt9
         y/5oEiHHoczouDIb1W+imRCIqPreIOUD8oYJQIG3zbyd99nWIxdsPIkRlMLVti2+nesM
         qsisVBnCsvlD/0YsPLA46Y8rJYqQ7itAZCoYQzcGajVtkFRT9T5Pna5JBVCtJ4lOR2BI
         TnAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Guf59pFNx32wdiPkxQhKaKAVX6umzy+JGb2xgQRD3TsuGAbbT
	v2Opy/9/qJlzuCUDqko4g+M=
X-Google-Smtp-Source: ABdhPJwOat0JzaaNyIweO5HTSno5AGdBdmA5t/1ffYc+l4mBmAUj/E4GxU+GqPPKfaP03kxKfJk2Vw==
X-Received: by 2002:a37:b9c4:: with SMTP id j187mr230509qkf.131.1629147020447;
        Mon, 16 Aug 2021 13:50:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:88d:: with SMTP id b13ls46693qka.6.gmail; Mon, 16
 Aug 2021 13:50:20 -0700 (PDT)
X-Received: by 2002:a05:620a:88d:: with SMTP id b13mr234947qka.125.1629147020006;
        Mon, 16 Aug 2021 13:50:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629147020; cv=none;
        d=google.com; s=arc-20160816;
        b=gWveBno9M9bJI2DWrEHU7qPtTMAOcZUt3OmoqG6PO+ajyQ7hvfRnfqgzzPrkvd79EZ
         A6LtEnZ74W9HF0bYio10C+ms+pjhrZuBV5mBMLDvprbxp5ETH71dNRPAQ5t783Lz5Eyh
         6Pl9IBCYt4KE/6YEzLHSdsP24TAv1IddD3gBE7P8OYW5cPapRqjGCtWFEPxnB+bQKGZ/
         oSDHvwNSgR96eIoVS5hMTVmXyzNw+JhyrHjLRReLgxegVAcTCT/mCeB2uq9Xs25GHhUR
         lz92XK1nPL94gqBvm2aPZJeTe0JN6fyaBaHoEMQXT3jGZ6Ka/oL+Pmz/o58UyoioVjDs
         7NwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=t9K41AtVWBkqhl1dPSWNkLT6kiFRtuKip3RAoLtozao=;
        b=vsVf/rjnIbX9HrAEdqcBecxX3vXmEuoza3oqm69AYbsKouLoV86gXjGxS3ctgvxCNe
         v+nZQzWlBTuX0v1ITanwZE/557b1EDf+90Zr6xNHPP3utaODlvEfwj+ll0pQE8t99Ss0
         K8StUUxs+EjzMOr2TIx+cbZCg3436mioBJCX006qqg+VXbeQyjB30lkzjsmly6kSZ2Yz
         Pxa2E+D9lhdU47AAeXYim1JBy6RPRIA+SDBArCKvYmDSWErDuxvaQGtsZRYom0w1aqeb
         9DEn43z4avCDPm3EYt1/khYPpubu1dmrOldtaK1dd0ozZFQnZ+kc4getKWeXvyJTjt8O
         h3dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="SZD/PpQc";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s29si25701qtc.5.2021.08.16.13.50.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 13:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7DCD760560;
	Mon, 16 Aug 2021 20:50:18 +0000 (UTC)
Subject: Re: [PATCH] kbuild: Switch to 'f' variants of integrated assembler
 flag
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210816203635.53864-1-nathan@kernel.org>
 <CAKwvOd=+rn-xyHrX=P=B19EJ8MSmDvQt8oU+QD=59KUHOC7R=A@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <d2e4e93c-a54d-ec38-e6e7-dce5e082ea12@kernel.org>
Date: Mon, 16 Aug 2021 13:50:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=+rn-xyHrX=P=B19EJ8MSmDvQt8oU+QD=59KUHOC7R=A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="SZD/PpQc";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/16/2021 1:48 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Mon, Aug 16, 2021 at 1:37 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> It has been brought up a few times in various code reviews that clang
>> 3.5 introduced -f{,no-}integrated-as as the preferred way to enable and
>> disable the integrated assembler, mentioning that -{no-,}integrated-as
>> are now considered legacy flags.
>>
>> Switch the kernel over to using those variants in case there is ever a
>> time where clang decides to remove the non-'f' variants of the flag.
>>
>> Link: https://releases.llvm.org/3.5.0/tools/clang/docs/ReleaseNotes.html#new-compiler-flags
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> 
> Thanks for the patch! Want to fix
> tools/testing/selftests/rseq/Makefile and
> tools/testing/selftests/sched/Makefile, too? Either way...
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Yes, I was planning to in a separate patch due to different maintainers :)

>> ---
>>   scripts/Makefile.clang | 4 ++--
>>   scripts/as-version.sh  | 6 +++---
>>   2 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
>> index 3ae63bd35582..4cce8fd0779c 100644
>> --- a/scripts/Makefile.clang
>> +++ b/scripts/Makefile.clang
>> @@ -23,11 +23,11 @@ CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
>>   endif # CROSS_COMPILE
>>
>>   ifeq ($(LLVM_IAS),0)
>> -CLANG_FLAGS    += -no-integrated-as
>> +CLANG_FLAGS    += -fno-integrated-as
>>   GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>>   CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>>   else
>> -CLANG_FLAGS    += -integrated-as
>> +CLANG_FLAGS    += -fintegrated-as
>>   endif
>>   CLANG_FLAGS    += -Werror=unknown-warning-option
>>   KBUILD_CFLAGS  += $(CLANG_FLAGS)
>> diff --git a/scripts/as-version.sh b/scripts/as-version.sh
>> index 8b9410e329df..a0fc366728f1 100755
>> --- a/scripts/as-version.sh
>> +++ b/scripts/as-version.sh
>> @@ -21,13 +21,13 @@ get_canonical_version()
>>          echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
>>   }
>>
>> -# Clang fails to handle -Wa,--version unless -no-integrated-as is given.
>> -# We check -(f)integrated-as, expecting it is explicitly passed in for the
>> +# Clang fails to handle -Wa,--version unless -fno-integrated-as is given.
>> +# We check -fintegrated-as, expecting it is explicitly passed in for the
>>   # integrated assembler case.
>>   check_integrated_as()
>>   {
>>          while [ $# -gt 0 ]; do
>> -               if [ "$1" = -integrated-as -o "$1" = -fintegrated-as ]; then
>> +               if [ "$1" = -fintegrated-as ]; then
>>                          # For the intergrated assembler, we do not check the
> 
> ^ want to fix this typo, too? s/intergrated/integrated/

Sounds good, v2 inc.

>>                          # version here. It is the same as the clang version, and
>>                          # it has been already checked by scripts/cc-version.sh.
>>
>> base-commit: f12b034afeb3a977bbb1c6584dedc0f3dc666f14
>> --
>> 2.33.0.rc2
>>
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d2e4e93c-a54d-ec38-e6e7-dce5e082ea12%40kernel.org.
