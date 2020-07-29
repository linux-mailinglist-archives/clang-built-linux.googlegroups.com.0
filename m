Return-Path: <clang-built-linux+bncBCYIBK4PW4CRB5FQQT4QKGQEAZGJH7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E36D2319A0
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 08:34:29 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id b13sf3507251wrq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 23:34:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596004468; cv=pass;
        d=google.com; s=arc-20160816;
        b=puITJ2FWSBl7PDqFYrRBe0miQFH8dLwD5jFxq7GhSSEwPOdgeS3Vu+49x3af4rbSk/
         ZixGBgNQxx0PhjmWi1uXJ+y0D+0HnZFil+mbg6sZgogl3p/iNv9Ld6BDo8DS+ZhYNr/t
         e9dw8rmyetpMsmaSSsOrp+wlrOsOVzS4TFeTZxMx2AftOoGrVquB24UBOLUD4WMywe0e
         kUB+wlB/8TN70PWD3k7eF1ICzx4XzPdjLQ95ONUiouvpBoHZMdApNUlO+sWVrNKKDjHI
         3K2JaoGEYWH3h90u47vUovp+PoTDLOeCqdmQ6yDsUe6IzF7Pf0MDVlMei9OSYLmlyqBY
         4qYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vkXx8mx9h2mAdH57/u/Q+2ffjpCAYwjFkkOT6XTYscY=;
        b=MHt+R368zHHc4a6stQ8w4XR3LDLEWnybqWwSJ1tuCDO8iJPPgYCcHMCSbjWinDUlk0
         8U6maG/ilWA41MS2erT5t6h9/DGWVojw6OqFjSIdOavKnOxiJfOyIG6PF8Xv3uKNIr/Q
         CLmHi5LZm44kIHDnP4zoKqWzs5R4uoXLMuPTuhsAV/ZnHlMgWYkc1A5pz70Jenx8j0Zv
         fj4f0cx9RWC1rmm23k5F3Ho/JOY7H+vutAZjsXM3jiUx8htLBwKmE47hBS2WBVgfvd+M
         dlaKFa03Kxmt2GPvZYMBa4L7Aza2my5Xleizjr/HwU5ummeEW1orJc6e0v5SysQOfIgY
         YIMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vkXx8mx9h2mAdH57/u/Q+2ffjpCAYwjFkkOT6XTYscY=;
        b=JqCdEuDxwyzxARKS/XnXKO8+oesvaJ9rFovNHucxPC9QFvShs/ynX7GL1BJ/Ey0aZc
         kNqIyyBP+Q/mdNtYPbBB7jArrxGfnJPIehWnZJMVnMHcULgOvcXQH/y9h2iKatWDE4sG
         xFgzGCFXDi/F5W2ooAuw6UBFFt9iNlMjWT4vPtspL5gKkq9RrhqjOpb/LLZgmiDrhRhD
         ++x9Qy1PNaPtTceP53PXvaOKo2SxS9+UY01ixOlLUnw8lF+oJIqEB3vOUopzuk9kgp8g
         4ztSSRpD380aSXlYtpOhXdTc9KdCCfHFKLa6XaGRTaq+kqGInGFZJzyviN2Knwe3ayEs
         24vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vkXx8mx9h2mAdH57/u/Q+2ffjpCAYwjFkkOT6XTYscY=;
        b=qnyHbO4CJNR//I5HT56ORSVOL2x9FmRlivFog0T5C7ShWLIyIsn8Mj7B867aLb+8yA
         MslzLYd2HyrNalzAL739lw3tPxybkhViVDO3Ij7X9j6Kt9k3duHlfk96ymE2wrGbVL34
         ipzxUKt+0OS6AllycgWNxvywLkNrswikYOntqTBsFCXMlCDJeBDJv9rxrg9rUwvwTA6p
         GA/QhSngF7WEpMavgxVVavlo2NFpCFFHVz9/sfA9C6AZ3DAuwm2fwZHEadHlAl+hB32r
         4c76zCp2a/PpKN6NA38d2VbneETyEARAiIH1hGyT3z7xnMzxxfcYaoGVBXOyTgTuelPi
         J3FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PObDpusfxzbH844IOq/8KlGipFTwJqzMAqlRsKZ4YWFQqijwu
	uzetiDzXRAJ1abDJ5sxfs2o=
X-Google-Smtp-Source: ABdhPJxlpf1unOB81AfvpfKKXBO7fU1u8xPaIzXzIFe2hJ4dXQWi76bYs1JTmz8dSPIatP4fmQG4Lg==
X-Received: by 2002:adf:e94a:: with SMTP id m10mr16434619wrn.249.1596004468774;
        Tue, 28 Jul 2020 23:34:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9ece:: with SMTP id h197ls424387wme.1.canary-gmail; Tue,
 28 Jul 2020 23:34:28 -0700 (PDT)
X-Received: by 2002:a05:600c:22cb:: with SMTP id 11mr7445462wmg.66.1596004468353;
        Tue, 28 Jul 2020 23:34:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596004468; cv=none;
        d=google.com; s=arc-20160816;
        b=PaPLNXJFM9gq3iOQ7aZXW57FOHMF1WjR3aNflwiNRxje8pznpQCp9QyHjHIQUOLiVC
         QEaaG8WOSnDTfv7Q92jYZ7tceuEWLNMs8V8Gpg5qM+oc8ou51t6ra4foLI2JeWkmeAmj
         UInZ1bCsyEw6fLYYwnzf8vCjX1j5k+WmqS5GG8cjLcuPb4F1FayRBdV13XvbPF1B5gzM
         f9tm4TAhCW5sa5CzHl3dhsutXyC6f7XEfaa9hq2AiBVt2RHqpUFBNscYr5re4cG/F2w8
         tVyMWkhae7PYygEQWI45vybfHT/cT+7WlB+NjE1ey0tCUDptQ0+HSwcCF3napMTB9fRU
         XJIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=XIlV4Q6P2hxyTbpTmIfkxHinx5NVBW4nTQ0DNENriYg=;
        b=mp0KphizL1UmW8tnLM+jlkvCUAVkKGYSRBAWx1IseRGsQQRXp7YOp7CiUsnpBq/C2d
         TXTMNv8UmfUhN1uOHhyc4j3eSn84v2wGlnZXjRQcvF57pbqqq/vOACed2SSiJyeqHi8i
         yj8lliH591SSsKCgwOxDlFzwD6yPqluqLnilJcc06AlIQIqWwzMZ+t3O99tAzAuRiKSq
         kMXrG2xTeXXNs01cpc7sf9JyURUkrhrYvOevgQfODZ0N/rNusGzEDs2nmCoft0qGE2TK
         dlFAjz4JXLYTVgd2ppj/BcXTxECLyzCmZ7OpSsl7rrp8WwQGSuk+FFh2sdeWP/1SxqMX
         BMZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net. [217.70.183.193])
        by gmr-mx.google.com with ESMTPS id w6si90888wmk.2.2020.07.28.23.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 28 Jul 2020 23:34:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as permitted sender) client-ip=217.70.183.193;
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net [50.39.163.217])
	(Authenticated sender: josh@joshtriplett.org)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E3C58240003;
	Wed, 29 Jul 2020 06:34:20 +0000 (UTC)
Date: Tue, 28 Jul 2020 23:34:17 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Pavel Machek <pavel@ucw.cz>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	Greg KH <gregkh@linuxfoundation.org>, geofft@ldpreload.com,
	jbaublitz@redhat.com, Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200729063417.GD286933@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
 <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <20200710225934.GA16881@localhost>
 <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
 <20200711210317.GA60425@localhost>
 <20200728204037.GC1012@bug>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728204037.GC1012@bug>
X-Original-Sender: josh@joshtriplett.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of josh@joshtriplett.org designates 217.70.183.193 as
 permitted sender) smtp.mailfrom=josh@joshtriplett.org
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

On Tue, Jul 28, 2020 at 10:40:38PM +0200, Pavel Machek wrote:
> > We just need to make sure that any kernel CI infrastructure tests that
> > right away, then, so that failures don't get introduced by a patch from
> > someone without a Rust toolchain and not noticed until someone with a
> > Rust toolchain tests it.
> 
> So... I'm fan of Rust, but while trying to use it one thing was obvious: it
> takes _significantly_ longer than C to compile and needs gigabyte a lot of RAM.
> 
> Kernel is quite big project, can CI infrastructure handle additional load?
> 
> Will developers see significantly longer compile times when Rust is widespread?

I wouldn't expect the addition of Rust to the kernel to substantially
impact overall build time; on balance, I'd expect the major bottleneck
in kernel builds to continue to be linking and other serialized steps,
not compiling and other highly parallel steps.

There are also *many* things that can be done to improve Rust build time
in a project. And I don't expect that in-kernel Rust will have many
dependencies on third-party crates (since they'd need to be checked into
the tree).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200729063417.GD286933%40localhost.
