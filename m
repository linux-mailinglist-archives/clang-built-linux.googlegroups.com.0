Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYUVW3ZAKGQECPL6OSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E40164EC6
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:22:11 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 39sf767790otr.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:22:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582140130; cv=pass;
        d=google.com; s=arc-20160816;
        b=wL4MuBYTIP1Rc2t3RUw3CZeAfSNTKiNGg/cBP5KT8z8eLDCPZitFtbKMOBEArDZlUO
         dzDn5/IOkbod8gFuM0nyg7vwvAzCAZ00K6mV5d7J/BlyYu0w+Qpqnn1kXL4gFMIu/vCx
         +ZRtv5diGK/n3aTBbMvZ2BbZSKlcxOXPheVYRJWQU34y6rtYl1dBeFzSf7nkH1mAoG2V
         +4XuEyR+va/i9lVCvO6qXXm3ntuYGvVXmbjE3Z4dR4Sw8n/7V/RLqFmTWqE1FJ61F1C1
         RrKjpILYXLn+D6zbjplJe+SyXOpQz/8hh+c4Gvsd5sHEPFXcGv34PewM5ZPqSb2nWoxI
         8efQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k1w8MYd6d/xXHg5ntUcjxRRFGCjcJyCkUSxu8JM8zSs=;
        b=VQ9H3H9vO9GTGb+Ws2VsfIoU4XOLqsa/+La/EZ+58vxJ38PtZRN1+LRRRJGywS6d2k
         m625CkGsZ8Gj00eMB93zdjpP8rGslPgv+u89qYmBSqWMIeMUK6XG50MdUm7zBFsQyFN3
         X8sRnWeZUwwmk1Y0FqehaGTZFtZpZ+8njSk08vYqFY5kXMDdlli9UbRzIqfg37qsM5rL
         B0KDhKM7JG7RxDR+YcKOd1EuMxdpR7lUKMuIAZdnzRHmZfs4DUK8NG0TIlEZrYdmm6v0
         y4iZBO54f63yaX4bwTjUi9qSr3hvW00DFsFPkIH1q7WSLNZKEkY8nvP9cdPezHMU8qQg
         1Pog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rVa1BjdK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1w8MYd6d/xXHg5ntUcjxRRFGCjcJyCkUSxu8JM8zSs=;
        b=sCy3EEJtmDV5UDhZ6E9cH2RK4XKsCh8ETY7A/W0ZTA9W57F4uxHWbTspVuCO9+E5Fd
         ntIhStjz0SdLqKIZKT0a9DeuhxVLwgr2MhTA3T61XZrpuN2wAl21o7ZIT68VXyoxx+vK
         52oY/FqRnhTDVbD8ONSHZ1hiP8YFv4s+VfQV5kENwNqMiC5EZZNFhXtMG1NY9vhgfOF3
         oFsz+KTb5qL2n2fddhFfTQnW467TD8rsVzGc5jqvvTH9aJxzuwfd+PST9U2mAnzd98tF
         0ZwLNNFMUeYPme+gSzUHSyumwUUO/s7nMoKGAdc4nM866AdB/uvg6zeGzoMHwqyan95r
         SYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1w8MYd6d/xXHg5ntUcjxRRFGCjcJyCkUSxu8JM8zSs=;
        b=Q3+qJv00u3hwNwoaNndxFNwcqkJNMBsmWGXvnB3Vly9ubEgIFKex3PjctN7ZM6a9oY
         ichscGxh3PiNU0xQi1j7MRhqony9qE9nogWPFNQNJWy3uOBJkO871zAFD0f6l3qGuEQg
         YFiil/NOVbQm3vYT6Q0fjbqIWB4MJLYOAKjtQgSUM2K4VS1i9Yz1efiEGqgAbzYPXdS1
         D+BCvSkIRW58qPJZ9RUqN0JR6t6H16YIQ+yG83RaOekve8pxNrVGydMEjOqApo/Rz7FA
         fSG7qrgppt1Pl9ihSxxsE2t3dggqveDKC0o+u3vdIRo3xlSDc3wNvDTzg2PmqXajIMaN
         x1mA==
X-Gm-Message-State: APjAAAX8gLB82RzW78HnylvzINVHtucb5W/jVarhLMjLP58T/TU+Qwh5
	2jEfCqXmx/063CQh+Xy9tiE=
X-Google-Smtp-Source: APXvYqzZLyJkF+pBTVAcVI905vh6I27wxJxYFRW41iuOBLWTSWU4tUnrcqhmJgKpaMXH1/a57n4CLg==
X-Received: by 2002:aca:d544:: with SMTP id m65mr5719172oig.177.1582140130527;
        Wed, 19 Feb 2020 11:22:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:611c:: with SMTP id i28ls274152otj.3.gmail; Wed, 19 Feb
 2020 11:22:10 -0800 (PST)
X-Received: by 2002:a9d:53c4:: with SMTP id i4mr21854901oth.48.1582140130003;
        Wed, 19 Feb 2020 11:22:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582140129; cv=none;
        d=google.com; s=arc-20160816;
        b=TQnoLLKr0oQcuYu8kxBEbNoPWmQVZ/XS8LWHoHvkQ2MgbFGroGCYeT3NSXpaeC9IEw
         b0t5sWAVturgPL23mNaL3Imrjd9H3hEVmKTKFYaMgBX5KiQxPbGspFljIuTkEVQD73+F
         kBqDC+1X276qEGaNo4latd6/5ueS/BWsSEcX+Lim2qAfi2rpw5wJSwQFjvyrCEZgDtK3
         RzuI5iNhPWtbxfBySQ00Anh4DLFjUotYcZTcZy6J7PvdAxrCg/fTwGZN+UKSDus58gYI
         Pc15KsHjceR1jZu0jq5QxRCrUaV3z8umxkhrZnegU73oEZTlX7UUqSv/fnE/4xCSkk0g
         Mu4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H9pCFwuo9zE6GfNpx/e5ax8ezAT4LdlBX6w0zbvDBCk=;
        b=dxks6y68OG6UzbwYVxwqZwt0fMP4OO/AmctEzcQSNOhFONK+FD0RCzOMegtb13NkhA
         xQkMDW/7HUOGneuc100APuDAnNjkxcQF0KsqRRGUYDpr5MyFXTvEbzvj0uPK0Vpwsf0g
         XNsFM5MU97G8V15YqdT0dxzsh+He704QVBxksHmgQge0eokeSiqofGBAsDmzE1eBlPsE
         qeZehmykM2GQ4UAIHc2KDvrVB+D8gVpKwxER2MIT19ySe08NFm1G7ZGJO6gG0TdDcQ1E
         nASzTl/5NBj07tcv9R7ZNtvN510WhBsDaWgMEBIBvCanv4LIMoE2mFINyoSyR/0GFzMh
         9VmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rVa1BjdK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d16si41376oij.1.2020.02.19.11.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:22:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id z7so581374pgk.7
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 11:22:09 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr28407282pfa.165.1582140128959;
 Wed, 19 Feb 2020 11:22:08 -0800 (PST)
MIME-Version: 1.0
References: <20200219144442.Bluez.v2.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8@changeid>
In-Reply-To: <20200219144442.Bluez.v2.1.I145f6c5bbf2437a6f6afc28d3db2b876c034c2d8@changeid>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 11:21:57 -0800
Message-ID: <CAKwvOd=dT9FHwCbJ5959wy_k5cw37Tm-tLw+Lk3jmqHWYpOQug@mail.gmail.com>
Subject: Re: [Bluez PATCH v2] bluetooth: fix passkey uninitialized when used
To: Howard Chung <howardchung@google.com>
Cc: linux-bluetooth@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>, 
	chromeos-bluetooth-upstreaming@chromium.org, 
	"David S. Miller" <davem@davemloft.net>, Johan Hedberg <johan.hedberg@gmail.com>, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rVa1BjdK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Feb 18, 2020 at 10:45 PM 'Howard Chung' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> This issue cause a warning here
> https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU
>
> Signed-off-by: Howard Chung <howardchung@google.com>

It can be helpful to just include the text from the warning in the
commit message, for future patches, then a "Link" tag (below) to the
report.  Also,if you use Marcel's suggestions, it's polite to add a
`Suggested-by` tag.

Link: https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU
Reported-by: kbuild test robot <lkp@intel.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> ---
>
> Changes in v2:
> - refactor code
>
>  net/bluetooth/smp.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
> index 50e0ac692ec4..929e0bebaf80 100644
> --- a/net/bluetooth/smp.c
> +++ b/net/bluetooth/smp.c
> @@ -2115,7 +2115,7 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
>         struct l2cap_chan *chan = conn->smp;
>         struct smp_chan *smp = chan->data;
>         struct hci_conn *hcon = conn->hcon;
> -       u8 *pkax, *pkbx, *na, *nb;
> +       u8 *pkax, *pkbx, *na, *nb, confirm_hint;
>         u32 passkey;
>         int err;
>
> @@ -2179,13 +2179,12 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
>                  */
>                 if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
>                                  hcon->role)) {
> -                       err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
> -                                                       hcon->type,
> -                                                       hcon->dst_type,
> -                                                       passkey, 1);
> -                       if (err)
> -                               return SMP_UNSPECIFIED;
> -                       set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
> +                       /* Set passkey to 0. The value can be any number since
> +                        * it'll be ignored anyway.
> +                        */
> +                       passkey = 0;
> +                       confirm_hint = 1;
> +                       goto confirm;
>                 }
>         }
>
> @@ -2206,9 +2205,11 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
>         err = smp_g2(smp->tfm_cmac, pkax, pkbx, na, nb, &passkey);
>         if (err)
>                 return SMP_UNSPECIFIED;
> +       confirm_hint = 0;
>
> +confirm:
>         err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst, hcon->type,
> -                                       hcon->dst_type, passkey, 0);
> +                                       hcon->dst_type, passkey, confirm_hint);
>         if (err)
>                 return SMP_UNSPECIFIED;
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DdT9FHwCbJ5959wy_k5cw37Tm-tLw%2BLk3jmqHWYpOQug%40mail.gmail.com.
