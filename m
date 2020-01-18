Return-Path: <clang-built-linux+bncBDZ3F5UE24FRBB74RLYQKGQE6X23DOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id C920C141678
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jan 2020 09:12:56 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id w6sf5708017otk.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jan 2020 00:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jK3wLDksyscnJOYfosLPn/xTEHBRSGWGdbQ6ebEM+zM=;
        b=qfkBfcOz/udEyHP7iseDzMGn4l88FPyVV1ncP6JSnq0DZ0ZItvM6jnN1X2vJXT7T2e
         IefHHG1BSZb4sBUdW9vrPA3eNB7LknBkipSgQLOlhGyZgsvgn5JGm+wIcTHYTQPkDtLr
         o172WpPsGDwAKfYmGnwf850VqLWXd02Fag4mKpFS9nmcy9DjSknmnYOcgY4Pc34VqJBU
         08R+pgZ4kOBdB5YFy8XY6GyKT9Ay7wSLlaYOLHspKiKQ9hNqoRi1DgEa2cvafF0FERPZ
         tjqmm8pnA4rM424ywBLyfg7xW76BiCGJuJTP3BvC1wh+hPBW435r4Ax8F/Hca7K/4ezM
         IEFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jK3wLDksyscnJOYfosLPn/xTEHBRSGWGdbQ6ebEM+zM=;
        b=crvdMd9ZkxNJt9YuQFFnK0nKlf5ykGD/V2q61juiS03Jn13ZC+tCfRcYqSERio0cjP
         r3mRCBkX0Snt1qHTMYWmA1q1QfxKjtH8JUiz6/fyhdDluiOP+ry37rv8qgE5PCFiGRbh
         lfULJ8ev9d3cL2u90C2E9mFioM1PY8E4W+CiCmuk3EKtKqdL0WRGCfO8i9WhI1LamYdW
         giL5nEigkARDXLY0Op8RHCgEQSk1Tb6rwS/eeY4yQNXgWkctq1eCTcA7+dtG6uXazNwG
         dlpfSo4qMF5I7G/o0vQ9tQFH9NzuP6MGWAIvEsvTFLGJfp5y82mtZYrk9HB6EjpnFzMC
         XqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jK3wLDksyscnJOYfosLPn/xTEHBRSGWGdbQ6ebEM+zM=;
        b=spnJuhe6nrw2XSulcaedoNjvrlnEoGhY/otLKuOSsD2LuKQJM6xYuIvkiwD8SqHY1/
         srEMkR48r2MZvmLiNrYNvVkgZogKya9tGNtJWjFSHGM9JaQR3/n7CeM6alYZdMAI/Yfg
         n5jaj1BgJgIsKl8YBqFgDdA1mHcR6yfnG4lG7aAGjK7lFCTya70piDPbRSWd8PykDvjL
         MieEt5rOpMvk6PUS1VQTCs3VJWvD5JhHGiGeuhPskRrO/txUWJIEsAD1rgEOhJhvD3Ux
         ZZ1US6aF+2jvXUykNr8LOoiPeFKcCDGp6lBedNA7eRgRswDCyv/QwlaqfLcI9hEJL1Jr
         NAeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX9Gg1cHoZDt67wIQ1KOJzKNbYwBs+w5afCD0/UFCp+JbSZHwaP
	FSELCF4ZilO7atwSn+fq+nE=
X-Google-Smtp-Source: APXvYqyJZIfrtQhA6+azBEOj/12z4E5FhfX9zchRAMaYeA3KGrbSXs2iQ/dFYRRKgqWK8dFA4UF5ng==
X-Received: by 2002:aca:b608:: with SMTP id g8mr6610122oif.142.1579335175594;
        Sat, 18 Jan 2020 00:12:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f515:: with SMTP id t21ls5045764oih.0.gmail; Sat, 18 Jan
 2020 00:12:55 -0800 (PST)
X-Received: by 2002:aca:d6c4:: with SMTP id n187mr6546533oig.29.1579335174827;
        Sat, 18 Jan 2020 00:12:54 -0800 (PST)
Date: Sat, 18 Jan 2020 00:12:54 -0800 (PST)
From: Nick Desaulniers <nick.desaulniers@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <33fa3923-c9a8-46b8-8727-d79d3cd499cf@googlegroups.com>
Subject: "Control Flow Integrity in the Linux Kernel" - Kees Cook (LCA 2020)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_712_489440253.1579335174194"
X-Original-Sender: Nick.Desaulniers@gmail.com
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

------=_Part_712_489440253.1579335174194
Content-Type: multipart/alternative; 
	boundary="----=_Part_713_844218318.1579335174194"

------=_Part_713_844218318.1579335174194
Content-Type: text/plain; charset="UTF-8"

https://www.youtube.com/watch?v=0Bj6W7qrOOI

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/33fa3923-c9a8-46b8-8727-d79d3cd499cf%40googlegroups.com.

------=_Part_713_844218318.1579335174194
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://www.youtube.com/watch?v=3D0Bj6W7qrOOI">=
https://www.youtube.com/watch?v=3D0Bj6W7qrOOI</a><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/33fa3923-c9a8-46b8-8727-d79d3cd499cf%40googleg=
roups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com=
/d/msgid/clang-built-linux/33fa3923-c9a8-46b8-8727-d79d3cd499cf%40googlegro=
ups.com</a>.<br />

------=_Part_713_844218318.1579335174194--

------=_Part_712_489440253.1579335174194--
