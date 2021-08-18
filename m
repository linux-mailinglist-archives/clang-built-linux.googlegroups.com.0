Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMB62EAMGQEZB4ZNEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFFD3F0DB1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:51:10 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id k21-20020a056a001695b0290329e718b5a3sf1988309pfc.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:51:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629323469; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZYbiJr+r7VXEuduWbwSfPVfY4j04gkG9sF8JmuTAu/UrDLDAhlk9VeOmDn/3SzGSic
         OYYi2Ms7WZWBQIeT+qFDF1rAdILbfUdZ25zAaRRcw/Fpl1qUjgujRaE1VHNiNZvk86ZL
         2DTFjz3BJRTI5DEdgfVMk9YsK0zK6Jm6/RSbB4Ew4tY2zuLwJlWRmQikIiF71drgq1MO
         ivwrW9W46lj3RhL5Jv+giJzUuKBf6nUz/oLdn6DtkQqqVS5nJmqIp+zgZ2397+xtqy+1
         5bP17NTAj44DiEJ7Tef/nMSv1/bBqJLGdoYYruYfojO7ujDc3z2dodO+cJOUcK6kKL1W
         Hdjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hkM+7f33HguxxTuFro/uDQU+0C7zfP+GwEsunTjmDZg=;
        b=PhdGKQVVnhmzVFQO7Gf8W+1wCXxjVJeAPLNFToNbtcehKgOeub8kc5TugFzgol3ceS
         Byqa31yIQdOl7csHrttdUPI4HIWDWNcexpvo5U/XVq4LIVkhVNQqEDeQqM6l8gyo7iiC
         qG3YAaQJgcBcQDOKYMw4FWBmPzHshjZvVeL1Xq/wLhUuG3XE5uZJPsWywl9KuhXZx3EG
         wRDZdLVj5XYnwZUVInec2v7pmhgFSs0JSlMUsG9OE50qHCo7y7tdtXYs8QQLv12jR0oU
         +tw8ObHN8BTixVFDKN3VLXasloyvXUYKya4HxL5UCR4mZB48T5NyN+jDRuFZH1r7idsq
         dLzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a0gIT1Pb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hkM+7f33HguxxTuFro/uDQU+0C7zfP+GwEsunTjmDZg=;
        b=ERjLGKNMboRaL1pu7oHJV9oYKahysM32pM9RRH/3/H3e6OtFdKqf9ri2GvrxB3z0f3
         5MkNW8UE1rgjQWiUvruoL/JkZB3JhEe2dtV5zP16XEsitt+0vmaJpJWOkB/xGFzGd2yy
         DodVxE1T/SG4MFr8YA4SKHJ7MeEAkRZX+qASw+Awn/KaRmPRyM9daT+Zy2mqg6a0+GDe
         pG+cXyMs/GHyq5/ZlRreb/ndSDSKAWxrQEDg1AvK5D2VR1EbPAYcysr3ZQZsc7iaEdQf
         i56f2Kojlidl0dhyBkMKyaozO+kRr2FuhBoSFr2DFykZtmfxpQixqRohkX8jQTb3NUAy
         RpuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hkM+7f33HguxxTuFro/uDQU+0C7zfP+GwEsunTjmDZg=;
        b=uD1WyD8/Rm5686rcsd2Jhxs8hRLyRtkL1GRdFb2GI3GvwVxpyGzU2tkVSLKmLVsdCb
         RAwQ9VnHsR8q0/KfnTw+OIIWPGHh6P4gMghwlsyXEqDjb7/FdXnGYen/QP5CV+BQ2rDn
         q8RxyfKRUD90VxiQ/AYUId5bq7k0Bgaem52W+8gwKoar0Aq9dZ5HApfEt/qEofxbcPFY
         KHzJbhbxB4Z272w40zUuBoaE03CWiIDH4IJl06qx2Bzll2O1IxHVLqeiQ91HYjsVrufy
         7iE1hTcI5VgqN6DusLemfYi79WNKn7IimwHkpB1RDJiDkEGNE5ejWE05oI0W1CrfouDD
         KPxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dlCe9OfDZHgeMqlKM0jkuQjw/JZkkDy5tl0vBiJ6U010EzqXz
	kzeIS97VNqJFwCFdQwR3SI8=
X-Google-Smtp-Source: ABdhPJyKWzzeuVUIkY57SxEXfGeMzS/4DzLfTLTYy6Gjxa69tFBFSzQWNh6z2kUVVRYxCwFNpmfUog==
X-Received: by 2002:a65:63c1:: with SMTP id n1mr10870166pgv.398.1629323469251;
        Wed, 18 Aug 2021 14:51:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls1739746plr.4.gmail; Wed, 18
 Aug 2021 14:51:08 -0700 (PDT)
X-Received: by 2002:a17:90a:5502:: with SMTP id b2mr11224768pji.189.1629323468707;
        Wed, 18 Aug 2021 14:51:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629323468; cv=none;
        d=google.com; s=arc-20160816;
        b=IMVh71za0477gxm67Kz6/bB6PZQWW87INE6xWoRy1s82PM0FemOsFqLvni6JJ8kZjn
         BS5vTgdAmdVf3PUup5HmN+KA3Z2Z0AMTlPTQzmp9xiWPjIVHr5xnuMyxcH3tId0GMekS
         CupJi43F8haUqEeyDz8LHb4QFuoirYWpQAoLRnkEhVwdYPI7wuHoCj/VyBDokG43QvV6
         CyAkPVQZiC04VZt5tN1AXNQ54/Zphn7+y3GzXZEEw9NwN2OMY8tUhQVVH0Flb0xdmRPd
         qhOpNK48kI8QPehbGV2IZNLIml2np1xpZGVkTT289X/+qaTzJQmGUWblVu46GI2CaZtl
         Td/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7vHz7lx5HT3o9dUfiJevKg/RCUhyC9oP+KAo7KKSobE=;
        b=lcUzol3lhfMnH3SkEAye/6obHNuNkvhhuXB730ak0vYmeR0BePOssv1w7dEciNEUBb
         yp2YfqPHxVls83Fd93SlUHvYf/LseVCjGAAuE18dTXt9M0f3DYOo2enV0s4wSmjvG9fh
         TCxckLXEVf1AP36suzFGww7Sa3n35pM8Xtf44UcVCuWn4rae6QlkF+omqH6YAJ91yVut
         m8hO/Q4HO3YIjvYuOQB/B0lIok1VvqO92m6+3umSWteEd+bipnNJVw8+PlFDsm+x72J2
         xAvqN+eBAlFbLIZgjf8dw/uJ265eUsDysUekP81YGYNA7xh6eBQ64MOyFS4/zUC1DbJV
         eFdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a0gIT1Pb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id e11si152640pgm.0.2021.08.18.14.51.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:51:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so9929570pjr.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:51:08 -0700 (PDT)
X-Received: by 2002:a17:902:b601:b029:12b:d9a:894f with SMTP id b1-20020a170902b601b029012b0d9a894fmr9050350pls.63.1629323468448;
        Wed, 18 Aug 2021 14:51:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b190sm808833pgc.91.2021.08.18.14.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:51:07 -0700 (PDT)
Date: Wed, 18 Aug 2021 14:51:06 -0700
From: Kees Cook <keescook@chromium.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Ayush Sawal <ayush.sawal@chelsio.com>,
	Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Kalle Valo <kvalo@codeaurora.org>, Jakub Kicinski <kuba@kernel.org>,
	Stanislaw Gruszka <stf_xl@wp.pl>,
	Luca Coelho <luciano.coelho@intel.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Johannes Berg <johannes.berg@intel.com>,
	Mordechay Goodstein <mordechay.goodstein@intel.com>,
	Lee Jones <lee.jones@linaro.org>,
	Wolfgang Grandegger <wg@grandegger.com>,
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
	linux-crypto@vger.kernel.org, ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-can@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 2/5] treewide: Replace open-coded flex arrays in unions
Message-ID: <202108181448.9C13CE9@keescook>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-3-keescook@chromium.org>
 <20210818095635.tm42ctkm6aydjr6g@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818095635.tm42ctkm6aydjr6g@pengutronix.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=a0gIT1Pb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 18, 2021 at 11:56:35AM +0200, Marc Kleine-Budde wrote:
> On 18.08.2021 01:11:15, Kees Cook wrote:
> > diff --git a/drivers/net/can/usb/etas_es58x/es581_4.h b/drivers/net/can/usb/etas_es58x/es581_4.h
> > index 4bc60a6df697..8657145dc2a9 100644
> > --- a/drivers/net/can/usb/etas_es58x/es581_4.h
> > +++ b/drivers/net/can/usb/etas_es58x/es581_4.h
> > @@ -192,7 +192,7 @@ struct es581_4_urb_cmd {
> >  		struct es581_4_rx_cmd_ret rx_cmd_ret;
> >  		__le64 timestamp;
> >  		u8 rx_cmd_ret_u8;
> > -		u8 raw_msg[0];
> > +		flex_array(u8 raw_msg);
> >  	} __packed;
> >  
> >  	__le16 reserved_for_crc16_do_not_use;
> > diff --git a/drivers/net/can/usb/etas_es58x/es58x_fd.h b/drivers/net/can/usb/etas_es58x/es58x_fd.h
> > index ee18a87e40c0..3053e0958132 100644
> > --- a/drivers/net/can/usb/etas_es58x/es58x_fd.h
> > +++ b/drivers/net/can/usb/etas_es58x/es58x_fd.h
> > @@ -228,7 +228,7 @@ struct es58x_fd_urb_cmd {
> >  		struct es58x_fd_tx_ack_msg tx_ack_msg;
> >  		__le64 timestamp;
> >  		__le32 rx_cmd_ret_le32;
> > -		u8 raw_msg[0];
> > +		flex_array(u8 raw_msg[]);
> >  	} __packed;
> 
> This doesn't look consistent, what's preferred?
> 
> u8 raw_msg[0];  -> flex_array(u8 raw_msg);
>  - or-
>                 -> flex_array(u8 raw_msg[]);

Eek, thanks for catching that. And this helps me realize that having
"flex_array" and "[]" is redundant, and the above typo would have been
caught. I will fix this for v2.

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108181448.9C13CE9%40keescook.
