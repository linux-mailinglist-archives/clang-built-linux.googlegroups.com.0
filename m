Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRNDULZAKGQEHOZ2ILQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F83160142
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 01:50:14 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id x69sf11071120ill.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 16:50:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581814213; cv=pass;
        d=google.com; s=arc-20160816;
        b=A+8XO01fYlK8YP2O5WSqDVLRdYk503eJVhUiqaHSsjaL5n8g4wGDkM+4DcxQMHPZcb
         3K21qiMCjaT2SvHdouTZ6HtKVWaXToCEOvlID/Dj4p+lQEQEWBW5g0cU0amjwlj4cFbp
         KTNJETQJSrVqmTbkOqmqTZe9E4t6JqTwFSf1goKyNgCyVVsmPrTOd62YzAH+157nrcGL
         rHtn41MrSwVdtlSqrFrsT2p9bvvBoqb+weTmao8C7ziP+FIMkjTBrRFZXlEZlq6mBEvj
         +OJyyeXEVb/6qROyOzTlhxRcH8t+CIMbbV6HSdZ539e1yj2B8VMDKbpJbtPzpEPdMsGp
         8rOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=3+G43INpCeZCeTY+/c1IGWkS9pc3iLhBavt5oFJOokA=;
        b=ycM31ZcPAepo7G7fubeuLbZEMqcK7OOrkfwZRV06v9N+mK1qqD+ST3kL5mG0ou/zxa
         uqPprhzM+ER12MZ9F9njsmz7j95/9PbcN2YPnDhLlCoMIbnckwdlccs+9wcnTAV7vSYK
         fs62CeXmDrL0waCiG2qNgzO3M9PZFwqlxeCIByfWq79G+GWKAwujpTvfzyvBgv4r4rKG
         rN6z95CjBx3h0/1+/Yhj7gunE8A8fAQFUxPQMBSZDEJ2/s5bcbC0/xSt84JyavcnqWsv
         6Qcun5IiW6gwvorP2y9PEFOYrHcUrinkoMUP3ZUQ7iDYu/9/5+MduzEo4wsxapW47b/w
         wvZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q0WMVYVI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3+G43INpCeZCeTY+/c1IGWkS9pc3iLhBavt5oFJOokA=;
        b=rcqfc2F7+WojG11x9/lNnmfweezkuJcvumtFNyZYczJR1YW/+c5Um1mjuDvr3oBAxs
         EKKsa/gvO4QRxPcC8FHEMNFnNMsNo+p5I8RKXuu5dpiwwRF99xk+cAFOShrFaknyuKz/
         8rBpKAsUMpmGUD9crBeTRtYdq+s8GwhxREIPxEiJ1mteqzVPfTxzrxkBL1NI1CBrVfps
         wb6Q+aktuMCZi7jRr4tsB3a6J/fKjzw9ifta89dW8zcaaCRI3nSALhK6pk4kRY/MS2l9
         tWEKqwJ9mpSjMtlkDB1oPSsm3BN9Ky7gOal9i5X2yx0l6n8FjWal4LJ80u71CP2lBKI1
         CW+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3+G43INpCeZCeTY+/c1IGWkS9pc3iLhBavt5oFJOokA=;
        b=eVIGO2NTdvjEK6qqRUs+n1r7oWgisY4h6DK9kY7d0bQOhRJHWZ5pq9JljQ62lroZzw
         8YUcGwOdzYwfm0vpEIA45M2PadocP5P43RTrjuXVKMXD9vPRKekFLHi3CT7biBKLnOCi
         dr9i1M/aFidYmmkPbC3mq1A8gA82ueIk1qtQaphEbqq67Whp2rrfMDQoTyEOYso24RAv
         1OKOZ/GnhlFIGWyzVNGRUihMXQABtIVAzHcMTbsidD0DyzD+tdDwLZY/XnY+FUHB304k
         362kiKAf09Y3/ng9Xxk+jX2RZMiWsBey8W+AOijXhV9mArDBtmgP3bDlTslRKd92rKg6
         ShJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3+G43INpCeZCeTY+/c1IGWkS9pc3iLhBavt5oFJOokA=;
        b=uNpMEixSCnrlqID6d0+XhQR4dvJ+MTB5Ni1Qr0y349g8qwz1cKj8RibaxvfO9o9Zkg
         Pn+spyew+npLeTD1a0pTWqMDiXt+XbZ0FtfVaPmDYXhEZm4wpFDdXBLVbc3/pUjJe+2l
         btLRfn6WuQ43cecBt/LcL9FiP2SHxufzYEbUQWytjCHgiHiuf6CaTwe6oBLPAuhtGnU4
         plu8HVovkGGsQt2CVe+3Vbbl1lCTgY2Puxh+VaRIVFO3/3+HA+x1smpHD3iec4OtLq+p
         AHGTv7gZ4UxvJWiizCkMESnoOe6Lk+2eHn/0vWem0TfiYUuONENm8pVgeQtRhO0AQfBY
         LGoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV7wSrhvUvEfO++Rx0MOeQWjkV6YSrXdrexxlINt5Y9RuQPpT6y
	0O4t2IZq7Gciu/eJDytSPso=
X-Google-Smtp-Source: APXvYqxecoappmEPfzt1+sC+LW0t+Lr+4e4R0EFN3m2MPWUnpCj8G6lcZL8ymeUxhMhP4Hr+jQLVlw==
X-Received: by 2002:a02:6a06:: with SMTP id l6mr7848062jac.111.1581814213354;
        Sat, 15 Feb 2020 16:50:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls1271396iog.6.gmail; Sat, 15 Feb
 2020 16:50:13 -0800 (PST)
X-Received: by 2002:a6b:6e06:: with SMTP id d6mr7089957ioh.95.1581814212981;
        Sat, 15 Feb 2020 16:50:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581814212; cv=none;
        d=google.com; s=arc-20160816;
        b=k/k2hJ6yNWGbw6ygreRK6R5JbooWrpHIW3I1dRI9OrBu/MEj3Pb4T0fsSJPpX+vzoe
         WYvCIrhQs4ZyOH3GeV1KE2BDmk72EtZaHD+W6vH0lQ6OCYOWDgvcfiEZiJYng/buH/D4
         joZEXiRwdGshvSNv3DOzvRu+2xFGWQ/ezsD2lIzJii22p7g3ASyM26aRWm/cPyVEKLT5
         ISxoK+u57ULDq5J1rQBkWjX3aL9fTyM5/R97i5LUR/BCUvUmv/jo5eueJSS8NBaArhWb
         H0d1IiVQpxqSsHSwoOJgLDeiyBOPpviTNRf404cqxgQl0Dd9BiMLT6YvWZSnwWlGyzW3
         MBtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uyRNNBKtZ/pBAy6wlcISFvmc40pdoR2VRPKkepKzyLM=;
        b=ZWyPaoFCCye3hIxK9icQyZ5Y9EQJA7DLypHul9+ctQHpzEfCWChvtFD8mWRLeTtYRT
         IkcEXRlp7/rNLsl7QlqBRhVjgLOfMCslK88+BXMpkfjrpEPexHGxvxgOjYnPOMmJ7+Nc
         cdlDAkTjcoVSiT3cWHN3yQQ2z5hXLGBAji0JlzmhcVaGbnhL8o4k7wK7T7PecYdkzZCb
         BOaxsmGh+ah69dnEPSUS50XvL/sS6l14dNWfqDLng8bj2kQI01VJaO3gbFCEOd9F5OLh
         Q0EM+hpGvWdq/AqG/bEuvK37nEo8kNffwPT+mXwrWgIoDnetlh0bilUy0AYzA5g/qDYZ
         uvdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q0WMVYVI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id b16si495083ion.0.2020.02.15.16.50.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Feb 2020 16:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id p8so12751476oth.10
        for <clang-built-linux@googlegroups.com>; Sat, 15 Feb 2020 16:50:12 -0800 (PST)
X-Received: by 2002:a05:6830:138b:: with SMTP id d11mr7101057otq.38.1581814212513;
        Sat, 15 Feb 2020 16:50:12 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g25sm3678506otr.8.2020.02.15.16.50.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 15 Feb 2020 16:50:11 -0800 (PST)
Date: Sat, 15 Feb 2020 17:50:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Howard Chung <howardchung@google.com>
Cc: linux-bluetooth@vger.kernel.org, marcel@holtmann.org,
	chromeos-bluetooth-upstreaming@chromium.org,
	"David S. Miller" <davem@davemloft.net>,
	Johan Hedberg <johan.hedberg@gmail.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [Bluez PATCH v5] bluetooth: secure bluetooth stack from bluedump
 attack
Message-ID: <20200216005010.GA24335@ubuntu-m2-xlarge-x86>
References: <20200214191609.Bluez.v5.1.Ia71869d2f3e19a76a6a352c61088a085a1d41ba6@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200214191609.Bluez.v5.1.Ia71869d2f3e19a76a6a352c61088a085a1d41ba6@changeid>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q0WMVYVI;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Howard,

On Fri, Feb 14, 2020 at 07:16:41PM +0800, Howard Chung wrote:
> Attack scenario:
> 1. A Chromebook (let's call this device A) is paired to a legitimate
>    Bluetooth classic device (e.g. a speaker) (let's call this device
>    B).
> 2. A malicious device (let's call this device C) pretends to be the
>    Bluetooth speaker by using the same BT address.
> 3. If device A is not currently connected to device B, device A will
>    be ready to accept connection from device B in the background
>    (technically, doing Page Scan).
> 4. Therefore, device C can initiate connection to device A
>    (because device A is doing Page Scan) and device A will accept the
>    connection because device A trusts device C's address which is the
>    same as device B's address.
> 5. Device C won't be able to communicate at any high level Bluetooth
>    profile with device A because device A enforces that device C is
>    encrypted with their common Link Key, which device C doesn't have.
>    But device C can initiate pairing with device A with just-works
>    model without requiring user interaction (there is only pairing
>    notification). After pairing, device A now trusts device C with a
>    new different link key, common between device A and C.
> 6. From now on, device A trusts device C, so device C can at anytime
>    connect to device A to do any kind of high-level hijacking, e.g.
>    speaker hijack or mouse/keyboard hijack.
> 
> Since we don't know whether the repairing is legitimate or not,
> leave the decision to user space if all the conditions below are met.
> - the pairing is initialized by peer
> - the authorization method is just-work
> - host already had the link key to the peer
> 
> Signed-off-by: Howard Chung <howardchung@google.com>
> ---
> 
> Changes in v5:
> - Rephrase the comment
> 
> Changes in v4:
> - optimise the check in smp.c.
> 
> Changes in v3:
> - Change confirm_hint from 2 to 1
> - Fix coding style (declaration order)
> 
> Changes in v2:
> - Remove the HCI_PERMIT_JUST_WORK_REPAIR debugfs option
> - Fix the added code in classic
> - Add a similar fix for LE
> 
>  net/bluetooth/hci_event.c | 10 ++++++++++
>  net/bluetooth/smp.c       | 19 +++++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/net/bluetooth/hci_event.c b/net/bluetooth/hci_event.c
> index 2c833dae9366..e6982f4f51ea 100644
> --- a/net/bluetooth/hci_event.c
> +++ b/net/bluetooth/hci_event.c
> @@ -4571,6 +4571,16 @@ static void hci_user_confirm_request_evt(struct hci_dev *hdev,
>  			goto confirm;
>  		}
>  
> +		/* If there already exists link key in local host, leave the
> +		 * decision to user space since the remote device could be
> +		 * legitimate or malicious.
> +		 */
> +		if (hci_find_link_key(hdev, &ev->bdaddr)) {
> +			bt_dev_warn(hdev, "Local host already has link key");
> +			confirm_hint = 1;
> +			goto confirm;
> +		}
> +
>  		BT_DBG("Auto-accept of user confirmation with %ums delay",
>  		       hdev->auto_accept_delay);
>  
> diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
> index 2cba6e07c02b..25dbf77d216b 100644
> --- a/net/bluetooth/smp.c
> +++ b/net/bluetooth/smp.c
> @@ -2192,6 +2192,25 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
>  		smp_send_cmd(conn, SMP_CMD_PAIRING_RANDOM, sizeof(smp->prnd),
>  			     smp->prnd);
>  		SMP_ALLOW_CMD(smp, SMP_CMD_DHKEY_CHECK);
> +
> +		/* Only Just-Works pairing requires extra checks */
> +		if (smp->method != JUST_WORKS)
> +			goto mackey_and_ltk;
> +
> +		/* If there already exists link key in local host, leave the
> +		 * decision to user space since the remote device could be
> +		 * legitimate or malicious.
> +		 */
> +		if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
> +				 hcon->role)) {
> +			err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
> +							hcon->type,
> +							hcon->dst_type, passkey,

We received a report from the 0day bot when building with clang that
passkey is uninitialized when used here:

https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU

It appears to be legitimate as if we get to this point, we have not
touched the value of passkey but I do not know if there is any
contextual code flow going on where this can never happen but I do not
see how.

Would you mind looking into it?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200216005010.GA24335%40ubuntu-m2-xlarge-x86.
