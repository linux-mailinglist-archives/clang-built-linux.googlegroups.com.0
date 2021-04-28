Return-Path: <clang-built-linux+bncBCWMTL744QBRBL6HU2CAMGQEM2QAX2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2B936DEBB
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 20:04:31 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id s7-20020adfc5470000b0290106eef17cbdsf19246584wrf.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 11:04:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619633071; cv=pass;
        d=google.com; s=arc-20160816;
        b=qg/69fYsZP5+GfrP3iFx0FTsh8HrhB3e5umEVwYosJ7CKcaTU7vjFU2NMjMF2XN6g5
         LSx+6LvwLwpoXS9mb1OUXhB02r1nWHYCXIuJ4H4N1yGGjQByG0SaJ72rWAJYESTrDw8U
         x98I4t+W6eXujLw707MLGqUttBhVmbDvOv4FD3yQ6g0XsId6kONbUL5GqcBDvbpVCYZ7
         rof8YLNTYDrwJVs2+c0InKdrB1iPH5PjMBtv7t0pcg1muYBhzGJFG20BxMO/MBcV6L2T
         JDlEcwvrpywWiRu2wm6L2cCpIKQ2+pQWSwNSMWUdj7e9aTcAWtvfHGvyeEChxmsR++rg
         1dow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=L6UjqfzXHxaH8xIpPxzlartw/wOaZ/PljCgD3wIi4j8=;
        b=NppemYv3OA1RvBw6ENtg2IBzrpfX4zHDaMZ6wqzgYV1GmBJ2uBpemZTJcUb5Thn2Qe
         9lSKtw4WraxZalUM3bREVckqrBFJ6i1zct+pMQCbbqk5Wrnuha3urO1opWJwqlCw75XB
         8YgjvQKhSAbvHbycV/XLighY1b0sxOWg6uXmKjevrJVVncGy8szyC7X+utfXLDi2UTDO
         +RgN4yEreDzT66QKsztf9PSVnng3beGVUc2U9Pb16gFyM002wzeL9LxFohuGPJdDSiJ2
         4AZqhHvJJX1eGzMRd4jmI1zAqvz4lYL7ruO3D7B/HAYfDMSJsZnfHfxXXp6v79LRESnz
         ZE1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 2001:1600:3:17::8fa9 as permitted sender) smtp.mailfrom=mic@digikod.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6UjqfzXHxaH8xIpPxzlartw/wOaZ/PljCgD3wIi4j8=;
        b=SXzHlGV9jtnN0LFK1T/b3WcKXTHQD+Jc0UTiOpqoOSmf3NWe8HD+MM//G0wLyWzPgN
         BcHJ6XNmyL+xhoCPKJ+RJNFhrLGuex/dEWYq9sml7rLuApAn4wevIn8xIQeFzfeNcNxR
         bNVK1iWQxYaVUOtDyiTp4jQVol3a35V+0doRqgl9ZCOyGJugQWmxy6Na6I8x/oC7vLnM
         6pjqWN28yHw/GPKcddNUEJvxPe1gqUuM39U8fm8Cs9qCPJYXUZcTyo1TtSFbytZs8xFe
         YQumStsAFOnT/xCIwfKVYSnjTb20u/ElZi+/YIKzGHIn2txJMU8aDaPvNhCDYl9VQtrj
         3I2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6UjqfzXHxaH8xIpPxzlartw/wOaZ/PljCgD3wIi4j8=;
        b=f/f0GNlGkLl6IUyT9zJgh78PBywjTtdYtEU7tyhYn/OpLv/cJnPtqFmsuVXBnO1Zr2
         gaCT8UHMfbCZsQPw/jmHZP4zAeELToT3GwrtuamJibuBbCah46ehGmWtj9H4pWIiyaqk
         /PbTbmcsvzuLRhgWgPaoVXIdMzksnrVKWG88iqvwsT1nYk5KE25yGKS7YhS0eC/yMjHr
         lIFVPD8RBQ0/MgzZiGAMjZZAvYj2doVpH5f72VqOLdE2KRkKN8oucagNV9ECcVNV0at7
         cjcz48ybdiB6idoo8JuwcojPP2h/GJ9VoXRji0p65PJxiPYksQK5bu1g7AVAAwANDMw/
         mGYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532igt6Rxwchkai7xvuJPKvh2qKwIejHe4WC5OTaveQbD2S6kmLV
	1X8MaFi1X4BsDvhgOPGBiLY=
X-Google-Smtp-Source: ABdhPJxzLEWayF3FD+9L7xSREGyePtYkPBQiibUmS+sMMdjDv5WsMgfF4hwoRyE5XcdSTVxkS4Fhmw==
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr37404371wrj.328.1619633071167;
        Wed, 28 Apr 2021 11:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls427782wrp.2.gmail; Wed, 28 Apr
 2021 11:04:30 -0700 (PDT)
X-Received: by 2002:a5d:528c:: with SMTP id c12mr36847659wrv.303.1619633070264;
        Wed, 28 Apr 2021 11:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619633070; cv=none;
        d=google.com; s=arc-20160816;
        b=mqZiuaKAChw3TaylqPdV6RL/dzSfyv5DZbErnLa/Vqi2AeqsB3OUnrfrE6pE03josT
         iV6z29AWOhnp5TKl3YdmY4nbSxnaIvnVspsnvZ2SnA6qcjSgYkxvKO1G0OjP6dh798Kr
         l2wuHIIo5DXM4tM49z/Ql1/J7weItbL2CLmAL/OEI5JKBaccXJP5U6ySo1kefqQFNa38
         rKhxkcUSwIQ/OWBKzAz1w3RBabTesJrHh8GBtUirlERDHd0a98hJv/ElZBBD09Dk5v0s
         EAh35t2KaHwso9VCqf9x8P8No7DCd9nTdexGUq9I7z1Vb8uKUCynpezdLrRKZEQHC1hN
         I3PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=AfH3rJ9ovVT5AyhEa+1Qy5NY95276MQiKVcG9a3T/kk=;
        b=qA3dGehIe23HTQoFwVMkx+yz7RYaCpJ4SgTD0KEhg0WBbXuwvRu33bvLwg4dBbSOis
         XV6mJqKcn5J+U8di3O2q3mBPfSNkBZ6qm8cGX4BajgC8rC6f9EfcRnlZ1JGjFkWPOsFS
         bw0fR9pl9jAB1Qxi0cGW9+v6PJtWRrGEePtL3VRd2lJSxgySvaBjspO5fXd+j3r8yYLw
         srYxVOn2E46jj91UPpCir/D0IC8mPWH83YEtIHbqKQ4semgMXd1lO+wZ7t4s4ohldUeE
         NhSieLm7aSpjHe6URSWPkQa5mNto+9ekeMdPhgtPLCT3QgefaDU/icX4S+239NUZoRhH
         uUMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 2001:1600:3:17::8fa9 as permitted sender) smtp.mailfrom=mic@digikod.net
Received: from smtp-8fa9.mail.infomaniak.ch (smtp-8fa9.mail.infomaniak.ch. [2001:1600:3:17::8fa9])
        by gmr-mx.google.com with ESMTPS id c9si38691wml.2.2021.04.28.11.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 11:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mic@digikod.net designates 2001:1600:3:17::8fa9 as permitted sender) client-ip=2001:1600:3:17::8fa9;
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
	by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4FVmjn5c3FzMqHN0;
	Wed, 28 Apr 2021 20:04:29 +0200 (CEST)
Received: from ns3096276.ip-94-23-54.eu (unknown [23.97.221.149])
	by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4FVmjm5KbLzlh8T6;
	Wed, 28 Apr 2021 20:04:28 +0200 (CEST)
Subject: Re: [PATCH] samples/landlock: fix path_list memory leak
To: Tom Rix <trix@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
 linux-security-module@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 James Morris <jmorris@namei.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210427183755.2790654-1-trix@redhat.com>
 <CAKwvOdmj5YvWZZWwcq1G7JgRALwPbqwiROiedMeEbBst2sGeiQ@mail.gmail.com>
 <6108e69b-0470-cd71-e477-ba64641cbf58@digikod.net>
 <4ece80d4-16fe-1938-7eba-2046840881f6@redhat.com>
From: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Message-ID: <fb03aba8-8556-804f-72b8-c7cbf7155226@digikod.net>
Date: Wed, 28 Apr 2021 20:04:57 +0200
User-Agent: 
MIME-Version: 1.0
In-Reply-To: <4ece80d4-16fe-1938-7eba-2046840881f6@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mic@digikod.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mic@digikod.net designates 2001:1600:3:17::8fa9 as
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


On 28/04/2021 17:36, Tom Rix wrote:
>=20
> On 4/28/21 2:58 AM, Micka=C3=ABl Sala=C3=BCn wrote:
>> On 27/04/2021 21:13, Nick Desaulniers wrote:
>>> On Tue, Apr 27, 2021 at 11:38 AM <trix@redhat.com> wrote:
>>>> From: Tom Rix <trix@redhat.com>
>>>>
>>>> Clang static analysis reports this error
>>>>
>>>> sandboxer.c:134:8: warning: Potential leak of memory
>>>> =C2=A0=C2=A0 pointed to by 'path_list'
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D 0;
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ^
>>>> path_list is allocated in parse_path() but never freed.
>>>>
>>>> Signed-off-by: Tom Rix <trix@redhat.com>
>>>> ---
>>>> =C2=A0 samples/landlock/sandboxer.c | 2 ++
>>>> =C2=A0 1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/samples/landlock/sandboxer.c
>>>> b/samples/landlock/sandboxer.c
>>>> index 7a15910d2171..4629d011ed61 100644
>>>> --- a/samples/landlock/sandboxer.c
>>>> +++ b/samples/landlock/sandboxer.c
>>>> @@ -134,6 +134,8 @@ static int populate_ruleset(
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D 0;
>>>>
>>>> =C2=A0 out_free_name:
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (path_list)
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 free(path_list);
>>> I don't think the conditional is even necessary? By our first `goto
>>> out_free_name;`, `parse_path` has already been called/memory for
>>> `path_list` has already been allocated. `parse_path` doesn't check
>>> whether `malloc` has failed.
>> Indeed, no need for the path_list check. In practice, this memory leak
>> doesn't stay long because of the execve, but I missed this free anyway.
>> Thanks!
>=20
> Ok, the general problem of not checking if malloc and friends succeeds
> is a different problem.
>=20
> So remove the check and keep the free ?

Yes please.

>=20
> Tom
>=20
>> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@linux.microsoft.com>
>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 free(env_path_name);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;
>>>> =C2=A0 }
>>>> --=20
>>>> 2.26.3
>>>>
>>>
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/fb03aba8-8556-804f-72b8-c7cbf7155226%40digikod.net.
