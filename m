Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK6WYXVQKGQEHHNQQAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E81AACC2
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 22:08:12 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id j1sf4658602ioj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Sep 2019 13:08:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567714091; cv=pass;
        d=google.com; s=arc-20160816;
        b=ywY3N2Bsj0IZWdfMNyqKHnsLb3mfHyrd1oFX3U+ZFBm42bCSl3XyLqwzjSvBQeBczq
         hWTwnRYYNSby2p35Q1nYdFvgE5nqH65ZzMslcDGzaQHzvsb1v95eSOkcbC7Z9Ii7tp0N
         67wBdK5P1AU2j/6OVHv6tkKh0uHwZdu0VqVGT78xQDtHYfbzErZWZLqu2mJXu0T1y+Di
         wIiDqT8EdwJIWgfI5cYYLTKKoP7ephRei7y/j3FR55YKX1AW7LBu15gGppreHQVUgyX6
         xQYkE8IseTb3/fuYkFma8TNSD9Gn+OptVfBhPen/sj/XIFO+D1HTr0BUaQVCC8O6kHM8
         tRIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K8cuxZ32x0DOa2APWTbu5eFv3LnTNTGrVa5vtrdVxE0=;
        b=tecZLx8wgxCojuuNjCSf2FLZ0Mvdmn8zW7b0eX2QuxVM+qMpcAkWxlrQ2nOhwSH0fG
         Rib4+2VyRetJ9gR2+vL8mUJhB2kOKOGkQTEG1y1BpqC/77cIabPwGXJEw+X8I4F2q96Z
         iQI70/p1/wDJXUI0HgbvbjIxYxH3Va51mwHz3Q2AR1U3jI7ElO4WcSbwrCgA7tsOJSty
         ASTzBk8B8AeS58UAebHsWOh1DYFSPY0zWpa1EjuW/lLaqDUz3sto2pyZ92ho9H06WxjC
         3pxPuHF8atUCZRpqYmZR5JpJ2cZyBHGLqV2ESFEyhPCmAscbfobgnRLwaeUzlwpoDYJS
         N7kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fae9u1qt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K8cuxZ32x0DOa2APWTbu5eFv3LnTNTGrVa5vtrdVxE0=;
        b=jVqTN+xqT4hXVdqhcmnOcY91aBeC2aPOtOsTRuYZFcfVI5z4heWQXBoE0eJDCFNNNj
         ILuE2QJBbxT8ZEma4KW+mWVuVvUnxGfIb4gL1Ghe7MB9eMApr+wgVJr+F1EPW1ZGlY/Z
         gU5664tYX6RNpXRKg5Rri0lL1Iju3FY9kBlW6hBWKFVGsP1UQ8/aJDBaEH2i5q9DXikW
         FrDsmRatPqy4FdBQ/YDI2zSJfDo4LyzOtlG7V/zoH1nGBOtpEgHUmRB4jkPzyNcQUaF/
         /m2SpzixENlrggvpc/KYx3dH9mMCuz3OU56PabVoH7W9JTwwcLOMzLKJtzOsyknF901R
         e4eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K8cuxZ32x0DOa2APWTbu5eFv3LnTNTGrVa5vtrdVxE0=;
        b=gxEnwK0biLT1eWXnt9IoSaRGTEySm98gB4LxvlajtKqB0Q7cFZ//7LI4nJQJlgJz9V
         O6Ynn4ZctujXtGEsFgCY1W+8mKMsYMAn2id2CSnY0O90pqYBu+873vD/gv+FyWoblYEI
         nBNS8BLdZMfJ5CBGZZCyjtX/1SD6QuV+JLZ3r01VBN6rScidSU09Gh+7VZ7h1IDylcnT
         pQ+UNVEnxfnRDyBwzjNFKuZWMAlx4YftQX43k/VY7W+iOzQezrGoHgYaPH7Hqq+qBjYw
         2h6IzxS+IGJ/riamg4HhQLrEZ/6luZI93D+CkkPTvASq78rMTSPXXlluj29s5w2g/5Kx
         R+sA==
X-Gm-Message-State: APjAAAX/dw/M1drYUxOUiVTosBrZdWj47Bppg3ylhsV9duIEmzLH2PYk
	kyTbs1TccOpIEXYnq1hR/Qw=
X-Google-Smtp-Source: APXvYqzgNGDBpP6pR94zjqzg+g2nZa9gq4ns2W1eD/J4bgmVwVRHJ33HPB0Dmzz5DxecSsTKFvm3jg==
X-Received: by 2002:a6b:9107:: with SMTP id t7mr5838241iod.150.1567714091357;
        Thu, 05 Sep 2019 13:08:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6a0c:: with SMTP id l12ls410126jac.16.gmail; Thu, 05 Sep
 2019 13:08:09 -0700 (PDT)
X-Received: by 2002:a02:c999:: with SMTP id b25mr6065356jap.120.1567714089517;
        Thu, 05 Sep 2019 13:08:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567714089; cv=none;
        d=google.com; s=arc-20160816;
        b=mHCbaCFyInWlmZG/8LK/Cxv+iIrQ0Wzh4cHCTGbcUDbBL3wrUbQ9msaNiWBoQ864wJ
         CfGvHSh42Me6rw80iugNg7TRgs4q61g7VeqwuZy/ZPacfTMSyQ1hGGqMdwyLtsbd9svS
         dZF7DfMtnL7TRL6VzuA1gyaGqdNrSbPgr/1dhRLhDQH/FIuFQdVgwdNj5+pE4sDK9p0j
         HGqw0kE+U6nXqGFSrvWX3gd/th2V1nFRIlQnk0kHhoH/iedsABpv6ZeNuR0qxcChBF/c
         8lkzor3qLSl5wBSHKWc3CNoxHLb/s6N6I4tOQGm6WqGIvvZWe6kug24xLs0RG6ZIaWZv
         q8Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QpIMfU/zC7XYB8cMPQhB/I/7Gpjr49kSEelVyjncAaI=;
        b=zx2PAZwGRP80QOhJOOABq9IwRaQn4TFgh9u4cpo2Xu2tXR60hbzghjAYqVE4l6FsRh
         xWWE6kppN2dwBB8siRHLnQIh4SpBHoIR8LiXJYWoCpjMlw7Q5VshUhVPAzDGTH6rsq5F
         8nsqS10tDgNTrEuH44BZwqMVJFgvdWGqKv4xLIKDsXNdTfbTMZoqsDHP3l5fd9mtBSrQ
         EGLLtdzQ/Iw4rzwGkFRqe6Jv4RV3TXiMxLQaywRD5UBmH/edz/gVRYVffCAiztRyPxq6
         b9NWkkDuWb/7aXgFz1rsbaKVnDgtc2fbgXasJYjTT6uZlNWaolqm8RqudBc23vI4C5Pn
         soRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fae9u1qt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id q207si105179iod.5.2019.09.05.13.08.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 13:08:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id q21so2573870pfn.11
        for <clang-built-linux@googlegroups.com>; Thu, 05 Sep 2019 13:08:09 -0700 (PDT)
X-Received: by 2002:a63:6193:: with SMTP id v141mr4923139pgb.263.1567714088054;
 Thu, 05 Sep 2019 13:08:08 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
In-Reply-To: <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Sep 2019 13:07:56 -0700
Message-ID: <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Eli Friedman <efriedma@quicinc.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000005468c10591d3e150"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fae9u1qt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
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

--0000000000005468c10591d3e150
Content-Type: text/plain; charset="UTF-8"

This fix also reminds me of https://bugs.llvm.org/show_bug.cgi?id=42012.  I
wonder if it fixes that as well?

On Thu, Sep 5, 2019 at 1:01 PM <bugzilla-daemon@llvm.org> wrote:

> Eli Friedman <efriedma@quicinc.com> changed bug 43121
> <https://bugs.llvm.org/show_bug.cgi?id=43121>
> What Removed Added
> Resolution --- FIXED
> Status NEW RESOLVED
>
> *Comment # 4 <https://bugs.llvm.org/show_bug.cgi?id=43121#c4> on bug 43121
> <https://bugs.llvm.org/show_bug.cgi?id=43121> from Eli Friedman
> <efriedma@quicinc.com> *
>
> r371111.
>
> ------------------------------
> You are receiving this mail because:
>
>    - You are on the CC list for the bug.
>
>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA%40mail.gmail.com.

--0000000000005468c10591d3e150
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This fix also reminds me of=C2=A0<a href=3D"https://bugs.l=
lvm.org/show_bug.cgi?id=3D42012">https://bugs.llvm.org/show_bug.cgi?id=3D42=
012</a>.=C2=A0 I wonder if it fixes that as well?</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 5, 2019 at 1:0=
1 PM &lt;<a href=3D"mailto:bugzilla-daemon@llvm.org">bugzilla-daemon@llvm.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
   =20
     =20
   =20
    <div><span><a href=3D"mailto:efriedma@quicinc.com" title=3D"Eli Friedma=
n &lt;efriedma@quicinc.com&gt;" target=3D"_blank"> <span>Eli Friedman</span=
></a>
</span> changed
          <a title=3D"RESOLVED FIXED - ARM: invalid IT block in thumb2 mode=
" href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D43121" target=3D"_blank">=
bug 43121</a>
          <br>
             <table border=3D"1" cellspacing=3D"0" cellpadding=3D"8">
          <tbody><tr>
            <th>What</th>
            <th>Removed</th>
            <th>Added</th>
          </tr>

         <tr>
           <td style=3D"text-align:right">Resolution</td>
           <td>---
           </td>
           <td>FIXED
           </td>
         </tr>

         <tr>
           <td style=3D"text-align:right">Status</td>
           <td>NEW
           </td>
           <td>RESOLVED
           </td>
         </tr></tbody></table>
      <p>
        </p><div>
            <b><a title=3D"RESOLVED FIXED - ARM: invalid IT block in thumb2=
 mode" href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D43121#c4" target=3D"=
_blank">Comment # 4</a>
              on <a title=3D"RESOLVED FIXED - ARM: invalid IT block in thum=
b2 mode" href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D43121" target=3D"_=
blank">bug 43121</a>
              from <span><a href=3D"mailto:efriedma@quicinc.com" title=3D"E=
li Friedman &lt;efriedma@quicinc.com&gt;" target=3D"_blank"> <span>Eli Frie=
dman</span></a>
</span></b>
        <pre>r371111.</pre>
        </div>
      <p></p>


      <hr>
      <span>You are receiving this mail because:</span>

      <ul>
          <li>You are on the CC list for the bug.</li>
      </ul>
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
om/d/msgid/clang-built-linux/CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HH=
UsvAA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdc=
bVbsfTpH9HHUsvAA%40mail.gmail.com</a>.<br />

--0000000000005468c10591d3e150--
