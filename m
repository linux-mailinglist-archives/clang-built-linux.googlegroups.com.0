Return-Path: <clang-built-linux+bncBAABBC5S4HZQKGQEBKMVWFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AFC18EFDE
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 07:37:00 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id w124sf11748280qkd.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 23:37:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584945419; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQ364Z3K/JpuEFlS7h/ONXJyg4k9JHh0BUxmsw+TXJGaL/bdVh9kv31PxLx2QGv/x/
         oTSKybweY+t4AOC/mB/oN+BdJlRwJkOWV0wGxPVqJYBvgG9AYAQJfKbL6Dgcuv0eku54
         mfzqJwLYxAPQTdPmp/kKFqMwESras77nPZqKLoSSgagjUSnCVs6hhJ2VUlbi2inK0o8a
         stmzqIUbgFnxn1BuWsOsqqdF9pOaUWhkZRKXas4caLTCEm17DNbURw8CwWQPHI8lkGdP
         FVuoq8Nvw+P43wke8aA+RMWa+fqe6WSLU0xs9W63q4lb9Bx3MCtyTpfQKndUT2YGrU3A
         hWJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=W1dqoxVDzZg0+2WrYy8/ADN1s4P/go0ur/ZuYMv7SVU=;
        b=svpW2l0/7g5wpnYUW5AONF7zgpEu/SEGtnGP4gHBhu1A0ceIYx0eu3CI0GeGLgrjFA
         dwL4CFr2k4M+o1a8681ePoEAHf/toJJlCKeyPCrehvat3HrmglNeCUKtiYRVhE+qLH52
         e83UV38LdqjkUg9j0sPbsoZKSp+DGYpUD4aZELEfce7rFwDLYPoGCZAqS+t3FPG0y4s5
         +8esl/lyRpaP6D9qw7sCuDTojXwEt8ZSpxT/bPF3JxHySgcDUtOXWXlAGEo0jZKJvgsr
         t1rI0tP5Fs792dgSq151RKxlgwqe5C/WvBRwdSco1XIQfAD2kvmcWkjoPFQdiF+NBGFY
         aXPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wKnDwDhJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W1dqoxVDzZg0+2WrYy8/ADN1s4P/go0ur/ZuYMv7SVU=;
        b=Ki/25yVkMIUQUdX2BHEwuboRKLZsV4mECtZ9/9EIUuBqikFP5NzcaTtpoemcLtzr2D
         tin2FzCXh7xu27KgO3q4gU8sB8dzaX4ftdnEJjOS1RtSUSnmtRnyePdDmY35mq+iFoN8
         MrgAYaS7GZRG5XnYKp9POC43nRd/49uibO81bGS+NbM58I/wAg62ejHbdfC2sWKhLmpu
         za4c28Vix2vony4k4MqH7M9CbM1HdQSPraWAY7h562/a4Q0QL4KmEDoLS9pTf0qFo8un
         mRGZroEfug8qbPCRLqBlGQUpgcoMdQtmPLT8amhAPjaMS0eauz6GB0AGaezN7AOXEnZl
         y82g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W1dqoxVDzZg0+2WrYy8/ADN1s4P/go0ur/ZuYMv7SVU=;
        b=Xu1xGtNUO6Hp2fg4LaWcvo7Ntu0evh26PwchDUb0V8/yxDoI6CpTjA3uwYzfdLBciR
         wrTIkJQB+IxZyKLrBCeBomXOgOPPJXd+KgP2u2QWHUSGYN6L1Q4NJ/zJkmflLwt2E69B
         84qquQaroMFJx0zik7b5sIK+6jRr1Y8xASVDJC4Oy8W9SFO8JYG0VVwQe87G5QEASNgc
         TxpT4iB0mLCYGJDSLCaMHTjCOs1scZhfneUEz1UTlXExx0dGHV1x56s4h/mz9zZjCnqr
         K2b4FFzgBeN4UAGJaNJRbp2hABCjDukhxcrTYbAjYse3GMH2LqQvyMtcPkUFvWphcmnb
         3dhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0A6Jw45k5/21Ej8U3qj0GHSdsC8ItTMLvK7Th0zuoiiM1c+TxK
	ewV9FGWwPDFmPJr2m0wkQf4=
X-Google-Smtp-Source: ADFU+vsMIzxo+nheFLhOW7K5l5+WpGSM32bYSrSAZdO0LpiddH0qT7HCoMBtxG4HuBFy2C4ki9GyGQ==
X-Received: by 2002:ac8:6d01:: with SMTP id o1mr20325747qtt.246.1584945419279;
        Sun, 22 Mar 2020 23:36:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:11ab:: with SMTP id u11ls654307qvv.1.gmail; Sun, 22
 Mar 2020 23:36:58 -0700 (PDT)
X-Received: by 2002:ad4:46d4:: with SMTP id g20mr19286764qvw.179.1584945418877;
        Sun, 22 Mar 2020 23:36:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584945418; cv=none;
        d=google.com; s=arc-20160816;
        b=W9/f1ExRoGqFzs8iH+PtH21vlGeS7qMyrHIl2SrhC77uvsTNpvxixykUqeGLOwH2nH
         TsXt//lST8xUCm2h9jAdRh+uPfP816VwP+LaL3eBl05Ovxc4m7sx6mN75Md5X7rn4C8M
         vCzwNCgWkaE65F/svyIABLRuy3QzYpy0mHYFVaovYPm4YDCzFT2GCqrrN1HCwJRwrW+3
         2b8lle2Pfz81ssMY1pOBJK0ZoncPa5y5pkl7ijgV1hhCQZ09AMHKaCWkNR3dcNM+Sdro
         /kLa6oq0tqK1coM0P8UowfTUiP7W4UVJRook1DanOw1U24XGhBoF3oA/17VVvsrbpVaM
         wwCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=shlaUHJ6YdG7mbEpHkN6/tISt8RC9LOOVikM/qp/dxc=;
        b=n9fSawXyPr2Y9PzhXhtk0XpiLQKB+lLa5EN5+csbztAZ8Br+T17QPu0mAzGa+gn8/v
         QnCIAZsCaBbj5VO7UgBli4CIeweisJ9mtX/SLsituDZ82FGjX2YdZ12wrSpAjwu41qVu
         AHeu2p1TVOK3JfPL/rtwkaRMYUrA1Dii7BlgRDi0AzQ7a5WECWrmyEo8OFo08AbP6UbD
         B/Pt8oCUSL1plvq4Qo10Efl8dBmg1mXbh/nESm8TphAFd62Qgrg77v2mzUxRRTBIMIm6
         gt3tUTmJhWoyeipfEfqtEKOrws7H9zQcBqfr4GCWzFm/0qkWBey6P5gVIlMhNjExrV+X
         3tWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wKnDwDhJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id c194si752207qkb.0.2020.03.22.23.36.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 23:36:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 02N6aLki011436
	for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 15:36:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 02N6aLki011436
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id z125so8001997vsb.13
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 23:36:22 -0700 (PDT)
X-Received: by 2002:a67:2d55:: with SMTP id t82mr14012597vst.215.1584945381312;
 Sun, 22 Mar 2020 23:36:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
 <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
In-Reply-To: <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 23 Mar 2020 15:35:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com>
Message-ID: <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>,
        Allison Randal <allison@lohutok.net>, Armijn Hemel <armijn@tjaldur.nl>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Song Liu <songliubraving@fb.com>,
        Zhengyuan Liu <liuzhengyuan@kylinos.cn>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=wKnDwDhJ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Jason,

On Mon, Mar 23, 2020 at 1:28 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hi again,
>
> I've consolidated your patches and rebased mine on top, and
> incorporated your useful binutils comments. The result lives here:
>
> https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support
>
> I can submit all of those to the list, if you want, or maybe you can
> just pull them out of there, include them in your v2, and put them in
> your tree for 5.7? However you want is fine with me.


Your series does not work correctly.

I will comment why later.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc%2Bp5rxpkO1Zv8QVfqhfvr2w%40mail.gmail.com.
