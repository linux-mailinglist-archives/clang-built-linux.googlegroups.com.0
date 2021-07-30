Return-Path: <clang-built-linux+bncBD2MFOHTXMBBBBMESGEAMGQEGAZQ73A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id B453A3DBE35
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 20:16:38 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id c5-20020a05620a2005b02903b8d1e253a9sf6206801qka.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 11:16:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627668998; cv=pass;
        d=google.com; s=arc-20160816;
        b=NXcuuVDlOqp5y1BWcQ2WwzbyKMnMUgUvutyE8G2JrP7f09fKCkgQ7b8AV9glTIUn0/
         aH6V7TSpQibl6zpIvesXzagFBmBuRLlayPVptyC58cHhu1/bmlxOdkKc6I3NzpcWJnUM
         w+130S3D0C/Y1Uh3JgRxMeBTM8cisGXRMZoAx+zfeW46QhMLn25JZm6XLhiR//Gz8GmW
         HQnE4OoSjD9eMP3czslpopOsEswbIMLEluzdCEWuuDGsx1JmCrsly27/uJy3dMloV/O1
         ATImsS6bwV9B/eWxKLQsfcKpSoGKls3FbD+jfCFhH2AFKEucvD3GaZovGUDpuibXODmW
         TDKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=LzgQ5qWgyMWolQs6wTxXxhOsH+nzIctxIAdy4rsIrVI=;
        b=ftiwH9Tc0o3Y2VIQWHCtfNYnqji9IYq7cjLKgvZMtlhbi2ORzNfc7idCVzutAmfrTZ
         IGdir6q3ehwlI57ZCoVQnHexGgSl1h54smOYHXcR8ZNRq7nDGFQfKZy/0GWFvNaFrNrq
         5HPVtysTzjV/o41YoTJ9NmrF3OwCm7DbLqYvoqklxwHxidnBdzOP+2YGb2FshpwSakWb
         Fku6LxR+QmNd4IgYsJONo5Cw9rdcdJBFyaYKcdQFnAYzIB4zJ6r/hzzi/ixwNOEuzBf0
         uh/rR53A5q27DljT9a83QKZYLCbM84Fmq/VEoFQhKdMf20y/dh2qJjkNKJC3uYVqejMw
         1ymQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=MmozcAgt;
       spf=pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=tyreld@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LzgQ5qWgyMWolQs6wTxXxhOsH+nzIctxIAdy4rsIrVI=;
        b=tcVuXBjBW5vY+HJVzK0xT4gkSwUsw0I3I0j66qAeCsZXOuTebgThUUdfcEZe4/RlF2
         U/VviKKbbGbqMhhjgq1hSITdJC5qLJEj0fehLks9eW/lbZO9x1q9p/+qHU0CMoCQ/7Dk
         qWSTTQ9UN7hAn0FKxLqI9nL4VV5kL7kGYxdhyVgcbedcz3/uwXx6spC0gCSN3fv/OWFj
         VoYNdZ47UFsjjrf3/IXrE5u+gG0Tz/a+pDzwMd+3H0iLnCxrFn96OIsBsuEyKgePOVdV
         b+8AU4zeTDEP6YDRKTHS1DzkV1d/fIG5J9txHbMHOPheLj6Q6NG8sal4OPm0LYKEkECz
         cP1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LzgQ5qWgyMWolQs6wTxXxhOsH+nzIctxIAdy4rsIrVI=;
        b=fMBGebtqAq6tkCCpPjblDaCo9Q46QtTkkZVqdAi8FtQlfON7zgxGqSmVyF1Ih0kdQj
         stKeKyhCFABHg62pzv/DBciGs7Do34TdxKP89S/IYV7xAx/qSvIweSidpSMtjVItY6yT
         0Us1IoEYBZkdVUJCrVp6ddc31mtvR5TapjmdOzRzR4qhxVGd+bmHOyi28c21iZLMUqF3
         /XEnR4qB+CIR5tMEX14VG+JbjQeok4u6DDmsru3/yJbOZJRUDMQGDnwHL7NlLPeDUkJ1
         7+2KcvpQl4c20fBQ9Xn2MSSVKzRIfWaE2JbWDm0/4hbEABYx4Iz1zBcOgJEXaJEgr27C
         IDdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PviXyFXcHonNWkPmnK/ugE440qgPSyyIdIKeiuCBHeYs16DRt
	8dBwL40WsXvsgwfNb8Hamb4=
X-Google-Smtp-Source: ABdhPJzOMQPL+wYxW4rDE6V2sGCiFXzZ8+ggZisLf24MlVjM6Vk4GBWIXQLxzOoGHv6GpJwxXAks1A==
X-Received: by 2002:a37:74c:: with SMTP id 73mr3435155qkh.104.1627668997859;
        Fri, 30 Jul 2021 11:16:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d686:: with SMTP id k6ls866564qvi.11.gmail; Fri, 30 Jul
 2021 11:16:37 -0700 (PDT)
X-Received: by 2002:ad4:4e8f:: with SMTP id dy15mr4288070qvb.24.1627668997483;
        Fri, 30 Jul 2021 11:16:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627668997; cv=none;
        d=google.com; s=arc-20160816;
        b=NPdqfFuMQL4Bq2Wxnw8ju1bS4yiSvuX3Q5Sdnvr6NP3NBq439UesfrVifGCfVoyPMq
         mgeIe+B33YOjCOUP+76KJgm0pbL9qZADn1Zym5ioMHAp06AcFT9QiO5piDISmLiJ0oLB
         aAq8gYCOrJj1VlGru2oqBrCFdaOwQroW9uykOxplwkD4LayKZtd06NxW7p3+eQjR73+2
         Q2cxXazH3n6h9hlr0bvfBFezoph7sDn5dJGOOTYQwJbtO7PypB2i9IyKsXaywVcJCHMe
         oTd0+NnHOynlAFTSYbB39fA/YzM8IRazKAuqRdidcnijrZcJCSfFbaTsrDouXeUoVMh7
         /FrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=47G+jOd9ft2urcdZVKEMDZ0W/umlhqgBNQoiaG8/OGA=;
        b=UeafFgN/CvCfuBV4eV62sHNZSpkJ3WR6x/FLwcn/gAcE5Owc3Q//o8tLiTBhxgZnkW
         SYX1KHh+aWU6pjoWRhO3bSwLwudW56kRzbO+lTLqUnbzvSaw2Nh+d5kHD/eU8eP1thHh
         Y67l1VO9uT+7VWMpDD+NIkYC6VrTxJrZuo78L1BGRC+J3VeVOM+RpSkV8s94JYS3o4PH
         WXWj/0/86QNOppFKzhS0f0IatbLl2KLu4K6WA727+jIUfm2C9zS+tg1Mp6jVRrgp53FY
         hzGQsfHQ8p25GEZHCWck7OGwTjP1QrPwgAfTMKwux527WuTEMhRk2yzrYBW045Mz4b1c
         iDmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=MmozcAgt;
       spf=pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=tyreld@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id 138si126069qkl.5.2021.07.30.11.16.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:16:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16UI3vac158050;
	Fri, 30 Jul 2021 14:16:34 -0400
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
	by mx0a-001b2d01.pphosted.com with ESMTP id 3a4p568pj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Jul 2021 14:16:34 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
	by ppma03dal.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 16UI75qd019316;
	Fri, 30 Jul 2021 18:16:33 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com [9.57.198.28])
	by ppma03dal.us.ibm.com with ESMTP id 3a235u95p7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Jul 2021 18:16:33 +0000
Received: from b01ledav001.gho.pok.ibm.com (b01ledav001.gho.pok.ibm.com [9.57.199.106])
	by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 16UIGWiZ34472428
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Jul 2021 18:16:32 GMT
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 75B7D28060;
	Fri, 30 Jul 2021 18:16:32 +0000 (GMT)
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6A40028059;
	Fri, 30 Jul 2021 18:16:29 +0000 (GMT)
Received: from oc6857751186.ibm.com (unknown [9.160.21.31])
	by b01ledav001.gho.pok.ibm.com (Postfix) with ESMTP;
	Fri, 30 Jul 2021 18:16:29 +0000 (GMT)
Subject: Re: [PATCH 36/64] scsi: ibmvscsi: Avoid multi-field memset() overflow
 by aiming at srp
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
        Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Keith Packard <keithpac@amazon.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
        linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
        Brian King <brking@linux.vnet.ibm.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-37-keescook@chromium.org>
 <yq135rzp79c.fsf@ca-mkp.ca.oracle.com>
From: Tyrel Datwyler <tyreld@linux.ibm.com>
Message-ID: <6eae8434-e9a7-aa74-628b-b515b3695359@linux.ibm.com>
Date: Fri, 30 Jul 2021 11:16:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <yq135rzp79c.fsf@ca-mkp.ca.oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: gc5JE-Gvwp4LjpvIX5-GdEcqjSPid7w2
X-Proofpoint-GUID: gc5JE-Gvwp4LjpvIX5-GdEcqjSPid7w2
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-30_11:2021-07-30,2021-07-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 clxscore=1011 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2107140000 definitions=main-2107300121
X-Original-Sender: tyreld@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=MmozcAgt;       spf=pass (google.com:
 domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=tyreld@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=ibm.com
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

On 7/27/21 6:39 PM, Martin K. Petersen wrote:
> 
> Kees,
> 
>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>> field bounds checking for memset(), avoid intentionally writing across
>> neighboring fields.
>>
>> Instead of writing beyond the end of evt_struct->iu.srp.cmd, target the
>> upper union (evt_struct->iu.srp) instead, as that's what is being wiped.
>>
>> Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Orthogonal to your change, it wasn't immediately obvious to me that
> SRP_MAX_IU_LEN was the correct length to use for an srp_cmd. However, I
> traversed the nested unions and it does look OK.
> 
> For good measure I copied Tyrel and Brian.

LGTM

Acked-by: Tyrel Datwyler <tyreld@linux.ibm.com>

> 
> Acked-by: Martin K. Petersen <martin.petersen@oracle.com>
> 
>> ---
>>  drivers/scsi/ibmvscsi/ibmvscsi.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/ibmvscsi/ibmvscsi.c b/drivers/scsi/ibmvscsi/ibmvscsi.c
>> index e6a3eaaa57d9..7e8beb42d2d3 100644
>> --- a/drivers/scsi/ibmvscsi/ibmvscsi.c
>> +++ b/drivers/scsi/ibmvscsi/ibmvscsi.c
>> @@ -1055,8 +1055,8 @@ static int ibmvscsi_queuecommand_lck(struct scsi_cmnd *cmnd,
>>  		return SCSI_MLQUEUE_HOST_BUSY;
>>  
>>  	/* Set up the actual SRP IU */
>> +	memset(&evt_struct->iu.srp, 0x00, SRP_MAX_IU_LEN);
>>  	srp_cmd = &evt_struct->iu.srp.cmd;
>> -	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);
>>  	srp_cmd->opcode = SRP_CMD;
>>  	memcpy(srp_cmd->cdb, cmnd->cmnd, sizeof(srp_cmd->cdb));
>>  	int_to_scsilun(lun, &srp_cmd->lun);
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6eae8434-e9a7-aa74-628b-b515b3695359%40linux.ibm.com.
