Return-Path: <clang-built-linux+bncBCK6FN6VOEII52OE7YCRUBGKU4AO2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B97E2D4BF2
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 21:33:18 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id b8sf1058299wrv.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 12:33:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607545998; cv=pass;
        d=google.com; s=arc-20160816;
        b=uyBopUa0A/WO+a7edjDjO6WxviO1rRsgEgnQGyOqN98TTz2/z6o57v6oeRxY78gXpr
         3qOHEELH065HBgBRpT4FKgPffrdIV7oMH8k2looh9egVUXInja/M+qFN0ppIUnWc8/A/
         YynWm1sePlZufcEPSNtVZN07u3ZnPZzPVaDkBz1EOA6LWYsRJw4GjAoTGxpXaxYJXEY7
         vvvsAzk3PX57u2agavG1w0hwLyaGE6B4XssUzm85jhadMgGBERNMpQs8efPErqpMolB0
         8cgqWydh5reSJ2pjvAXNxsemqYRPiMCzN59o/vGgsexDlqNyNh31UqwZqyBeGXq/zFgW
         2JJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=SYoCB3kyzoScQblCUrYPV9gpiM+laAB//4OMKr8V56Q=;
        b=g57qPlHsSGJWJN/CAPu2E2PTlbSN2TNuSQ6UVu9DNg2V55Vbc206Wulp3abj8ni+lb
         4anB0Bv8nSBq39iIyCMYYxCazdYG/pn0gYqIJimlGKXDXayFdCQyd6s939t8FV77JOW9
         DbhKQrIHRs9Kj3FuQK5vO6N3mmxGZqfEMVBgxt//28MQXFnD+bdz/DgOVlkbm7Jf7yK3
         Mk+7XhXvFSPmcRoaS7li570BLOejcKUXu6EUsBCQsfykm8NTnzsgou9tjg5E84DiKwm2
         AdP3nl7dYfDAsiSbnMsdfsIG5mLNllBGxlt6yznxWWBSvJcPsWuhGf2lA2FX/1fhkKzu
         Vdbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iLPQGLut;
       spf=pass (google.com: domain of colemanpotter8@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=colemanpotter8@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SYoCB3kyzoScQblCUrYPV9gpiM+laAB//4OMKr8V56Q=;
        b=mo16dT5FMrbQ5T9T1h5HJC3oxDPi21WwMcyYtNKqpAhsCxWgAGCi0LwEVW9ChDjVQG
         J2owQNsey5PlV99hJkp9AorRngfZc/WJBjcI70+hsgM1TugfSRvjVLwKjuWzakdKBJ75
         XUuU+5XXd9CskpXmMeL4mvpv8wWq3pv4Cif67k1lWH1C0kEMoVeL+wfo7y1v0rPZZ8h8
         E8X2K6xJEhbCjyNhqEeeLkmFaXGT7kUKHWWL8xAnRgdPqZYhv/GwLwyE+4ZVUdVymHIo
         pTGuITx7gLjyNtaKbS99L97IvvfFvX+f+tcRjMls2DbRVAxWhLi9rmJintpE3VISHt31
         N1/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SYoCB3kyzoScQblCUrYPV9gpiM+laAB//4OMKr8V56Q=;
        b=Qv1MdReM4JmtHBbrOe5L8EV+sJ+8paglOSFkWOoGll0hctLnA2K+xlfJQKDPC1MtL1
         sfFpprIN+VI9H4s2axXLqDhUcXx5jE0LAmaJIp2CdrsMyGk/VzXVerlFi2SVbJeHzDDk
         HqjpGfHou9pfO3vyB4grFoWnnCNTEe0UqqYxwfIyPR09o924fIa1/hj1Id+IPmhOA+ji
         6hJzzdFcgTatVAVwOhJbxR3+gkwuKkNEdpy+M/VrHuEhiMabzDJKUrv+NTGFQLEFUoUm
         NrLLQC5/nooA4GTeWSOszzEGQVkf9+0DD74s09XKj9zUfZ9elJamDp31W/R/vjnqjU6r
         VMYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SYoCB3kyzoScQblCUrYPV9gpiM+laAB//4OMKr8V56Q=;
        b=c9UNJmoPL53LkydfHD6kijdDGl2MktpOnR3JOLC36GfCQYzIiscUC5Bo92RSnj8L6K
         keELHyUYqRrF0wsmcMiY+vE/ujU8DjUV423L8zkcyrDHz0NnW4wbeKMKguLmb2Cgmp0H
         6lnn2JqS9gyfV91XaiEwyU2LJUoaGIlY6ySmGKpkbRC5bsq6sekFpRt+gSKYJnACXnJn
         CJ3/GjtKVZxSl4Q9FuXSpynXRDZsTU2YjJ9Qq0ppTgVIP8aHyYmrLF5y/D4Op5ajmbdZ
         +JsLAN2bIwdiUwA9dCUKzE1kTqxmx0nJz0V7hFYuAfeUeo6R2Sj93838WLEyg4pZ9uBg
         gPeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BjC+mGuRcN3nEVY14ofJNsMWpUFBn+l8qGol4H7L8doxy/2QC
	Nd0ei/b/Df/HaXniSbpWmSU=
X-Google-Smtp-Source: ABdhPJz+TesWMnKHojKQXB7HqsyoOrok4Z3AG7G/XSJx0pd2fuChde0Oe0p2hvH5jHjFp2t216xyXg==
X-Received: by 2002:adf:ebc5:: with SMTP id v5mr4514716wrn.392.1607545998257;
        Wed, 09 Dec 2020 12:33:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls612301wru.1.gmail; Wed, 09 Dec
 2020 12:33:17 -0800 (PST)
X-Received: by 2002:adf:b647:: with SMTP id i7mr4574531wre.241.1607545997387;
        Wed, 09 Dec 2020 12:33:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607545997; cv=none;
        d=google.com; s=arc-20160816;
        b=T1PsFTnvPBfIIcCsII6FWKePf/abagLf8bPnJWlDlrsbnFhZikv9DxV3FobGvYGJNY
         oDTqVlWpiohxlZqlIKJsz9C+0CbN91d779Bs8UBPGAXpu5LPc/z8DCfpwaokjyPfPRlj
         0wmlmoevLWreeEdaEKii0wde6a20Lb0Djx3xo5fVt1c3uQQfNRJlFtxTuA0lGOeyueFU
         qucZjGG+mVjrRFlmTGlYQ0NOBh4CtxgL2MI3donU9QyDPOjGyFYq5jogslzLF7Ycl5iK
         hikoTtMYknGBBFkIZ1ayxdxs/ry0o3j09unnHqPERX4C8j6LyS/Pv8u1yqbvDKcXeMv6
         Y3qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=kJsHmPQ0yPdfUk6hLBfBUfh9rQv5rD+NObIUXKVjyy8=;
        b=BTE8WUsJVuc5SY3W0rUa0CscpKdxzHLPJdkzcHlhpFmI8CJZQ/b7u/BSQm6WuSY5Ri
         tHScrIZ9UfWrKUHUuINaTlSE+2mx6/tJ/+c4iwT7EyuTKCfGmyBzx8WaW+qTl0Ny4IAO
         IW2cT+aca0zcv5u545QiIWNXNwIn8SN3aTw8BdPzNQUZb4/2MSKJ1G6W+1TZkvBcUuXx
         79a9CEgIPJMR+x/bGVmvAMfHxf54GfYT7utcYRCJIR6og/ThiHvxMrKmWOgorQfpVtt8
         3hKfr5iN6IH5D9fe83JTg9cfUemQJj2fNVO1bmm/UeUQg4RAnl6zuEBJ0xGJs0rrglwg
         p3CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iLPQGLut;
       spf=pass (google.com: domain of colemanpotter8@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=colemanpotter8@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y187si73701wmd.1.2020.12.09.12.33.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 12:33:17 -0800 (PST)
Received-SPF: pass (google.com: domain of colemanpotter8@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id b9so4107480ejy.0
        for <clang-built-linux@googlegroups.com>; Wed, 09 Dec 2020 12:33:17 -0800 (PST)
X-Received: by 2002:a17:906:fa82:: with SMTP id lt2mr3628931ejb.322.1607545997109;
 Wed, 09 Dec 2020 12:33:17 -0800 (PST)
MIME-Version: 1.0
From: ACCOUNTS UNIT <colemanpotter8@gmail.com>
Date: Thu, 10 Dec 2020 00:33:05 +0300
Message-ID: <CA+w8i5hMaeMcykkNug8Mr3Td5J_Z7W+FkXrgY-cxHn7ejzwJqA@mail.gmail.com>
Subject: CONGRATULATIONS!!
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000001e2d3005b60df8c7"
X-Original-Sender: colemanpotter8@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iLPQGLut;       spf=pass
 (google.com: domain of colemanpotter8@gmail.com designates
 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=colemanpotter8@gmail.com;
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

--0000000000001e2d3005b60df8c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

   COCA-COLA BOTTLING COMPANY
ANTHONIE VAN DIJCKERWEG 11078.Turkey
FINANCE DEPARTMENT,
ACCOUNTS UNIT.

REF.NUMBER:           CK2020
BATCH NUMBER:       00033
TICKET NUMBER:      CKom10007

Attention:

This is to notify you that =E2=82=AC50,000 Euros has been awarded to your n=
ominated
email address on the Coca-cola bottling online e-mail draw world-wide: To
file your claims; fill the information below
Full Names: .......
Mobile Phone number:.............
Sex:............
Age:............
Occupation: .........
Country:...........

Congratulations once more

Sign:
Promotional Manager

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2Bw8i5hMaeMcykkNug8Mr3Td5J_Z7W%2BFkXrgY-cxHn7ejzwJqA%4=
0mail.gmail.com.

--0000000000001e2d3005b60df8c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 =C2=A0COCA-COLA BOTTLING COMPANY<br>ANTHONIE VAN DI=
JCKERWEG 11078.Turkey<br>FINANCE DEPARTMENT,<br>ACCOUNTS UNIT.<br><br>REF.N=
UMBER: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CK2020<br>BATCH NUMBER: =C2=A0 =
=C2=A0 =C2=A0 00033<br>TICKET NUMBER: =C2=A0 =C2=A0 =C2=A0CKom10007<br><br>=
Attention: <br><br>This is to notify you that=C2=A0=E2=82=AC50,000 Euros ha=
s been awarded to your nominated email address on the Coca-cola bottling on=
line e-mail draw world-wide: To file your claims; fill the information belo=
w<br>Full Names: .......<br>Mobile Phone number:.............<br>Sex:......=
......<br>Age:............<br>Occupation: .........<br>Country:...........<=
br><br>Congratulations once more<br><br>Sign:<br>Promotional Manager<br></d=
iv>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2Bw8i5hMaeMcykkNug8Mr3Td5J_Z7W%2BFkXrgY-cxH=
n7ejzwJqA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2Bw8i5hMaeMcykkNug8Mr3Td5J_Z=
7W%2BFkXrgY-cxHn7ejzwJqA%40mail.gmail.com</a>.<br />

--0000000000001e2d3005b60df8c7--
