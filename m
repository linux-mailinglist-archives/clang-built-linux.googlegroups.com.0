Return-Path: <clang-built-linux+bncBC3JRV7SWYEBBX5AY32QKGQEWXEIA5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AAE1C5D11
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 18:12:16 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id s25sf640724vsn.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 09:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588695135; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLL5lgsBAJeGPz6KFBiQX5Dv0b2W3kpI/aHqca++WYz4Qp5Abs2eaYByVztMRWKp9Q
         7FKzUFYulb2QU15dcDifF8YHlXSPQ3lQj+/DCUiF7mvb2uACAsbnTT63NcoVC62Il1Zd
         DhNypDGFrOElrtPVzV8Ospsd/vTni9yM6CuVznTLmgezOB/kO4NxZbkVwDjex0Yb8eXe
         uuPmpIE+KX+SvFYWsK8n7PgMxwMgD1n/O5so/gzZ0XBPzR/GRN/cwTLRwajQh9cJia8I
         GgpV9OYXQY9HFixB0wRzT7PH62cVvB8hvqHq7dJPnLOvyi+1BGgnyZ02WbwkOdmds0Pv
         9Ymg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:autocrypt:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=OkOfIoc0FCxDVRVtfR/YNM2CV50IGOqHcwbLBmi4LbQ=;
        b=RGp+H90EC6uPpSUDCWsj+pxFAKHiYPI9cfjhSZDm/4+8kSkH0P0J9TtsQ8yJ8Figjn
         4v8uYar4X3tuJKM6yqAclhOitdNvyn7EyRfvgAcXFQKPRGRSaI2pfcRpogReNEWW8YnF
         N+LtIDm5IgVuF/kXSdff99d0DOcAYGe3J8N/CQIQgIvznMuWnea4fECJBnzBNt2K25N9
         Oeo5Swz+4AoIcgHISLzm8S4mFsUENU05mTMAGWp+SB+SmRNGJ5QNhyS9PGRo4ZqiVAGZ
         j7N7JqCYgH8JQU27gZyUpNRKn1f3FPiIzf3hbdInSU4clSYR+It9ZqLTP2gCdULnxD2l
         3Yzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=bEGCIuuy;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OkOfIoc0FCxDVRVtfR/YNM2CV50IGOqHcwbLBmi4LbQ=;
        b=p7+fUZd0RcNGBEEyqFKqYn7DKMqIZsg3cVFWNAkxTnH5NdbTyNOa0tH3+LnlEV6Jq4
         i3yKK6cmJaknzb48z7qWtnialQaMp3MESZK+RG/V94/AUB+iFKx20ltdqG6kQy493XC6
         ZbhSkZMlCmcm0h+vfO4eVv3DNTn00a+xqND4Sn2F4KIdUjgh9JsfvVvOaPL4nGJcwjrp
         Xw3ZuMk0r+XnfoMBn6WQxK2x13R8U60XfGWseu1NvsfVLzatKaSqOkXQMX/pTuDI6oxQ
         x3Zl/yxLUiCfMbMjR7VQ9K+txqPGXXgAIGQBEcBj/SywyUPdIPzGXHw5eRtcMpEOX3oD
         iOZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OkOfIoc0FCxDVRVtfR/YNM2CV50IGOqHcwbLBmi4LbQ=;
        b=ugQNXIN0GJf3YRedhvgtQvFS4hFAN4yTEMdN1pV3ViAspJ4Xbk19YMbOW4tnGOUkow
         VhgIiRQPbxbOKBoYjojumlRlsvHD/oNRxvRWkn8kBtxthftfK7G1TrskQzPmpQmych7D
         KzJ+cx/GlBIGpaOcjjFLlVvz9Z4Wla5YZz2WzOxjmkz30zfl3LlHo2k879exN9SrYuJb
         s6YjBRLZrdqm9aEcTJTBQcpMhmF3sBAe1c2YDujRPcAhQNkceNx/Xj3mvYctB/MHcUde
         GYvMz19fmGU1zLDHB6FqzCgK/tak5dwLvDUaICa4i7BcxnTFoSoV/qe+BqXVWoId9CSs
         ++7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ65ysYz+/+pVxiGNMOd31RFYbf4S8jaFPe9m70t01WNqdgbbwO
	gWHpecv1i5w9sXrXSYFHdEE=
X-Google-Smtp-Source: APiQypIqIbysqj4RxUUHjwYYVwAxWfajSDBL+byJAurxx3/IButxDqPhinEDgIxolyRWtnGUILErbA==
X-Received: by 2002:ab0:7845:: with SMTP id y5mr3310593uaq.34.1588695135789;
        Tue, 05 May 2020 09:12:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:30d6:: with SMTP id w205ls398857vsw.6.gmail; Tue, 05 May
 2020 09:12:15 -0700 (PDT)
X-Received: by 2002:a67:f5d7:: with SMTP id t23mr3411451vso.65.1588695135375;
        Tue, 05 May 2020 09:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588695135; cv=none;
        d=google.com; s=arc-20160816;
        b=Q0cLgYN6qZ1K3V2GFonKaZHCsLd0Iz+o4BIYjRLsS2jSNWzH66o231Y1onVgMJkVo3
         z7CXgYMnB5vNjbWWz6zlNqfpbI2WMynGf9irxOhiRWtiv/mBlrFGjEqktumxgjPP5gaz
         FWcpHX0W9DySE4WoinryMmWmuR5pAOVoFnW028gySUHLsp8zuHRyamT1uIHn0yIlJRxO
         wgVAes/mZ6ctbyP63ydmBFP9gFgK1On74y8ZhFiodA6NS539d6dwhQPgxxC1gEnBOAP4
         BZ2cmbfwVPgBJ9bzAstCuNHa8ddBeS5Ybwk40sLGgdg9HqMfrEdaD62RKA6RBmqPfvaI
         JyMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=gl4ufvD0inhnCx10cJzHgIvAaRMgE8TFgjDbAje8y1s=;
        b=b7Im76LoIsYRSWNwQ5+MDTrLmc69Tf4C//xd6MOyLfrJXLE3WggJf3Sd3UYmI6gVvQ
         0tZEfNY8bojBq/rwzOsK1bAXUdor3U2F27YeUfPEWeZ6p1LHeZ3C+xwkoArf9/JheAai
         kseqd4zyis7HbhY+JYs2FvIf03N4+Az41QtZpv4P5EpY0EMA8DSO/ayCBc5C5HUajJIO
         thFTqU1gjz59tsI7uMVyRGUyEUyFfcyFehl4eLs2VMNCK5s1f5GxFJ11QDuUUO53iVOK
         f8U/WXHlVZPwAIQlejWewAN0bgdg6yI/yBSgxLRx4H+6YdkhHXJA/OLddGHMAuvoQ3bu
         1MDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=bEGCIuuy;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id i21si201378vkp.5.2020.05.05.09.12.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 09:12:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of boris.ostrovsky@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 045G3fkV164222;
	Tue, 5 May 2020 16:12:11 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 30s1gn5j01-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 05 May 2020 16:12:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 045G8Wnl016936;
	Tue, 5 May 2020 16:12:09 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 30sjk01e4c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 05 May 2020 16:12:09 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 045GC2NH009468;
	Tue, 5 May 2020 16:12:02 GMT
Received: from [10.39.218.134] (/10.39.218.134)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 05 May 2020 09:12:02 -0700
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>,
        Arnd Bergmann <arnd@arndb.de>
Cc: Stefano Stabellini <sstabellini@kernel.org>,
        Yan Yankovskyi <yyankovskyi@gmail.com>, Wei Liu <wl@xen.org>,
        xen-devel <xen-devel@lists.xenproject.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200505141546.824573-1-arnd@arndb.de>
 <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
 <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com>
 <48893239-dde9-4e94-040d-859f4348816d@suse.com>
From: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Autocrypt: addr=boris.ostrovsky@oracle.com; keydata=
 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
 Jg6OxFYd01z+a+oL
Message-ID: <656d0dc4-6c4f-29df-be7b-4cb70c2c0a5e@oracle.com>
Date: Tue, 5 May 2020 12:12:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <48893239-dde9-4e94-040d-859f4348816d@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0 phishscore=0
 bulkscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005050127
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0 mlxscore=0
 spamscore=0 clxscore=1011 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005050126
X-Original-Sender: boris.ostrovsky@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=bEGCIuuy;
       spf=pass (google.com: domain of boris.ostrovsky@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=boris.ostrovsky@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


On 5/5/20 12:02 PM, J=C3=BCrgen Gro=C3=9F wrote:
> On 05.05.20 17:01, Arnd Bergmann wrote:
>> On Tue, May 5, 2020 at 4:34 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> w=
rote:
>>> On 05.05.20 16:15, Arnd Bergmann wrote:
>>>> The __xenbus_map_ring() function has two large arrays, 'map' and
>>>> 'unmap' on its stack. When clang decides to inline it into its caller,
>>>> xenbus_map_ring_valloc_hvm(), the total stack usage exceeds the
>>>> warning
>>>> limit for stack size on 32-bit architectures.
>>>>
>>>> drivers/xen/xenbus/xenbus_client.c:592:12: error: stack frame size
>>>> of 1104 bytes in function 'xenbus_map_ring_valloc_hvm'
>>>> [-Werror,-Wframe-larger-than=3D]
>>>>
>>>> As far as I can tell, other compilers don't inline it here, so we get
>>>> no warning, but the stack usage is actually the same. It is possible
>>>> for both arrays to use the same location on the stack, but the
>>>> compiler
>>>> cannot prove that this is safe because they get passed to external
>>>> functions that may end up using them until they go out of scope.
>>>>
>>>> Move the two arrays into separate basic blocks to limit the scope
>>>> and force them to occupy less stack in total, regardless of the
>>>> inlining decision.
>>>
>>> Why don't you put both arrays into a union?
>>
>> I considered that as well, and don't really mind either way. I think
>> it does
>> get a bit ugly whatever we do. If you prefer the union, I can respin the
>> patch that way.
>
> Hmm, thinking more about it I think the real clean solution would be to
> extend struct map_ring_valloc_hvm to cover the pv case, too, to add the
> map and unmap arrays (possibly as a union) to it and to allocate it
> dynamically instead of having it on the stack.
>
> Would you be fine doing this?



Another option might be to factor out/modify code from=C2=A0
xenbus_unmap_ring() and call the resulting code from
__xenbus_map_ring()'s fail path.


-boris

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/656d0dc4-6c4f-29df-be7b-4cb70c2c0a5e%40oracle.com.
