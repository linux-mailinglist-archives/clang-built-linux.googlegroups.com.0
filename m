Return-Path: <clang-built-linux+bncBCLI747UVAFRBZPV4DZQKGQEKWXYMZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDF018EEE0
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 05:28:23 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id w195sf11558464qkb.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 21:28:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584937702; cv=pass;
        d=google.com; s=arc-20160816;
        b=jRsMP5QmXjbZI6gAVloh8hwF3h2uy5XPCxcw0XWCj3XHP0HeQEbltdiqlVvQwE19RI
         Hp0fN/YFYHBo+Q0sA/5hgtKwlkEafEpVNhh/CMLlRI797mohIPOO8VZo6HUfxKxtCPUI
         cEkh8dHdFysS0nOJisHG89glhOOQsO41yAw5tMvJiIVj4+1gKYKO0szVLAz65Md6A3aP
         TpejqDaTKsSGCpsJZS7wtVuyYzWax8XVujTZZOeN1lHnqSLcfwsp1QrS4Ay5AgKSVpPM
         o3OD+BvyfYIeuHCrAIUiY5ejSfDdHHfYqX9j/Lzvci2vQkI3pPg5cIomGdBbOcgY4Gtq
         Qz1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hbtP/jcUmD/TM6AqU9pEBDfG2lRPRPFCsEp+QZGGz2s=;
        b=qX4T/sxdOAtfx2iSeBB59Ss0nyDz2iW5o6sbi11WOFs5w7u8cov6XTuLlK/f2uPPL0
         YfY4zFl4KDx7udd82Cd7cQs9gcmFns7BgImVB/IbAAtCDgq/Dp97ARVFL0o5+wAwr1KN
         8C4I1cSnpyg1LY+18vMtX4naRTuMdJSXlv5c/dE3xb4rOVUKiwFYK4QTD6j3CSYuVXbv
         qyitK8h/2l3vw5qb5pKg51+YlBGnG6kF97Exbuq5NLggCTyeXOTPvjlILzK1q4oiEvE6
         GPV5+qCI8NxPOvF8zMMS73OvBnp0YtviLup/wswi0/v8IUfEtrcLoAHbbOWPUXZz0GiE
         BjYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=O5cmhuB3;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hbtP/jcUmD/TM6AqU9pEBDfG2lRPRPFCsEp+QZGGz2s=;
        b=TmoKHj3dthWbB/38rvF+IUbKk8DD7+8AdrDcE2U7zJZ8FD9wWM+f7VKAj4PI2IxoqO
         Ak0BRd+ZRUttPjOcSmsDVCyN1l3YXPCJWNlxzKUUh/UkUq9NnfhjTqNywT4huZiw+Dsz
         ZqCQW35CSzJaqhgZsvHcRpSpQC3QIopu7n04acNpngS93Myj6hm6Q8TRjckcEFJXwU0j
         H2kq3qGT6dCiyFvaA4WEvJdehIO93AtNL5Qjg0Wwwss1MxXBtB0wAQ2aRmGQ5eSKz+nK
         QeVtONpt1vI5qYA7taC5gElK1kZqTT8ZqreYRAWSMyMxnv7kOutFqvFVAUbqEto28jR1
         CVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hbtP/jcUmD/TM6AqU9pEBDfG2lRPRPFCsEp+QZGGz2s=;
        b=pmpkouZfKGDhgTE5rLb/0n+b4/rBzuio6aHWWKCFlxB/UwoBnflDSmr4eYEVMuJJhX
         pcJUfnNRjxE0nowCAunkv600z07xnEKFyXZNWL9V3Di70HnUxBlfhLslnOFVkh9cSyvu
         zXFaO/jLKsdfBfuVx2dB9vgYH9b8d1SMbdZ+HTxB7rfCjQS+rP79Ayn8hoDn2DCsjx2P
         iwwqn83mdc0gt2Tl9rx0jQqLvSGUEX4fZy5pwEiU4NXvJHFmffMLx8j7iKhuwu9gCXFZ
         8iHCj1Jyrsj7gbbLfFKoxLcWwigcQXS4MOS5zu0fuwlPd9+g6+DALe0st6uowt1isa0Q
         miaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2CCUcvy31/3aKmgUw77wLSyHKln5GFEheQMCmeuKEovYt/pxwh
	sndFebDbiptd4Nzzezc4HYc=
X-Google-Smtp-Source: ADFU+vuFzfFy2Kii55kvBFgdZ3tb/79kLca44nFagogQ7n/57aPdy2KZ+UhtQJZk3ttGpjT7wIWUQA==
X-Received: by 2002:ad4:44b3:: with SMTP id n19mr19268398qvt.65.1584937702044;
        Sun, 22 Mar 2020 21:28:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e41:: with SMTP id h62ls6941293qke.8.gmail; Sun, 22 Mar
 2020 21:28:21 -0700 (PDT)
X-Received: by 2002:ae9:edc4:: with SMTP id c187mr19721881qkg.369.1584937701693;
        Sun, 22 Mar 2020 21:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584937701; cv=none;
        d=google.com; s=arc-20160816;
        b=CNW0XJpTnwTL77xIz1gwLFztwplrUYDDH8MD0C7h4JrMjtr1gFsltoUZRu7BZb7VyM
         9wPPtYvdnS9C0GsZTG+p19LKR/L8xV04CIFFvVFXFg6JciQwWEB2kU8VcXj9NYruJVs1
         YLB5ASEoAaJC4+EmSfhip/Ha22OEuFj8vEpzi5ZvCWRGUIaiHEJ0Gda+pdTnQa1qhU6B
         SobF4I/bbR01EmtrkUIc13l4h9dx50yLaVArmRpdB6t4BN7bUsozOtnZloyF6v+1hT8G
         zOUGHuUz4XnYx3Un+9GJYz7p6zYBwhpMEBl8bxuXG8G4nsTcUCsxzvYTxAfQzoYgrHL8
         P5nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eKFh0ANZoB6nifEUJpTrzXH4I2yJZbeTeGLS4kLyh5I=;
        b=as8piyB9undbrfRC09KsxLh2DE6spu47Yd302KBLgtybIdZRp92PoL1JGnzaeTjMom
         Futw0tP8lQ1n7diQqY+iwvDBLurAtHsjJxgeDyOG4QKzbFOzJjBFL6DaFk/sGelIkHbV
         t5rb9Bnss1134llQOQI9U6ZQvlAiiE8dg+rZqz8fCZ7PO7PixcuSaJiQk+yO6otGbIQN
         U1yZ5A3GXEjsZDKgisgp+2JBIDoITPemaEN/O99EBlPE7qk9aHB6+QYpjmLsWxCb1Jsp
         o/cDz4Ky0ZOjE1hhDHtpppMZJ7x4XzYsqv7YjmlCN7b9cqb92lLMPjKfqoDtN7cJ5lc1
         TgZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=O5cmhuB3;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id t24si948156qtt.1.2020.03.22.21.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 21:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 6519fb50
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 04:21:22 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 85aba7e0 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 04:21:21 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id e20so12380910ios.12
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 21:28:18 -0700 (PDT)
X-Received: by 2002:a02:cbd0:: with SMTP id u16mr17792844jaq.36.1584937696838;
 Sun, 22 Mar 2020 21:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
In-Reply-To: <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Sun, 22 Mar 2020 22:28:06 -0600
X-Gmail-Original-Message-ID: <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
Message-ID: <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux@googlegroups.com, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=O5cmhuB3;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

Hi again,

I've consolidated your patches and rebased mine on top, and
incorporated your useful binutils comments. The result lives here:

https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support

I can submit all of those to the list, if you want, or maybe you can
just pull them out of there, include them in your v2, and put them in
your tree for 5.7? However you want is fine with me.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw%40mail.gmail.com.
