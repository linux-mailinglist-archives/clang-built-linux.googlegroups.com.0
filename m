Return-Path: <clang-built-linux+bncBDXLVH6MVYKRBKWIWSDAMGQEUURKPSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4C83AD579
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 00:54:36 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id b9-20020a17090aa589b029016e99e81994sf9070512pjq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 15:54:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624056874; cv=pass;
        d=google.com; s=arc-20160816;
        b=EHB1ZtI9pcJVzAzLhzHUHRtOvQnPl0pV/bolT+S3RsgGT7ZS5zL5sRRzBQ4zDZFG0C
         H4ycq4BR2ncKQ4r91K63V4DyWpfLbxmHWNQ/Pnz+BMuUoLMqxv2EkRPk2wvvzoqBfsAa
         NrjGcV0G/Axv5NuPkVEDaPiWaD+/rH4w1dBcNK+I2DoVdLGgpy9eme/zOQkDkF0XaRrI
         rMeoXq5U+S8KKOzMhRTwiUcW7vg9GDlZgHkPoFpfS3SCGSajjJ3hDTr1iDFZ8yLRkE+j
         nGbIiOygRnD64LhUDx9jPJLiq+POHWtayQnPUCJsJvIqWjdvP/S35TfmJZRmMLNuY7tv
         V0gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=YTBF1ueMm1sr5HVrCSQuMDVPOKijgBAeHg9jk/+Ir2s=;
        b=xyjfGJTSwc2iNElh/morBMmD983nokhXdxTBXS4FD9PWuUsoYQiSoZUcydynb3EvFx
         3mLqtXtGe4UGe84A+bXdNPCJ+syQEUJfTga+RE7AW4XRZT7U+rViVDW63aA27ij2C7RB
         O7MnxrzToawOmZ/VaDHc0LfN5WiasdwwP8pSClO+qMzHENd0VciQVYgR43B3scydjUPu
         pBMhPg4wHSFRPOTu4Z0UUG1m1ZVsi1nNyTHePm51vg5o5b4RdcpjYs7MbDk1239Kj68r
         k+f4zN9uWVkpb90H4Wz0WyaBNurUnF4Dt7ENdg8Q/s5acYBh6l0eEaFLV4hiaqpSqUyC
         T2SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jgQ1L91c;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YTBF1ueMm1sr5HVrCSQuMDVPOKijgBAeHg9jk/+Ir2s=;
        b=JeXDnE/hAm6Wrwq659jyI9RYUchLQt0cXs3mzzPokmXwYVs16T0jcOyGf/CqG4QjFJ
         10FE0t9RtJCo/5vb8U8EhZPJBllkEURxK93x/iIn7f9OwAYE3F9bD/KSvxnInnRdV3cp
         L5hKNkO0KCf9SoIkIjIJYn/qvbq+WGfb0pLlYjD+tDuWtw87wccCdlG1j84AuLEeU3LS
         x9aVJuqHJM47hN/d56KNGrkDwi/+mmHwVOC9fI2yGyRU2Y14SvhBL4anSQZ7fv69pX0w
         f7T1RGlamb5KPG3EytJgouoA/HYzDIK4+2EYBYcx7lkuwEf7LarVOL+JXRsDzTfr4azO
         jIOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YTBF1ueMm1sr5HVrCSQuMDVPOKijgBAeHg9jk/+Ir2s=;
        b=j0kN7nVT1Eae7vGf1E6D8rj5ZdReD6c88wUBKLq+CnLX/KQkV6IjRMaQZbK0K0cVbu
         hohmSfYRwaZ6znR/Qpda/DRHbhmn/JV34SUrWfoIat/Ivd7PxhM5pnVWycZlVYxwE4QK
         cmilmMJoVQaVm3DRWwDCbu+xiG7omVUv5zo/Z+gqZXZ21DEgOXlcIO+IZ6ujSj4KDHqM
         /1OA5DmzhG+51EoXoIGhoOWlgXxkkwIuFxVJijHs2oh5dANoWVwtd6k4rKOBRMcHso96
         9A6Odrcx8jmcDmvxfWprC7p63kfc0dGSl6Hvb7qX0GwG7Pj1xLQtPlygqV6SMfIDgfxm
         WeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YTBF1ueMm1sr5HVrCSQuMDVPOKijgBAeHg9jk/+Ir2s=;
        b=d4Ka9LdBiHIuzy0tj0hgwFhapLHgHdEpb0c//fycPjvRBkmNLqWrLDltVHjTdaQUww
         VUQpwqY5xqABUVDRyCTwiqkV+Yz57skUgB8TWxJQubj5sRDpSll4EmembK0Uj9moF88V
         1Ev0XnROLCtCZsdQbhXyz3S4zev2LN9Bl3gcB7O9kk4kL+9yHtZqh4eUJFa4ZOFczPh8
         idPDJK+H9xiYfjiXxiHq+nK7WFPvij0wlnaIEsyV76bFyBA6V+IUmNhF38jOT32LDe9Q
         m2X0+ll1X0YJlqWQmadnwME3M1rkPuSUJVnkhTM0KB9s/iD/glKmjFR89heuIC9NayCD
         b+Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531arWX4ATn48lGhmQvlqn/MeiRCcs0OE2yMXUaxVdf5nzNF70wh
	qTc1h17FxnyUcD3iwwqkgJA=
X-Google-Smtp-Source: ABdhPJwGD6Dka8dclSGvx+H2BlB2v2uU2IakEa1WHJ39fNALE/fedFW+G80XZR1iL6comuIAp94scA==
X-Received: by 2002:a17:90a:4491:: with SMTP id t17mr10210648pjg.30.1624056874634;
        Fri, 18 Jun 2021 15:54:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3383:: with SMTP id ke3ls6618373pjb.0.gmail; Fri, 18
 Jun 2021 15:54:34 -0700 (PDT)
X-Received: by 2002:a17:902:8504:b029:11c:c69c:b3d5 with SMTP id bj4-20020a1709028504b029011cc69cb3d5mr6740792plb.25.1624056874123;
        Fri, 18 Jun 2021 15:54:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624056874; cv=none;
        d=google.com; s=arc-20160816;
        b=LBjBbQpWcEq0oeKaM7GMXnoyxDOSMdXWIh6qjat+T3sItWJN0qdcBW7NC3YwhaO9kL
         3KPHJvMJTttKbYF/3qe2bTALs06XEJktProuM5aCut5z2WF8z1QTn886MyXrmx4vhHUb
         4oAEL2uXJOyJfHE1PpENciYj8jHaA0VqTxKvNCV6zKiiFlA1MyDjRQw0LMxz/Mu574eH
         r/q4tsEjg8qmxWRGeeC+yDtRLtCLJXLa1ef5ZtMUs3V7SzMZWFT0BaRG8nIbyTNuetGD
         C3MtyWeBRb54an7Rx0oEXd2UM3y1ze4vMEGRLT7EINO+zEMDtHQ78kfcKtWsoago78S4
         A1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rzOxWgOfLVUoE/zhN+Hv/nujRU8lGHYED4ijbZLx+m4=;
        b=HqN/trLU1wqNZwfviqEpqKw0N9Yj945rIOt4CdDLQkvSBTznZVOJnlJ4KO/xmQcJBu
         T6Fabu7mUBLWHIDbQXEIOfUzoeN4in4EMgXB66mfOnpI3ks//hRojrxWEa5KD/Tf46u9
         O+m2fHuOVYr7GItxlJWOaRpvXuIB6b6HDRLihBLIcEB0m8wPfCDRItqH+6aazo3A/rn3
         C/czOktEklZn4tWztHACPvEKlWa/MQsLw4XrJwX6eGzlJyCAOQh0+pFo8vzySk39woeg
         Da93J8U/XI3OJwXaAGt2y3HwQUluTnfPWpneS0MLHf9mXiNbXHh6NBtc6TXZIDPUk7Gw
         BUWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jgQ1L91c;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id a15si1234770pgw.2.2021.06.18.15.54.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 15:54:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id s17-20020a17090a8811b029016e89654f93so9050691pjn.1
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 15:54:34 -0700 (PDT)
X-Received: by 2002:a17:90a:d3d2:: with SMTP id d18mr24467610pjw.102.1624056873737;
        Fri, 18 Jun 2021 15:54:33 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 1sm2893856pfo.92.2021.06.18.15.54.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 15:54:33 -0700 (PDT)
Subject: Re: [PATCH] scsi: elx: efct: Eliminate unnecessary boolean check in
 efct_hw_command_cancel()
To: Nathan Chancellor <nathan@kernel.org>,
 James Smart <james.smart@broadcom.com>,
 Ram Vegesna <ram.vegesna@broadcom.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org,
 target-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210617063123.21239-1-nathan@kernel.org>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <7afb1139-79d8-57b6-b629-bc0a0d142687@gmail.com>
Date: Fri, 18 Jun 2021 15:54:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210617063123.21239-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jsmart2021@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jgQ1L91c;       spf=pass
 (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::1034
 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;       dmarc=pass
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

On 6/16/2021 11:31 PM, Nathan Chancellor wrote:
> clang warns:
> 
> drivers/scsi/elx/efct/efct_hw.c:1523:17: warning: address of array
> 'ctx->buf' will always evaluate to 'true' [-Wpointer-bool-conversion]
>                                (!ctx->buf ? U32_MAX : *((u32 *)ctx->buf)));
>                                 ~~~~~~^~~
> 
> buf is an array in the middle of a struct so deferencing it is not a
> problem as long as ctx is not NULL. Eliminate the check, which fixes the
> warning.
> 
> Fixes: 580c0255e4ef ("scsi: elx: efct: RQ buffer, memory pool allocation and deallocation APIs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1398
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>   drivers/scsi/elx/efct/efct_hw.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)

Thanks!

Reviewed-by: James Smart <jsmart2021@gmail.com>

-- james


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7afb1139-79d8-57b6-b629-bc0a0d142687%40gmail.com.
