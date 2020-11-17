Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYW2ZT6QKGQENY47SJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BAF2B566D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 02:54:43 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id c19sf2833816pgj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 17:54:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605578082; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jczwr+LBYlNoYgWvx3MbuKBXCjoX/TaVkueX9QVk8SoybzlErW+LwZqUVLc2t3XSLN
         uqBoxaT1FdHi0xaRK0jCdynmP6ESVcQkQVoQRe8th1RlcI5AecRTqcCakDZcS2Dj56Y7
         Z2BdfqlAYNr/WcUh0z8/PFehfMvJh/JYlo/hURzyKRNELwpkmikOVGTNzYv1lKlOQE2t
         +ACkq6a7/IB+7HISsQUHnt66HoASe7JKBuECD5jjkneNimpENgdrNmk77uAdnSGZNMbn
         HlSx86N/KqJEY/VnztaNyi0dNE3QtRhF7fzk9/+526bugAFDgwpZNh38FXtDFRlH+RFS
         b63A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=XYfOGxEkPk4mdBJ80YAnaf3M93/bxc3kMQ/wSpBKyU8=;
        b=kC+qssy8uNow8I5BVbUOApYjBOJgCSkjFsF2XGhc8YBEhgbqNr/OvBGQ+t6EGdmYny
         CYmGSU0MI2K5QA6ijARqqmRy9YWgUWImB3zw/WtFzQRatv0XralU0EibJxhf2PtrVZ+B
         K/WggoZxdd/JvtLpMLKPeDKcZ670hQJeP5YN/bnA0QlEbnmkEto4MsCRkONubLk6adwe
         STSO884IsbnSgEi3g7GIRPvDpPMqQ45w+OV6IShAEUlQaJhCCa4w98YDR/mdk9g0WFXB
         Q7SphlXnz/CTPfCCp7ZZut73jhwyI13y4d7h0AR29bCHst7PF2QKE3/6LJRP89ZDea+d
         pjuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rtx/RU+s";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XYfOGxEkPk4mdBJ80YAnaf3M93/bxc3kMQ/wSpBKyU8=;
        b=HlDHfEbouRFpj+cDInMxffk0VTl760sUDj4Xtq26cQeCIMBHxbjY8XWzkbw8/7wQjO
         0ydPsF25AMnstsCdu9ujjmTDjGJwKvS1h4hoVAvGsPmIHz+uHWndpmoj9mT6d/881jnP
         E0YVzP33LHCDNPD24ifbz1ioSlIQTL7z7gSvp9W6jf6BrrP9ybC7nmmId4hRtXU1u6np
         tTflbbelSdFInaSj+9wcZeEgHYgz8rQPqR4C9tfANlMRnQKDeUqcpvRMwELe08GCDyYr
         U/+GSwFdw/dqWVMt5/7sJCcumSVudq0dM4CM8Q2PYpVi/NKnK5dbDhlWIE8iHAwU1Ly9
         vtcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XYfOGxEkPk4mdBJ80YAnaf3M93/bxc3kMQ/wSpBKyU8=;
        b=S1T8oqaKPaf/b+LNyy4Xz7XLBWZltX0jRXh6zMzg2HximIQxKZwJmDAhtUfsZPRxRS
         EWEtKI5Z+kOKb5ZOpJqJb7g1c6XR9huhmrCOhp0p9S/QOnm4H2kpCSeIi+lQn/OJoThp
         uY4Hqcb0ML/7kKOqZeH679L7TXTZto7qCN9Ue3daicVdrOZDAii4jDCzaf93qcic5t6e
         QXMhW0+ToKSdlN+5kvQYkKGWyifcCoAUUtKAXgbLifevk2zCityZTjj3G1FzKfimi+LF
         9bVJopCllx9nWbsfl4kJM8abgDp4Z2voYgDz7BrjtCps2OMnQmIWCc+5JukUsABOF2iC
         GU4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XYfOGxEkPk4mdBJ80YAnaf3M93/bxc3kMQ/wSpBKyU8=;
        b=IScOHAuFL8a3XT6BjUGTcNS4SI+SgGk9CdUyLeu9iOTxupjN3gp65tfGboA7kYVzSC
         1HvodBSlQhN1F+aDEtFV51ILG+liaIrDOKDSAlYKvWZ99ar7t61LSK3fYJp0WtR6iYcr
         ziE99hyJ4Pl4zuAfgG/6/fMU6pVuE3RcSfG8GcSFMU0ciQ+cj3/WZT0qMa7ZR2pKLlk0
         VVWVtfyOaTh1vXPEr8XvMB9ngkFWmWv1QIcaJzyvBvEVxVYkRKNqEBq4PvUvKNsIx8Bx
         jfG1gI/UeI+YZTP7/nfPpjSGg9dmGxesY+2BOkaDiGEXfcQjEwnLxfCX0twngY4UvbD6
         ju4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532v7EnIKkF/OQfE0thgZItQefGwk1v9I6Ng+ZNgZQEU4qkzU73Z
	2Db0gVNcz/FGuaPC8olQ0SE=
X-Google-Smtp-Source: ABdhPJyAHJjgSmSOrG12QlmdWnEJcTIlMpfDHGFpEziW/YAngV2QoFNvOnYs+8rm67AydrBRF8XoDw==
X-Received: by 2002:a63:2848:: with SMTP id o69mr1622339pgo.413.1605578082639;
        Mon, 16 Nov 2020 17:54:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:881:: with SMTP id q1ls1801394pfj.4.gmail; Mon, 16
 Nov 2020 17:54:42 -0800 (PST)
X-Received: by 2002:aa7:950b:0:b029:18a:df47:ef90 with SMTP id b11-20020aa7950b0000b029018adf47ef90mr16691300pfp.74.1605578081899;
        Mon, 16 Nov 2020 17:54:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605578081; cv=none;
        d=google.com; s=arc-20160816;
        b=NQWmgiO8OoQZF1G0DDqpfCb8Cong6CktqJXH74uHUaYq5YJUMqZQbtD10nnKNFMJRJ
         CT0qkt1IWuzKs5RwK9tJ+e/oNr7fInrKWcjtH7dRVhuwzYb34hKhcxAO4gpjmJ5kaWgi
         6FIrq0LdfE8Q1eQtUR6ch45wUMsIlj5Hy+X4zD5dmETi5hiSRtICKjTKeDAhnUfOGQDk
         I4ya87A6F54PiAkGQ4C/K2ej0Y0JJMiwR6NMv9vKOM1LJilRurzYA4Fd9Rf/Gl0yCR2p
         FCX5zI8+mMgpM0xjNWo4ZuwPFOu/egW7BToYmPrFbtFph/sdrY86zaP6PCU4TkIICTxz
         r9JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NTtCzB5VIaFDrBNNNZ7NaHNKVBpJ8Hadb4R3oCLX97k=;
        b=jpPIxViHD3A+917tBOr6+9n7PDQDive1J2r7rotZz13qGTsWPGqqOLq6iNZs9oIxcN
         zCKgJgK/6iccDMnISrPCvxxH1hVrb09MeliNHrPbizjcU7ynWjywLy8QQow0ceesRkXl
         4jZMHdp/y7kSGI/V/wSp1027f7ftQPNRlNcs9aiZ72jiPKDgdvTwIqnGNfsoZw5UO6UJ
         jklneXkwSl1sUXmxQw1ZUrao6sk43XPbCqy3TQOIDWKZkC57V1JXzWO63ACvol952aTa
         b3aFF+0CMULLjKGbBK5ya+9ATZqZexOWykSQ6Iojb5mTPipHJoB7Rzhl54i+deJVRcHm
         g6Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rtx/RU+s";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id i5si175996pjz.1.2020.11.16.17.54.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 17:54:41 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id z3so11029944qtw.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 17:54:41 -0800 (PST)
X-Received: by 2002:ac8:6b06:: with SMTP id w6mr17145176qts.6.1605578081016;
        Mon, 16 Nov 2020 17:54:41 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id f27sm3258802qtv.95.2020.11.16.17.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:54:39 -0800 (PST)
Date: Mon, 16 Nov 2020 18:54:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Kees Cook <keescook@chromium.org>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 1/2] kbuild: Hoist '--orphan-handling' into Kconfig
Message-ID: <20201117015438.GA299247@ubuntu-m3-large-x86>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <CAKwvOdnf5WKJrLnwM9dDDniP0eG5gnFSMB0rapqWLUAZbVJZvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnf5WKJrLnwM9dDDniP0eG5gnFSMB0rapqWLUAZbVJZvQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rtx/RU+s";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Nov 16, 2020 at 05:41:58PM -0800, Nick Desaulniers wrote:
> On Fri, Nov 13, 2020 at 11:56 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Currently, '--orphan-handling=warn' is spread out across four different
> > architectures in their respective Makefiles, which makes it a little
> > unruly to deal with in case it needs to be disabled for a specific
> > linker version (in this case, ld.lld 10.0.1).
> 
> Hi Nathan,
> This patch fails to apply for me via b4 on next-20201116 due to a
> conflict in arch/Kconfig:1028. Would you mind sending a rebased V2?

Hi Nick,

This series is intended to go into v5.10 so rebasing it against -next
defeats that; please test it against v5.10-rc4, where it still applies
cleanly. The conflicts will be handled by other entities (Stephen Rothwell
and Linus).

If you want to test it against -next, 'git am -3' will allow you to
easily handle the conflict.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117015438.GA299247%40ubuntu-m3-large-x86.
