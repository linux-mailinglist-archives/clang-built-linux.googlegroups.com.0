Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBFOWVT6QKGQEIBX2D2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0F12AE4A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 01:06:47 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id x2sf380331qkd.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 16:06:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605053206; cv=pass;
        d=google.com; s=arc-20160816;
        b=fYg0/nw0yOvqoNwRMm/1t8CV+Lhw537M14nwgKC5TgB24tEAIGGJ5/tpjlftLXqAiL
         SMsOOrq0/sLksKs+/YBgXWAIi7TFmvtdqgNrHnUN2sxUfYJ54ZoT7plEXn9lMHvKYnAd
         Y+TPjhbba34a4rNJ7uhsAHH/rJq62Kq1yfMM2V7+7CTu5lWwkWhqLW8LgEndGoZI5kb9
         S10F2lBQ79+WGovwbUTo6RZjcD6AqBXLQbhxvDasV+ebOLLco5F7/Q+UMtpPjFr8p7Pq
         1BaweBHNj4M/5tzG8/zRp6dY3TuA3UQpW/VLJR9UaQ07HCMY0+l3akbNCKr5mCMYutOz
         ClHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:reply-to
         :sender:dkim-signature;
        bh=FN6HRrjq7HRPYZnjzVyLxJDLJGSU5lJ1+NpGAbXYhvg=;
        b=szJuM4YsALLiN7ngnAFthO4C6wxh2eW1rA8HilyhAHa4l2xCA/VNzm2ibzwqnRYOLW
         JbrSwLLtPR7Gly15Mr39zRgqQFdXf4MmajF7mpLthniY7Xt7xmA+U9N1iNlLzkePFqTx
         LnBR+S87JEdSa5sET6RFSNPULDJ7OiI68oxEBeIk90BqqPthnw6ATmY/7uFIaOso7id/
         XGuOJS76xAO2bD6jm4wwwLwFUCObBi+sb7R+YzlUX/RN5z/vqhueKSDWExpDuNoxTOgt
         /0NTvahOlYX7jTA35G6+kxww1nBxOnU2xywXZPgfhK6jCXpMgTdWkDhwMczwlHdD0xg6
         sMZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g2rlr1Hy;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:reply-to:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FN6HRrjq7HRPYZnjzVyLxJDLJGSU5lJ1+NpGAbXYhvg=;
        b=Uemca4XzEVV0MF7UvH7tOekQtvjXvF/3k9IP0T9rcClX1MsOWNME/kNE/OhTFFXHfc
         l4HeRj6CwbpVjJwGiOHDgihVH/WoqHsr/Kh+CsVJ0IpzoHzN+tb2qvGN93pVIP17Z2yJ
         GczHVCGR8duJxQQwMWe1yQjngJmjKrhIVVQKaq8n8AKmUgJ30UBgZgbKMZyTFURAxzUa
         ytb9ikl8Ltw9KurjgXqFkqmNgDB0KAHZ0nR969LrXR16DGR9o1AC+4SNX7w+sshJSgHz
         jONl3EWTnQS7lwaNTh8JNVuetg5mY3abdwIf/QAdQwpCasye5ru7q7AYzrejKLUOvf1u
         gsfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FN6HRrjq7HRPYZnjzVyLxJDLJGSU5lJ1+NpGAbXYhvg=;
        b=gumfAnY8I6Mdsbg773IHNCnVbgz8H664IE6ldfhr0FZaJssWFdt/AH8QRS+97hpAyx
         24XqsvxooPWgeg3LOq2MPZjI5uiNSgQEXrjOTaL4svEfKOHtzq3Huvm/OStYm2F+DkMJ
         s53a3PJOtduAgNSMHxJOiy79y9T2ry8cRgJG7zrE6PsDzHWEg+dwAfMAgg4ZQv9Wz8b6
         OcrgLiB00JHhHqIW53cu7pNfP2LtTBLBhPesn0D3b7TaeXRx1q7dVlELuyQL4zs+isUS
         92LMePI1n01tFOha3zNbExCNeEzhL5J41BqTgGYJkKSWFJDkY2I2+7jFxbr6+xRn4mHb
         dp7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53189wC7YprWZe6QmE8pbNn9HJVJTKdINVBlUozHMnmy7qqx1VMl
	3WRv7AwRDYkuxdRYTDAsHjU=
X-Google-Smtp-Source: ABdhPJz7+yAdi8HXZFmCyCD0V2cMxrcVOAYI55atZVfQekSyxfpWpSA9PdcwkoGaTstzvwvmtejBaQ==
X-Received: by 2002:aed:26a3:: with SMTP id q32mr20444487qtd.68.1605053206098;
        Tue, 10 Nov 2020 16:06:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:baaa:: with SMTP id x42ls3406071qvf.9.gmail; Tue, 10 Nov
 2020 16:06:45 -0800 (PST)
X-Received: by 2002:ad4:5381:: with SMTP id i1mr22120857qvv.21.1605053205622;
        Tue, 10 Nov 2020 16:06:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605053205; cv=none;
        d=google.com; s=arc-20160816;
        b=05eu46oIn0RV3DhDb6MLd4/1w+b09nUkldPpnPXb5ivFJ1ibJFiga1mIkjpUm5S9e2
         Ztfa8HAskKfB1ig3/+vg4Bbq+CQqypJfyK903b0+DNhOpfgSLl7gAJYdOdrUhModTxB7
         olT3K+D6dis1idH8m8vRU9kzaG/h19QtrN8xFsTIurDpO6DSEoq7xkxTN04Ts139ijeo
         RodGtWEmRCY05RVWjjgHDXNKPLqhEKsMr2pqbd2OBBNUTFL4dDBiyQuNTcd3sYJsIzY6
         wFnVKzUfWiV+ifgmES61wxEjJFXGJZ+Dqy9qngxsJ/ZntlIxXq1utKtA8k2cwdCJiDws
         qIsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:reply-to:dkim-signature;
        bh=lZRAAo07Qz8FNJaq5Am8MTWR/wlVgEv3kRateRo8ysI=;
        b=hzRAM2eV7q6NzsxC44jo3HfeCJV17B+ZZ6N6a64wEocKI5GMw/BSw9ZRTlYIS2TwiO
         eZrFwrpKUYQLlFXhOAIFhH+xosJ4i9141R9GIogCrT4qr4ZoBcapaQwIRfnVfT50qNx4
         CE/bOqxfU/i5ZSzIsckkfP2F5DxVu1VU01X9764bh0YErLxXDyZnNo0xe8asqv2CU19K
         xpQA01mAep48OpUbqYjtmiEE4kq0hv3JFfJMA6S8usLQaJbVTIQUS1LaeZxE3yDD949Z
         YIdTyX4o6xTtn5ZXxLT73Z/E69bQoYIK4TJAvLSm7MGxtxISffUyR60AWQIYwwXeLKlQ
         FzVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g2rlr1Hy;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id x11si36982qkn.0.2020.11.10.16.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 16:06:45 -0800 (PST)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-1M87cebYPTO-IiHbjqlXFA-1; Tue, 10 Nov 2020 19:06:40 -0500
X-MC-Unique: 1M87cebYPTO-IiHbjqlXFA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE93D107ACF7;
	Wed, 11 Nov 2020 00:06:38 +0000 (UTC)
Received: from tstellar.remote.csb (ovpn-114-68.phx2.redhat.com [10.3.114.68])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 148195DA6A;
	Wed, 11 Nov 2020 00:06:38 +0000 (UTC)
Reply-To: tstellar@redhat.com
Subject: Re: Userspace coordination on ClangBuiltLinux GitHub space
To: Sylvestre Ledru <sylvestre@mozilla.com>, Behan Webster
 <behanw@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>,
 Bernhard Rosenkraenzer <bero@lindev.ch>, =?UTF-8?Q?Tomasz_Pawe=c5=82_Gajc?=
 <tpgxyz@gmail.com>
References: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
 <CAKwvOd=d=OnY=SH7jowx-79J=ows4D1VDr=YX69fZxnK02nQAA@mail.gmail.com>
 <E066D685-782B-4266-B334-9F71D4981916@gmail.com>
 <44b5c961-8a09-0048-3557-a54da0964d4f@mozilla.com>
From: Tom Stellard <tstellar@redhat.com>
Organization: Red Hat
Message-ID: <852218e0-9034-c49f-0a36-bcf9e24672dd@redhat.com>
Date: Tue, 10 Nov 2020 16:06:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <44b5c961-8a09-0048-3557-a54da0964d4f@mozilla.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=g2rlr1Hy;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
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

On 10/21/20 2:03 PM, Sylvestre Ledru wrote:
> Hello,
>=20
> Thanks Behan!
>=20
> Le 21/10/2020 =C3=A0 19:27, Behan Webster a =C3=A9crit=C2=A0:
>> It=E2=80=99s worth talking to Sylvestre Ledru as he=E2=80=99s been build=
ing the Debian=20
>> archive with clang and finding and fixing issues there for a very long=
=20
>> time.
>>
>> https://clang.debian.net/ <https://clang.debian.net/>
>>
>> Behan
>>
>>> On Oct 21, 2020, at 12:44 AM, 'Nick Desaulniers' via Clang Built=20
>>> Linux <clang-built-linux@googlegroups.com=20
>>> <mailto:clang-built-linux@googlegroups.com>> wrote:
>>>
>>> On Tue, Oct 20, 2020 at 6:42 PM Tom Stellard <tstellar@redhat.com=20
>>> <mailto:tstellar@redhat.com>> wrote:
>>>>
>>>> Hi,
>>>>
>>>> I'm working on doing builds of =C2=A0Fedora packages using clang, and =
I'm=20
>>>> trying to find a way to coordinate this work with other=20
>>>> distributions so that we aren't all fixing the same bugs. =C2=A0I woul=
d=20
>>>> like to create a GitHub repo for storing build-fix patches and also=20
>>>> tracking issues for userspace projects.
>>>>
>>>> I could create a new GitHub organization for this, but I wanted to=20
>>>> see if this community would be interested in hosting something like=20
>>>> this in the ClangBuiltLinux organization.
>>>>
>>>> I don't have a strong preference either way, but it seems like there=
=20
>>>> could be some benefits of sharing a space for this with the ongoing=20
>>>> linux kernel work.
>=20
> Thanks!
>=20
> We fixed a bunch of packages over the years [1] [2] and I have been=20
> keeping track of them. Example:=20
> https://clang.debian.net/status.php?version=3D10&key=3DEXPECTED_DECLARATI=
ON
> However, as there isn't a strong incentive to switch to clang (Debian=20
> and Ubuntu, in general, are happy with gcc),
> it is hard to get traction.
>=20
> So, I am more than happy to see that it is interesting more folks :)
>=20
> In general, I found that the best course of action is:
> * Implement missing features in clang when possible (or push for it)
>=20
> * Report bugs on gcc to get some new features. So that packages get=20
> fixed upstream when the new version gcc
> is released.
> Example: https://clang.debian.net/status.php?version=3D10&key=3DSPACE_LIT=
ERAL
>=20
> * Fix bugs in the build blocs libraries or workaround them.
> Example: https://bugreports.qt.io/browse/QTBUG-68139 (I had to=20
> workaround it)
> https://gitlab.freedesktop.org/xorg/util/imake/-/issues/1
>=20
> * Fix some differences between gcc/clang like=20
> https://bugs.llvm.org/show_bug.cgi?id=3D45322
>=20
> Distro specific:
> * Make it available in the CI close to the packagers.
>=20
> * As much as possible, merging patches upstream (I know I am stating the=
=20
> obvious)
>=20
> Anyway, happy to see this initiative and a github repo works for me (we=
=20
> will have to take in account
> different naming of packages but I think we have precedent for this).
>=20
> Happy to help on this!
>=20

Hi all,

I have set up the repo[1] now.  I pushed a commit, created an issue,
and made a pull request to give an example of how I thought the repo
could be used.  Let me know what you think.

-Tom

[1]https://github.com/ClangBuiltLinux/userspace/

>=20
> Cheers,
> Sylvestre
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D756336
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D740019
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/852218e0-9034-c49f-0a36-bcf9e24672dd%40redhat.com.
