Return-Path: <clang-built-linux+bncBCDZ7LHM34BRBGOPRGDAMGQEZC5PM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 024E83A340C
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 21:27:23 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 17-20020a630b110000b029022064e7cdcfsf398040pgl.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 12:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623353241; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aa+QJooVj83kc1fOqhEylFlBP75NMBETDPHm3zT5csPyFVUWPKaoTjggBM1bTkzcaP
         mARl5usnS0bEQetmYytPniTQnsuMhOpn6Re7/unNuxEVOLsWjgpXuK5VLxmzRMZeVCAg
         Jy6A77T4kwiM+Dh4ZOIMcbhGXyVNx8Swv9k5H4G6udxxP1/2oGeOdTw0kqPZVQo1tZHm
         vWCCZ93ODk/B33aF6fUvmd/gfqpk5gj9mYWZREjIXGm1umIuxUPbimOEWTLU2X/+VoqK
         kTBbiE2v8wMsIR4oBMeCnAYaqNS1us8MLOqc7oRMybBtDCGn0/kyl07ctjart/yCZW2+
         i/9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=07uwd+tE9Q35Daos3O8so5aGT+D2Ct0S/oAm2WOHwXA=;
        b=xGzmrZ8nEcJJG9kEUxfChf9qA1f/ItU8an6MWA20Rk/jS9d0ZQgVxyXZT/z0aleriY
         x/TSWWwNT4F2tIqCLacHd0l8ziYtPYTacwukdz85eE/hdVmlvPihKPlTxK4pyc1ROC0D
         KbHdFYa5T/ZXtZrtckRIFSf8yxdBaFgRwccmcIYD9c0bhr9OkfTEoNGjq+cQOmPDpR0H
         hGX8V1yZrW4RBMhIG0QU7OdxBN3jgFcmcMFuKsGpF5x3OJ1gRABgwjQqegDXS4kkS4+m
         arFL66tIgyLno/pCbh8SIRfGw8c4tCjag3KVa3biZOifHF8CE5zaITn2bkJ6MXF83O9c
         G0iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EWRzvScF;
       spf=pass (google.com: domain of spprttrmspprttrmfrcvd@gmail.com designates 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=spprttrmspprttrmfrcvd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=07uwd+tE9Q35Daos3O8so5aGT+D2Ct0S/oAm2WOHwXA=;
        b=W+ph4VezK/ugN8jxMNqIZ976ofc6FrsXcR2fV58XKSke10bXspxpo0hO8E8dLmCEG+
         Tpth7wiZbs7EpJ5lnw2eQdymcEt7L5eOmSeYE14rK5pNV7IhhGtOrYm6yL9t8NiBKKjz
         eycTXZkHPGHADgNBL6ceovbVybt3RRQyOyZaVWQBeUQJuOAN86+LBaB4X6VF43Xp+Ebu
         f/NtpjwhE/wTke4Fe1gXowUEz/3MDx1o5Pj0wC0V1FJi/RXHOAHHEZ3qK1iZMTx5K9M6
         06te6J3HliXm9NCdtS9gjsFNjGe7EzqZGlZ9ox2FnicX+2bTWoGluBzDG5IZitzTWWnf
         3xMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=07uwd+tE9Q35Daos3O8so5aGT+D2Ct0S/oAm2WOHwXA=;
        b=Zq5DJyuIa9tlYF5/1xs0q7hh7qYMG6yHiLPzNN7womlxZOLLNAknGUf76yKQS1kAye
         bmghbfOtI38+OEUDQFuhp5kN9z6G7JAhQkG+B+97dqU7rgOFZkGQUQ2kw8xTp+3bIKdU
         U0jlW0Uq0vux3iZK+bZV0Px856t5wC1goh+E4G6Cue+jseY0pFGWiDEi0uRHMI3Bb+KM
         icEgi13mn83wHe0tad6PieXPv9meKTK/WhEh4f+xzvWUhN1qRbXSOs35FEuI7WhFVrXa
         coWQuiEBZecBCxJ8DLAJ2gVp5TAANtncROW0TjCNTwqWkSAPfAK7q9zwrFJgerYfNJlx
         iKxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=07uwd+tE9Q35Daos3O8so5aGT+D2Ct0S/oAm2WOHwXA=;
        b=OkrHhunBMJu9kgF1C6UCkfcWanTn0YcVK3nsTecSjUmX/3P4wFQ1dscz0+2sZQIOuq
         wjNA+I9qYf6HvzXPVcpC01Nr1QYZr1NEZsZkvUI2rXEZal4yYUxknwfvz5kUmptyhKLR
         ai3IeqdstFacmhdqrDhiTKP9rND/Y0Pey+rsMGNGJUc+QM9SpZO+M/+8hi5OSvzICZd2
         Iwg9z6suWYIOZoK+srvRleAuEhrQIWgFIXjCiJr69Fx/dogqaIhpVtIJAgl9cweTUfOO
         znaAvyj1m39N1vj3EgqZMp/9dspBeDMLH8r4LCuZI2Q+WwZNRqGrR5XU8r72/5gI+boB
         FU/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318gRomuskQ3c0Y8/v4l2l+XJcweLeteWSneK8QJGSiExhM93ub
	oDq61sT+LSRi3tx49h/1Ncs=
X-Google-Smtp-Source: ABdhPJyj6rUVyhRPXmig1yPs/cliAzh6qhc26g8BVcWvKlF7MTgfYdO6KM/jktHJKqgkdhRbKBplSQ==
X-Received: by 2002:a63:5f57:: with SMTP id t84mr6357816pgb.147.1623353241557;
        Thu, 10 Jun 2021 12:27:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b81:: with SMTP id y1ls4007279plp.1.gmail; Thu, 10
 Jun 2021 12:27:21 -0700 (PDT)
X-Received: by 2002:a17:902:8d97:b029:113:d891:2ea0 with SMTP id v23-20020a1709028d97b0290113d8912ea0mr266849plo.61.1623353241029;
        Thu, 10 Jun 2021 12:27:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623353241; cv=none;
        d=google.com; s=arc-20160816;
        b=D3XO1zLWL6pRHgSQIISZNBzJWK3ch/N5V99ou3XsYqSHbfQJeTioROsGMIjZZuR2du
         jeiOx7QnseabVScb2ZvN2CcDUcI8bxyUk1QeIhbQVQ4N/SpOo8ypAzsialR/HexYGgel
         X+R6By8+/8ZvQbyi3dhOYH8gvZb8xW9t2So8QRkwRe3NlMKxLT0C+D4gwJoQUGAmg3D1
         1I22rZd1WPGVWW1R+SHUmlL9rZ1X74hlPvZeLzSEVy+VAaCoT8gPFv5c7x6yny9UCrVt
         otThclTMd3t4e4bNqjr85EuHaM0uz6NZHO3iouqowDcE6ilFkK2sDsWgqvaP5kA6pWkO
         OjCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ygoG4BLOmc4kUUuSrMnscX/NjxCo/7nsiwHSjJqBew0=;
        b=g3XAZB2h6lrCjE6HdC8qeFWoTIV4/DN5VLzvEBHexm983/FT4mheHsSNZwkjtIHbZy
         mlHmB4BmnEvmGZKRerM7Q6bDfdcR9TaVm83++iirGv94qoeuDe3/Pptd6obVkoNNygxG
         C8ozWxmnuzWYyJAg9zpr0Xbj5jAxVrPf3YHt5a4a3TRZezUoTrqw/rjkas/ViSlR2P+I
         s09ERlcElLaGJtrSKWOLrJXBeVMDSNBieRy834096b0FTGpp4Vi0temDLsqOR8ITAnDj
         KQ+C3asdPahjj8nrreSm4hj4f6HaA6vvmeJCtC1vi5xCN0twcq7MLxinIHUS2vT8oRTP
         dy6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EWRzvScF;
       spf=pass (google.com: domain of spprttrmspprttrmfrcvd@gmail.com designates 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=spprttrmspprttrmfrcvd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com. [2607:f8b0:4864:20::a34])
        by gmr-mx.google.com with ESMTPS id o20si575865pgv.1.2021.06.10.12.27.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 12:27:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of spprttrmspprttrmfrcvd@gmail.com designates 2607:f8b0:4864:20::a34 as permitted sender) client-ip=2607:f8b0:4864:20::a34;
Received: by mail-vk1-xa34.google.com with SMTP id az3so2010785vkb.12
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 12:27:20 -0700 (PDT)
X-Received: by 2002:a1f:d584:: with SMTP id m126mr6473462vkg.15.1623353239533;
 Thu, 10 Jun 2021 12:27:19 -0700 (PDT)
MIME-Version: 1.0
From: supportterm forcovid <spprttrmspprttrmfrcvd@gmail.com>
Date: Thu, 10 Jun 2021 12:27:08 -0700
Message-ID: <CAGSy_H0N7KDHP62oM1etc6+55SkRxpqMu+QOHHbMeDkbVqp8cw@mail.gmail.com>
Subject: COVID -19 benefit Funds
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000002fff9f05c46e61e7"
X-Original-Sender: spprttrmspprttrmfrcvd@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EWRzvScF;       spf=pass
 (google.com: domain of spprttrmspprttrmfrcvd@gmail.com designates
 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=spprttrmspprttrmfrcvd@gmail.com;
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

--0000000000002fff9f05c46e61e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 DEAR SIR/ MADAM.

Congratulations on being one of the lucky winners to receive the COVID
-19 benefit Funds worth =E2=82=AC500,000 EUR to help with the fight against
COVID -19 and finance your business while staying at home to help stop
the spread of the virus.
UNICEF and European Union have awarded you with =E2=82=AC500,000 EUR benefi=
t
funds with REF NUMBER COVID -19/EU/08/2020

Kindly fill the below details to this email.
cristydaviscristy3@gmail.com to process your winnings.

Full Name,
Date of birth,
Country,
Phone,

Regards
On behalf of European Commission
Ursula von der Leyen
COVID -19 BENEFIT FUNDS.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGSy_H0N7KDHP62oM1etc6%2B55SkRxpqMu%2BQOHHbMeDkbVqp8cw%4=
0mail.gmail.com.

--0000000000002fff9f05c46e61e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
DEAR SIR/ MADAM.<br><div><pre style=3D"font-family:Courier,monospace,arial,=
sans-serif;margin-top:0px;margin-bottom:0px;white-space:pre-wrap;color:rgb(=
0,0,0);font-size:14px">Congratulations on being one of the lucky winners to=
 receive the COVID -19 benefit Funds worth =E2=82=AC500,000 EUR to help wit=
h the fight against COVID -19 and finance your business while staying at ho=
me to help stop the spread of the virus.=20
UNICEF and European Union have awarded you with =E2=82=AC500,000 EUR benefi=
t funds with REF NUMBER COVID -19/EU/08/2020

Kindly fill the below details to this email.=20
<a href=3D"mailto:cristydaviscristy3@gmail.com" target=3D"_blank">cristydav=
iscristy3@gmail.com</a> to process your winnings.

Full Name,=20
Date of birth,
Country,=20
Phone,=20

Regards
On behalf of European Commission
Ursula von der Leyen
COVID -19 BENEFIT FUNDS.</pre></div>

</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGSy_H0N7KDHP62oM1etc6%2B55SkRxpqMu%2BQOHHbMe=
DkbVqp8cw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAGSy_H0N7KDHP62oM1etc6%2B55SkR=
xpqMu%2BQOHHbMeDkbVqp8cw%40mail.gmail.com</a>.<br />

--0000000000002fff9f05c46e61e7--
