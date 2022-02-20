Return-Path: <clang-built-linux+bncBCOM3EN3WECRB26IZKIAMGQEAN6Y3ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 912DF4BD173
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Feb 2022 21:28:27 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id w26-20020adf8bda000000b001e33dbc525csf6277770wra.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Feb 2022 12:28:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645388907; cv=pass;
        d=google.com; s=arc-20160816;
        b=b8jDpeXFhoBIZ1H5wVMCBwTP4TcVWceDvguvpxLrWBUb/+jbs4RfH9zX93SDy+PaQl
         W5f9fOcxSsMt+wdADc67sW9Pccn3xF4vwU9+mCKbOorkO3zMDZmbDS6tng1rldLFJHsR
         8c4lwPCvUPzV3TlqU0b8EOA71o5ZsNxpCvEjHhd/7FK5jWaA5lWcIu9sz7GCuZUJ9+HN
         omNhkrpI4jcjti1VTeGsjjSr0R06254C7ZZU2GsUB3sdE3euxh00xD5+MiHBQTxjHx6X
         ybUuHGnbPvZPy3r9Q7C1Bb9dkmyUkQzz3oC/zSzgTXi9XIHuIHuy5SS7Fh7p0hZjXqGs
         XoTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=T3v/nZkMMDlyJzHJYPRZY4FxXqzDqi/No301ljFNXac=;
        b=lxQWtd8uYX/qs9ZPNIgcKz9DxoKyP8NBlP6cELw1kekfZkdXt8HQAx+jGU0UfuEy2A
         tgAhW4lmqPMwwZ4m/GHgA0DjgHjUaH5H1kHHPX8YgAGPfXQz49iQ/iuiILHo+8QzHikI
         lIROEygIJ5ZUJHmnO3SYmH3Bvs5PitRxwblfYAw0vi14nZ3UT/rW61gDrD+1NJfqwTQa
         /n0F0vtm7tZDi2uQBvDYV3J9XA3Gs9jBNxQDkwnJc6fDhtlk3HKGrBF8RExmZC+gURcE
         OkPtFXwUihPm/fu5C96q7AVkox/xgR1gUWyBcJcGtFX6Oaq7B9nkKo5EzZWpql8PZusL
         Bs6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ow7PfGZs;
       spf=pass (google.com: domain of festusbanailla@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=festusbanailla@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T3v/nZkMMDlyJzHJYPRZY4FxXqzDqi/No301ljFNXac=;
        b=ihFCIvg2iCPklzlu0N7FIdKd9aDj65W1ZfIrW1+R2m9eiLipz/xeGXfRRchbbdmSon
         8Oatiozjctm4kIca+XGrcWaVAPGDMIu2Xlc+lQuork881TTAQAV1/P1yW2h2XjIVdtga
         51q8bPaPaCh+piV2L4XelfCZTyEI7dqibKF+Ic9YqKRFc40ar5nJiiyrh+0F9lJMFVkr
         WkIrlQ/6g0jIULlJGC2aWBC8dmd+3ZkWIsoP6ziyeDgC6na7l7o2kHKPFqVbvaJo+ATc
         wyc4wFc82saTuZPq82KbRw4XSkpV0AZ3edt/KCG/aiVUmhLjMZPTmiQ8IEwxcKYLc82G
         avcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T3v/nZkMMDlyJzHJYPRZY4FxXqzDqi/No301ljFNXac=;
        b=JbpHWcUJw6h77WGfKbFT/MQvHtwlENBJCnowCob2GcrZ2uQjangVblOru9/OVeAEL5
         Du6Fewb/Zt1sLFMpait5o4+aZjF3kmAEdyzSiUDvt4k+uW9Jq2pVbp23MUaKm1blqPXG
         8T1MN493a/Igm0aSK5DCmbm0l4VnUGd6FN5DT1T8qD0MN7E+dY4RAjNCU3gL7u4h28jN
         dJeRjHNj4VgMGwCuz57YquHtPUxRwFE718i9llFq/iA1l2xAEBa3Cto2yITDGjPEOygz
         7HMLnGjRMT9Lpd8pA3YS3MNjmkRO5BxoDj2PtFjDCMBxDOX+tZN2nUcan0kJE0FPCCSN
         fG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T3v/nZkMMDlyJzHJYPRZY4FxXqzDqi/No301ljFNXac=;
        b=Q+9yPKx8YedKNQkQVwt4pK4la+PY8OHEkd65XVJF6CsCY1upR571MiwXDCgefDgtwp
         ih4aYwLoUfUa0um9t8ZAFBva8/UnbNfdfuVmcIOD7c5s2kGo3IGRenq7R3mmVmnMTagj
         D6t+jZGXtiQOSzhGGLCICSIzojlqmQ2VAVi+0z4wp/DD57e8Li/xrxUENGeSjyQOe4ek
         vB3193zR1K9uMN56ZGXHgvGMJZsWSGBkRVkrQe05k1jlJnATWEeTcTuZocdkWA3IcMoW
         ghoPRw/tf5zfgRbstCE5LL3RWFCIEJPspNR+P6MIzFa39i2NfhySJyotokphwHxer0cb
         5evQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312CYhuZzL5exx8jWaa+857EKo+3MxlbhSxD+yspESYyVtrv638
	BWrU4lQdLefqLl3qqjSKyc8=
X-Google-Smtp-Source: ABdhPJww2/wowj2v9dH/ZOTV9RdJrYDYvBwJlJICLon7NbKVWNTEcnRib/37AlFhDh1hYkDprHwaGw==
X-Received: by 2002:a5d:648b:0:b0:1e2:181:96cb with SMTP id o11-20020a5d648b000000b001e2018196cbmr13345308wri.508.1645388907226;
        Sun, 20 Feb 2022 12:28:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fec3:0:b0:1e3:3e51:b38d with SMTP id q3-20020adffec3000000b001e33e51b38dls18169wrs.1.gmail;
 Sun, 20 Feb 2022 12:28:26 -0800 (PST)
X-Received: by 2002:a05:6000:c9:b0:1e4:bcc1:f806 with SMTP id q9-20020a05600000c900b001e4bcc1f806mr13436556wrx.372.1645388906359;
        Sun, 20 Feb 2022 12:28:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645388906; cv=none;
        d=google.com; s=arc-20160816;
        b=B8hrJToW7dDD3UgLLNeXhF1iyfDJT6abeT/dKA94npZOUy069+yEdr4y+vwOIUDBHV
         N7DGkzLDTBiiTw8V53ot+2RwRg93tY9fG8a8DnHDvYYxYyIH0NgsXqI4ea39vybSPPnk
         aoFVvwfA+V1YudjOizYwKZDjePXjczB+MSs2241DXR4Dgm6UoJEUarMCDmh8yJr1un62
         vw4NuYWYntyD+N3l2z6MKLcyi/77oRfieeBAGrKsxY2CG1J6mMYnE2Elq5NvZYQuHoKl
         ga2eoP6s8yRDJw1tpfGlv2q9jvQf5JqQqNzXqsb9GWuUzVazwjlQIPCOnHWes5qfwUnb
         EcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=/XMbsarxVjDShZq7gdRu1m0M4b8NENi/PWnkby/P4Zg=;
        b=VWgZ8Ca7fG5VFg6qzWRA9iz7dcq2Y6J56Z2vAzfbUyTS9V8vt73+Fr0h4MAqwfqcDO
         9K5a3X7jVgOabkCiUy+5StYxwdGcmNZMebgnHzbz1V8boW/nksCoWdnyObx0S597+W+5
         pOtkdzBMfBldZbMyIC11LDnEx2ivMZzQIoHgRJwTtzy4BECYbhzjsWrdGWxxEEPAG++t
         j0Q2zWJd0sGUXFXAKbr8JJsGRxh8bHq35/3oE8aiZBXJtHMuAyGoe0v/8lxOb0+G8SJO
         GZcqoe612Ei8v7dqAVcrqB+mwhND1xC5XP1rFwJNyHQEm6KFsqLmAHnwQMIaInhPXy8Y
         EDEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ow7PfGZs;
       spf=pass (google.com: domain of festusbanailla@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=festusbanailla@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id k39-20020a05600c1ca700b0037bb8ca0e20si183202wms.2.2022.02.20.12.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Feb 2022 12:28:26 -0800 (PST)
Received-SPF: pass (google.com: domain of festusbanailla@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Received: by mail-ed1-x52b.google.com with SMTP id bq11so4021056edb.2
        for <clang-built-linux@googlegroups.com>; Sun, 20 Feb 2022 12:28:26 -0800 (PST)
X-Received: by 2002:aa7:cc96:0:b0:410:b9ac:241 with SMTP id
 p22-20020aa7cc96000000b00410b9ac0241mr18813178edt.246.1645388906003; Sun, 20
 Feb 2022 12:28:26 -0800 (PST)
MIME-Version: 1.0
Reply-To: anthonykuja8@gmail.com
From: MR ANTHONY KUJA <festusbanailla@gmail.com>
Date: Sun, 20 Feb 2022 22:28:10 +0200
Message-ID: <CAMid4LTPV9MimdzXrV3GmjYS8zt4zZP=3FcuLQjS=Xqie-vObQ@mail.gmail.com>
Subject: NOCL OIL LICENSE
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000042828205d878f5a5"
X-Original-Sender: festusbanailla@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ow7PfGZs;       spf=pass
 (google.com: domain of festusbanailla@gmail.com designates
 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=festusbanailla@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--00000000000042828205d878f5a5
Content-Type: text/plain; charset="UTF-8"

Good Morning,

Please permit me to introduce myself. I am  MR ANTHONY KUJA. I am an expert
and specialist in the oil industry as an independent Feasibility/Project
Management Consultant to oil refineries and other oil industries in
Southern African, East Africa and some parts of Asia. Our mandate includes
identifying specific licensed crude oil export/ marketing firms and
recommending these firms to the oil refineries for supply of crude oil to
the refineries.

On my desk is a mandate from one of the refineries to arrange for crude oil
purchase from Libya for up to 2,000,000 barrels on monthly bases for 12
calendar months. The essence of my reaching out to you is the fact that I
am in the process of building a middle man structure to mediate between the
2 parties involved before the contract is signed. You may be wondering why
I cannot do it by myself right? The honest fact is that as a consultant to
these oil refineries, we are not allowed to act as suppliers of crude oil
to them as well, hence the reason I need a trustworthy person outside my
work circle in order to maintain a discreet profile.

I wish to extend this partnership to you my friend to build a middle man
structure with you, while I work from the back to guide you. Our
commission/brokerage as middle persons is between $2 - $3 per barrel as
case may be. So if the target of 2M barrels is met monthly we stand to
share $4M - $6M every month for a span of 12 months with possible extension.

Worry less about the speedy sales as I have contacts within oil producing
country's top officials for license of crude oil export/lifting to any firm
I present for this business. Therefore if you are able to handle this
transaction with honesty and integrity, you should come back to me
immediately for more details. Your urgent response is highly needed and you
can reach me on the following email address below

Regards.


MR ANTHONY KUJA
EMAIL - imfor100for10@gmail.com
Independent Feasibility/Project Management Consultant
Oil Refining Companies Africa/Asia

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMid4LTPV9MimdzXrV3GmjYS8zt4zZP%3D3FcuLQjS%3DXqie-vObQ%40mail.gmail.com.

--00000000000042828205d878f5a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Good Morning,<br><br>Please permit me to introduce mys=
elf. I am =C2=A0MR ANTHONY KUJA. I am an expert and specialist in the oil i=
ndustry as an independent Feasibility/Project Management Consultant to oil =
refineries and other oil industries in Southern African, East Africa and so=
me parts of Asia. Our mandate includes identifying specific licensed crude =
oil export/ marketing firms and recommending these firms to the oil refiner=
ies for supply of crude oil to the refineries.<br><br>On my desk is a manda=
te from one of the refineries to arrange for crude oil purchase from Libya =
for up to 2,000,000 barrels on monthly bases for 12 calendar months. The es=
sence of my reaching out to you is the fact that I am in the process of bui=
lding a middle man structure to mediate between the 2 parties involved befo=
re the contract is signed. You may be wondering why I cannot do it by mysel=
f right? The honest fact is that as a consultant to these oil refineries, w=
e are not allowed to act as suppliers of crude oil to them as well, hence t=
he reason I need a trustworthy person outside my work circle in order to ma=
intain a discreet profile.<br><br>I wish to extend this partnership to you =
my friend to build a middle man structure with you, while I work from the b=
ack to guide you. Our commission/brokerage as middle persons is between $2 =
- $3 per barrel as case may be. So if the target of 2M barrels is met month=
ly we stand to share $4M - $6M every month for a span of 12 months with pos=
sible extension.<br><br>Worry less about the speedy sales as I have contact=
s within oil producing country&#39;s top officials for license of crude oil=
 export/lifting to any firm I present for this business. Therefore if you a=
re able to handle this transaction with honesty and integrity, you should c=
ome back to me immediately for more details. Your urgent response is highly=
 needed and you can reach me on the following email address below<br><br>Re=
gards.<br><br><br>MR ANTHONY KUJA<br>EMAIL - <a href=3D"mailto:imfor100for1=
0@gmail.com">imfor100for10@gmail.com</a><br>Independent Feasibility/Project=
 Management Consultant<br>Oil Refining Companies Africa/Asia<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAMid4LTPV9MimdzXrV3GmjYS8zt4zZP%3D3FcuLQjS%3D=
Xqie-vObQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAMid4LTPV9MimdzXrV3GmjYS8zt4zZ=
P%3D3FcuLQjS%3DXqie-vObQ%40mail.gmail.com</a>.<br />

--00000000000042828205d878f5a5--
