Return-Path: <clang-built-linux+bncBDI45AV5YYLRBYFESSEQMGQEKGFHEIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D503F61CE
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 17:38:08 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id v2-20020a7bcb420000b02902e6b108fcf1sf1390939wmj.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 08:38:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629819488; cv=pass;
        d=google.com; s=arc-20160816;
        b=fTlmvLfiyTW8iNt0TAFbSW1kEoDXynrZXfLgKJwNi85lMOS1S+tqeOBZA7hdJcYXkl
         U+EoM5zop34MMj537Mcs1IRQrRFbhMT9/NxkKeHtj/goa8CxJ3ZGBIJ9pqNdwUcoyWIE
         DvjjSdto0ffof61r2NqT0TOIPg3I62Sjbp1xHlW7zLwA7mqD21qyHA0Q/Mvw7ckTu8Yi
         4f8EeSlQJgxOJgptAlKZrCPM6wwtlICn/AAASyGjsfa8OMxfdtfg28ZDVhMHCTKy6Oy6
         TbVhtvz4ptkWzoeqm/HVaeo12wKRH+Q+uHLZFQd0jfvVE+QImwdCYg78+i5UodoOfVvF
         lZwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PhCKixY9zJ43VhRYcT9RCpRh4ALzt3fdrSBEciscrAQ=;
        b=kCZK9PowRtNM33ff9yUQCaSevQ0LYvd7LXk/TEwZRQGJuWNIIukM4VTVNX3cyUPjCk
         SwZJ01LjuD+9JCBYrHEJup4T0YW8GMyyGn6y89b/WttjNjDANSGuwnKsyTTwWPPWA0zd
         1lwlNAKAU9HpChRsbyPQOQwk9p3HHbgDOi3QaEMSvatR4JqUeQXyK54xphM2CcjQlgHH
         /UOdk4xto0/REslAhK1BFj9WC5NFl0e5bc4UCqQ9a52higmCCJJXpH+YBsHXVhRxAPrG
         MvbshYtzt6v+1F1oFLO4lg9X/EqMjkXM7Ymq+N3TBq1RaHswa6stKgbWcuBTUWQJAEUN
         6q6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Btuo9ZRM;
       spf=pass (google.com: domain of remi.duraffort@linaro.org designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=remi.duraffort@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhCKixY9zJ43VhRYcT9RCpRh4ALzt3fdrSBEciscrAQ=;
        b=mVbalkoYwsbGdMSsqDDWwEdeOEIahsjdbviE6nv5qG3jEvlU9meXnNdiAr+/7Tj4XC
         iysoazBZzEykv2xFI3ip2Y72lNe6Qa/4XHIw4dnEKYUofRHX8Ff/022X4862OtY6e6ff
         Yb3VMEP5MBEC9LJgwxHK/7lPY0+2gg6/tLwpDlzWAJpPIUMpt0gWVgW5U6G2aWKohv6/
         ojHyEbiiTt1NLo/iqfz0Wocm0Ug+AY3p+yScWw4kWMQYJ931EwNtHts29xeUB5PFdJnP
         sPvOyGMuB2UOkGl6D03Ha5vwgV4BIqlrIEyBxoe5LOXavLpyDDdtD5mqIisdr8uLl73h
         Tjkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhCKixY9zJ43VhRYcT9RCpRh4ALzt3fdrSBEciscrAQ=;
        b=f10rS7YR4SJk4ZLGL3O9ZVX5XQv0ipE6T3HmsfpSaXffS3nTDGUhJcxkIrSxcUYY8T
         i4LZlmWyooK0etQ8R43YTms/34yTkKIsjY5ELyaw+6+CWruqEy5ND50oTp3t1ijdcJId
         spSprj6y2s5G62LMf6redxHJKyYk25Wjie8RePxb0n25Uq49ziV86FjmbsKXDYrGrhOH
         fgiQqDCJO6zqw7mFjS8EeiXaxwbeZ5uxAoP1r7klznPs3Pl49W9c3cS6StNRUzED5a1X
         7Eb1FRi+94lsdpD8cEplPsVT7bgye/hflzaG82BxozAJgRarvmI5t6jZxws5PysoayhV
         f5Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53232ce3lkxQzy8naSpPKSiejfERKVj3ysgz8cCs/T5bgJnqKIe8
	diQsHeWjwFSB6LZ1S8I9hlc=
X-Google-Smtp-Source: ABdhPJwnRQ6dPr5H5p3HDnKi+BaVyBAmHgliY2lMfKZUPEq2pOb9CAGXR6I/IA1IHE74L0gmbh+SZA==
X-Received: by 2002:adf:8102:: with SMTP id 2mr19386545wrm.89.1629819488429;
        Tue, 24 Aug 2021 08:38:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cd8a:: with SMTP id y10ls1479846wmj.1.canary-gmail; Tue,
 24 Aug 2021 08:38:07 -0700 (PDT)
X-Received: by 2002:a1c:c913:: with SMTP id f19mr4662568wmb.86.1629819487569;
        Tue, 24 Aug 2021 08:38:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629819487; cv=none;
        d=google.com; s=arc-20160816;
        b=lHqQ3kbOSKcYZazyr9NBgv3Xm8WQcYargWSMw0QuqX0p1XkkZ6TxKBiZSIH6RJZ2Fj
         wFpkTuKiMctLtTP3YS+UVL9az3mdvb0gxrOi8uYusvutfQIrCRz2LF7c5V2u8uZGQ0Qj
         PoYcebi/z3ECvLcGTEyb5kOpp+OJs6GTi0mda1FFxAJ2pzcgnM3qPUIyGd4PJgb73U+p
         6WU6h8frM7dwjJdtcU0gRnnDvMKU6t41GdyQw6LVuBMa4BMRl7X+Y/M+4BWQxhsRL+l0
         oGbmXh5Ssjf/ieUmgf0R32xXNKaP2BNnodwGfSkSy2UXLVFtI6YL/q9LhvjFZFlb0LkN
         ngHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K8TOtmI1WjzIz0DcMVNOH9Y+DrBDOB4gkwcTXls0sGU=;
        b=Q8U+QZFObzaOPBqvyr78RxfOJGaelH81dOUaE0xS/ATm+ojod1V3nQvsCcfx1bHVBG
         HJPEJoq4SoOiuOQopShuNXMYFFqeqy4NNeKLfxRHXvFh4OqJjaXLqdHVCbiOAGAFrH40
         p7o0fPcdyWWYsRVeZ/5vaOvxdBF5G6yeQGedBTTfAhQFrQPO7ejpE0fdb2inpk3hylNZ
         kAobfWjCHAUCO47R1kCeWkGJc0BKi+P+sQPfyYu65lWjIHGRCJf0bYnzDrfGUYcp9gyC
         /4vnOuKZo6kqsojHdY5/hn4/oczYHUJH3O50vejDVkKnKMGLd4EfVXCxVW+JJUgp9HJu
         eeag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Btuo9ZRM;
       spf=pass (google.com: domain of remi.duraffort@linaro.org designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=remi.duraffort@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id u16si1366849wrg.5.2021.08.24.08.38.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 08:38:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of remi.duraffort@linaro.org designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id c12so38456190ljr.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 08:38:07 -0700 (PDT)
X-Received: by 2002:a2e:bf27:: with SMTP id c39mr32131071ljr.59.1629819486990;
 Tue, 24 Aug 2021 08:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANJfhHdh5iMPQ5i0gUHf9xiY9-OFcmhjw0eP523uHHXTd-da0Q@mail.gmail.com>
 <CAKwvOd=hGyJmv6cN4Xp=3hEboESjckd+Y1oQQPmg0RbRtMbmpQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=hGyJmv6cN4Xp=3hEboESjckd+Y1oQQPmg0RbRtMbmpQ@mail.gmail.com>
From: Remi Duraffort <remi.duraffort@linaro.org>
Date: Tue, 24 Aug 2021 17:38:03 +0200
Message-ID: <CANJfhHdRMB2Ry=mDA9gQa-KBYh2ivN66jTpYY-0EuCMnH=KUgw@mail.gmail.com>
Subject: Re: TuxTest for ClangBuilt Linux
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Vishal Bhoj <vishal.bhoj@linaro.org>, Lars Bergstrom <larsberg@google.com>, 
	Stephen Hines <srhines@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000092188705ca4feb08"
X-Original-Sender: remi.duraffort@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Btuo9ZRM;       spf=pass
 (google.com: domain of remi.duraffort@linaro.org designates
 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=remi.duraffort@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

--00000000000092188705ca4feb08
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Nick,



Le mar. 17 ao=C3=BBt 2021 =C3=A0 20:55, Nick Desaulniers <ndesaulniers@goog=
le.com> a
=C3=A9crit :

> On Tue, Aug 17, 2021 at 7:08 AM Remi Duraffort
> <remi.duraffort@linaro.org> wrote:
> >
> > Hello
> >
> > In the team, we've seen that issue
> https://github.com/ClangBuiltLinux/continuous-integration2/pull/185 that
> you have with the boot tests.
> > I don't like interfering but that's a shame that you have to care about
> such issue while TuxTest can do it for you.
> >
> > Why don't you use TuxTest for this? We would be happy to give you some
> help for the setup.
> > If that's for another reason, I would love to ear about it to understan=
d
> the concerned that you can have.
>
> Hi Remi,
> My major concern is the current lack of resources we have to triage
> resulting failures.  Until Google has more resources to pursue
> triaging boot+runtime test (LTP) failures, I'm not going to pursue
> expanding our CI in such manner.  We have our hands full keeping the
> kernel building; boot failures are rare enough that they're not very
> interesting, and in my experience when a kernel test fails folks don't
> have time to triage why, they just disable the test and run to the
> next fire.
>
> I have no doubt that TuxTest is well suited to fill this role; we
> simply don't have the staff to pursue using it effectively at the
> moment.
>
>
Thanks a lot for the ansxer and taking the time to explain. This is really
interesting to know that testing is currently out of scope because of the
lack of resources.
When (and if) you have enough people to look at boot failures, we can look
at TuxTest together.


Thanks

--=20
R=C3=A9mi Duraffort
TuxArchitect
Linaro

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CANJfhHdRMB2Ry%3DmDA9gQa-KBYh2ivN66jTpYY-0EuCMnH%3DKUgw%4=
0mail.gmail.com.

--00000000000092188705ca4feb08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello Nick,<div><br></div><div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
Le=C2=A0mar. 17 ao=C3=BBt 2021 =C3=A0=C2=A020:55, Nick Desaulniers &lt;<a h=
ref=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; a =
=C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Tue, Aug 17, 2021 at 7:08 AM Remi Duraffort<br>
&lt;<a href=3D"mailto:remi.duraffort@linaro.org" target=3D"_blank">remi.dur=
affort@linaro.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello<br>
&gt;<br>
&gt; In the team, we&#39;ve seen that issue <a href=3D"https://github.com/C=
langBuiltLinux/continuous-integration2/pull/185" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/ClangBuiltLinux/continuous-integration2/pull=
/185</a> that you have with the boot tests.<br>
&gt; I don&#39;t like interfering but that&#39;s a shame that you have to c=
are about such issue while TuxTest can do it for you.<br>
&gt;<br>
&gt; Why don&#39;t you use TuxTest for this? We would be happy to give you =
some help for the setup.<br>
&gt; If that&#39;s for another reason, I would love to ear about it to unde=
rstand the concerned that you can have.<br>
<br>
Hi Remi,<br>
My major concern is the current lack of resources we have to triage<br>
resulting failures.=C2=A0 Until Google has more resources to pursue<br>
triaging boot+runtime test (LTP) failures, I&#39;m not going to pursue<br>
expanding our CI in such manner.=C2=A0 We have our hands full keeping the<b=
r>
kernel building; boot failures are rare enough that they&#39;re not very<br=
>
interesting, and in my experience when a kernel test fails folks don&#39;t<=
br>
have time to triage why, they just disable the test and run to the<br>
next fire.<br>
<br>
I have no doubt that TuxTest is well suited to fill this role; we<br>
simply don&#39;t have the staff to pursue using it effectively at the<br>
moment.<br>
<br></blockquote><div><br></div><div>Thanks a lot for the ansxer and taking=
 the time to explain. This is really interesting to know that testing is cu=
rrently out of scope because of the lack of resources.</div><div>When (and =
if) you have enough people to look at boot failures, we can look at TuxTest=
 together.</div><div><br></div><div><br></div><div>Thanks</div></div><div><=
br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div dir=3D"ltr"><div>R=C3=A9mi Duraffort</div>TuxArchitect</=
div><div dir=3D"ltr">Linaro<br></div></div></div></div></div></div></div></=
div></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CANJfhHdRMB2Ry%3DmDA9gQa-KBYh2ivN66jTpYY-0EuCM=
nH%3DKUgw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CANJfhHdRMB2Ry%3DmDA9gQa-KBYh2i=
vN66jTpYY-0EuCMnH%3DKUgw%40mail.gmail.com</a>.<br />

--00000000000092188705ca4feb08--
