Return-Path: <clang-built-linux+bncBDJ23X6X2QERBFVBVDZAKGQEXXUWBQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id C464316096B
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 05:03:35 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id k20sf10257788qtm.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 20:03:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581912214; cv=pass;
        d=google.com; s=arc-20160816;
        b=asjpXzSbxJpKggtGgedKgUT5tSctRZvJx4YEWyk9Z9FV81u6wCgVjt5lzSwK66xYv/
         NJE+BEhTdHmn8JbL3/yc5qHgoEa/xnkgC+PlqEFBAifQMO459GgrTYPwsSqkO00BKXk9
         fZz6j410920GQwkrsEhIAYt6AowYnmaO4i0/p1HKqflOoRB20QnCQQlO/bL7vGo+pTlQ
         cLc6GNNTxmKdUzD9FArsUsoMnAb1Ms/jT2Xw0qQGUfQCxNP7fn8xURi4PDqVYbsnnCWj
         Fp7hOVnBjOCa+Ds3R2abgq+oXkNylJTqcosnfsNFtgCspLuUC2q0bLXOG+sp8H9DQwgf
         aliw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L1J4qPPJxE9CZpKaybeXiu3nArkK2/AUzTrWfyPS2a0=;
        b=PhsNycJ8xoAZymy4qQ/QHuhB1udlQ5bRv7rLzE2NJC5kUj+H/yGVRyucsshRc9H/Mt
         3pfXjo76l8UbZITCBXOauLK4wIDUhWikd/2+EwKDLI/Vrj8YqjwmaWTTiMCseqXRGz8s
         Ac62t3vN2KHpGnNr+N8s4cHCu7vW2sGw4sDxdK29swvoTLCUCfJvzH2Q8XNRZL5/J+cz
         d+hray68wCOfPFNyZQ0TBkBIoEwsMOQkxIIZklj9KWRirA4woJXHDcrGkEVZt0RVzF4i
         kD7vcdDWtIPIFuFaK1XBxt6Rp5WOnlyA1ZFNSwnKNiBboSpa+zTopQl/DF87smCDHjhN
         ikyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vLx8gmTF;
       spf=pass (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=howardchung@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1J4qPPJxE9CZpKaybeXiu3nArkK2/AUzTrWfyPS2a0=;
        b=e4vAIQi2JAKFbHCiYGfi7L2bTaS4AVjF6JLHi6cn5HAlOHBjseWvfKV67JpPo0uVF2
         8IYKLp8y13GX91Jz1hz9zH9mmX66gpmdtVjZB9t54bLL+3OHel4R7Zc46DKd7doV8P7Q
         82cFAOmBWrLNPJ5aqYsBDY83FTjIJSgeZFq6GJxl3A7o2r5CQAXek6wh0QNai7B4rO21
         OcNBx3XzOXsUhQsHy6PmlQZT8LQPaHgYWIl4HHYoTkTvZ9erOkiArIkLO4B3hS5oFngD
         IBDmeqbkU2mgKdVagMft3DcVr6cPMGiTViS4e8uqBxn3YfBXuOrxz8cS6Iu/Xth2dgFP
         DQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1J4qPPJxE9CZpKaybeXiu3nArkK2/AUzTrWfyPS2a0=;
        b=NDpEA7fuNZ2ukWRsze+aTKHtFmRebgM8GXlFBjfNCfVHo06hIlS3/FI/CiTd0WL5Hz
         rJymn45O3cltIyP8gXnKgKeZIUgLzVDqYVoP3nAKWPuPX7Pn4eh0Wnjfsws4T8ibTDEn
         1p71Odt73pZKYrgxLk63gjHdP3av4J/iFSMyAfC37cKcrkZNYh1/8zHY+9bFSxORN1g+
         hfNVfD4XrhMSDsNfH3kPi06TsfLcOiZE+gg4lV4v0whTzvEOoZthNKsxdWDIE9+XRrWB
         DFL2VJbcgdBzjxpLgQFg+IFBXAOW53UWtIMtw+gVgjTrmXWjaJ5j4rE8/hxd9FSHmvE1
         UBqQ==
X-Gm-Message-State: APjAAAWT4DvwYGwhBVq4ECSAY45YCkJSqpAcsJnXUNXxF6Q8s8HHjVaQ
	yc3DE/ObCbUaZ/x+YeY6IvA=
X-Google-Smtp-Source: APXvYqy888M+ClaXrCzkim6aNkyq0KXqAG2s5FzS8Rz8dnzdPn/KatJ1uzgeo5lF+y1wc7f/2wKbfA==
X-Received: by 2002:ad4:58a8:: with SMTP id ea8mr11015736qvb.93.1581912214296;
        Sun, 16 Feb 2020 20:03:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:74d:: with SMTP id i13ls4247550qki.4.gmail; Sun, 16
 Feb 2020 20:03:34 -0800 (PST)
X-Received: by 2002:a37:aa0d:: with SMTP id t13mr13221491qke.167.1581912213919;
        Sun, 16 Feb 2020 20:03:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581912213; cv=none;
        d=google.com; s=arc-20160816;
        b=pL73pRK+WUPP4mHd9p1fmBLotZymVF3V6/o7Ynvbuu814IfRNXNuUw7KbD1ca5KCCG
         8ZKPLNTOk9FE8aDd+vvdUd3GU70FwU2KgrjblCvqorCqUGllZc44PfFtx8DC+ncnxCOt
         h6W/H08feZ6QGc/q2XH3Ej8hyKEeJYPAINj8C3cui5qbYe74nGH85K6anqjyMJ3+rme9
         FBz9v9AwlLuXGp+KLrypP6egDh3z4wkx4+jqXgCjmLzpf3aLtZhoS99lko4TzlkHf93m
         YW/dEeKdYF4yj3uKGklnMfW5cbPRntBbDCgpOoTufoq2FQLZs+iq/5vQFL3Wxdd7DLK8
         izKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7P3l5Q3oN9EoPVm0sqIIPJrw8mAHY8B2FOJBZcsgv2I=;
        b=uSj79LnQXTokE0A++Yk+KD9QlAmjmXDNxZ1MmyClb05UsrWoGKnxmnfr8HOkSyiF8z
         55LECx75I2d5Wy4wJwpG5GuCUVUhTy7hzuubpgIQF2ZWxhElN7okuMeWMwGaP7xrmYV3
         z2NQYvCMPBN8avuh0rrCRTpahUiW6Yhxp1r/FGE951RM8rEbxlcoqsxOujYxdB1yZBhk
         6t+/WlLK6K2jX7IBVt7oto6X/1Oii3UY028Dv5LxuxboS+q+GP+vxZWVLXZ15TihAN2H
         u9vsAmm2XDyVbZk7rXgSI2dFCfvy3VyXo2lPvWP0mwyTJ+6FdZ43kIsDne3cg6I4wKAd
         gQzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vLx8gmTF;
       spf=pass (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=howardchung@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l9si690468qkg.5.2020.02.16.20.03.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2020 20:03:33 -0800 (PST)
Received-SPF: pass (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q8so8126043pfh.7
        for <clang-built-linux@googlegroups.com>; Sun, 16 Feb 2020 20:03:33 -0800 (PST)
X-Received: by 2002:a63:ad0c:: with SMTP id g12mr15625775pgf.228.1581912212875;
 Sun, 16 Feb 2020 20:03:32 -0800 (PST)
MIME-Version: 1.0
References: <20200214191609.Bluez.v5.1.Ia71869d2f3e19a76a6a352c61088a085a1d41ba6@changeid>
 <20200216005010.GA24335@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200216005010.GA24335@ubuntu-m2-xlarge-x86>
From: "'Yun-hao Chung' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 17 Feb 2020 12:03:22 +0800
Message-ID: <CAPHZWUfuV=C8O6GF6Stqk3sz-RQwgrQ6yMtxm6DViBKg64rPmA@mail.gmail.com>
Subject: Re: [Bluez PATCH v5] bluetooth: secure bluetooth stack from bluedump attack
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bluez mailing list <linux-bluetooth@vger.kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	ChromeOS Bluetooth Upstreaming <chromeos-bluetooth-upstreaming@chromium.org>, 
	"David S. Miller" <davem@davemloft.net>, Johan Hedberg <johan.hedberg@gmail.com>, 
	netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000083f3ce059ebda310"
X-Original-Sender: howardchung@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vLx8gmTF;       spf=pass
 (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=howardchung@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Yun-hao Chung <howardchung@google.com>
Reply-To: Yun-hao Chung <howardchung@google.com>
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

--00000000000083f3ce059ebda310
Content-Type: text/plain; charset="UTF-8"

Hi Nathan,

I think this looks like a simple uninitialized issue.
Let me upload another patch to fix it.

Thanks!

On Sun, Feb 16, 2020 at 8:50 AM Nathan Chancellor <natechancellor@gmail.com>
wrote:

> Hi Howard,
>
> On Fri, Feb 14, 2020 at 07:16:41PM +0800, Howard Chung wrote:
> > Attack scenario:
> > 1. A Chromebook (let's call this device A) is paired to a legitimate
> >    Bluetooth classic device (e.g. a speaker) (let's call this device
> >    B).
> > 2. A malicious device (let's call this device C) pretends to be the
> >    Bluetooth speaker by using the same BT address.
> > 3. If device A is not currently connected to device B, device A will
> >    be ready to accept connection from device B in the background
> >    (technically, doing Page Scan).
> > 4. Therefore, device C can initiate connection to device A
> >    (because device A is doing Page Scan) and device A will accept the
> >    connection because device A trusts device C's address which is the
> >    same as device B's address.
> > 5. Device C won't be able to communicate at any high level Bluetooth
> >    profile with device A because device A enforces that device C is
> >    encrypted with their common Link Key, which device C doesn't have.
> >    But device C can initiate pairing with device A with just-works
> >    model without requiring user interaction (there is only pairing
> >    notification). After pairing, device A now trusts device C with a
> >    new different link key, common between device A and C.
> > 6. From now on, device A trusts device C, so device C can at anytime
> >    connect to device A to do any kind of high-level hijacking, e.g.
> >    speaker hijack or mouse/keyboard hijack.
> >
> > Since we don't know whether the repairing is legitimate or not,
> > leave the decision to user space if all the conditions below are met.
> > - the pairing is initialized by peer
> > - the authorization method is just-work
> > - host already had the link key to the peer
> >
> > Signed-off-by: Howard Chung <howardchung@google.com>
> > ---
> >
> > Changes in v5:
> > - Rephrase the comment
> >
> > Changes in v4:
> > - optimise the check in smp.c.
> >
> > Changes in v3:
> > - Change confirm_hint from 2 to 1
> > - Fix coding style (declaration order)
> >
> > Changes in v2:
> > - Remove the HCI_PERMIT_JUST_WORK_REPAIR debugfs option
> > - Fix the added code in classic
> > - Add a similar fix for LE
> >
> >  net/bluetooth/hci_event.c | 10 ++++++++++
> >  net/bluetooth/smp.c       | 19 +++++++++++++++++++
> >  2 files changed, 29 insertions(+)
> >
> > diff --git a/net/bluetooth/hci_event.c b/net/bluetooth/hci_event.c
> > index 2c833dae9366..e6982f4f51ea 100644
> > --- a/net/bluetooth/hci_event.c
> > +++ b/net/bluetooth/hci_event.c
> > @@ -4571,6 +4571,16 @@ static void hci_user_confirm_request_evt(struct
> hci_dev *hdev,
> >                       goto confirm;
> >               }
> >
> > +             /* If there already exists link key in local host, leave
> the
> > +              * decision to user space since the remote device could be
> > +              * legitimate or malicious.
> > +              */
> > +             if (hci_find_link_key(hdev, &ev->bdaddr)) {
> > +                     bt_dev_warn(hdev, "Local host already has link
> key");
> > +                     confirm_hint = 1;
> > +                     goto confirm;
> > +             }
> > +
> >               BT_DBG("Auto-accept of user confirmation with %ums delay",
> >                      hdev->auto_accept_delay);
> >
> > diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
> > index 2cba6e07c02b..25dbf77d216b 100644
> > --- a/net/bluetooth/smp.c
> > +++ b/net/bluetooth/smp.c
> > @@ -2192,6 +2192,25 @@ static u8 smp_cmd_pairing_random(struct
> l2cap_conn *conn, struct sk_buff *skb)
> >               smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM,
> sizeof(smp->prnd),
> >                            smp->prnd);
> >               SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
> > +
> > +             /* Only Just-Works pairing requires extra checks */
> > +             if (smp->method != JUST_WORKS)
> > +                     goto mackey_and_ltk;
> > +
> > +             /* If there already exists link key in local host, leave
> the
> > +              * decision to user space since the remote device could be
> > +              * legitimate or malicious.
> > +              */
> > +             if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
> > +                              hcon->role)) {
> > +                     err = mgmt_user_confirm_request(hcon->hdev,
> &hcon->dst,
> > +                                                     hcon->type,
> > +                                                     hcon->dst_type,
> passkey,
>
> We received a report from the 0day bot when building with clang that
> passkey is uninitialized when used here:
>
> https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU
>
> It appears to be legitimate as if we get to this point, we have not
> touched the value of passkey but I do not know if there is any
> contextual code flow going on where this can never happen but I do not
> see how.
>
> Would you mind looking into it?
>
> Cheers,
> Nathan
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPHZWUfuV%3DC8O6GF6Stqk3sz-RQwgrQ6yMtxm6DViBKg64rPmA%40mail.gmail.com.

--00000000000083f3ce059ebda310
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Nathan,<div><br></div><div>I think this looks like=
 a simple uninitialized issue.</div><div>Let me upload another patch to fix=
 it.</div><div><br></div><div>Thanks!</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Feb 16, 2020 at 8:50 AM =
Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.com">natechanc=
ellor@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi Howard,<br>
<br>
On Fri, Feb 14, 2020 at 07:16:41PM +0800, Howard Chung wrote:<br>
&gt; Attack scenario:<br>
&gt; 1. A Chromebook (let&#39;s call this device A) is paired to a legitima=
te<br>
&gt;=C2=A0 =C2=A0 Bluetooth classic device (e.g. a speaker) (let&#39;s call=
 this device<br>
&gt;=C2=A0 =C2=A0 B).<br>
&gt; 2. A malicious device (let&#39;s call this device C) pretends to be th=
e<br>
&gt;=C2=A0 =C2=A0 Bluetooth speaker by using the same BT address.<br>
&gt; 3. If device A is not currently connected to device B, device A will<b=
r>
&gt;=C2=A0 =C2=A0 be ready to accept connection from device B in the backgr=
ound<br>
&gt;=C2=A0 =C2=A0 (technically, doing Page Scan).<br>
&gt; 4. Therefore, device C can initiate connection to device A<br>
&gt;=C2=A0 =C2=A0 (because device A is doing Page Scan) and device A will a=
ccept the<br>
&gt;=C2=A0 =C2=A0 connection because device A trusts device C&#39;s address=
 which is the<br>
&gt;=C2=A0 =C2=A0 same as device B&#39;s address.<br>
&gt; 5. Device C won&#39;t be able to communicate at any high level Bluetoo=
th<br>
&gt;=C2=A0 =C2=A0 profile with device A because device A enforces that devi=
ce C is<br>
&gt;=C2=A0 =C2=A0 encrypted with their common Link Key, which device C does=
n&#39;t have.<br>
&gt;=C2=A0 =C2=A0 But device C can initiate pairing with device A with just=
-works<br>
&gt;=C2=A0 =C2=A0 model without requiring user interaction (there is only p=
airing<br>
&gt;=C2=A0 =C2=A0 notification). After pairing, device A now trusts device =
C with a<br>
&gt;=C2=A0 =C2=A0 new different link key, common between device A and C.<br=
>
&gt; 6. From now on, device A trusts device C, so device C can at anytime<b=
r>
&gt;=C2=A0 =C2=A0 connect to device A to do any kind of high-level hijackin=
g, e.g.<br>
&gt;=C2=A0 =C2=A0 speaker hijack or mouse/keyboard hijack.<br>
&gt; <br>
&gt; Since we don&#39;t know whether the repairing is legitimate or not,<br=
>
&gt; leave the decision to user space if all the conditions below are met.<=
br>
&gt; - the pairing is initialized by peer<br>
&gt; - the authorization method is just-work<br>
&gt; - host already had the link key to the peer<br>
&gt; <br>
&gt; Signed-off-by: Howard Chung &lt;<a href=3D"mailto:howardchung@google.c=
om" target=3D"_blank">howardchung@google.com</a>&gt;<br>
&gt; ---<br>
&gt; <br>
&gt; Changes in v5:<br>
&gt; - Rephrase the comment<br>
&gt; <br>
&gt; Changes in v4:<br>
&gt; - optimise the check in smp.c.<br>
&gt; <br>
&gt; Changes in v3:<br>
&gt; - Change confirm_hint from 2 to 1<br>
&gt; - Fix coding style (declaration order)<br>
&gt; <br>
&gt; Changes in v2:<br>
&gt; - Remove the HCI_PERMIT_JUST_WORK_REPAIR debugfs option<br>
&gt; - Fix the added code in classic<br>
&gt; - Add a similar fix for LE<br>
&gt; <br>
&gt;=C2=A0 net/bluetooth/hci_event.c | 10 ++++++++++<br>
&gt;=C2=A0 net/bluetooth/smp.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 19 +++++++++++++=
++++++<br>
&gt;=C2=A0 2 files changed, 29 insertions(+)<br>
&gt; <br>
&gt; diff --git a/net/bluetooth/hci_event.c b/net/bluetooth/hci_event.c<br>
&gt; index 2c833dae9366..e6982f4f51ea 100644<br>
&gt; --- a/net/bluetooth/hci_event.c<br>
&gt; +++ b/net/bluetooth/hci_event.c<br>
&gt; @@ -4571,6 +4571,16 @@ static void hci_user_confirm_request_evt(struct=
 hci_dev *hdev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto confirm;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* If there already e=
xists link key in local host, leave the<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * decision to user s=
pace since the remote device could be<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * legitimate or mali=
cious.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (hci_find_link_key=
(hdev, &amp;ev-&gt;bdaddr)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0bt_dev_warn(hdev, &quot;Local host already has link key&quot;);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0confirm_hint =3D 1;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0goto confirm;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BT_DBG(&quot;Aut=
o-accept of user confirmation with %ums delay&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 hdev-&gt;auto_accept_delay);<br>
&gt;=C2=A0 <br>
&gt; diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c<br>
&gt; index 2cba6e07c02b..25dbf77d216b 100644<br>
&gt; --- a/net/bluetooth/smp.c<br>
&gt; +++ b/net/bluetooth/smp.c<br>
&gt; @@ -2192,6 +2192,25 @@ static u8 smp_cmd_pairing_random(struct l2cap_c=
onn *conn, struct sk_buff *skb)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0smp_send_cmd(con=
n, SMP_CMD_PAIRING_RANDOM, sizeof(smp-&gt;prnd),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 smp-&gt;prnd);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SMP_ALLOW_CMD(sm=
p, SMP_CMD_DHKEY_CHECK);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Only Just-Works pa=
iring requires extra checks */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (smp-&gt;method !=
=3D JUST_WORKS)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0goto mackey_and_ltk;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* If there already e=
xists link key in local host, leave the<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * decision to user s=
pace since the remote device could be<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * legitimate or mali=
cious.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (hci_find_ltk(hcon=
-&gt;hdev, &amp;hcon-&gt;dst, hcon-&gt;dst_type,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hcon-&gt;role)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0err =3D mgmt_user_confirm_request(hcon-&gt;hdev, &amp;hcon-&gt;dst,<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hcon-&gt;type,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hcon-&gt;dst_type, passkey,<br=
>
<br>
We received a report from the 0day bot when building with clang that<br>
passkey is uninitialized when used here:<br>
<br>
<a href=3D"https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCj=
RsGoU" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/forum=
/#!topic/clang-built-linux/kyRKCjRsGoU</a><br>
<br>
It appears to be legitimate as if we get to this point, we have not<br>
touched the value of passkey but I do not know if there is any<br>
contextual code flow going on where this can never happen but I do not<br>
see how.<br>
<br>
Would you mind looking into it?<br>
<br>
Cheers,<br>
Nathan<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAPHZWUfuV%3DC8O6GF6Stqk3sz-RQwgrQ6yMtxm6DViBK=
g64rPmA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAPHZWUfuV%3DC8O6GF6Stqk3sz-RQwgr=
Q6yMtxm6DViBKg64rPmA%40mail.gmail.com</a>.<br />

--00000000000083f3ce059ebda310--
