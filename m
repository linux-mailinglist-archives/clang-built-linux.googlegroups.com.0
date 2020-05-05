Return-Path: <clang-built-linux+bncBAABBBFLY32QKGQEFITD6RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 523F21C5DA9
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 18:34:13 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id gj7sf1563815ejb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 09:34:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588696453; cv=pass;
        d=google.com; s=arc-20160816;
        b=P6AlQgiWdpJTkYy1Z6MM/uBpXwZKil52LbQnc4b2/d/kkv4ZFnbxNxK5Q3kFJsejSh
         s80yMJ3YAFTUPhB2ugJxy5yvOOJ+ioq97YALKfieXSyT4She06koL/WkyIUOmMtmdD7b
         LUJAeZTyuYYRR9ctRtGWemYglls3V9VZ0/7MMbuRoeXUOIyy8QplrrFUbmrqR7dmjFNX
         uJIas6pq3MeHQuwJGw9XlTZTNBHJwhR8mCE9V06BNLpEiVVvJelK9G+OZwTp9lAe8Vn7
         Jjv7mPLJhNf61DhyDCV/VI39jdkctHzkAN8/lpm67oDv4y82sYMZ5zIp/E5lH0hLTqvk
         D8jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=m2VpAfKGKWasM/2H68rRHY+CGEuzZ8HgeKR5AEW8ne8=;
        b=PVn7suuCp6WBWMr+GDASwjIkzlA9eZJaFkVL86TkfUL3qE1frLjqODeFfq5MQ0J/+1
         7flGUNmvddEMEF33g5NiUu+lSdh/bpHc+paeYthjAOAUF8HRhQ6IwiBOX67csjo8pglB
         nVvHcg7tO6gRop02p7gxaGZbS+iFOp6wCd3m0jghcjjKSk+TlN+9g5KYgOnmC/PAZIfO
         zlV4yb76vhpFb1Hz9zqYkhYx/VLvH2L/eRZBH22tpWJ+vM7USp6EM+DEvOLkxUjqIU16
         VjAlTP21JrF85ONOQIdyY+2Ej0bvAnNYJXxMrDoszoVTaacYNquOheuwp28qSxooDP6W
         qLMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2VpAfKGKWasM/2H68rRHY+CGEuzZ8HgeKR5AEW8ne8=;
        b=rG6f/1NpC2FQaD1+wkNuqr4j/mpw1ihnGiE1F/ABYqtgHHO02t6MhX3ijaTBqQwUz7
         S2oxw3qyP/aXN2J8593k7cdAglw2NiiuZ4cpsQyTIYBUiLa7z2fXi6ZThkyTlDlwGiBB
         GJAAJ7mF6ppO0jC8jSN0sLJ9VuOa2YI3fnIOOh/TkbwkFuz2/ccBeTghJTNxDS1hH8Ei
         45b0GFe7kae/kZy/iiZ1PUjvGjiHuzfZHqcGkiZh6wN6X5H5Az1Dc+mgiYYvAQpvDVa/
         y66Oaq9wqKYoeoQgdCr06GLvzV3n/y53El6FHTkkprBnkHxacBRqldmiFIQlwXmpoC8l
         Pb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2VpAfKGKWasM/2H68rRHY+CGEuzZ8HgeKR5AEW8ne8=;
        b=Rhl07iiAWm3wHqazSOKnCgzCkl3d4LN4um0I4soUd0idIM58y2lv7Pqq5xbpaZyc4A
         rdfDQ1+He6X9JdKybTCNBQXsB5MC7Vcr6DcjHFLmXp5rHuLZiWNhwdulyvJ/hZ7RRJY7
         7T3QGVjGCDcZb3Lt0SRVVRfmLbEDNZS9IqmoM78hJKIpBzClsk3C2ImpRGCCkhZwXGOI
         KlkYrPl9daBkRVrfIEaU2VTv7rmewuoeA0Bn/ZqN2HE2ScYOlQK98a8AMgFyenuRYr1E
         4m9qnunDmE5hE32YQfQBtboplSL/6OQbGWU/KQuwTc6WVPqrhMDgVwNZ+R+NPDSscp3a
         hu0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubWYjGG4PfephMW269Ni477scMHP9XExNQOMT7sYVzNky3bhZ0k
	TS4Wls9h+qvY7SOACG5SWAM=
X-Google-Smtp-Source: APiQypJ9L/Xn9MF2o5PCi25hltGJSA2JeoxuNaCKLDUlOrqxUnJ8rgn/4luXgmT6ZKj6LOWo+T9dBw==
X-Received: by 2002:a17:906:4003:: with SMTP id v3mr3559827ejj.144.1588696453020;
        Tue, 05 May 2020 09:34:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d83:: with SMTP id dk3ls1467578edb.9.gmail; Tue,
 05 May 2020 09:34:12 -0700 (PDT)
X-Received: by 2002:a05:6402:711:: with SMTP id w17mr3493221edx.228.1588696452629;
        Tue, 05 May 2020 09:34:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588696452; cv=none;
        d=google.com; s=arc-20160816;
        b=Qnaek+THO0qBfiXcQ2TAfhMk1yUkesKnztZKrvBX+DXX5o73G8LcIVlEEg8kEPOxW6
         PV+0PZGHz0uSEZQpnr+A6IZp51XnKZpHXPwdbIcFhb7JiTNoo0ZJXjSy+JJv3WvRYRnD
         bnKfgCKj+0lbVuJC48NMOpj5KIURCIeizLsR+lFx0+gWYYEJS6eOUcVGRfQqurvHC4HX
         J/j1WfErNBPngjQ8FqUgI2si3ApkfgDCctno5PR4aXSsulBAOeAiRImrJtFl7Ee3pYZi
         f55yth5ozKPoodorAPR6iul8fxjypMcmnegI0uDxQeKo815e77gY+dSdDkIJMz5wMUkW
         TYKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=vou6fHugFTANh9h5WFFZaIXUY0TPrRJW6tknpfL+ewU=;
        b=Bkebj1dzpJsNOkjY9jPthBWedOsESMg554ZEqYNy81r8RXxlB/ts9Rn1Cdy8IyZl2c
         3+eaMMEomD+xW8UrDg3VkNGLUnTzUWWM3a6hstHF8xdRsRNjXGtZ8XeCmH1NCVdNNRw4
         b404ttEEwxaNeP49ZHPqpz26RI/5r92k0J1uM+56X5RT7kvzI+HvjT1sYafLM306PDVV
         jgMjqFKYZtVk7NDVp87mirdKJ3YVsOyfNgkpZ6IOMEObTjV7l1bQ2izObHjpDfdgDsHq
         2SunyxJiL12P55IHjCHZp0Qi4qxDSDjpgnhnJOlq+6FMl4YBmrDceczvAgnZRXIXxnJK
         tZSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f24si106675edw.3.2020.05.05.09.34.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 09:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 34C5BAFB8;
	Tue,  5 May 2020 16:34:14 +0000 (UTC)
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
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
 <656d0dc4-6c4f-29df-be7b-4cb70c2c0a5e@oracle.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <02dcf5df-f447-d29b-052e-c3fcd71a214f@suse.com>
Date: Tue, 5 May 2020 18:34:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <656d0dc4-6c4f-29df-be7b-4cb70c2c0a5e@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 05.05.20 18:12, Boris Ostrovsky wrote:
>=20
> On 5/5/20 12:02 PM, J=C3=BCrgen Gro=C3=9F wrote:
>> On 05.05.20 17:01, Arnd Bergmann wrote:
>>> On Tue, May 5, 2020 at 4:34 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> =
wrote:
>>>> On 05.05.20 16:15, Arnd Bergmann wrote:
>>>>> The __xenbus_map_ring() function has two large arrays, 'map' and
>>>>> 'unmap' on its stack. When clang decides to inline it into its caller=
,
>>>>> xenbus_map_ring_valloc_hvm(), the total stack usage exceeds the
>>>>> warning
>>>>> limit for stack size on 32-bit architectures.
>>>>>
>>>>> drivers/xen/xenbus/xenbus_client.c:592:12: error: stack frame size
>>>>> of 1104 bytes in function 'xenbus_map_ring_valloc_hvm'
>>>>> [-Werror,-Wframe-larger-than=3D]
>>>>>
>>>>> As far as I can tell, other compilers don't inline it here, so we get
>>>>> no warning, but the stack usage is actually the same. It is possible
>>>>> for both arrays to use the same location on the stack, but the
>>>>> compiler
>>>>> cannot prove that this is safe because they get passed to external
>>>>> functions that may end up using them until they go out of scope.
>>>>>
>>>>> Move the two arrays into separate basic blocks to limit the scope
>>>>> and force them to occupy less stack in total, regardless of the
>>>>> inlining decision.
>>>>
>>>> Why don't you put both arrays into a union?
>>>
>>> I considered that as well, and don't really mind either way. I think
>>> it does
>>> get a bit ugly whatever we do. If you prefer the union, I can respin th=
e
>>> patch that way.
>>
>> Hmm, thinking more about it I think the real clean solution would be to
>> extend struct map_ring_valloc_hvm to cover the pv case, too, to add the
>> map and unmap arrays (possibly as a union) to it and to allocate it
>> dynamically instead of having it on the stack.
>>
>> Would you be fine doing this?
>=20
>=20
>=20
> Another option might be to factor out/modify code from
> xenbus_unmap_ring() and call the resulting code from
> __xenbus_map_ring()'s fail path.

This will still allocate large arrays on the stack. If we ever increase
the max ring page order it will explode.


Juergen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/02dcf5df-f447-d29b-052e-c3fcd71a214f%40suse.com.
