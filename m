Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUHZQP5QKGQEEY5HUSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3990226AAE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 19:41:37 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id p84sf735920vke.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 10:41:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600191696; cv=pass;
        d=google.com; s=arc-20160816;
        b=uEuCFHxNciQFy3qJ1xKDG/GOT4cH0BNfbRz4qeRBMBjTytWfgEAFYoN07oe9Hs4ePX
         BcJCWV1FnKMU4zSqCE34FaeZidFJf5KtO7+cHP1W3YVIpZNLMDH1ahjwbaPQTkMbROgn
         tk7rsI42g+gZ1eed8C78JJ/M52nI48WvAsLjMHS+9/ihMNbgiq27Y0tb/CkR6vVGPnLg
         QoVyh4qW9bFWZuFxsECKX2lPzAy98vh8TN3/RNMr9VHV3Txjh1h9y0djGqLQem6ye7xv
         /HiNPgo4FRqLBZ4fZxOKyc4xgbfOCB1CBf7ofGBzsSQ9CvPth5BSWULukRjFnZJpny/M
         aGgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FCzKgYKc4xaBd3EBjsaBa84KBp0+eyowWveCriXlszc=;
        b=ABChZB2jTOMHJeHYaOgeaIpQDcdoi5g6KNy5vtBSryX7A21UNLY6cU8IhNRv1CgVYY
         4ZHN/bh9dwnghAIodZh8WA3aZFqDu9xuvoKGrgu/Q8lOeYBLOqP7IlxAH14zfiYCLer/
         scSEb+FFeCRxZUZmuGkJGvDxId82oPkctwTQJfLhgPQNucikP9Vp3V62EEqTSZGX+v0o
         8eQilV4+PATHt/dR+Be9p4snrwt2na5eF7qXO3jBf08vlmqWCyXo4uiT83ThID97sB9d
         gNlbrqHjFbOElkWxaeMY7H2PNfSmcFYugvcPUzCc6nEnpSugMX1lE32+2KKtsVe1EzzF
         2uHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VxVrm1Zl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FCzKgYKc4xaBd3EBjsaBa84KBp0+eyowWveCriXlszc=;
        b=oQeVR/LqAuu7A3sZAYAiAJckl+vjvHr8CEuwXqlCbyf2iEYfH7YdjKzbn1eCJQZUjN
         HorvMVwzOLNdYeB+aqOLdmgBhNJFUSymJA+RqxQCau8Zm4ACrKySJ227pMusHWiOQPPY
         mZcOMY5ykIswZUOjx/ehA0sUd5cikGzgzKQN5hv/rtOjhp3aeq/3tVJr5Y/pDNQ9PKIk
         ZKOX0ER+iZd+AiKliFH1glzYFtSEWxfORyF+hZ+bcQ8XtEwc/dFbwkofQxoFwtXKzNCF
         eTdP9nMvNazEjmAdPGd+ff6tGYch+EkpN5hLFqjFZgrNu6kWi3jdW7AQryVCkbuI3LPZ
         PgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FCzKgYKc4xaBd3EBjsaBa84KBp0+eyowWveCriXlszc=;
        b=qmyxNRiBWg7A7cqlpluX6HaWaYrCtiHRaZ0SO1Ph/TRftFb3uvbOSRQEIFXXo91ZKn
         h9AjQWf3ckymVY10iaT8OvtmQILMMQXDBl00DcYDJiDmMKXmRDx28JS/DLiJSUZCf5mg
         v8y8aeGZNQ8bMGk1a5t/7tdeXoltFH8eee4QdUc4EXcDwc/sIaE/Ty+CxfyZouydfHQy
         EDHyQf2kUhmpr+K5ydCXYYBoLlRQcb9iy12SOwNx4kANrDSveMx4KH3bf32RMF4fzp75
         EQtQnMmuKXOK5bOD5/YyFluObiJZ2lmaPwUiSK6+Y8K0oJH7LTs7Qq/J3BJLqAOgGYJC
         EAyQ==
X-Gm-Message-State: AOAM530KDwQkx7Wp3PrGtfxpaIPLryu82nD6kiqCMju/+MzP4e4EfQ2d
	QWA3PsPzv7dux26iZuptAX4=
X-Google-Smtp-Source: ABdhPJyggT2U6WwnoWPpQGWjvmnIsY/GkSaxvi3cpu+HEZ5bJarzCvEtagiHMJFA04skAjTXSnOQCw==
X-Received: by 2002:a67:8802:: with SMTP id k2mr2316182vsd.42.1600191696249;
        Tue, 15 Sep 2020 10:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2481:: with SMTP id k123ls1982vkk.4.gmail; Tue, 15 Sep
 2020 10:41:35 -0700 (PDT)
X-Received: by 2002:a1f:1457:: with SMTP id 84mr2440644vku.18.1600191695786;
        Tue, 15 Sep 2020 10:41:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600191695; cv=none;
        d=google.com; s=arc-20160816;
        b=QNHhMvlL7EAfRejYeL6BubirQH7qh7qg3RcbYweLxzzwdK67n4EiEUXBN0PzoiSBP1
         vMFCmEMEvTCnhyDO6lV807QTWrHxdKhz5PlOOjeGxMVlq3YQ7bbmXoWMGU7cnzr2Ji+1
         tA5mqHs8cOM4hjXk3P3A/tWBdrFOoAR15rueM8JY14/xPM7EG6JdrB8Dogl+gG8m5Nmm
         WTNId29KUiU/8qU7kx1nD6TquSaoSBoC8d2RBpchJDh6TT7x82x6TtUzK8Svy6SDI+iG
         Vtt4gQcIo7TooSNHRzQ1qu4GPVdPG5uQgXYLh183WC1+ImPrDG0hWBGYNp2k5m2lGaRU
         pnsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z1YjZCsp4omtvOs8Zgwj8r9+riXW9+60BrD6+tQYvl0=;
        b=cj6Oin8YVGAiKLa7lnAG+528u+M7e7IdBhnyEgEHtGLAUdwzv4Pd17rzusLP6nesnI
         ZvCjq82dJdvhcJM6DY9XYRnnYbqY2ODKDX0McsZ20bgmBgn0/kZPCDegS4wcGnwMuDUi
         8lgkUBo71/uEJPA35WhObMkUjca+KK4gusrcLZvQb2q6ypnYIIGJ+prDNXSIfh+gltHh
         Y0SYefF7JquNlh7kkV9BYA79FB0fKPaWovyXiL/Ndg8sktlJ/Hm5Ylwx1H17cqf/nZFp
         E2vqaJKF54Y0UZfCD7Yhc4nYBCFSfB7rR4oxnM7ncHWl8YJnj9Q92jmV7gXlhwdBKDfo
         FVqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VxVrm1Zl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u19si836557vsl.0.2020.09.15.10.41.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 10:41:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l191so2366817pgd.5
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 10:41:35 -0700 (PDT)
X-Received: by 2002:a62:1c4a:0:b029:13e:d13d:a136 with SMTP id
 c71-20020a621c4a0000b029013ed13da136mr19038520pfc.30.1600191694743; Tue, 15
 Sep 2020 10:41:34 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic> <20200915173430.GS14436@zn.tnic>
In-Reply-To: <20200915173430.GS14436@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 10:41:24 -0700
Message-ID: <CAKwvOdnqJJ8Ot6sRvVUTyuwA_zhRQXOnMU9KS6aVcTqRGb3JmA@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Borislav Petkov <bp@alien8.de>
Cc: Rong Chen <rong.a.chen@intel.com>, "Li, Philip" <philip.li@intel.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, kernel test robot <lkp@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VxVrm1Zl;       spf=pass
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

On Tue, Sep 15, 2020 at 10:34 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 15, 2020 at 07:21:52PM +0200, Borislav Petkov wrote:
> > I'm thinking clang12 is too unstable to take it seriously...
>
> Yeah, I'm being told v12 is not even close to getting released. So why
> are you 0day guys testing with it and reporting issues? Are you testing
> unreleased compilers and reporting bugs against the kernel?
>
> What's up?!

We want them finding bugs in unreleased versions of the compiler,
before those bugs in ship in release.  This is a good thing.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnqJJ8Ot6sRvVUTyuwA_zhRQXOnMU9KS6aVcTqRGb3JmA%40mail.gmail.com.
