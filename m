Return-Path: <clang-built-linux+bncBCWMTL744QBRBSPDUSCAMGQEJW3IRFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 070D336D532
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 11:58:34 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id y82-20020a1ce1550000b02901262158f1e9sf2945108wmg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 02:58:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619603913; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2eYz/HCqeAOSjpvVJA5Y5VvWSYnX6mzA7EnDBuJHWYpeYbGHvAayAhbETevSfBIu4
         64PfcHTreG1loni49iN1ZA2GGkVzzD3gkDTYXjUTy/7jbl7mS77HRlgcWk58yP2J1exJ
         Fex2TcTUGRU3dhcilGiauCOOH+3gWGFAnSHmXmifOlf7AkN/ccbP81I7245cFpUKK51n
         BhvVO7PSAMUErB6cYPgwzGuNd33cZeUh2nVZuCB22E0BCGw5uN8SBLnEW7cP4Od2lXCW
         Qc6azE0njBlcsGydUsyemCJ63nOREqDk90GSHbDd9s/vsMCoGc1cJsgIzBKjNjRONhFB
         XfvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Oa/5rIMgeer6R2e9oF7rl7+uz7yQguPAQg4K1fiQRfE=;
        b=Nr7SaiJjA6/5t5i7Rm3/U3VGlnvOP8B1saKe02Yq0D/Xet6RXDesAoZ1db9gCvJ3qd
         il4sqcMtywSfn9iuhtl2feV98z3fp/JD/D/dPdX8xhvWxHIY59Ecr66n3WdvXSjVffsZ
         p41DQhAr3lZWVHRQ0b595XV1EvbJAOaa3Qg35J1QnXSMGloqN4z31zuWD0YCuruYo3zz
         muMIeU1m+GuAmD29QLvCYBtK3UttffR+hgxalf3FuwnIeszxvsXnuqfh7TAXNYCs9niv
         jtnJIT128MYyNSskD0ACC2XUG9pPUygaRbAmcYYkP6icfGSTBDNoKTgGLhhT5vs1FCTJ
         HNOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 2001:1600:4:17::190a as permitted sender) smtp.mailfrom=mic@digikod.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oa/5rIMgeer6R2e9oF7rl7+uz7yQguPAQg4K1fiQRfE=;
        b=nkBtcnYeEqEIJbIlVgKtDpSIxd0ATDq7MI3mvWuf45QR9JeaP1jB57evM/v2r5DWfn
         H4Z+OYp7MQeEYdgJMhFV7P25dVkWmOsvCwK9d61wpASbpHA+bnCcO+JXgg8hPV0WlBqF
         4/1IFygyssicDELiVnQPnHPpedj7xdJf9JyIvCvWPCXohpkEQCpQ2/83EWBrTvMHQi4Z
         jxe2C9Ks5x96Hb/jcEpDMKU1rlJJzORmbCRxNpAUfuBPJR2vjyjIWIV//Cx+w+T7Xic8
         cd8XxduxiGYrauBEpZKFR6x/Nkq2fMS6zc7ul06u/pKN1mNAqo4oLBesfI3zMztXkCJn
         BjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oa/5rIMgeer6R2e9oF7rl7+uz7yQguPAQg4K1fiQRfE=;
        b=T/+JF2vxIWYTHqAVFTu7oA95PO1RVAS6rVLPisxpc837I7coKO/BMYKM177nvb8ov0
         5LR3umSv0xSvyh89ypdOCyNB7mjj662XYR07qWP9koN/OZv2s86WhYp7aXpK/oRerB8v
         JzX5/nzNJyYpBsiwWuQHLBtorY3SOHHajjUY2dKGX17SkIpKikKVaL5I7RlqNm3wdRz9
         IbBfQQqortnxrmKeY989OVmmM5sjvb3ipupMdwWDNkn8r1nyfKLst+LN/YPVGVl9oJQR
         nY6Vlp1dvn+dfI2PMdpP/1kzsx0XlN4ODb4m8eBrFf6tCQBzhqqPhZJRh1qzuHGrol3u
         8oAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AIw6gDCNMoI0RACOJSU+ZPX/QbVP1ZXFlp5j0uJ3Dvujsy9io
	oQb7d78apXtD7AbznnjI+Ks=
X-Google-Smtp-Source: ABdhPJz1Md9U2fwwcbgHuiw+huE0ubVIdMO3HUXg/0l5WvuNncU6KhVH8NicKjSUdQZg7DmKmAqZMQ==
X-Received: by 2002:a1c:e409:: with SMTP id b9mr3533638wmh.189.1619603913797;
        Wed, 28 Apr 2021 02:58:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls664605wrx.3.gmail; Wed, 28
 Apr 2021 02:58:32 -0700 (PDT)
X-Received: by 2002:adf:dbc2:: with SMTP id e2mr34496645wrj.398.1619603912886;
        Wed, 28 Apr 2021 02:58:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619603912; cv=none;
        d=google.com; s=arc-20160816;
        b=NBDi073+OvoQw7mZB/9KGoBwInHxU50y2iHV0zx9+sZXrjl+j9JaOpkEVFlcH9/YdM
         LW8H3CSNSqtUNWHa1MXz5PeUN7Bs0BpFtTzpdk9Ak6eLb4gWYpCZBmr1GY37+CwOr2h5
         PQ+F8FGiWlIu7OaUsdAzJruJs7kfwgJ/+IHTSQKXPKzREEQQhjNP/agyco8ryCHSzfsg
         qKTBS+R61ka1ZRizLIIXTGPjNGMWBFO6ENnW+9ZfoD73HcjjDcrgIInUiSBrg88oU0bW
         JZkLllhMUJz5uTu90RD9FhXlBU5JYmXQjIqn265jNk294s+LEj0YPWgNNfl6Xf9P01Gp
         3wlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Sqz8Nt2LiSBYX2bSEP9uiO8Ucr/LwkUEODxuwbuxBuI=;
        b=M224HkpBhPC4HwDES7SviMla75NuSj9bgofpCdhbUuo0ZOlyNPe8x0FBHYS1szfWIM
         iUDgv0yyLypSKTL4iZjRglZw8LnEE/F41dAQAHCxkVexTBCRBdDdmXZlCzZtKTyL7Khq
         vc6VTw8VJ2abuwcr6BQfkN9dKVhe/h+L95ZVACSZxBCcJOMn3+yEp03GSo7ds2A/5klq
         oYfLD8ZApOoeFZcn2lKF0TOatpwbC2cVgL0nZLn9/3gz9mZtQsyac3bV/tjIZ7jJW6ZU
         fcuoyotHys4uk67ojSfpIJ1arULq7QJhDmBuP6rajHwJXe62Pga60C7OsqskCyvNI8U5
         kpfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 2001:1600:4:17::190a as permitted sender) smtp.mailfrom=mic@digikod.net
Received: from smtp-190a.mail.infomaniak.ch (smtp-190a.mail.infomaniak.ch. [2001:1600:4:17::190a])
        by gmr-mx.google.com with ESMTPS id w2si259180wmb.4.2021.04.28.02.58.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 02:58:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mic@digikod.net designates 2001:1600:4:17::190a as permitted sender) client-ip=2001:1600:4:17::190a;
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4FVYx4442NzMq3YP;
	Wed, 28 Apr 2021 11:58:32 +0200 (CEST)
Received: from ns3096276.ip-94-23-54.eu (unknown [23.97.221.149])
	by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4FVYx344c0zlmrrs;
	Wed, 28 Apr 2021 11:58:31 +0200 (CEST)
Subject: Re: [PATCH] samples/landlock: fix path_list memory leak
To: Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
 linux-security-module@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morris <jmorris@namei.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210427183755.2790654-1-trix@redhat.com>
 <CAKwvOdmj5YvWZZWwcq1G7JgRALwPbqwiROiedMeEbBst2sGeiQ@mail.gmail.com>
From: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Message-ID: <6108e69b-0470-cd71-e477-ba64641cbf58@digikod.net>
Date: Wed, 28 Apr 2021 11:58:59 +0200
User-Agent: 
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmj5YvWZZWwcq1G7JgRALwPbqwiROiedMeEbBst2sGeiQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mic@digikod.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mic@digikod.net designates 2001:1600:4:17::190a as
 permitted sender) smtp.mailfrom=mic@digikod.net
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


On 27/04/2021 21:13, Nick Desaulniers wrote:
> On Tue, Apr 27, 2021 at 11:38 AM <trix@redhat.com> wrote:
>>
>> From: Tom Rix <trix@redhat.com>
>>
>> Clang static analysis reports this error
>>
>> sandboxer.c:134:8: warning: Potential leak of memory
>>   pointed to by 'path_list'
>>         ret =3D 0;
>>               ^
>> path_list is allocated in parse_path() but never freed.
>>
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>  samples/landlock/sandboxer.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
>> index 7a15910d2171..4629d011ed61 100644
>> --- a/samples/landlock/sandboxer.c
>> +++ b/samples/landlock/sandboxer.c
>> @@ -134,6 +134,8 @@ static int populate_ruleset(
>>         ret =3D 0;
>>
>>  out_free_name:
>> +       if (path_list)
>> +               free(path_list);
>=20
> I don't think the conditional is even necessary? By our first `goto
> out_free_name;`, `parse_path` has already been called/memory for
> `path_list` has already been allocated. `parse_path` doesn't check
> whether `malloc` has failed.

Indeed, no need for the path_list check. In practice, this memory leak
doesn't stay long because of the execve, but I missed this free anyway.
Thanks!

Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@linux.microsoft.com>

>=20
>>         free(env_path_name);
>>         return ret;
>>  }
>> --
>> 2.26.3
>>
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6108e69b-0470-cd71-e477-ba64641cbf58%40digikod.net.
