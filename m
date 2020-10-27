Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBGHK3X6AKGQED4IEPFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id D46FC29A219
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:17:13 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id e10sf7160931ioq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:17:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603761433; cv=pass;
        d=google.com; s=arc-20160816;
        b=0s2o3aDAqAaaflejIuu7QTF/6DlJ+PB1YUlRyEBh6sKPGwRoovEJIEE3Q0nFYegbei
         suwjao4jrH9HLAj+YBzLe78p0PEqUsUaUH3d5Irti8zi8gfenrn2DMcoEbgJQG3s2Xhz
         AxP7MnGW8OK7twJfOEYBAh1Hn5d2EEegBuSfnEJ7jtWc0LT5exmfBTU8SzsvXU+aTbP9
         j4AJ7EIbDpE5htsTXpG5M1PoUbckTn5PbsQIVoDS5qQkYFx/2pM2y/eu5ylEaTjB4bxr
         KHv7n1BOqMuUSOf/ZTftPAOTE1Vrv26t6QpzaY29qgEtZ/k/fqeaT2FW3tsblsmI4TDj
         Tm5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=ZcmvqS/kviGGeR+yazzbpd2ztqWXeUeEwLlUhAYFlVc=;
        b=YApTrivdXrMblzTcs2Cjdm2sTwjuJ4O4kNz2FNtAN1wOnfNsonPTOQnppUWQFUr+aY
         1tqpCJkYzm4KaJ/gQ1XnszwAjh72RQ3HS5A2YKkW1RGyMK5mRp5P5aSmKukW8GNstBPp
         x+mOAHQfi4Nf9j2UWBoPCUJ5HSX6Qv+vt3c+iQiehxaVoC4+0EAotbHophzwc8KqfBhE
         BtZXW/hIDJCdKFjEDcfFXBcPOTAs5sVPfHb0m3jr5Thdv3rMjYXtGNftNvk1cKPHLmKE
         SXr09Z8FLMstcjIC3EIx4IjCkk8GnZY5xPDFTGtQOuFwZgxE8i36AVJfXLsROA2i/Nw+
         8JXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YjLAjBz0;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZcmvqS/kviGGeR+yazzbpd2ztqWXeUeEwLlUhAYFlVc=;
        b=enTgUv51P0RO48Fqrz9WxMRQz5ftk+sZ2AeuPdGo9UKE9tjOmRb7iE9hQ+WY1SEgeY
         7Rz8Qy3642se22SQcLJ+LoGB5v2HwLSUddtYX3q68g+5QgRVe1SAUZzO8FjH5Sba5qgC
         8YOuWYiv6ZxUcvNF4/aoWwnZ70HIYgZH/ZSBPA9RXPKcvGsY0URwRZEy6Bt0GPgjYODT
         s/ySIdq8zxpC5Of/aufr4hwIuQ3qWlNOM6GdcWqrPrCbJKDpRrUi8bjcEBLt9pJM1vMs
         rNV35sp33DTjB36zG5WbYcUmhZbYf/jySxC/71Fv0rSvFrXh5miEZK8QRXbUgwZ3lejt
         6sIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZcmvqS/kviGGeR+yazzbpd2ztqWXeUeEwLlUhAYFlVc=;
        b=TdVwwFAx1CLRb4ToHQnzNMXQ46M5l3fhLQoJqP60ZZnSFe67OmEdWSmU05I2gUMKg2
         8g0AmgqFu8g2LiZvOhk0+diHRzOD+x0oryqZYOmwAFhNAh1D7DiFUtKrgPXWCvKAnL+9
         7UBlX/RevypL3eW/U8q+wFsPjg3FMIs1ePg+sdj+2C8+kDzhH7C58oBajeHSgkavatFa
         4zAlxSWVFjt1ROhj41M7iL5K+9H+cYxg5CxILAbCYrc6Saounqdym9bclaVZ5iYdCTmR
         nN1c55CD9LLv/kzdsdoT93dadqAdXiaRFukQdW1f5bn/H2fvn60wsYn+U2pNtSxxC1hW
         /9SQ==
X-Gm-Message-State: AOAM530aLJ294vxvHDeUMQrXm7KCKYN9KDMBYXkslJLDKCODNS/XlWmf
	zVGvFIqYEEPebRB7HxiGwf0=
X-Google-Smtp-Source: ABdhPJxUs2W3vcDtqmFXKmxr7QBYJNTYDQFIMwMk0MsH7C/yDqAqeUGv2FjR3FyjJNGBJBipgSxSSw==
X-Received: by 2002:a02:1401:: with SMTP id 1mr25113jag.9.1603761432870;
        Mon, 26 Oct 2020 18:17:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:6612:: with SMTP id a18ls2367ilc.7.gmail; Mon, 26 Oct
 2020 18:17:12 -0700 (PDT)
X-Received: by 2002:a92:8e11:: with SMTP id c17mr3511171ild.238.1603761432525;
        Mon, 26 Oct 2020 18:17:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603761432; cv=none;
        d=google.com; s=arc-20160816;
        b=UgtUBkWcuWkSJD6u23eYrpyqhX/CDVeFUXsRBnK2evZcYzzaxyk5WXI1UWB30HOrNy
         wCdrmA7foYRZm6XfxFwVR7xKS5AFuJVGscDRtW26wy8kJmYQ/iWaqD3AAdK1xn80+w5F
         qfbQB/hb32pjlCG/tOprj63q1XgYv7BF0BP4nWDr8KMp5mB14e7tsGKklC21GpxJDb6K
         clYu/VcPdxtFPPiG/aDVumEIZ0Hs31sYoj+L/NEtxsMCaHmr0d0LGJGmxb2G5Q2tgYC+
         FVe09iwG6C13G8h/6jJxONfA1siQQcNaCszh9ZBKzNNFP2tDEbVfGnKd901Mi1FA8TfE
         2IoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=a3q09UVNouAT996dSAGiMi//ABSqRQY+NRpwYNh5vWg=;
        b=OeQ4A/jA1HcsWZVvYetQkWr9L6qhD8WiHiPgGl7bVNPzPrrfAfJFZgWSj/xMANQLo1
         mfznsnXIFyAaLMzJ72PCFvzMJFhLK2AysUEyv7UUGUN5yz7z5/dk8ju77SejUrcjvGFW
         V+zxHtYDJ92Vs5OXrhTqtOiMlABNvUEh0Fi/STEyoCM2sdpMoR+7WFCgayX6HkPzUHs1
         Nh1ccI+R/Zt53vpk+CNuPvyirmytX2KMYuvq2DoXXH4n9fcfe3SdBmpJVsD1wPq9MUOS
         DH3PGMRa+mbImUilfpoMNLhRcpe+mGV++7Ol9fFAxJZP8fJejHRGFHHN77H0RQbWw/jJ
         2LOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YjLAjBz0;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id b21si694iow.3.2020.10.26.18.17.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:17:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id c20so7209560pfr.8
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 18:17:12 -0700 (PDT)
X-Received: by 2002:a62:1755:0:b029:163:d3e0:ca57 with SMTP id
 82-20020a6217550000b0290163d3e0ca57mr453799pfx.36.1603761431627; Mon, 26 Oct
 2020 18:17:11 -0700 (PDT)
MIME-Version: 1.0
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Oct 2020 18:17:00 -0700
Message-ID: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
Subject: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, arnd@arndb.de
Content-Type: multipart/alternative; boundary="000000000000706c2405b29cce83"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YjLAjBz0;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000706c2405b29cce83
Content-Type: text/plain; charset="UTF-8"

Hello,

I am working on assembling kernel 5.4 with LLVM's integrated assembler on
ChromeOS, and the following patch is required to make it work. Would you
please consider backporting it to 5.4?


commit 44623b2818f4a442726639572f44fd9b6d0ef68c
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Wed May 27 16:17:40 2020 +0200

    crypto: x86/crc32c - fix building with clang ias

Link:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=44623b2818f4a442726639572f44fd9b6d0ef68c


Thanks,
Jian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLXnxcf%3DbTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ%40mail.gmail.com.

--000000000000706c2405b29cce83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<div><br></div><div>I am working on assembling =
kernel=C2=A0<span class=3D"gmail-il">5.4</span>=C2=A0with LLVM&#39;s integr=
ated assembler on ChromeOS, and the following patch is=C2=A0required to mak=
e it work. Would you please consider backporting it to=C2=A05.4?</div><div>=
<br></div><div><br></div><div>commit 44623b2818f4a442726639572f44fd9b6d0ef6=
8c<br>Author: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de">arnd@arndb=
.de</a>&gt;<br>Date: =C2=A0 Wed May 27 16:17:40 2020 +0200<br><br>=C2=A0 =
=C2=A0 crypto: x86/crc32c - fix building with clang ias<br></div><div><br><=
/div><div>Link: <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/=
torvalds/linux.git/commit/?id=3D44623b2818f4a442726639572f44fd9b6d0ef68c">h=
ttps://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?i=
d=3D44623b2818f4a442726639572f44fd9b6d0ef68c</a><br></div><div><br></div><d=
iv></div><div><br></div><div>Thanks,</div><div>Jian</div></div><div><br></d=
iv><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLLXnxcf%3DbTazCT1amY7B4_37HTEXL2OwHowV=
GCb8SLSQQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLXnxcf%3DbTazCT1amY7B4=
_37HTEXL2OwHowVGCb8SLSQQ%40mail.gmail.com</a>.<br />

--000000000000706c2405b29cce83--
