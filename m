Return-Path: <clang-built-linux+bncBCD25ZON6EPBBEVESGHAMGQEHW4FUTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1D347E19D
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Dec 2021 11:40:20 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id f13-20020a17090a664d00b001b10156c751sf3350811pjm.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Dec 2021 02:40:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640256019; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0Plia9fK7WLstN4hBdIQa/+eW/v2MnIHufkTONcOAmgbSKmSaJj8CdHDDwVShKNQy
         J9fteCIho3ZxP/VeHMWUF1/W/FdPH4WwZH22f6pBkqGtpri+2he+I4ACa+5CsG5ZJTbZ
         5VuYIWaShDK7L9W03b0MgkUEgQIdFx2hdvOwqGToOKIYvqdhTxG85J1R9JgDkEKCMd/X
         yxLCtkb8FlFCgdIr6covdfbpacyuaZ51V//zWjfoXVCooPNbGFZ+GyhVOdE3Bb2D0eit
         M/eLUpR35CPE3F3UHrBb7VDIDetBUeYtsXPjzI7c6oe3+YvTWqadNn1JaibdnfdEExav
         Wpeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :references:in-reply-to:sender:mime-version:dkim-signature;
        bh=WIk+ITgANvWOzFU5YefCpUnvdIfWPaZ4EznH3+RxBoU=;
        b=RL1fo4qovbRk3i75re9GxwuUgBJHB3fpYforFXRWO+YljHvDdpoBkxD+YSv5eTLXEA
         +dWTziyvaCGMA6HE0WDs/PnGijd7aXRQK/2uuF9EtKFYzoO2F97ofYgpjaEOuZZuAvqB
         cdrDh70risn7jFaj3s9dJrNPUD6D5tm2FnDo1MCE90/SuM02G6h8WcGq/Us7JT4U3tq0
         2VX2FD/vqGLFXzzeoAio4XSl+Qsz1K2186uqAfPXxCy3az/yqQ1G/USAJwguKllAA6ZZ
         ZWOFDfy8KbEJrpFgS6UpFrLjcVhmT+NJdUgOWyRtG3mRCBSUAGBHza0K+wGmnjOoYJWy
         bcCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=K7aueX7J;
       spf=pass (google.com: domain of mohameddjibo363@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=mohameddjibo363@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WIk+ITgANvWOzFU5YefCpUnvdIfWPaZ4EznH3+RxBoU=;
        b=JokrIVX116ov4SioqhIB734Zc5Dlmarw2wPpUiIdTFKcISas67XaEmjwKylvO95QeF
         s8MwDnnHz3wDtg4QF8FJZy8YaNqlbsMZxN3vevSwMLUSvhYPf8I1YfU1JMZsmY42XQyr
         mKlCZzn4eFoW3PgfZWz5GTp10GiTnKjR9/fwqMK4RQ26HuF0rIr09a7v9mo2861a+zC2
         MmlHRn3kcpwM0yZSmXGVjlLy86KBVugMh4KC2PsG+mzWq5eUY5rSjFw5J6jKn3Ryz2Ti
         XzeTwfpbrUsLqnnav+LIZOGgwAdjDESmvp8gS9mOaZZdThYo385x7iohlyDx2DM27qbz
         eboA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WIk+ITgANvWOzFU5YefCpUnvdIfWPaZ4EznH3+RxBoU=;
        b=jlQ4rMYPAUpD/cQIizZO0c+2ucisEw8ks31Pn/2y+HCVhMzg7zYOcKLTvyCKfuZ3nw
         YR7R0AeZjmSb/lE1gIJMbYOz2v83P1MU3CM2dhEtfg7fcMy6qvpc0WFA9yGSnBOKHzlP
         2G/Ig6U/fea/EEjR563zJ4dRzw3ERpjC/HPvNsKPwkS5yyJ84Ns3oCr2sQx8u/K+Irw7
         QlhBzQMPy0BviObbhy074u2OS7wFKW1nxWMZcMA6Rim9P0be2IKWCpq/Pfk+6Cc16fq3
         QNm9CsKJc6sQN8Rt4bp8st7295uVCh+pw5QOSCvi5I8fyy42woO8WUewXq26VTEMauTb
         gE1A==
X-Gm-Message-State: AOAM532TK1Jn5NxW5XStEmXohBAOCAV/vnhdEEKtpr0dH1O7yvMLmxTS
	PEHoNG2tKhZSSS45RE5Y7KU=
X-Google-Smtp-Source: ABdhPJxZAezuabSJ5hgxLrmTvoHbvz3y7bHJeqqqQPdxerxE+I+EJZdF8upLkAU87rEWE/zs9mN00A==
X-Received: by 2002:a17:902:f781:b0:148:ada1:e913 with SMTP id q1-20020a170902f78100b00148ada1e913mr1810089pln.97.1640256018889;
        Thu, 23 Dec 2021 02:40:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1902:: with SMTP id mp2ls1631302pjb.2.gmail; Thu, 23
 Dec 2021 02:40:18 -0800 (PST)
X-Received: by 2002:a17:90b:4a51:: with SMTP id lb17mr2330055pjb.118.1640256018306;
        Thu, 23 Dec 2021 02:40:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640256018; cv=none;
        d=google.com; s=arc-20160816;
        b=TEGU7Smneoo5OPsDUhzMjr7EWmKEA6lueqo9Q/RNpz41ymOFJ7cWjQ0pe/2BTl0tgG
         VEvy9t9X2g5RXoGqahArwjOtwGwZ6Aoyvq4jxIOoDONQXgNxrvvej+Q17B5x2UWHw2dZ
         s1YsoyLF8pr73q1G4Q2cYd0eSbTDV6kDn6NDuCa6ioe0HqRlSnzQZxbDMXGSMjuvUFMj
         hbKjHQMvudotqnGk+NEeVYUBQSH8L7bHUCHmC0SLHAai35gWSCpOfipzxEnQCmmxHVVJ
         FX08CMroGRwVSU/apya1RhRrFrbkSxOW6UtXdXiuJ5KLJyGr6i5fT0lY2r2MG1fl9Q1b
         kf9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:sender
         :mime-version:dkim-signature;
        bh=SKhdgtknuKYN0ojcipde8C0qHw3TX1wov+DvJSuFN6M=;
        b=knrdRNhqooiiXDB9ux42Ty/CFzwkYt7/4jK8h/bK/sAOPTjX7GbkUXGQlHLQvB/oAF
         dM6DOICAkOpH8lT9kd7wtijSd0INk+0Uumblv96MV9+pWQWe9ojcphCgW9HGBSHCK5CX
         Zbd1/XBI68oJLREEbElvoe98W7NxFwQJtTfTmW9+M5PbeesY/Bl7kPHskXsyRcK8hE36
         m9TRuAORI3r15aXIdruIrC/PJ/IHS2F4gcTmBSofBYJorIbdGFNffm6azoUJIvILl2rQ
         dN3a16agc9Clp6IffdB0gQ5ugjQgWJ8uoERyiYQhNUS6cUGYDEG8+r+7q17b6PNKEWvx
         Fa0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=K7aueX7J;
       spf=pass (google.com: domain of mohameddjibo363@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=mohameddjibo363@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id na16si183745pjb.3.2021.12.23.02.40.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Dec 2021 02:40:18 -0800 (PST)
Received-SPF: pass (google.com: domain of mohameddjibo363@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id 131so15073302ybc.7
        for <clang-built-linux@googlegroups.com>; Thu, 23 Dec 2021 02:40:18 -0800 (PST)
X-Received: by 2002:a25:a463:: with SMTP id f90mr2658220ybi.52.1640256018025;
 Thu, 23 Dec 2021 02:40:18 -0800 (PST)
MIME-Version: 1.0
Sender: mohameddjibo363@gmail.com
Received: by 2002:a05:7000:5c53:0:0:0:0 with HTTP; Thu, 23 Dec 2021 02:40:17
 -0800 (PST)
In-Reply-To: <CAFu14DvPcmOHn6y4cFBXA2TDDwhzvh7Q5+Ak41oeyeYRaWO5Mw@mail.gmail.com>
References: <CAFu14DvPcmOHn6y4cFBXA2TDDwhzvh7Q5+Ak41oeyeYRaWO5Mw@mail.gmail.com>
From: camille <camillejackson021@gmail.com>
Date: Thu, 23 Dec 2021 10:40:17 +0000
Message-ID: <CAFu14Dt8Sb_hRzvUn91mEV+x_UZOnEYz3BoWUMCiQpc4OCHG9Q@mail.gmail.com>
Subject: hello,
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: camillejackson021@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=K7aueX7J;       spf=pass
 (google.com: domain of mohameddjibo363@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=mohameddjibo363@gmail.com;
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

How are you doing today, i hope you are good please respond back to me
now thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFu14Dt8Sb_hRzvUn91mEV%2Bx_UZOnEYz3BoWUMCiQpc4OCHG9Q%40mail.gmail.com.
