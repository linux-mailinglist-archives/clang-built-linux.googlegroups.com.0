Return-Path: <clang-built-linux+bncBCPLJUXI24IRBI5KWHZAKGQEUJVP75Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5C11634AF
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 22:20:35 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id m21sf16767935edp.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 13:20:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582060835; cv=pass;
        d=google.com; s=arc-20160816;
        b=WD7IuY4w1p7AsrAmqBO6jL9NrEJsht1iy3dy2cMeiroQyDb3o/2NpKgwIUML7RAzsQ
         wKgUQTJFv0KJ9Vz4uulgG2gvPersGXpTelcig+8oxVEV0qFXo5wV2ig8V0w4r66TstYs
         ruM3tVVA3vyaOENTTkUKiktYuX38pUyoJ69tihAzz8+yB8BpvInmRz87MpNM2S82Z1ug
         FzSh/y0mNsAOPuvCLGQh584LNSBKacfzGv5NvLFichQyZhHifGUeyBXIHynZhKxQLHbw
         lWEEru/+fsYqxz0SFiOWlSY+ysCb7pcoy/nkTrE9i8cEYyxuZUgW3qx+63gnGfiCGYU7
         TMxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=scj/eqNyESQFk6lBNbSzQ3Zs06xUPl7vmPAxCd+WiRU=;
        b=iw/qj7eQA3AlhIvOoTukW5yKkg8iriWmcul41FVUXKsOe9Hq2CaCMTD/gyf8R0MmKx
         wR2vN79m8ZSipo74u9U4JgUqA1DdKzFtAcT37jSud5xYxufxaqjn4+ZVdaq7Z3GEYm6k
         z5CU44HolwvByr2EHqGOobd5Xh1qVLLqRAhe9SsseWDBwEjDM5av5T/eaB9T4TdC03i5
         yi+M9PPERigOVpuUzAI0+0CTGLnK3UyDTyykQrDCYCx4Tj4n/gysBj4sp85tOsjOl8/c
         iDPsTSAhLWAxbWR9S1OE0IJByvJI0r+PGzTMHbmDGIsGgcJfKt/W9zPniPRHWjC1lGyW
         +bvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) smtp.mailfrom=marcel@holtmann.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scj/eqNyESQFk6lBNbSzQ3Zs06xUPl7vmPAxCd+WiRU=;
        b=PJyTHR6uau94aXiGyV+rjF8vdi9P0gzeB8OKnQZl2d11nUVpmbXo0JH/XE2N6kvqFd
         i228bgWAjGY5h2TGGiAg+JVwHzRmbukADDYVjk9JBG1ywkNJlyq+dkZnFifoKnqHg0IB
         cnx4qW7sL5oEJ+lJkPjm7cFb/9VfcvVuNYLWB1igfsAlnUBIpfkevCxGIwns6kuyalJT
         XqvsCYVbrii1Vw5WdflaHATF8TojCagx+1vtEHHbdHSCaaQ17zmAqBZqWW7j+ICgmWyT
         1XO55CmwbRVYYyRkpJTgIKLAr6xL2XKwWoDTGOXS/iy18KM4P2689txO8wg4kNMDff9b
         auFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=scj/eqNyESQFk6lBNbSzQ3Zs06xUPl7vmPAxCd+WiRU=;
        b=D2wUX6HRXdc/s9L+stIU/k5hg+Dnnrp4EY/NS17Hmbvttniwz8M7e13oMyiE4OlW5O
         BmXLiOTh4HGd482cWmo/jxu2Oa3B238zDialPj9SXwvsSCf8eOZoUT77oGMXAmBwBPy9
         bM+loQja/gXsmfmHbDXOV9q6YqogNggiqz1Ct9qX/kr3y7wGkhGnz48gPsKdFiDb6Tul
         Hn/cOWxfKkm5OXObdp4QDLdcodGq4FQobSXdOTFEYhhv0MwYMYjfqMEDVhVaNq/dwYGF
         Ljkygg4t7F2QKXYCD/LXpBJwPVMUs2tGDoZqsOOd85hoVdt+vH//xGOMPgXH2eXPWEZf
         fAmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0sETriHvq6AFbbc5J4PcE6xAR9f+ze+eqTe1ew+/re5JJTlsi
	f15wWV3B3WWcVvCuuodt/lA=
X-Google-Smtp-Source: APXvYqwM3XwZpcSXk6Cwx93IVX7QRgyWBHrJylcdzdUu8XlkGbFGGEvwQSmnlNksUjBVwLH7b9AAsQ==
X-Received: by 2002:a17:906:6942:: with SMTP id c2mr21781348ejs.12.1582060835303;
        Tue, 18 Feb 2020 13:20:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c98d:: with SMTP id c13ls7577503edt.0.gmail; Tue, 18 Feb
 2020 13:20:34 -0800 (PST)
X-Received: by 2002:aa7:c65a:: with SMTP id z26mr6219943edr.100.1582060834744;
        Tue, 18 Feb 2020 13:20:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582060834; cv=none;
        d=google.com; s=arc-20160816;
        b=uIJyltHi2H0bg5pDRrYhZxi7z1kzT5XxWbZKWJ2976ye6+60tG+p2NwbebynYQXUI+
         wxZohnjoEDQIIaH4xtO9bqlmSp1X2ttRmkRhKwBAxDPxNnElOzCL3bv16K5TGmDarG3Z
         cquc0axD/bE4FUtUiVakciO676E5xhQZ4kkiOlo46xkR0Ox4Ssm8Q+vUAuTQTxhRXiWI
         ZgLtmPdgGpz5wExTNd+Liluzraj+m4F1aS2F6pU1qKQMefnXQBGOZOczo1mbwopABy6+
         t4RdN+jKJZqpmozSD14bZLIu+0j2TJGov3Dxe2QnMbnYOCOHt5tW7EKVHaGygW6qoR3B
         Oetg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version;
        bh=UhY1T9nU96lbySOkdxiSI1TdhTJwlNYBPQ0sBLP9dvk=;
        b=AgL5yTlvBFiMSbrbbk+25musj7K6d5rTGsjV9ZaIKvsjqsX8QDpn8GwRXzm4yr0cPZ
         Ek+DniRNAKJyCWQ9iNMKo8YHfXMcY+1ZPVcJ7NN3qDALKMZb9A7Mw9mn64Zx0DBlDofq
         XG9qAx48XaguMcog7v5fKRBq0O3JU1gWGYuRixLCcQ1tfUN76iX2xUfbBsxD4KxJLfqZ
         UZ0t+HZrMDleUjEFcf4PmF+7ych1O4FBNb3t3p5R20ZYtFhM8+2/YQ261ZWu0acyeiKk
         aApHP6D3gOOzavEOnlMS21ebzi2Xt+Q7CxJXSwOzwQjHF5djFZcOp1FZG84smP9augx7
         6wFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) smtp.mailfrom=marcel@holtmann.org
Received: from mail.holtmann.org (coyote.holtmann.net. [212.227.132.17])
        by gmr-mx.google.com with ESMTP id df10si285829edb.1.2020.02.18.13.20.33
        for <clang-built-linux@googlegroups.com>;
        Tue, 18 Feb 2020 13:20:33 -0800 (PST)
Received-SPF: pass (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as permitted sender) client-ip=212.227.132.17;
Received: from marcel-macpro.fritz.box (p4FEFC5A7.dip0.t-ipconnect.de [79.239.197.167])
	by mail.holtmann.org (Postfix) with ESMTPSA id 9C238CECC6;
	Tue, 18 Feb 2020 22:29:57 +0100 (CET)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [Bluez PATCH v1] bluetooth: fix passkey uninitialized when used
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20200218190509.Bluez.v1.1.I04681c6e295c27088c0b4ed7bb9b187d1bb4ed19@changeid>
Date: Tue, 18 Feb 2020 22:20:32 +0100
Cc: Bluez mailing list <linux-bluetooth@vger.kernel.org>,
 chromeos-bluetooth-upstreaming@chromium.org,
 "David S. Miller" <davem@davemloft.net>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>,
 clang-built-linux@googlegroups.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <D9045CD6-997B-4018-8AB0-40F15C71BF5C@holtmann.org>
References: <20200218190509.Bluez.v1.1.I04681c6e295c27088c0b4ed7bb9b187d1bb4ed19@changeid>
To: Howard Chung <howardchung@google.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Original-Sender: marcel@holtmann.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of marcel@holtmann.org designates 212.227.132.17 as
 permitted sender) smtp.mailfrom=marcel@holtmann.org
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

Hi Howard,

> From: "howardchung@google.com" <howardchung@google.com>

any chance you fix your git setting to provide a From: with full name and e=
mail like you have in the signed-off-by line.

>=20
> This issue cause a warning here
> https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU
>=20
> Signed-off-by: Howard Chung <howardchung@google.com>
> ---
>=20
> net/bluetooth/smp.c | 6 ++++--
> 1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
> index 50e0ac692ec4..fa40de69e487 100644
> --- a/net/bluetooth/smp.c
> +++ b/net/bluetooth/smp.c
> @@ -2179,10 +2179,12 @@ static u8 smp_cmd_pairing_random(struct l2cap_con=
n *conn, struct sk_buff *skb)
> 		 */
> 		if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
> 				 hcon->role)) {
> +			/* Set passkey to 0. The value can be any number since
> +			 * it'll be ignored anyway.
> +			 */
> 			err =3D mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
> 							hcon->type,
> -							hcon->dst_type,
> -							passkey, 1);
> +							hcon->dst_type, 0, 1);
> 			if (err)
> 				return SMP_UNSPECIFIED;
> 			set_bit(SMP_FLAG_WAIT_USER, &smp->flags);

Since I have to look at this again, I wonder if we do this correctly. Eithe=
r we have a bug there or not enough comments on why the code is correct.

        if (hcon->out) {
                u8 cfm[16];

                err =3D smp_f4(smp->tfm_cmac, smp->remote_pk, smp->local_pk=
,
                             smp->rrnd, 0, cfm);
                if (err)
                        return SMP_UNSPECIFIED;

                if (crypto_memneq(smp->pcnf, cfm, 16))
                        return SMP_CONFIRM_FAILED;
        } else {
                smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM, sizeof(smp->prnd=
),
                             smp->prnd);
                SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);

                /* Only Just-Works pairing requires extra checks */
                if (smp->method !=3D JUST_WORKS)
                        goto mackey_and_ltk;

                /* If there already exists long term key in local host, lea=
ve
                 * the decision to user space since the remote device could
                 * be legitimate or malicious.
                 */
                if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
                                 hcon->role)) {
                        err =3D mgmt_user_confirm_request(hcon->hdev, &hcon=
->dst,
                                                        hcon->type,
                                                        hcon->dst_type,
                                                        passkey, 1);
                        if (err)
                                return SMP_UNSPECIFIED;
                        set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
                }
        }

mackey_and_ltk:
        /* Generate MacKey and LTK */
        err =3D sc_mackey_and_ltk(smp, smp->mackey, smp->tk);
        if (err)
                return SMP_UNSPECIFIED;

        if (smp->method =3D=3D JUST_WORKS || smp->method =3D=3D REQ_OOB) {
                if (hcon->out) {
                        sc_dhkey_check(smp);
                        SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
                }
                return 0;
        }

        err =3D smp_g2(smp->tfm_cmac, pkax, pkbx, na, nb, &passkey);
        if (err)
                return SMP_UNSPECIFIED;

        err =3D mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->typ=
e,
                                        hcon->dst_type, passkey, 0);
        if (err)
                return SMP_UNSPECIFIED;

        set_bit(SMP_FLAG_WAIT_USER, &smp->flags);

        return 0;
}

Since we are already !hcon->out and smp->method =3D=3D JUST_WORKS, why are =
we moving into mackey_and_ltk path? If we have already an LTK, then we just=
 should bail out after setting SMP_FLAG_WAIT_USER, right?

@@ -2115,7 +2115,7 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *c=
onn, struct sk_buff *skb)
        struct l2cap_chan *chan =3D conn->smp;
        struct smp_chan *smp =3D chan->data;
        struct hci_conn *hcon =3D conn->hcon;
-       u8 *pkax, *pkbx, *na, *nb;
+       u8 *pkax, *pkbx, *na, *nb, confirm_hint;
        u32 passkey;
        int err;
=20
@@ -2179,13 +2179,9 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *=
conn, struct sk_buff *skb)
                 */
                if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
                                 hcon->role)) {
-                       err =3D mgmt_user_confirm_request(hcon->hdev, &hcon=
->dst,
-                                                       hcon->type,
-                                                       hcon->dst_type,
-                                                       passkey, 1);
-                       if (err)
-                               return SMP_UNSPECIFIED;
-                       set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
+                       passkey =3D 0;
+                       confirm_hint =3D 1;
+                       goto confirm;
                }
        }
=20
@@ -2207,8 +2203,11 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *=
conn, struct sk_buff *skb)
        if (err)
                return SMP_UNSPECIFIED;
=20
+       confirm_hint =3D 0;
+
+confirm:
        err =3D mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->typ=
e,
-                                       hcon->dst_type, passkey, 0);
+                                       hcon->dst_type, passkey, confirm_hi=
nt);
        if (err)
                return SMP_UNSPECIFIED;

So isn=E2=80=99t this the better approach and actually cleaner code? And I =
would still add a comment above setting passkey =3D 0.

Am I missing anything?

Regards

Marcel

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/D9045CD6-997B-4018-8AB0-40F15C71BF5C%40holtmann.org.
