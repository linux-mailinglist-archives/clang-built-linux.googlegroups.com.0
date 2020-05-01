Return-Path: <clang-built-linux+bncBAABBGPYWD2QKGQEUSUICVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EB91C1913
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 17:11:22 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id q5sf2801321wmc.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 08:11:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588345881; cv=pass;
        d=google.com; s=arc-20160816;
        b=lHfxdB3kszU84vBrPOiSK+8NdJnYQ1RGPYL+LgSgo6lPS9Ao2ZiAaD+q3RMpLkKZCq
         V/lJwp21+e1kqst7r09mmIAfXc4Z+H4/QqOgdn0PTY8R8QXvQr/nkTHtmndOyyQLb70/
         8mxJ74gp5thRjnny3IwTXiD3kGpVmq9QfYM95xwmruMFqzEaQBLviWsehxewhkdN7VQD
         fyZui7OqJz35avNkJmMWvKfTisyvqC+Bu/f7vBOBXbxpM8FLA/OQi8/7k+QvBzVuh/6j
         CxqeT0vVDkuK5g9KylhvaIR532KQODvgHXTM6q0j+j4FtGF5u6lWPnTdFUsbkm6YpICa
         OvZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:content-transfer-encoding
         :mime-version:subject:from:references:in-reply-to:message-id:date
         :sender:dkim-signature;
        bh=lbwCQgknm8KfvlschE1venSLK08mrDVmCpXdXaCXSoY=;
        b=A1z1bAr3COaTh1hJBPR7B7du9c0MwdG2UN5n/8JE4woKd90JPeseanPmYWexpBLt8X
         SCjpx6n/ijclyojRr4S2X2B3/Z5sF1QLK3it2dvf54DXTnAUV7qBOxvIMn2KEwF/Xo22
         elbwdCQEYeBl60nIlkS66EBWn6b34XpAyLbR6m/qhxcBh8dul6te894aUNSziiVDaUYn
         b8EwojRH0JpLV1Oi0IKc5DnjQgvULniWd51Xf5Vsb5gJLQLrM799W/s5GXCcGi8fj8ul
         XS14ESKzdR5xOG5BZX+bOmR8Ap6Wia4/zVmVmA0ZRK4vSB02Hphrhxf0JErgzm+J752U
         IBrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=jTlDB5sa;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:in-reply-to:references:from:subject
         :mime-version:content-transfer-encoding:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lbwCQgknm8KfvlschE1venSLK08mrDVmCpXdXaCXSoY=;
        b=IM1fbuf2N4317cEZgRP+FcmFALtl0T/XPSxJ9NJ8IFMD863kxaBmJF6WfIYrGMTbmH
         3V7vito5WrkKUhxMVVmq1Pp3ctQyG7Xgve/Obl6vRk7+2Fo8aKdooVB9jxIXrArCVdwU
         /yVwOvYJq4Ph5EIEUAacPFBOxeIfDxN2pCGa3PX7mNox1XPUi9kDQ1X4lpiHHQPEXcp7
         5g2gksOydCDF9M/5pVOPpeE1bf2y3IspcS7K96HKQivniwMq6IgIfBqVqaUQh7YS8+p5
         e+JuEf4Hpl8LldhjD8jL+lffZEk0DsRyu47mSivA5KDE9xYlo9VVz/BqgP6SImT0oLGS
         101g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:in-reply-to:references
         :from:subject:mime-version:content-transfer-encoding:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lbwCQgknm8KfvlschE1venSLK08mrDVmCpXdXaCXSoY=;
        b=OszhxdyXxbMIAPSb5e7DNtsbjAnwh5FW0+AZVPLmb2pEiUGNYfdCZAaAujhvaMdnXK
         52boOayuAk9NE0B+sMIOqRcN4qTtt3W/VmP/1g4lSfJ5A99XOJOn2sueWN4UWGS2UUpR
         +WSeIf3rlAHWKk57QoBV/3p4O0TEJeyxP8WF0wHEQPZDITABBw5a57g2a4ytr9rh2eXo
         xbqsBodlgCjErfjL1bS0cZzbPeKHxsXGfCI9J47oT1LvwbtkLDsI9aFB/BTDCHtAkn+E
         Ia8gVv846rstr96MRFbDI5n2yVIPS+72FjwchzB4Eys2VRAuCt6TDqsnOH1bBTKkElNH
         JpQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub1YH1B1aSvKcfZq7pXudlQ09varMDgCFFIYDs0bWqh/59tKfmR
	0P6pubx60/+pTtHh1H3gR6k=
X-Google-Smtp-Source: APiQypIvRxxVEYX/gCaAbEpFNl30BhpF3IC/YcQj2YRj7308QvpebTQZbCO1KYCTQWGQWmTeWjXT4g==
X-Received: by 2002:a5d:6148:: with SMTP id y8mr4534550wrt.236.1588345881231;
        Fri, 01 May 2020 08:11:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:438c:: with SMTP id i12ls5726533wrq.6.gmail; Fri, 01 May
 2020 08:11:20 -0700 (PDT)
X-Received: by 2002:a05:6000:1203:: with SMTP id e3mr5004554wrx.229.1588345880855;
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588345880; cv=none;
        d=google.com; s=arc-20160816;
        b=1CqoWOLPmU7bI8oMtUF9atEQxIrJZVyqul1YDTXKPslwZJXuqOBDuSkjzBRq8RWMv3
         3ZftjaGaumDrgkOfHJnPM2kv64zVRfgmbViBnShSLzqg5Qk6O/ByTpJdotFvUCGREgCz
         XSyjh//7TXQZXWrB46z9NhxxPPhssrQkTBy6SJJfOzuxTEe6U237JNJ28fwGUNhWxaGv
         bdybSnSf5T1QnhcqjgGCsDQPNm2ByUinflP154iew1CPTBxjcPqLGhA+2BLILcEZMfYH
         PSFb507ojNg/t1M5QZ7q7/QZL16h2vcmmnlvfWCYLx1bBzymPQaatAYhV6FmH1EDZoj5
         1GYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:content-transfer-encoding:mime-version:subject:from
         :references:in-reply-to:message-id:date:dkim-signature;
        bh=/JaSQN4kTBQWxlfOFxS+ffproLsGznlojxaDYNTeUqk=;
        b=mQbypCDd2eurjkkbzFHEetBJEatJWCF1dix0SeaEXQtW7i2/wImeWy42pE+9rQ6OG/
         bUNrSkhSetwb1u5wX+Tll7H9fhfe73ZsLKyOpSgE2wYoD4xQF3agWv6N3xXptARU+gsj
         6y1LU3w9nVHiE7vCLjQvzirWJ3SbZ89cysqqDQjBJfY5RXMuxJwg6A/30LNQfWk5KlfK
         JBcbje0Ci/yv/vk7ww9spMqfxUt5Xgv9FkftELVyAyKpM88gdJEPkm08i/qfIDchu/9X
         i+i2zgwAlIgtQJFCUJZng9zSyd0AiJaba49itRDhe6CSOIpliho98J6lWYzteAQuEYYP
         Du5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=jTlDB5sa;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id d10si172319wru.0.2020.05.01.08.11.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 08:11:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 49DG140HCSzc6;
	Fri,  1 May 2020 17:11:20 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Fri, 01 May 2020 17:11:19 +0200
Message-Id: <25387c38a2454bef6ddec08ea322dd0d700f249c.1588345420.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v4 4/4] power: supply: core: document measurement points
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=jTlDB5sa;       spf=pass
 (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as
 permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
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

Document used prefixes for input/output/storage voltages and currents.

Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
---
 Documentation/power/power_supply_class.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/power/power_supply_class.rst b/Documentation/pow=
er/power_supply_class.rst
index 7b8c42f8b1de..c41b25aaa755 100644
--- a/Documentation/power/power_supply_class.rst
+++ b/Documentation/power/power_supply_class.rst
@@ -28,6 +28,12 @@ indication (including whether to use it at all) are full=
y controllable by
 user and/or specific machine defaults, per design principles of LED
 framework).
=20
+There are three defined points of measurement for the benefit of mobile an=
d
+UPS-like power supplies: INPUT (external power source), OUTPUT (power outp=
ut
+from the module), and unmarked (power flowing to/from a storage element,
+eg. battery). Battery is viewed as a power source, so current flowing to
+the battery (charging it) is shown negative.
+
=20
 Attributes/properties
 ~~~~~~~~~~~~~~~~~~~~~
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/25387c38a2454bef6ddec08ea322dd0d700f249c.1588345420.git.m=
irq-linux%40rere.qmqm.pl.
