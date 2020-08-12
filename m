Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU4M2H4QKGQEYC5LTUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 419DA242F7C
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 21:43:17 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id d1sf2367131pgn.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 12:43:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597261395; cv=pass;
        d=google.com; s=arc-20160816;
        b=pajRKk3N6c2ZBLKzR785E934APt8zbEKkA/EWMrJ3dH7VScSUjDDjvjhyCb59pzXJS
         0x2OI1QdSVBaGlJBey0bsGTvSfVm69jsBG0FSqO3XLXtAFkFIn9lUNfaJdHgXTftu13O
         HowvwklCGZ1oj/Kd8h7Nr8j+H/pi0cOpNXUCPDjhodRR3qd3AfMKIm5s1YTa3OjWUJM1
         QPxhxH+dE3eR2yWv34dYR2VBGXdIKQoJrLDFQHbOxoMk7s5o+qE6H1NyTweybfWfJsiQ
         PQTFkO0MmlnGORMfGC2+qxlIiHl/8O9ztI2JuNLhvka8OKIemrWwegI3rVtU6GWsp4yv
         y0Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=Nsam/tcIuOy51r2WxrnVGSStHaoiu2DZJtijloYeC0o=;
        b=amuAeRd4sTwhYqnY5MlU81r4wWDQnj6tlW4tR7W7g85vrN9OK8H4lcTof9ndiKJdqC
         AcCVDTg0xeSu531gr9QBOBshebdQprU1uGTfvgZjt3Y5kTxi+VskAImYoElklhs9kmCw
         Z7gFxJZTReMQXlehMLASltEKPQxbRmpnOEg1OaHTpfjYn8s6UbQ7KaR7QZtAk8rsqxct
         wuPX1GW0ETQqH3TZ2hkyRy6Owa3v3QvPMHgf0KBo8GVdKVCFJ6eNAA9X/LguBOEPcmjG
         rVKtMPFAUopPSWuzB8l2lvxzdq0DhWypAnoXP2xQ7ge2Mf45b086pBwUEr21QCNJm6u+
         iqgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NDtj3ktZ;
       spf=pass (google.com: domain of 3uky0xwwkak8csthpjacxtghvddvat.rdb@maestro.bounces.google.com designates 2607:f8b0:4864:20::148 as permitted sender) smtp.mailfrom=3UkY0XwwKAK8cSThPjacXTghVddVaT.Rdb@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Nsam/tcIuOy51r2WxrnVGSStHaoiu2DZJtijloYeC0o=;
        b=rNpztTaroRTzmOEPKH/3KOE4IiuGc6A+aFhjbfxyfllNWyrNA3WUYqsftOjNqIe2Cx
         AvSbWiXcr1EbA56jSvfpzi0F86Vs2OeD3XmZCtt+jW+bGSrSLcTpGWS91j71bVgj3q4I
         PUROo1Sqji+aK1Ru0kc3Ia8/g7h5KDGF+5ggkiUmv1XWN30p7kTX8Yrj3UpMYgfMEGhg
         hnFRmdGDMHpMlmO9NIJdBiRJVz+C8iV3DaVM5gPjTiqvtWnDrjrpEkscsHAAX3t0Hjmx
         8dnrAChDEma4JU4wTy1XZzwfWlKmWzup1FO76mRddoGP3RGxLMnRepOyrj3oibXwSfRT
         YUaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nsam/tcIuOy51r2WxrnVGSStHaoiu2DZJtijloYeC0o=;
        b=sdIH8lEnsljoGLGJzY7Zr8BLv1lOo7MNDEN0EHOtRZ/drNGGISGMTPcRbSqSITKQcB
         EJXHysdb12q/kGi3U09sivYKPZ+xBpMj5Fu0AF/f8oXXC4TFfi3tzrLU7B6IJEzCu1b2
         +85fIboTbG03t+/YrkNueufAURU5XKPiJGkHLjvdqkp0ro/3ZsQ3VUydzWtIPJf+2Crj
         CcdNu6KBn4Mx/9l3PjNvLwcQl5ePa7VcgrDWaJmxhP9YVWa9926JJyt9K+VuiMbVZNP7
         LvJ/j+9pEx4hM5P9CWFoEj1HT/+TZDF/3KH0jUZ9lpBnYzi7ksj4QuMSvhHYPqUmayq2
         vb9Q==
X-Gm-Message-State: AOAM530VtREfUVrAwseA+BWNK0ryYYOxJWZS/Ie7iO9TfrfRaCSa6gV0
	JsETJcJycibtY6VKT0doUug=
X-Google-Smtp-Source: ABdhPJzrz35xwLJjnzKXZlu05kE4Jd4WfwAMTvDR/6pva/QkT6vI7DR/HPT/ddyPayFgv74nRle3lg==
X-Received: by 2002:a62:36c4:: with SMTP id d187mr1013708pfa.86.1597261395664;
        Wed, 12 Aug 2020 12:43:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e0a:: with SMTP id z10ls1152865pfc.8.gmail; Wed, 12 Aug
 2020 12:43:15 -0700 (PDT)
X-Received: by 2002:a63:7802:: with SMTP id t2mr623776pgc.421.1597261395232;
        Wed, 12 Aug 2020 12:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597261395; cv=none;
        d=google.com; s=arc-20160816;
        b=LUN+p+/9be6t/Y/7+DLt8Yho6dn7edBivD8Yfjc7ch14M5DATG6A6hEaSSPztdLa/v
         e3lvIWIg4dNXQTZDfPnKyf3THJAwFbv1cxsavtsIo6Y3eTwrjt+Ijt9y1xxgg7dSuUNc
         PpjbptaxsHEUUVTwqsRKB7qogOr2InxWS0rq5rhVnVPIBNFxCC2hlKm6OrcmThBgx/do
         Z+aWymkmZUmNKRbMFphg2xvdLo/QnqhXpK30AwJH/lLWL7c3qwY/lv/XdPeYnPSt0rg7
         J/JofTRVdP/tdOKs6ZkHEgKf0ChCSS6A76z5kr8w8aXMPwC9eacpg+i0bZ6lsrMDKCsZ
         3Jbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=f/GgCGOiJcJPOc56QAjK1ar1Levk1Eq5C2KoLDtNi7A=;
        b=iQwFK0yLACy2QLpuzdeJtb9aQ05SWgX1C7D73jgYklQueJzcS7CGdvMJ7REvK5Y7wc
         oeZ6N/4DapFx2dbgk1Cpz+whNHkkr9TM0QBMJORNK7+fekGXAmJCVJnnVIBlUXNuxTE3
         LkYDMUfUV+jJc/+JUTlUx7kBazcgnpinzGRKWIdOGCjaO2+DvYyoWGe/2D4g62gI/Aaj
         N4zAQiimUKWNVTCc7dXVhQ/pLSPAu93Yt097Hwo+NNa4dWXgDstRxAh+hpINWp9iFh/W
         bTJJFFnLZIC3jCSEbX1O7X7kf/bvgjxoMIObKQ924CRUp2vu25Tcf3V79yPIWtE5init
         5lFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NDtj3ktZ;
       spf=pass (google.com: domain of 3uky0xwwkak8csthpjacxtghvddvat.rdb@maestro.bounces.google.com designates 2607:f8b0:4864:20::148 as permitted sender) smtp.mailfrom=3UkY0XwwKAK8cSThPjacXTghVddVaT.Rdb@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com. [2607:f8b0:4864:20::148])
        by gmr-mx.google.com with ESMTPS id ls7si184544pjb.2.2020.08.12.12.43.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 12:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uky0xwwkak8csthpjacxtghvddvat.rdb@maestro.bounces.google.com designates 2607:f8b0:4864:20::148 as permitted sender) client-ip=2607:f8b0:4864:20::148;
Received: by mail-il1-x148.google.com with SMTP id a17so2532734ilb.21
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 12:43:15 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:994e:: with SMTP id p75mr1066910ili.253.1597261394509;
 Wed, 12 Aug 2020 12:43:14 -0700 (PDT)
Message-ID: <00000000000008f6bc05acb36684@google.com>
Date: Wed, 12 Aug 2020 19:43:14 +0000
Subject: Clang-Built Linux Meeting Notes - Aug 12, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000008f6a905acb36681"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NDtj3ktZ;       spf=pass
 (google.com: domain of 3uky0xwwkak8csthpjacxtghvddvat.rdb@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::148 as permitted sender) smtp.mailfrom=3UkY0XwwKAK8cSThPjacXTghVddVaT.Rdb@maestro.bounces.google.com;
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

--00000000000008f6a905acb36681
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Aug 12, 2020
------------

Plumbers
Tentatively Thursday Aug 27 7am PDT
This is still subject to change
11 talks proposed; likely will cut this down and publish the MC soon.
BoF proposed in addition to MC, both accepted.
i386 now buildable+bootable as of 5.9!
https://github.com/ClangBuiltLinux/linux/issues/194
-Wa,-mrelax-relocations=no related boot failures on x86_64
https://github.com/ClangBuiltLinux/linux/issues/1121
Performance wins targeting x86_64
https://reviews.llvm.org/D85257
https://reviews.llvm.org/D85807
Clang-tidy / clang-build patches
https://lore.kernel.org/lkml/20200812173958.2307251-1-masahiroy@kernel.org/T/#t
S390
Issues:  
https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BARCH%5D+s390%22
CI: https://github.com/ClangBuiltLinux/continuous-integration/issues/232
Dropped buildroot support:  
https://github.com/buildroot/buildroot/commit/b24c3215c13b0f25979c744af4b2e58359b5723b
Initial build in CI:  
https://github.com/ClangBuiltLinux/continuous-integration/pull/229
Fixed: https://github.com/ClangBuiltLinux/continuous-integration/issues/152
Linuxone community cloud:  
https://developer.ibm.com/components/ibm-linuxone/gettingstarted/
Preferred to trying to get a machine for development.
KernelCI has debootstrap images we might be able to use instead of  
buildroot.
Thanks for guests Ulrich Weigand, Vasily Gorbik, and Ilya Leoshkevich (all  
from IBM in Germany) for attending and support.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000008f6bc05acb36684%40google.com.

--00000000000008f6a905acb36681
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Aug 12, 2020<br /></h1><ul><li>Plumbers</li><ul>=
<li>Tentatively Thursday Aug 27 7am PDT</li><ul><li>This is still subject t=
o change</li></ul><li>11 talks proposed; likely will cut this down and publ=
ish the MC soon.</li><li>BoF proposed in addition to MC, both accepted.</li=
></ul><li>i386 now buildable+bootable as of 5.9!</li><ul><li><a href=3D'htt=
ps://github.com/ClangBuiltLinux/linux/issues/194'><span style=3D'text-decor=
ation: underline'>https://github.com/ClangBuiltLinux/linux/issues/194</span=
></a> </li></ul><li>-Wa,-mrelax-relocations=3Dno related boot failures on x=
86_64</li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issue=
s/1121'><span style=3D'text-decoration: underline'>https://github.com/Clang=
BuiltLinux/linux/issues/1121</span></a> </li></ul><li>Performance wins targ=
eting x86_64</li><ul><li><a href=3D'https://reviews.llvm.org/D85257'><span =
style=3D'text-decoration: underline'>https://reviews.llvm.org/D85257</span>=
</a> </li><li><a href=3D'https://reviews.llvm.org/D85807'><span style=3D'te=
xt-decoration: underline'>https://reviews.llvm.org/D85807</span></a> </li><=
/ul><li>Clang-tidy / clang-build patches</li><ul><li><a href=3D'https://lor=
e.kernel.org/lkml/20200812173958.2307251-1-masahiroy@kernel.org/T/#t'><span=
 style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/20200812=
173958.2307251-1-masahiroy@kernel.org/T/#t</span></a> </li></ul><li>S390</l=
i><ul><li>Issues: <a href=3D'https://github.com/ClangBuiltLinux/linux/issue=
s?q=3Dis%3Aopen+is%3Aissue+label%3A%22%5BARCH%5D+s390%22'><span style=3D'te=
xt-decoration: underline'>https://github.com/ClangBuiltLinux/linux/issues?q=
=3Dis%3Aopen+is%3Aissue+label%3A%22%5BARCH%5D+s390%22</span></a> </li><li>C=
I: <a href=3D'https://github.com/ClangBuiltLinux/continuous-integration/iss=
ues/232'><span style=3D'text-decoration: underline'>https://github.com/Clan=
gBuiltLinux/continuous-integration/issues/232</span></a> </li><li>Dropped b=
uildroot support: <a href=3D'https://github.com/buildroot/buildroot/commit/=
b24c3215c13b0f25979c744af4b2e58359b5723b'><span style=3D'text-decoration: u=
nderline'>https://github.com/buildroot/buildroot/commit/b24c3215c13b0f25979=
c744af4b2e58359b5723b</span></a> </li><li>Initial build in CI: <a href=3D'h=
ttps://github.com/ClangBuiltLinux/continuous-integration/pull/229'><span st=
yle=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/conti=
nuous-integration/pull/229</span></a> </li><ul><li>Fixed: <a href=3D'https:=
//github.com/ClangBuiltLinux/continuous-integration/issues/152'><span style=
=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/continuo=
us-integration/issues/152</span></a> </li></ul><li>Linuxone community cloud=
: <a href=3D'https://developer.ibm.com/components/ibm-linuxone/gettingstart=
ed/'><span style=3D'text-decoration: underline'>https://developer.ibm.com/c=
omponents/ibm-linuxone/gettingstarted/</span></a> </li><ul><li>Preferred to=
 trying to get a machine for development.</li></ul><li>KernelCI has deboots=
trap images we might be able to use instead of buildroot.</li><li>Thanks fo=
r guests Ulrich Weigand, Vasily Gorbik, and Ilya Leoshkevich (all from IBM =
in Germany) for attending and support.</li></ul></ul><br /><hr /><br />Sent=
 by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/00000000000008f6bc05acb36684%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/00000000000008f6bc05acb36684%40google.com</a>.<br />

--00000000000008f6a905acb36681--
