Return-Path: <clang-built-linux+bncBD63HSEZTUIBBJND4H6QKGQE6O7NEQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BE32BBA24
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 00:30:46 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id n21sf8139491pfu.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 15:30:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605915045; cv=pass;
        d=google.com; s=arc-20160816;
        b=ViqQp3lyMWTu8EXUvQf8y6tbqaYhawmLcjwANbMn+md6o4PwJmctdRGqvB4nMG2uVc
         jkKyKS6nOZhEmnYFj94/T74ZikVp0qjXABDhYaWedXHqnInCdYDMJpTLdbP3pdF81b8M
         uqMWRqMnDFG70+PTT8PVcaDbFKVwjzFGtDkjuflulOKruUbeNrO3RfXco4/ghjHKTiTq
         dFXloKXTGfpV8ftl5a5AZSyowAuGFzDhFCtVwsO/UcNMG2EH6Nk03ZvrRmVdSLp58mLm
         axMqaXgAwk0AH1IVvC6mgvHPmz71Cle2iiV15v52WD0tlZUKXioKV/54OPVKCJmILxKN
         xjPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=bylqCmoxVD4d3kKXZp/je0o1v25OPShQuTcV6Qwlpcw=;
        b=Qd8mBJDucmyyd7H8MnsPoMIyMIKdxQ03NjBZNhoVLjJAv5dllk12ZMjoEule+MjaSN
         70d97JE4Ks3beJMiIigN3fmD9hevBK7D+IV4k1l4IkvA+1TBx4Giqbrm8ahWe8YhApBf
         AxKf2zesNE6yjO4zO4mG4SmsixEeY+9m1EPXY3I1dc1EcuLBADEpvNKm16JudWpBKw7m
         h61aAO6r1HxVFTWcb7bLlxunEH2eAW8WcxabaUM2iTHeO8c6N6KgSvITYiH8azZ0pHU0
         f2CVHZbInHlBmULp9uMjNr5gtyEnZI7NriPbz8jia+6/PmeDtVXYXK6VOMHqkF+jXlPx
         1zzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RZzdH79P;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bylqCmoxVD4d3kKXZp/je0o1v25OPShQuTcV6Qwlpcw=;
        b=ISFfwYoA+SkjdJ+7yyAvu7nT1TYQ/Df0bGv3Yawsdbpm0ZW0QrVUwzpa9K0UrO76KG
         ZHD5K7l2zWD7grTpQvjCBeNMEwXlUGgiHq7UXpC4xsYehFn/tftuCkLNTo/IpO76sxUV
         ZR6vpB5gDZdjrKmIF7y829TRmhOGdW9uhuQBAVj9YHb7wDIUPWlHMPNgF8EUOalxuHpD
         vZUOw1sgS2TBStmltv3NcAi+Fzg+zFtRJm/z3jXDe6D5N1gUVqGzg4W56gqZ3a0sM6Y2
         PiWVKEc57bhHu+l4tyCh8SVXdTb3o/RJ1yL88zvNkagdhUjr9QWqwRpof6V6h6LNRJso
         qD0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bylqCmoxVD4d3kKXZp/je0o1v25OPShQuTcV6Qwlpcw=;
        b=YaWH9PVw33cBMWUgIAnBYt1P90NNrcJIths0Amyb7WsAhaRiK9rgqAIF4hgmMfWhrW
         JeTgQYmP1T81mkvim5Ki7gMlR9dD1CKXWptM2rbmu4ncG2o8q4jljZFO2YZwAEOjxAnJ
         8S+vy3kg085yOlAovRspj+4g3CjgWG9HuTkrrMGW0b6jVNhZlBs918HJpEq41JbTUiDj
         vXkPQdNAaqg5sIk75c7Gf3rqIkdL3Fyw/OgwzzZ/Br3f5t3/czfC/JustVwOZoe8zyi+
         L/oG1E6sQZvr9HUPaTKhyCGEBLcQnvMlcQ7oub0q3Omodgyg9qa43QHb5NrE6pultQw8
         iMtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ItdWeBZ1L5Gm4a9uJoB4GDDY9lpZhk4KHXpSOJai134wAuHI7
	DL4kWN2DjWumbx0dQc5Oc/o=
X-Google-Smtp-Source: ABdhPJzzZ3CJW8TFT3oTzVwztkQUhSIM/adEiyPpCdQ0Ao8k+88FdoFrLCyVoILeflXAgIIYzT+nxw==
X-Received: by 2002:a17:90b:a17:: with SMTP id gg23mr13086534pjb.82.1605915045141;
        Fri, 20 Nov 2020 15:30:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls4347167pjs.3.canary-gmail;
 Fri, 20 Nov 2020 15:30:44 -0800 (PST)
X-Received: by 2002:a17:90a:7188:: with SMTP id i8mr12693210pjk.80.1605915044543;
        Fri, 20 Nov 2020 15:30:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605915044; cv=none;
        d=google.com; s=arc-20160816;
        b=yUzMPGBefqsvv9rXZQ0vyIsnaFpcdaGuujYiWhm38QbesQ6OyhIvGWmSjSdMa0jXCP
         Kodh5+++YaiRID6nkxkr+dAlynsj2oaPk17UX5oGbE+KrP6TgKYGGqTjGOJoKw4NcxXO
         osGtESMoHf2lDc/Z31h7zrGsB7jThq9Lw5nan3281Q7oe9cX6/xenXBh6gNnomI/s1EM
         nB5B66fW8xbpOxV3qAwhf7gws1AJVJlF0dl/a3m3aeVf/Zg9EBYfUohfx1pvuFPXPOkJ
         0AaJNEvx6W4k8IUu3XwvO+ljgExJj8xF8r5Foov5n/SqI+AIkG70Ld8xXfDU6eS9ZbP+
         E+eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ozfnlzu5K+IMfeMY+nR4wEr9eEUqUXJUb/8cnbrRWT0=;
        b=RIxQWEHv6J2kkdCGWKkmadsA+lX591X9aAViWn2lCguv9FsRoBg4GNFTLd/lOt4auM
         bdFxqOSFQ/Duc8WjHcDZfv+7IlyiKURjuwGeY3imP092M2EV6EGPs5imhSHaJCrvR2AZ
         H964VC29zNiNWdFZICC82lGhmMQWfc76hi1gAZKCFNuW+rYL8oA/7vdHnsTPIti3myKu
         xexaOPXOmWMVOvl6TqK15YOf1Q/5tN7D29uLLNZzuwtJ7qy/iXoDL7hrTdcost3tJxKv
         OBUHY2//lsk+PzwfLmqE7UJe2LgOxEQIxEsZ1g0ZEOqj2GU7Mj7U254SBnNnN2WhZvAG
         TGIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=RZzdH79P;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b26si335363pfd.5.2020.11.20.15.30.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Nov 2020 15:30:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F396E24124
	for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 23:30:43 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id m13so12355986oih.8
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 15:30:43 -0800 (PST)
X-Received: by 2002:aca:5c82:: with SMTP id q124mr8196235oib.33.1605915043305;
 Fri, 20 Nov 2020 15:30:43 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
 <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com> <CAKwvOdmpBNx9iSguGXivjJ03FaN5rgv2oaXZUQxYPdRccQmdyQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmpBNx9iSguGXivjJ03FaN5rgv2oaXZUQxYPdRccQmdyQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 21 Nov 2020 00:30:32 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEoPEd6GzjL1XuxTPwitbR03BiBEXpAGtUytMj-h=vCkg@mail.gmail.com>
Message-ID: <CAMj1kXEoPEd6GzjL1XuxTPwitbR03BiBEXpAGtUytMj-h=vCkg@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=RZzdH79P;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 20 Nov 2020 at 21:19, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Nov 20, 2020 at 2:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 19 Nov 2020 at 00:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > Thanks for continuing to drive this series Sami.  For the series,
> > >
> > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > I did virtualized boot tests with the series applied to aarch64
> > > defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
> > > with CONFIG_THINLTO.  If you make changes to the series in follow ups,
> > > please drop my tested by tag from the modified patches and I'll help
> > > re-test.  Some minor feedback on the Kconfig change, but I'll post it
> > > off of that patch.
> > >
> >
> > When you say 'virtualized" do you mean QEMU on x86? Or actual
> > virtualization on an AArch64 KVM host?
>
> aarch64 guest on x86_64 host.  If you have additional configurations
> that are important to you, additional testing help would be
> appreciated.
>

Could you run this on an actual phone? Or does Android already ship
with this stuff?


> >
> > The distinction is important here, given the potential impact of LTO
> > on things that QEMU simply does not model when it runs in TCG mode on
> > a foreign host architecture.
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEoPEd6GzjL1XuxTPwitbR03BiBEXpAGtUytMj-h%3DvCkg%40mail.gmail.com.
