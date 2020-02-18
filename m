Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZGGWDZAKGQE7Y2TSFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 73640162D5A
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 18:48:21 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id e11sf14641247qkl.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 09:48:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582048100; cv=pass;
        d=google.com; s=arc-20160816;
        b=piBBwvH20OyZx3WOM+c1Dn9ozk1vGSUO60Ebd0Yi0/zjvLsNJqigUgDxUJ+BA6UbJw
         4UfAbZRqc7+xvFKetF+MBrYnn7e1Kg29KlDTxZxBPFJMiMKJ1opPeL7uRYh/GTvkUSmh
         5T1Xq5pRHLpVO3P3vx87JDaBwFboUX6D5mgipOvfpiTPExwwb9ag7trONzuKR76q3x6G
         QJFuMufo96BDv+WKa1JzTtDKFMDF7hg9Id2M3P08tihhM0BiTDeBnUPhPKacK2RWJukO
         47DWbC4amSTQHJkQSTuTv4q3njRVgY2SD4fnOX2kR3rn3ji6UZxwSwYDcYF7/sFDuXIr
         XK/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h1KUkqWzGsLX6bRzmYD3e9IwGpOe3CTTdZ9oRm6J9xY=;
        b=UIPzh8ullknx41FKJXlIsI8bDpzLw7mTrpp49eM9j088sUQE7WW11mVrhCpKq0eyz+
         pvOaZhro4YQhC55zCKOA6I8U0QTow0MzUN0Nyz5B6fsh6jSB9VaIvb0nSq2OHLhi3p8n
         gnhg1Y8YS1IMqYHAFZWnULKIy2mZKyCqfi59hrj4NQuiDVFmjFke2RcvoR63H1ExR7+E
         UR0uRtGgmMYBOIMc6VGcjq7M8l38EEX1cEKx6RZuEa1f0t6re1SKsXgjFyn1fkot3Ffz
         BFRTQqF4LHnWQisuGla6C9PlvGKdu6wFOfuLr9aX5pNRfvcwPdk2VS4m4cmc1CqL23Dt
         NsIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VAAEidVX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h1KUkqWzGsLX6bRzmYD3e9IwGpOe3CTTdZ9oRm6J9xY=;
        b=Lv1EHfwTy3GT9V0wLoxj43+hOHksn4si5uGL2J/tn75Ba+e93Iu7Z3hWdIttBgZqW7
         rytcdGAso3xIOCL5JTxkEamrLOXLuQ/5PRjXHkz4qZDpwNbYcLA6rRcQ3CLf+dsxJxfq
         aI6uwR4z2+7v3mTFqYTKgfpEJRhFrJhMGSf+dgbaYBOy7OOOupKHz8TajcHLxnAp8MWJ
         QDmUG0fRuH+i2ofb59Y8zuQbZquP5DnJHoFydNYjnQwzuqj6AcJqXSFKH4sohfmNau9K
         Fx3XzgztV5aBgupjGpUVQEdd8stzpUFNMkJR0H4dH9CnJtD2puJv13fYg5DxVAtU+ggT
         U08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h1KUkqWzGsLX6bRzmYD3e9IwGpOe3CTTdZ9oRm6J9xY=;
        b=MIUeh9SETyzzTlWDD+65zcttoHAaI900xiLQKbc+kLItsj65dWnpGT2T7ZxYhkcsWa
         2GKMNta8YB2D8DM0C/GeP+FwMc/wTfHUvLVAPuuYGc7tQioZx7xFOmubxh10QQJbGnsr
         CkfVET3lba74Ddwf95WvPBww5OUc8yT2qzOVKqzxOewX6WTwt8QKCJelJyumd0Y8/sLf
         KP70xxrK7Borlf7ouobVgbbvKeG+1QaByPhN6t5yio5195ilGeCW8vx/sdrlJABSHDMm
         NatzlfzAbMR0faIssDm8a6QQ3mr+GOq/dE5BNf1BzsMyKK5clEPVJ7/3jPxZ3KQimCLA
         ymOg==
X-Gm-Message-State: APjAAAW85Zn4H5eHDujfYeT9Xj+5F4l2uYFti05nP6+Paup/J9MHsDue
	7Ys8NxZGQmAGnXdgaeO8fX4=
X-Google-Smtp-Source: APXvYqzsHYcb5s+9J3h9hZ7WlBTKuqDtm79ZGCYSrGIFyg4TYYl1xv8Gbvd9H0Qi3riRrcC4/ksYLA==
X-Received: by 2002:a37:ad02:: with SMTP id f2mr19162721qkm.239.1582048100123;
        Tue, 18 Feb 2020 09:48:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:70c4:: with SMTP id l187ls1843633qkc.7.gmail; Tue, 18
 Feb 2020 09:48:19 -0800 (PST)
X-Received: by 2002:a37:b744:: with SMTP id h65mr20556088qkf.85.1582048099831;
        Tue, 18 Feb 2020 09:48:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582048099; cv=none;
        d=google.com; s=arc-20160816;
        b=YYeWgw50NsMFhqEosvaXo53Q7huqqMuZh1XCEou9d/p2F957geFelmse+o19LpA/D9
         T1+t5Fqn+/pSsgFsQ/lkgXqOpjQTFvjoOyLovfN1H3t4ztN4+tf/rSXzBlYoNbfWdqei
         opSuc7qg3OGatVcEKt6l96FjHZqJrX1J2cyHhOxVDem47bjQ8e8Eom+4uTxwZ/PWtr96
         v/PRpb5yDDKHAX+JAyV+zW7nf1opi/JhlcJXiC0kyjQvBVFsMx36ACHfcsEKEx+1qtE6
         G9BszMnLLDFv4+I3+EinkCVCb4WI2fqfxsrUE00b30V+1skfMnYa9nQKYXUKzT0OizFN
         MqpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3hvwSCkX9pxo1KclHmLRqkXi0GkIvTorMMfGsTl4G64=;
        b=onQiVVn5ucI6l7I8g4croSn4vF0/h6QAVj/EyA6BgGfrffka7CRX8FwmmyrmMw4zUH
         xTYdnq6yaDMFfBSWfYSQeoWDdXXuD2tZCoZWBB4F+Xxegah0tkdM20tPQvLqaHUYoinf
         aeBNwNmAS7VZQZoNxNDo2UFLUBms2KIVH56HVmPqaoI90faByUMrl5gtvBhw1ACRJtov
         hfw5WkyODQqLXZ1N1VkF3quuReSCkHPICSww5pWoK7F/gDbg/Kuu25dz4xVdpgUOdwc4
         Y5KvE/D3OJMElNAkK3r/p04FbFYPqQwpj2emqiJ2aow7cWMQo6zkGGMtn0XIksCmJBNh
         Wwtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VAAEidVX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id g23si228177qki.4.2020.02.18.09.48.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 09:48:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d9so11311384pgu.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 09:48:19 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr23276938pgk.381.1582048098676;
 Tue, 18 Feb 2020 09:48:18 -0800 (PST)
MIME-Version: 1.0
References: <20200218190509.Bluez.v1.1.I04681c6e295c27088c0b4ed7bb9b187d1bb4ed19@changeid>
In-Reply-To: <20200218190509.Bluez.v1.1.I04681c6e295c27088c0b4ed7bb9b187d1bb4ed19@changeid>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Feb 2020 09:48:07 -0800
Message-ID: <CAKwvOd=SD0AMwoxRovnPfAV70D7W4LPWtLHbui26A92ycUic=w@mail.gmail.com>
Subject: Re: [Bluez PATCH v1] bluetooth: fix passkey uninitialized when used
To: Howard Chung <howardchung@google.com>
Cc: linux-bluetooth@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>, 
	chromeos-bluetooth-upstreaming@chromium.org, 
	"David S. Miller" <davem@davemloft.net>, Johan Hedberg <johan.hedberg@gmail.com>, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VAAEidVX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Feb 18, 2020 at 3:05 AM 'Howard Chung' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> From: "howardchung@google.com" <howardchung@google.com>
>
> This issue cause a warning here
> https://groups.google.com/forum/#!topic/clang-built-linux/kyRKCjRsGoU
>
> Signed-off-by: Howard Chung <howardchung@google.com>

Reported-by: kbuild test robot <lkp@intel.com>

Thanks for the fix. No comment on whether or not the value 0 is
ignored here, but this should fix the warning.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
>  net/bluetooth/smp.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/net/bluetooth/smp.c b/net/bluetooth/smp.c
> index 50e0ac692ec4..fa40de69e487 100644
> --- a/net/bluetooth/smp.c
> +++ b/net/bluetooth/smp.c
> @@ -2179,10 +2179,12 @@ static u8 smp_cmd_pairing_random(struct l2cap_conn *conn, struct sk_buff *skb)
>                  */
>                 if (hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
>                                  hcon->role)) {
> +                       /* Set passkey to 0. The value can be any number since
> +                        * it'll be ignored anyway.
> +                        */
>                         err = mgmt_user_confirm_request(hcon->hdev, &hcon->dst,
>                                                         hcon->type,
> -                                                       hcon->dst_type,
> -                                                       passkey, 1);
> +                                                       hcon->dst_type, 0, 1);
>                         if (err)
>                                 return SMP_UNSPECIFIED;
>                         set_bit(SMP_FLAG_WAIT_USER, &smp->flags);
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSD0AMwoxRovnPfAV70D7W4LPWtLHbui26A92ycUic%3Dw%40mail.gmail.com.
