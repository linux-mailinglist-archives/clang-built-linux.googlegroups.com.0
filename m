Return-Path: <clang-built-linux+bncBD2MFOHTXMBBBUM5SGEAMGQEFAXH6UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3F43DBEC9
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 21:11:14 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id z16-20020ac87cb00000b029025bf786be09sf732703qtv.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 12:11:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627672274; cv=pass;
        d=google.com; s=arc-20160816;
        b=mDDsrnCV3kxeCXCRsjNt0U8FoZgWI4WhhG/HX4G1UXOlCD4W4HjdvhTZ45NU93yqxM
         1BWI1y6DG6z3yDXEjz77lwrI/c6YDZvp2xGjnQN9+wCxRpte6r3u/xCOVu2jA/v7ObK4
         EdvEcz1il3bl7TLb9MLzNFyiEIxEYHY2bbJZrxiOapBl+wd6S6RWQjc2X0pE1CLRPfo5
         lgLtzER0TF/twnZNPW/4a/mnwJzi93rN0V5zeivArfVS+1Up7mgyVvVhIDiYM7X1mbJF
         8Ku7e1pl1kpp/GS66AMlfVimNE6W7C64LIVbsLp8+Uwp7j0TjMC5fcsdN58w9F/hLmmH
         OtOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wjrrdVIDpIWwCcG/M3tshHIQl8nLmbLSc67gf+lVjIg=;
        b=Xljq4q4zfTw/yy+EsRNIBHZfJXJg+7i9wIsd6xd8FQS6irTaSHHKEVcgNxgHPxk6/0
         m88YTDeiVVCvtW27lKFcTVv+AugPV8vhsZL5c7VntfHc+2Yeb4qcptJXqdg6vKP7MF9x
         DYEbBVp3EuGUfT4CmP2afnYsgCe3qAKVOFzvEhSHTF/92AoE8Av+52icR8m6IhyEUp3J
         hzKXJ6I4+HRRClioyoEHHdgVc27xqp3Rtmzf4kZow54p4EpSRY+XO2dszrFfXNo+vNFF
         00nsD/ez9IJ+3YRE1VX2NEa0Il+m/Gbh45nnIPoSvTzNceW/r8GNG2XRHJOsl7kDpG7P
         pP2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="V/SnNDT/";
       spf=pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=tyreld@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wjrrdVIDpIWwCcG/M3tshHIQl8nLmbLSc67gf+lVjIg=;
        b=NTFST0YqGXPYzdVf2M6cL/y51AOFTKY7m44sPbJfW5fMJjTJD2bqyLyQ/pAnSsLf8a
         JCxZnpyj6qnPkW6Hh1sH+ZElbn+DJ2qkrobVDdcLIQf7JWJ0xHD3UAO7ZXjbUA/oe0MS
         lpQIEiXSjftbZNUX3KNfK+9NVJiEtWxNlTswpwKhi+j2uXkrSEJ/YV1BuQlV2aUtJU7J
         e3TjjgoLpT6PJv5E0vDg2FQUDbRY12At91p3HeET8+xMJwa6Da8zyjkQkFqzVknibQA+
         524ukVcKY1c30kBiutxlacl1ullpe0z6mkS3hQKWBZFwEYaem1914UCLJ2aWVMZLvAeF
         7lzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wjrrdVIDpIWwCcG/M3tshHIQl8nLmbLSc67gf+lVjIg=;
        b=gn247poSqdiU8XakCfUseTjwqXBoD9vBBs/hsli2Bg2e9cLipuOY2yj3yzwzl9QsDs
         CtHxxPR2YddFSPzDwEXj5Y6sK9Ky5qhpugp2OmhPHPZGa2LZ1z7+iji0zAkLjohfqVnE
         gyvs8HARp5zZWX2rXLzDzQRhvQuCsPxwZx+ucdzUZktWZqBM8Cs4KbHNlfdtljghG/CU
         oaOJTBykOFWlnqAhSdUQTHzmeEIOEXzz8p8fmEsqhPMgOACGtiscVJyYHGCX5HGJ3FqU
         7z/svizLsOdNIHAcTOgCco6Ma53vWlU24Zhta+1HsYTQatyaAy7EBElct+0FrfdvBjIC
         z0rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MvNeMV4WrhsXPslKAqiZ/5nmtnqVDID9t3boMy6pj3iat8d7p
	ENScsmbZHQ0K4hoHgcdr1q0=
X-Google-Smtp-Source: ABdhPJw/HUb6jLC2HqBDe5aBqwQOlyd8YTM8CjdqRm0o/v35u0/ev3jyFO2fmmVfEFR1NcopFwPSFQ==
X-Received: by 2002:ad4:44aa:: with SMTP id n10mr4455842qvt.18.1627672273896;
        Fri, 30 Jul 2021 12:11:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:213:: with SMTP id b19ls1330731qtx.1.gmail; Fri, 30
 Jul 2021 12:11:13 -0700 (PDT)
X-Received: by 2002:ac8:734a:: with SMTP id q10mr3620113qtp.73.1627672273410;
        Fri, 30 Jul 2021 12:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627672273; cv=none;
        d=google.com; s=arc-20160816;
        b=fY934A36SKvgxDRl1Rb3tnZEzH56xvPfTO0KRbD1gRSGiwR/iFRF+wUwwY58tHXrRo
         ONIjJkLWvANc9jp3QnVmbjuH5DgjoTAWZV4lX3ptpch/yQSR7v329C70O6YMYW5By6Da
         L20LIm6ado1JOUPug/H8O9yjz+LGTbgLF1qy4XoIU59C8v2II0NviLe2xX7gWbs0hEpa
         Kq4kRA6rWu6FYpj/B+KENTpVQKFybftzGTjK/o6XFxBtnDJF6AQBgu56lUVtY5/5pF2G
         KhW3DG0qLcI2xJqNpBnyM6z4tp7dDA4Ro/f2IBlWFI1CHqvw1eT/qlOf4Zo3j4HgVvPV
         suuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=aCvQ/zlOFEmWQJR05jB5BMz1wTvrloq8ZnJNoFyxCgA=;
        b=XBX/I/yvV5G+ojcdt59WApmEm+spDO3IXxM07b5UGs6Y7lbvv4C9DLe/DYypLmjXru
         +mLCK2Kw8jLOSMY4kUkOHGsYVzGyjd8Q71ho3ZkV31L+54V2h8ZpGkIELwpl+JGPlZs+
         s1QLHmu1J0cDC2Bt8SNnISmp2awPPeJpXNysA8wTkeBb7byFltdQbfcPQXNPb/VqZ5qD
         xV2o/dm0f74l7hs9r/Ut6htR6UTF4EqmqIDnMDVqUgqq7IeTw76yunv5Yth/dPbJrj/i
         LUaXs0ZPlZYIsi7YMfLV69P7mlvZWHEWYWUvlTkDJ82zhdJRgnHspgE8EkkGQ81JX5Or
         vPCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b="V/SnNDT/";
       spf=pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=tyreld@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id d11si67735qtd.0.2021.07.30.12.11.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 12:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16UJ4XvQ155898;
	Fri, 30 Jul 2021 15:11:09 -0400
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com [169.63.121.186])
	by mx0a-001b2d01.pphosted.com with ESMTP id 3a4pnc953r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Jul 2021 15:11:09 -0400
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
	by ppma03wdc.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 16UJ7IfF029591;
	Fri, 30 Jul 2021 19:11:08 GMT
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com [9.57.198.26])
	by ppma03wdc.us.ibm.com with ESMTP id 3a235rncgm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Jul 2021 19:11:08 +0000
Received: from b01ledav001.gho.pok.ibm.com (b01ledav001.gho.pok.ibm.com [9.57.199.106])
	by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 16UJB7a410879584
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 30 Jul 2021 19:11:07 GMT
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B8D352806A;
	Fri, 30 Jul 2021 19:11:06 +0000 (GMT)
Received: from b01ledav001.gho.pok.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5186A28067;
	Fri, 30 Jul 2021 19:11:03 +0000 (GMT)
Received: from oc6857751186.ibm.com (unknown [9.160.21.31])
	by b01ledav001.gho.pok.ibm.com (Postfix) with ESMTP;
	Fri, 30 Jul 2021 19:11:03 +0000 (GMT)
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
 <yq135rzp79c.fsf@ca-mkp.ca.oracle.com> <202107281152.515A3BA@keescook>
 <yq1k0l9oktw.fsf@ca-mkp.ca.oracle.com>
From: Tyrel Datwyler <tyreld@linux.ibm.com>
Message-ID: <3ffbcf75-166e-5802-1d8e-9c7739961b80@linux.ibm.com>
Date: Fri, 30 Jul 2021 12:11:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <yq1k0l9oktw.fsf@ca-mkp.ca.oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: FY4mG5iTa3n7SX9d8VHWXVbFzyl_6wEi
X-Proofpoint-GUID: FY4mG5iTa3n7SX9d8VHWXVbFzyl_6wEi
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-30_11:2021-07-30,2021-07-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 adultscore=0 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107300129
X-Original-Sender: tyreld@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b="V/SnNDT/";       spf=pass
 (google.com: domain of tyreld@linux.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=tyreld@linux.ibm.com;       dmarc=pass
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

On 7/28/21 8:35 PM, Martin K. Petersen wrote:
> 
> Kees,
> 
>> For example, change it to:
>>
>> +	BUILD_BUG_ON(sizeof(evt_struct->iu.srp) != SRP_MAX_IU_LEN);
>> +	memset(&evt_struct->iu.srp, 0x00, sizeof(evt_struct->iu.srp));
>>  	srp_cmd = &evt_struct->iu.srp.cmd;
>> -	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);
> 
>> For the moment, I'll leave the patch as-is unless you prefer having
>> the BUILD_BUG_ON(). :)
> 
> I'm OK with the BUILD_BUG_ON(). Hopefully Tyrel or Brian will chime in.
> 

All the other srp structs are at most 64 bytes and the size of the union is
explicitly set to SRP_MAX_IU_LEN by the last field of the union.

union srp_iu {
        struct srp_login_req login_req;
        struct srp_login_rsp login_rsp;
        struct srp_login_rej login_rej;
        struct srp_i_logout i_logout;
        struct srp_t_logout t_logout;
        struct srp_tsk_mgmt tsk_mgmt;
        struct srp_cmd cmd;
        struct srp_rsp rsp;
        u8 reserved[SRP_MAX_IU_LEN];
};

So, in my mind if SRP_MAX_IU_LEN ever changes so does the size of the union
making the BUILD_BUG_ON() superfluous. But it doesn't really hurt anything either.

-Tyrel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3ffbcf75-166e-5802-1d8e-9c7739961b80%40linux.ibm.com.
