Return-Path: <clang-built-linux+bncBCBNXIE2VQLBBZV222HAMGQEQTGP3PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D75485395
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jan 2022 14:30:15 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id m21-20020a7bcf35000000b00346ddc490efsf34748wmg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Jan 2022 05:30:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641389414; cv=pass;
        d=google.com; s=arc-20160816;
        b=TlxAj2XTyIeL8OwryTWixjLhmRgAS6ngXE6EFQ7Ainx/j1zVBYDCsmW9DG/O4CN1aS
         NmxHjkyA3GFs3znG+7fC4QirhnNY8ZM9iR9ADMQv56S1vgpEYYxq/j7zrekIcJagUhro
         f8oOe98XrkjOnYE14Ufk7ZA06wV/DCAWK8kdk8hHFSLIbIj5qDX3jhd7s/utoZ8BCCg8
         l2fgvxO8klYochxmcMCjIrxReG8cegbdqYxkDzD0UvaYOzVH1f0+PBJNBZBVqns2+5Jh
         1HScib1dpktzAq4y6I/H0vNwwMVjFODW9P4STQa+o4IUVONpmzp8UOUFL/MnG9QzSPYk
         ye+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=xFAKaHjisGMG7bCVZ3LFsxARoOApguKontsn32IlBRY=;
        b=o7aekZFMsHyVdGWyTPG5WXl11a023vAW/tPbtDMl2GoCPSmT3JcG1CzTzd7ffsWQ0v
         R5WoNz7CwtohCLVM8rUTSx5jjtFId4KLZ7vyK5cDB/T+uWQUDHrtiND18ZPap3sILc+c
         zrJePpotEjRnchteu4YEeK50xR9Y9C1Ev4klj5W7scvxPlcSW2uUG+7U3zhZTQZ5lRuZ
         OAPInn+G4gUXTd9SOd+AfHpaq53NTCZ6UtCyzh+cyRVC7Ob5+EFpDtDMb8wZWYz/M7xP
         1fRwCS9C+13g6vY8rIHB7+YP2IdfUEKm1hBzHBLXpj+gWuS1N6kEU7nbSMhDstuQ6Q32
         WNWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DhbeWg0V;
       spf=pass (google.com: domain of mu04salim@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=mu04salim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xFAKaHjisGMG7bCVZ3LFsxARoOApguKontsn32IlBRY=;
        b=Xlkrghyqg3H8NbPSeYziDCqKckA9HHW1vKt9n/3j0R44dRbiJdAiuQSxjqiciRZZYg
         3q6CO2RXW3J06tRKw1Uc209YDlrf+U83RiLH1i8C8SSO4R86wXFZzc1L3enjXWbMY3FN
         NpZzsZnBbpEnPzxbLgxHNUVcBu1fwz/sfni5AXdqGYNlkxKn9sJhWjJ8DWjizUoozl9x
         S7tJZbkg1pjimUlAIByn4scOufrZ4NJTJDOVkWjFv5NhOyHETQfdfZw1CmwPo6pDr8mM
         uonSRVnHWYcYom0G521Gy2gHp/2SNgwmJPAE3IdGIY1DCPxPHx/HbOXUCdXfW9sCdAkd
         V34A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xFAKaHjisGMG7bCVZ3LFsxARoOApguKontsn32IlBRY=;
        b=J4XrU7NPep/bneKN4sZowYigw4X1eITWhcibSONilmaMSBhB8U90YD28goElE+V+R5
         trZ3hph08+F93NX2mNvwipGy3WC4Nt8f745tHE/Yg29Movhl595yGezn0ZXvMtak2gRX
         KRaju+RWyeyRE5LiXK1B+CwSt6jqflYeIQENHlBa7xJ0GEkwLqR+XD1YkLco0cpQobia
         Rood80jy8cAvHFTiwEFuYWl51ZZqYJ2xew/zkr/UUabNH+qtL+lz2pK4FKPO/x3pMXVs
         FDURduSjrrSCOwDyoKGYjRL2nAz2B1SxZBG5VQR6wEdyzkBxYk4YALfURG8tfDbkDtnB
         knoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xFAKaHjisGMG7bCVZ3LFsxARoOApguKontsn32IlBRY=;
        b=l4n7PKaNKKtfVIDjeFTrk0gtBYcgEJvu+x0eNnSoFAjbQeBOA6hMQ4GdRaGm2MhJLQ
         A/AWCGDlD1DALGPJzFD1oRAP5BgxcjhVUZHZviR7NH2eIDqtfip+PHZRtYbOGIqfTLSo
         IhZdYc1eIIt9QUlr+KKlRLslmK1Kp5P5f5uzqWbrDfrswaDB+kXOHKM6COdKftvLD8RR
         wOUT9bmsmP0WNx/QO6Vd2UEX1v8eJo4W4T4eQ8icOcXRSAuc/3aoAiUN7k+dDTLZ9aLx
         4ltuyBcC4HUD5w7EcALcV3vHHVNRkXUgL0O51UgF95HeqvbfVgpZT5nxIQyE8ioGffYY
         YS9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533G1Okn0CDnYJMyj967zBAr5btghR4b7hq5kwX23GGfWpNDULG0
	YK4CNz/TGl9tK7u8xE0Ws7k=
X-Google-Smtp-Source: ABdhPJy0xfXhBmD+JykzkfIEkDo5i2HOseGOCW9V740Tp/PYmKYeviKK4r4NGOsZaOpqMQWekpx2Sg==
X-Received: by 2002:a05:600c:2059:: with SMTP id p25mr2815113wmg.151.1641389414647;
        Wed, 05 Jan 2022 05:30:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d21b:: with SMTP id j27ls122440wrh.3.gmail; Wed, 05 Jan
 2022 05:30:13 -0800 (PST)
X-Received: by 2002:a05:6000:2cc:: with SMTP id o12mr48119929wry.285.1641389413711;
        Wed, 05 Jan 2022 05:30:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641389413; cv=none;
        d=google.com; s=arc-20160816;
        b=XUfG15j38stH87EQHouv5Z1EJJd2lGs2vQWaNYXeO7xmF+gyS+hVJzuymdijpnHdRZ
         vrYWEafaX7eMxQOQguVAaiga7HGHUS7CXywkC/yEDls0/0+9rgMbj+YBtMWibCtV32Vv
         ndv58fTFdrLp3Llc7UwU7D8DSz6/qZ9fezn9S6jv26/q3Ajzz7wkYOYRPW/ovzixIx8S
         1yKG5/bfoURN8apGUjkvxi7ra51o42RlgKFEo6XHouDfsBX9iH8sfhcQGTwsP2uxLBor
         zhvujK8Tj8uUv/gJi1tNeKSvqaBLOqxyWnR8deYR2jAIu+TjcUBu0lh+WhzQY9e4KTKq
         wUHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=oacoRRbkLe/nl03vwji8bvsqeyVLKZ4Ws4R6g1/7w70=;
        b=k5UoM+uWhOb50OuoALr8Fdlop6ct4FB/VuQ3UoXKvfOF/SefpUYNIM2dy+oeCMa41k
         Z8KHqPBVjtrZ4dAWjjFQg+g+WBfigVLxnHC5ZKTReG6rZsTnnOK8l1OX8OXhNMOi1AVk
         iCZCjVDkhjjgosOWqTvd5tu7QYyJHL+ksCAYjHrgedSca6zBpy/w8sPdje1RW1oR5Pdz
         nd3aRb3O8L1k7Z7aseDwqKuSnwYFoKewgP3+OT/JJntDKpyytJQplZItlEaQ5hvpIrne
         ZdAEqhg6LdgsEjGcchVFSCaOqCazcubNVFD2BwdAmNyvxdF9iFbabcE6xykwHu8Q6PwY
         vauw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=DhbeWg0V;
       spf=pass (google.com: domain of mu04salim@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=mu04salim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id c78si106554wme.1.2022.01.05.05.30.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jan 2022 05:30:13 -0800 (PST)
Received-SPF: pass (google.com: domain of mu04salim@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Received: by mail-ed1-x52e.google.com with SMTP id f5so162082287edq.6
        for <clang-built-linux@googlegroups.com>; Wed, 05 Jan 2022 05:30:13 -0800 (PST)
X-Received: by 2002:a17:906:ec1:: with SMTP id u1mr12313811eji.471.1641389413373;
 Wed, 05 Jan 2022 05:30:13 -0800 (PST)
MIME-Version: 1.0
Reply-To: jeffwill016@gmail.com
From: Jeff Williams <jeffwill016@gmail.com>
Date: Wed, 5 Jan 2022 13:24:30 +0000
Message-ID: <CANTwFGwGz0YUL1j4D4r4R+tvePhoRAdx3jFLZ+gJs+c_yH98yg@mail.gmail.com>
Subject: Urgent Reply
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000ec1bcc05d4d5c04a"
X-Original-Sender: jeffwill016@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=DhbeWg0V;       spf=pass
 (google.com: domain of mu04salim@gmail.com designates 2a00:1450:4864:20::52e
 as permitted sender) smtp.mailfrom=mu04salim@gmail.com;       dmarc=pass
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

--000000000000ec1bcc05d4d5c04a
Content-Type: text/plain; charset="UTF-8"

Dear Friend,

Greetings my good friend, I came across your e-mail contact prior to a
private search. I am really in need of your kind assistance in realizing a
deal. My name is Mr. Jeff Williams, and I am working at the Auditing and
Accounting department here in my Bank. There is a fund that was kept in
custody of my Bank years ago and I need your assistance for the transfer of
this fund to your bank account for the benefit of both of us for lifetime
investment and the amount is (US$18 MILLION UNITED STATE DOLLARS).

I have made every inquiry about the money and I have full proof details to
make the Bank authority believe you are beneficiary of the fund and will
release the fund to your bank account within 7 working days upon submitting
a claim application to the Bank. With your full cooperation with me I can
get the Bank to transfer the money to you, and after the successful
transfer of the money to your Account we can share the amount 40% for you
and 60% for me.

Below information needed.
Name...
Telephone number...
Address/Country....

Thanks,
Best regards
Mr. Jeff Williams.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANTwFGwGz0YUL1j4D4r4R%2BtvePhoRAdx3jFLZ%2BgJs%2Bc_yH98yg%40mail.gmail.com.

--000000000000ec1bcc05d4d5c04a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div style=3D"margin:0px;padding:0px;border=
:0px;font-stretch:inherit;font-size:15px;line-height:inherit"><div style=3D=
"margin:0px;padding:0px;border:0px;font-stretch:inherit;line-height:inherit=
;vertical-align:baseline"><div dir=3D"ltr"><font size=3D"4" face=3D"verdana=
, sans-serif">Dear Friend,</font></div><div dir=3D"ltr"><font size=3D"4" fa=
ce=3D"verdana, sans-serif"><br></font></div><div dir=3D"ltr"><font size=3D"=
4" face=3D"verdana, sans-serif">Greetings
 my good friend, I came across your e-mail contact prior to a private=20
search. I am really in need of your kind assistance in realizing a deal.
 My name is Mr. Jeff Williams, and I am working at the Auditing and=20
Accounting department here in my Bank. There is a fund that was kept in=20
custody of my Bank years ago and I need your assistance for the transfer
 of this fund to your bank account for the benefit of both of us for=20
lifetime investment and the amount is (US$18 MILLION UNITED STATE=20
DOLLARS).</font></div><div dir=3D"ltr"><font size=3D"4" face=3D"verdana, sa=
ns-serif"><br></font></div><div dir=3D"ltr"><font size=3D"4" face=3D"verdan=
a, sans-serif">I
 have made every inquiry about the money and I have full proof details=20
to make the Bank authority believe you are beneficiary of the fund and=20
will release the fund to your bank account within 7 working days upon=20
submitting a claim application to the Bank. With your full cooperation=20
with me I can get the Bank to transfer the money to you, and after the=20
successful transfer of the money to your Account we can share the amount
 40% for you and 60% for me.</font></div><div dir=3D"ltr"><font size=3D"4" =
face=3D"verdana, sans-serif"><br></font></div><div dir=3D"ltr"><font size=
=3D"4" face=3D"verdana, sans-serif">Below information needed.=C2=A0</font><=
/div><div dir=3D"ltr"><font size=3D"4" face=3D"verdana, sans-serif">Name...=
</font></div><div dir=3D"ltr"><font size=3D"4" face=3D"verdana, sans-serif"=
>Telephone number...</font></div><div dir=3D"ltr"><font size=3D"4" face=3D"=
verdana, sans-serif">Address/Country....</font></div><div dir=3D"ltr"><font=
 size=3D"4" face=3D"verdana, sans-serif"><br></font></div><div dir=3D"ltr">=
<font size=3D"4" face=3D"verdana, sans-serif">Thanks,</font></div><div dir=
=3D"ltr"><font size=3D"4" face=3D"verdana, sans-serif">Best regards</font><=
/div><div dir=3D"ltr"><font size=3D"4" face=3D"verdana, sans-serif">Mr. Jef=
f Williams.=C2=A0</font></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CANTwFGwGz0YUL1j4D4r4R%2BtvePhoRAdx3jFLZ%2BgJs=
%2Bc_yH98yg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CANTwFGwGz0YUL1j4D4r4R%2BtveP=
hoRAdx3jFLZ%2BgJs%2Bc_yH98yg%40mail.gmail.com</a>.<br />

--000000000000ec1bcc05d4d5c04a--
