Return-Path: <clang-built-linux+bncBD2MFOHTXMBBBLG6RD7QKGQEARWV6LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F26B2E0DE0
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:38:54 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id p6sf12212651ilb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 09:38:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608658733; cv=pass;
        d=google.com; s=arc-20160816;
        b=RzVgD0O3BAWlg1D5JcFFl6kPfyGwN4PEej1nr05c9uSbjEH9DxcIVwMS9XSp8+hw7x
         e6js9jfG2b8HzwxkgR+m03u06kqXCf2HAuPgApEaYUweo31iSo0Z8iOxV4/EDxT8LzLq
         7qN4IwUQltwF8H+KmKqKbxi7cY+IpkCeDLnErMm8mgcUFh8UJHr/p/orBxfLTrjkv/cv
         QiroyCS0KxyPlr1opumkroa3Oc5v7qrYf81nhmJ1V7VzMZ9RFS9TXYFmxNfiXgHyIfJ+
         4tng3MB4Ne3qUiXvWaNQgWEhAGYrzF+zl82ZbNZcRxnPa9VDdA7iCElHLljrkfQ1L83X
         UL0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=gmqSsEuge0d0MwesenepwZJoUoVjVWSv+lj08gV71t4=;
        b=BorJxkM4JM6OSe2MlojKRqINK+PubY0gd0bX8Ong107UMWesToYoI8PPWE4zIIRhaH
         Q1f7/QKd+dU4FUS94CLVCQDGlcLCluc+8VY+Tntrx57umFduLpS7ozv2UXMJbpCKbN5H
         aNExV/k8MN4aF19T152Npxns47cyoJYOTC9cdxzKNIIiBzx3vZQ1Bwld93BgdWMTB+nd
         KtbjzCKY2xmOwrIs4Xo1Q/GnHIyY01zmAuT179p3sP8A0Q2JzKksV8dlKGi9V0CF0ca+
         Ez3awGgTBOHKo4WLq2abp8RzzVGi40Ja/458lK933Pykx5iVTX5QEpwrPrxU6GR6jZyT
         y7EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kaF4LqkX;
       spf=pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=tyreld@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gmqSsEuge0d0MwesenepwZJoUoVjVWSv+lj08gV71t4=;
        b=PiHMXdw5BCxIdtqjBeUCRrvNknreso+DMAuEC+TvWrb9VsqoY8H6ZpuGeOW/Vsy1eL
         HikwSIoIKwoUyKqcycdpbHbtw9RSZsf1dAZOpyXeSgNZGPQNRpM+MM3PTHWka5iLrrQ7
         ndvRbuxvdP6Z5RZ3m6lChJ35fP2sjSg2pw2+TpYi2MpvlvWOWMY7RoIBPUKC5izRrcMh
         sssqfCE6+butiB9dMRZYAPtTMuqZC2hDXliKwEYsiO4oXlINqRQqqwUpOTwC6Y1mmeJ9
         LSx/LRGIk9yLpU8XaWnvwHuyvGZEXH8rfYsNjx2Eznsx3KbE5J3lFTifrM+ORFHH/lME
         ZT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gmqSsEuge0d0MwesenepwZJoUoVjVWSv+lj08gV71t4=;
        b=E7rZPJ7XRNSjovE8+Qp8hClynzR06HdK8H2IOmP/5BY2iqsB/hMOG5Ta4Il0ZARlGj
         xVbZ7UqtetaDjMCTBcgWPVp5/qH+oyQwWkX6z8gM8GR3HHwbRFC8udvU0nrddGOlDWb3
         EZcvQG56yJj3CgkeyEimLhbbdev6GuV2q1bFgBKPUBzdetmboF1Y6lSwRBGy5F9l7A9K
         NMe4j3IVcOfjEBPWbZf2gaFSKo6NEaLfDL0sITVerzlXxlWwWtPWduLlUFQBdg98S13m
         waVmUUHrn2ZHpOhH0+htQNpklJQeWWzV+Y303pU6sbQYTLlx3r2BWJ0s8e+0hXmJV8Iq
         vJJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nBIX1YyQPxk9375C39iU5dLPxu2vY30O6dP/hV1XTLlmpd5rg
	HKU2jF9wi28s7pcm4n9FixM=
X-Google-Smtp-Source: ABdhPJyinnyzV5XyanqYKSpC/6cZlGM1C4lpcNQrYQ7nc6BOhe+pMLRGSPtP4jHLo2E7N+cELNklCw==
X-Received: by 2002:a05:6e02:e01:: with SMTP id a1mr20846991ilk.101.1608658732971;
        Tue, 22 Dec 2020 09:38:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:845d:: with SMTP id l90ls11117299ild.5.gmail; Tue, 22
 Dec 2020 09:38:52 -0800 (PST)
X-Received: by 2002:a92:da87:: with SMTP id u7mr20704887iln.230.1608658732589;
        Tue, 22 Dec 2020 09:38:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608658732; cv=none;
        d=google.com; s=arc-20160816;
        b=XdOV9BhIjEFM4AiWC4B6NIttwLfEDxhbyoo1L1U30LgsjvFQYuhI4ngbg2/Pknb6QX
         njsLwsBC8glFeZ2H4FLP7Rj9i6kii86BoXkrFyykMBksktalOnEFmc4CqIy/S8e+ticM
         UYKM7telQJcaCVLQYJXdt14hRfb1jcvgzBOkIvxE0Eaz81s0te28ibaPO2wjf0MVy0Ig
         TBLh7fTmaGTaFWywMKTyTWkhxCdwusQ1rmHAMo9d94slV5b9g+5y8+zdF0sdh5xSBcuu
         9HRb8ZvXUYx/bjbBFBB/ua6pkAICK1ctLa1FUQGFaRSAHQvBSRwnmTICS7zM1IUhnt2Q
         aD2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mzxAJ2qdjDobwjZYtIc9FAiKEaQborbGTrAtKji3Sl4=;
        b=gnz50a96NP+KmoZ81ZyPwyRTdQiUP0nxXrGK+/K+G52IghOMYFxJ7F4pPIyutYdeRE
         X6TsBE9GLI/A0DX7FErLQ6GJPc7WDqp3hlRYErf2xn7xGeg5/2YhWfQe/hYy/bGNh1A7
         rvbYpsBkl1+JinPJbMFucUG7FoX92zVqKQXqaVpckpUpQijgdmJiDXgk0C/NfiXgyc2O
         85YAdN7Z+qCjrnOu42IrbqUulSDf6ZwZKx0TAPXtMfgfydXm7bh5+p5Li3u245l9K1M2
         tYJXFB8bbbbLu8knCJN3IJzfsp3rIWeKDSSKRqDhXXKtFtAtTmSQIoI8FfUpV0v1o4Ab
         1dbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kaF4LqkX;
       spf=pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=tyreld@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id b76si1945239ill.3.2020.12.22.09.38.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 09:38:52 -0800 (PST)
Received-SPF: pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0BMHMY9l144137;
	Tue, 22 Dec 2020 12:38:51 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 35kn510aeg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Dec 2020 12:38:51 -0500
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0BMHOeBK155030;
	Tue, 22 Dec 2020 12:38:51 -0500
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com [169.63.121.186])
	by mx0a-001b2d01.pphosted.com with ESMTP id 35kn510ae9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Dec 2020 12:38:50 -0500
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
	by ppma03wdc.us.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0BMHSRDu029108;
	Tue, 22 Dec 2020 17:38:49 GMT
Received: from b03cxnp07028.gho.boulder.ibm.com (b03cxnp07028.gho.boulder.ibm.com [9.17.130.15])
	by ppma03wdc.us.ibm.com with ESMTP id 35kdqy2wym-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Dec 2020 17:38:49 +0000
Received: from b03ledav003.gho.boulder.ibm.com (b03ledav003.gho.boulder.ibm.com [9.17.130.234])
	by b03cxnp07028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0BMHcmrX28770794
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Dec 2020 17:38:49 GMT
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D32E96A05A;
	Tue, 22 Dec 2020 17:38:48 +0000 (GMT)
Received: from b03ledav003.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4C13B6A057;
	Tue, 22 Dec 2020 17:38:47 +0000 (GMT)
Received: from oc6857751186.ibm.com (unknown [9.160.78.58])
	by b03ledav003.gho.boulder.ibm.com (Postfix) with ESMTP;
	Tue, 22 Dec 2020 17:38:47 +0000 (GMT)
Subject: Re: [PATCH 3/3] ibmvfc: use correlation token to tag commands
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: james.bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        linux-scsi@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, brking@linux.ibm.com,
        clang-built-linux@googlegroups.com
References: <20201117185031.129939-1-tyreld@linux.ibm.com>
 <20201117185031.129939-3-tyreld@linux.ibm.com>
 <20201222062403.GA2190683@ubuntu-m3-large-x86>
From: Tyrel Datwyler <tyreld@linux.ibm.com>
Message-ID: <b71fcc6f-bb07-f02d-8e1e-79fe4f5802dc@linux.ibm.com>
Date: Tue, 22 Dec 2020 09:38:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201222062403.GA2190683@ubuntu-m3-large-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2020-12-22_09:2020-12-21,2020-12-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1011
 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012220126
X-Original-Sender: tyreld@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=kaF4LqkX;       spf=pass (google.com:
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

On 12/21/20 10:24 PM, Nathan Chancellor wrote:
> On Tue, Nov 17, 2020 at 12:50:31PM -0600, Tyrel Datwyler wrote:
>> The vfcFrame correlation field is 64bit handle that is intended to trace
>> I/O operations through both the client stack and VIOS stack when the
>> underlying physical FC adapter supports tagging.
>>
>> Tag vfcFrames with the associated ibmvfc_event pointer handle.
>>
>> Signed-off-by: Tyrel Datwyler <tyreld@linux.ibm.com>
>> ---
>>  drivers/scsi/ibmvscsi/ibmvfc.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/scsi/ibmvscsi/ibmvfc.c b/drivers/scsi/ibmvscsi/ibmvfc.c
>> index 0cab4b852b48..3922441a117d 100644
>> --- a/drivers/scsi/ibmvscsi/ibmvfc.c
>> +++ b/drivers/scsi/ibmvscsi/ibmvfc.c
>> @@ -1693,6 +1693,8 @@ static int ibmvfc_queuecommand_lck(struct scsi_cmnd *cmnd,
>>  		vfc_cmd->iu.pri_task_attr = IBMVFC_SIMPLE_TASK;
>>  	}
>>  
>> +	vfc_cmd->correlation = cpu_to_be64(evt);
>> +
>>  	if (likely(!(rc = ibmvfc_map_sg_data(cmnd, evt, vfc_cmd, vhost->dev))))
>>  		return ibmvfc_send_event(evt, vhost, 0);
>>  
>> @@ -2370,6 +2372,8 @@ static int ibmvfc_abort_task_set(struct scsi_device *sdev)
>>  		tmf->iu.tmf_flags = IBMVFC_ABORT_TASK_SET;
>>  		evt->sync_iu = &rsp_iu;
>>  
>> +		tmf->correlation = cpu_to_be64(evt);
>> +
>>  		init_completion(&evt->comp);
>>  		rsp_rc = ibmvfc_send_event(evt, vhost, default_timeout);
>>  	}
>> -- 
>> 2.27.0
>>
> 
> This patch introduces a clang warning, is this intentional behavior?

Nope, I just missed the required cast. I've got a fixes patch queued up. I just
haven't sent it yet.

-Tyrel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b71fcc6f-bb07-f02d-8e1e-79fe4f5802dc%40linux.ibm.com.
