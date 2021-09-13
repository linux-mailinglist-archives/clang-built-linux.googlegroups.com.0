Return-Path: <clang-built-linux+bncBDTIDSUUSAPRBLOJ7OEQMGQETEHGIKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E814083DE
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 07:42:06 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id j4-20020ad454c4000000b0037a900dda7asf851898qvx.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Sep 2021 22:42:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631511725; cv=pass;
        d=google.com; s=arc-20160816;
        b=xknTLvZHFns0FE7oD69g/NDLPpQNWRsTOCBtAzDDDPCbjS7Cuuakt7xP8nDsmXeapI
         wLckA/cmgGQWk1Jg3s7d9QR0mQE138PYP2llxAMpt233Nt/vs8nQ6EXYnOYiETqrYPHl
         E1p7nrxeN8GRH275d/WhTNLa3ZpGK5B93q0LGrBZV2N3t0g7/owFXwqJF6qjiO2QNVQ5
         9w9AgCRkFJOCHKeEu5pJHxYxkurSmmW6/VyNtq3yA/R53SLQ0Rb91j9QqhxFkKhEWrFB
         jECPBW122rKb6b+BMiXPNY9vOWRLNK27QYtg1WQCD/82DqaYk5Q45VenLmasYDIW6oAf
         JhcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=/+UfaVUhUpTeAU7bLz1uJ9S+u5ISs5E4mrWSukITFl4=;
        b=rjafpETH0vXdrQ+akEGiZ4BU7QA4SjzRc9jGIEaQlXtDWgYTNg4xTlGKR3Iq62tNUf
         ZmscMsJ7VJPktv6PXgTK41otSt9Z4T81UjUICnlnVbhr8/0UoNhF1WcXt69o6y1W0Ik7
         1hI1G4D/rOcShAwvVPB5WWWy/B0pZgedYi60j7CX+MtAm1dh4g6Jfqm5CxDkYI3l15tj
         OJ4MKSMUUcEoP6QXAiwtTOBEGioVGiE1J23cvFwgPBwyhdUY5x7KgREbhxCGX2frvk40
         vJxisqWpYJe3aOSo/7tJTky466XpVbF0JdJB8fmWpFfiG1sAeZGRxfxxFIrK+mXSURA0
         zokQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VdAiHfBf;
       spf=pass (google.com: domain of xinchao.zhao.kernelz@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=xinchao.zhao.kernelz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/+UfaVUhUpTeAU7bLz1uJ9S+u5ISs5E4mrWSukITFl4=;
        b=juhGp+28kJdai9/V2cJon43ZlD6YhIwqnLg0FCvxvSlGvvt7rUSw7J5ATvxtBMDJ3t
         exBlWx5Nryy5Gy+hEhzBxpLlXEF0n27OVf4+O8XkvNyhG4cKa8kIEAH49GNECdfPIoZ4
         RQg3gRGQVOAjjJ3NqdgBGHMQO73SC5lqq7zCEdulE99YBvqqtl01LPgNJE6/D144XtRi
         wfAtT0SkiNlftJ4tXBSxQ7IL49Soq0V9xHjBD6AQUSvggGcHw5s2dOiMf+Coo7XEfQdW
         asEPAEXpucZVn2/CfaBaecJTSxf80XcL67tmnqI3V9K71MfVLXPMlnIPD0dL47L/XiUL
         944g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/+UfaVUhUpTeAU7bLz1uJ9S+u5ISs5E4mrWSukITFl4=;
        b=Cw+KzIWw3N4FU5/EkVjlkyFKmOQ4BjJK1sNnn03tsV10dbCi/hWJTiVIqk+6+4p2PD
         1Ryuf0KPcEc0PxrxMOc1AnL2rPKFHPIQVBeQIITAVadhtuM7ph1cC9xETDxUpSvXHp98
         RKUi7qv5K3dMMFKLLCH/BMA8JMuHlHkKhQUU2OQJcpHy9pgqJU7Kktcr2dHn7v6I+cx6
         WPAYVSivjT7BwKd/enQiFWGvFKlAXCHOC1U6Roppms9z6mJoTNDdia3mjcq7Wk+ZEBZo
         jNvIIQueMNnCCcFVqIrBGrpYqyF2Hplr8eUc9WF3M2yoczyP66HTQ7GwIZ5LRdXq1L4x
         1reg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/+UfaVUhUpTeAU7bLz1uJ9S+u5ISs5E4mrWSukITFl4=;
        b=bac1ix7z4d2FojBq5CsajKZm+IxL1znxV+2He7t5XgoDIyYtfzGp+8x//6jaNUo61S
         mX55Qyqd0ZmDJjcTt5yxR6Y02g8UiDs91XBXyzUjWiG+zjw5+ESeU5C5XZz4HXEOnJ+7
         gy7GBL/DK2iHvHB8Fy7eS5mfIWLZDNgulzEQEXkLIY/imv1I9FJ7Zv0/2RF1RwBuoZC2
         lBz/Xtgo12j/mkyELjHQUikTVakPc5KIFzkLwxA1TA47UzzRC8xUeHLKatCo2RvDcgWZ
         ZcMhvUgDJD3OOohyO065LOpmBXJ0DM2495rP6VyqUU2r0zVfiC00oPFMqQ0qxFzECiWy
         Kw7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XyD74lTi1wR6w/jMu6jUKQ1qpb7tXqQQn5C6XhEwCYaNmNox+
	GoS0rNWLfRrSs5PD2OM+6hI=
X-Google-Smtp-Source: ABdhPJyPRmW8wVGQJ+oj2qnSuWS4BsJqc64HEgArDDV0v25rxAQWEj9mMb200LYYHK23kWuadibvCA==
X-Received: by 2002:a37:591:: with SMTP id 139mr8516536qkf.41.1631511725507;
        Sun, 12 Sep 2021 22:42:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f90b:: with SMTP id l11ls4503407qkj.0.gmail; Sun, 12 Sep
 2021 22:42:05 -0700 (PDT)
X-Received: by 2002:a05:620a:4f5:: with SMTP id b21mr8287367qkh.323.1631511725034;
        Sun, 12 Sep 2021 22:42:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631511725; cv=none;
        d=google.com; s=arc-20160816;
        b=cngldjliOtODLnjpWtnjQmbY01Y3aXnDUHlj9zRuzLhnY6nKMd3fwIZmnEl7VQSOQU
         YH8354hCGQWKwuL5FMM/TUoOJ3yra0SzJOqJexh4qE55aYOFD8YUX/3eF8Ogmhzoyfud
         MNqEnWL/ybCL9D5immaHlcwS+dWa9tiupPh35b2FhotpjKBing/CB4n42ZoIA3K8QY3o
         Zec0eghHqVbH6SKiPJiUgDRil0gp1EBstrA35NQrGUjhT/QdMnMfceTP/DEcH0uW2qnR
         DiREoju02qul4JBcql0MeVU0uB3RrIkgkOYDeH++8ri5P36kzB8JDTEtGh+rrHmgTQ8H
         1G/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=pT2ClmnIgFfU8oVei/i/rA3p8jHSMLyWcdsRiWgh8uY=;
        b=RBEQ66DFabdFfgNLWjoWcFHij9nuG1Z0rsPDG7BzRN9dP9nhB0cXL0YMCf0Vp4jPio
         qqb8kYYSxjWyCVWDMTlGKjyH71dnUHC/FPfCx4Damay0Cm7VACNukOA3WoGmEq4WO9JV
         hwznEjF3EtgzQv/VYUxKaFNbatUj/Bcf3j5xWGO/5GNVIRuqx1y2eJpAnrD/mzEeoiX+
         P9bivjXj5OliT5YzaJkWaL7AFK5O7MrI8QFcZDwRtUbEuDgty5JdboIlPJbSRiODERqL
         icIhLPRUgEQXodJiiZE7nouKhgTAGrXbemBFSqnZ4ZvNFbEKu+yRyQaPeAo3j81UauDQ
         jXhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=VdAiHfBf;
       spf=pass (google.com: domain of xinchao.zhao.kernelz@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=xinchao.zhao.kernelz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id w4si523346qkp.5.2021.09.12.22.42.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 22:42:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of xinchao.zhao.kernelz@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id m11so10534874ioo.6
        for <clang-built-linux@googlegroups.com>; Sun, 12 Sep 2021 22:42:05 -0700 (PDT)
X-Received: by 2002:a5e:a913:: with SMTP id c19mr7473214iod.31.1631511724654;
 Sun, 12 Sep 2021 22:42:04 -0700 (PDT)
MIME-Version: 1.0
From: zhao xc <xinchao.zhao.kernelz@gmail.com>
Date: Mon, 13 Sep 2021 13:41:53 +0800
Message-ID: <CAP7CzPcLhtXDyLudfmR2pWR5fzSQ_jhJSoRheH=cytoDnb_ujg@mail.gmail.com>
Subject: 
To: tglx@linutronix.de
Cc: mingo@redhat.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, 
	nathan@kernel.org, ndesaulniers@google.com, tony.luck@intel.com, 
	linux@rasmusvillemoes.dk, mpe@ellerman.id.au, dan.j.williams@intel.com, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: multipart/mixed; boundary="000000000000cba3f405cbd9ecfd"
X-Original-Sender: xinchao.zhao.kernelz@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=VdAiHfBf;       spf=pass
 (google.com: domain of xinchao.zhao.kernelz@gmail.com designates
 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=xinchao.zhao.kernelz@gmail.com;
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

--000000000000cba3f405cbd9ecfd
Content-Type: text/plain; charset="UTF-8"

Hi maintainer:
        This is a patch fix the unused macro definition

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP7CzPcLhtXDyLudfmR2pWR5fzSQ_jhJSoRheH%3DcytoDnb_ujg%40mail.gmail.com.

--000000000000cba3f405cbd9ecfd
Content-Type: application/octet-stream; 
	name="0001-x86-uaccess-fix-the-unused-macro-definition-CONFIG_C.patch"
Content-Disposition: attachment; 
	filename="0001-x86-uaccess-fix-the-unused-macro-definition-CONFIG_C.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kti7x59h0>
X-Attachment-Id: f_kti7x59h0

RnJvbSBmM2M0ZGUxNDQzMjI2NTY1ZWFjOTM3ODg0YmU2MjBmZjM4MTEzOTdkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiB6aGFveGluY2hhbyA8d2FuZ2h1b0B1Y2FzLmNvbS5jbj4KRGF0
ZTogVGh1LCA5IFNlcCAyMDIxIDAwOjQ0OjM5IC0wNzAwClN1YmplY3Q6IFtQQVRDSF0geDg2L3Vh
Y2Nlc3M6IGZpeCB0aGUgdW51c2VkIG1hY3JvIGRlZmluaXRpb24KIENPTkZJR19DQ19BU01fR09U
T19PVVRQVVQgdGhpcyBtYWNybyBoYXMgYmVlbiByZWJwbGFjZWQgYnkKIENPTkZJR19DQ19IQVNf
QVNNX0dPVE9fT1VUUFVUCgptb2RpZnkgdGhpcyBjb21tZW50cyB0byBwcmV2ZW50IGFtYmlndWl0
eQoKU2lnbmVkLW9mZi1ieTogemhhb3hpbmNoYW8gPHdhbmdodW9AdWNhcy5jb20uY24+Ci0tLQog
YXJjaC94ODYvaW5jbHVkZS9hc20vdWFjY2Vzcy5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVk
ZS9hc20vdWFjY2Vzcy5oIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vdWFjY2Vzcy5oCmluZGV4IGM5
ZmE3YmUzZGY4Mi4uZTdmYzJjNTE1ZTA4IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9pbmNsdWRlL2Fz
bS91YWNjZXNzLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vdWFjY2Vzcy5oCkBAIC00MTEs
NyArNDExLDcgQEAgZG8gewkJCQkJCQkJCVwKIAkJICAgICA6IFt1bWVtXSAibSIgKF9fbShhZGRy
KSksCQkJCVwKIAkJICAgICAgIFtlZmF1bHRdICJpIiAoLUVGQVVMVCksICIwIiAoZXJyKSkKIAot
I2VuZGlmIC8vIENPTkZJR19DQ19BU01fR09UT19PVVRQVVQKKyNlbmRpZiAvLyBDT05GSUdfQ0Nf
SEFTX0FTTV9HT1RPX09VVFBVVAogCiAvKiBGSVhNRTogdGhpcyBoYWNrIGlzIGRlZmluaXRlbHkg
d3JvbmcgLUFLICovCiBzdHJ1Y3QgX19sYXJnZV9zdHJ1Y3QgeyB1bnNpZ25lZCBsb25nIGJ1Zlsx
MDBdOyB9OwotLSAKMi4xNy4xCgo=
--000000000000cba3f405cbd9ecfd--
