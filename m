Return-Path: <clang-built-linux+bncBC27X66SWQMBBAMCU2CAMGQE26BTJXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E07B36DBD0
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 17:36:35 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id e17-20020a67d8110000b0290225d135fa8csf3040565vsj.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 08:36:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619624194; cv=pass;
        d=google.com; s=arc-20160816;
        b=XpmTOH2QwijFN2DEnv/DTI2cWOs2KFCsuJrOHMxvyel3BsYG6mYM8BoeNPXG5+Fken
         SU6DKpBhXVXVrfRJuhQoURRLkcyQae0ovbhVY2WUC3aPnjb806mGnBCN0eQXaDsHDt9O
         7xerwKBkvy6MbTZnGZnlYkJavpVW2P2KM4ID6eIfQiw6q0U0eWG+9QglBXbRt8UKfdPw
         g+3dpZHgU9Y5xQLS9gz/ayI9gPrfwiy7WiDks/pGEfaIU7b2w0aRs8KboA2TvaUqN0SR
         ZdIiT4ezbLKvfHJZ5HNOpv4/zXb4c79jOV+YBdn4IGrkM2PIAzuMPycRImRCjWvfsrXP
         CZww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=hFJnblCHS5DIPjTaP7do3Vi7XvCIr8q15jFACpyWkNM=;
        b=aTCly2AS0XJR/KJTm0sZyiLkSzQtVGReUJsBwpALkMfrDxGXDy6FAGa+dZrctK57mG
         4s7wxklSKFld1E+FF5B0hGk+sjWGuNi+bBfhrwakreViaY7jqQqGoNFjUdZI0DWkp97K
         kMZ5hTF/CiuGyfUhK+VuM7mcAacIC0yQwl2BhcunE8Hz+/b7axTYf99quItnbO7W2tuf
         kOf55kQo+pR7dzO9aEj6DLgCQ/Yj6sIXCpuSmqAI/5MikZ7wYO696tvEsgpNwYRe5KCT
         tj1bdJzEC5lWZPRoWFUkCUH1HjsNoaZqVg0SSz20xW6s940ZXbr1tUzqAWQ5qPbQQSY2
         dJBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dg0nLsQx;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFJnblCHS5DIPjTaP7do3Vi7XvCIr8q15jFACpyWkNM=;
        b=LIWmKiKpJbeC7r6LWNzebtGpKzNlfhO2jAI7Whux5bG3NXO4EAiLSU43yYOfMlbZMU
         M3/QL71CXMehvrunA3O8mlxsoSTR2e5JbD8vYr78jQpT85NHeUfFO2I5RdP7zyKVEGH2
         BA8kIdFpIxoD8mLbBUOEMmPfdSzAzz0hu9UZqZUOKdvG1tEHflfKu5iCJcd1hidmvMt6
         I4NoQsXImYsdSvMfG65JAOA3l5YKMwP0zRlWDRKZJImA4m9JjFJnaQ+nLhFcXv7jhh4I
         4ok9IxOHCNYlQYb4BX67gyWhliotKPWo2MswpdHDNhAGBB5Q6m9kcMXqWfkwM1ssi0qQ
         9yAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFJnblCHS5DIPjTaP7do3Vi7XvCIr8q15jFACpyWkNM=;
        b=r3K201Kbc2MwFhaTKdLuNElS9APD0e7i3ATfLqMSXi1gAsFLjOa5CR6zGH8tudxAmM
         apMfQA/+2sXSXTf4RTkP31H1pnB/T+1NDt4b8rEpGgCVdXoDZkRuSrUk3yc7olrxNgG+
         4ESxCzi1VI+O68FhdMS5HNA8vsApOHuO5he3tOqAGIW2nx+Tqm21TuvIfzcMAke9ghYI
         lZ+FNzzIHTsrPSXzGsqiuPj8R8iSpnf/zjeDx5XBrJD7vhJDsvQDIKMwQe7DT2keLzGb
         fGww9Wbh/js2+yS1QQTIvSmSmMWwXjVKuX2tMbYW8h4a76Bh/5FjDUYLwkkYnXQf/zDf
         kJZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328jZcF/+Uhiux8gfrvYmKM98sh8nE/hI1dNhmIOm2oRRRL8dn3
	YChxKDiRR8aDvBfG2kwcoMs=
X-Google-Smtp-Source: ABdhPJzu6wQADU6viYxekC08HpQLN5uzDHCLsqIPsWhkYhaNKY3AMoOzDIKmAcx11/igLgE6qW4UtA==
X-Received: by 2002:ab0:5a61:: with SMTP id m30mr12778948uad.125.1619624194063;
        Wed, 28 Apr 2021 08:36:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5e91:: with SMTP id y17ls28327uag.0.gmail; Wed, 28 Apr
 2021 08:36:33 -0700 (PDT)
X-Received: by 2002:ab0:4502:: with SMTP id r2mr25019184uar.75.1619624193532;
        Wed, 28 Apr 2021 08:36:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619624193; cv=none;
        d=google.com; s=arc-20160816;
        b=SYyFqa6dhC+k8SXr9xCC7qo8mOpj9Smx5G4aAZbf/GAxBxmzGFJnBJwKMTbiL7O04G
         5R7bWTArZ5unSuwFzSkz8euNX3OtuOsgBngAJQff2a8qRIsmr8gwN1R38zhXI9tGH6gq
         qzSS61oAGV97OISsjBBDgTZoNw1ty3no0XmaeVcu7N9aAE6vmcC8EZOP2cZpVd1imR/3
         jXoBqeShrh24wCCXtbCjUz0+OnZa7EXF3DEMrMByMLO3uI7/ShdGtnDIelpEY+A1bcho
         8joNmQVEuwlX9YOxpewDPnxder09OsJNaPfJaApevq2p8kcnbArpTmBvGUWl9h0LneAD
         4/YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=pG5pwOUgg892glFsUccSS4Ot1zsI7mcT+KpkcWM44lQ=;
        b=qsPav0+4nqylWXKh6sZMlL+1lNhgvZXdw/wiiVlxb0XVseiF1joROj0lgkxLk/9T/P
         9XrZzricUGydL4AwKFz5TgJDNBceKy2PTPEyaY8Q/zkMZ+ruEIZZtO2A8HD5+Q864Dk5
         /Ysi5fNuWQGq/v98/Qc71KkEbWKIjHU4Ete9lE7+cK5GkkeZqvm+NR+fr/l90jGzpLWt
         M9rSOPYvyKoN/NyTJN+1p1jUrnAU9THj4At09Z5a8+EzdnV/uPvEYTLDKxQraPsphpIz
         yQQZzw01imG8j1iUCjedGRsdK/T4dpVa/MU+tEgCfZU7yrYKvxd2ZBKyn0TNSPvZwNLk
         pE8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Dg0nLsQx;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id x8si22545vko.4.2021.04.28.08.36.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 08:36:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-538-jmbiPNKqMZCkk6gYDG-hww-1; Wed, 28 Apr 2021 11:36:31 -0400
X-MC-Unique: jmbiPNKqMZCkk6gYDG-hww-1
Received: by mail-qv1-f69.google.com with SMTP id h88-20020a0c82610000b02901b70a2884e8so8587849qva.20
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 08:36:31 -0700 (PDT)
X-Received: by 2002:a37:5f41:: with SMTP id t62mr29451309qkb.458.1619624190593;
        Wed, 28 Apr 2021 08:36:30 -0700 (PDT)
X-Received: by 2002:a37:5f41:: with SMTP id t62mr29451285qkb.458.1619624190406;
        Wed, 28 Apr 2021 08:36:30 -0700 (PDT)
Received: from localhost.localdomain (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id e15sm21640qkm.129.2021.04.28.08.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 08:36:29 -0700 (PDT)
Subject: Re: [PATCH] samples/landlock: fix path_list memory leak
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
 linux-security-module@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morris <jmorris@namei.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210427183755.2790654-1-trix@redhat.com>
 <CAKwvOdmj5YvWZZWwcq1G7JgRALwPbqwiROiedMeEbBst2sGeiQ@mail.gmail.com>
 <6108e69b-0470-cd71-e477-ba64641cbf58@digikod.net>
From: Tom Rix <trix@redhat.com>
Message-ID: <4ece80d4-16fe-1938-7eba-2046840881f6@redhat.com>
Date: Wed, 28 Apr 2021 08:36:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <6108e69b-0470-cd71-e477-ba64641cbf58@digikod.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Dg0nLsQx;
       spf=pass (google.com: domain of trix@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 4/28/21 2:58 AM, Micka=C3=ABl Sala=C3=BCn wrote:
> On 27/04/2021 21:13, Nick Desaulniers wrote:
>> On Tue, Apr 27, 2021 at 11:38 AM <trix@redhat.com> wrote:
>>> From: Tom Rix <trix@redhat.com>
>>>
>>> Clang static analysis reports this error
>>>
>>> sandboxer.c:134:8: warning: Potential leak of memory
>>>    pointed to by 'path_list'
>>>          ret =3D 0;
>>>                ^
>>> path_list is allocated in parse_path() but never freed.
>>>
>>> Signed-off-by: Tom Rix <trix@redhat.com>
>>> ---
>>>   samples/landlock/sandboxer.c | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.=
c
>>> index 7a15910d2171..4629d011ed61 100644
>>> --- a/samples/landlock/sandboxer.c
>>> +++ b/samples/landlock/sandboxer.c
>>> @@ -134,6 +134,8 @@ static int populate_ruleset(
>>>          ret =3D 0;
>>>
>>>   out_free_name:
>>> +       if (path_list)
>>> +               free(path_list);
>> I don't think the conditional is even necessary? By our first `goto
>> out_free_name;`, `parse_path` has already been called/memory for
>> `path_list` has already been allocated. `parse_path` doesn't check
>> whether `malloc` has failed.
> Indeed, no need for the path_list check. In practice, this memory leak
> doesn't stay long because of the execve, but I missed this free anyway.
> Thanks!

Ok, the general problem of not checking if malloc and friends succeeds=20
is a different problem.

So remove the check and keep the free ?

Tom

> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@linux.microsoft.com>
>
>>>          free(env_path_name);
>>>          return ret;
>>>   }
>>> --
>>> 2.26.3
>>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4ece80d4-16fe-1938-7eba-2046840881f6%40redhat.com.
