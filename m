Return-Path: <clang-built-linux+bncBD66FMGZA4IPBNME6ICRUBAKPA7T2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB5157148
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 09:57:21 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id e3sf2766389qkf.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 00:57:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581325040; cv=pass;
        d=google.com; s=arc-20160816;
        b=rUZLMIQ/HJUD3mp3kH/u6PVEbnUF+mNOa3es5R1xrkoYEN/rRYR8jqNzueAKbawfji
         vhCGyAa6DXyqTVCkRW1xfwnBcwWWOVL1dgclErcMfkNjAKfvbFnqGGlERFps+NKxEh9I
         0nEtnC917VcvT3IqsRWqQvBw2pfJhKJglcWkS5CHyl4sLffme1uuV1AB/HftmeVUOlDl
         v9leSkOc0DTo0Od6yz15QYB9Q4VR2mIGas4DzLq004phH69PxRG9j7b6QDJjsvS7e8m0
         xc1ynj6E/0fttF0A1LyM16Z4kFh2X6U8EIe/AA1Y/1bjspnZB1KT71mZmODaRWM2ntD9
         Q8FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cvG5ts+wNnC01uOzbq0REqBktNqMSuSf4fQC4CBhddk=;
        b=0On0TjKAx+jQLzUtQIXJ8tr3CFBgWDKGkXOVOQIc6WM1Ds12/8+9Ph/zdgiA5DOyDf
         VcpiUA4NzbQRZQ9I0d+ll55bRBKoTQmqldGxVcPwt6APihk5MgRpbi+nY72+XDRlY67b
         xTn/uVvaGT5F3UMgaZO04T1RhpboldlIEklE5cbiABQSDC9G2ldWFLWLfsXiZmQHpSxv
         XN43LBvkzFE92LYRX9VvAPBK0bWelJLbF7wlSD/O1QiC+ElJvPTjzbVnyCeCJ06Clgok
         Ccq8u0kloShZ6EMkJxmlZE9T7NvgEO89SS4E8I5lMbL6OARUpy2sUvERpC0kA5ylB4ZH
         uMUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hF8ARgIC;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::930 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvG5ts+wNnC01uOzbq0REqBktNqMSuSf4fQC4CBhddk=;
        b=G5zgbrr+SyInQI7jBvMKLpxaUlkoprYQC0KXhsdm+4xIIAbM3ONdJedWsXOkiRNt3c
         NvVjCWYfVI5ATFffw6CESI3ztuL/HaP+ArcmUoXB6g1oHSwRPF1His0MAvdyBiTHs2GE
         CvbVVn3yxnMrpUApUz6p5bSIZVE99BF9/Nusut4UHy5UL1oUmuBsAK94eZux3ejHb0T9
         SKkVdi4sIzamaUoUq4KOnl+pZJzX1hAqHX4mC7Iqk7m6w3KRpV9+9lhrvcbVad6May8L
         pyNCG0THYL0LsetxSpnavbtbNP6ZO2BCSYQiqkBG7NlVMIar8oMqzXcgNUwf6mMUkqXu
         rv6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvG5ts+wNnC01uOzbq0REqBktNqMSuSf4fQC4CBhddk=;
        b=RFtT9Sx4/azfiktkCqtHimeNveYmAB7KBuxdxvu/Q19p3ndG4uSoWugSPWo4umycHt
         z10Qr5tPoQBDEjdeH2jzydSqU3oKOvh5Gi8KNWOUwGUSSqs1pcp4l1RtJPHW8rh//oQF
         CYM/1T5hI1whDyiLBBsgB2RSCLA/vyf7cuc3LEg9JsMfFDJHptVxqc6AHvlQYcKT9ZQH
         N4y5bY3LBp/omgCxH11Fs2V6wyiMDgNhk+PQWgxzQpF6xMVGQ2JQfwvMdlDDe7Kin6Ze
         GBmr4/UISim3UVP3MiEissafhlRXEEAhVZUkh9Tak5OcGHMxv0ev+Ur3XaFkxCl919rU
         vZOA==
X-Gm-Message-State: APjAAAUhBlf3kTFCL0DRyyuxTD9fTcmnG5f0qMYTfGzBrtcTRIEL6Sij
	Gu2xcE64OrERlVuVvvhJ8+8=
X-Google-Smtp-Source: APXvYqzoAlp+QdSpeVm0aRCoOGZcxlA+T2JECAhfw4xcRWMn8mKTwUZcvOOJWCUPttANuFeO56otsw==
X-Received: by 2002:ad4:5304:: with SMTP id y4mr8966751qvr.56.1581325040390;
        Mon, 10 Feb 2020 00:57:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:108:: with SMTP id e8ls2356551qtg.4.gmail; Mon, 10 Feb
 2020 00:57:20 -0800 (PST)
X-Received: by 2002:ac8:187b:: with SMTP id n56mr9179033qtk.173.1581325040051;
        Mon, 10 Feb 2020 00:57:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581325040; cv=none;
        d=google.com; s=arc-20160816;
        b=O7DEm7UDzSZPILGvo1dvCdMeD+A4bSXhpR32lgOTldiGKyYurssQTH5vNMeoM04EM4
         rqP+WgLsc9ZsZodk+XDp1tq0tdBCjVhOJixbP8TW6/dRhd8e2q7mZzo/p+j31knurndb
         1Mi1IL9iFA06AyXbIy8jKk4PBwZwPUlXQX98gKuf+ZT+eat8ok0uPL84sJZHJHWOzk74
         bE7MLXgtY4aVYOyJcoaK9g1pDLrS9k8o5PFPWiac+zTcervxhEtktZfW3T7o6PnrB1Nx
         uXoF0tfLliVD36LtpVgq5x+01C4X5xOh59w33unkub1IDjgum/jVhzOVfaKrqJ/SfRbA
         seYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+d5CePo5z9G2J3Mmnf68ZlzIdP3iMmg2dev4ImnLs7A=;
        b=OGNEC4RGP0ICkb04/V2Vo2cM4QbMHTljElKBape70Qu8QqzhHelI26L0vMFVSiARXo
         t/Hg6cTpiU9Fhb7Q6z40amUzcLNl7+2/kgw98ABfsF47m8NLbKO7mj48MkRC5C9anrpw
         eF9KIvyqANxrSM7Z5DaY0G52R0uHTOhBejp5vMyngICxaEDhh/A7OQDM8Zzo9F42zRx5
         UUg+VXJ1mR2UARZbY2KZNvRrIajIkyUUhdJ9PRZtylSoJdXB48JEAWWO5JhPkoUVdIUw
         Ej0fcYavuAzoiegdEU0E7sZInenxbFQ/0Y05i1+YqAjEbDqVkch/683N0e9NdsWakWLq
         7eEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hF8ARgIC;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::930 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com. [2607:f8b0:4864:20::930])
        by gmr-mx.google.com with ESMTPS id o21si259083qtb.3.2020.02.10.00.57.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 00:57:20 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::930 as permitted sender) client-ip=2607:f8b0:4864:20::930;
Received: by mail-ua1-x930.google.com with SMTP id f7so2153344uaa.8
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 00:57:20 -0800 (PST)
X-Received: by 2002:ab0:14a2:: with SMTP id d31mr112745uae.106.1581325039380;
 Mon, 10 Feb 2020 00:57:19 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmsx6OGr2FiHvATJY2dvFURrc8suYFSt-md_5tCV9ORmw@mail.gmail.com>
In-Reply-To: <CAKwvOdmsx6OGr2FiHvATJY2dvFURrc8suYFSt-md_5tCV9ORmw@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 10 Feb 2020 09:57:08 +0100
Message-ID: <CAGG=3QVPt8iSh3iNLAy3pbntA3=_-4Bod9q8_3_2=PJSKrkPUw@mail.gmail.com>
Subject: Re: Thanks for attending ClangBuiltLinux 2020 meetup!
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Behan Webster <behanw@converseincode.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nathan Huckleberry <nhuck15@gmail.com>, Dmitry Golovin <dima@golovin.in>, Peter Smith <Peter.Smith@arm.com>, 
	Masahiro Yamada <masahir0yamad@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Stefan Agner <stefan@agner.ch>, Alexander Potapenko <glider@google.com>
Content-Type: multipart/alternative; boundary="0000000000003f9fd8059e34edd7"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hF8ARgIC;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::930 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--0000000000003f9fd8059e34edd7
Content-Type: text/plain; charset="UTF-8"

I also want to thank you again for attending and presenting such great
talks. I enjoyed meeting many of you for the first time in person.

We don't have an official feedback form, but I would like to know your
thoughts on the meetup: what went well, what can be improved, etc. Please
feel free to contact Nick and/or I individually with your thoughts.

Cheers!

-bw

On Sat, Feb 8, 2020 at 6:03 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Thanks all for attending our first meetup! We hope you found it as fun
> and useful as we did; late night debugging and bug fixes, hallway
> conversations, meals together, getting to meet in person, etc.
>
> We'd love any feedback you have for us; reply to me or Bill.
>
> If you have slides, please email them to me, or better yet commit them to:
> https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides
>
> I think I will upload photos there, too.  If you have some, please
> share them with me.
>
> For logistics, please triple check your email to see if any flights
> have been cancelled due to the hurricane in Germany; already one
> flight has been cancelled.
>
> Also, please make sure the hotel doesn't ask for your personal card
> when checking out.  It should be covered; have them contact me (they
> should be able to get my room via my name).  We've had some issues,
> and I've had to clear things up but we should be all set now.  Just be
> vigilant.
>
> If you're already on the road, safe travels.
> If you're joining us for dinner, meet in the hotel lobby at 19:00.
> If you're joining us tomorrow, maybe 8:30 in the lobby/breakfast as usual?
>
> Thanks again for joining, and please remember to fix your compiler.
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVPt8iSh3iNLAy3pbntA3%3D_-4Bod9q8_3_2%3DPJSKrkPUw%40mail.gmail.com.

--0000000000003f9fd8059e34edd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I also want to thank you again for attending and presentin=
g such great talks. I enjoyed meeting many of you for the first time in per=
son.<div><br></div><div>We don&#39;t have an official feedback form, but I =
would like to know your thoughts on the meetup: what went well, what can be=
 improved, etc. Please feel free to contact Nick and/or I individually with=
 your thoughts.</div><div><br></div><div>Cheers!<br><div><br></div><div>-bw=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Sat, Feb 8, 2020 at 6:03 PM Nick Desaulniers &lt;<a href=3D"=
mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Thanks all for atten=
ding our first meetup! We hope you found it as fun<br>
and useful as we did; late night debugging and bug fixes, hallway<br>
conversations, meals together, getting to meet in person, etc.<br>
<br>
We&#39;d love any feedback you have for us; reply to me or Bill.<br>
<br>
If you have slides, please email them to me, or better yet commit them to:<=
br>
<a href=3D"https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/CBL-me=
etup-2020-slides</a><br>
<br>
I think I will upload photos there, too.=C2=A0 If you have some, please<br>
share them with me.<br>
<br>
For logistics, please triple check your email to see if any flights<br>
have been cancelled due to the hurricane in Germany; already one<br>
flight has been cancelled.<br>
<br>
Also, please make sure the hotel doesn&#39;t ask for your personal card<br>
when checking out.=C2=A0 It should be covered; have them contact me (they<b=
r>
should be able to get my room via my name).=C2=A0 We&#39;ve had some issues=
,<br>
and I&#39;ve had to clear things up but we should be all set now.=C2=A0 Jus=
t be<br>
vigilant.<br>
<br>
If you&#39;re already on the road, safe travels.<br>
If you&#39;re joining us for dinner, meet in the hotel lobby at 19:00.<br>
If you&#39;re joining us tomorrow, maybe 8:30 in the lobby/breakfast as usu=
al?<br>
<br>
Thanks again for joining, and please remember to fix your compiler.<br>
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
om/d/msgid/clang-built-linux/CAGG%3D3QVPt8iSh3iNLAy3pbntA3%3D_-4Bod9q8_3_2%=
3DPJSKrkPUw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVPt8iSh3iNLAy3pbntA3=
%3D_-4Bod9q8_3_2%3DPJSKrkPUw%40mail.gmail.com</a>.<br />

--0000000000003f9fd8059e34edd7--
