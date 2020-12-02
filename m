Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJFSUD7AKGQE67XCSRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6972CC9CF
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 23:45:57 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id v13sf70435oos.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 14:45:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606949156; cv=pass;
        d=google.com; s=arc-20160816;
        b=E4Y+MiYa0dI+91b1Od+fRB0pW9E6pglc9P4hM2m00Qks8vIyHdFS+/OsMFbELb+4Wi
         hJbjfrSL27qJmnbTfZo86BgZ2gSIC71FXut1EGbY55fXCPwAr2b89WaFpvQua2FIOf+d
         MHdNCWFwZmJoGhbT3OGrgR/k3apsU1TbJcZyTzrNHgCU4RxK5/NP5NE9cbPGOlM0GYvD
         PcnvBTMsGGPsQj2I4xcnIjDncWcTGGdMhRvm400pxS9A2sBnSHFYys5+xYy7yxG2becR
         /t2oCaT1FNb3nBScb6cMRmHpm/RN+JHW7KHAo3n+5OET2hs/2VVcdc9GOV4iFhMYAXgQ
         a4EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=tV8wos02qHcaRC4WsK3TfK3VcwuVZIt5A1kDsMBKfVo=;
        b=frlqU4mzetd9OwQrKKO3VSr0Bd44mZxRV6WWFnjbfUoxWHNqBzfJDRq6S8D8WGA2IR
         YAGyETBDGmgix32iP+XhYRQCFir9V5wuEd0scfFnC24ngw1M1mMC1aFkDd4mEhPgla25
         6IpM7SUTGZgdWCRkDI3smlxccE09KwH5EPuh9KhqlGHesUqkmDhBQ+eja3jNlab22ubo
         kTrZTF4PMeKmUGLkRFRPxwES0bPORl5Jkclzvx5QM7VJGRfff0XiT676Zk5hNe86lG8p
         D3x+ogOE6WaoCOQi0ndy9v8am9iOJZ/7GWW8SRBq9wOIpz7RwtIpEGX0C9KLx47qJwe0
         XoQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Tpe/WLtn";
       spf=pass (google.com: domain of 3ixnixwwkaholbcqysjlgcpqemmejc.amk@maestro.bounces.google.com designates 2607:f8b0:4864:20::947 as permitted sender) smtp.mailfrom=3IxnIXwwKAHolbcqYsjlgcpqemmejc.amk@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tV8wos02qHcaRC4WsK3TfK3VcwuVZIt5A1kDsMBKfVo=;
        b=Qrjs89hU9n/svlcPkTTNiVdaI2t+Vbp4m3bcspRH8iL5k/b0Pr4kDsTcIL1e0NzT6/
         P1XFvOi1uNuoHxF1pzbe+FGYL/KbpK/ytjalAD+XnXGvg6bPK/cG07y3dvY4PcfGlhhI
         w/C+zACyt3wnFgsebBhoTrG/3Z1G2ROuAC5YRdCk2OCByycXjqyp42z3R9zpQ0lB7dc9
         3ELud1wlkshhhRWv9EahicJIbfG91kAzvlqCyLmwuX+5u3cM0JixhxfW6cI58uDcJeJB
         rBcznxSAYwLWjMgQeL3ANFx9dxBG7Kno3qlbsg6kCti58rdjsBJRvwEf91uWKAaE66Vq
         MRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tV8wos02qHcaRC4WsK3TfK3VcwuVZIt5A1kDsMBKfVo=;
        b=ieVdu5uwecjLg+vQOGnuiNzC585ShUiywxnfkSd7v/cYdozqDINsOdEdQ6kUjXUBdL
         7kUO5wlAh5kk5ryefyzmlu+ic2wg+YvItrbUk0SMfllSCDJM/px+MEajSuwKkiWyEofO
         oRWeIjxVShh+48z9ySbedZgpoNcnDeo3EJSqIwsPogxTdX9VuYSQhNbeh/4c+hRzFItP
         dKEDQN0Iw/9ixxvkImmX1GxA3gF66nVxQyK5y2oNl6a9jKU0u4n052A5+Wp6rSNfqR6u
         QXeFZlAPwy4ekExdh2RkrS9aXziNcBbCt2/XdLfjQ5XaatXRCW0d0vO9custMH5fSn08
         mY6w==
X-Gm-Message-State: AOAM530NLj79BOR2CD1C17dLk9XfFhKsU4f8XTdK2sK/qrP6I6HmhdmD
	0C24EDyam27pIHTkA7GhpC4=
X-Google-Smtp-Source: ABdhPJynU35UYI7097I2L4W7M88gMkSBVggnrYjGPE+ZJ29Vq7/4HLDDD3z69dhilhwRuV0SMjwdVw==
X-Received: by 2002:a9d:3a2:: with SMTP id f31mr101851otf.216.1606949156095;
        Wed, 02 Dec 2020 14:45:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8c3:: with SMTP id 61ls853241otf.6.gmail; Wed, 02 Dec
 2020 14:45:55 -0800 (PST)
X-Received: by 2002:a9d:7411:: with SMTP id n17mr91593otk.262.1606949155690;
        Wed, 02 Dec 2020 14:45:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606949155; cv=none;
        d=google.com; s=arc-20160816;
        b=AEKvc59Dsp6U2ZB4wgRJ64w+A0YXCeuT2RGVwKAMsQu64yEqhOpdNZDAjFSBCgSzkM
         xCVpD7FKp3RTWHK/DO9GA91n3xdFv7kQ+NurGn7ie42tFLVg1E5utF+9ZtK7Ga0oF+CK
         4PN+3iOBh+7VhpyKKquYfzqiHk7IEJuW6X/uKHqLT/BjDHUbXcjg5jdDC/FsuBUSdKAT
         S+zNAChunGr8Bmcp1sABXhGvxsC39V0mn9R8tqZdq2ZMRQkmNQ465GuZDvDdsL8nUAVF
         Eelz3KKIV5PeMZ3S16jH7wSbuRuPvNzbroUdfEf2cTop4Hc92Th6nfZy/cfxlniYdqzI
         n44w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=DZoa0MJDKZra+sydDWy8IngcpjcGZftVI58mdI8xYxE=;
        b=0NAu7SzzO6aDUYP3WnU3k3b6UKi0VN+TJLTxkRa0dBOC5GtZ1YFxkfKiQF+Xk8j6Rk
         hHWYQiql3Siz+0ZlAUwYay1vtJ15huE0CW/w8I5ciMnqt/Jr8NV7hq2zf4Rd9Uq+C6Uo
         Id551UrF6sQgZlY1088cUQ+BFLcex6QCeoSk8n+6dtMkubquJgp3QhNRgihbwDMK3sQe
         e0O2VKW0U9OKLG7DA42DKfnEVgxcg7WA1zCEq56xG4Oa3w4Pze4wcjJ1NErfWd8OfeZQ
         +ZChObto5XkSyumk1xKnkpovH7GywH6R4HbX4iwWn80MFFBfI0cQFN/36DeZLc2fqxG1
         z/0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Tpe/WLtn";
       spf=pass (google.com: domain of 3ixnixwwkaholbcqysjlgcpqemmejc.amk@maestro.bounces.google.com designates 2607:f8b0:4864:20::947 as permitted sender) smtp.mailfrom=3IxnIXwwKAHolbcqYsjlgcpqemmejc.amk@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x947.google.com (mail-ua1-x947.google.com. [2607:f8b0:4864:20::947])
        by gmr-mx.google.com with ESMTPS id w26si14887oih.1.2020.12.02.14.45.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 14:45:55 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ixnixwwkaholbcqysjlgcpqemmejc.amk@maestro.bounces.google.com designates 2607:f8b0:4864:20::947 as permitted sender) client-ip=2607:f8b0:4864:20::947;
Received: by mail-ua1-x947.google.com with SMTP id 89so18413uar.16
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 14:45:55 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:ab0:35fa:: with SMTP id w26mr407074uau.90.1606949155048;
 Wed, 02 Dec 2020 14:45:55 -0800 (PST)
Message-ID: <0000000000008f84b705b5830199@google.com>
Date: Wed, 02 Dec 2020 22:45:55 +0000
Subject: Clang-Built Linux Meeting Notes - Dec 1, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000008f84a605b5830196"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Tpe/WLtn";       spf=pass
 (google.com: domain of 3ixnixwwkaholbcqysjlgcpqemmejc.amk@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::947 as permitted sender) smtp.mailfrom=3IxnIXwwKAHolbcqYsjlgcpqemmejc.amk@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--0000000000008f84a605b5830196
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Dec 1, 2020
-----------

LLVM_IAS=3D1
.ascii directive almost ready to land https://reviews.llvm.org/D91460
Issue unwinding possibly due to ARMv8.3 PAC?
LTO v8 patches need help testing =20
https://lore.kernel.org/lkml/20201201213707.541432-1-samitolvanen@google.co=
m/
KernelCI reports are back now that orphan section warnings are fixed.
ld --cref, ClangBuildAnalyzer for dependency tracking
https://github.com/aras-p/ClangBuildAnalyzer
Arnd=E2=80=99s header changes speed up Clang builds significantly more than=
 GCC =20
builds. Needs to be rebased.
Tuxbuild github action demo: https://github.com/danrue/tuxbuild-demo
Tuxbuild testing sparc tinyconfig
Arnd recommends only focus on sparc64, not sparc32.
Nick emailed TravisCI about builds being offline since Nov 20.
%hh treewide cleanups for -Wformat. Clang-tidy for treewide cleanups?
https://github.com/ClangBuiltLinux/linux/issues/378#issuecomment-737539378
TODO(Nick): update DWARFv5 patches
Linaro Connect =E2=80=9821 March 23 virtual https://connect.linaro.org/cfp/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000008f84b705b5830199%40google.com.

--0000000000008f84a605b5830196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Dec 1, 2020<br /></h1><ul><li>LLVM_IAS=3D1</li><=
ul><li>.ascii directive almost ready to land <a href=3D'https://reviews.llv=
m.org/D91460'><span style=3D'text-decoration: underline'>https://reviews.ll=
vm.org/D91460</span></a> </li><li>Issue unwinding possibly due to ARMv8.3 P=
AC?</li></ul><li>LTO v8 patches need help testing <a href=3D'https://lore.k=
ernel.org/lkml/20201201213707.541432-1-samitolvanen@google.com/'><span styl=
e=3D'text-decoration: underline'>https://lore.kernel.org/lkml/2020120121370=
7.541432-1-samitolvanen@google.com/</span></a> </li><li>KernelCI reports ar=
e back now that orphan section warnings are fixed.</li><li>ld --cref, Clang=
BuildAnalyzer for dependency tracking</li><ul><li><a href=3D'https://github=
.com/aras-p/ClangBuildAnalyzer'><span style=3D'text-decoration: underline'>=
https://github.com/aras-p/ClangBuildAnalyzer</span></a> </li></ul><li>Arnd=
=E2=80=99s header changes speed up Clang builds significantly more than GCC=
 builds. Needs to be rebased.</li><li>Tuxbuild github action demo: <a href=
=3D'https://github.com/danrue/tuxbuild-demo'><span style=3D'text-decoration=
: underline'>https://github.com/danrue/tuxbuild-demo</span></a> </li><li>Tu=
xbuild testing sparc tinyconfig</li><ul><li>Arnd recommends only focus on s=
parc64, not sparc32.</li></ul><li>Nick emailed TravisCI about builds being =
offline since Nov 20.</li><li>%hh treewide cleanups for -Wformat. Clang-tid=
y for treewide cleanups?</li><ul><li><a href=3D'https://github.com/ClangBui=
ltLinux/linux/issues/378#issuecomment-737539378'><span style=3D'text-decora=
tion: underline'>https://github.com/ClangBuiltLinux/linux/issues/378#issuec=
omment-737539378</span></a> </li></ul><li>TODO(Nick): update DWARFv5 patche=
s</li><li>Linaro Connect =E2=80=9821 March 23 virtual <a href=3D'https://co=
nnect.linaro.org/cfp/'><span style=3D'text-decoration: underline'>https://c=
onnect.linaro.org/cfp/</span></a> </li></ul><br /><hr /><br />Sent by http:=
//go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000008f84b705b5830199%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000008f84b705b5830199%40google.com</a>.<br />

--0000000000008f84a605b5830196--
