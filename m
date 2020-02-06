Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJGF6DYQKGQEOYR3QRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id ED267154620
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 15:28:53 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id e15sf1537796ybc.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 06:28:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580999333; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgDELXPentEuOlOWJxFHRVjkM2LtJh+6c8O2FpKJvLwFgibe22VP/yJNfmXxysW2n7
         zUZYR9MYU9yEmBuYS/fTY8i9oYeLyhX+pM0TUxT4dRmPqthGN4TnrJJn08gK8MzqdXnU
         ebQ+X6t8rMCl2t12mJOGUCaGL4pKMibvnu5AGIIrQdfBoQPGrpsHgjKVHMtgNiSjzDJh
         81vAuowMbEgaEAq+KdcJEk3Gf+nAcgzlr00kTpyh7uYY3An/u2rDU8zplzchD7jYuoqP
         PHTA45Tncc+kpVX2gEusCzZgd74cHn5urvERw3Z8qkBtrJKIN3kVMXSlaH5hgpoheT5c
         L1hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=uPrbmR7zItki1nhvYjzao7pmwc4RPuMctzocTll3R+o=;
        b=JTLIM6Lq+7zrju6hDy23i7z62KjEApZWAxLVumdrF6dS0UcSn7gVibU1T1e0IjLalQ
         5CSXi+5zpAqjRerWhh8p3bQI5M9Ras57+8nAsgVDpvZH7Bj5ndhpZLj7ND20HvsnXZzn
         cnm1J7q0wdWDr79aQlUXkKaN1MRhwYdHYNByu8a7duDczzajbkjE0bOaT94Gk5lyzZX0
         gfOJurhHwe17z98FYaDUyLdDtsR7jbiinIUg60wbx0HvPNW9mgPyyYhYY28bEVKnOHT9
         xxsabUX+ZzbdY0lwi74k7Dz0O+Djy0EoViCsnHwVP6Uewb88HJ/zVP7dvD67wxIQAmUy
         Gv3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m1XTEbvt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPrbmR7zItki1nhvYjzao7pmwc4RPuMctzocTll3R+o=;
        b=Mw+a/yVSP8czt7d7R9+mNNZ10ugyJfeaHiRZdVPWIWBQoptRh9QvbXgfmGzsDXv391
         COMR8mzwCoPdr5ugUNFmvV5tWJhfKTay4Etnje5VbXxUWb6PDG2t6BGcAp8v/WzoL3+l
         vyxgFVPixHu03RS/qfBW72K40AZN2BZr0qyeWuUawyUoYEV3MQ1p1a3+Tn3jjKEbx7cs
         QTd4C4lUa0VmlAWqXfv4ay7dVkqwV0nocT+vvfPaOFCXalDL2Bo1pAUyykcLn99XXyoH
         h3iMBi2A5cZYpTMEAItBCTpQW78gNxr0WjWFq/M6cOhcNfscKSAqruPZGMsAajT8SJj3
         TLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPrbmR7zItki1nhvYjzao7pmwc4RPuMctzocTll3R+o=;
        b=LuwMLL87YxPi39OtTYbId7J+P2rNDz1VrMiy1qsyzKzOqfJoDkhXBfs7c6/yZuTj7l
         BMMyFEhvBpuD+05lZiBYvT7L5hJCmbDg9apzsAn87yuA+ovZ7XSb1oBIHEyOYEGvH23J
         YqCMWRiE5FdnzqKmTaYP0gSFB4pHXwul77NeIlsr02vaSrS5BhtXYQtK3mzQD0+FKx4d
         CCqOiYKL4z9TAH0gWJoHzvxUC4tNNwdE2Uc6AlAJ50frIIIqf8X5qpGeL+EJhaQ0EZcp
         fi7qynCq+O27Sx4uIsAmNZSJeGFEOT2zZ41ykBmItCjpP8Cm/VppHI8NaLaBS8+TqNZE
         lzlA==
X-Gm-Message-State: APjAAAXkB9CWTzpMoeCl/RCas3iPR4Ba7we4jljkIK5DcS36K+Au0NqK
	FNlM7czwlPn/DpjNqY+i15c=
X-Google-Smtp-Source: APXvYqz55pjiwAi7U40Y2vFtXA8YLHVBc2EXgKhtrfKBL/B1PMYAdcwktdDb0dMjAAbcBuf3F+Ltvw==
X-Received: by 2002:a25:283:: with SMTP id 125mr3182535ybc.263.1580999332761;
        Thu, 06 Feb 2020 06:28:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4ed5:: with SMTP id c204ls1481993ywb.6.gmail; Thu, 06
 Feb 2020 06:28:52 -0800 (PST)
X-Received: by 2002:a81:4b10:: with SMTP id y16mr3624376ywa.226.1580999332409;
        Thu, 06 Feb 2020 06:28:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580999332; cv=none;
        d=google.com; s=arc-20160816;
        b=iLpG61uwLovf+eH/4FXopXHUCW29zTlvfhzzw7BfGZc6N3lvs6s123MFkNG1NA+qcA
         HB1QRjSRH9ud88IEB1bbdjiEcJu6vDCV1sIGB6iZUGzoABJx+jxCTnCeLeulOEeV9B3a
         uPCRrl1llAKZzyqmViEjeSlaqoDDSLY3jKZzMilEuMo8Sh6Aqf8xjVyKA+NwNHuxP3+d
         r+5+4I4H2MBEo24E/M+fKfivU3kptzoPDZ7MuXG9g4qnG3vQUQgtvObZapc9Nhr4xSP2
         OUYKBm+CQoGYtXodoxlDJ1ohR8m3QZSZvL1eow39eOp3dAjvXM5PHk7vpcQFizc4q1AN
         guvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=jQrTQrmP8rpA2a7gna099wlgdAZDIjX+9yBJT3CxYUQ=;
        b=DKXRWMtkDxQIHJ3EMZ8Gc2FGPsYNMO2PSzklV7g+b5oDyd28ryuscJe+myarBrYXJ6
         sRHtnZEyKNMfJ/LRoUUX07sp4tEtg7EJUVkBqqwHmV3ufxXwcyCqQ1owq28CmJCg1sao
         jfQUePicLCPIP4Bk81SXpDxadRtAbcgt0uNHXn9fRb9E8Hemi8rLIYPC+pqYylbN3c5k
         psTp/dC/wD0vjJVfyP6+jgjnacpPFeSMNl4W03LhxiSHrlmlkwEnTD75nvDhJyDQggat
         cUumjYlNdjs6WAW3YoGrt+5432bbvCpCPIG+OyfOo70WcNJpahrUj4rGM0yEl7rpWTlS
         VC7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m1XTEbvt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id i200si210370ywa.3.2020.02.06.06.28.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 06:28:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id z124so2823568pgb.13
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 06:28:52 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr3765004pgk.381.1580999330934;
 Thu, 06 Feb 2020 06:28:50 -0800 (PST)
MIME-Version: 1.0
References: <0=c1d84c67e4167b8e84c831ed50b3e9e2=8b0139fa515c87fa6c9566fd18e81848=chromium@monorail-prod.appspotmail.com>
 <0000000000003d02bb059de8c17b@google.com>
In-Reply-To: <0000000000003d02bb059de8c17b@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 Feb 2020 14:28:37 +0000
Message-ID: <CAKwvOdmHRV2GAqkrGF6Q+VX0ZgqYUEMpF1MqtpadvFtMLtDrfw@mail.gmail.com>
Subject: Fwd: Issue 1012064 in chromium: Switch Linux kernels to build with
 LLD linker
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000083207a059de917c5"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m1XTEbvt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

--00000000000083207a059de917c5
Content-Type: text/plain; charset="UTF-8"

Congrats Manoj and CrOS!

---------- Forwarded message ---------
From: bugdroid via monorail <monorail+v2.3779532838@chromium.org>
Date: Thu, Feb 6, 2020, 2:04 PM
Subject: Issue 1012064 in chromium: Switch Linux kernels to build with LLD
linker
To: <ndesaulniers@google.com>



Comment #19 on issue 1012064 by bugdroid: Switch Linux kernels to build
with LLD linker
https://bugs.chromium.org/p/chromium/issues/detail?id=1012064#c19

The following revision refers to this bug:
https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/3e2f99bc137768226ae64c12ebb880afe0676e82

commit 3e2f99bc137768226ae64c12ebb880afe0676e82
Author: Manoj Gupta <manojgupta@google.com>
Date: Thu Feb 06 14:00:56 2020

cros-kernel2: make LLD as default linker.

Make LLD as the default link for Chrome OS kernels.
The switch excludes ARM32 boards (CL:2036320 and bug 1020633).

BUG=chromium:1012064
TEST=cq passed

Cq-Depend: chromium:2036320
Change-Id: I25dd4f983fe05b0b7644dabef4b3d59a35ea8f5c
Reviewed-on:
https://chromium-review.googlesource.com/c/chromiumos/overlays/chromiumos-overlay/+/1893724
Tested-by: Manoj Gupta <manojgupta@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Commit-Queue: Manoj Gupta <manojgupta@chromium.org>

[modify]
https://crrev.com/3e2f99bc137768226ae64c12ebb880afe0676e82/eclass/cros-kernel2.eclass

-- 
You received this message because:
1. You were specifically CC'd on the issue

You may adjust your notification preferences at:
https://bugs.chromium.org/hosting/settings

Reply to this email to add a comment or make updates.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmHRV2GAqkrGF6Q%2BVX0ZgqYUEMpF1MqtpadvFtMLtDrfw%40mail.gmail.com.

--00000000000083207a059de917c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Congrats Manoj and CrOS!</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ----=
-----<br>From: <strong class=3D"gmail_sendername" dir=3D"auto">bugdroid via=
 monorail</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:monorail%2Bv2.3=
779532838@chromium.org">monorail+v2.3779532838@chromium.org</a>&gt;</span><=
br>Date: Thu, Feb 6, 2020, 2:04 PM<br>Subject: Issue 1012064 in chromium: S=
witch Linux kernels to build with LLD linker<br>To:  &lt;<a href=3D"mailto:=
ndesaulniers@google.com">ndesaulniers@google.com</a>&gt;<br></div><br><br>

<div>


<div style=3D"font-family:arial,sans-serif;white-space:pre-wrap"><br>Commen=
t #19 on issue 1012064 by bugdroid: Switch Linux kernels to build with LLD =
linker<br><a href=3D"https://bugs.chromium.org/p/chromium/issues/detail?id=
=3D1012064#c19" target=3D"_blank" rel=3D"noreferrer">https://bugs.chromium.=
org/p/chromium/issues/detail?id=3D1012064#c19</a><br><br>The following revi=
sion refers to this bug:<br>  <a href=3D"https://chromium.googlesource.com/=
chromiumos/overlays/chromiumos-overlay/+/3e2f99bc137768226ae64c12ebb880afe0=
676e82" target=3D"_blank" rel=3D"noreferrer">https://chromium.googlesource.=
com/chromiumos/overlays/chromiumos-overlay/+/3e2f99bc137768226ae64c12ebb880=
afe0676e82</a><br><br>commit 3e2f99bc137768226ae64c12ebb880afe0676e82<br>Au=
thor: Manoj Gupta &lt;<a href=3D"mailto:manojgupta@google.com" target=3D"_b=
lank" rel=3D"noreferrer">manojgupta@google.com</a>&gt;<br>Date: Thu Feb 06 =
14:00:56 2020<br><br>cros-kernel2: make LLD as default linker.<br><br>Make =
LLD as the default link for Chrome OS kernels.<br>The switch excludes ARM32=
 boards (CL:2036320 and bug 1020633).<br><br>BUG=3Dchromium:1012064<br>TEST=
=3Dcq passed<br><br>Cq-Depend: chromium:2036320<br>Change-Id: I25dd4f983fe0=
5b0b7644dabef4b3d59a35ea8f5c<br>Reviewed-on: <a href=3D"https://chromium-re=
view.googlesource.com/c/chromiumos/overlays/chromiumos-overlay/+/1893724" t=
arget=3D"_blank" rel=3D"noreferrer">https://chromium-review.googlesource.co=
m/c/chromiumos/overlays/chromiumos-overlay/+/1893724</a><br>Tested-by: Mano=
j Gupta &lt;<a href=3D"mailto:manojgupta@chromium.org" target=3D"_blank" re=
l=3D"noreferrer">manojgupta@chromium.org</a>&gt;<br>Reviewed-by: Douglas An=
derson &lt;<a href=3D"mailto:dianders@chromium.org" target=3D"_blank" rel=
=3D"noreferrer">dianders@chromium.org</a>&gt;<br>Commit-Queue: Manoj Gupta =
&lt;<a href=3D"mailto:manojgupta@chromium.org" target=3D"_blank" rel=3D"nor=
eferrer">manojgupta@chromium.org</a>&gt;<br><br>[modify] <a href=3D"https:/=
/crrev.com/3e2f99bc137768226ae64c12ebb880afe0676e82/eclass/cros-kernel2.ecl=
ass" target=3D"_blank" rel=3D"noreferrer">https://crrev.com/3e2f99bc1377682=
26ae64c12ebb880afe0676e82/eclass/cros-kernel2.eclass</a><br><br>-- <br>You =
received this message because:<br>  1. You were specifically CC&#39;d on th=
e issue<br><br>You may adjust your notification preferences at:<br><a href=
=3D"https://bugs.chromium.org/hosting/settings" target=3D"_blank" rel=3D"no=
referrer">https://bugs.chromium.org/hosting/settings</a><br><br>Reply to th=
is email to add a comment or make updates.</div>
</div>

</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdmHRV2GAqkrGF6Q%2BVX0ZgqYUEMpF1MqtpadvFt=
MLtDrfw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAKwvOdmHRV2GAqkrGF6Q%2BVX0ZgqYUE=
MpF1MqtpadvFtMLtDrfw%40mail.gmail.com</a>.<br />

--00000000000083207a059de917c5--
