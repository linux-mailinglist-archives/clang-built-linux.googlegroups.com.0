Return-Path: <clang-built-linux+bncBCXZ7V6BWQDRBSG7V6EQMGQEJQSTFEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BAF3FAE77
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 22:36:29 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id v16-20020a2e7a10000000b001ba9e312de6sf2999592ljc.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 13:36:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630269384; cv=pass;
        d=google.com; s=arc-20160816;
        b=JHfPgSCL1oe4pEKX/N5Kw0Cfux2vZkTW4NouR2eQ4r5/VJ01mg/flReuAjCKgbO6OT
         teRBSxJE1I4iGRgEjIQR/GCU8XBebWpRfkJiNOdcbFtUUljNW+pO+FIa2Zvz+XRm3xpq
         o3KAYehEtxy3Fy+yz8jhz7jetd7BZBQWW+hDpeMBjpTDecYZgyPx0x8dDH8lJtdW53An
         aZ+FxMo+/IlOJHznCilFhgoti8cVsxYC/2WnzTgvmaGpTCfu7aTsW1BbrSbm7Y186QeU
         VASpVEUOIizDUj3ixmqRQi+gJDqyAV9qwqSm7ODFzn4xyMMpTm0fAxtfpjLOlx2sIZsa
         9S+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=/80rsX05zeB95qTJNfnPmk2VHNXEe9u7fN+5Ht6mFnM=;
        b=WcP6/ZgDZvTqp9Orre1ScA59ULDi2dGHBw1DrkDV6MoO7ogpZz6leXE8ay/BKREg8O
         eUmG+DjZtNcmhy5qlehHsPSL5WuRl8JIChqIfomL4NkODDduY1C1MoTapxyOCKacRsf0
         QZ4+K9NHd0PvgpiLrA9MIMCHqz/wxQ45GyRY00Ow/PBAY67yYg6kXyJLObegaBlOIpNP
         ANoE6P5PZDqVoHvp+qqVr4gUmG83QBok3q7jWGy1o/EY74CdCrKXJlJqJ+sxaCpyJg3+
         JIDUobLxETYE0NAxdf7veLPWKBa/mKThbCeuGm7ajf1tfq4TZjE/tgy7DzNEdJ/rl4qH
         p6bQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1APUbkS;
       spf=pass (google.com: domain of christo.loveu@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=christo.loveu@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/80rsX05zeB95qTJNfnPmk2VHNXEe9u7fN+5Ht6mFnM=;
        b=N8lmBBNugxGvUhTcH1wZe6Bb7iXLPkzYAUx3LqGoxJC4DZwvHEkGFbU6nqgSeyj08v
         wYgr2KYfD73lB8mF0MmcP/8GxfCCz9qeyPyGE9runOjORDljrFKA0ISKo+Ta2pmm2ZaD
         r4WZ8OTb0WZ7szAw8dI5GwQ3PmKZlkZppiiMfMtnYm61mHb0ZfAORJRpQdxsIkfuMETv
         H0pID1EPNWb6M0CNzDmOZciYw/Khgpbo9IbuTGhjP7Wadpl+LsskD1JBdmTdMnlxjTky
         C3GSubC8uQM7lLV/7/LsDPmPb5ckXYKxTHWLyEfMm1f2uNEs03zGaEifirb2Lz0Cy970
         KPTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/80rsX05zeB95qTJNfnPmk2VHNXEe9u7fN+5Ht6mFnM=;
        b=NZ355XKMAvVozQ8Qm0ucfcSawRjKMo4uzED0gRkRhOWmuQyWVo/7pHxjQ7S10tp/Wi
         xaf3TGXRsFC2hoZ48yc5lCwycI+7jlTk9fj/9R33DL2lx0OV5Ob/ycRZUd8JHBJJnrMr
         t9wv7yyjnHRLA9j8itgjspjlHf3w9WHu9VCnQEInMK3Eozr9qM349runYISVK6RMe7dn
         XmL15I4MOYO42XiMFUEwkqeETjt3pKWzwQxQu4qMu2MpB8LW0csqEcyXmHc5JlOoeLNv
         Xqk5oo7WSPQP5vY7fiDcBvki3jy+SKTZr7VtOOQFnFN0cjiUQ+gWJZmBYMblM1ZYaIAu
         XC9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/80rsX05zeB95qTJNfnPmk2VHNXEe9u7fN+5Ht6mFnM=;
        b=co1s/tHVPlNRDLA2ab57B2j5wodmaeMb5oeYMN2FR5iBeIdkyhLBIkuXIvIo6p1NaN
         6ma1ZFzP0n6s4z/ENkg9EJOKME2x098ie+GQrzlMvSAF8gYoEAc9y6suElDAaRADhF/K
         YrTNFFUYDM8OXkexW1qer2wNg/iLp3vgFQlKML15CH5UKX6CQlEwXzkfAWmp8l4sUdtJ
         vPrraCFnbv5D5qwOsBQIyLGDDJ5IVposdX1H/uZtVxJ//IxfuIsG7PjEd7fMOWxfVkzX
         Saj14j+WiRDePNv8wIzcU2+DDoC7kLexjtYkXCzWX8Sivmjh9zBc5vLV/EjimS62/Vky
         ttrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329QlvaF/qmYTiCdJoQiUZl3rcSUda/3Nu7RT07Nj2aM8vQhZlZ
	WP+6juStUqZru/5kN5BZLYc=
X-Google-Smtp-Source: ABdhPJz/crpejAHTEKe5zaWYwIcGkY/PwHb48QMZFLHr1SrUDWnCmQfmTZk224jsVph32/OyN0rqZQ==
X-Received: by 2002:a05:651c:a12:: with SMTP id k18mr17515136ljq.90.1630269384372;
        Sun, 29 Aug 2021 13:36:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls5144523lfi.2.gmail; Sun, 29 Aug
 2021 13:36:23 -0700 (PDT)
X-Received: by 2002:a19:e343:: with SMTP id c3mr14866859lfk.611.1630269383265;
        Sun, 29 Aug 2021 13:36:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630269383; cv=none;
        d=google.com; s=arc-20160816;
        b=mX8VbXB4IDLCh9v9555Drzy0b7HWrlTEUO1mCzAf7lw1ixzQRNM2RxncSnCcPcMrbu
         IRcuOFrIcSOL63erQrenL4TuIjMGn8deWOPcOUamMwNDlY/0NJM96p3fQN5l4D/dZcAF
         dGyVGnF5MQdyRkEvpdSsGtrX9OfhHK+lwjcrYLDczPye7Ax9grh8xaf6v/TO4oeWWgPp
         GovrkQYLDwX1AGLjgqmK+WuEPbMdI55Zpm0cdPE8/T7ZGL44COWYaPGfefvyvJAOiLsG
         2CVfcgX/uvHjsuSnzJrdFsrN4//iVLF/zCq2WQrI3DLtIyzWlGPWQ47bygFFJHNkqoxp
         ykMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=nWU+9LAc3NfUbwix0GPNkg0EUKq2TH8tJNOMOsbn4k4=;
        b=v6DZyIF/VnelR90oLN67XFs8Q6Og9ZH+dTNnktul4VbIWNA3nVgsWrLq2LjTmmkCgz
         Y0qdH5ayHD8eBCvBGFjpNco9a0uS4L/D9db8xvsbNwiHXCej4dbsSKdlaCw3Pr7uuQTA
         LelaJnoH8Xtuzv7H0SGtYZ0A68ZVR4FJeHRp9GlYMTJx7CqgU72Fs5XHiE1Q1neGL/Ot
         LpYOiQrYx/JYJb/7e8cVwQs3E1l3vbxO5QKjN5g6SA45xRho/4s9P+O3dqDDE5cjkFFh
         gJeyOWHuW02nY4z3zjE/t+56mrUWdgxsk/GclMszB2mZeBOk2FJIGZUI/tMmh+f4W22W
         Xb1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1APUbkS;
       spf=pass (google.com: domain of christo.loveu@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=christo.loveu@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id b25si821340ljk.6.2021.08.29.13.36.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Aug 2021 13:36:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of christo.loveu@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id s3so22250314ljp.11
        for <clang-built-linux@googlegroups.com>; Sun, 29 Aug 2021 13:36:23 -0700 (PDT)
X-Received: by 2002:a2e:7603:: with SMTP id r3mr17733594ljc.98.1630269383110;
 Sun, 29 Aug 2021 13:36:23 -0700 (PDT)
MIME-Version: 1.0
Reply-To: zhenh.david1@gmail.com
From: David Zheng <christo.loveu@gmail.com>
Date: Sun, 29 Aug 2021 23:35:33 +0300
Message-ID: <CAM1MznaOaMau0KK-KipLu8pMPXJZTCGhg8r+Z1OQ-nvdkLUBQg@mail.gmail.com>
Subject: My business offer
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: christo.loveu@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=u1APUbkS;       spf=pass
 (google.com: domain of christo.loveu@gmail.com designates 2a00:1450:4864:20::22f
 as permitted sender) smtp.mailfrom=christo.loveu@gmail.com;       dmarc=pass
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

Dear Sir,

With respect, I am the portfolio manager with an Investment Bank in the UK.

I am communicating to you in full capacity of my official duties and
obligations, and on this note, I hereby submit and solicit for a
viable possible external partnership with you which I want us to
discuss the details when you respond to this mail.

Could you send me your contact address and phone number so that I can
send you mail as well as discuss the details with you.

I will send you the details as soon as I receive your response that
you will be able to enter into our business cooperation.

Your truly,
David Zheng

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAM1MznaOaMau0KK-KipLu8pMPXJZTCGhg8r%2BZ1OQ-nvdkLUBQg%40mail.gmail.com.
