Return-Path: <clang-built-linux+bncBCLZZRGJRYBBBIFOXGNAMGQEQJNUG4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2696025D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Oct 2022 09:34:58 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id eb28-20020a056a004c9c00b0056326adf7a5sf7353450pfb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Oct 2022 00:34:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1666078497; cv=pass;
        d=google.com; s=arc-20160816;
        b=MBqicayea97kiVbSQ1/FNvbELR2kkEo3P36Frsvy+yzLVZGNwGsU5fC90NjoAuvOPG
         iSKmPs14c8p+bEXRLmdmgyz92HW4MS9SM3MfTXAHD0hcd/RKUZNep8GFMoeu/bCBFqyf
         /g2EpCzXBYLsNI0RqWHPhW14gPK720KngBX+2OfzUKhCyTK10FtPVyfYUKNNrIHn+ZPK
         PTqPKARZiT20WUsRh4jvmiEkiNIQEgi60F+9ZdC5/UI664c4vyL4kBlk56FKiBkvx8eG
         0BHGFt2kA8oc+GeWWlQyNzZHmntrQkP19WlXYgo5OWzm6s6ms1OdKLOoNbr1JZz/rxYj
         jqrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:to:from:sender:dkim-signature;
        bh=zmpvjq8LDg7IinQDNaQB98NjuYH6B8dL/PIOGJ2N6xU=;
        b=fSPkOH+DQwhuiA7rK/waaTLwSCXt7ozNj4rNfLJf51p6eh08HFYvX+bu5RwymzkCMj
         nlQKXH2s4ePo7gVILGTC/n9lf31JGXSEH1+OZAZyHuUyV/0TmyxFzkRgXTj5b377XG/K
         Z0KKNhBZ4fOI+lOQH+qYYuQJenAkhnK2SNRbDmXjRHan9pr5UkskiJ4Zq7j43d9DAtWJ
         siUVQaveCZX8vbqbfztE6h1Kfj/fPr1l0i1Z9LN0VtwG5etbC82HZoLdv8GfRZPAc0Da
         92yH4DCVZS3yjO0gIqpkO5cui3kKOwVEeK3Cc+yIBHQlcONAxsfzLHHR0gv0GttXnmWU
         DXWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of susan@twmillenium.com designates 123.58.177.144 as permitted sender) smtp.mailfrom=susan@twmillenium.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=twmillenium.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:date:message-id:subject:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zmpvjq8LDg7IinQDNaQB98NjuYH6B8dL/PIOGJ2N6xU=;
        b=nSXQkamWyekwHstkpRjQrrOKTfg45KPvNwNf1Jlggyh0Ggun6IyozveLO2TSVcUiow
         gd1EnqiTyLfvVhUvZSvyS5ACMRC4p7U6jCScJY1birDfyMdkr3l++ut6O5I/jeb1oCp1
         RzN1vWOnxsdhk2dVGvvlFbsE4AHJ87I44VbyrFfjq+ejUlQpN6QY69YceGhjSQu7KiAl
         nb2qE2j3ozHB6D0r9br7HV/h38A0Lya4cTkGWKDD4u+E4aOjWkMT0TaVvrAd+0xRfdUq
         OLzVMmmJEAo+Q7MrV0p3S3/4nMaJWVhZe/ShBt9DhYnmmNjCeBRarb6n4UGebNafUFbt
         i4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :date:message-id:subject:to:from:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zmpvjq8LDg7IinQDNaQB98NjuYH6B8dL/PIOGJ2N6xU=;
        b=gUzrYIYbfwxSKVtFN/EN4DuBksaM+bV40ogKJ772x2tNGuNlUctb50cktq213hOyRo
         HMCOsH3FM6MsQGsN+ZIgTrY9qDVL79H0LprLK8Aa9oAyPqXaz60eR8WGwdf+f1l1yCTL
         dNQ/8E40ewYrsglMljTtFYOHAIvgxnSdZdSTvJa5nQhAhFKM5kmoZc05f3C1CXgQHTkY
         ZyvX6ThxY1RL+wiNhrm5R7M4xMjVW4lXOZYaVeMep1iS7mJ8hq5ABBU9yywmaPTr7KNE
         3r17IawC/A+3zjWhc8bAetImDQCEhDaon9NZq5qZrUS0AP2H2OUImBR9VJf78LQIFhlD
         kqrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACrzQf36A7wUSvlTTOTfhbrVxkzDmD0O1XfsuvntEDlKH0U/RUkDhRLY
	oX/M7iFvT3XgmJhGM9pHZd8=
X-Google-Smtp-Source: AMsMyM5DMv+I9AFK8KFBDs2bpFqG1FI9s/keXxVxVOZCKlIJzKiP46gTZ3aGg/ytu1kzYbgyXqDiMQ==
X-Received: by 2002:a17:90b:4b46:b0:20a:e906:426d with SMTP id mi6-20020a17090b4b4600b0020ae906426dmr2220857pjb.48.1666078496678;
        Tue, 18 Oct 2022 00:34:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:3315:b0:557:cfb6:bcec with SMTP id
 cq21-20020a056a00331500b00557cfb6bcecls7150914pfb.9.-pod-prod-gmail; Tue, 18
 Oct 2022 00:34:56 -0700 (PDT)
X-Received: by 2002:a65:4d46:0:b0:43b:e00f:8663 with SMTP id j6-20020a654d46000000b0043be00f8663mr1552191pgt.147.1666078495954;
        Tue, 18 Oct 2022 00:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1666078495; cv=none;
        d=google.com; s=arc-20160816;
        b=wHAUHws2V0iDl2STWSX055fqSC0lI8r3R+eZcBGTHoFmPkxK0pkSs/RqK8fPxGDSi0
         IZDZAgmkXnP7bYWeVLfu6xDY6lMldZbiZBT9+krkPo4rHSlznUhNqj6ZcbV+bwyinNZc
         MUIcOQURiecI+OyoMElcukaZJ0EYaLhdY1pq+/lPPZysOL9lwSribn6HE0fQt5lbzUIL
         63t9lMjELoqz+SITakyJ4hQc1xS9Oaqt0qMtoVSuOjpq/wW9hWZcTItAts3Hm5WtzbVf
         GscfF0I4i1Ps4D4oLKLImorO5Gq0ImRAx2z60lkBkmOXgrZqaOwgPvZPuCZokYwK8zKD
         1VOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:message-id:subject:to:from;
        bh=JYzi1CXgELE/iG85fNENuPqGDCKYoipCGlIKIqGMN7E=;
        b=E0rbVcwWJ7Tg4d4kfrJcnb01KRd9mSyTcndF0UKG8jqJTJxoS2FH487i7WRQV1je2d
         1kF2ktA1feRclGcofo7w+MMbnKxZLnAxqQ53+Oo0A/ig+O+g3lezUVc4+GI1oDi2f8IA
         6y69BSi6XQJYR28W3z8dX9oczFn9gWp7rpKkRvhdP0Ezfp9qJw0yjO6Tvnl88peLv5Uz
         RcSoqles2bb7npD9m2BEmpBLKEvGrzPRN0VfJEhlUU/38nSWVj99SS6s3b8Qkpufl/rh
         1dkuEllvtRpKVXCY4VohuSeVlCCIF/eHtWc/Q2Tg5KF5WolRbzbCznvrx0v5mkHRyali
         X6Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of susan@twmillenium.com designates 123.58.177.144 as permitted sender) smtp.mailfrom=susan@twmillenium.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=twmillenium.com
Received: from mail-177144.yeah.net (mail-177144.yeah.net. [123.58.177.144])
        by gmr-mx.google.com with ESMTPS id d10-20020a63734a000000b0043238c0bd99si453121pgn.4.2022.10.18.00.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2022 00:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of susan@twmillenium.com designates 123.58.177.144 as permitted sender) client-ip=123.58.177.144;
Received: from LAPTOP-JRQTKHTP (unknown [1.87.189.82])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id DBEEA280D40
	for <clang-built-linux@googlegroups.com>; Tue, 18 Oct 2022 15:34:53 +0800 (CST)
From: "susan" <susan@twmillenium.com>
To: "clang-built-linux" <clang-built-linux@googlegroups.com>
Subject: Cosmetics raw materials in China
Message-ID: <d7a75b5202162a4da12bafc26e10ddd8@192.168.2.5>
Date: Tue, 18 Oct 2022 15:34:18 +0800
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_19501A4E.63F4D74D"
X-Priority: 3
X-HM-Spam-Status: e1kfGhgUHx5ZQUhXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGBodVk9PSEtITh9CTUlNS1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUpVQ0xVSkNCVUNJWVdZFhoPEhUdFFlBWU9LSFVKSktIQ0lVT1VLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NE06Ohw5Nj0dSCoYLzMRGTYr
	EFYaC1ZVSlVKTU1NS0xDT0JPSE9CVTMWGhIXVQgOCBoVOw8MFhIXFx4VEg4WVRgUFkVZV1kSC1lB
	WUpVQ0xVSkNCVUNJWVdZCAFZQUpOT0I3Bg++
X-HM-Tid: 0a83ea044cf22eb1kusndbeea280d40
X-Original-Sender: susan@twmillenium.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of susan@twmillenium.com designates 123.58.177.144 as
 permitted sender) smtp.mailfrom=susan@twmillenium.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=twmillenium.com
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

This is a multi-part message in MIME format.

------=_NextPart_000_0001_19501A4E.63F4D74D
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d7a75b5202162a4da12bafc26e10ddd8%40192.168.2.5.

------=_NextPart_000_0001_19501A4E.63F4D74D
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<BODY>
<P>Hello Friend,</P>
<P>We are main supplier of Cosmetics raw materials in China. such as herbal=
 extract ingredients, vitamins, amino acid......</P>
<P>Please feel free to contact us.</P>
<P>Best regards</P>
<P>Sophia</P>
<P>WhatsApp: +8615991792014</P>
<P>Email: info@cmgapi.com</P></BODY></HTML>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/d7a75b5202162a4da12bafc26e10ddd8%40192.168.2.5=
?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/=
clang-built-linux/d7a75b5202162a4da12bafc26e10ddd8%40192.168.2.5</a>.<br />

------=_NextPart_000_0001_19501A4E.63F4D74D--

