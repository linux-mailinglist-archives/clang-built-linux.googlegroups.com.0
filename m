Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBU2XP7AKGQEUI6WKCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF342D1F38
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 01:47:03 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id m3sf13034144qvw.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 16:47:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607388423; cv=pass;
        d=google.com; s=arc-20160816;
        b=FHIyqSaFOZASssdHmJzMuo2m+NFSLJOIIR6UP5hcWNi+sgQnfrR3NJUakPDlFNFLFf
         W5DFM9UgWHN91AKIpnopx0DnNc7x+NLyopkajUlCrg7nuqEsoVTFiidkezyZqG8VNwoR
         UwvDEYGjK3ZwJ5Puh/tENl4STW/f/EOfZbgvBugHwFiTkMhkT7n952obP30lfGjxuF7U
         EhZhTtp2G5DMbHZLPpBuZgGhX6zZNxQuJxsiJcKK9k53Sw7CMribdf2JvVvoxqVRupoO
         Cp6HIdoxglbVpBrc+bdT6T831nesFWPmgz4igjvgpF8gjSR+Qpl0KfERKdL+/lJVhHfe
         d8nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WK7nR9CEASIJ1Ka6oCRQnekMQPd2pux+y29H6J07ryk=;
        b=US+vZa3fK6PRfaE1nwvuFQJpEvZnx0j6kIj9+fK/U2AEg+5gDUtSrqghSFGWa+2v+a
         OfZnXAt86zp8q0WWRYi+baHivhD6nmLT0Ws+jQArgLYdcfgXz5h5UKwRR0VzX1u5tNmL
         ii3t2a4Hxc1qEyvRTJuUQDgN0q51mmmmNXB1W2tC4RuQ3TGCmiXpletH6WtKnWMiTO8a
         NU84dERpSBDfruHSwx6sNsb4d3Ftc9phiqR67AdZzKulk39XVYCBxeq+0lyHcM5JhVbB
         WYCxiRKIzRufZI5gxReiIhXedT6Go1b4R6/ffkOktWQRk0ajhFwwokx6LwP78NFFdgcq
         Vqfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8tTsbTg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WK7nR9CEASIJ1Ka6oCRQnekMQPd2pux+y29H6J07ryk=;
        b=ZVDY4WtEhoNdJ1NKOMb7YXpJVOF3BYbJ0IXhhhDMsudYH5P/bKFukwiY8I2aRy1GwZ
         SzmHicO+5DGK9h9+zruf/tJeCQQGkQHfiNfYUquoU8Ef0DAV32NoTsZvFwrjdxAAACTX
         EbjMgy1dBsorqZPQJ7VFpy8HxHguE1m5tLsHnD/sdtxYlemcc0dQ0wdqpXgLYOSRHCrW
         aSWGjGWYC53Z5R6helge8kS26MxahDETGnEFn7COcCSdWPcIxaWkoeEi0/wjiyTnKJPe
         6rbUQlFcSYClS76OcHzFSgrDboZ6fP3TIm53KErVA2g/bDzCfjwwrT0ggCSxxLkcBNLs
         Di1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WK7nR9CEASIJ1Ka6oCRQnekMQPd2pux+y29H6J07ryk=;
        b=bkrXxiXVTYYbuJRyclNkyPGQX0uc8xx96stBPLsDUDQ5LVo9b5T9C4RGIPcsKyV5kh
         GZjHuWDHgcnksH7YKlFnpWFuCn0H/eRAtUQPzqP1l55b89RoNq1VdBMzu2gn8kIGI8ON
         FSwZJYS4+kQVd4Kq3CaLuHj7N8Ye4yJaF2zZaSFk7unhJMSiXYJsPDTfO12hvVl8HSEQ
         VE6HS0BVWtWFl6UqTLrZr623aYZeTVzbjaBknk1OADUI1m/kHwj9f6zntwxO5QXXSrpt
         RAuVR/bMlTaGv3Yalg+5a3q7QqS58t7abCgZ6LbNYj8xZNyrf6s7VsYOgJpVmN6FmyIU
         jFBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WK7nR9CEASIJ1Ka6oCRQnekMQPd2pux+y29H6J07ryk=;
        b=pJIfdnUi24u2b/iwUCPmB7Pmw0jbFEV3cX1FyqMdYLo6bPZ/uYOiGy0OreLycz5HND
         KfRtL7sLmA4+0DtZHQT8p0VMVnx96ffM2fkFHf8i8rU8Dm3flicRBte8tXQ4CHkMLJym
         o5k7IP6WQJG9r1/VV6v+YTu3+jA3FsfgdghdziH1UiWj1ifowhXrANyT/1VUgy/HD/NE
         ief5Kl2/Yu0PDFALe1YBn9HZuRlKQk8TsQCVNjxw24oY2cMbN1LefXF5ji466IQShzNI
         w8od73NahAhj17cbYudBBGNsrkb+eyiK3Sbm6lbxhsMuvHLQZHnDtAGAd8qDkcRRoYKN
         2QWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302/YKlTu6ecTUaneLZvKOUP8IBtJmE7C/otlqcheM38ZDTSQ1f
	RvvG3uIcb9NrQWMwXpAPHFA=
X-Google-Smtp-Source: ABdhPJyDPQ3W6x+WXSr+uh9Vz1jA08Idx8TRZk0nEPqZXCwZgr6PwSrAColiWaYzBgZNvpD3YaUZsg==
X-Received: by 2002:ae9:e70b:: with SMTP id m11mr20128770qka.32.1607388422822;
        Mon, 07 Dec 2020 16:47:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls6901242qtp.7.gmail; Mon, 07 Dec
 2020 16:47:02 -0800 (PST)
X-Received: by 2002:ac8:6d0:: with SMTP id j16mr26765531qth.106.1607388422507;
        Mon, 07 Dec 2020 16:47:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607388422; cv=none;
        d=google.com; s=arc-20160816;
        b=JrNFmrIg5R83pdv6lFMSMA2satCkSBO8OILPAdzwo2kRIX+g0BbVuzVeYekBLfc1C+
         K3I8OJLDg9IyUA2m8dVJv1/nvy+cCapqvZtI0KJfqu65ApP2kuuKTKiFzfiOHJsm+bAv
         J4ktZ+T2EmlhhQFc9cdAwszmHimjc9n5oo5ixKxmBYSVkFGFGuuzuFRzDVAZKYkC5fyF
         CGonZ6xQ25RaxtT2n6jrnnBVV51cseGhfC/L9drCT6D94RHGVjUOOKBk9epKJ4/8US7G
         b/hjtv02KABNTyFGbSMYu1kkfxqFmP8/6GK4VwRyud4YqTbHhVIb4kNP5TaeUg1pIeU4
         DzJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VZHUufd0g6UdJFDVTYdblkgbgMRwbf0Y/fHI7mLRtWU=;
        b=EOeZAtO8V5gKf/o6T90S0meAlFsE+a9I/abvl1/WeCibjcVkVgy5aN0eJp+MFK6P05
         5DN+hgOn3veZn8DCBoVzEASRYA0ERMk43MzubW/oXznzUxooVYpvsSyLtc6sGLjsmmxU
         /vVDwTKThAeAgk3V1J9/ySf3zjyt19oK9tX9wLTj47Xmy5GeD6V7gh8MGgwnEKaXMrY9
         oc/nBGK8yxZ+GUUt1AikBi9tGeBKAkzykSZTZBGCxpo1zIq5D57IbbDEUU2Tn21Em+sA
         /6DuhM5KRjVywOC4gU6GOiAOwF/z4J9HzfUOSFfF2TdUiUndt51u+TwvZ878hgcyImS2
         N5jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8tTsbTg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id x8si791818qtm.3.2020.12.07.16.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 16:47:02 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id y15so3346784qtv.5
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 16:47:02 -0800 (PST)
X-Received: by 2002:ac8:51d8:: with SMTP id d24mr14423965qtn.73.1607388422238;
        Mon, 07 Dec 2020 16:47:02 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id x28sm11544785qtv.8.2020.12.07.16.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 16:47:01 -0800 (PST)
Date: Mon, 7 Dec 2020 17:46:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	PCI <linux-pci@vger.kernel.org>, Jian Cai <jiancai@google.com>,
	Kristof Beyls <Kristof.Beyls@arm.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
Message-ID: <20201208004659.GA587492@ubuntu-m3-large-x86>
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck>
 <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
 <20201203182252.GA32011@willie-the-truck>
 <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
 <CABCJKufgkq+k0DeYaXrzjXniy=T_N4sN1bxoK9=cUxTZN5xSVQ@mail.gmail.com>
 <20201206065028.GA2819096@ubuntu-m3-large-x86>
 <CABCJKue9TJnhge6TVPj9vfZXPGD4RW2JYiN3kNwVKNovTCq8ZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKue9TJnhge6TVPj9vfZXPGD4RW2JYiN3kNwVKNovTCq8ZA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l8tTsbTg;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Dec 06, 2020 at 12:09:31PM -0800, Sami Tolvanen wrote:
> Sure, looks good to me. However, I think we should also test for
> LLVM=1 to avoid possible further issues with mismatched toolchains
> instead of only checking for llvm-nm and llvm-ar.

It might still be worth testing for $(AR) and $(NM) because in theory, a
user could say 'make AR=ar LLVM=1'. Highly unlikely I suppose but worth
considering.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201208004659.GA587492%40ubuntu-m3-large-x86.
