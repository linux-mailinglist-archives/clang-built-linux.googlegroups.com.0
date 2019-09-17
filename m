Return-Path: <clang-built-linux+bncBDSMRTMFUIFRB7MIQTWAKGQE4U2GPFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC3FB5269
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 18:06:23 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id p8sf2353948plo.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 09:06:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568736382; cv=pass;
        d=google.com; s=arc-20160816;
        b=Csa2/nA0qRXqpLgFBMkUlnUkZk8XKv1kMghCBhjy0FWlgP/g1Kp1KGD5lTYnzlkISL
         lsPBa9fd9Si0S2hiTncx4OoKf+l8vIZ33RsNpCGs9ntM7lmRKQVG7cgyGZIX6L/Y7rpe
         +uVo44JOWJeSsBCJRmHEiFpbWN/IG0929yVXqScaprSEu0M2ORLxTP1bSgBv6fhUDUhK
         Ozmiy4pB1PqtmHBuHheZ9R+Qj3Zqh+9HCa8XDGBkvHlglUL/I3OYB0j7Nh2jdQ4CiZRZ
         ASD/ecBnMHq3a1al0x/dLHpdK5ST6mZ/oqY0G3ni5XV271AATHTvOyrq8Lay+fezzOZq
         VR6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HVI/PLnVhJLBzigQcs1BWA5piAV5RYjo0f9zqQhIgIQ=;
        b=oZrqmyEwjmW3pwSyloiAlIjM8872vbBoqGs3Ry8Db4eePregF3LUaaO87I9eEpcDBi
         FLuq9xwaK0VJSoTGDoMsFXyokS5L0cFnMyc0k3+qUVVV2twDMQL+8Fp/G5B3uLb0r8Lq
         s9d4uIl8dEu5sYbYPoRI7FGSePJ6oU9mweoIik5SwFopRVPNKju12nSrY6z49F13rCvg
         kQ9y9wHjdcZ6VP2tJ/s+a7VlowZnO4XQD58DwCC38OYQqk5DY+rBwUu8Yv7vPcepzcxG
         RzGHZ5dGhDQBMeoJUT2xN8JZi7WL25guuJ0dXPFt5xVRSn9agYxQvLsIDIfU+u25/v47
         PXkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dG+DAJ/l";
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVI/PLnVhJLBzigQcs1BWA5piAV5RYjo0f9zqQhIgIQ=;
        b=doGWNFfKeyCEhRq6YPZoi8cErrm5a7q8TlPNMw/B5hv9GgiUQcOkendXbdwhoEE0yR
         u5XOVXqHAhlvOAW+ASp7G2fuc/jTJ5gHezR+u2nyKdYWHlYevlTdY6F7ALxjbabxnDR8
         NQw77ERDTAr1U6CgW6yhdW7uaMHeZeVzBgjSHQbXMTuum+D1w5+XAFa5pPuoHmRKluPu
         Jo6DK0EySRomU4MCLiQ1DSALtBNgfdrRCRBRZ7sawld+hLe+AtMirUkG8U6/j/u2ov9m
         SzLBnxaPyf8AMYv98RrLiIDYkyg7IzAUA1qQXBA3TpXUvvSPB6rlW1DNSYd5q/4Benvc
         Af4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVI/PLnVhJLBzigQcs1BWA5piAV5RYjo0f9zqQhIgIQ=;
        b=ZlYEV3bEoX3ajPTkfACXeONpAHZ47pCF1sFSRGbmNoP2nA0mEHy569uM4ByOxLjHa4
         7OeJkFQK6SUpXsmCjzBWx0ZvfB8wJtrvns0dBrCFIy8Lufbg3+zJfCqYAw0UPe99Z/hy
         2RsID6A0iwW/WaOSeptO/sQXTpW4PEx2xF5LqkjWPOD3U1quDh+n4CE0eJgTPpRGGyGI
         Ss7QgfdAYcJ9VF3zKOeAqBwXFOId7BcyCwMgVkO/FXJz3DFVI8d1Dxot7/m2xqUgQ6Co
         AD4ln6avBUsA/+HNjsz9Iu5wJwF2YKXMrARrmbLtVqPfaZ1eG8b9wbWJmKpaPB0LNZWE
         39jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVI/PLnVhJLBzigQcs1BWA5piAV5RYjo0f9zqQhIgIQ=;
        b=pGlCkwDbtHqzUHAvrs3M8L8Qjc6d2DtD8UO9ItVPyRMUxrg8o7zRUR0Qtoc+8fd6JO
         6woDQHuMj7UoTN5EeTIDTYwphBfX4R2VXGSqWZfI7Z6sF62VSZ9JmHci+QLHp2BQEI1K
         tEyrVg+dlydmY9xcA1QH1WLBcMU7N8FaIssALZJ1L6azAgLRiOgFhez+KL6J2tV1gcuf
         mMq0nzPPyZ4p6egCblgdni9AWiJNfB/37+FHSgeA9qIp1AEWHWBhoERmoEUPKk7IQZCD
         l5Wt1fRECYq8INgr2YxuGRopRdsgZYqI+5NHz/bYlEmMaPvEanHpBoiNjnfDVEInViFB
         zsKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXXcl9SNC1MooUQ7FNm0wdRFgs48hBHaYHr3sHxa9JTsP2Uy/Ml
	wEan15O8D5RMBTO9xcp/Glc=
X-Google-Smtp-Source: APXvYqz37x7VJtHMk1WoxBHuAqT6Ph0Gov7Xk409M6xfDj/ENTI0G+ov2OqI9zBMsc8dytfTLPgamw==
X-Received: by 2002:a17:90a:24a8:: with SMTP id i37mr5730354pje.123.1568736381795;
        Tue, 17 Sep 2019 09:06:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b196:: with SMTP id s22ls1008999plr.9.gmail; Tue, 17
 Sep 2019 09:06:21 -0700 (PDT)
X-Received: by 2002:a17:90b:87:: with SMTP id bb7mr2417415pjb.28.1568736381372;
        Tue, 17 Sep 2019 09:06:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568736381; cv=none;
        d=google.com; s=arc-20160816;
        b=fLAt4Vl9wej1k4GDr5MUWS94bNJ52QI1u1jTkRCG9BK2TJbGHgZJxRjNnJrmhoblhh
         SYl86D+LVzJVCUlvANueyJqdGLxpX9DCk6jnKsJeo3gUn7C+eDhzHpZ+oEbDChyKC+Xv
         I+iY2jKCRPXW5rUkfZTVzbxOrkce1Aa/SKkPPj9ughfds42TaIqeFP87xSD5n48uM5LY
         esBBs2osRUnbfW9GtcwFRdm2nroNe/9G78karLe/emuhd5QUGOOOi1MWpUNyO6isrs/i
         GRtZAIH77S7sBoTJTWETiikWVs3c6boBBDM3SVE0yd6M3s5iMwu7U+duFPGA2EKygiez
         vumg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4cNg5pU59pfRdBaFpB6EXyf17yP47xTUdSh6yku5xrs=;
        b=xhWQuB4MSl4tWTbxV05d+5Sqyq5PMgKHDV1Q1HYSS8WgYGt6HWY1dzYfQPvAV534ul
         SAB3arVMXqsba1FIISEakF6OVcJ5SCcuO9h7hfoIVuu1jFgndgK2QYH4HC8caE660fPt
         xMv5nCoiHZgqe5QIUFcsmJorPO9Oo+JOSETUzEuaTxqVfILZEvprx8XJxltlAFWJewmA
         hnURBnApyhTp/8lnHFdZY3trwQbRno1x+LgHaQe+MhauvsPsD4iFZ+oacOAdSHL7UekU
         QhnW2O1sAMWTQ/ILc6KJPxq8qhVEV1DEtWHb7McozZN03WSJu2fYRTCZU4PLFBZKA/HC
         /PNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dG+DAJ/l";
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j12si335550pfr.5.2019.09.17.09.06.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 09:06:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id c10so3529435otd.9
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 09:06:21 -0700 (PDT)
X-Received: by 2002:a05:6830:1414:: with SMTP id v20mr3524771otp.40.1568736380697;
 Tue, 17 Sep 2019 09:06:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190917073232.GA14291@archlinux-threadripper>
 <BN8PR12MB3266AFAFF3FAAA9C10FB1C1FD38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <510d777024554eab846ef93d05998b63@AcuMS.aculab.com> <BN8PR12MB32662378E844E6ECBA3FE8D7D38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <CAKwvOdkr0=gdTUG9_2ACBY-WxEerzcK60WHBsmy+hz7rD-yZNA@mail.gmail.com>
In-Reply-To: <CAKwvOdkr0=gdTUG9_2ACBY-WxEerzcK60WHBsmy+hz7rD-yZNA@mail.gmail.com>
From: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Date: Tue, 17 Sep 2019 18:06:06 +0200
Message-ID: <CAOrgDVO2UnQtmRu_ccYDXLb2axjLc0UG-4+BrE=JCu8q1-G4fw@mail.gmail.com>
Subject: Re: -Wsizeof-array-div warnings in ethernet drivers
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, David Laight <David.Laight@aculab.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Tom Lendacky <thomas.lendacky@amd.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, 
	"David S. Miller" <davem@davemloft.net>, Ilie Halip <ilie.halip@gmail.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000b7bf520592c1e6a6"
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="dG+DAJ/l";       spf=pass
 (google.com: domain of david.bolvansky@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
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

--000000000000b7bf520592c1e6a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes.

ut 17. 9. 2019 o 18:01 Nick Desaulniers <ndesaulniers@google.com>
nap=C3=ADsal(a):

> On Tue, Sep 17, 2019 at 6:27 AM Jose Abreu <Jose.Abreu@synopsys.com>
> wrote:
> >
> > From: David Laight <David.Laight@ACULAB.COM>
> > Date: Sep/17/2019, 11:36:21 (UTC+00:00)
> >
> > > From: Jose Abreu
> > > > Sent: 17 September 2019 08:59
> > > > From: Nathan Chancellor <natechancellor@gmail.com>
> > > > Date: Sep/17/2019, 08:32:32 (UTC+00:00)
> > > >
> > > > > Hi all,
> > > > >
> > > > > Clang recently added a new diagnostic in r371605,
> -Wsizeof-array-div,
> > > > > that tries to warn when sizeof(X) / sizeof(Y) does not compute th=
e
> > > > > number of elements in an array X (i.e., sizeof(Y) is wrong). See
> that
> > > > > commit for more details:
> > > ...
> > > > > ../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: warning:
> expression
> > > > > does not compute the number of elements in this array; element
> type is
> > > > > 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
> > > > > [-Wsizeof-array-div]
> > > > >         unsigned int key_regs =3D sizeof(pdata->rss_key) /
> sizeof(u32);
> > > > >                                        ~~~~~~~~~~~~~~  ^
> > > ...
> > > > > What is the reasoning behind having the key being an array of u8s
> but
> > > > > seemlingly converting it into an array of u32s? It's not
> immediately
> > > > > apparent from reading over the code but I am not familiar with it
> so I
> > > > > might be making a mistake. I assume this is intentional? If so, t=
he
> > > > > warning can be silenced and we'll send patches to do so but we
> want to
> > > > > make sure we aren't actually papering over a mistake.
> > > >
> > > > This is because we write 32 bits at a time to the reg but internall=
y
> the
> > > > driver uses 8 bits to store the array. If you look at
> > > > dwxgmac2_rss_configure() you'll see that cfg->key is casted to u32
> which
> > > > is the value we use in HW writes. Then the for loop just does the
> math
> > > > to check how many u32's has to write.
> > >
> > > That stinks of a possible misaligned data access.....
> >
> > It's possible to happen only if structure field is not aligned. I guess
> > I can either change all to u32 or just __align the field of the struct
>
> Would __aligning the struct still produce the warning?  It's good to
> know that this case is intentional, but I would like to consider other
> instances of it before we seriously consider turning it off.  If the
> driver can be rewritten to just make use of u32, I would find that
> preferrable.
> --
> Thanks,
> ~Nick Desaulniers
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAOrgDVO2UnQtmRu_ccYDXLb2axjLc0UG-4%2BBrE%3DJCu8q1-G4fw%4=
0mail.gmail.com.

--000000000000b7bf520592c1e6a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">ut 17. 9. 2019 o=C2=A018:01 Nick Desaulniers &lt;<a hr=
ef=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; nap=
=C3=ADsal(a):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 Tue, Sep 17, 2019 at 6:27 AM Jose Abreu &lt;<a href=3D"mailto:Jose.Abreu@s=
ynopsys.com" target=3D"_blank">Jose.Abreu@synopsys.com</a>&gt; wrote:<br>
&gt;<br>
&gt; From: David Laight &lt;<a href=3D"mailto:David.Laight@ACULAB.COM" targ=
et=3D"_blank">David.Laight@ACULAB.COM</a>&gt;<br>
&gt; Date: Sep/17/2019, 11:36:21 (UTC+00:00)<br>
&gt;<br>
&gt; &gt; From: Jose Abreu<br>
&gt; &gt; &gt; Sent: 17 September 2019 08:59<br>
&gt; &gt; &gt; From: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor=
@gmail.com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
&gt; &gt; &gt; Date: Sep/17/2019, 08:32:32 (UTC+00:00)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Hi all,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Clang recently added a new diagnostic in r371605, -Wsiz=
eof-array-div,<br>
&gt; &gt; &gt; &gt; that tries to warn when sizeof(X) / sizeof(Y) does not =
compute the<br>
&gt; &gt; &gt; &gt; number of elements in an array X (i.e., sizeof(Y) is wr=
ong). See that<br>
&gt; &gt; &gt; &gt; commit for more details:<br>
&gt; &gt; ...<br>
&gt; &gt; &gt; &gt; ../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: war=
ning: expression<br>
&gt; &gt; &gt; &gt; does not compute the number of elements in this array; =
element type is<br>
&gt; &gt; &gt; &gt; &#39;u8&#39; (aka &#39;unsigned char&#39;), not &#39;u3=
2&#39; (aka &#39;unsigned int&#39;)<br>
&gt; &gt; &gt; &gt; [-Wsizeof-array-div]<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int key_regs =
=3D sizeof(pdata-&gt;rss_key) / sizeof(u32);<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ~~~~~~~~~~~~~~=C2=A0 ^<br>
&gt; &gt; ...<br>
&gt; &gt; &gt; &gt; What is the reasoning behind having the key being an ar=
ray of u8s but<br>
&gt; &gt; &gt; &gt; seemlingly converting it into an array of u32s? It&#39;=
s not immediately<br>
&gt; &gt; &gt; &gt; apparent from reading over the code but I am not famili=
ar with it so I<br>
&gt; &gt; &gt; &gt; might be making a mistake. I assume this is intentional=
? If so, the<br>
&gt; &gt; &gt; &gt; warning can be silenced and we&#39;ll send patches to d=
o so but we want to<br>
&gt; &gt; &gt; &gt; make sure we aren&#39;t actually papering over a mistak=
e.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This is because we write 32 bits at a time to the reg but in=
ternally the<br>
&gt; &gt; &gt; driver uses 8 bits to store the array. If you look at<br>
&gt; &gt; &gt; dwxgmac2_rss_configure() you&#39;ll see that cfg-&gt;key is =
casted to u32 which<br>
&gt; &gt; &gt; is the value we use in HW writes. Then the for loop just doe=
s the math<br>
&gt; &gt; &gt; to check how many u32&#39;s has to write.<br>
&gt; &gt;<br>
&gt; &gt; That stinks of a possible misaligned data access.....<br>
&gt;<br>
&gt; It&#39;s possible to happen only if structure field is not aligned. I =
guess<br>
&gt; I can either change all to u32 or just __align the field of the struct=
<br>
<br>
Would __aligning the struct still produce the warning?=C2=A0 It&#39;s good =
to<br>
know that this case is intentional, but I would like to consider other<br>
instances of it before we seriously consider turning it off.=C2=A0 If the<b=
r>
driver can be rewritten to just make use of u32, I would find that<br>
preferrable.<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAOrgDVO2UnQtmRu_ccYDXLb2axjLc0UG-4%2BBrE%3DJC=
u8q1-G4fw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAOrgDVO2UnQtmRu_ccYDXLb2axjLc0=
UG-4%2BBrE%3DJCu8q1-G4fw%40mail.gmail.com</a>.<br />

--000000000000b7bf520592c1e6a6--
