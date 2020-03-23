Return-Path: <clang-built-linux+bncBCLI747UVAFRBJXM4DZQKGQE3FCSFCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F6018EECB
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 05:08:07 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id e140sf5466020ybb.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 21:08:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584936486; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vw/g4C4U50W7cNrygLCWkDnfq9fZt0jQP/7XchfQR7Bud3Nk/hLteBottEmkv9M3I5
         WIVZ/GX/4QUrGiznIlC/h1PMjrYhg6Fsvy13PhNZ1ZFSa70eH92fUYtUTs19GDo3YE7A
         9zwprigCH4Sfe3C6L5BEzodHOpSGnUf8o8aA90OurzeaSrrWmv+jFERVJZ2k3pyi8EQ8
         AcZ22Tbk5TEx7vC6no/32aUkaDtMKpsfo7U64kbWC+2MuVUUPVoFkcOJrD3nA9mDXBI8
         r/F/nJoeBBfcuCcELPiYRzLJOZuG/wnIG3/D0GUncpYlEeC+4d7GFtt2RSNZvXvsIVaE
         O66Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uLI98c9eZN+XoUdv7lStrNa1BVtbSeiH7cuPkVo4f1w=;
        b=Yoi+IUSjF/c2w/CICotndvcEzPAN/0yJjjSbQv0mR2mCRMOdJ4j3FqaAFbrVeaimVV
         kHeFN9VkY/DbL6NpOhbj1rCT9+ZI43p5oybSIvkMaX/dnDF/mxkHQaNKM3wWEWDeQPxj
         uyasX34w2uT6PPDhsr9uyv0z49Vuwe3erUv6ckt2rv2TUTP/d9h4Sv/RmV5qS/H8Fysh
         nspr+l9WVjKdZVWOSebtRWZIQG5dxL5HrlhVcxHGxGytNZ8mBS/yqoGsh/1zmV4EHdXN
         v1/drFRFkjVYqGim8frx82duz8yAhT839OAHmjb/Rnxpz6aV0nHH0uB0NqqM1NAUMXMH
         +2/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=MnsNQtMa;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uLI98c9eZN+XoUdv7lStrNa1BVtbSeiH7cuPkVo4f1w=;
        b=DpZDXkYF5bkLVemDMPlBTKmdGzkaxaVaaWL+7heDBbAIVohCw4oPhkcULDzEIr8I+h
         mLPlyknem/zFVBAk3DWMhqbZZ1CRQJHpfSGCFIf7BzMsAeIbMxyyGMOVDYQcooGqrKHT
         SgMpuow3AY1/28NX/Dy4w2o4ocBDq/VEW+HV+H42CQ2HlS6wuj2jgItfrKEyB9EuXPVl
         1zH6DRq3zq2p2HccYb/2Cl2AKu4Zyf/O9c59wHIDKiziW3o3RLkjNn4mERzB0IAkXhl3
         ArNkQJv6a7wroKP6NSXPutztctGjBwsmlMrWrRT2tsiXFjrMf9zuVQA0qk4OPhlp24Xv
         KURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uLI98c9eZN+XoUdv7lStrNa1BVtbSeiH7cuPkVo4f1w=;
        b=UnarwWrpvRNrIjCTYlFQ48dAjnt4sWhZgDAlM3wh2PBt5iPCxkV1QoGZTs9vM+T8rd
         68v6Qa6Lam8kb424DHO1pOxWtneXCEDqz3zECaHK8nZEx0H/SFlk2k0s6m5nAB211L+U
         nDo6SOKcKDufOt3w9QPQmX7wdtfrSIg75kSud1usJaMphhu+rF+/7VBlxNWtYGWPpk3Z
         NW4jlApo4yeICfVaBOUHT3LNYxVmYDrOxU4L9gUBRL95bq0gjWL2XXWaLHz140Tp8JJO
         UIeYLCuEVSy9xEcoz9sCZ0jWioV4Zt6MlCmLhIbKpaqckXQiRHmI92sTR1/3gUYpFjFj
         J1pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3SIFzKouoP/+1bsrDKwJHSGA5j1o4NJQKZ8EgzFuSDhwS1mxLW
	EJkr8RpHdjqBKxshvoZYPrw=
X-Google-Smtp-Source: ADFU+vv5KYc20/Jm+0XO+1DNDDiLJCKGQb+2zRanEbooFM3e2zdfrVpftLLwa9m0jtTatVYmUaGsGQ==
X-Received: by 2002:a25:7102:: with SMTP id m2mr30219594ybc.134.1584936486487;
        Sun, 22 Mar 2020 21:08:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:84d2:: with SMTP id x18ls4670397ybm.7.gmail; Sun, 22 Mar
 2020 21:08:06 -0700 (PDT)
X-Received: by 2002:a25:785:: with SMTP id 127mr31950728ybh.405.1584936486092;
        Sun, 22 Mar 2020 21:08:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584936486; cv=none;
        d=google.com; s=arc-20160816;
        b=iOpTRtsQMqY2nDZ/igzFD+fkQmQ6eVAOCl0MeDE8atKehMn5SW+1oNCtmIPTwl0aMC
         YRMPyIElIVL1IRGoVunCrKn0NFfP+CynJjtvmhXGylNCnzaMrLRKBvjhVBzRF9y7GpxP
         HSRcPUJAeuo24VRuCHHuDJhI7ILVY2OY/q0sdQ76Uov+DscnBVwtOMSuiAS3l+mv7Sib
         Gr1hosoa/l1BC2lNWafVMRbh77CKsgw2Y3EQJoN2p+fnt4Ueaa23kDPBYvxWsRZGRZXg
         MBu0konTmbgvtl7BMsqpXpPt3H2cXefOFLivmqfu3yJthULrKCIPksk7nqO4H7vGJ+Ds
         dzQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OfkKJY0or9WWQVvtibu/0UX0ssFCsuaXHfpSK+zlzdw=;
        b=vnkUX98QbYF/SWjJo8GfRNVgg+WQ+5diaMh4OkbxOavxjJ5f/74FWjnhbXo8uCdMiC
         jN3/hYkj64edfqiAinBRXHG7FJNhJGensCXHYDFnGJPZVnG5hdkXIY5fyy0zhZUf8FwI
         cUi/0XWqnY7hYE0XBQxMkkTrN6i1zMS5/KUY8UifsmVZxe4tF/NgF2QrLYx6/PQfrUM9
         NTH4qaO322T0BXYZw1qVkXTp/0jPQ7yJg4BPWpKL57U54hMv+KdgmqMK6b5QV38g8fRO
         x9x03mY4IiS5PZNAwHEuVJD8e34LfJ5dBRuqLnOmSug5drMhFSk3pU00bZDU3zUsLunJ
         LLFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=MnsNQtMa;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id l1si716598ybt.2.2020.03.22.21.08.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 21:08:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id f5f1dba6
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 04:01:07 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 93512126 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 04:01:06 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id h131so12798203iof.1
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 21:08:02 -0700 (PDT)
X-Received: by 2002:a05:6602:b:: with SMTP id b11mr15291684ioa.79.1584936481619;
 Sun, 22 Mar 2020 21:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org>
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Sun, 22 Mar 2020 22:07:50 -0600
X-Gmail-Original-Message-ID: <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
Message-ID: <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
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
 header.i=@zx2c4.com header.s=mail header.b=MnsNQtMa;       spf=pass
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

Hey Masahrio,

Thanks for this series. I'll rebase my recent RFC on top of these
changes, which makes the work I was doing slightly easier, as there
are now fewer flags to deal with.

Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9p%3DECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ%40mail.gmail.com.
