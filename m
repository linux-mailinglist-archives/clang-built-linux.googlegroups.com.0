Return-Path: <clang-built-linux+bncBDR7D3XA64GRBDG23KKQMGQEPARWQ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FB155A781
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jun 2022 08:37:02 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id m7-20020ad45dc7000000b0047042480dbfsf4618205qvh.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jun 2022 23:37:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656139021; cv=pass;
        d=google.com; s=arc-20160816;
        b=ssboOOgfe4aWPqacdnvi6I620lDvqHK0miAYG0nAfOtVHvzdEEI4wV0s8wTjMxRFca
         bCmm8inCYsM82upFg4SdnuIBFql+aZnxuuSeDn4zsaafw7gwqOdB4Fyl787GHE784Ku/
         KjL/bShZLkF99kSpUahn2ziE2wMzyrlVRg8mOsV/pSzO8JyN5NK5nEMVRBTkR0pH77kS
         yINA1z5WD1/enCCg8KeUR4mEbsDCcZD2TnpAuhxc2LveRxgXEYHKNQnxiJDyW+nPypt3
         rzsvPYHRzq+v4I3mbc6Rq40D5vrP7qwi+oK+nXzxJnXOqaJcHn3+z/CHpAXb4HpL8QS3
         2S/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :sender:mime-version:dkim-signature;
        bh=DSFDkw+hmIy02tlpIeQs0Em3c0vPERkdB+82zwjY+H4=;
        b=loLPNc81jgOsCI9HZivaQjtIm+VjBB0cMYyB64DaXm5Jei8OIiOMaKJFM9HGzbEspP
         +wZsVkEwyuTCWDMo6rwrOUX/tfyOpTtg6IPTkrCO8P35hqvbk8CvK5JEghLR7x2vCskT
         SC6GETxeTFPjssl186JqTPsJFArnJrBUrCUV4v2cJL7HsSMDICIMLep6KSlXWgFFmWTa
         4G0pipCqQNyPbPV7o8s7l7iC/UrS1dgPTs/drfvhpfkdPS2Q0lGG5UMW3FJ2cSFV3g1M
         zqxgHXCiBbq96p4I0WZKPYWRsftpE70s9fFpMDWiHey+9jq+QnNC5+6x4Ytw2MoX7w2q
         OWNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mSzigL6p;
       spf=pass (google.com: domain of natodtoday@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natodtoday@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DSFDkw+hmIy02tlpIeQs0Em3c0vPERkdB+82zwjY+H4=;
        b=MMyr+Hg0lODijvnnC/+XSbMKmDjAB9H4v55FXjba+W6Mu+/5iN9ONwaIGQoAFMQ7Ou
         VAhRziqo2h58mnrBChP7MstW0eTHgtF6l162aXbPXzmYB4mKMaIIoNtx92m71+IAMDPK
         1dK5WE5nOE/Tu0JtGk9mxdr/fSORg3T1nLOe0C/a3vVW738tNlDEIHN2cltNmdNVUCLL
         hJzfNuKgtWfBk7bRrDLswImOk6RsS+ojXNjaScRIfwm90jB075IzlYpgMCalTPU0QRdt
         Xjt0GRy9p8zwaQzKLaFPXCxEwQyW5zk7E7zv8llEy+Vc4vvluZ+VBN2gQG/VFxxixnuB
         Ltxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DSFDkw+hmIy02tlpIeQs0Em3c0vPERkdB+82zwjY+H4=;
        b=8QNCIpk37g89r7HyimAnBIesJPFZ5Zn/ZVnzkIW9EhHxx6yZlOP7TrsgZuYkNvq3CC
         CW9sy5EeLmcMS8nor7A2N47nSI7SnQgRO6L9G7hDdofPgPx62qQPzPYlVWd1tQIOGTVP
         oqXWb0laIrkD4EJiN50lB4P1Bc/VHo8tulqo1NV9aqVnPyXP0Kg4pgonTOwryBn8mu3D
         /q0IP5zKJUol3CWd7We749yrF66681ubikiEuW3Bvp36zJDJW5wL47uHrR8eNj/jUybA
         D/KHbk0wpbXDpeglFBViQooUkKQA41P9BBbi6pntM7fCVXyeWmT9PXLJkmovGr/3tOC1
         lmag==
X-Gm-Message-State: AJIora/nnAkKgK/kFVDtNq0+QAI1wowSVAWSwbCMMkDg2yyynRSj/hnW
	iQIqza0pyO1Uq9D/ifHabDU=
X-Google-Smtp-Source: AGRyM1s7BOuVVUGzJDxCUjODeYKi+QP7Nt4y/AIX1rJQ3C/WirOFmIKTdsC09eXo4J9DsOZnfAEkjw==
X-Received: by 2002:a05:6214:5194:b0:470:5727:3ffb with SMTP id kl20-20020a056214519400b0047057273ffbmr2103846qvb.40.1656139020965;
        Fri, 24 Jun 2022 23:37:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:3721:b0:6a7:591f:2ced with SMTP id
 de33-20020a05620a372100b006a7591f2cedls15493340qkb.4.gmail; Fri, 24 Jun 2022
 23:37:00 -0700 (PDT)
X-Received: by 2002:a05:620a:439e:b0:6ae:df08:1008 with SMTP id a30-20020a05620a439e00b006aedf081008mr1941325qkp.31.1656139020494;
        Fri, 24 Jun 2022 23:37:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656139020; cv=none;
        d=google.com; s=arc-20160816;
        b=hNNWLnGiRIvDjo4yAO4P8jcme+3WwGY3yotb4ty9WdFRkV739O0rnuS2jVgDfCKweN
         vyjz84+xnWP9ZEByClYI/fmPOPR3+SeloTulNpOQBbyhgHyb+JTFtoKcWfaE06sG1Fmr
         VjkJMX9kEgdha7j4/s7kStfCc7mDuoC/mSfqqw26C/bvag92ZfMb5yDfjAqWG518t9HD
         F9hqqCIE6WuU0Uz25G+AiN01qGqmCxa7Xl1kpqJDxLXt+v8ucD2fBaFsLiySYUBXmBHs
         tGn3fDrXXv1q4ZbA2+PS4QaONt0kJRPhPbNfZD5XGMvOgeLsHeova9m82IknbNitSGKl
         xHAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:sender:mime-version:dkim-signature;
        bh=jE0JLsfEdPpE7rbsOBNLVDtif/ZpFdFdV55NgbKwOcE=;
        b=OQO0iuUz1A/HucRBEPG1CicY9HTfuiNhRgg94oPn0+08SSY6XdqH32oLYrF1FPiixx
         BMTyC4HV/e5AhoMx2XyHZ+aJtCV4GYVT2PI20LJKIgX+92tFuzxKxcQmabeu2VqEBPUk
         fNg91iJicflOny8J6pL5AuPcFNCcGKEQwEcUR4lZhzKXXbM8h/ddxldgYWrrmywinCBx
         MdKmKLUAtESknnzy1ESsJTNUBN0LiabB2yuW7VhcJMr80yZ0u3Zzzp1adcLysvTqXkBz
         A3G73kw+YbLEKC6bJcs2b5OgVTx9E3i+MYeBbsE3q86ezSopt31gv/TbwlKzN9TFG7Jj
         /BPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mSzigL6p;
       spf=pass (google.com: domain of natodtoday@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natodtoday@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id b36-20020a05620a272400b006aee9e5c450si195181qkp.4.2022.06.24.23.37.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jun 2022 23:37:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natodtoday@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id b12-20020a17090a6acc00b001ec2b181c98so7604493pjm.4
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jun 2022 23:37:00 -0700 (PDT)
X-Received: by 2002:a17:90b:1a81:b0:1ed:3c0:3abb with SMTP id
 ng1-20020a17090b1a8100b001ed03c03abbmr3087558pjb.5.1656139019138; Fri, 24 Jun
 2022 23:36:59 -0700 (PDT)
MIME-Version: 1.0
Sender: natodtoday@gmail.com
Received: by 2002:a05:7022:2190:b0:41:e49a:3a35 with HTTP; Fri, 24 Jun 2022
 23:36:58 -0700 (PDT)
From: "Mrs Yu. Ging Yunnan" <yunnanmrsyuging@gmail.com>
Date: Sat, 25 Jun 2022 06:36:58 +0000
Message-ID: <CANfVWTSYXTQ9G1+Kcy8QM6YUoT-7uF4p1yD=E=K5DY62zDJadQ@mail.gmail.com>
Subject: hello dear
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yunnanmrsyuging@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=mSzigL6p;       spf=pass
 (google.com: domain of natodtoday@gmail.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=natodtoday@gmail.com;       dmarc=pass
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

hello dear
I am Mrs Yu. Ging Yunnan, and i have Covid-19 and the doctor said I
will not survive it because all vaccines has been given to me but to
no avian, am a China woman but I base here in France because am
married here and I have no child for my late husband and now am a
widow. My reason of communicating you is that i have $9.2million USD
which was deposited in BNP Paribas Bank here in France by my late
husband which  am the next of  kin to and I want you to stand as the
beneficiary for the claim now that am about to end my race according
to my doctor.I will want you to use the fund to build an orphanage
home in my name there in   country, please kindly reply to this
message urgently if willing to handle this project. God bless you and
i wait your swift response asap.
Yours fairly friend,
Mrs Yu. Ging Yunnan.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANfVWTSYXTQ9G1%2BKcy8QM6YUoT-7uF4p1yD%3DE%3DK5DY62zDJadQ%40mail.gmail.com.
