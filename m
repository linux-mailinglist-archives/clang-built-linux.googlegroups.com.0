Return-Path: <clang-built-linux+bncBD66FMGZA4IMBHEB5MCRUBDN6YKK6@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1A69B7B9
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 22:36:17 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id e17sf12640597ioh.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 13:36:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566592576; cv=pass;
        d=google.com; s=arc-20160816;
        b=cQmUcS84mRkRRjR6ttC/WibOxaTrF2H25VX2BNcYGZurtKYT9p/691Rr/D3MgStCHw
         voxLXW009mxpgcvf98qE4rbh2jzil0weCiXBsDcZMNLTIWL4d5eFo+lED+sg0FeobLso
         KsZW9Qx5Hp3g0Nmza+/fhq9WsfTxyse6EGqh7oPgGJWLikToI4M5wbmANEaXVHPLr1nb
         eXH12yE5hPwe/uXH3VLKSOd/Ywhu4MEgdxFx0wPW7+yRm0kub1ecfwFCugEnRRLPGXIJ
         gNjOidYUuCHbMYNua0ari3kVYvdsVI7zHaBn6zisaNGsny1dJtzcFBjnsvqk5/gFiE81
         WbKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=Clhan+BgologE0lWCg5rOvGGC2DvhEfSa4Bjnnrd3oY=;
        b=lzJLdO5T7UEmCaQd7iT6bZ8UH8N64dCMnyDmfINMZx7B5BpkENOK+tJ4LNdQRosIb5
         kZ6Zr/FfOIicjI1d87y1q7HNQYclHwJLnIwW96p226zoBWYmH9LrcvGDDtPq6Cz5VXV2
         RHb0oEJkCCOLp5ZLKrZHtTL8sJUEij2RXtD5mEYW3IITuWCY5+RJuEyXPJ2FxVYWYg/R
         kJPShZCl+Ejzo6XYjBj8+YdawMmnJhA0v9nhqh1sCX+Nfmd4EkgcRogNjZNLknYgcmFR
         7EKy0iaBua5eYX//dvQR62i8gMLZoomfu0JXuNhpzBxofDpJgKijh45juq9VrXh2uSVj
         37rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZCxkW8pv;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Clhan+BgologE0lWCg5rOvGGC2DvhEfSa4Bjnnrd3oY=;
        b=RqSEy771zWI5ZY8gmMEg5iQw198bgM5hin1BXBgH7TZ2tN1N9ONM59xQCBeT42hT+R
         mNEM7E32IRY7eMUJxrWK5z95sFr+2sg/QRNsY/gACiFhFYeqnPyr6uomgGE5CsYG0m4B
         PzzuN7a2sLNVoz7sEjqdD6YiixKPAELZLl5qkZ8DxGfZ5pIPLERKzZTK85kJ9DPcNDOu
         7FXnougyTnNMx4PEGk25QOJXfFU/hzdf+qzskicJOS0MIB48NEj09ER0iSJq8p4thBqw
         xtDP72JLy8hLKiTOnZ/IUXVcjPFA/vwE0HR/qY8Kydyy0C1ni1N448KTl+TPByt5zr8S
         sMpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Clhan+BgologE0lWCg5rOvGGC2DvhEfSa4Bjnnrd3oY=;
        b=XY3wND1t+CaZnB73g9NkzSlx34gOn4omJzPsWXf/26PB6epf/oTpDa/DHDvRRVaEPL
         2quhO9V6+aHIdB6MDiMlCN66qwwPpsIqiihAaW6JqKkzZnEoZjv5rVM6JScE7PIUAyHH
         93ldytoRzFQa1f3hwuvSZy8/enW4ugg2O8c6e4lRWos2c1M8nn4r86QGeGqD/7tCL63a
         R/F/ZGXeYcxNtu7Uc1Jy4uxQDghWA5Iro3ic6JhKOg2UEcGS0Sjng1F6AX4bUadXUq7D
         aeSsQ+LuCQfvzCo52dBsa4CQamOykQCFmMEatR7dR5QhY/EUDua84Ro+n0ls4CHXjVtg
         /QeA==
X-Gm-Message-State: APjAAAXEVGF/eyPq3H/9B6A37WZvrFGOVBNx4PINSu0AmHZiFIZuS0Ds
	tY4MxPXTGxHC8NIEjCVnbM8=
X-Google-Smtp-Source: APXvYqyKcL7kaLiFpWnhvMckTKSsPv6IezdUqwtA9Z+SKJTS6setLz1G+AaNscB5MetICDeMEo0sjw==
X-Received: by 2002:a6b:731a:: with SMTP id e26mr2394624ioh.188.1566592576308;
        Fri, 23 Aug 2019 13:36:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8a06:: with SMTP id w6ls3008434iod.4.gmail; Fri, 23 Aug
 2019 13:36:16 -0700 (PDT)
X-Received: by 2002:a5d:9714:: with SMTP id h20mr2977355iol.294.1566592576056;
        Fri, 23 Aug 2019 13:36:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566592576; cv=none;
        d=google.com; s=arc-20160816;
        b=vghBVNDOEcss5dLfo3taM4Nuhpt2gPam0cIDqVsOPklDoNXsvtJo8N3bUDvBf0OS7i
         wc/7X93kzKLyT0TFAdi8xqiRi7rBJx0hTVZOYxMLS/vCLxoFJ4v+fkSjnuMrj15YhT8E
         lr2WHYPBtHg85WihLH9wZlGhFn960JqB44N2+/1VCSu/UaJA6wLyWwxt2+nsymKaKq9Y
         6Bygp7p5dISJbgyfdvWJjh/UpwO9YUl+K4SlM4CnkVaDKujuvCOqOPykEBaJju3rzgIM
         5MhFS2AMCKiVZRrlSqzcNYfGVifgeZ1p7a5BwC7CCVF2z5MD//autMtG1d50eV5M68Tv
         620A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=x2cNycUtkUUTnbA84AP8GTaAL58lPc0s3W56HoYqJ08=;
        b=mUd6UVy0USNjYZp5VAEJ/8gaLhtco5fR+Q1xUYEXhNfxdWy47Cz+UD/u6TiPsUrRU3
         oe0iM4EkZ6EWSPoee79QaAEN1n5v7rdx47q02/xmBDM49LpdgrAtYZEkybm7N+3KwGnE
         DLQngucFDtmvmG2jszTcnEgPnrfSvnIbd0x3PYC8kCaX7nNq8K070a3m7lJTlIZd3f4M
         TbZgvonv/DIP5vvKJvaovx5Bi8U4SHwvO6hSOalvDWIzc6MHiIJyjphBUPSD8Lumoohe
         4Q0kx2pOse9AAGS/4rkwEB0SBLwXEkrZ7prwYrL90H6t5NRsQ33MBe6CrX8eY0ujomVJ
         VQ2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZCxkW8pv;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com. [2607:f8b0:4864:20::a33])
        by gmr-mx.google.com with ESMTPS id s24si240868ioj.4.2019.08.23.13.36.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2019 13:36:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as permitted sender) client-ip=2607:f8b0:4864:20::a33;
Received: by mail-vk1-xa33.google.com with SMTP id w20so2677479vkd.8
        for <clang-built-linux@googlegroups.com>; Fri, 23 Aug 2019 13:36:16 -0700 (PDT)
X-Received: by 2002:a1f:4588:: with SMTP id s130mr3490488vka.58.1566592574951;
 Fri, 23 Aug 2019 13:36:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAGG=3QVfgs24b962DBph0ptnoCh-1DTk4-_=DyDL5EcjBS9Wtg@mail.gmail.com>
In-Reply-To: <CAGG=3QVfgs24b962DBph0ptnoCh-1DTk4-_=DyDL5EcjBS9Wtg@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Aug 2019 13:36:03 -0700
Message-ID: <CAGG=3QX4xWeLnOJ3OmaxxWJbrK1CuxT71grYuzC4jCaAufNicA@mail.gmail.com>
Subject: Re: [Announcement] Clang-Built Linux Meet-Up
To: clang linux fellowship <clang-linux-fellowship@google.com>, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000f08e6d0590cec1d5"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZCxkW8pv;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as
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

--000000000000f08e6d0590cec1d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Everyone,

I'm very sorry to announce that we will have to postpone this event. We
have hit a few snags on our end and it makes the end of September
very difficult. I wanted to send this out before people book tickets for
travel, but if you have please contact me and let me know.

I can't express how sorry I am...

-bw

On Sun, Aug 18, 2019 at 3:54 PM Bill Wendling <morbo@google.com> wrote:

> *The Clang-Built Linux Meet-Up is Go!*
>
> *Where:* Google campus in Z=C3=BCrich, Switzerland
> *When:* 27th-29th September 2019
>
> We're happy to announce the first clang-built Linux meet-up 27th-29th
> September in Z=C3=BCrich, Switzerland!
>
> The meet-up is a casual affair with no set agenda. The purpose is to get
> together in person to discuss the project. We'll use Google's Z=C3=BCrich=
 campus
> as a central point, but can branch out from there.
>
> Even though there's no formal agenda, if you have a presentation you woul=
d
> like to give we would love to hear it! Please email Nick Desaulniers and =
I
> if you'd like to give a presentation.
>
> We don't have a webpage set up for this event, so if you're planning on
> attending please email me and Nick Desaulniers so that we can get an
> estimate of how many people to expect.
>
> We hope to see you there!
>
> Share and enjoy!
> -bw
>
> *Logistics*
>
> Map: Google's Z=C3=BCrich Campus
> Hotels: (I've stayed in the first two before. They're pretty cool! The
> Engimatt looks interesting.)
> B2 Boutique Hotel <https://www.b2boutiquehotels.com/de/>
> Sheraton Four-Points Sihl City
> <https://www.marriott.com/hotels/travel/zrhfp-four-points-sihlcity-zurich=
/>
> Engimatt Hotel <https://engimatt.ch/en/>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGG%3D3QX4xWeLnOJ3OmaxxWJbrK1CuxT71grYuzC4jCaAufNicA%40m=
ail.gmail.com.

--000000000000f08e6d0590cec1d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Everyone,</div><div><br></div><div>I&#39;m very so=
rry to announce that we will have to postpone this event. We have hit a few=
 snags on our end and it makes the end of September very=C2=A0difficult. I =
wanted to send this out before people book tickets for travel, but if you h=
ave please contact me and let me know.</div><div><br></div><div>I can&#39;t=
 express how sorry I am...</div><div><br></div><div>-bw</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Aug 18=
, 2019 at 3:54 PM Bill Wendling &lt;<a href=3D"mailto:morbo@google.com">mor=
bo@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><b><font size=3D"4">The Clang-Built Linux Mee=
t-Up is Go!</font></b><div><b><br></b></div><div><b>Where:</b>=C2=A0Google =
campus in Z=C3=BCrich, Switzerland</div><div><b>When:</b>=C2=A027th-29th Se=
ptember 2019</div><div><b><br></b></div><div>We&#39;re happy to announce th=
e first clang-built Linux meet-up 27th-29th September in Z=C3=BCrich, Switz=
erland!</div><div><br></div><div>The meet-up is a casual affair with no set=
 agenda. The purpose is to get together in person to discuss the project. W=
e&#39;ll use Google&#39;s Z=C3=BCrich campus as a central point, but can br=
anch out from there.</div><div><br></div><div>Even though there&#39;s no fo=
rmal agenda, if you have a presentation you would like to give we would lov=
e to hear it! Please email Nick Desaulniers and I if you&#39;d like to give=
 a presentation.</div><div><br></div><div>We don&#39;t have a webpage=C2=A0=
set up for this event, so if you&#39;re planning on attending please email =
me and Nick Desaulniers so that we can get an estimate of how many people t=
o expect.</div><div><br></div><div>We hope to see you there!</div><div><br>=
</div><div>Share and enjoy!</div><div>-bw</div><div><br></div><div><b>Logis=
tics</b></div><div><br></div><div>Map:=C2=A0<a>Google&#39;s Z=C3=BCrich Cam=
pus</a></div><div>Hotels: (I&#39;ve stayed in the first two before. They&#3=
9;re pretty cool! The Engimatt looks interesting.)</div><div><a href=3D"htt=
ps://www.b2boutiquehotels.com/de/" target=3D"_blank">B2 Boutique Hotel</a><=
/div><div><a href=3D"https://www.marriott.com/hotels/travel/zrhfp-four-poin=
ts-sihlcity-zurich/" target=3D"_blank">Sheraton Four-Points Sihl City</a><b=
r></div><div><a href=3D"https://engimatt.ch/en/" target=3D"_blank">Engimatt=
 Hotel</a><br></div><div><br></div></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QX4xWeLnOJ3OmaxxWJbrK1CuxT71grYuzC4jCa=
AufNicA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAGG%3D3QX4xWeLnOJ3OmaxxWJbrK1Cux=
T71grYuzC4jCaAufNicA%40mail.gmail.com</a>.<br />

--000000000000f08e6d0590cec1d5--
