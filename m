Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWPMWTYAKGQEXGUM7RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E4712E12E
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jan 2020 01:16:27 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id m18sf11806864qtq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jan 2020 16:16:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577924186; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KWrZ36MWQL1ks7uDU+xl2zqvFa7iDIkXZ1IKLZI2wnWp6Gl0ATZZt+t3oI84Bon5J
         opyxpcKmnFpqRFdZj56NBygLzXabdSppw+R7tEXjiEyAzDSqx8EIC9lS9sxp449wa0O5
         0CCIt3lyeIVrdbZQfotnOmai0HDAv0sntsppD5mnVsntKjCdI6ItMXy988z0il0EIZBy
         zNUDVhJu4S6WhPmmHuab6rsBrq3tbk/0cEMtE1sbutXwgM7sH6BKWfNY2+rfLK2s5kGI
         9cS2AByzaIDNpYeWNbe++no/rTuu3/3+Va30mlQFeOujXmZW8eqNKj5p2QA7pKDEk7Vu
         E47Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=qryKC3sij4SwZk1wQ6HpG5x47HJTqmUOEHYY1sjIFn4=;
        b=bpeDNfMtn0bJPsbrSXmS0PxCsseBQTj2PF++MZ6p4RRPlROMEZJcYJH5quEpUpdiZf
         atneXQP/4O8mwR42ngiq/E91Q4hQ+CIsetjCuvXjZuBsy3mjQmiqftSvH8QFbqlDKBzm
         mzPn3Knzp5kJlg+84lAuAginO/M1YNHRBbshkiMyGgoAgTqWZziRbkjOSDSBsiK22Y9p
         t06C6GjnNIhczzRj5NMTSgUnrG1qELDFl50faghJdXvOp8l6Hy+t664fhebSf83I7tbV
         ETn70lEOlklywr0cgM9ECcXXhfkaA+MeWujPx1DeoMgp1V4YSJ0ZX1BWS0KGBuXpq+pW
         22hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNhJtOqZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qryKC3sij4SwZk1wQ6HpG5x47HJTqmUOEHYY1sjIFn4=;
        b=DrUsu0rrpB3hFk+jTvtF+lA7c9tK89JO92Ga2ciSVLgjZZTV8ndffSi/69/1bZQEpm
         QpU4wJZz6/ffzWLfdUDRN5633gZZxudVxrwURDU+ewICl9SE6AGvsf7tXiYXo80Cxabq
         VYVRH+N72d1tMesVqf9x9hgTsmhm0AN+DINN9gqjQiE1AX1MBKq88cCa4DPsVxNfgXAJ
         BjRbcfBf4xH96qjo0XS2DzjOBDua5e+GI9gVIVpJ7zdO++1UjPbnqylV4zlhSLCT94zg
         5M62EyVYlKVK/8Q5Wj9BocGAfw6812dy/ECLY66Bvoe3SYJIz6ceFa1v+AIgD95jyrC8
         L50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qryKC3sij4SwZk1wQ6HpG5x47HJTqmUOEHYY1sjIFn4=;
        b=dyBcDBZjVYOlY2XbNjjtpPk8ZnHOVyc8VCljFx4B7u35LIRpDHI4ZUKVbspqs+SjwW
         a8SQJU7WkDRYh7rzK1ZZggSKwNk6CeZXKbM0OhAoAki3xtTp7vjujbF0uJcVpjcVCwG7
         INY0w8vBvIeu8cyP6WQiMR8hzgjMGJAmwN5nEFXYXPv8gGKBCNqHpM3mWSKwAEFJ1s7k
         kfsVg2JmTLuXoyzN37vPhQhq+cAtrIbic7hP5zfFk/0OLXVgL6VsrPhvcJhMUbZZS6HX
         qIj4lel93AV4JPF9iQKQ7JP11Dt4t518xrRqYDK8GSyTiXY+ZEroBMt0miuReSnNJ79c
         ATiw==
X-Gm-Message-State: APjAAAX0N9tA0CgiRw8gdGP32y7OrLfdSbzyNmHQCCybb5M6T5q5bVgH
	0NOFs6jKOfDOzelgDl73Q0c=
X-Google-Smtp-Source: APXvYqwl7Iuuu/uAMs2takV2pwutAHiqXNO3FBY0rnC6h+9d9nI6xbE35lwtbg0QgojI/58dQ2Paog==
X-Received: by 2002:ac8:5442:: with SMTP id d2mr60266000qtq.297.1577924186086;
        Wed, 01 Jan 2020 16:16:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:49:: with SMTP id t9ls4271344qkt.6.gmail; Wed, 01
 Jan 2020 16:16:25 -0800 (PST)
X-Received: by 2002:a05:620a:1522:: with SMTP id n2mr63917940qkk.108.1577924185647;
        Wed, 01 Jan 2020 16:16:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577924185; cv=none;
        d=google.com; s=arc-20160816;
        b=g7l44bpu2njpuu7FCeUHaRXXq7fSu9pOeI++vep/Am1oTo0K6HfSRTOuvcRWi3lI1D
         xJ0C17BlE2Rdg0BIa0y2O2j3hwhpOxPUiU4ABSP04baMNNJ5CafzyRc02PQs8om4fEOB
         PWOY18q2LfsBCBjDiHBLXw0GxZoZ7Z731Yb3iiHSHzkQFEA3kjbjmkYaNcQAet6BznEH
         0J0iFOge/poHbJt/et9invhQ2Y5eyW5hX6pz9RJqjLIJvDF8c6xLnwKDdOuWmVHSbIun
         sdPjeXa46l/vSXydzlozefo9KtRXC+Y+t/uS13hp19nwivog8CmQasFnTktpp1E5PzMl
         hWsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Y3StuweI8Q++pPlSSQO6EMVwrwOBZwDMqUeIMpJg2Fw=;
        b=hOr0fXqsTI959GeMplmvIMGeqmmc8R+Tw6YH1EtBTPbNgnfph5pfPWintdDYnDZJje
         jK0MzcXj+v2si7E1iXo3kan3O8jCYbDwybombh97gkFz0mVTlAG2GTPUvU7yB6GVt0A2
         SAC5MeluUurtoGqxnW2DkNUZiXLUVtzDmSCVKYvVF7b1QhFcgwV6BDez6W9eLg9m5Jk1
         pg7QYpCJOJKFgJMBv2v+6ibCf/dOhzQMwKgkHfBTyYxUQpjVXHg2HcRp0qqennQWCnfn
         JWtBdKXfGvr0z8GHcKJVJk2pkuurb/D1bBtZKmujNTymnw8SGvii9ba78PSZqSjog7kz
         llXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNhJtOqZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id r62si1703381qkc.6.2020.01.01.16.16.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jan 2020 16:16:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id p14so21267565pfn.4
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jan 2020 16:16:25 -0800 (PST)
X-Received: by 2002:aa7:946a:: with SMTP id t10mr86047791pfq.165.1577924184893;
 Wed, 01 Jan 2020 16:16:24 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Jan 2020 19:16:12 -0500
Message-ID: <CAKwvOd=B8BEV1UTAobNhOCayqw-nN_60cp9YKiujfF5kiGAkBw@mail.gmail.com>
Subject: Ringing In 2020 By Clang'ing The Linux 5.5 Kernel - Benchmarks Of GCC
 vs. Clang Built Kernels - Phoronix
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000866142059b1d1a3d"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TNhJtOqZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--000000000000866142059b1d1a3d
Content-Type: text/plain; charset="UTF-8"

https://www.phoronix.com/scan.php?page=article&item=linux-55-clang&num=1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DB8BEV1UTAobNhOCayqw-nN_60cp9YKiujfF5kiGAkBw%40mail.gmail.com.

--000000000000866142059b1d1a3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://www.phoronix.com/scan.php?page=3Dartic=
le&amp;item=3Dlinux-55-clang&amp;num=3D1">https://www.phoronix.com/scan.php=
?page=3Darticle&amp;item=3Dlinux-55-clang&amp;num=3D1</a>=C2=A0</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOd%3DB8BEV1UTAobNhOCayqw-nN_60cp9YKiujfF5=
kiGAkBw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DB8BEV1UTAobNhOCayqw-nN_=
60cp9YKiujfF5kiGAkBw%40mail.gmail.com</a>.<br />

--000000000000866142059b1d1a3d--
