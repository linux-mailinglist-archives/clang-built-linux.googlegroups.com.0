Return-Path: <clang-built-linux+bncBCHJVF74S4BRBIM3THZAKGQEQJSWZ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BBC15D2DF
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:34:58 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id a20sf4632143otl.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 23:34:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581665697; cv=pass;
        d=google.com; s=arc-20160816;
        b=FGmLqHfdTSzuv+0K3dUqjykKW4X5kKQRijPUzpZm6jAnq8zPeXUUD9vtUojAgwnJzL
         UtmQzoX5dDmiqU+bDNJFHG8ljFTolsAVRbee3/1zE8KEuHF9oaNMMM+fx+39MRtT+/t9
         BLdr0mAZyygHA1pLPc/XxMCF3gcj5dN/2Y1ljx1OZWKWZUXgSZ42b6P16/oBWEEwiLUh
         OQEsO1QWjPL19Fa8+5MMhhE9/dG9I304jG/nmRCMgv+wY3g2/eg/X95tC0YlUZze/3iL
         h9Vn10kN26gD1Gtvx8JcVGiJ5GfwYA5LA20ZdYzSXfDerMjpMgml8gZ4urOeRShTO1QI
         vA6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:content-language
         :in-reply-to:mime-version:user-agent:date:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=FT2fV7hkvM7b++WG5Fjy97XoMfrkCPjt4eeK5MoiCK4=;
        b=saYF/yaMdm/Ovmi5V/3By0KWRkHEgf4J7F16NHJdGZ6aswDTQESvgkNjlvCZJCGTWO
         BAn4LklQxLqniVtS4sbuhKqLtgzUwyokwhgatSWoqJJtpO6toTIXI/lyqgZyvICdQhr4
         Vl+ljwmQAla8uygAmyjuER4Ev6TMn1J1s3SQY1NBTf0B2twRuEN8TxWx3H3gMiXN22WL
         6jNwWO5op5kLVSv/nZcsG5Rq6amtl2jn9KW/IqOg8CpuuzGJpngM1T2PykDf6yMc7zhL
         RK9/fLL8UfFWetKabf1FPM21lpTQgeBrJUBs/SwwDwGtf/0bdCSuhRZgWBhjFSeHlymz
         gIhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:date:user-agent
         :mime-version:in-reply-to:content-language:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FT2fV7hkvM7b++WG5Fjy97XoMfrkCPjt4eeK5MoiCK4=;
        b=qTdhT5H/KP8bDAcxtYrcmztWyvslloHg4m56VUEjXY8EQ/x4argoKB8iYrmFk0y0L0
         VoaYKOzLJqrrtqDG0y0ZK0xQ+vrUi+NesGQ5p5GKuT882jA3jBbwW86BKRWSUuITABgG
         ROA10q2//nnjJ0UqulSKgB6ftV42tpZifWeGv4vnxW2lzrrZilpBCC/dP5IFwZZSYHOk
         ucKnekAvznTKA7H5me8OoYpKAHxdiU6qI2t9tmTnlebTHF8yQGH/+iVy6TvFD8DHBXrM
         3Pee2pejYvoZsb3XZj5K46FOcfArO0ossx/ju+tn8wNiktA2THwdlY8yT0kGe6rhFl0c
         WZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :date:user-agent:mime-version:in-reply-to:content-language
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FT2fV7hkvM7b++WG5Fjy97XoMfrkCPjt4eeK5MoiCK4=;
        b=UaKRSxO4h3VWoL+nnpCOj+A04jltLUqD7PyF2Q1rB993aUeIwh6WA4th+1CrPfDVSG
         OaPhCZU6ueQftTZtG6qMdwyZr9WefUEfGJCn7Sb8Sfq6d4jFrvdhAOWeWMIoGBmaqhaR
         bpZMj1lScFL742NaGvh7S+Y8Y+vmr6mF9bfTdkQ1nahsZbmXs4CHQKCE3BmPit02k7Rh
         TVl9zNXsMmzqEXZg+0QSccjh9Yc+VqOCIJxnVec7enMCVz8JXMn/Crv9m7qrt0vfQ5Th
         uPk80zNoKBzworWKz+qRBdP7uO0usipa+eTkekyP1l0TqG2L5I/FFILHmk9DOaLcGsr0
         Uo+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUvYHTMHK00TMg7bKkhNCSfO4tfc7IMDt9FCf1IOwObno/GpqR5
	ekANX0aX/daMq+cS808dQ3g=
X-Google-Smtp-Source: APXvYqxPAhIS9eA6W56lgO9aGAq7eOFEsjgbtFyrTgbnjFuSHS/rw5LvfEe/MQc1erXrjeOsSZrbuQ==
X-Received: by 2002:aca:d544:: with SMTP id m65mr983218oig.177.1581665697326;
        Thu, 13 Feb 2020 23:34:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:611c:: with SMTP id i28ls314286otj.3.gmail; Thu, 13 Feb
 2020 23:34:57 -0800 (PST)
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr1187017oto.355.1581665696981;
        Thu, 13 Feb 2020 23:34:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581665696; cv=none;
        d=google.com; s=arc-20160816;
        b=wEDyg3ofVAHZF2ejMPEZt3h3/zoeMAIjcU6KcR5vMZWXlHPmj49pTIHEiP0kfUFkW/
         dfHS8a8W4hCU+1wUfewZEUmTJELJXYxZsTWA6temp1cbT5eQ8XYr4nZx1rJyZ8sHLmun
         Ly/oedoz/DeBgVkcXYMy8FeICcHLOHGqsknNoH0eBHCqz9aodSnQjEsQwfVpKRQ4OrE0
         PgBlapwfj5DkDSFr+hGG3lJ9eeHnVq+MQ9Ii4TI45xFDXesrs47TLqeW3wXiEo6evsgQ
         aaNdh4Iv/iZ2ZU6vHWIMnGSOVIaeCwuQmJ//YJbwdWGOPl+jncuQkXuMuiIsf3+g8S9h
         iO2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:autocrypt:from:references:cc:to
         :subject;
        bh=P36nAjOIJcOASiqPBQQB6K5NE1c0gsZ9SByOB9JeQPA=;
        b=EbSi1OpV2WCvFJ4NslKU8hdbFZvIsjB6rS8K5Cpj6qVKNkp/NjJ4fbsaoGnKMMQfjJ
         QJLwVfWQCnvytl7ESf9FxiTQ/nghx/94Ae0EC3Dbx+ErnqpaUJRA2orB7EVeX6tBWUeF
         6MVG6UaxXeHxI+a7gvahQl5CgprN4T0V5xOVIOWpzipodLdgL9yNpsC5fvi4gJSwzyZx
         CGGDJx93EEzs6kHFy7xQQ+rrrLC6tY4NGeNxKLuOTupXOYNKFxiA4ohC3m2BXI3f5wqz
         5iPACXpt3ODYOdBVNIHv/a6uXNRWHtbzTy5QpniHueE7hia3pWAPrRGmEsaJTScLuY6e
         A9kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id s10si220719oth.2.2020.02.13.23.34.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Feb 2020 23:34:56 -0800 (PST)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01E7YdFN098054
	for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 02:34:56 -0500
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y4qytvnwu-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 02:34:55 -0500
Received: from localhost
	by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <borntraeger@de.ibm.com>;
	Fri, 14 Feb 2020 07:34:53 -0000
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
	by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Fri, 14 Feb 2020 07:34:37 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01E7YaEo60227764
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 14 Feb 2020 07:34:37 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E2E2BA4066;
	Fri, 14 Feb 2020 07:34:36 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A9D47A405B;
	Fri, 14 Feb 2020 07:34:36 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.152.224.211])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 14 Feb 2020 07:34:36 +0000 (GMT)
Subject: Re: [PATCH] s390/mm: Explicitly compare PAGE_DEFAULT_KEY against zero
 in storage_key_init_range
To: Nathan Chancellor <natechancellor@gmail.com>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        Vasily Gorbik <gor@linux.ibm.com>
Cc: linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
References: <20200214064207.10381-1-natechancellor@gmail.com>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Autocrypt: addr=borntraeger@de.ibm.com; prefer-encrypt=mutual; keydata=
 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
 nS4h0HDFPrrp1C2EMVYIQrMokWvlFZbCpsdYbBI=
Date: Fri, 14 Feb 2020 08:34:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200214064207.10381-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20021407-0020-0000-0000-000003AA036C
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021407-0021-0000-0000-00002201F0FE
Message-Id: <e93b8ff2-0203-445c-c226-df482e542cb0@de.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-14_01:2020-02-12,2020-02-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 phishscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 lowpriorityscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002140061
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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



On 14.02.20 07:42, Nathan Chancellor wrote:
> Clang warns:
> 
>  In file included from ../arch/s390/purgatory/purgatory.c:10:
>  In file included from ../include/linux/kexec.h:18:
>  In file included from ../include/linux/crash_core.h:6:
>  In file included from ../include/linux/elfcore.h:5:
>  In file included from ../include/linux/user.h:1:
>  In file included from ../arch/s390/include/asm/user.h:11:
>  ../arch/s390/include/asm/page.h:45:6: warning: converting the result of
>  '<<' to a boolean always evaluates to false
>  [-Wtautological-constant-compare]
>          if (PAGE_DEFAULT_KEY)
>             ^
>  ../arch/s390/include/asm/page.h:23:44: note: expanded from macro
>  'PAGE_DEFAULT_KEY'
>  #define PAGE_DEFAULT_KEY        (PAGE_DEFAULT_ACC << 4)
>                                                   ^
>  1 warning generated.
> 
> Explicitly compare this against zero to silence the warning as it is
> intended to be used in a boolean context.
> 
> Fixes: de3fa841e429 ("s390/mm: fix compile for PAGE_DEFAULT_KEY != 0")
> Link: https://github.com/ClangBuiltLinux/linux/issues/860
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Christian Borntraeger <borntraeger@de.ibm.com>

> ---
>  arch/s390/include/asm/page.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/s390/include/asm/page.h b/arch/s390/include/asm/page.h
> index 85e944f04c70..1019efd85b9d 100644
> --- a/arch/s390/include/asm/page.h
> +++ b/arch/s390/include/asm/page.h
> @@ -42,7 +42,7 @@ void __storage_key_init_range(unsigned long start, unsigned long end);
>  
>  static inline void storage_key_init_range(unsigned long start, unsigned long end)
>  {
> -	if (PAGE_DEFAULT_KEY)
> +	if (PAGE_DEFAULT_KEY != 0)
>  		__storage_key_init_range(start, end);
>  }
>  
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e93b8ff2-0203-445c-c226-df482e542cb0%40de.ibm.com.
