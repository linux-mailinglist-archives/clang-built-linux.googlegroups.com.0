Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLN37SDQMGQEJV35UAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FE23D683E
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:40:14 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id l7-20020ac848c70000b0290252173fe79csf5182472qtr.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:40:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627332013; cv=pass;
        d=google.com; s=arc-20160816;
        b=p7jqW+fKh9OkEFm3lDjTWPZ0CszhmO8CQHZsvO0UsmAzRbjno8kxiDQA/8PTQP0AWm
         fZgnvHQsuyiRaKdIB2vRIHNFCqo78bOwK8fHIOFeKWq2c7Zr9ksFaesC6zMbZEf3RBtM
         NOMk0BVTAzed5AF4CKCXPYkYuxxj+ZUgK0YY22Brzg6c3V/bO66SvJF6e8veu32L7wmk
         qXYDs/cgoBocXYuSUZEbWl3A5+rNoQ582DfiOpMN+Y5uGMCcjKZsrLZS4QPA/Kjyh0s7
         P/NGAYMAKBEkfFn/gEXlnRAKColhX+ROPkT4h/eHTGI7n8A3havyJY9n2n6kqG0l19wK
         A10A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=l8U2P1/Vgnuery16+J46eSNwALfw0ZsyFRcyTbiBhS0=;
        b=KFyhszMWwtLbARfRNMawXdrMjySJqn7VRsAeHhZBQlrEUUZF1s6sVXi0DoicthSLvh
         2UgPIATbD6SfIq9aUVGUbgWjOdEDBjR+6/seI2wTOL+tVbDseFsnosf8Yd+sk6IIa4zO
         BJw9PL3rLk2CQ5/ZNWJRrIcw2TR3O+jd3Wk9TQ9xKTLOpjtSLt/Hu4ObdtwKSdZgZM30
         zcyLdT65z3T3UOlwW9RXiqc3x8FHdXOoo0gavdXlF3EWCt8T1bJkAjOv7QK92HK4yQBU
         nv03vcWiqVHNuYy8fSuOj71HjW8HoXqIexEy/nB8+ZCfUC8S/ApyAP1OS45zYi+hunIy
         Mm/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AfCMCftx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l8U2P1/Vgnuery16+J46eSNwALfw0ZsyFRcyTbiBhS0=;
        b=qVpbNjeOYcSGhKTXKuxxCDMrM1hFsOONNWxbVT8PKp0oG2xQ3dckNpItRD7llL91fE
         po2ub4bxwdxKBOcObpMF62mgwJReo6uv8YjbEIVAkduhA+lXFL/2b3IO4yvvR/9CdPd9
         qNI9GkCGjQq6jQ8F8Q+qgYcllGE/+M4harJVYIt0W8F3aFUSejj9mS13hFmsako6ZwS+
         r0g/4OjgtECua4aOnGq64sDaADIKO9YKLZT+NB5pL+SnQPPNmbN5nK8D8h9ReX2j59PH
         AFTa1RqqvCfSKTB3q+q50CQUZWk9amUKAEni1zdqPomf8jaSl3NUkMkMgHP8gudwAdU0
         5qnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l8U2P1/Vgnuery16+J46eSNwALfw0ZsyFRcyTbiBhS0=;
        b=nn+KhAVKWvL462ehiax3A1EcnmDJd8c2g6U9Q1kGY9oyQYPGTwA2isefRhbDEqo6dP
         Qwd9IzPjKlSrviQj0ukUPpLwJPgl1Ti1GQ2pLsRYwoDaIzcDY/m6n2wUCHHObzzGrDsg
         AgTu4nlThmxg7O0GFVaSM4hP21bOSAfjPlq0xPSrrBeeXurlHtDsw8VZpKoq1trwUXdj
         6AxjSwKBjZqhQofW2hsblkpw5Mt1EdSjnEp3g9TkmGWknDTMhY9rDygn4RKtT7OWmuRr
         BKSSPy7hUgoQF6VqbW4HH/nMEUOK8VfXnrGtg792zDcOuKvV0Fv2cgEhJo8enV3vwm+U
         +CCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531D1NN1jrhqHVGcSsLjwwZrcxvMPOQSV/uGng0DLPvGApO9Q449
	J515o8AASw0POSTOGqxBQsc=
X-Google-Smtp-Source: ABdhPJwHSd8Unj7smUPot0aseAq5Xe6vaaOK+H01kF3XwQ9aB1JBMnHdtwOuMLZPvMb/bMKP6mSAOw==
X-Received: by 2002:a05:620a:911:: with SMTP id v17mr18965748qkv.458.1627332013249;
        Mon, 26 Jul 2021 13:40:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:213:: with SMTP id b19ls2437723qtx.1.gmail; Mon, 26
 Jul 2021 13:40:12 -0700 (PDT)
X-Received: by 2002:ac8:4996:: with SMTP id f22mr16531515qtq.12.1627332012791;
        Mon, 26 Jul 2021 13:40:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627332012; cv=none;
        d=google.com; s=arc-20160816;
        b=QE732w/H3R6SrT1xEuJwVOmaeunihqxcPM7oZs/chaVgoW1Puj6BV+70RVl3zhlIdO
         apCxl4hw7Wt1E40mEld1Naz8+dmeuSjsIZh0gGxXxE9sAVRjclFxzGslIxj8QlEjznPH
         UEZUuNio5VMs/hHnvL7V57h9KOAkhLMjgsMqCEz7tRtJQ5p11y3jWDToUv88xvN2hS/p
         cd2AXZbIiYn6Py+IhfTt+i/MtMQjVRoMOJky5jSf7q4J+Nuz/ybiiNTOB27m0k2OY6OE
         4hZTIXZks5eMifmDQC0HfPMiz6BJSAG6CRhbjXaO5QPLzR3LE2WIm9QFIg3tu9OlFzNx
         dAbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=1vbultDQ1FTvHkyxClQkgWX8beQ5VOznd//hQSisNQY=;
        b=Ti72/suD+ve7f5De/OWoqgNIvbylaD6dpUhFEmmBfX9h6rRjeUvsUoxnZWnQxwjlHt
         I21m9GiQAQCFLctWK1pR43YWLBWcCTOU4XYIuqaOy8QpZRAQI9/tc1o2DxNi98mL/cuo
         DrtGVe60gSXmAXyjqvI0K70J6y9HZOhFCMg7WhTOJtQQiZ3w6c70HgtrZAYr7GPP95uO
         tJLhYEXRc3PokhfPUNd8Gnnj7BMAMTDc/hlkWRnlvUWYsuSQQw8qpZp3J4kgitTpH6Oj
         k2u0cKg3G9n/6ak6QLgl3ncQb6c9hr9DYr7L3YYIengfAEfztAYcu38DGesz/96QBjdB
         ikpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AfCMCftx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o13si69201qkp.0.2021.07.26.13.40.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:40:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D20160F93;
	Mon, 26 Jul 2021 20:40:10 +0000 (UTC)
Subject: Re: [PATCH v2 3/3] scsi: qla2xxx: remove unused variable 'status'
To: Bill Wendling <morbo@google.com>, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-4-morbo@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <52726cd7-48d0-4600-aac1-bc39fc60bf66@kernel.org>
Date: Mon, 26 Jul 2021 13:40:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210726201924.3202278-4-morbo@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AfCMCftx;       spf=pass
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

On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> Fix the clang build warning:
> 
>    drivers/scsi/qla2xxx/qla_nx.c:2209:6: error: variable 'status' set but not used [-Werror,-Wunused-but-set-variable]
>          int status = 0;
> 
> Signed-off-by: Bill Wendling <morbo@google.com>

It has been unused since the function's introduction in commit 
a9083016a531 ("[SCSI] qla2xxx: Add ISP82XX support.").

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   drivers/scsi/qla2xxx/qla_nx.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/scsi/qla2xxx/qla_nx.c b/drivers/scsi/qla2xxx/qla_nx.c
> index 615e44af1ca6..11aad97dfca8 100644
> --- a/drivers/scsi/qla2xxx/qla_nx.c
> +++ b/drivers/scsi/qla2xxx/qla_nx.c
> @@ -2166,7 +2166,6 @@ qla82xx_poll(int irq, void *dev_id)
>   	struct qla_hw_data *ha;
>   	struct rsp_que *rsp;
>   	struct device_reg_82xx __iomem *reg;
> -	int status = 0;
>   	uint32_t stat;
>   	uint32_t host_int = 0;
>   	uint16_t mb[8];
> @@ -2195,7 +2194,6 @@ qla82xx_poll(int irq, void *dev_id)
>   		case 0x10:
>   		case 0x11:
>   			qla82xx_mbx_completion(vha, MSW(stat));
> -			status |= MBX_INTERRUPT;
>   			break;
>   		case 0x12:
>   			mb[0] = MSW(stat);
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/52726cd7-48d0-4600-aac1-bc39fc60bf66%40kernel.org.
