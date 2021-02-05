Return-Path: <clang-built-linux+bncBCIO53XE7YHBB6UY6KAAMGQENQ5MPXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 60485310155
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 01:08:27 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id p5sf2487649oot.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 16:08:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612483706; cv=pass;
        d=google.com; s=arc-20160816;
        b=EXZg7NpB/Cnb6tDKSCsjidRPIaCVrJzHvB/x7l0YIEFAuCvZGrddSDbe/96RN7I63m
         1dq3Zvf5AjmyUJfh4GsuYHePaPWVypFwrbO8+kMdlAo+/5QJs5Q6Qpgovc+SKMLM9caf
         BefDxVUjWvasFk1kM+Q8Xno2xjBBnkcyObM7GhdVRBGJBdTXMz3iRrVcNPsV8Bf27Udy
         4DxSB6bOg6XOWz8aUvOcyvcuPEqf8XOoRWOgXN8r3M1fSSXMX7HINqGMMttEEPCXnlTB
         b0MRuWehzICzDSwIV9PLWY6z55H7sD9M0tvBZs7RwUrty6Ff9/dhwyg+ArPComXr/Iuf
         2wuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LieLR/f9Ubtzkl6oSjMHSoG/TBpKkMiaSmxszCfzgrk=;
        b=PH7bCFcne6b+Qe/t1SmsvbnNp/Smp1MfyfB3/YblI3Ruhemx5ZPbhRZYkiD+46mTFR
         1D6SvyCP7AEXqceXPZ3JvjFWb2TMT0MwGNlPcYaVgOz4Q6mXUz487Go3zmVlMLucBHxI
         aCknFvongLbfQyYj1PqnMAkzCvTO14foUvhDQlrMy+SCvyw0/y08V3mdnr8YAr+vI78S
         c4vDCLFOGht+xGxA5amj0hrEezyHgG2Gs8JVSyYVboLNNvZHrxsDV0SufnFbNlZFElJe
         oqTKvG0U1OJMD6HuiZn9kSxK4rFSrhWYQcaPXalbDew8IF6gTa267w6d6GBxoM1sJN5k
         dwgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.51 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LieLR/f9Ubtzkl6oSjMHSoG/TBpKkMiaSmxszCfzgrk=;
        b=qTdBBLIK095+35cz4/1dwUFjsU9+Vkb3mG/ywiAiuxTjZQYPzdzewB0xRPcVI1wnLu
         IKZQQv3ZF4PWG7/+buf07a84vKJskQBOpsUHsP1Vyd/AS2rEi9azMwhtqkE91phKeT5f
         GD9WzG6KZNr4QoLvQhewwb1+GIefk3vuZukLSTjloX1SdPFKYb6ydNW+FZoH+MYtd1ay
         qqt4sGARaYngcokCibC0hIT9w6o7MYaB8v98dx3h6yuBpgPI6myA1t74fohepygYp8Pz
         bQ7pQn0aW0soq9SH7pTou5//+o9HrOlV5xJmdvf+skmXwTeCwcohevXWo4xDZp/lJIrW
         SORQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LieLR/f9Ubtzkl6oSjMHSoG/TBpKkMiaSmxszCfzgrk=;
        b=KNFcnu8bMq9jh3XyYZWQNWLpa0mHMjSWbQVJHxaSZzoRHeOb8rr9izZOQltbucx3xH
         w1eW6O9+yqxtMYSR70npWUJRWSEMpKMvQGSB5zgbgYnrrmpKJM0EfLUZvSeUBwzD0TGC
         LMGtn31Un7Px+1cckGjnFsPbMMvcV3Y9E8u2hL2EO9N0jUdmWDafFCpNgEsG8/+REQ8m
         NHcOMp37unPnWQ4tunNx06hyNMFjw5qLycsKKflOYxDQDSLYkJmxO29fZmdRznIZjg/2
         nhigecyMI93h3tyWI9R+TIB5JngEQck6gHuptW62Al3F9LlEpI69oCnFkebwJZn0/1kQ
         Xyag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dDjJ1cFtgEQRQvbQDuweVbZ9mfJ1QsQJp9qJ+wd48bQfecBWU
	jqLIRG1dewwsPBTvAQTdWCA=
X-Google-Smtp-Source: ABdhPJxts30wy6iup7Gbw9+sJOegeXTPqitQKJsnkmMR7MjLqPPAnfQyCpJDtxip3RXhy6ROeQX6fg==
X-Received: by 2002:a4a:d50d:: with SMTP id m13mr1538710oos.2.1612483706407;
        Thu, 04 Feb 2021 16:08:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:14a:: with SMTP id j10ls1803267otp.4.gmail; Thu, 04
 Feb 2021 16:08:25 -0800 (PST)
X-Received: by 2002:a9d:784a:: with SMTP id c10mr1524056otm.132.1612483705935;
        Thu, 04 Feb 2021 16:08:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612483705; cv=none;
        d=google.com; s=arc-20160816;
        b=qK4UtKVCCAvl3WW6ZvWmAQrJpbNPVfr7z8X2W5qs0aPxg7nUjhY8WlWo2c9uo5H+TD
         B0maVHsEuZJrYHSICNOxQSMm10fD/TuIfNR6S75NRPu2MxdHtEsOGZfRRUb/sq+3KVs/
         Y0acCbz6l+k9S7Gu7ErpHbmAiyB7acf42sAkEn4Pz9ircpB/lGdraEa/eQ4xcY9aQ6Sj
         Ff/jB7a1WaAGysaEkIZCr+oi/C9gfd9wpJz7BkvUdsa8AexTNZiGQdAW9DBNuCYcO0KK
         5BG9/w26yH7hX+TWVroRvTXIHGt8IjoTV2XQ6yMBtNRtveowHTIia10PGegmEjKqYe1G
         RtFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=WJYooe3xF7/mefKhohc7tEDBTk22wMNA7vkmjEV5aGE=;
        b=wOLrFh0Ys0yu+LUWO6OsjWso2HE4QIkRMZmQmZPP3a2R4M2X8SaQRv00NwzrlriVaw
         SkP2VzkFS+VfN1uE5INyLztG0WfHI+iP2rYuw/xrRtpyLs4ZaSf8zxaYRcFxxs66oZaU
         eOxZL6xk7+ej6Gmm5CvShlxdxostC4jG74I3YZlTYnL/LWRoq0NbxFh0xn0iuyp6yYwa
         VjHnZ8ddKZnXNwDgDQTqXY4Sxd/Sv4olxecpbL4G96AZmK54onwDAK1Tx0Q5SINyLGxA
         Gi2CmuvXgFgQWQ05tZEBD+hyaTI5IgtjlbaCpUAVGWvGjuQeHsq5lLKTVLXXRq6yyRXz
         3koA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.51 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com. [209.85.219.51])
        by gmr-mx.google.com with ESMTPS id f197si738832oob.2.2021.02.04.16.08.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 16:08:25 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.51 as permitted sender) client-ip=209.85.219.51;
Received: by mail-qv1-f51.google.com with SMTP id j13so2650796qvu.10
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 16:08:25 -0800 (PST)
X-Received: by 2002:a05:6214:446:: with SMTP id cc6mr2003665qvb.31.1612483705438;
        Thu, 04 Feb 2021 16:08:25 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id e15sm3360111qtq.43.2021.02.04.16.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 16:08:24 -0800 (PST)
Date: Thu, 4 Feb 2021 19:08:22 -0500
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Borislav Petkov <bp@alien8.de>
Cc: Ard Biesheuvel <ardb@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	platform-driver-x86@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <YByMdh/qDEwreq6S@rani.riverdale.lan>
References: <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
 <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic>
 <YBxqnosGDroAnpio@rani.riverdale.lan>
 <20210204221318.GI32255@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210204221318.GI32255@zn.tnic>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.51 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Thu, Feb 04, 2021 at 11:13:18PM +0100, Borislav Petkov wrote:
> On Thu, Feb 04, 2021 at 04:43:58PM -0500, Arvind Sankar wrote:
> > This should check EFI_VA_END instead of EFI_VA_START, and maybe throw in
> > a BUG_ON if EFI_VA_END >= EFI_VA_START.
> 
> No need:
> 
>         if (efi_va < EFI_VA_END) {
>                 pr_warn(FW_WARN "VA address range overflow!\n");
>                 return;
>         }
> 
> We already check we're not going over at map time. And our runtime
> services range is hardcoded. And we're switching to that PGD on each
> runtime services call.
> 
> So I don't see the point for keeping any of the assertions.
> 
> Unless you have other valid arguments for keeping them...
> 

No, I don't have any objections to removing them altogether. All the
comments other than the one about changing the #define's only apply if
it's decided to keep them.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YByMdh/qDEwreq6S%40rani.riverdale.lan.
