Return-Path: <clang-built-linux+bncBAABBNV63T6QKGQE3KEDNTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 151C72B9FE2
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 02:43:19 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id a130sf4680797wmf.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 17:43:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605836598; cv=pass;
        d=google.com; s=arc-20160816;
        b=YrzuxmfZbyz+b8UARXa8oh9WIhkHlhlh+nJLpLhCBUbLSDvKFgnJzIsmyyMSR2fHpK
         KuMj6h4UsCYX/danEj4aQNVxJgZQRnS1RoPHO0SmP6jUdJgpQbeYez0ZTbAJOUUVdj+d
         TvRnCTTx/UuRIbv1zFIdW4OOR6xHJQzugJ4kKLqFoB4PtjGI/+ZVSZZN3XN+y3j86YUp
         qjhZpEGRQ3IjqT5y5jkbPcWhv+KRIWdPHy1V2n6LCfWlZ0Jsq20AamE4eOQNwzfcCksc
         zT5WhisgpJVkDsQEZAsegb8I65rf9O0+ACya7QIOkwk8EHzSVBm8mT+a3XqEJxCRW+MX
         wICg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=oKzgv1oJZ7DsXDqgfwP9cB2QspgORcZuWQG5Qmld+wg=;
        b=FCPBG4YTml4yE47sm6WaNleY6YoQb0dcd2C/cJ4E88RpbfoajyXqRLofVgIUPQ6XDJ
         XZygOJyZnRvOGrrWdyDgrasR1JC756RGQY8NxjdqcJG/ptAlE+E5ceE8hiOOEZrCnn0Z
         tbixlqnJz56Dtg676CNwzMSAzB5I1VAikcmxOaTnGFrdc9CDF0CAaABMuvrDK/jZPAfv
         /Mp8xgmAor4hukZ4cxO9iEIQM9Mfb/LrdJ24iZMoRWrjGi5SA+L8qNlcNPr6Xa81fld1
         f17dwMGTuzg+aIo9imdKggtH02JV7cBDo0zlMuQ/4vF/7lhofRw3/bvND+AAx4UpUpEb
         2/1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of marek.behun@nic.cz designates 217.31.204.67 as permitted sender) smtp.mailfrom=marek.behun@nic.cz;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nic.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oKzgv1oJZ7DsXDqgfwP9cB2QspgORcZuWQG5Qmld+wg=;
        b=eGKZfYzGRTiiWmTOmksP2dyJAWHmQ0D/nUOFU22pZrJAlMaGNWwXgE5GIR/HjsVCj2
         7SLRdGwR0UCW/anqdPp9ReILr85CkYp4FzHI83Wc0j73ZPsyX0cb9NCTPi+k7/KtIZ4N
         qmVKNl2I62W9wdgiIwJw9y47zUAsvWiEqqyqOnV/LujIzZpViCHzywB6sGnJEQAZC+ZZ
         9als2DAaVtwWT1MIWdVNla2R2pwCi36XL9+5uGMpqD/+rh4Ozr10C27ui+OdcZ3UiJyW
         5wlSJXWVfkWN86x216rhE8teRHahQK2iT256+nKzNooBeFa37XJ8zVo15mNC+3kt6/tw
         0ASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oKzgv1oJZ7DsXDqgfwP9cB2QspgORcZuWQG5Qmld+wg=;
        b=Lj6UoDzpyArn7ZAuiGRfP2XP+lRrO/NY8knRlMJuPj42MxM/Bswf6JhBtKmTFy+KYk
         wmNlFRks4TV0cxIeM4Tfw+PZ2sxTk7ElTYdHnYMgtdQUFWSh94qp2lReT7Sp04Yz2A1J
         1zcf18STwHvUGBqky0zNX1Z1DtOf8ZJigz7wmccwuYCG904fKENP77Y95cbUI3WZqT0M
         8eqCDh6+CLplupV4VIxb0oKkoqqv5n2qSHUeJwAAoX8oUNL8zaBMdt9iFJvvCw3HX2pc
         K/OE5TRKl6LYgyE+ptMdAsUoA7Qr5Gf/15PmQJ8Cw9T68slsMGu1myy5nmTy50G8+eP0
         94kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f8TiytF+FRG/gPNG5dWzEGL8hoiVMN1qPdnJHka7UAwsx5Uwr
	ZAkEkTxeZU+57PZwZSCEChw=
X-Google-Smtp-Source: ABdhPJwNkwv9NVdB31gbPv4Rirw+VCu0xBjaHXZQBQUk9UWiDZ5XRbK3zCF48SIRIJzV4KWw52KKYg==
X-Received: by 2002:adf:eb08:: with SMTP id s8mr13985876wrn.12.1605836598797;
        Thu, 19 Nov 2020 17:43:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e5c2:: with SMTP id a2ls1616504wrn.3.gmail; Thu, 19 Nov
 2020 17:43:18 -0800 (PST)
X-Received: by 2002:a5d:5146:: with SMTP id u6mr13896433wrt.66.1605836598187;
        Thu, 19 Nov 2020 17:43:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605836598; cv=none;
        d=google.com; s=arc-20160816;
        b=qhcv8Qz5S9yQWcrolwkNMw0LgJqhIQddmWNm7zW9s54ABsKzlQe5gu4Nmkk/Ct0zOF
         gmdZHaf8pLJDe2efPSklzcdldKVsW/rdzQ/k/ql69FnruxmSJ9KlVIX4x/xBUhWmVVbc
         l7YIDNF4OGN9mA/hKPMTgYmysjSbel70IbFjPMEg+MDMnGQRDzAMTlYYm7+bin+xPUC6
         a5BZOp/wyN+C9AZo+opT26GXmHWIL4f/C7g0DyfhjTP5DQvWVerF2lV1QBrowSgkjahi
         gOdQsfc8vsUZhOxClXrCWxnuXQ8nWjU2j+HjmlyU10+76+XN9dpRMCiNCm+5k7j8Q66e
         NOAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=0aS7XLmGRPDgS2saAezCl2orjOjqtqx+V2VuIdzZexs=;
        b=d/JVhQbk0776n0/ObHSlbpktGqyRWO7aSSK0I8f54C+KWAl0Cgzokfz29cyG+GkE+Z
         9FRa8LYKtYFUH9JCv0/XoOqjzT6Y8BigwzXgcka5X+nWtgxyJIyBp7+qp71Cil/2v+I4
         i9PBjRbZ3G+4NrvlqoKdax4HX5rKko4X7in4FMtlbR3HbV4+oYEaFrRMNry1RpXOi+4k
         xlss5AZFRsaWO31kB+ktnLnxKUipF/x+Kb8h0QAmxwOkwGDc50G9QutXMZsl7S7G7wIM
         2Ox8UMyNShW0TY7ecAx+uulY9C/jYgQ5dITVaTvfGz9DK9Iy6cg/h2oLoSQyd82gOLT4
         AWsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of marek.behun@nic.cz designates 217.31.204.67 as permitted sender) smtp.mailfrom=marek.behun@nic.cz;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nic.cz
Received: from mail.nic.cz (mail.nic.cz. [217.31.204.67])
        by gmr-mx.google.com with ESMTPS id w65si47632wmg.1.2020.11.19.17.43.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Nov 2020 17:43:18 -0800 (PST)
Received-SPF: pass (google.com: domain of marek.behun@nic.cz designates 217.31.204.67 as permitted sender) client-ip=217.31.204.67;
Received: from localhost (unknown [IPv6:2a0e:b107:ae1:0:3e97:eff:fe61:c680])
	by mail.nic.cz (Postfix) with ESMTPSA id C0B2C140A03;
	Fri, 20 Nov 2020 02:43:16 +0100 (CET)
Date: Fri, 20 Nov 2020 02:43:11 +0100
From: Marek Behun <marek.behun@nic.cz>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Pavana Sharma <pavana.sharma@digi.com>, lkp@intel.com,
 ashkan.boldaji@digi.com, clang-built-linux@googlegroups.com,
 davem@davemloft.net, f.fainelli@gmail.com, gregkh@linuxfoundation.org,
 kbuild-all@lists.01.org, kuba@kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 vivien.didelot@gmail.com
Subject: Re: [PATCH v10 4/4] net: dsa: mv88e6xxx: Add support for mv88e6393x
 family  of Marvell
Message-ID: <20201120024311.5021d6b7@nic.cz>
In-Reply-To: <20201120012906.GA1804098@lunn.ch>
References: <cover.1605830552.git.pavana.sharma@digi.com>
	<df58a3716ab900a0c2a4d727ddae52ef1310fcdc.1605830552.git.pavana.sharma@digi.com>
	<20201120012906.GA1804098@lunn.ch>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST shortcircuit=ham
	autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
X-Original-Sender: marek.behun@nic.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of marek.behun@nic.cz designates 217.31.204.67 as
 permitted sender) smtp.mailfrom=marek.behun@nic.cz;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=nic.cz
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

Hi Andrew,

On Fri, 20 Nov 2020 02:29:06 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

> > +	if (speed >= 2500 && port > 0 && port < 9)
> > +		return -EOPNOTSUPP;  
> 
> Maybe i'm missing something, but it looks like at this point you can
> call
> 
> 	return mv88e6xxx_port_set_speed_duplex(chip, port, speed, true, true, duplex);

He can't. That function does not support speed 5000. You can't simply
add it, because it clashes with register value for speed 2500 on
previous switches (Peridot, Topaz).

	Amethyst reg val	Peridot + Topaz reg val
2500	SPD_1000 | ALT_BIT	SPD_10000 | ALT_BIT
5000	SPD_10000 | ALT_BIT	not supported
10000	SPD_UNFORCED		SPD_UNFORCED

When I sent my proposal for Amethyst I somehow did it, and you
commented [1]:
> This is getting more and more complex. Maybe it is time to refactor it?
And I agree :)

Marek

[1] https://www.spinics.net/lists/netdev/msg678090.html

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120024311.5021d6b7%40nic.cz.
