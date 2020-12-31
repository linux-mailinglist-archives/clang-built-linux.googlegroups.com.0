Return-Path: <clang-built-linux+bncBC36XUX3VAGBBTP4WT7QKGQER3J6JUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4600E2E7DCC
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 03:58:22 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id n205sf31704289ybf.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 18:58:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609383501; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2+V8aRdAqkPtpQdnMyYxmixPUgqulvMn0W55y0j1rcYiZTuCn6rBzHdCO4ngVIveL
         IRdcFPQKUeqQxtIeasl8T2kSDwSpWIkr2WS7pRYvZ7A50l78+Xxt2ggdmselPng3sn7D
         tJ/Da0SopU0QLQO5WvqPxDiNqkXT+YmuLJFBDe6KHGmq7J3cu4AhtWws8XRcbTVKS2hS
         7jiHJpIzWL1wNRf4hrhyjUhBsgcg1txL+nPKk0JSJzHjK0i/QctQwT1GjHFrmJ4He6wU
         LM3bjSTYCmO6g/OSlkExe4xICtneq030xJXSFkLRWajXHcu4nELp/58vyAhg/iCd6Gtw
         Y5gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-subscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:subject:to:from
         :mime-version:list-unsubscribe:date:message-id:sender:dkim-signature
         :dkim-signature;
        bh=5L7BqPNwubUgkhX46oEO0n7EW3yYunfL4ZxboPXeybg=;
        b=hcFX84iq3GA3qGmGtCbBJz1XnZwenXN+RuU3bZxEe31MMa4RTiwTky/IH1wlpppNeC
         1w4iC6aqQMKdBi6/Hyfa1TgoINPmHVUSR4fV2CfO0O0OaaA/tIEMI3obhJlMtCkkiePx
         T5Zkx38oCeGsm6l09lZH2VHpbCU4oYSUtIPPmhoNWiSWBlIhREFdA8QiU1h9IsOy3NBA
         6q6AliLc0Z6daTz/CG9M7LrOgRKv0bp9Shn/R//7NLJUx4A0IJQMkhNMIA7RxXeJf6bq
         s7fNgOTSKpXBSfe9c18hayFZ2UDCNBHpnXj3OlUgPWUx8Xc3z7i07bOazjwOuGlJL7GD
         bCDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fw0FVSTe;
       spf=pass (google.com: domain of thuynguyen3402@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=thuynguyen3402@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:list-unsubscribe:mime-version:from:to
         :subject:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe;
        bh=5L7BqPNwubUgkhX46oEO0n7EW3yYunfL4ZxboPXeybg=;
        b=Tf4qP8tDW09Dtcp3qJ+drfpbt+GTLq8Ptesai0FPRDbAVFbEfMLjyQlKUS9/K0X9sF
         Ma5r0raImBVqXFzVb0XpFzcH65Q42gXPuFmloaJ0tjsUfLmwewo+Hj0qhZSX/7G/AkHn
         c7WuBqvOLDDIu2Mwl0fBrdPJr1jRA95g5kY9HVM5x9ekZLm/FnFHEs2azvu5oLfQ8pbJ
         wgFM3QTer+yIj0tqQMjtCsaRohkGFvqaJ054Cw70UrDo1FATJBlrhooHa25pYG12MCbw
         vPnrAcBm0D0EtH6pS6CNGI5xQc2L+s1LTab/IEn6i0EgL1LjGaaIw/j9487IC00ps896
         nHGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:list-unsubscribe:mime-version:from:to:subject
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe;
        bh=5L7BqPNwubUgkhX46oEO0n7EW3yYunfL4ZxboPXeybg=;
        b=D8dlp5ZxAnPogZhMpIEbwdelpSj6v4H54nkoxmdS3jI2etznMA4/XG57UgGTI6uEEq
         A5xtHvQKPfE5z6uA00jfS6vj7VNBzUJuF545207ZCL3onwKa+2DZ4Z85lm02aEpYYbP7
         uTckYhdTnIUvxynMnStSidNuZncQ69Uaua13f//e6y1CIM3nWXle/B2bKUVhxzCg53gF
         /ORsjtoQbEa8MUOSQyM7sYUDbu0HRZ6pUYkdHSPuNYZn5w2fXIz2fhs5YuLiAJdliSyR
         fKkVUftwskPn9pyUXC06wstVK/3BLzTFcOjrMyepo54Z4RH/Rg0GXm/ts4Xm3PO0nEyT
         E82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:list-unsubscribe
         :mime-version:from:to:subject:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe;
        bh=5L7BqPNwubUgkhX46oEO0n7EW3yYunfL4ZxboPXeybg=;
        b=X/64uatDcM8jj5YZcXoIeFpKtENfyqQqow8rEnbAq6H4ovq86BiiqQgHB81vGPilwd
         0efw3pU7HokSaSwHu/eN26AkpqLcsEPT6xrMj2l6yYyn+L7MQI8pE7PVPOnhRHdZCOHU
         pVQeDJu4d+XbHurmRWYnifo/L+LBMgTsUqsZhQw6DFvJR13XjpHxVFjSLxHLgn1OCb66
         x+LZehYA3SPTSCqZHUAcuTfRQtC4/262IjdVl2KmUlEpiyt5lSguH5Sq6wXHBcXenSEw
         TaV3TLLn2eghf+0iyP1mwr9KcbxEfWCMRz/BIEufQg/mEtB0jhiKbz2LvbunNUiufNcn
         Tb5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301UgEMi/nA9o+SBO+nczvy5OF+oZLG+tShFjfhx/g27j7BqCA6
	C5ZGDRAcbwq5v9Nlgb32QTE=
X-Google-Smtp-Source: ABdhPJzfK3MUbtxMMDh87Fz9JK/pKNz5ds2Q0TMiPRAAIpVR0UApoJFXP7reFuKE5D+voI5ZV44cpw==
X-Received: by 2002:a25:a527:: with SMTP id h36mr78798755ybi.400.1609383501153;
        Wed, 30 Dec 2020 18:58:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77cc:: with SMTP id s195ls32059321ybc.2.gmail; Wed, 30
 Dec 2020 18:58:20 -0800 (PST)
X-Received: by 2002:a25:d60a:: with SMTP id n10mr5018080ybg.457.1609383500736;
        Wed, 30 Dec 2020 18:58:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609383500; cv=none;
        d=google.com; s=arc-20160816;
        b=mDgEDveGn3c4qQ0o5fv3MrxZMdq+Q88uKJXEVsFzjJHPsD+huxoaYEN+Wd7/Mt2NNY
         ogoq9iCpVhbZvuC3eOhLfAAHou7akGmo7zOBLAh3SCVqT6U5ZB1AbvSi5j6kx87sc3VN
         XBk9DqrB36lwXFoCMmzLlW+PTdLGMsxnxJy6Fdf9SRqBZUiNQ4aXQ14OH6KyrptY59ce
         NInxUct5tL80s+2pYQDv8tMbZ/gg9rcSHTbApLMxbEkMNt4ofEQ8X7bdQKMzwdP2+Avb
         tblNJEf3GKtKAM0J4G/bbCWqLIWkppnqhM/OxF6HgBZYa/54B3dQgadWrtDlVeG+dYBQ
         qIbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:subject:to:from:mime-version
         :list-unsubscribe:date:message-id:dkim-signature;
        bh=LnrY4qdyd+AE9WGYjIHSVTl5kOxcPsmks8upSFIRmjU=;
        b=lPj4NST+PS9gual/yemEtW320u1ARxAAVBeimutz58kdJhg2dlGd75SjgflUxtLezF
         WyNpRMdUyVm2/PkDqxCN3f+NYwSeuf0f4DKx+lSMPr0EtB7H2aeovEGmwk3e4Nk+JQLh
         TkIg/BckdD+IXxtnII4djwxj1U/KeTXp7A7R1oXbgdMtKMlN9GXSlP7nOQR2R4kpL6yZ
         krJjLp840Dla5VkriKPuoUkwEkvoxu0X8STKty27hIYxTQMbUet+uvdKOjg8htn4zxGh
         7NupkZFmRmtTQZaZ//rnfWnEHcM/sS/DVRTvngeXRZy5qanjnhpNCh9ck6zJa2USnnRX
         3SWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fw0FVSTe;
       spf=pass (google.com: domain of thuynguyen3402@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=thuynguyen3402@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id e10si3961018ybp.4.2020.12.30.18.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 18:58:20 -0800 (PST)
Received-SPF: pass (google.com: domain of thuynguyen3402@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id iq13so4304446pjb.3
        for <clang-built-linux@googlegroups.com>; Wed, 30 Dec 2020 18:58:20 -0800 (PST)
X-Received: by 2002:a17:90a:a48c:: with SMTP id z12mr11086420pjp.58.1609383499799;
        Wed, 30 Dec 2020 18:58:19 -0800 (PST)
Received: from DESKTOP-DI4367S ([27.3.184.35])
        by smtp.gmail.com with ESMTPSA id e5sm8173861pjs.0.2020.12.30.18.58.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 30 Dec 2020 18:58:19 -0800 (PST)
Message-ID: <5fed3e4b.1c69fb81.56424.18dd@mx.google.com>
Date: Wed, 30 Dec 2020 18:58:19 -0800 (PST)
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>
MIME-Version: 1.0
From: "Latonya" <thuynguyen3402@gmail.com>
To: clang-built-linux@googlegroups.com
Subject: =?utf-8?B?Y2xhbmctYnVpbHQtbGludXg/4oCc5bC45L2T5bGV4oCd5oGQ?=
 =?utf-8?B?5oCW5Y+v55aRIOW9k+WPl+WItuatoiFGcm9tIExhdG9ueWEu?=
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: thuynguyen3402@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fw0FVSTe;       spf=pass
 (google.com: domain of thuynguyen3402@gmail.com designates
 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=thuynguyen3402@gmail.com;
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

<CENTER>
<p><div style=3D"font-size: 27px; font-family: verdana, arial, helvetica, s=
ans-serif; background-color: rgb(255, 255, 255)"><font color=3D"#0000cc"><a=
 href=3D"http://theuocxua.com/getdocuments/YvnbAcz9wqlbiUVpW2AAAAPke4HnhV9b=
DBdz3NlHJVVx8LUJV16UqhfslCXg5CROM5vUGAAAAJqTqdku4O4c349HpdIA=3D=3D/p5BBBBF1=
OkdauzORCwklN2ong=3D=3D/clang-built-linux?=E2=80=9C=E5=B0=B8=E4=BD=93=E5=B1=
=95=E2=80=9D=E6=81=90=E6=80=96=E5=8F=AF=E7=96=91 =E5=BD=93=E5=8F=97=E5=88=
=B6=E6=AD=A2!From Latonya." target=3D"_blank" rel=3D"noreferrer">The truth.=
info</a></font></div>
<div>
<img src=3D"http://theuocxua.com/getdocuments/YvnbAcz9wqlbiUVpW2AAAAPke4Hnh=
V9bDBdz3NlHJVVx8L5hiuw6j19Ag4RF8JaqPRkEXAOccctXPbaFAbX22Hdw2UtHDEjSwQpogOPN=
P74KoQ=3D/2klNdCRm2Tlt7oUCKopYKhyNHBNgfZrAAAACuWobpoBG785SgJvEG1vAqMwRHTIxb=
tj/clang-built-linux?=E2=80=9C=E5=B0=B8=E4=BD=93=E5=B1=95=E2=80=9D=E6=81=90=
=E6=80=96=E5=8F=AF=E7=96=91 =E5=BD=93=E5=8F=97=E5=88=B6=E6=AD=A2!From Laton=
ya.">
<img src=3D"http://theuocxua.com/getdocuments/YvnbAcz9wqlbiUVpW2AAAAPke4Hnh=
V9bDBdz3NlHJVVx8LUJV16UqhfslCXg5CROM5vUGAAAAJqTqdku4O4c349HpdIA=3D=3D/oKPxO=
sYEvP2XWNIIKdwIhimBB5tL0vhu8XhX4ffY0Zfyb5x3GtQQZTnHQreCP9K4/clang-built-lin=
ux?=E2=80=9C=E5=B0=B8=E4=BD=93=E5=B1=95=E2=80=9D=E6=81=90=E6=80=96=E5=8F=AF=
=E7=96=91 =E5=BD=93=E5=8F=97=E5=88=B6=E6=AD=A2!From Latonya.">
<img src=3D"http://theuocxua.com/getdocuments/YvnbAcz9wqlbiUVpW2AAAAPke4Hnh=
V9bDBdz3NlHJVVx8LUJV16UqhfslCXg5CROM5vUGAAAAJqTqdku4O4c349HpdIA=3D=3D/keB5Z=
mW9Ml3sZZYeP8F4eXkBx7S4DrFvNuGyFXlV1tBBBBfkftkAAAAegMTU8HVvcuuY2O3AAAAPc5LN=
meTKkDoY4lEcaiKlHf3TBBBBzrkXfjpxib8kRBBBBc=3D/clang-built-linux?=E2=80=9C=
=E5=B0=B8=E4=BD=93=E5=B1=95=E2=80=9D=E6=81=90=E6=80=96=E5=8F=AF=E7=96=91 =
=E5=BD=93=E5=8F=97=E5=88=B6=E6=AD=A2!From Latonya.">
<img src=3D"http://theuocxua.com/getdocuments/YvnbAcz9wqlbiUVpW2AAAAPke4Hnh=
V9bDBdz3NlHJVVx8LUJV16UqhfslCXg5CROM5vUGAAAAJqTqdku4O4c349HpdIA=3D=3D/keB5Z=
mW9Ml3sZZYeP8F4eXkBx7S4DrFvNuGyFXlV1t9yA3uXuAAAAfbHAAAAC97ibza0WDCxMt1BBBBl=
FmiEO7ODzgaKXx8BBBB9Jgo89vBBBBBBBBNTJWJPx6FFc=3D/clang-built-linux?=E2=80=
=9C=E5=B0=B8=E4=BD=93=E5=B1=95=E2=80=9D=E6=81=90=E6=80=96=E5=8F=AF=E7=96=91=
 =E5=BD=93=E5=8F=97=E5=88=B6=E6=AD=A2!From Latonya.">
<img src=3D"http://theuocxua.com/getdocuments/YvnbAcz9wqlbiUVpW2AAAAPke4Hnh=
V9bDBdz3NlHJVVx8LUJV16UqhfslCXg5CROM5vUGAAAAJqTqdku4O4c349HpdIA=3D=3D/keB5Z=
mW9Ml3sZZYeP8F4eXkBx7S4DrFvNuGyFXlV1tAAAA4if7SVnilt5UBBBBzUfCXBBBB6BBBBsBmw=
Suq2gBRfsC1cn0XmgnY0kJMrgYoLbuu3JzmrSnY=3D/clang-built-linux?=E2=80=9C=E5=
=B0=B8=E4=BD=93=E5=B1=95=E2=80=9D=E6=81=90=E6=80=96=E5=8F=AF=E7=96=91 =E5=
=BD=93=E5=8F=97=E5=88=B6=E6=AD=A2!From Latonya.">
<div>
<em>*=E5=85=B6=E4=BB=96=E6=96=87=E4=BB=B6:</em><br />
<em>https://www.mediafire.com/folder/inj2vedwe7cj3</em><br />
<em>http://coduyen.info/mh/00/9&pi_n.g.pdf</em><br />

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/5fed3e4b.1c69fb81.56424.18dd%40mx.google.com?u=
tm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/cl=
ang-built-linux/5fed3e4b.1c69fb81.56424.18dd%40mx.google.com</a>.<br />
