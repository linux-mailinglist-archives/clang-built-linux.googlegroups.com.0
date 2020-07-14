Return-Path: <clang-built-linux+bncBCIO53XE7YHBBBFBXD4AKGQECG54XIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6870721FE31
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:07:33 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id b2sf12685316ilh.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:07:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594757252; cv=pass;
        d=google.com; s=arc-20160816;
        b=cEDiXUe3bqJbiMNBOyPOcq+UrVofajaX41GuachP5XMw7rnh3jJd1Q4KWocfJ3NrEc
         BBffwhqiPz45yTuGbowuWCxRkarHKhuMvlLYoDytS1j4nohUzFb6Q+tbiMw9lGlRgNJx
         Cjtm/KwOS5IRfZs/XOaOruwYMZqRGftjEbiA73WsTXkYW4so+u+Y7zkCRA4iXlS01Ddl
         ajIX/iaEizyVlZS2tmE1Kw/csOVogE0v3TACt66KmmNMaJ4gCKLMB2S1l3CmV7m2WJqW
         0846GEB2CVAMz8srhebRHA4NQg9naEKN8Ojn02I2dBsIRBkL/oYtQX63LUA7t1fk68PZ
         3DYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=2EwJ8xpomr4gIzdoMnKF0GK2KZtYWKTXAshJoVzjB0Q=;
        b=RXSa/GQCCtuSswIeioKSdAF34hxqZRCznAk25f6OUFMsD5FyGxq2GK4hm4wsTIkuz2
         9VPpyGFjgzsk/HDm2x6V2VhQC8x2RV6Pm1lf4pzWJWPhMozhpPVHQG6lg9ebGJOJh4ML
         kXqmA7V4o7DaGqG9C3Ev6hKvp8gjtezY/92FSCbug0yKa5wFiBAnAp3ksnJTBhz87nB6
         ShjOuXGbH102Zo1+G8o+EvfOOPO7D2Q/Na3ZnFIDyFzq9USQO9yP1I4a3VVRjwCB413X
         LQaDYS0ON6wvitGLJUU5VtSip4G/WE9cL7B9uV2gutApvg6xI4gYTWOQ/8YuHJCgbg+V
         OM9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qymiIJ3V;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2EwJ8xpomr4gIzdoMnKF0GK2KZtYWKTXAshJoVzjB0Q=;
        b=VEQqU2M7NcGI7r2liNAx11dGBinOC+5J6XeoKJS6/3NPzquxZcE2SwEOibgxJu3iTi
         jn05l1X/M8amzmIlQOVeRy+tz4y+1qaKBdlfAXp3AjweBmuvjaJnQpGwXnnFxbNfXG4Y
         EpkZnqXFQTahk73fRm2ZLnq2WPpw1aPxEnlI2DS3nhQ6l4glXtz7+sq5rCpmCy2Hs1ux
         oD4tup9PHOvtYzw70vuGi2Kev2eZMv+leyqu6XxVdby9OO54zASo546UMgNBaV8/ExL0
         /Qp185E69W+/qfkr/KEJA1gNMChsNFlt9FEdSB4XMqETPHtwjkDpq/ynZtxR2lj2YgVg
         Hgbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2EwJ8xpomr4gIzdoMnKF0GK2KZtYWKTXAshJoVzjB0Q=;
        b=Yzac/mxJRhSt3ofa2qHb/ACkE3Oq8YxwUlUAO5nfDwso82wu5/OCgSRxgqlZrmLvlw
         QOmcvOideZ6gs5DB9XIEM1uL2iBBiLodbYFv9zBIHaYep+tKcmmypeHLvHjWE8H3MR/f
         Ayv8LbFWMIqxh/bNvvhSwW8dhf7o2ao49x1P3PDdVABEEs9Gc7QUh7D1CQGxoMfl9Mzw
         Ped7IaBIUMyWTzlHaGm4goruRIQYzD7XzQUy9VI5kRG3M6u+XtDTbGKDPYVeVvG+FHCV
         ml9ibcqMD15qgJlzPPV1ySynkAeUejCUnFsmaS4eqGK0ak3AICLPr+OXbudSY4X5zuEZ
         Lt3g==
X-Gm-Message-State: AOAM5309+VvSvXPqoWKmOuZgtFKvDMT4cr5TKDaq5+GuBNppJAU6Nj3V
	nCVwv+8NBAXxk2DGJ6Hc7Zk=
X-Google-Smtp-Source: ABdhPJyTKb4jSZSjcFoRvXlIKJzu1zEwdZ01IwlyP3wmVbSgT3iL86siTRDJj/HF9coEqDKjXl8e7g==
X-Received: by 2002:a92:7949:: with SMTP id u70mr6538509ilc.88.1594757252336;
        Tue, 14 Jul 2020 13:07:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:dc1:: with SMTP id m1ls675245jaj.2.gmail; Tue, 14
 Jul 2020 13:07:32 -0700 (PDT)
X-Received: by 2002:a02:7419:: with SMTP id o25mr7586016jac.46.1594757251926;
        Tue, 14 Jul 2020 13:07:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594757251; cv=none;
        d=google.com; s=arc-20160816;
        b=dMauPfbUGcCspseZNc/wBwoP7Hjq59ldknYQw76VNskNnGqZ9XDHRvsMUAXyATiLG2
         EMMBo7YBvVg4JLl9IypY432DW8n9fWAX43T7WkSZSHBtT/Z+YQe2PmATzDNvS1YNcxNk
         koE54tFK5fty7NxVPT8/OO6kDOhuExMthnJlJIxVFFfxLzaSgLntI4IyHFXNN1d4uwyi
         mmBpExAWbMgQ+GgYQgUb07Gc7wDY2nKGPgVmze9nvtCwB1fMWimCLb5ICtJHDI47xms5
         a6w8M4/+ccTfkIbGE3m38ORfmrIpNAZgnEsxcAg5CzE4uEPNkDTRb+I5emuR0MCTfC+y
         PWJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=9SCRkrwWjdQ5zfni8Ib6fHh6wrOMaYQCuz7BKbHiAVQ=;
        b=B/nLiNn+RdR7QbwROaQUqmJ2/JGueaUuPS1E9NOIQGy+UhHYqnumTO1QYhs8kwxEU0
         inDGiYtMFX2M2jLZqayOF7PqPtw+7qs4SF6SoEBvnD0lroDRg6E8TblMDartmvzJkNzN
         e53dT7/jng0FLdjV8nie2EfqiBvt5yLsYFmdVV1mTnYvtBAHoeIhiqcxeNRX+AHvQ/MB
         0Khg65kYuEaxGU7ypcMgW5H2zqC05PCRe4v6RJO/QSpnYBf3c/2xHPD/eBvU8DedrQm5
         FG/EIqhwdFFBkFdT46mXL1dGDWYCdxv3o+zBpgAOm6mp+orRPzulX9I7CLfUZ9V1dgTf
         My/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qymiIJ3V;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id z71si1125803ilf.5.2020.07.14.13.07.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id h17so8122418qvr.0
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:07:31 -0700 (PDT)
X-Received: by 2002:ad4:4ae1:: with SMTP id cp1mr6310367qvb.91.1594757251563;
        Tue, 14 Jul 2020 13:07:31 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p36sm79341qta.0.2020.07.14.13.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 13:07:30 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 16:07:28 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714200728.GA894572@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan>
 <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan>
 <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qymiIJ3V;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jul 14, 2020 at 09:53:19PM +0200, Sedat Dilek wrote:
> 
> Hmm, you might be right with moving to LDFLAGS_vmlinux.
> 
> Attached are my linux-config and dmesg-output.
> 
> - Sedat -

Which tree are you building against? I notice you have KERNEL_ZSTD
enabled, which hasn't been merged yet.

Are you using Nick's series [v7]?

Also from the naming -- are you using LLVM_IAS=1 with some patches to
make it work?

[v7] https://lore.kernel.org/lkml/20200708185024.2767937-1-nickrterrell@gmail.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714200728.GA894572%40rani.riverdale.lan.
