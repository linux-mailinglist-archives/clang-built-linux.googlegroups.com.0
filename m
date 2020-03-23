Return-Path: <clang-built-linux+bncBCLI747UVAFRB6HH4TZQKGQE56HXCUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F611900EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 23:11:05 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id p8sf17307138ybk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 15:11:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585001464; cv=pass;
        d=google.com; s=arc-20160816;
        b=TZhbU1zP450VS9nUqgIJwqiSU5B+rZaLcQNq7jX/c+TtX99bV9q6Sa01mpI6fxUQcG
         95EIe4Ci+O+9kpvCwFMnlfsyvCxQvq2W1JETZ3kg18K9yfD9N6fZPUYL897OmWZ1d9HY
         tr0CogHKo0KRdczvoJyD65GP/y1kR05GVWXqxc6+LQLJXTK3UMPufbcp1ZDhUqKnrihw
         sOm+Vi1OUrdH+wTqBJAXWFTc3zGtb8I4bT/5lVmK5COkLRONjLOCgnEJCW79TICsKFNn
         WZWXVOpL+am9uz+xuA0SdRTi+A/7BMtUASWe2iKzGWHP0SK58MYdYipoBWElfsfChG3z
         6sBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0CI5f0Rviaq7inZ8/eC5UVEKPIHu9QrGNwtFAJ+kGbk=;
        b=VqzhDCvAQxHvOjN78P9aC+BlX9RYEzKz9Rsi5TC5p8UIsikzH0lH/p8smplvNcVMYY
         Dm16ZdUt7F1eVq7E9XQHTkEOVAO7F+FvOBpEQuMgrm230cSL82XW2T4NQUj2ZDqUqXm6
         e51BHrruvsM/KlBHYy+Eght2zNIJqPHaZZUa08FcZ+xG0SDpbk9oKZEBFt/JyNHLzryR
         K5IqJif8R+xqXBujvc6zQKqOLKLoYPlSHt726fGWC/kXWhaKFe7JwTRtHSNLqQMA1DYS
         imibAaJ5U3oJTxVONre+LO7KRKD1cgjTyMws5ftfLslyDToGHM0zxwcjs63Z6K/IBUf6
         l0Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=Bn4ZMdB1;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0CI5f0Rviaq7inZ8/eC5UVEKPIHu9QrGNwtFAJ+kGbk=;
        b=o/KZ3DrCVGQ7UmHChRdKs0t35AMN1ATiX5bgRZtk9wo1oNSTsvkevU5yI73QqlL0vb
         1CqtNZPNYTXDW4ajXN3eKDGvgOinHSTtUkUHOt3Sy/Omv+BY7u8d//HN4lP3L+cUYOgw
         knbeEHeF6cSCJzakTNut47U49Z1vxFZoeW6iN6jL7idWG3uAShOgBryo+x3GWkpHEhX1
         q8Y/lpz7gWSRy9uysi0yYFyPvLzhDAwwUVtIyRtULMmZrJ8IYJEkAirLYb0voaOIyB2N
         JCg/LtjfUNwKtsBcV0159e9dfAYtUTL/zZmTyLtogilC5BHzNB6nnv4XBIbxQLQNrDc6
         9Aag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0CI5f0Rviaq7inZ8/eC5UVEKPIHu9QrGNwtFAJ+kGbk=;
        b=XFd7R7k14mWsednfsuXGXQFAUpp4IcGUbQu8Vue6B42wwMicNmPp0XLzRFvd4S8076
         64YabLqjr8CBYcclgaOnaIX8xePoCIlDbJhzh/qNTeQWsb41lKH1ZhDblLK9iD9GJIkA
         r3kGOjKHY95F0i2DUpNbHuXg4lcn9Qs1LGlgx7ZrVY8AS0p551iIvsl7hspOnZDy/Vfp
         /x/TFJpwlZnCDTFG4/mmp/BHR/YMg8rErHsdhRi72Cwg+JzJYu7DsyyMUPHBAzWuLEGr
         9xHG3zGTEmzBiba4Vgg+2q336UIRVFKYO7489dfbe8GO+Ux9AzxEQZAHJEARAYz9nqAI
         KUCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2SMlMNMNkp2KOKuxXp6xHrIP+MvKZID7tos91vdp4T80K0HXEJ
	VnVY3ZcsTR3urFSmMzu4+K4=
X-Google-Smtp-Source: ADFU+vshJ+D6QPk9dh6cko44Fq6kv2Id7iL6R05vjjrEA+bwbSVvTtTZLS+5m3QNUftfWYcTCfddpw==
X-Received: by 2002:a5b:60d:: with SMTP id d13mr37766826ybq.446.1585001464581;
        Mon, 23 Mar 2020 15:11:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ed04:: with SMTP id k4ls2620293ybh.4.gmail; Mon, 23 Mar
 2020 15:11:04 -0700 (PDT)
X-Received: by 2002:a25:2a85:: with SMTP id q127mr28402586ybq.399.1585001464156;
        Mon, 23 Mar 2020 15:11:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585001464; cv=none;
        d=google.com; s=arc-20160816;
        b=QlthaoSdOcZf+hnxFA+v7lV9AtS19tpvZa7YUzHhZwyQgG0jGCfZhUieivSO2b759Z
         N+rVlIyzVTH8je05jWsrYXy7bPWDdHZokcZBeBhkmUwH2SRLk8iSZ50bX1OXtuEEer5F
         1tgqp803z29MtMu05DyHkzNDmEtWpWWcigndzDowQv1+hGoujAzrPIZnIYcREXR6m3wF
         plvjt1NnNRksKoOgoKCofJN3jv+PT0kntij5qxfdA08iXXFZ1TPGEeOVLpS9hPSjEnGS
         o7Jmn55K0cVXKZAzH+jXIxu9wFScqMPS848yz0uIudybbUny/MkXoIQ9UrmM9sZzbVfc
         xzBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0iDoLcb0TJlysYQo/R7FmBVNg8P3MwazEd7nFERtHLk=;
        b=q44z6q66Dsyvwa9fWbfsfREkx991QIeUP73CY+67davVetYQBVbjnQ/jXAo0riNkla
         Idzv+W0BqWs0dl2VwUlfRc1+qc1RibmD1kphdN4cJ/rDaKVMzfd3/lU5G2NOua03KLvd
         9ELaH06XWbCLmcwKXCFr4ozj2X7ZMf8z1zgpPAS5t6/zJkaVuC4RrwvbzMQ/wYxOl9ip
         EpBSMzSy7OaN8DenNv01uwBWSn9R8g7jkx3b8/I9ZYXUNHzjHzoLH11cLEtbE9MTndbV
         zWERvmQsIJLIScLYAlhN1QbPp43jRHOGfC9e4Nx8kmPBdKUJLypDssGa33lG1nXweopL
         +agg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=Bn4ZMdB1;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id l1si887037ybt.2.2020.03.23.15.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 15:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 0e5c31c9
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 22:03:59 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 527d9dff (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 22:03:59 +0000 (UTC)
Received: by mail-il1-f182.google.com with SMTP id j69so14901135ila.11
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 15:11:01 -0700 (PDT)
X-Received: by 2002:a92:cd4e:: with SMTP id v14mr24213070ilq.231.1585001460661;
 Mon, 23 Mar 2020 15:11:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
 <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
 <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com>
 <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com> <CAK7LNAQgKgKgOpQ2bgHrB5h=LTffs2khbYRrBhrxFM44gS88KQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQgKgKgOpQ2bgHrB5h=LTffs2khbYRrBhrxFM44gS88KQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 16:10:49 -0600
X-Gmail-Original-Message-ID: <CAHmME9rgNB5L_x9rRcW4RDHJnPuAZMUtJ+7HNK3302nwb9Y0OQ@mail.gmail.com>
Message-ID: <CAHmME9rgNB5L_x9rRcW4RDHJnPuAZMUtJ+7HNK3302nwb9Y0OQ@mail.gmail.com>
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
 header.i=@zx2c4.com header.s=mail header.b=Bn4ZMdB1;       spf=pass
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

On Mon, Mar 23, 2020 at 4:04 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Jason,
>
> On Mon, Mar 23, 2020 at 3:53 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> >
> > On Mon, Mar 23, 2020 at 12:36 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Hi Jason,
> > >
> > > On Mon, Mar 23, 2020 at 1:28 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> > > >
> > > > Hi again,
> > > >
> > > > I've consolidated your patches and rebased mine on top, and
> > > > incorporated your useful binutils comments. The result lives here:
> > > >
> > > > https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support
> > > >
> > > > I can submit all of those to the list, if you want, or maybe you can
> > > > just pull them out of there, include them in your v2, and put them in
> > > > your tree for 5.7? However you want is fine with me.
> > >
> > >
> > > Your series does not work correctly.
> > >
> > > I will comment why later.
> >
> > Bummer, okay. Looking forward to learning what's up. Also, if some
> > parts of it are useful (like the resorting and organizing of
> > arch/x86/crypto/Makefile), feel free to cannibalize it, keeping what's
> > useful and discarding what's not.
> >
>
>
> The answer is mostly in my previous reply to Linus:
> https://lkml.org/lkml/2020/3/13/27
>
>
> I think this problem would happen
> for CONFIG_AS_CFI and CONFIG_AS_ADX
> since the register in instruction code
> is machine-bit dependent.
>
> The former is OK wince we are planning to
> remove it.
>
> We need to handle -m64 for the latter.
> Otherwise, a problem like commit
> 3a7c733165a4799fa1 would happen.
>
>
> So, I think we should merge this
> https://lore.kernel.org/patchwork/patch/1214332/
> then, fix-up CONFIG_AS_ADX on top of it.
>
> (Or, if we do not need to rush,
> we can delete CONFIG_AS_ADX entirely after
> we bump the binutils version to 2.23)

Oh, gotcha. The easiest thing to do for that case would actually be
passing 32-bit registers to adox, which are valid. I'll fix that up in
my tree.

And then indeed it looks like the binutils bump is coming anyway for 5.7.

Your flags patch looks fine and potentially useful for other things
down the line though. I suppose you had in mind something like:

def_bool $(as-instr,...,-m64) if 64BIT
def_bool $(as-instr,...,-m32) if !64BIT

Anyway, I'll fix up the ADX code to be biarch like the AVX test code.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9rgNB5L_x9rRcW4RDHJnPuAZMUtJ%2B7HNK3302nwb9Y0OQ%40mail.gmail.com.
