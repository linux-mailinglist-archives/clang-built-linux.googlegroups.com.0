Return-Path: <clang-built-linux+bncBAABBFPC4T7AKGQEK3K6ZTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 806E92DB624
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 22:56:38 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id y16sf4730548ual.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 13:56:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608069397; cv=pass;
        d=google.com; s=arc-20160816;
        b=cjCSkm3669Gsy0QmyFZK/fB/BIjQelPxu9oXQMtbAYh3eQ+uIfn9H/nOK+FKIDBpDa
         O/C/RXX/vs3rg8E7SCdR3foCTVHetmapJF+Tu1Ly/AXCNHodi3n/+qnQhCk3fPXXrndR
         NEEkHxRwhgFugO4rBiAujVXnU5VgtlW5ZHgMwjMzShKwQd0cINPCkgwC2Tq/ot7O3XwZ
         BG9ugmSslqEikE5zsT8GgVbue/VqlIA3WGxBaIwybS0GX4JE5K9CsWb+WzcFZCgbNxNh
         lw3AN1x5+mByRzue1T051i9A9DMVqKR6R7/JhrBFih4c2vymz0UJKEOJ5qpb9tyRTL3s
         mswA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:dkim-signature;
        bh=WHda6uo5xyc/cb9sGyKH5SVYXnGm9k+hjCmpssD7hjg=;
        b=WkhvYhOFXlqY1r5SZT6uC1EYbPnqC9RAx/eths15Yd6KE3WYJ/O3WDvgt1yPP91RpW
         lOSuWAM4V2rUEvJ/EkhUVze48GdQOa0qH3NsNCyIHWhF2FxPik4HtL2b474fLQJp3fKo
         DRmQ7v8ZHbeQtcp2qEcLmnvCXPimFhhveNeM3JGc1cAnsTWJTCIAjinLWgx+hQ9mJMpL
         QOVVXjqtBDbYWWcp9bDS92wsb8ueZqCj9w3zhwMhzChV+NKoUsk+l0wiClB8f33MLzYL
         W5GGECUu1XdCvpAYtJg1Ymrr9dpyrzqeHpONbnlbbFxJ42yeS6LNqGWF1ixo7tpR3Y4E
         ATTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haidong.yao@unisoc.com designates 222.66.158.135 as permitted sender) smtp.mailfrom=Haidong.Yao@unisoc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WHda6uo5xyc/cb9sGyKH5SVYXnGm9k+hjCmpssD7hjg=;
        b=g0jB8BcNuXJgzS2UTMOueXfAocfoScMnpFvbz1hpWLcF4t2S1PD+It+WKy3lFPm/JT
         avW7clFTcxojpnalcXvKVDxDyALL5ngX/NQpvHoTrNIDzMlybe9cXGvOsc2tRBQiNk5g
         KsaISt0RGX7C4nh5a37IhPM438PXW97UzUfJaYT2GFVZEpTHhgfpL8Pi7UrWG1kFtIfH
         RRzPfMGTP6VoXdOnlrueBMnKxvwEcuKHpqHAYbhT08qiJUGn9FLmkV+QxZNySm6FMxK1
         iFjJZ5NgCpzMmhBnxlFz7zXK8tNnmEBQEg7B0rTZHqIULWElPkunt2FyvOGU5yM9Dw7k
         G4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WHda6uo5xyc/cb9sGyKH5SVYXnGm9k+hjCmpssD7hjg=;
        b=KfD0GBVq5mpBOasEHXXUPwX3CnRkKP2n+9hfEZ2ne+SUImG75nTImADK8l0OzOOgS1
         LZ+w7Z/bhKRkJJL3VGdUCcs57t1aglOX8huTwowPsbc55lSEpbnw6m75xdUfwy+joIx6
         a/JAk13WkUbvBCbklfidF9GIA626w8H7nkygD4QCGmzu+sVAAbbujpoikVpLhkTZOR/1
         Eqrnf3+IO3DT5SUPAWG7wfAnJY1QSySVegakjEtzukHKbWpqUFSuC6sDER/q6eiGXZBP
         Ms+AwlZwMBCCkEM+EnWqnILf+fIBZW0CoYqRIjBxzhdYOqZp2bM/LPqWIopunN9/IXAg
         33/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321hISy4KCEv6Q+aTWm6/nHGASdAeToTw5HiK2jqF4zAtMXwSN2
	NlQHgm/VnEdQUjVzclZ1W7A=
X-Google-Smtp-Source: ABdhPJzmQ5Rd8NZO6a/2T5tQHcq24gGxmMXNBM13h28B23PxPV0babAIJv3+qzhZqikPRE3IALj9TA==
X-Received: by 2002:a1f:95c6:: with SMTP id x189mr12388074vkd.9.1608069397309;
        Tue, 15 Dec 2020 13:56:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6155:: with SMTP id w21ls1568057uan.0.gmail; Tue, 15 Dec
 2020 13:56:36 -0800 (PST)
X-Received: by 2002:ab0:d90:: with SMTP id i16mr28767148uak.23.1608069396803;
        Tue, 15 Dec 2020 13:56:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608069396; cv=none;
        d=google.com; s=arc-20160816;
        b=H4JEHG81hAZ1P8sXLX7ggvs4Rn9J7eLNiDyw/PcQpvopKPfM9GrEGRtixKgeug368n
         DrQ0b45dnyPQPD8nhvkCtz1GV3IsoxtCsjanhDFxRbR7EMQDgpEwsEfpVCQ9EVNmGpPU
         xq6PEhmBLr3Z4GEisr+VQ+fnifTkdMGbK9BzSqDQQ+UviX8t/eZBKYDyKlasrLh4jQJr
         AiGMLgX3w330VRjZeTCOtnz0prmH05D4VPC0ci9PoO1n5e81pXDSVlk7lSM5M9VqGvcR
         5hC7NNWHa/C7BsuSau/jPsaNt9VToYSaTHBpdPnnnyijobB/e68zoSK/0peM7SeRrkhU
         MQig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:cc:to:from;
        bh=m302XBbsJm+pJqV0EfXS2U12XO3awSOxeNoj5PFS7Tg=;
        b=ly3YGmcMuOg4y9OLGC+JgoyH8dq6yAsLOCjMPLFjqohNJk1AdRqxH6WmaK48hlCIZo
         vEKSELTgDGKkLoqjgaqQR24vko37plA1TuCBs1lj+ZHlTNwRhDsjBVCBcCX/jpZoNcUy
         LyDhdtQdVoGMUzAKTneygwpXbSw0GnIYxNdg2hy4rg5JaUu/iqVaCqkbajRbjZPOwK4+
         stnDwmlBxmyvjlbZCf7AIqBF4buJxUgII40bl2Cmn5A8fg6FBSmP27V5cGTfOmO54/qs
         8QM10Yv7r2FH2W6A5EP9ES8/mTq3LLBqkLiBfTJNJoule6Ak26z/cn69ccKXcnqgEiUJ
         bd/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haidong.yao@unisoc.com designates 222.66.158.135 as permitted sender) smtp.mailfrom=Haidong.Yao@unisoc.com
Received: from SHSQR01.spreadtrum.com ([222.66.158.135])
        by gmr-mx.google.com with ESMTPS id e2si475vkk.0.2020.12.15.13.56.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 13:56:36 -0800 (PST)
Received-SPF: pass (google.com: domain of haidong.yao@unisoc.com designates 222.66.158.135 as permitted sender) client-ip=222.66.158.135;
Received: from ig2.spreadtrum.com (bjmbx02.spreadtrum.com [10.0.64.8])
	by SHSQR01.spreadtrum.com with ESMTPS id 0BFLswb1028390
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 16 Dec 2020 05:54:58 +0800 (CST)
	(envelope-from Haidong.Yao@unisoc.com)
Received: from BJMBX02.spreadtrum.com (10.0.64.8) by BJMBX02.spreadtrum.com
 (10.0.64.8) with Microsoft SMTP Server (TLS) id 15.0.847.32; Wed, 16 Dec 2020
 05:54:36 +0800
Received: from BJMBX02.spreadtrum.com ([::1]) by BJMBX02.spreadtrum.com
 ([fe80::f5ea:e944:c620:5c02%19]) with mapi id 15.00.0847.030; Wed, 16 Dec
 2020 05:54:17 +0800
From: =?utf-8?B?5aea5rW35LicIChIYWlkb25nIFlhbyk=?= <Haidong.Yao@unisoc.com>
To: "Haidong Yao " <yaohaidong369@gmail.com>,
        "Jassi Brar "
	<jassisinghbrar@gmail.com>
CC: "natechancellor@gmail.com " <natechancellor@gmail.com>,
        "
 ndesaulniers@google.com " <ndesaulniers@google.com>,
        " Linux Kernel Mailing
 List " <linux-kernel@vger.kernel.org>,
        " clang-built-linux@googlegroups.com "
	<clang-built-linux@googlegroups.com>,
        " Orson Zhai " <orsonzhai@gmail.com>,
        " Chunyan Zhang " <zhang.lyra@gmail.com>
Subject: =?utf-8?B?5Zue5aSN77yaUmU6IFtQQVRDSF0gYWRkIGNoYW4tPmNsIGNoZWNrIGluIG1i?=
 =?utf-8?B?b3hfY2hhbl9yZWNlaXZlZF9kYXRhKCk=?=
Thread-Topic: =?utf-8?B?5Zue5aSN77yaUmU6IFtQQVRDSF0gYWRkIGNoYW4tPmNsIGNoZWNrIGluIG1i?=
 =?utf-8?B?b3hfY2hhbl9yZWNlaXZlZF9kYXRhKCk=?=
Thread-Index: AQHW0yzVmAOjb1/gUECxBJv7MwtK5Q==
Date: Tue, 15 Dec 2020 21:54:16 +0000
Message-ID: <tencent_302E2D381D276DF94A1E9719@qq.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: QQMail 2.x
Content-Type: multipart/alternative;
	boundary="_000_tencent302E2D381D276DF94A1E9719qqcom_"
MIME-Version: 1.0
X-MAIL: SHSQR01.spreadtrum.com 0BFLswb1028390
X-Original-Sender: haidong.yao@unisoc.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haidong.yao@unisoc.com designates 222.66.158.135 as
 permitted sender) smtp.mailfrom=Haidong.Yao@unisoc.com
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

--_000_tencent302E2D381D276DF94A1E9719qqcom_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This happens when rx_callback's driver(*. ko)has not yet been loaded. Inter=
rupts happen randomly=EF=BC=8C so  this chan->cl is Null.


---------------=E5=8E=9F=E5=A7=8B=E9=82=AE=E4=BB=B6---------------
=E5=8F=91=E4=BB=B6=E4=BA=BA: Jassi Brar
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2020=E5=B9=B412=E6=9C=8816=E6=97=A5 0=
5:20
=E6=94=B6=E4=BB=B6=E4=BA=BA: Haidong Yao
=E6=8A=84=E9=80=81=E4=BA=BA: natechancellor@gmail.com =EF=BC=8C ndesaulnier=
s@google.com =EF=BC=8C Linux Kernel Mailing List =EF=BC=8C clang-built-linu=
x@googlegroups.com =EF=BC=8C Orson Zhai =EF=BC=8C Chunyan Zhang =EF=BC=8C =
=E5=A7=9A=E6=B5=B7=E4=B8=9C (Haidong Yao)
=E4=B8=BB=E9=A2=98: Re: [PATCH] add chan->cl check in mbox_chan_received_da=
ta()
On Tue, Dec 15, 2020 at 2:48 AM Haidong Yao <yaohaidong369@gmail.com> wrote=
:

> --- a/drivers/mailbox/mailbox.c
> +++ b/drivers/mailbox/mailbox.c
> @@ -152,7 +152,7 @@ static enum hrtimer_restart txdone_hrtimer(struct hrt=
imer *hrtimer)
>  void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
>  {
>         /* No buffering the received data */
> -       if (chan->cl->rx_callback)
> +       if (chan->cl && chan->cl->rx_callback)
>                 chan->cl->rx_callback(chan->cl, mssg);
>  }
The proper fix is in the controller driver. Which should stop tx/rx
when the channel is freed.

thnx.


---------------=E5=8E=9F=E5=A7=8B=E9=82=AE=E4=BB=B6---------------
=E5=8F=91=E4=BB=B6=E4=BA=BA: Jassi Brar
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2020=E5=B9=B412=E6=9C=8816=E6=97=A5 0=
5:20
=E6=94=B6=E4=BB=B6=E4=BA=BA: Haidong Yao
=E6=8A=84=E9=80=81=E4=BA=BA: natechancellor@gmail.com =EF=BC=8C ndesaulnier=
s@google.com =EF=BC=8C Linux Kernel Mailing List =EF=BC=8C clang-built-linu=
x@googlegroups.com =EF=BC=8C Orson Zhai =EF=BC=8C Chunyan Zhang =EF=BC=8C =
=E5=A7=9A=E6=B5=B7=E4=B8=9C (Haidong Yao)
=E4=B8=BB=E9=A2=98: Re: [PATCH] add chan->cl check in mbox_chan_received_da=
ta()
On Tue, Dec 15, 2020 at 2:48 AM Haidong Yao <yaohaidong369@gmail.com> wrote=
:

> --- a/drivers/mailbox/mailbox.c
> +++ b/drivers/mailbox/mailbox.c
> @@ -152,7 +152,7 @@ static enum hrtimer_restart txdone_hrtimer(struct hrt=
imer *hrtimer)
>  void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)
>  {
>         /* No buffering the received data */
> -       if (chan->cl->rx_callback)
> +       if (chan->cl && chan->cl->rx_callback)
>                 chan->cl->rx_callback(chan->cl, mssg);
>  }
The proper fix is in the controller driver. Which should stop tx/rx
when the channel is freed.

thnx.
________________________________
This email (including its attachments) is intended only for the person or e=
ntity to which it is addressed and may contain information that is privileg=
ed, confidential or otherwise protected from disclosure. Unauthorized use, =
dissemination, distribution or copying of this email or the information her=
ein or taking any action in reliance on the contents of this email or the i=
nformation herein, by anyone other than the intended recipient, or an emplo=
yee or agent responsible for delivering the message to the intended recipie=
nt, is strictly prohibited. If you are not the intended recipient, please d=
o not read, copy, use or disclose any part of this e-mail to others. Please=
 notify the sender immediately and permanently delete this e-mail and any a=
ttachments if you received it in error. Internet communications cannot be g=
uaranteed to be timely, secure, error-free or virus-free. The sender does n=
ot accept liability for any errors or omissions.
=E6=9C=AC=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E9=99=84=E4=BB=B6=E5=85=B7=E6=
=9C=89=E4=BF=9D=E5=AF=86=E6=80=A7=E8=B4=A8=EF=BC=8C=E5=8F=97=E6=B3=95=E5=BE=
=8B=E4=BF=9D=E6=8A=A4=E4=B8=8D=E5=BE=97=E6=B3=84=E9=9C=B2=EF=BC=8C=E4=BB=85=
=E5=8F=91=E9=80=81=E7=BB=99=E6=9C=AC=E9=82=AE=E4=BB=B6=E6=89=80=E6=8C=87=E7=
=89=B9=E5=AE=9A=E6=94=B6=E4=BB=B6=E4=BA=BA=E3=80=82=E4=B8=A5=E7=A6=81=E9=9D=
=9E=E7=BB=8F=E6=8E=88=E6=9D=83=E4=BD=BF=E7=94=A8=E3=80=81=E5=AE=A3=E4=BC=A0=
=E3=80=81=E5=8F=91=E5=B8=83=E6=88=96=E5=A4=8D=E5=88=B6=E6=9C=AC=E9=82=AE=E4=
=BB=B6=E6=88=96=E5=85=B6=E5=86=85=E5=AE=B9=E3=80=82=E8=8B=A5=E9=9D=9E=E8=AF=
=A5=E7=89=B9=E5=AE=9A=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=8C=E8=AF=B7=E5=8B=BF=
=E9=98=85=E8=AF=BB=E3=80=81=E5=A4=8D=E5=88=B6=E3=80=81 =E4=BD=BF=E7=94=A8=
=E6=88=96=E6=8A=AB=E9=9C=B2=E6=9C=AC=E9=82=AE=E4=BB=B6=E7=9A=84=E4=BB=BB=E4=
=BD=95=E5=86=85=E5=AE=B9=E3=80=82=E8=8B=A5=E8=AF=AF=E6=94=B6=E6=9C=AC=E9=82=
=AE=E4=BB=B6=EF=BC=8C=E8=AF=B7=E4=BB=8E=E7=B3=BB=E7=BB=9F=E4=B8=AD=E6=B0=B8=
=E4=B9=85=E6=80=A7=E5=88=A0=E9=99=A4=E6=9C=AC=E9=82=AE=E4=BB=B6=E5=8F=8A=E6=
=89=80=E6=9C=89=E9=99=84=E4=BB=B6=EF=BC=8C=E5=B9=B6=E4=BB=A5=E5=9B=9E=E5=A4=
=8D=E9=82=AE=E4=BB=B6=E7=9A=84=E6=96=B9=E5=BC=8F=E5=8D=B3=E5=88=BB=E5=91=8A=
=E7=9F=A5=E5=8F=91=E4=BB=B6=E4=BA=BA=E3=80=82=E6=97=A0=E6=B3=95=E4=BF=9D=E8=
=AF=81=E4=BA=92=E8=81=94=E7=BD=91=E9=80=9A=E4=BF=A1=E5=8F=8A=E6=97=B6=E3=80=
=81=E5=AE=89=E5=85=A8=E3=80=81=E6=97=A0=E8=AF=AF=E6=88=96=E9=98=B2=E6=AF=92=
=E3=80=82=E5=8F=91=E4=BB=B6=E4=BA=BA=E5=AF=B9=E4=BB=BB=E4=BD=95=E9=94=99=E6=
=BC=8F=E5=9D=87=E4=B8=8D=E6=89=BF=E6=8B=85=E8=B4=A3=E4=BB=BB=E3=80=82

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/tencent_302E2D381D276DF94A1E9719%40qq.com.

--_000_tencent302E2D381D276DF94A1E9719qqcom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <F9B166887BDEC1499A58DA6A8D82575E@unisoc.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
</head>
<body>
This&nbsp;happens&nbsp;when&nbsp;rx_callback's&nbsp;driver(*.&nbsp;ko)has&n=
bsp;not&nbsp;yet&nbsp;been&nbsp;loaded.&nbsp;Interrupts&nbsp;happen&nbsp;ra=
ndomly=EF=BC=8C&nbsp;so&nbsp;&nbsp;this&nbsp;chan-&gt;cl&nbsp;is&nbsp;Null.=
&nbsp;<br>
<br>
<br>
<font size=3D"2">---------------=E5=8E=9F=E5=A7=8B=E9=82=AE=E4=BB=B6-------=
--------</font><br>
<font color=3D"#212121"><font size=3D"2">=E5=8F=91=E4=BB=B6=E4=BA=BA:&nbsp;=
Jassi&nbsp;Brar&nbsp;</font></font><br>
<font color=3D"#212121"><font size=3D"2">=E5=8F=91=E9=80=81=E6=97=B6=E9=97=
=B4:&nbsp;2020=E5=B9=B412=E6=9C=8816=E6=97=A5&nbsp;05:20</font></font><br>
<font color=3D"#212121"><font size=3D"2">=E6=94=B6=E4=BB=B6=E4=BA=BA:&nbsp;=
Haidong&nbsp;Yao&nbsp;</font></font><br>
<font color=3D"#212121"><font size=3D"2">=E6=8A=84=E9=80=81=E4=BA=BA:&nbsp;=
natechancellor@gmail.com&nbsp;=EF=BC=8C&nbsp;ndesaulniers@google.com&nbsp;=
=EF=BC=8C&nbsp;Linux&nbsp;Kernel&nbsp;Mailing&nbsp;List&nbsp;=EF=BC=8C&nbsp=
;clang-built-linux@googlegroups.com&nbsp;=EF=BC=8C&nbsp;Orson&nbsp;Zhai&nbs=
p;=EF=BC=8C&nbsp;Chunyan&nbsp;Zhang&nbsp;=EF=BC=8C&nbsp;=E5=A7=9A=E6=B5=B7=
=E4=B8=9C&nbsp;(Haidong&nbsp;Yao)&nbsp;</font></font><br>
<font color=3D"#212121"><font size=3D"2">=E4=B8=BB=E9=A2=98:&nbsp;Re:&nbsp;=
[PATCH]&nbsp;add&nbsp;chan-&gt;cl&nbsp;check&nbsp;in&nbsp;mbox_chan_receive=
d_data()</font></font><br>
On&nbsp;Tue,&nbsp;Dec&nbsp;15,&nbsp;2020&nbsp;at&nbsp;2:48&nbsp;AM&nbsp;Hai=
dong&nbsp;Yao&nbsp;&lt;yaohaidong369@gmail.com&gt;&nbsp;wrote:<br>
<br>
&gt;&nbsp;---&nbsp;a/drivers/mailbox/mailbox.c<br>
&gt;&nbsp;&#43;&#43;&#43;&nbsp;b/drivers/mailbox/mailbox.c<br>
&gt;&nbsp;@@&nbsp;-152,7&nbsp;&#43;152,7&nbsp;@@&nbsp;static&nbsp;enum&nbsp=
;hrtimer_restart&nbsp;txdone_hrtimer(struct&nbsp;hrtimer&nbsp;*hrtimer)<br>
&gt;&nbsp;&nbsp;void&nbsp;mbox_chan_received_data(struct&nbsp;mbox_chan&nbs=
p;*chan,&nbsp;void&nbsp;*mssg)<br>
&gt;&nbsp;&nbsp;{<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*&nbsp;No&nbsp;b=
uffering&nbsp;the&nbsp;received&nbsp;data&nbsp;*/<br>
&gt;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(chan-&gt;cl-&=
gt;rx_callback)<br>
&gt;&nbsp;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(chan-&gt;=
cl&nbsp;&amp;&amp;&nbsp;chan-&gt;cl-&gt;rx_callback)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chan-&gt;cl-&gt;rx_callback(chan-&gt;cl,&nbs=
p;mssg);<br>
&gt;&nbsp;&nbsp;}<br>
The&nbsp;proper&nbsp;fix&nbsp;is&nbsp;in&nbsp;the&nbsp;controller&nbsp;driv=
er.&nbsp;Which&nbsp;should&nbsp;stop&nbsp;tx/rx<br>
when&nbsp;the&nbsp;channel&nbsp;is&nbsp;freed.<br>
<br>
thnx.<br>
<br>
<br>
<div style=3D"font-size:70%%;padding:2px 0;">---------------=E5=8E=9F=E5=A7=
=8B=E9=82=AE=E4=BB=B6---------------</div>
<div style=3D"font-size:70%%;background:#f0f0f0;color:#212121;padding:8px;b=
order-radius:4px">
<div>=E5=8F=91=E4=BB=B6=E4=BA=BA: Jassi Brar </div>
<div>=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2020=E5=B9=B412=E6=9C=8816=E6=97=
=A5 05:20</div>
<div>=E6=94=B6=E4=BB=B6=E4=BA=BA: Haidong Yao <yaohaidong369@gmail.com></di=
v>
<div>=E6=8A=84=E9=80=81=E4=BA=BA: natechancellor@gmail.com <natechancellor@=
gmail.com>=EF=BC=8C ndesaulniers@google.com
<ndesaulniers@google.com>=EF=BC=8C Linux Kernel Mailing List <linux-kernel@=
vger.kernel.org>
=EF=BC=8C clang-built-linux@googlegroups.com <clang-built-linux@googlegroup=
s.com>=EF=BC=8C Orson Zhai
<orsonzhai@gmail.com>=EF=BC=8C Chunyan Zhang <zhang.lyra@gmail.com>=EF=BC=
=8C =E5=A7=9A=E6=B5=B7=E4=B8=9C (Haidong Yao) <Haidong.Yao@unisoc.com>
</div>
<div>=E4=B8=BB=E9=A2=98: Re: [PATCH] add chan-&gt;cl check in mbox_chan_rec=
eived_data()</div>
</div>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style><font size=3D"=
2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Tue, Dec 15, 2020 at 2:48 AM Haidong Yao &lt;ya=
ohaidong369@gmail.com&gt; wrote:<br>
<br>
&gt; --- a/drivers/mailbox/mailbox.c<br>
&gt; &#43;&#43;&#43; b/drivers/mailbox/mailbox.c<br>
&gt; @@ -152,7 &#43;152,7 @@ static enum hrtimer_restart txdone_hrtimer(str=
uct hrtimer *hrtimer)<br>
&gt;&nbsp; void mbox_chan_received_data(struct mbox_chan *chan, void *mssg)=
<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* No buffering the re=
ceived data */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (chan-&gt;cl-&gt;rx_callback)=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (chan-&gt;cl &amp;&amp; c=
han-&gt;cl-&gt;rx_callback)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; chan-&gt;cl-&gt;rx_callback(chan-&gt;cl, mssg);<b=
r>
&gt;&nbsp; }<br>
The proper fix is in the controller driver. Which should stop tx/rx<br>
when the channel is freed.<br>
<br>
thnx.<br>
</div>
</span></font>
<hr align=3D"left" width=3D"=E2=80=9C100%=E2=80=9D" color=3D"#920784" size=
=3D"1">
<font color=3D"#920784"><i>This email (including its attachments) is intend=
ed only for the person or entity to which it is addressed and may contain i=
nformation that is privileged, confidential or otherwise protected from dis=
closure. Unauthorized use, dissemination,
 distribution or copying of this email or the information herein or taking =
any action in reliance on the contents of this email or the information her=
ein, by anyone other than the intended recipient, or an employee or agent r=
esponsible for delivering the message
 to the intended recipient, is strictly prohibited. If you are not the inte=
nded recipient, please do not read, copy, use or disclose any part of this =
e-mail to others. Please notify the sender immediately and permanently dele=
te this e-mail and any attachments
 if you received it in error. Internet communications cannot be guaranteed =
to be timely, secure, error-free or virus-free. The sender does not accept =
liability for any errors or omissions.
</i><br>
<i>=E6=9C=AC=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E9=99=84=E4=BB=B6=E5=85=B7=
=E6=9C=89=E4=BF=9D=E5=AF=86=E6=80=A7=E8=B4=A8=EF=BC=8C=E5=8F=97=E6=B3=95=E5=
=BE=8B=E4=BF=9D=E6=8A=A4=E4=B8=8D=E5=BE=97=E6=B3=84=E9=9C=B2=EF=BC=8C=E4=BB=
=85=E5=8F=91=E9=80=81=E7=BB=99=E6=9C=AC=E9=82=AE=E4=BB=B6=E6=89=80=E6=8C=87=
=E7=89=B9=E5=AE=9A=E6=94=B6=E4=BB=B6=E4=BA=BA=E3=80=82=E4=B8=A5=E7=A6=81=E9=
=9D=9E=E7=BB=8F=E6=8E=88=E6=9D=83=E4=BD=BF=E7=94=A8=E3=80=81=E5=AE=A3=E4=BC=
=A0=E3=80=81=E5=8F=91=E5=B8=83=E6=88=96=E5=A4=8D=E5=88=B6=E6=9C=AC=E9=82=AE=
=E4=BB=B6=E6=88=96=E5=85=B6=E5=86=85=E5=AE=B9=E3=80=82=E8=8B=A5=E9=9D=9E=E8=
=AF=A5=E7=89=B9=E5=AE=9A=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=8C=E8=AF=B7=E5=8B=
=BF=E9=98=85=E8=AF=BB=E3=80=81=E5=A4=8D=E5=88=B6=E3=80=81 =E4=BD=BF=E7=94=
=A8=E6=88=96=E6=8A=AB=E9=9C=B2=E6=9C=AC=E9=82=AE=E4=BB=B6=E7=9A=84=E4=BB=BB=
=E4=BD=95=E5=86=85=E5=AE=B9=E3=80=82=E8=8B=A5=E8=AF=AF=E6=94=B6=E6=9C=AC=E9=
=82=AE=E4=BB=B6=EF=BC=8C=E8=AF=B7=E4=BB=8E=E7=B3=BB=E7=BB=9F=E4=B8=AD=E6=B0=
=B8=E4=B9=85=E6=80=A7=E5=88=A0=E9=99=A4=E6=9C=AC=E9=82=AE=E4=BB=B6=E5=8F=8A=
=E6=89=80=E6=9C=89=E9=99=84=E4=BB=B6=EF=BC=8C=E5=B9=B6=E4=BB=A5=E5=9B=9E=E5=
=A4=8D=E9=82=AE=E4=BB=B6=E7=9A=84=E6=96=B9=E5=BC=8F=E5=8D=B3=E5=88=BB=E5=91=
=8A=E7=9F=A5=E5=8F=91=E4=BB=B6=E4=BA=BA=E3=80=82=E6=97=A0=E6=B3=95=E4=BF=9D=
=E8=AF=81=E4=BA=92=E8=81=94=E7=BD=91=E9=80=9A=E4=BF=A1=E5=8F=8A=E6=97=B6=E3=
=80=81=E5=AE=89=E5=85=A8=E3=80=81=E6=97=A0=E8=AF=AF=E6=88=96=E9=98=B2=E6=AF=
=92=E3=80=82=E5=8F=91=E4=BB=B6=E4=BA=BA=E5=AF=B9=E4=BB=BB=E4=BD=95=E9=94=99=
=E6=BC=8F=E5=9D=87=E4=B8=8D=E6=89=BF=E6=8B=85=E8=B4=A3=E4=BB=BB=E3=80=82</i=
></font>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/tencent_302E2D381D276DF94A1E9719%40qq.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/tencent_302E2D381D276DF94A1E9719%40qq.com</a>.<br />

--_000_tencent302E2D381D276DF94A1E9719qqcom_--
