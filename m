Return-Path: <clang-built-linux+bncBDJ23X6X2QERBPMKWPZAKGQESHXBUGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DA9163C66
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 06:18:55 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id n7sf15269124pgt.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 21:18:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582089534; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aefd/b4eA0pogFZX3wdu49T5JjMw1y+jk5Y0TktYQJoNqixcvdMHY+NBVotTA5xnso
         vXvnNgs/E+l+qYSX+DA9yPBY8xsnfHbfxdBPJxv0ciqGqbXt5e4vV+wy4vLRScAwu4n8
         J0/QsLprjFY3TpzuLtBR9s9Jx9pH8rLz1BK+8Ke0ZA9w+ugi0r7a7Sejh+G7Qu40kHQn
         7q/Eb1tFRXLDqDbDlxw+FUXRl7iGpImrRosYBkdPMrl+YOnWq9S1mYMuF/tgnAQGiIi4
         ZCp/54XWTSYmPXaHrpmT5qC5j54pNucDU48DcJUnSsWa88HArotv2ug4vdUGKtst57cS
         2V4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oDDZpD1gdjWwobMXLzmLK6p9VJnb64Yqz9gpyI+i44A=;
        b=0GRGaUeQLzbPhDBdpWYCBkD3DO3wx8Jv62mjAA1IG8N9y7ChQ06o/U7k1OWuleBYGZ
         Rri0GLPA24+a/ZyZv/yYY/za07uvQzVlAQLWJR8sp1Bs/+yQgpJhbBneiPQdH+Yiv2bW
         iiytNErZ513bBOdrtEjPOaYde+w+4Na/WJyZSrQ1mTE6dCrf4ZanpFpPhIOBhrxhQ9q7
         aJ4xyMHzZLIwxAZIyhvGP4InYRLWS2spuhPUydPzgSI8BcXZMa2MLyf8Hdu+xIT6dSOi
         eMQMINuP7Uc7yzyrWlNxY27U88TeMjixzEWQXKMVOP7Tl6iFCKXLEs39g+04sp4q7p8K
         SjnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B9wpx7+G;
       spf=pass (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=howardchung@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oDDZpD1gdjWwobMXLzmLK6p9VJnb64Yqz9gpyI+i44A=;
        b=QklC5T07mgEvA2DpjAYCMCJJ4mj2MYH0VR6A6OaGWpY1z5qhUJRCLWympKSG/4Avhu
         6nNko3h1BDq2ArM9M/noHW3fVuvEnFi6Bhwjkho9exuRupUwVo09SXjnpCuTi8r0/7Pd
         7Ks2PJzcRCkIwSSJEGPjraagAkxkFspvPsxO/cAXlMg1V+Rvz8dIrJtWMsRwkoYsXaUV
         qYJhw3cZbc25rLDyOQkUa4vtpjKPGDla1x5qnqrvviLvrmMhnSc7OqmX3rMIUpYcVArP
         uH7vtEp7UB2pD+nx+0s6F+ft7mEw1xquDiV1lvAduw5O+iSRL5x+S/1ZdFEwCDeeVJ2n
         S/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oDDZpD1gdjWwobMXLzmLK6p9VJnb64Yqz9gpyI+i44A=;
        b=kERZKwytKjZ/KvAMYZf1tD35zNx4iZDmrnhiaD0bOXqsxUbhzZ2KMOO8kwuFm6ycFc
         YiBiQNi42jCI2/MXpP1NDnGZmXyboS9/5E6jUzx3FXQaCvouDhJ2N7k7XcoTta9FE3DU
         ZP6LxLzchGwS6qodA2i6wg7tMQv/xO/wFPyPUDf6rr91pbslkfLSLSRIKDB52A79Lgvp
         /ZVeMOnDjwLSL9MODSWTHaLAVYQ11THBEx83MmJstADS50oIxXFn7nIaNNY7vMSM0rCB
         vBNwd/UJasEHX0bsXNjCzwxelAF1x4EYh2mU5xVGZYNaFOfsAkXFgrP9w8Djw/S1EGTZ
         75pw==
X-Gm-Message-State: APjAAAUXaTMs4eaCG+D0aARnm3vfiXgHGJX06JX8ShPK36o6Zy6tzu/1
	UJGT+/FIEfEdY8nNKeOAjTg=
X-Google-Smtp-Source: APXvYqxm+5jQDOLpmcjT3juqNjZQ/MewKCjKKeACZPvfmfdGmj83S/Wgnk8fFRs7GAmDA0QKINEdow==
X-Received: by 2002:a17:90a:cb8c:: with SMTP id a12mr7135599pju.71.1582089533943;
        Tue, 18 Feb 2020 21:18:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls6882182plp.2.gmail; Tue, 18
 Feb 2020 21:18:53 -0800 (PST)
X-Received: by 2002:a17:90a:de05:: with SMTP id m5mr7049360pjv.10.1582089533491;
        Tue, 18 Feb 2020 21:18:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582089533; cv=none;
        d=google.com; s=arc-20160816;
        b=AY6XWLBgV/PMfsK3i4YiKHZSjkcwUR0SG3+6YfP/ghAnHkfBguG7Cqb2tuo6uurxd2
         ilY2Vp2pdr6w0vlfWSAlpHjzowL6CLNln1Qs12TvL3jmXCjvG9b5ZL0Tk/bfAkR/R4O7
         gqE/yJuDYw45PZa+Fo1XN0w7APYMFIJxyOgqSpjJmiBYbjY98O3Y3vuNO/e5z7XSR1FW
         z/+O5Zogh2baNfgs9OFa5sA/8gB92MuKcBuwoj/LScKYvP0GvW1SfaWZQfS/cOVNM6fG
         0Nnb2mEi9DA5I7P2Wc8ZDrTCxFA/4jCMQA7d38Xjv75svWjrw14/drMiRDB0IE2oTyBV
         C+uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o8/QHwYL4rZBPiJLVkawDu6CjRAFrst2IGQfqAf4FWo=;
        b=J1GXTYSN+LIC8qyj4q6Bgpgqh52B1WjJ0va56JXScV7qaRa/es+bwXNeonSvNMafLc
         nA0cHD/Q7iJUFnQHahL65PmN4fMTSXoI49oTiDoawy7EznX7wy9G0PIftJEFXcH8QTNG
         pEDWQWYhO8qxPM8J/VzrG4udn17/HSs91FdhLn+LHmZSqGBE3ZePBFRNEEW5lFcfnnpd
         pRdJv2C9Mbpo+L8x2XCvvMGpsvOUMd2M6pUIPhv0i1qM95vABxNCUVReizEzwGsBjzTy
         FY1vRdd9a8HTx/ocWOy4+3DvjLFCFU+QFyVzmUJOq5BM/Ti6UNy71SaElWDcBiHbeCDF
         NQYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B9wpx7+G;
       spf=pass (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=howardchung@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y3si53646plr.1.2020.02.18.21.18.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 21:18:53 -0800 (PST)
Received-SPF: pass (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id a6so9067223plm.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 21:18:53 -0800 (PST)
X-Received: by 2002:a17:90a:c592:: with SMTP id l18mr6777292pjt.105.1582089532848;
 Tue, 18 Feb 2020 21:18:52 -0800 (PST)
MIME-Version: 1.0
References: <20200218190509.Bluez.v1.1.I04681c6e295c27088c0b4ed7bb9b187d1bb4ed19@changeid>
 <D9045CD6-997B-4018-8AB0-40F15C71BF5C@holtmann.org>
In-Reply-To: <D9045CD6-997B-4018-8AB0-40F15C71BF5C@holtmann.org>
From: "'Yun-hao Chung' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 13:18:41 +0800
Message-ID: <CAPHZWUcVeQW=70EaB37MkeAERJYNbKLTL+PNzzshG9s7Y5-hpw@mail.gmail.com>
Subject: Re: [Bluez PATCH v1] bluetooth: fix passkey uninitialized when used
To: Marcel Holtmann <marcel@holtmann.org>
Cc: Bluez mailing list <linux-bluetooth@vger.kernel.org>, 
	ChromeOS Bluetooth Upstreaming <chromeos-bluetooth-upstreaming@chromium.org>, 
	"David S. Miller" <davem@davemloft.net>, Johan Hedberg <johan.hedberg@gmail.com>, 
	netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009c227c059ee6eccb"
X-Original-Sender: howardchung@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B9wpx7+G;       spf=pass
 (google.com: domain of howardchung@google.com designates 2607:f8b0:4864:20::643
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

--0000000000009c227c059ee6eccb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Agreed.
That makes it much cleaner now.
Thanks

On Wed, Feb 19, 2020 at 5:20 AM Marcel Holtmann <marcel@holtmann.org> wrote=
:

> Hi Howard,
>
> > From: "howardchung@google.com" <howardchung@google.com>
>
> any chance you fix your git setting to provide a From: with full name and
> email like you have in the signed-off-by line.
>
> >
> > This issue cause a warning here
> > https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU
> >
> > Signed-off-by: Howard Chung <howardchung@google.com>
> > ---
> >
> > net/bluetooth/smp.c | 6 ++++--
> > 1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
> > index 50e0ac692ec4..fa40de69e487 100644
> > --- a/net/bluetooth/smp.c
> > +++ b/net/bluetooth/smp.c
> > @@ -2179,10 +2179,12 @@ static u8 smp_cmd_pairing_random(struct
> l2cap_conn *conn, struct sk_buff *skb)
> >                */
> >               if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
> >                                hcon->role)) {
> > +                     /* Set passkey to 0. The value can be any number
> since
> > +                      * it'll be ignored anyway.
> > +                      */
> >                       err =3D mgmt_user_confirm_request(hcon->hdev,
> &hcon->dst,
> >                                                       hcon->type,
> > -                                                     hcon->dst_type,
> > -                                                     passkey, 1);
> > +                                                     hcon->dst_type, 0=
,
> 1);
> >                       if (err)
> >                               return SMP_UNSPECIFIED;
> >                       set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
>
> Since I have to look at this again, I wonder if we do this correctly.
> Either we have a bug there or not enough comments on why the code is
> correct.
>
>         if (hcon->out) {
>                 u8 cfm[16];
>
>                 err =3D smp_f4(smp->tfm_cmac, smp->remote_pk, smp->local_=
pk,
>                              smp->rrnd, 0, cfm);
>                 if (err)
>                         return SMP_UNSPECIFIED;
>
>                 if (crypto_memneq(smp->pcnf, cfm, 16))
>                         return SMP_CONFIRM_FAILED;
>         } else {
>                 smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM,
> sizeof(smp->prnd),
>                              smp->prnd);
>                 SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
>
>                 /* Only Just-Works pairing requires extra checks */
>                 if (smp->method !=3D JUST_WORKS)
>                         goto mackey_and_ltk;
>
>                 /* If there already exists long term key in local host,
> leave
>                  * the decision to user space since the remote device cou=
ld
>                  * be legitimate or malicious.
>                  */
>                 if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
>                                  hcon->role)) {
>                         err =3D mgmt_user_confirm_request(hcon->hdev,
> &hcon->dst,
>                                                         hcon->type,
>                                                         hcon->dst_type,
>                                                         passkey, 1);
>                         if (err)
>                                 return SMP_UNSPECIFIED;
>                         set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
>                 }
>         }
>
> mackey_and_ltk:
>         /* Generate MacKey and LTK */
>         err =3D sc_mackey_and_ltk(smp, smp->mackey, smp->tk);
>         if (err)
>                 return SMP_UNSPECIFIED;
>
>         if (smp->method =3D=3D JUST_WORKS || smp->method =3D=3D REQ_OOB) =
{
>                 if (hcon->out) {
>                         sc_dhkey_check(smp);
>                         SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
>                 }
>                 return 0;
>         }
>
>         err =3D smp_g2(smp->tfm_cmac, pkax, pkbx, na, nb, &passkey);
>         if (err)
>                 return SMP_UNSPECIFIED;
>
>         err =3D mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->t=
ype,
>                                         hcon->dst_type, passkey, 0);
>         if (err)
>                 return SMP_UNSPECIFIED;
>
>         set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
>
>         return 0;
> }
>
> Since we are already !hcon->out and smp->method =3D=3D JUST_WORKS, why ar=
e we
> moving into mackey_and_ltk path? If we have already an LTK, then we just
> should bail out after setting SMP_FLAG_WAIT_USER, right?
>
> @@ -2115,7 +2115,7 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn
> *conn, struct sk_buff *skb)
>         struct l2cap_chan *chan =3D conn->smp;
>         struct smp_chan *smp =3D chan->data;
>         struct hci_conn *hcon =3D conn->hcon;
> -       u8 *pkax, *pkbx, *na, *nb;
> +       u8 *pkax, *pkbx, *na, *nb, confirm_hint;
>         u32 passkey;
>         int err;
>
> @@ -2179,13 +2179,9 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn
> *conn, struct sk_buff *skb)
>                  */
>                 if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
>                                  hcon->role)) {
> -                       err =3D mgmt_user_confirm_request(hcon->hdev,
> &hcon->dst,
> -                                                       hcon->type,
> -                                                       hcon->dst_type,
> -                                                       passkey, 1);
> -                       if (err)
> -                               return SMP_UNSPECIFIED;
> -                       set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
> +                       passkey =3D 0;
> +                       confirm_hint =3D 1;
> +                       goto confirm;
>                 }
>         }
>
> @@ -2207,8 +2203,11 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn
> *conn, struct sk_buff *skb)
>         if (err)
>                 return SMP_UNSPECIFIED;
>
> +       confirm_hint =3D 0;
> +
> +confirm:
>         err =3D mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->t=
ype,
> -                                       hcon->dst_type, passkey, 0);
> +                                       hcon->dst_type, passkey,
> confirm_hint);
>         if (err)
>                 return SMP_UNSPECIFIED;
>
> So isn=E2=80=99t this the better approach and actually cleaner code? And =
I would
> still add a comment above setting passkey =3D 0.
>
> Am I missing anything?
>
> Regards
>
> Marcel
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAPHZWUcVeQW%3D70EaB37MkeAERJYNbKLTL%2BPNzzshG9s7Y5-hpw%4=
0mail.gmail.com.

--0000000000009c227c059ee6eccb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+QWdyZWVkLjxkaXY+VGhhdCBtYWtlcyBpdCBtdWNoIGNsZWFuZXIgbm93
LjxkaXY+VGhhbmtzPC9kaXY+PC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3Rl
Ij48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gV2VkLCBGZWIgMTksIDIwMjAg
YXQgNToyMCBBTSBNYXJjZWwgSG9sdG1hbm4gJmx0OzxhIGhyZWY9Im1haWx0bzptYXJjZWxAaG9s
dG1hbm4ub3JnIj5tYXJjZWxAaG9sdG1hbm4ub3JnPC9hPiZndDsgd3JvdGU6PGJyPjwvZGl2Pjxi
bG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAw
LjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6
MWV4Ij5IaSBIb3dhcmQsPGJyPg0KPGJyPg0KJmd0OyBGcm9tOiAmcXVvdDs8YSBocmVmPSJtYWls
dG86aG93YXJkY2h1bmdAZ29vZ2xlLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmhvd2FyZGNodW5nQGdv
b2dsZS5jb208L2E+JnF1b3Q7ICZsdDs8YSBocmVmPSJtYWlsdG86aG93YXJkY2h1bmdAZ29vZ2xl
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmhvd2FyZGNodW5nQGdvb2dsZS5jb208L2E+Jmd0Ozxicj4N
Cjxicj4NCmFueSBjaGFuY2UgeW91IGZpeCB5b3VyIGdpdCBzZXR0aW5nIHRvIHByb3ZpZGUgYSBG
cm9tOiB3aXRoIGZ1bGwgbmFtZSBhbmQgZW1haWwgbGlrZSB5b3UgaGF2ZSBpbiB0aGUgc2lnbmVk
LW9mZi1ieSBsaW5lLjxicj4NCjxicj4NCiZndDsgPGJyPg0KJmd0OyBUaGlzIGlzc3VlIGNhdXNl
IGEgd2FybmluZyBoZXJlPGJyPg0KJmd0OyA8YSBocmVmPSJodHRwczovL2dyb3Vwcy5nb29nbGUu
Y29tL2ZvcnVtLyMhdG9waWMvY2xhbmctYnVpbHQtbGludXgva3lSS0NqUnNHb1UiIHJlbD0ibm9y
ZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZm9ydW0v
IyF0b3BpYy9jbGFuZy1idWlsdC1saW51eC9reVJLQ2pSc0dvVTwvYT48YnI+DQomZ3Q7IDxicj4N
CiZndDsgU2lnbmVkLW9mZi1ieTogSG93YXJkIENodW5nICZsdDs8YSBocmVmPSJtYWlsdG86aG93
YXJkY2h1bmdAZ29vZ2xlLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmhvd2FyZGNodW5nQGdvb2dsZS5j
b208L2E+Jmd0Ozxicj4NCiZndDsgLS0tPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IG5ldC9ibHVldG9v
dGgvc21wLmMgfCA2ICsrKystLTxicj4NCiZndDsgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSk8YnI+DQomZ3Q7IDxicj4NCiZndDsgZGlmZiAtLWdpdCBhL25l
dC9ibHVldG9vdGgvc21wLmMgYi9uZXQvYmx1ZXRvb3RoL3NtcC5jPGJyPg0KJmd0OyBpbmRleCA1
MGUwYWM2OTJlYzQuLmZhNDBkZTY5ZTQ4NyAxMDA2NDQ8YnI+DQomZ3Q7IC0tLSBhL25ldC9ibHVl
dG9vdGgvc21wLmM8YnI+DQomZ3Q7ICsrKyBiL25ldC9ibHVldG9vdGgvc21wLmM8YnI+DQomZ3Q7
IEBAIC0yMTc5LDEwICsyMTc5LDEyIEBAIHN0YXRpYyB1OCBzbXBfY21kX3BhaXJpbmdfcmFuZG9t
KHN0cnVjdCBsMmNhcF9jb25uICpjb25uLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAqLzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGlmIChoY2lfZmluZF9sdGsoaGNvbi0mZ3Q7aGRldiwgJmFtcDtoY29uLSZndDtkc3QsIGhjb24t
Jmd0O2RzdF90eXBlLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCBoY29uLSZndDtyb2xlKSkgezxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgLyogU2V0IHBhc3NrZXkgdG8gMC4gVGhlIHZhbHVlIGNhbiBiZSBh
bnkgbnVtYmVyIHNpbmNlPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgKiBpdCYjMzk7bGwgYmUgaWdub3JlZCBhbnl3YXkuPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgKi88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBlcnIgPSBtZ210X3VzZXJfY29uZmlybV9yZXF1ZXN0KGhjb24tJmd0O2hkZXYs
ICZhbXA7aGNvbi0mZ3Q7ZHN0LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGhj
b24tJmd0O3R5cGUsPGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBoY29uLSZndDtk
c3RfdHlwZSw8YnI+DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHBhc3NrZXksIDEpOzxi
cj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaGNvbi0mZ3Q7ZHN0X3R5cGUsIDAsIDEp
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChlcnIpPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcmV0
dXJuIFNNUF9VTlNQRUNJRklFRDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBzZXRfYml0KFNNUF9GTEFHX1dBSVRfVVNFUiwgJmFtcDtzbXAtJmd0O2ZsYWdzKTs8
YnI+DQo8YnI+DQpTaW5jZSBJIGhhdmUgdG8gbG9vayBhdCB0aGlzIGFnYWluLCBJIHdvbmRlciBp
ZiB3ZSBkbyB0aGlzIGNvcnJlY3RseS4gRWl0aGVyIHdlIGhhdmUgYSBidWcgdGhlcmUgb3Igbm90
IGVub3VnaCBjb21tZW50cyBvbiB3aHkgdGhlIGNvZGUgaXMgY29ycmVjdC48YnI+DQo8YnI+DQrC
oCDCoCDCoCDCoCBpZiAoaGNvbi0mZ3Q7b3V0KSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgdTggY2ZtWzE2XTs8YnI+DQo8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBlcnIgPSBz
bXBfZjQoc21wLSZndDt0Zm1fY21hYywgc21wLSZndDtyZW1vdGVfcGssIHNtcC0mZ3Q7bG9jYWxf
cGssPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzbXAt
Jmd0O3JybmQsIDAsIGNmbSk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYgKGVycik8
YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gU01QX1VOU1BF
Q0lGSUVEOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChjcnlwdG9fbWVt
bmVxKHNtcC0mZ3Q7cGNuZiwgY2ZtLCAxNikpPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgcmV0dXJuIFNNUF9DT05GSVJNX0ZBSUxFRDs8YnI+DQrCoCDCoCDCoCDCoCB9
IGVsc2Ugezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHNtcF9zZW5kX2NtZChjb25uLCBT
TVBfQ01EX1BBSVJJTkdfUkFORE9NLCBzaXplb2Yoc21wLSZndDtwcm5kKSw8YnI+DQrCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNtcC0mZ3Q7cHJuZCk7PGJyPg0K
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgU01QX0FMTE9XX0NNRChzbXAsIFNNUF9DTURfREhLRVlf
Q0hFQ0spOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIC8qIE9ubHkgSnVzdC1X
b3JrcyBwYWlyaW5nIHJlcXVpcmVzIGV4dHJhIGNoZWNrcyAqLzxicj4NCsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIGlmIChzbXAtJmd0O21ldGhvZCAhPSBKVVNUX1dPUktTKTxicj4NCsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGdvdG8gbWFja2V5X2FuZF9sdGs7PGJyPg0KPGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLyogSWYgdGhlcmUgYWxyZWFkeSBleGlzdHMgbG9u
ZyB0ZXJtIGtleSBpbiBsb2NhbCBob3N0LCBsZWF2ZTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgKiB0aGUgZGVjaXNpb24gdG8gdXNlciBzcGFjZSBzaW5jZSB0aGUgcmVtb3RlIGRldmlj
ZSBjb3VsZDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgKiBiZSBsZWdpdGltYXRlIG9y
IG1hbGljaW91cy48YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCovPGJyPg0KwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgaWYgKGhjaV9maW5kX2x0ayhoY29uLSZndDtoZGV2LCAmYW1wO2hj
b24tJmd0O2RzdCwgaGNvbi0mZ3Q7ZHN0X3R5cGUsPGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBoY29uLSZndDtyb2xlKSkgezxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGVyciA9IG1nbXRfdXNlcl9jb25maXJtX3Jl
cXVlc3QoaGNvbi0mZ3Q7aGRldiwgJmFtcDtoY29uLSZndDtkc3QsPGJyPg0KwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgaGNvbi0mZ3Q7dHlwZSw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCBoY29uLSZndDtkc3RfdHlwZSw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBw
YXNza2V5LCAxKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBpZiAo
ZXJyKTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHJldHVybiBTTVBfVU5TUEVDSUZJRUQ7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgc2V0X2JpdChTTVBfRkxBR19XQUlUX1VTRVIsICZhbXA7c21wLSZndDtmbGFncyk7
PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfTxicj4NCsKgIMKgIMKgIMKgIH08YnI+DQo8
YnI+DQptYWNrZXlfYW5kX2x0azo8YnI+DQrCoCDCoCDCoCDCoCAvKiBHZW5lcmF0ZSBNYWNLZXkg
YW5kIExUSyAqLzxicj4NCsKgIMKgIMKgIMKgIGVyciA9IHNjX21hY2tleV9hbmRfbHRrKHNtcCwg
c21wLSZndDttYWNrZXksIHNtcC0mZ3Q7dGspOzxicj4NCsKgIMKgIMKgIMKgIGlmIChlcnIpPGJy
Pg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV0dXJuIFNNUF9VTlNQRUNJRklFRDs8YnI+DQo8
YnI+DQrCoCDCoCDCoCDCoCBpZiAoc21wLSZndDttZXRob2QgPT0gSlVTVF9XT1JLUyB8fCBzbXAt
Jmd0O21ldGhvZCA9PSBSRVFfT09CKSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaWYg
KGhjb24tJmd0O291dCkgezxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHNjX2Roa2V5X2NoZWNrKHNtcCk7PGJyPg0KwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgU01QX0FMTE9XX0NNRChzbXAsIFNNUF9DTURfREhLRVlfQ0hFQ0spOzxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIH08YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4g
MDs8YnI+DQrCoCDCoCDCoCDCoCB9PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgZXJyID0gc21wX2cy
KHNtcC0mZ3Q7dGZtX2NtYWMsIHBrYXgsIHBrYngsIG5hLCBuYiwgJmFtcDtwYXNza2V5KTs8YnI+
DQrCoCDCoCDCoCDCoCBpZiAoZXJyKTxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJldHVy
biBTTVBfVU5TUEVDSUZJRUQ7PGJyPg0KPGJyPg0KwqAgwqAgwqAgwqAgZXJyID0gbWdtdF91c2Vy
X2NvbmZpcm1fcmVxdWVzdChoY29uLSZndDtoZGV2LCAmYW1wO2hjb24tJmd0O2RzdCwgaGNvbi0m
Z3Q7dHlwZSw8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBoY29uLSZndDtkc3RfdHlwZSwgcGFzc2tleSwgMCk7PGJyPg0KwqAg
wqAgwqAgwqAgaWYgKGVycik8YnI+DQrCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gU01Q
X1VOU1BFQ0lGSUVEOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIHNldF9iaXQoU01QX0ZMQUdfV0FJ
VF9VU0VSLCAmYW1wO3NtcC0mZ3Q7ZmxhZ3MpOzxicj4NCjxicj4NCsKgIMKgIMKgIMKgIHJldHVy
biAwOzxicj4NCn08YnI+DQo8YnI+DQpTaW5jZSB3ZSBhcmUgYWxyZWFkeSAhaGNvbi0mZ3Q7b3V0
IGFuZCBzbXAtJmd0O21ldGhvZCA9PSBKVVNUX1dPUktTLCB3aHkgYXJlIHdlIG1vdmluZyBpbnRv
IG1hY2tleV9hbmRfbHRrIHBhdGg/IElmIHdlIGhhdmUgYWxyZWFkeSBhbiBMVEssIHRoZW4gd2Ug
anVzdCBzaG91bGQgYmFpbCBvdXQgYWZ0ZXIgc2V0dGluZyBTTVBfRkxBR19XQUlUX1VTRVIsIHJp
Z2h0Pzxicj4NCjxicj4NCkBAIC0yMTE1LDcgKzIxMTUsNyBAQCBzdGF0aWMgdTggc21wX2NtZF9w
YWlyaW5nX3JhbmRvbShzdHJ1Y3QgbDJjYXBfY29ubiAqY29ubiwgc3RydWN0IHNrX2J1ZmYgKnNr
Yik8YnI+DQrCoCDCoCDCoCDCoCBzdHJ1Y3QgbDJjYXBfY2hhbiAqY2hhbiA9IGNvbm4tJmd0O3Nt
cDs8YnI+DQrCoCDCoCDCoCDCoCBzdHJ1Y3Qgc21wX2NoYW4gKnNtcCA9IGNoYW4tJmd0O2RhdGE7
PGJyPg0KwqAgwqAgwqAgwqAgc3RydWN0IGhjaV9jb25uICpoY29uID0gY29ubi0mZ3Q7aGNvbjs8
YnI+DQotwqAgwqAgwqAgwqB1OCAqcGtheCwgKnBrYngsICpuYSwgKm5iOzxicj4NCivCoCDCoCDC
oCDCoHU4ICpwa2F4LCAqcGtieCwgKm5hLCAqbmIsIGNvbmZpcm1faGludDs8YnI+DQrCoCDCoCDC
oCDCoCB1MzIgcGFzc2tleTs8YnI+DQrCoCDCoCDCoCDCoCBpbnQgZXJyOzxicj4NCjxicj4NCkBA
IC0yMTc5LDEzICsyMTc5LDkgQEAgc3RhdGljIHU4IHNtcF9jbWRfcGFpcmluZ19yYW5kb20oc3Ry
dWN0IGwyY2FwX2Nvbm4gKmNvbm4sIHN0cnVjdCBza19idWZmICpza2IpPGJyPg0KwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAqLzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGlmIChoY2lf
ZmluZF9sdGsoaGNvbi0mZ3Q7aGRldiwgJmFtcDtoY29uLSZndDtkc3QsIGhjb24tJmd0O2RzdF90
eXBlLDxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgaGNvbi0mZ3Q7cm9sZSkpIHs8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqBlcnIgPSBtZ210X3VzZXJfY29uZmlybV9yZXF1ZXN0KGhjb24tJmd0O2hkZXYsICZhbXA7
aGNvbi0mZ3Q7ZHN0LDxicj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGhjb24tJmd0O3R5
cGUsPGJyPg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaGNvbi0mZ3Q7ZHN0X3R5cGUsPGJy
Pg0KLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcGFzc2tleSwgMSk7PGJyPg0KLcKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGVycik8YnI+DQotwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqByZXR1cm4gU01QX1VOU1BFQ0lGSUVEOzxi
cj4NCi3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNldF9iaXQoU01QX0ZMQUdf
V0FJVF9VU0VSLCAmYW1wO3NtcC0mZ3Q7ZmxhZ3MpOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoHBhc3NrZXkgPSAwOzxicj4NCivCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGNvbmZpcm1faGludCA9IDE7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgZ290byBjb25maXJtOzxicj4NCsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IH08YnI+DQrCoCDCoCDCoCDCoCB9PGJyPg0KPGJyPg0KQEAgLTIyMDcsOCArMjIwMywxMSBAQCBz
dGF0aWMgdTggc21wX2NtZF9wYWlyaW5nX3JhbmRvbShzdHJ1Y3QgbDJjYXBfY29ubiAqY29ubiwg
c3RydWN0IHNrX2J1ZmYgKnNrYik8YnI+DQrCoCDCoCDCoCDCoCBpZiAoZXJyKTxicj4NCsKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIHJldHVybiBTTVBfVU5TUEVDSUZJRUQ7PGJyPg0KPGJyPg0KK8Kg
IMKgIMKgIMKgY29uZmlybV9oaW50ID0gMDs8YnI+DQorPGJyPg0KK2NvbmZpcm06PGJyPg0KwqAg
wqAgwqAgwqAgZXJyID0gbWdtdF91c2VyX2NvbmZpcm1fcmVxdWVzdChoY29uLSZndDtoZGV2LCAm
YW1wO2hjb24tJmd0O2RzdCwgaGNvbi0mZ3Q7dHlwZSw8YnI+DQotwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBoY29uLSZndDtkc3RfdHlw
ZSwgcGFzc2tleSwgMCk7PGJyPg0KK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaGNvbi0mZ3Q7ZHN0X3R5cGUsIHBhc3NrZXksIGNvbmZp
cm1faGludCk7PGJyPg0KwqAgwqAgwqAgwqAgaWYgKGVycik8YnI+DQrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCByZXR1cm4gU01QX1VOU1BFQ0lGSUVEOzxicj4NCjxicj4NClNvIGlzbuKAmXQgdGhp
cyB0aGUgYmV0dGVyIGFwcHJvYWNoIGFuZCBhY3R1YWxseSBjbGVhbmVyIGNvZGU/IEFuZCBJIHdv
dWxkIHN0aWxsIGFkZCBhIGNvbW1lbnQgYWJvdmUgc2V0dGluZyBwYXNza2V5ID0gMC48YnI+DQo8
YnI+DQpBbSBJIG1pc3NpbmcgYW55dGhpbmc/PGJyPg0KPGJyPg0KUmVnYXJkczxicj4NCjxicj4N
Ck1hcmNlbDxicj4NCjxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj4NCg0KPHA+PC9wPgoKLS0gPGJy
IC8+CllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQg
dG8gdGhlIEdvb2dsZSBHcm91cHMgJnF1b3Q7Q2xhbmcgQnVpbHQgTGludXgmcXVvdDsgZ3JvdXAu
PGJyIC8+ClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcg
ZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOmNsYW5nLWJ1
aWx0LWxpbnV4K3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20iPmNsYW5nLWJ1aWx0LWxpbnV4
K3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb208L2E+LjxiciAvPgpUbyB2aWV3IHRoaXMgZGlz
Y3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IDxhIGhyZWY9Imh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5j
b20vZC9tc2dpZC9jbGFuZy1idWlsdC1saW51eC9DQVBIWldVY1ZlUVclM0Q3MEVhQjM3TWtlQUVS
SllOYktMVEwlMkJQTnp6c2hHOXM3WTUtaHB3JTQwbWFpbC5nbWFpbC5jb20/dXRtX21lZGl1bT1l
bWFpbCZ1dG1fc291cmNlPWZvb3RlciI+aHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lk
L2NsYW5nLWJ1aWx0LWxpbnV4L0NBUEhaV1VjVmVRVyUzRDcwRWFCMzdNa2VBRVJKWU5iS0xUTCUy
QlBOenpzaEc5czdZNS1ocHclNDBtYWlsLmdtYWlsLmNvbTwvYT4uPGJyIC8+Cg==
--0000000000009c227c059ee6eccb--
