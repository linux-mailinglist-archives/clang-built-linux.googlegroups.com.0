Return-Path: <clang-built-linux+bncBCTO7KXIRAPRBJNAZ7ZQKGQEINSJRIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C07E18C0F8
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 21:03:51 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id o5sf2677316pfp.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 13:03:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584648229; cv=pass;
        d=google.com; s=arc-20160816;
        b=iJvkXZ3RLyT/8fbj/GZnNKx/JqnzsVQyF2Ab9Cpo4ErV/Sjo+9x+yBeYg6fwia7EIC
         zDh9Fa8vIinCozq0InsAR5VTwmyazXApAu2+dCk0RmgInHG0FCPTLqmJ0YzrjebA9/rJ
         zgUNFXe4fpI7ZSG9waiMm3D7sSoUj5y2q3qrbR/QsOy87dPEeOf74kcos4i4ETPjEsAQ
         TeJBmMxE1wc3UMmAh6Jk6iX81GaYgGGUyPSI7VwEmDLah2fWPz9jiLJI41s9nHKHTk+Y
         FW11XJ4UwgjWME/6eAUa9Nyv+8nwMGw4zj7XcoZs6AOxV7lfKDfMuNVwlD8uNwwmUsVY
         VK/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=mIAMfG0h7CMppOhvg3pvgmTA56yfukiYFOGA6JGQ8pM=;
        b=ESdoDOo+2VUt4vozB03P9lzoONXtEDWzJ6dVx2NejQFU7sFPJxQlyVyxSFFx/NGa9Q
         KdMzZVzxfz6FF5OufBRT3BL9l5NT9eiT4cNTmJHcaIzNrd64FxhKIZpwJb2b7iiiwQ0O
         lsuaUGYsXa0iVBQbLZMFsCzxN+xpH3KrQ0i1j/FVdsogck/V1I56v8xhIg/WOeBSwel3
         3jo3v8XvkZm6VpIW1cY5HGDR+ddOoVsxTbl8Q3in+9LHaPpwP6YZLsyJ+P40rexFju6f
         J/0XqsXsAkRbwNx2PJqRl90hzs3wkNJvtXGfpmbF2Rqbv/jrrlXHYm4sKcuJeh4AWY2u
         A3cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@akamai.com header.s=jan2016.eng header.b=H3mDhUz8;
       spf=pass (google.com: domain of jbaron@akamai.com designates 2620:100:9001:583::1 as permitted sender) smtp.mailfrom=jbaron@akamai.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=akamai.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mIAMfG0h7CMppOhvg3pvgmTA56yfukiYFOGA6JGQ8pM=;
        b=Xk1gn076sEXjythyFKtXwFd0rBc7DPIpdSWo3bW4RiJ4BrJkzPVlXikzhVTQOm2mKd
         Dn3BOOOEBhFvDswQ5njbKJ9BB3+k2uPjwHiXtZ8+WQZUMO3ZIfcCmJ2u8WeaCGqxnFY7
         jN1m9vfSMaKiV4d5+Bg7qGpqaK4TSZw4hFxcnpSwC6vH0FvU/Tieqm99nwSLI/+mzZaF
         UESnI+HsyXkDYhOHjqvgVmWJ7fr4DjzegbtImirnPZ8meeSbp7awvCf4X+s6ZSZcA+o8
         mhv57PC4czd5ZiY6HG69IKFpGK8L8XcQLr7FKDQ4MnhfLmP13dL3JR+Jma5MjPDNLyaU
         AkoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mIAMfG0h7CMppOhvg3pvgmTA56yfukiYFOGA6JGQ8pM=;
        b=e350PkYrUcn7DlUmZK91E2qKjGJsKxF9/ToIBOX6NaLsWtjRvRIctYALKKgEFHgnfs
         j0vlSclvTMKsCXjbO6/j5be+TF2PK9JWx02w/7sexIHfGGUoJLBQRzTyDddQbvfg87vY
         ApT759VF9OF6NIlWLqy6mO7t2L38l1RDq1AVA5RUcqln/AjuIZ+z50SrTWadJYMWNevb
         PR/mYlLPSxNG6PljWc7QieJvw0cmiLRfubhCkCLr2nd+sUK+wjzxCNbAJSRo8+xxt6MS
         J4pjlXpiEtxaTZ09160hM6wOHSQTEGVpIASg0mAg0Fn0cog6HSN/vqBTJakSAZL0XmtO
         Ds8w==
X-Gm-Message-State: ANhLgQ3yUlxkGOXVFCbb6Ol8Rnq7li40cpt33GOQFjwDo6BVWY8FLPLd
	jrjFkZhypcsC6edKJJpI4ac=
X-Google-Smtp-Source: ADFU+vvkyf8R8PVbz5rrxwBsWlegw5TmBM3AxQDCzRNhEVfAgdhOu2k07OSHHcgl9+I1d49k1OlfJA==
X-Received: by 2002:a17:902:8508:: with SMTP id bj8mr4904674plb.309.1584648229520;
        Thu, 19 Mar 2020 13:03:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b258:: with SMTP id t24ls1962526pgo.10.gmail; Thu, 19
 Mar 2020 13:03:49 -0700 (PDT)
X-Received: by 2002:a62:2ad0:: with SMTP id q199mr6063705pfq.48.1584648228828;
        Thu, 19 Mar 2020 13:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584648228; cv=none;
        d=google.com; s=arc-20160816;
        b=qGW4C36OmNC4iCXsnVQQ/hUeAoFhhIf9PPuPOS4FKi4pj+w9TS3Ii5pLoQJVh9D+TA
         Zad3j9QgbNySJNRKwVU/B46AUxEmvTifPHbU25gyCBI6kLs8wm8UivDVX5XLJYjPlvjY
         KeFI1De47xTmdqP0nVuW9cgd/+zmeUDNhjvOTpLglE3ZdKAs80F9sylgGYEYvK+6G7Oq
         d0THSfypf8LKu+Vw0+sG8fnPmNZMPN49Hcwt6ufRnqYs3bYtB/cSv+sueL5QDNycYz4Q
         H+M9/pv2ZE36dVuUUs/UhC1BE7zP8qKvBvMXezkXzbWvmwI86+Llx8UHqAfB8DyuTcil
         i08g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mUn3O9VmAsOwEKC1EoFw6DJt4hCpb0XLTybtGwOerzo=;
        b=spjEfHRJ6I8qUtbjPVjiDP2HAM1Jl8D8kUINzENTTLtBYRnoF/bZ043XhUNYOY9AWr
         5qlxiTgZB+nWn/IuhNWxuFxKre0XWyIuhWNnZHGom0hd9tYVsHETnQIYCPd59HLvppuj
         6NfbFmEz+8OeBvUfBS2WdHmwHxqortxpjlfr9DAYwqryV4EnzaLa2dmj69+tEJPnAP3Y
         JCf80FLAx49H/wQyCO8QZ7VT7RGuYxFgxPh0ouVP9CccrIf+IzMNbrdHdL6KQMx2ws9Z
         hth9k26NlSX7Cx+NuYnS3Nd7K/I2lKww77q+8Wa6U//oWqgjsEiOx/GPosjYiXh0vbD3
         NcyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@akamai.com header.s=jan2016.eng header.b=H3mDhUz8;
       spf=pass (google.com: domain of jbaron@akamai.com designates 2620:100:9001:583::1 as permitted sender) smtp.mailfrom=jbaron@akamai.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=akamai.com
Received: from mx0a-00190b01.pphosted.com (mx0a-00190b01.pphosted.com. [2620:100:9001:583::1])
        by gmr-mx.google.com with ESMTPS id j14si194456pgg.1.2020.03.19.13.03.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 13:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbaron@akamai.com designates 2620:100:9001:583::1 as permitted sender) client-ip=2620:100:9001:583::1;
Received: from pps.filterd (m0050093.ppops.net [127.0.0.1])
	by m0050093.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id 02JJxfgF004755;
	Thu, 19 Mar 2020 20:03:45 GMT
Received: from prod-mail-ppoint3 (prod-mail-ppoint3.akamai.com [96.6.114.86] (may be forged))
	by m0050093.ppops.net-00190b01. with ESMTP id 2yrqduruqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Mar 2020 20:03:45 +0000
Received: from pps.filterd (prod-mail-ppoint3.akamai.com [127.0.0.1])
	by prod-mail-ppoint3.akamai.com (8.16.0.27/8.16.0.27) with SMTP id 02JK3Z4Y001211;
	Thu, 19 Mar 2020 16:03:44 -0400
Received: from prod-mail-relay14.akamai.com ([172.27.17.39])
	by prod-mail-ppoint3.akamai.com with ESMTP id 2yrtm0f8u2-1;
	Thu, 19 Mar 2020 16:03:42 -0400
Received: from [0.0.0.0] (prod-ssh-gw01.bos01.corp.akamai.com [172.27.119.138])
	by prod-mail-relay14.akamai.com (Postfix) with ESMTP id C2BDF85C23;
	Thu, 19 Mar 2020 20:03:39 +0000 (GMT)
Subject: Re: [PATCH v2] dynamic_debug: Use address-of operator on section
 symbols
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        Nick Desaulniers <ndesaulniers@google.com>,
        Andrew Morton <akpm@linux-foundation.org>
References: <20200220051320.10739-1-natechancellor@gmail.com>
 <20200319015909.GA8292@ubuntu-m2-xlarge-x86>
From: "'Jason Baron' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <4b766edb-73e2-c295-22eb-b501405baa9f@akamai.com>
Date: Thu, 19 Mar 2020 16:03:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319015909.GA8292@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.645
 definitions=2020-03-19_08:2020-03-19,2020-03-19 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-2002250000 definitions=main-2003190083
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.645
 definitions=2020-03-19_07:2020-03-19,2020-03-19 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 phishscore=0
 clxscore=1011 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 bulkscore=0 adultscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003190083
X-Original-Sender: jbaron@akamai.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@akamai.com header.s=jan2016.eng header.b=H3mDhUz8;       spf=pass
 (google.com: domain of jbaron@akamai.com designates 2620:100:9001:583::1 as
 permitted sender) smtp.mailfrom=jbaron@akamai.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=akamai.com
X-Original-From: Jason Baron <jbaron@akamai.com>
Reply-To: Jason Baron <jbaron@akamai.com>
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



On 3/18/20 9:59 PM, Nathan Chancellor wrote:
> On Wed, Feb 19, 2020 at 10:13:20PM -0700, Nathan Chancellor wrote:
>> Clang warns:
>>
>> ../lib/dynamic_debug.c:1034:24: warning: array comparison always
>> evaluates to false [-Wtautological-compare]
>>         if (__start___verbose == __stop___verbose) {
>>                               ^
>> 1 warning generated.
>>
>> These are not true arrays, they are linker defined symbols, which are
>> just addresses. Using the address of operator silences the warning and
>> does not change the resulting assembly with either clang/ld.lld or
>> gcc/ld (tested with diff + objdump -Dr).
>>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/894
>> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
>> v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-5-natechancellor@gmail.com/
>>
>> * No longer a series because there is no prerequisite patch.
>> * Use address-of operator instead of casting to unsigned long.
>>
>>  lib/dynamic_debug.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
>> index aae17d9522e5..8f199f403ab5 100644
>> --- a/lib/dynamic_debug.c
>> +++ b/lib/dynamic_debug.c
>> @@ -1031,7 +1031,7 @@ static int __init dynamic_debug_init(void)
>>  	int n = 0, entries = 0, modct = 0;
>>  	int verbose_bytes = 0;
>>  
>> -	if (__start___verbose == __stop___verbose) {
>> +	if (&__start___verbose == &__stop___verbose) {
>>  		pr_warn("_ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\n");
>>  		return 1;
>>  	}
>> -- 
>> 2.25.1
>>
> 
> Gentle ping for review/acceptance.
> 
> Cheers,
> Nathan

Works for me.

Acked-by: Jason Baron <jbaron@akamai.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4b766edb-73e2-c295-22eb-b501405baa9f%40akamai.com.
