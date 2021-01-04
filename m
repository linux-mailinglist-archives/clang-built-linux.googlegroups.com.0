Return-Path: <clang-built-linux+bncBCTPXNVK2UJRB7VTZT7QKGQEBG4QWIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 821C72E9621
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 14:37:04 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id 33sf21824304pgv.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 05:37:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609767423; cv=pass;
        d=google.com; s=arc-20160816;
        b=nqkhU/vBhK6gkPiHAuXMjci4owb2IBQDaMAW4dU2EhfFnD9L8yX+n3Ma1Zz1ZhdqjL
         TZvav49ZbWuW466TocDYFfOCDpOqihJ+w0gHqVmWI4oRw/gGjrrD1PcJGGCSdog90L2n
         QqFPnCpdMWWB6+FnLY1RrmPauukn6+RpEb3W0CTFl/80tmQrfQk/+JqGlzRmp/z0n59u
         Xo3RG4Q7dGNl2/kItlv7+NTrXEDt5HanZta32ULfew3DTPgfqta43Xbnk3G6mvVfhOsU
         o+lNaR1Wk4Nz0W2u7j7V4iAq+EWT3GyY4jkwR11xW+9kbSQBh6urEiNjNR2FyUdBwjIj
         EdOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=gYwPZJ5MNn/NL+dQ6Zv+4qWdsyp+rJaPMS1FesKk188=;
        b=KMNG+yFXpgzMdW8mZd5ZdY3g0XCgTq+rek69P38P4UMtRZFThsH2qks6DeFCgfqlkT
         9cdkzkdBMJOrZbRGxKHLriMmGxkqM+Ko8W2Oi/nwxcjiEMpLQCNnTC++kp61XWpi5Kwg
         262EDyH3cILFxcc+hz6lmFRMnkbUgdCfRtiLOgFA7Jveggdmdw72O4EAgZ0i5wWiwD0O
         amx62AiaUI7hQRCDLuc9AExxsAoBccvp7Do1QW/qzdAiB2yMjrVezjbXrRVgGuF7WvBh
         v1p/T5LVPAoeI00tAuUcTrFKbSYIWD+YBaXEqY3eqJmULz505bQEyJD9tYriSj1UxiwS
         kjuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ah3Cz9si;
       spf=pass (google.com: domain of kaluozua.ko@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=kaluozua.ko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gYwPZJ5MNn/NL+dQ6Zv+4qWdsyp+rJaPMS1FesKk188=;
        b=lXLNLfEsMR1RGNoAhkkexUEGmkUnDMKLwTvHRcDuamQzw52DCRUiZ1C1bdwnZoNbsC
         5/vgfQ05XihbTruWRGLtTdvMIhYwlBWriPcVq8FtOwwuR2Rtv+OjPbkuEs1EixBqu4uu
         jFzaz8R8hUlr3O5xyw4uzN3GPB3/HCHgfI6zSMMhbcY1UcNFaPkLbXWDQh2dkTngDG0s
         RNlQEAogl0ssAWguQ7ug7AxI3KeZESJrnMTqpQ9fAMkOZ8LXOvO4/1klbK/h11RlYUEg
         9bCXDlMC6RkOr0zbhMBdnzYYTqUj7jyOFH1VIWrOZfbTGaKP4UNeuH/OoPPULhuYs9WY
         1brQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gYwPZJ5MNn/NL+dQ6Zv+4qWdsyp+rJaPMS1FesKk188=;
        b=X7MQJskN9yT+CBfwV5gSJ/hAZ01JskTd148uy3aSD5EUPp5Wx1KCdLAn3GAoR497pb
         TqLGZVyQjfgDshiHox3fsJU064lrEQojrKaYBLMWGtgeNV9UNhlhQk7mi6TNGo/bAyaH
         X2qpWlh7IlY7A3Zd3RiNCJSn1K5tVZaS84d1//WFLAQVhQXV1RZgWDbxRbzbb/byz5c/
         dc0KeShY8aik6QujS3M3Vpv4s84xHLZ1jAt+KBeo7hTQoFuO3dLl9YmGFObU3uNL6Ki8
         q9f8HURcthuOmTnSZ62BV1+YRpccVLSS24DpV9ItFl5A70EG01Z6fE8P5v0zDxFxkuQM
         9V7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gYwPZJ5MNn/NL+dQ6Zv+4qWdsyp+rJaPMS1FesKk188=;
        b=MVa3qfa7ZCwAucDIZrhL4iQaT172CG2nT3nX1IaB/HozMmESvj6Abd1U5NmrqqesZs
         6EmEL2Ln66PvO26xiG9V0wpXin636aVqXM2+IDLFtzvla7v8RrNNaHYzfiVNmROYSfuu
         6gCgRHBAuiQ2Svz3lN/WVEj9Tr07c/vtiE2vbWinuWf70vDy69ENFoWFklTgRZupfCYg
         h74J+/513fztcjVQZYRMGjov8VdkVbyYWdWMALX1d6G/iy7r9QiuzOMcFubgk5DeXtUD
         WlK4qSIMlyyxOAstp55BI43Ssr1gmNGhNi2XRIMHtIbG7SKNZiEKPw8SAe3XbPzUiu0U
         lmyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AgLIQRYjUY690cWTm+gPpQfVtq/jgJop/bLmQawQUpMkkbQGG
	mGP2S3sQV5ifxpG8QZiLFcY=
X-Google-Smtp-Source: ABdhPJxwcXbZ4+MFmGLlnd4HopJusbDp+ad2ENAeAMeXl7kO2/3I2bkyQhUZKdH8IJP172UiVt3wwg==
X-Received: by 2002:a63:130b:: with SMTP id i11mr27840483pgl.300.1609767422986;
        Mon, 04 Jan 2021 05:37:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:548:: with SMTP id 66ls36108725plf.6.gmail; Mon, 04
 Jan 2021 05:37:02 -0800 (PST)
X-Received: by 2002:a17:90b:1987:: with SMTP id mv7mr29745768pjb.66.1609767422294;
        Mon, 04 Jan 2021 05:37:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609767422; cv=none;
        d=google.com; s=arc-20160816;
        b=fUfnZZO2oiK75Il2GvQ/8sZ8UrLlVO/bPll7ujpLlVLe6+Xx/fyA4YgARuP9VMPgmN
         HI96t8gyKh5TOONexjVjxThCzUK+Z2SqFTz9cuhFMrOxTM2cAcYc7u3AHNg7ERjO+f8L
         1v6RrYa4Y5uOd0LoeiwXoLlx+xGTJSvVy5xrnog56kDkys5tRJ/T06BQqv0ZPq4XiCdr
         MStr0I/6t/RGVA6EQ01tFjWUpjOtSpTsjE8pQbT9fHW28TSyNWuH48elcIFtv+9MzoSl
         NV0zooaecKoCz2tCMFtmd6zohg5Absi9xrZy010XvfuSuh5/Rcw8hLVotVPmHBi9yQA9
         viFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=TVAfCJyYZZpBzNqctHdo7Q/HSlurQOlA2kCbYFKzM6c=;
        b=fi18X16DLH5ZRpP6TP+KN/0y7cCt5oAQEleMCmzImJVTpN7vXDaxIzyCfSVRCTQKmD
         a73szkmLigSTCNTjVzmUtaq4Ek0GQPiM0+vHXFmwiQ2s+ISCHwRRjoHg6Gtt1MZ/5kB3
         YsQY0hIdiuhF4jynRJPcGhSVb0vroBUsVVL6n6DclZDvObep+OEPD1zT843pZ/d8jxnh
         pE9gVvNTtxBYLa+LDQPbnTeV2MAeWKK/eWJOD54KOhMk+WZiw0SUOsEkGCkzobS++MRH
         M5gjOhTpnIIQs15vOctZuIk/xZd7YO4Iek1i4HXFpdIuo9UTI1sFgqFh3LRC5j49WrtE
         Gmpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ah3Cz9si;
       spf=pass (google.com: domain of kaluozua.ko@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=kaluozua.ko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id q32si1806294pja.2.2021.01.04.05.37.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 05:37:02 -0800 (PST)
Received-SPF: pass (google.com: domain of kaluozua.ko@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Received: by mail-qt1-x82e.google.com with SMTP id g24so18379870qtq.12
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 05:37:02 -0800 (PST)
X-Received: by 2002:ac8:5ccc:: with SMTP id s12mr70942135qta.364.1609767421976;
 Mon, 04 Jan 2021 05:37:01 -0800 (PST)
MIME-Version: 1.0
Reply-To: marylucasjackson@gmail.com
From: Mary <marylucasjackson@gmail.com>
Date: Mon, 4 Jan 2021 05:36:48 -0800
Message-ID: <CAFwJn-k4tLXJu0WYbf7keZyMTh3xgepBDHv0rXkbspyFaxtMhA@mail.gmail.com>
Subject: Greetings
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000005ba43f05b8132ff1"
X-Original-Sender: marylucasjackson@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ah3Cz9si;       spf=pass
 (google.com: domain of kaluozua.ko@gmail.com designates 2607:f8b0:4864:20::82e
 as permitted sender) smtp.mailfrom=kaluozua.ko@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000005ba43f05b8132ff1
Content-Type: text/plain; charset="UTF-8"

My Dear

 My Name is Mrs.Mary from Norway. I know that this message will  be a
surprise to you. Firstly, I am married to Mr. Lucas Jackson, A gold
merchant who owns a small gold Mine in Burkina Faso; He died of
Cardiovascular Disease in mid-March 2016. During his life time he deposited
the sum of (Nine Million Dollars) with my name as the legal rightful
appointed beneficiary to the fund in a bank in Ouagadougou the capital city
of Burkina Faso in West Africa.The deposited money was from the sale of the
shares, death benefits payment and entitlements of my deceased husband by
his company.

  I am sending this message to you praying that it will reach you in good
health, since I am not in good health in which I sleep every night without
knowing if I may be alive to see the next day. I am suffering from long
time cancer and presently I am partially suffering from a stroke illness
which has become almost impossible for me to move around. I was married to
my late husband for over 19 years before he died and unfortunately that we
don't have a child, my doctor confided in me that i have less chance to
live. Having known my health condition, I decided to contact you to claim
the fund since I don't have any relation I grew up from the orphanage home,
I have decided to donate what I have to you for the support of helping
Motherless babies/Less privileged/Widows' because I am dying and diagnosed
of cancer for about 2 years ago. I have been touched by God Almighty to
donate from what I have inherited from my late husband to you for good work
of God Almighty. I have asked Almighty God to forgive me and believe he
has, because He is a Merciful God I will be going in for an operation
surgery soon

This is the reason i need your services to stand as my next of kin or an
executor to claim the funds for charity purposes. If this money remains
unclaimed after my death, the bank executives or the government will take
the money as unclaimed fund and maybe use it for selfish and worthless
ventures, I need a very honest person who can claim this money and use it
for Charity works, for orphanages, widows and also build schools for less
privilege that will be named after my late husband and my name; I need your
urgent answer to know if you will be able to execute this project, and I
will give you more information on how the fund will be transferred to your
bank account.

Thanks
Mrs.Mary

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFwJn-k4tLXJu0WYbf7keZyMTh3xgepBDHv0rXkbspyFaxtMhA%40mail.gmail.com.

--0000000000005ba43f05b8132ff1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My Dear<br><br>=C2=A0My Name is Mrs.Mary from Norway. I kn=
ow that this message will =C2=A0be a surprise to you. Firstly, I am married=
 to Mr. Lucas Jackson, A gold merchant who owns a small gold Mine in Burkin=
a Faso; He died of Cardiovascular Disease in mid-March 2016. During his lif=
e time he deposited the sum of (Nine Million Dollars) with my name as the l=
egal rightful appointed beneficiary to the fund in a bank in Ouagadougou th=
e capital city of Burkina Faso in West Africa.The deposited money was from =
the sale of the shares, death benefits payment and entitlements of my decea=
sed husband by his company.<br><br>=C2=A0 I am sending this message to you =
praying that it will reach you in good health, since I am not in good healt=
h in which I sleep every night without knowing if I may be alive to see the=
 next day. I am suffering from long time cancer and presently I am partiall=
y suffering from a stroke illness which has become almost impossible for me=
 to move around. I was married to my late husband for over 19 years before =
he died and unfortunately that we don&#39;t have a child, my doctor confide=
d in me that i have less chance to live. Having known my health condition, =
I decided to contact you to claim the fund since I don&#39;t have any relat=
ion I grew up from the orphanage home, I have decided to donate what I have=
 to you for the support of helping Motherless babies/Less privileged/Widows=
&#39; because I am dying and diagnosed of cancer for about 2 years ago. I h=
ave been touched by God Almighty to donate from what I have inherited from =
my late husband to you for good work of God Almighty. I have asked Almighty=
 God to forgive me and believe he has, because He is a Merciful God I will =
be going in for an operation surgery soon<br><br>This is the reason i need =
your services to stand as my next of kin or an executor to claim the funds =
for charity purposes. If this money remains unclaimed after my death, the b=
ank executives or the government will take the money as unclaimed fund and =
maybe use it for selfish and worthless ventures, I need a very honest perso=
n who can claim this money and use it for Charity works, for orphanages, wi=
dows and also build schools for less privilege that will be named after my =
late husband and my name; I need your urgent answer to know if you will be =
able to execute this project, and I will give you more information on how t=
he fund will be transferred to your bank account.<br><br>Thanks<br>Mrs.Mary=
=C2=A0<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFwJn-k4tLXJu0WYbf7keZyMTh3xgepBDHv0rXkbspyFa=
xtMhA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAFwJn-k4tLXJu0WYbf7keZyMTh3xgepBDH=
v0rXkbspyFaxtMhA%40mail.gmail.com</a>.<br />

--0000000000005ba43f05b8132ff1--
