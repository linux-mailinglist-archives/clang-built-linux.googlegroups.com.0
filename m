Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBNWR32AKGQEBKVSGQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id A84ED199F27
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 21:33:26 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id c33sf18703371pgl.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 12:33:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585683205; cv=pass;
        d=google.com; s=arc-20160816;
        b=TPw9YgsYGVnOKfceBYC763zH0tTqJT+W2CIONJHGvx0CV/wj4DGugcbXZZ9BV1iSSg
         LDhImiiQCi1ftzNtAZKsgSDee/GKSvFg1I44UO17zO0gXAPDWr08HbkUqmxRoMWTZUNJ
         dw2HsDNoZ/7Mk0RzUtiCqGx0x7rbUxVIv4RYBNv252k5/Pd6Eqd+9eOhUVitrTGyO7TW
         /xuTOWHAQMT0yFK3Gy5aNSNXinvz28KaQqeuU/Bo2lC0uMFmeuEfma/9aSYxhQjdFr8q
         GP2lN0oomGYbr3XqbTu3qfLD0h9QwC1suRBLQJeY0IDOTZC1/NiNevdKVrbOaSnHnyz/
         axPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=QaCcL6nPkFoamYgWp70EDR2k+MnVLhEJVLHxkAdi9LI=;
        b=XCifkfLg+sI+rEe6FSiV681gUbuY0j83UdtgW1BbeuXwRdBVNaWDgBeviCdxBP/gOr
         yXEVfeWUdSHsplALput/4v1H982dUCsnIo++58USmCdnLlzYLLPcFY+YPzbH55txWsgH
         kq2vXGRxg2L5dOs527AA9lOUmxSnUEd7w4A+c6YX+BIdkKx1DmxiG1Z8v0SEPskLVtvk
         sfsfx3VfSrYFWMwRR8I+Y1wdPMqfvkNZatr5Rk3nVONLBDcRS9xsp8n4tVOPg31U86VA
         POtuWCbSOuuxuEcJ5ozwDZSCEaTqj7FFDFs9yvLg0m+UY5PNAl7727arMIFTwi+75IyL
         B0Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lmVjzekn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QaCcL6nPkFoamYgWp70EDR2k+MnVLhEJVLHxkAdi9LI=;
        b=MskgM85V416H/qeGn4dYw0SyhSyWDwpsWwfMpVexBokQGXRQcDvVel9YKQ7ks9dPb0
         puLQvdzOTfLd5zaG1PCB1DTq0i1gcQwNNI6Y3lfD/C9QotjiSVTkV4ZJt4MF9G1AIs2b
         UyH+mB732UvbPQ3NjEde6rn65TwcZ903o/0CpRgTJUlq5vzTWxOvCHvB6fe5/oFNBc43
         etfVVJ777xrpSHLMvuU6iGtlYZDrp/3ThhgvE4s74j8T+oso3B4QD3Jl8tgrk93W7Goz
         xFNxmfXjLpOS0i48M7DTMC/Tir3xovsvLYJvuSA4MMVq9maZX/boZZuMav5+MIKOZVR2
         7jMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QaCcL6nPkFoamYgWp70EDR2k+MnVLhEJVLHxkAdi9LI=;
        b=mcsauBCI4BaefTTiIe6T2pXatX3wC7zSz54Ri95b3Xv1I03AL9NMtZ9kqT4TmSnAE6
         cq5LUAxQONzVqmC4it0bauZthyr8DkGBTMzJDZActqIEzNnmyFC4wgmRo5aIbD3Mjokm
         xrZtoIrsVnvXOg6fhxGgVvIuUp9WzexrBTn2lk6rNvTmV5rQa7/0/zLRvlh8k7cj1Vqx
         v+34ni3A3xAUOsuGCF2XIE9tjAr/JYVag/3ls1NLjH80AtO4UW/ZNjMWEJzVhNajGuc9
         BXGzY9uS9mt0n/0NiIfpbTDrHHBPBt+OsqpTqlf4M/yDGuApaoHCiSC99qa38WNOU7uN
         IXAw==
X-Gm-Message-State: ANhLgQ3DKH2cWIS02wHBUgaHJdN0fIL2MZZ5h41D5kBp2GuusHvkRJi4
	n85WZLkk+TKOZbKnVDBvvBw=
X-Google-Smtp-Source: ADFU+vvaTK7REXQFBaMFD/XpCFmK2cReSMRCni20PPMd2Prc0VZlc8BwgNJP9v5UuZRjJAsn7AIOvw==
X-Received: by 2002:a63:1660:: with SMTP id 32mr18889136pgw.169.1585683205377;
        Tue, 31 Mar 2020 12:33:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls14376704pgh.7.gmail; Tue, 31 Mar
 2020 12:33:24 -0700 (PDT)
X-Received: by 2002:a63:cf4a:: with SMTP id b10mr19412629pgj.354.1585683204650;
        Tue, 31 Mar 2020 12:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585683204; cv=none;
        d=google.com; s=arc-20160816;
        b=S52KzT7Z6bd64x3eKjugU6RAB7l3ZxUvbVxZmljIybIqArOoz4Xs+0u7Uhrq61qUo+
         8y2cKKt4t1UfJk/9ycnl7CwVVDoEcMEm7BeTQF1dycoyHoBzLbyjw925euKSZvRkyIi+
         /9hMlCDxOPPsXn00UcZRHZ+w29CcmTVn/E9IYRpRSxRvQxaPbCeP9ASwSVMKZTatpW2e
         nhqu9+R1W+Fx4RLALsvlZcIcLoSHvkC/IK0Q3+fe6fng2hvYaC5a9j9khsZeectJx/gY
         2ONV8hCN6Kja5LosAn7ydGhQ640pCbHW305VE9QObdhWJNiZf9jmzC5bjFiGK4mQ9fcC
         KCyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=clp1+ypObvde2FWZ4De+qGCiAR5bhVEsmeAeNRLGHfk=;
        b=NaqitBr+ix5uFrpx/UeER1qwgNMtsn5/ay6uzglJikcpgOEwHmpJXwh+st5uTyPYJH
         SRnS6FsfIYHdWXns8/VY19Oq3cz9P2oOAelDaariMet7DDWzSxtL7Xvg/gIphikbpXUo
         mMSSfXCQJ+6k0iH+iEAll/7W+wSPYC4uBbD3g8sCwRsNwIrf8rcFmg2DXTmWqJKy1Xlz
         p70OYQaAOaZJbO1vfgYmZ5WQ4odN0Y6579hP93ow1pQBKEKgI+HrxpDl1h9zU+w5OVt/
         nF4ESTcrEkX9MHJ5ObPuSP8H0RbGmOkzCkUf7oFv5w2po3a+Y4w9YzDYPU8ECQJbEri2
         w7Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lmVjzekn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id w18si372138pfi.4.2020.03.31.12.33.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 12:33:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id c23so2439187pgj.3
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 12:33:24 -0700 (PDT)
X-Received: by 2002:a63:b954:: with SMTP id v20mr3537494pgo.381.1585683203902;
 Tue, 31 Mar 2020 12:33:23 -0700 (PDT)
MIME-Version: 1.0
References: <ClangBuiltLinux/continuous-integration+157031633+broken@travis-ci.com>
 <5e8396eae7ad8_43fea01ecf2cc187897@6bcc5a65-07a1-4f9a-adf7-a45cab008568.mail>
In-Reply-To: <5e8396eae7ad8_43fea01ecf2cc187897@6bcc5a65-07a1-4f9a-adf7-a45cab008568.mail>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 31 Mar 2020 12:33:12 -0700
Message-ID: <CAKwvOdm=O3W7gakwv0bXD2XSBN2Wuu4uNW4TcuZz+XDB1iUtiA@mail.gmail.com>
Subject: Re: [CRON] Broken: ClangBuiltLinux/continuous-integration#1327
 (master - 6693b58)
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000018ce1505a22ba462"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lmVjzekn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
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

--00000000000018ce1505a22ba462
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://lore.kernel.org/linux-next/20200323175946.7ad497ea@canb.auug.org.au=
/

On Tue, Mar 31, 2020 at 12:15 PM Travis CI <builds@travis-ci.com> wrote:

> ClangBuiltLinux
>
> /
>
> continuous-integration
>
> <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration?utm_=
medium=3Dnotification&utm_source=3Demail>
>
> [image: branch icon]master
> <https://github.com/ClangBuiltLinux/continuous-integration/tree/master>
> [image: build has failed]
> Build #1327 was broken
> <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/buil=
ds/157031633?utm_medium=3Dnotification&utm_source=3Demail>
> [image: arrow to build time]
> [image: clock icon]7 hrs, 29 mins, and 28 secs
>
> [image: Nick Desaulniers avatar]Nick Desaulniers
> 6693b58 CHANGESET =E2=86=92
> <https://github.com/ClangBuiltLinux/continuous-integration/compare/ff5f3c=
d469c2b9654f02eb05bfe2d7a8fa19f196...6693b589ff8952c371e4549a54d3c085c36ea3=
b2>
>
> Merge pull request #246 from nathanchance/android-mainline-dtc-fix
>
> patches: llvm-11: android-mainline: Remove dtc patch
>
> Want to know about upcoming build environment updates?
>
> Would you like to stay up-to-date with the upcoming Travis CI build
> environment updates? We set up a mailing list for you!
> SIGN UP HERE <http://eepurl.com/9OCsP>
>
> [image: book icon]
>
> Documentation <https://docs.travis-ci.com/> about Travis CI
> Have any questions? We're here to help. <support@travis-ci.com>
> Unsubscribe
> <https://travis-ci.com/account/preferences/unsubscribe?repository=3D67187=
52&utm_medium=3Dnotification&utm_source=3Demail>
> from build emails from the ClangBuiltLinux/continuous-integration
> repository.
> To unsubscribe from *all* build emails, please update your settings
> <https://travis-ci.com/account/preferences/unsubscribe?utm_medium=3Dnotif=
ication&utm_source=3Demail>.
>
> [image: black and white travis ci logo] <https://travis-ci.com>
>
> Travis CI GmbH, Rigaer Str. 8, 10427 Berlin, Germany | GF/CEO: Randy
> Jacops | Contact: contact@travis-ci.com | Amtsgericht Charlottenburg,
> Berlin, HRB 140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzs=
teuergesetz:
> DE282002648
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdm%3DO3W7gakwv0bXD2XSBN2Wuu4uNW4TcuZz%2BXDB1iUtiA%4=
0mail.gmail.com.

--00000000000018ce1505a22ba462
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://lore.kernel.org/linux-next/202003231759=
46.7ad497ea@canb.auug.org.au/">https://lore.kernel.org/linux-next/202003231=
75946.7ad497ea@canb.auug.org.au/</a><br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 31, 2020 at 12:15 PM Tr=
avis CI &lt;<a href=3D"mailto:builds@travis-ci.com">builds@travis-ci.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u>=
</u>

 =20
   =20
   =20
   =20
   =20
 =20
  <div style=3D"min-width:100%;height:100%;margin:0px;padding:0px">
    <table id=3D"gmail-m_6690051088653537084travis-ci-email-container" alig=
n=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" height=3D"100=
%" width=3D"100%" style=3D"height:100%;width:100%;padding:10px;font-family:=
&quot;Source Sans Pro&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans=
-serif;line-height:150%;text-align:center;color:rgb(51,51,51);background-co=
lor:rgb(244,245,249);background-image:url(&quot;&quot;)">
      <tbody><tr>
        <td align=3D"center" valign=3D"top" style=3D"padding-bottom:20px">
          <table id=3D"gmail-m_6690051088653537084email-content-container" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"width:500px;paddi=
ng:32px;background-color:rgb(255,255,255)">
           =20
            <tbody><tr>
              <td id=3D"gmail-m_6690051088653537084repo-username-section" a=
lign=3D"center" valign=3D"top" style=3D"padding-bottom:20px">
                <a id=3D"gmail-m_6690051088653537084repo-username-link" sty=
le=3D"color:rgb(51,51,51);border-bottom:1px solid rgb(51,51,51);text-decora=
tion:none;padding-bottom:4px" href=3D"https://travis-ci.com/github/ClangBui=
ltLinux/continuous-integration?utm_medium=3Dnotification&amp;utm_source=3De=
mail" target=3D"_blank">
                  <p style=3D"margin:0px;display:inline;font-size:30px;font=
-weight:600;line-height:36px;padding-right:5px;padding-left:0px">ClangBuilt=
Linux</p>
                  <p id=3D"gmail-m_6690051088653537084repo-slug-divider" st=
yle=3D"margin:0px;display:inline;font-size:30px;font-weight:100;color:rgb(1=
58,163,168)">/</p>
                  <p style=3D"margin:0px;display:inline;font-size:30px;font=
-weight:600;line-height:36px;padding-left:5px">continuous-integration</p>
</a>              </td>
            </tr>
           =20
            <tr>
              <td id=3D"gmail-m_6690051088653537084branch-name-section" ali=
gn=3D"center" valign=3D"top" style=3D"padding-bottom:35px">
                <p id=3D"gmail-m_6690051088653537084branch-name" style=3D"m=
argin:0px;font-size:28px;font-weight:300">
                  <img alt=3D"branch icon" style=3D"width: 16px; height: au=
to; padding-right: 8px; vertical-align: bottom;" src=3D"https://s3.amazonaw=
s.com/travis-email-assets/branch.png"><a id=3D"gmail-m_6690051088653537084b=
ranch-name-link" style=3D"color:rgb(51,51,51);text-decoration:none;border-b=
ottom:1px solid rgb(51,51,51);padding-bottom:2px;line-height:36px" href=3D"=
https://github.com/ClangBuiltLinux/continuous-integration/tree/master" targ=
et=3D"_blank">master</a>
                </p>
              </td>
            </tr>
           =20
            <tr>
              <td align=3D"center" valign=3D"top" style=3D"padding-bottom:2=
0px">
                <table cellpadding=3D"0" cellspacing=3D"0" style=3D"border-=
radius:3px;border:1px solid rgb(219,69,69);width:100%">
                  <tbody><tr style=3D"background:rgba(219,69,69,0.1)">
                    <td id=3D"gmail-m_6690051088653537084status-icon-sectio=
n" align=3D"center" valign=3D"top" style=3D"border-bottom:1px solid rgb(219=
,69,69);padding:15px">
                    <div style=3D"float:left">
                      <div style=3D"display:inline"><img alt=3D"build has f=
ailed" style=3D"display: inline; vertical-align: sub; width: 17px; height: =
17px; padding-right: 8px;" src=3D"https://s3.amazonaws.com/travis-email-ass=
ets/status-failed.png"></div><div style=3D"display:inline"><a id=3D"gmail-m=
_6690051088653537084status-section-message" class=3D"gmail-m_66900510886535=
37084failure" style=3D"color:rgb(219,69,69);font-size:16px;font-weight:600"=
 href=3D"https://travis-ci.com/github/ClangBuiltLinux/continuous-integratio=
n/builds/157031633?utm_medium=3Dnotification&amp;utm_source=3Demail" target=
=3D"_blank">Build #1327 was broken</a></div>
                    </div>
                      <div style=3D"display:inline;float:left"><img id=3D"g=
mail-m_6690051088653537084arrow" alt=3D"arrow to build time" style=3D"width=
: 7px; height: auto; vertical-align: text-bottom; padding: 0px 8px;" src=3D=
"https://s3.amazonaws.com/travis-email-assets/failure-arrow.png"></div>
                    <div style=3D"float:right">
                      <span><img id=3D"gmail-m_6690051088653537084build-tim=
e-clock-icon" alt=3D"clock icon" style=3D"width: 15px; height: 17px; paddin=
g-right: 8px; vertical-align: sub;" src=3D"https://s3.amazonaws.com/travis-=
email-assets/time.png"></span><span style=3D"font-size:14px">7 hrs, 29 mins=
, and 28 secs</span>
                    </div>
                    </td>
                  </tr>
                  <tr>
                    <td id=3D"gmail-m_6690051088653537084user-avatar-change=
set-section" align=3D"center" valign=3D"top" style=3D"padding:20px 15px 35p=
x">
                      <div id=3D"gmail-m_6690051088653537084user-avatar-cha=
ngeset-left" style=3D"float:left">
                        <p style=3D"margin:0px;display:inline;font-size:14p=
x;font-weight:700;color:rgb(51,51,51)">
                          <img alt=3D"Nick Desaulniers avatar" style=3D"wid=
th: 22px; height: auto; border-radius: 10px; vertical-align: middle; margin=
-right: 8px;" src=3D"https://secure.gravatar.com/avatar/0937c37d243f4e436c9=
ad4342ea9755c">Nick Desaulniers
                        </p>
                      </div>
                      <div id=3D"gmail-m_6690051088653537084user-avatar-cha=
ngeset-right" style=3D"float:right">
                        <a id=3D"gmail-m_6690051088653537084changeset-link"=
 style=3D"font-size:14px;color:rgb(0,104,255);font-weight:600" href=3D"http=
s://github.com/ClangBuiltLinux/continuous-integration/compare/ff5f3cd469c2b=
9654f02eb05bfe2d7a8fa19f196...6693b589ff8952c371e4549a54d3c085c36ea3b2" tar=
get=3D"_blank">6693b58 CHANGESET =E2=86=92</a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td id=3D"gmail-m_6690051088653537084commit-message-sec=
tion" align=3D"center" valign=3D"top" style=3D"min-height:104px;padding:0px=
 15px 20px">
                      <p id=3D"gmail-m_6690051088653537084commit-message" s=
tyle=3D"margin:0px;font-family:cousine,monospace;font-size:14px;text-align:=
left;line-height:22px">Merge pull request #246 from nathanchance/android-ma=
inline-dtc-fix<br><br>patches: llvm-11: android-mainline: Remove dtc patch<=
/p>
                    </td>
                  </tr>
                </tbody></table>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
     =20
     =20
      <tr>
        <td id=3D"gmail-m_6690051088653537084update-section" align=3D"cente=
r" valign=3D"top" style=3D"padding-bottom:20px">
          <table id=3D"gmail-m_6690051088653537084update-container" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"width:500px;padding:32p=
x 32px 42px;background-color:rgb(255,255,255)">
            <tbody><tr>
              <td align=3D"center" valign=3D"top">
                <p id=3D"gmail-m_6690051088653537084update-header" style=3D=
"margin:0px 0px 20px;border-bottom:2px solid rgb(0,104,255);padding-bottom:=
10px;font-size:24px;line-height:31px">Want to know about upcoming build env=
ironment updates?</p>
                <p id=3D"gmail-m_6690051088653537084update-message" style=
=3D"margin:0px 0px 32px;font-size:16px;line-height:26px;font-weight:300">Wo=
uld you like to stay up-to-date with the upcoming Travis CI build environme=
nt updates? We set up a mailing list for you!</p>
                <a id=3D"gmail-m_6690051088653537084sign-up-button" style=
=3D"font-size:14px;font-weight:600;color:rgb(255,255,255);background-color:=
rgb(0,104,255);text-decoration:none;padding:12px 20px;border-radius:3px" hr=
ef=3D"http://eepurl.com/9OCsP" target=3D"_blank">SIGN UP HERE</a>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
     =20
      <tr>
        <td align=3D"center" valign=3D"top" style=3D"padding-bottom:20px">
          <table id=3D"gmail-m_6690051088653537084documentation-container" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"width:500px;paddi=
ng:25px;background-color:rgba(222,239,255,0.3);border:1px solid rgb(102,164=
,255);border-radius:3px">
            <tbody><tr>
              <td id=3D"gmail-m_6690051088653537084documentation-section" a=
lign=3D"center" valign=3D"top">
                <div>
                  <img alt=3D"book icon" id=3D"gmail-m_6690051088653537084d=
ocumentation-icon" style=3D"display: inline; vertical-align: bottom; paddin=
g-right: 5px;" src=3D"https://s3.amazonaws.com/travis-email-assets/document=
ation.png">
                  <p id=3D"gmail-m_6690051088653537084documentation-text" s=
tyle=3D"margin:0px;font-size:26px;font-weight:300;color:rgb(0,104,255);disp=
lay:inline">
                    <a id=3D"gmail-m_6690051088653537084documentation-link"=
 href=3D"https://docs.travis-ci.com/" style=3D"color:rgb(0,104,255)" target=
=3D"_blank">Documentation</a> about Travis CI
                  </p>
                </div>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
     =20
      <tr>
        <td align=3D"center" valign=3D"top">
          <table id=3D"gmail-m_6690051088653537084travis-ci-email-footer-co=
ntainer" border=3D"0" cellpadding=3D"20" cellspacing=3D"0" style=3D"width:5=
00px">
            <tbody><tr>
              <td id=3D"gmail-m_6690051088653537084questions-section" align=
=3D"center" valign=3D"top" style=3D"color:rgb(0,104,255);font-weight:300">
                <span>Have any questions?</span>
                <span>
                  <a href=3D"mailto:support@travis-ci.com" style=3D"color:r=
gb(0,104,255)" target=3D"_blank">We&#39;re here to help.</a>
                </span>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_6690051088653537084email-footer-section" al=
ign=3D"center" valign=3D"top" style=3D"font-size:10px;line-height:200%;text=
-align:center;color:rgb(158,163,168);padding-top:0px">
                <span>
                    <a href=3D"https://travis-ci.com/account/preferences/un=
subscribe?repository=3D6718752&amp;utm_medium=3Dnotification&amp;utm_source=
=3Demail" style=3D"color:rgb(158,163,168)" target=3D"_blank">Unsubscribe</a=
> from build emails from the ClangBuiltLinux/continuous-integration reposit=
ory.
                </span>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_6690051088653537084email-footer-section" al=
ign=3D"center" valign=3D"top" style=3D"font-size:10px;line-height:200%;text=
-align:center;color:rgb(158,163,168);padding-top:0px">
                <span>
                  To unsubscribe from <strong>all</strong> build emails, pl=
ease update your <a href=3D"https://travis-ci.com/account/preferences/unsub=
scribe?utm_medium=3Dnotification&amp;utm_source=3Demail" style=3D"color:rgb=
(158,163,168)" target=3D"_blank">settings</a>.
                </span>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_6690051088653537084travis-ci-footer-logo-se=
ction" style=3D"text-align:center">
                <a href=3D"https://travis-ci.com" target=3D"_blank"><img al=
t=3D"black and white travis ci logo" src=3D"https://s3.amazonaws.com/travis=
-email-assets/TravisCI-Logo-BW.png"></a>
              </td>
            </tr>
            <tr>
              <td id=3D"gmail-m_6690051088653537084email-footer-section" st=
yle=3D"font-size:10px;line-height:200%;text-align:center;color:rgb(158,163,=
168);padding-top:0px">
                <p style=3D"margin:0px">Travis CI GmbH, Rigaer Str. 8, 1042=
7 Berlin, Germany | GF/CEO: Randy Jacops |
                  <span>Contact: <a style=3D"color:rgb(158,163,168)" href=
=3D"mailto:contact@travis-ci.com" target=3D"_blank">contact@travis-ci.com</=
a> | Amtsgericht Charlottenburg, Berlin, HRB 140133 B | Umsatzsteuer-ID gem=
=C3=A4=C3=9F =C2=A727 a Umsatzsteuergesetz: DE282002648</span>
                </p>
              </td>
            </tr>
          </tbody></table>
        </td>
      </tr>
    </tbody></table>
   =20
  </div>



</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Thanks,<div>~Nick Desaulniers</=
div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdm%3DO3W7gakwv0bXD2XSBN2Wuu4uNW4TcuZz%2B=
XDB1iUtiA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3DO3W7gakwv0bXD2XSBN2W=
uu4uNW4TcuZz%2BXDB1iUtiA%40mail.gmail.com</a>.<br />

--00000000000018ce1505a22ba462--
