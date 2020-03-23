Return-Path: <clang-built-linux+bncBCLI747UVAFRBZFZ4HZQKGQEYYAKE4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 428CE18EFF3
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 07:53:25 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id u17sf14106591ybi.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 23:53:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584946404; cv=pass;
        d=google.com; s=arc-20160816;
        b=ij//Vesk6l7sRc1m41wHfldKmHO0isRGWPDoQgI81FYLJiZ8oQq+wYpTqyWZ5GgTve
         NWeZYjFseZ9QVco/x6B9GX0xNXlObr2QI/ofu7pK/vjO++SqIMQfK215aZ7ZmO/9vDKd
         nZH/5l42hSIE8DA1Jca+seariCny/l0Ep0a4GaAEuHeZF5UlQJC77LVmeg9jix27Geo1
         ne+DCMJW/AT56ZA4WrV5Vf/NGKKx3+mH/uxom/ARb8fjNfafPacsNKZvWqDlWn4v/d5p
         LYvvzutU7faW1u9lx8bs3YBVElEGk6tFGjerw5Uk62+VBk8o8DmOBsfeUElZ7mgALdRb
         Lyag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gwy1h1xSvAVABDU+kIQSHX3loJLOM5ZF7D9ly0dsUqY=;
        b=qmkZaBnppXjkOhEcMZUVJPLRpdX9mTdgPR6e++sjjhRJ9BQTpC57yba+YAMPEe8r35
         Dk30uykvHevjnnoVzkoT4gP2+CPLtw7KIYRTNil4Sg3oaxWIFX4/f8KTUXyKKRq67yT3
         eWY7JHJsHUpcFVjGEu0iO33xhpqW81rcMQyVDKkosnWMxv7nITeO3Yt69JNcOW8jFjww
         uXeNItzuCxyKczHBgHP9PeaYMVe/2aj748QcJVcdM+lOMMLCw8DbqJAB+iBqgFDiJWEB
         +ysHXbG/rYT8qUnlx5gXCH/2CV7JoFFBLwxzWrDQoacubqIKDWbR+sTqPr4tLv9WwaDe
         a+uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=tuhwgUCA;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gwy1h1xSvAVABDU+kIQSHX3loJLOM5ZF7D9ly0dsUqY=;
        b=bRKehGP5f79JY3G0vzvWQlV8nbO1sGumKsDkAaAAyNZx19vixNIw8bKLSBw1jpm8cJ
         YaOMEXZGrpuau0swpJuicRwmxFWM3ToBrbmvppZCeJd8EBAcoA1F0bpqEooAJ+n9tmCx
         cY3hPlM+sr3O690KTmKgJe31W87/XBuknDTj5zcNzaxHeI4hV5JGKQ8jtIOs6ulka5Yl
         QegR+YMEI1e7oVXDFAekOzUa6Za4MvMqiP5R+9JuPxwQ+6ebIq01e7CqwTmmzt3J62zD
         IPOphGEokc74XKyMpkOe/KDSm1bIXLq3yl9sACrKg07oEExGcV00xSbByi48F+RZiNRW
         Tfug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gwy1h1xSvAVABDU+kIQSHX3loJLOM5ZF7D9ly0dsUqY=;
        b=dgiH2OXSWNqk3KkLELTL05eOaMk9E5+8rmu72A08wNJniaUWFxElk9+MeQ8yt+qDB+
         9p/Vy9YDhQMgzjKMgbt6Jq4ABliwED1ehiRg/CCbBClrQ1/1QnwJiPN6B2jSVMuVyqW0
         2EhuDUyjtCMl3F0BZQj6yuScqgUxRj/nJPtCR0wZS211a7NrC6JAvgcTp2ny1JH1hkdp
         deYWnU2UlEVLpUv/gBzw5bJrRwmD+iXvy9k+ajCA8nhevIczD6UyoTBrJbVnLIM6Jt2h
         dCmSD/Pc+yQkeNN1LXWSoqGQfYAQlY7Nn+84636L+jvo+GSZI1usrTRkGpQHjF+auCoq
         cSQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0NpB3i+rjfZJm4l3oDlfgy6oVVsaBvdwLdiP+C37pJjAUVq6++
	nPew6B1pz2+LGlSsWqhdFz0=
X-Google-Smtp-Source: ADFU+vuwAm4AL0HDWsKWJTn97aoRRmKO7vAheiNsakPNiU8lNGgd4eCSRRjC4Ome20yrPsDFDPC30A==
X-Received: by 2002:a25:b7d1:: with SMTP id u17mr33903252ybj.372.1584946404291;
        Sun, 22 Mar 2020 23:53:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls4790993ybf.5.gmail; Sun, 22 Mar
 2020 23:53:23 -0700 (PDT)
X-Received: by 2002:a25:b5c2:: with SMTP id d2mr31648393ybg.186.1584946403811;
        Sun, 22 Mar 2020 23:53:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584946403; cv=none;
        d=google.com; s=arc-20160816;
        b=mHZatJvvGmOmFvExwHLqY6Y0DlptxzA7T+HR29bj6/x+7V/l1k3+M3OqS94sdhpbEb
         pHJ7dWpYH/7Z1oJiZpHpgw8xsOrIT8fAixu2LPO1g5anXgwFb5ly0rZEZYyWMVQ18DZb
         MSjFW3EiZw0IPnRW7Mt4OBKw3SPBAV+ZabLtt5zFMX7lQt+w2BGuqjDU+mL7/9iMZMej
         rkS9ztfb87TOOZ2NHeCZ4SBiHXrQBXXALTAQkXYTS7dQY5yEA10itYZ7587s9pgBbs7j
         OedggwmlhEuFONqE5UXL/2aM7HmiSBZafCOY1Yf7EDkM8m2gSRNQZHfmiBkYCmbJ72tF
         A8CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=agLFug9i4GE5bY4bK4++vaVewOGK2fc/Kf94rjtlCMI=;
        b=QEXbjsb1xe2WMO0+oBC7kZU2Jsj+Bb67JzTUiFVjcDq+fiKgQ5W9wvB/YcOZ4tC5kc
         GOr2eGCCwB/gTp2xnLAbErw3V493Fym6gFB/gFmMDQ3tx75RiEYTaZ7l0oCKcJ5fXrvi
         L0cZtXvUoKksTOZ4KqUH7oB4Pw/T1kR/ZnyeoUlinlTVl7yWf3bf86SZbALTFMWfNsa4
         o1Nx5+4eEJ+jO83BwVDpR2OoCNdV74H/7iWgeBRruKdVpOP6VMsreJHh4qS13613LGfk
         dQs3xFuFazQIDRR8tTvPePdnTp7vUJ8G0JdvSlXYkvccSx9V+OWQ+ClR9fJoWsQzRcjh
         ROpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=tuhwgUCA;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id 207si702053ybe.5.2020.03.22.23.53.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 23:53:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 32eaf019
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 06:46:24 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id cb58ac98 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 06:46:24 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id p12so12110864ilm.7
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 23:53:21 -0700 (PDT)
X-Received: by 2002:a92:cece:: with SMTP id z14mr11415751ilq.38.1584946400678;
 Sun, 22 Mar 2020 23:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
 <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com> <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com>
In-Reply-To: <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 00:53:09 -0600
X-Gmail-Original-Message-ID: <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com>
Message-ID: <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=tuhwgUCA;       spf=pass
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

On Mon, Mar 23, 2020 at 12:36 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Jason,
>
> On Mon, Mar 23, 2020 at 1:28 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> >
> > Hi again,
> >
> > I've consolidated your patches and rebased mine on top, and
> > incorporated your useful binutils comments. The result lives here:
> >
> > https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support
> >
> > I can submit all of those to the list, if you want, or maybe you can
> > just pull them out of there, include them in your v2, and put them in
> > your tree for 5.7? However you want is fine with me.
>
>
> Your series does not work correctly.
>
> I will comment why later.

Bummer, okay. Looking forward to learning what's up. Also, if some
parts of it are useful (like the resorting and organizing of
arch/x86/crypto/Makefile), feel free to cannibalize it, keeping what's
useful and discarding what's not.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-%3DvKcHWqNhAw%40mail.gmail.com.
