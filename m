Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSPR6CAAMGQEIZFKVDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id A391F30FAD9
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:11:22 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id a1sf3672109ios.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:11:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612462281; cv=pass;
        d=google.com; s=arc-20160816;
        b=lHsJEHLWjnKnh3qO9POlgkxygBiDpaNPvspGtZ2nXVHNz7XFFGLrB+zNpTrig4c6wR
         WIgmOySrX9A5SfYv/45TBej8Mb4yRFiuTVI/EpBMZTvyUB6ZTBN6P8HlXg1gNN9SnOmh
         QWVtjvYZ1CjO5RCEk4B4wuVuym8pWh2htHAgwxFlSdnYiEN/YfSj5ZQ9yFNVncheHgBd
         Y+epmijK0TVbW28s8D72bOz5V6yaZg3aBYG/e6evV/8rFgt27k9I0gPXv8j+G7TvMOkC
         PcTFmfJdUE9Zpsj+siwy6xeU4GCyn3vBcKD6uvRrvobVLezuW2UG/kz1kjkG6wfI+K0I
         bfFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9xkn9bA1jMoPY4xfeaqbZnYjYWvxq13EIdmxerX8Gtc=;
        b=ru8R0rQqIF+dKKia1uVmsDInSEie6KJs4tC3B29PMBXeH7UMdbspKTGW8cO0bkcFZJ
         TrJkfAF7/yDPpCWL99faD+ha1AYK2AM48ACnBWnHRGmWf1oWnifvKe/cXvUSqW/a2d1O
         8+aQfJPdCJalriSGtcKfR/se06FYUinwMN04qCMFSMtXl/OAHRNR09O9sTwdFpbey2rA
         ZSPVEhLGsmk/rJ3yT3hAUuTEMyhvUdUVnzKDf4T5MoZ4E0em24aNJBzwCvhRYpRfqkGc
         uva5f9VZtCwq7UpeprRRxKDx5h8+FP1JzAtCvMjcafcpTrHH2x3Ee7QRQotL4GDwVBbh
         4Isw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cZCZYndl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9xkn9bA1jMoPY4xfeaqbZnYjYWvxq13EIdmxerX8Gtc=;
        b=AbJLS9I38u5Qcg59JPi638up73/bCh5pExkv4TTyH3it/c7Tya5ZzRSiWaOwApUadH
         ZIAsRuuF4KSzNBL3ZVgVAL9gXNL1CsF7h7qIo581U7tjA+iuws3Ps4epdkfWtj/8foji
         YcfjK8Dap6EST5x8lCyj/7dMVSH8nQEUEKB1tWahJ+34Oxil92z9j+pUZfH+/q+dHsBZ
         76iK2Ont83OcInqr7UaYAheH+90SoXrRHPDHjaygsQvNTBu0ODkt4jeeBViukfNM2GSb
         c4zwjWzkFKPrqQS/gQH5zXk8cvvXHmIamPMbTlAq3Nmu/J2OjZdGusaABFq7XDMQro1Z
         RsmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9xkn9bA1jMoPY4xfeaqbZnYjYWvxq13EIdmxerX8Gtc=;
        b=O8R6wfDgmaQ8ATBaUmH2NKb1JCt3AClKs2b/90Rkp18YTOAvHnx98/UhD+amg2GUss
         ueMzKUzNSfiYHIG6XHwnBnFdY5zDRaHU+VLQo7Q1p0es7dAZ5X7lx8f3gLISqYcnFZ43
         fzk8pYAIOU2Gi0epnNhXb9kKdJy2RmcxV1N02v+1G8oblBy1SbQhwYQcUBfxX4qNJvyL
         1byaAghX2thfdULvM18Hb5JjegE5pL45AE6VunyQQ5eS7RaL8C96JoTp2pD0E+qgc/QN
         dI6m0iVl7EEaVXVviM29QvjdAnUbl/TY4U3TRkP/Stj23peIduhIjprFs4iKwgCpQq2d
         4wTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318IX15evDEGUQ8zfwhBQWrAc7ShzcXVC8mzysLdMSmfA+iszLS
	7FyVO1M0fZtVorKz+fWyuTE=
X-Google-Smtp-Source: ABdhPJyaKiHk65yq9cNRCwUfi5p58VGJtGiYBR4IMlTKFCvHrisW9kcrZi00a9EmONVmQKiSaN2SmA==
X-Received: by 2002:a05:6e02:de2:: with SMTP id m2mr306372ilj.157.1612462281639;
        Thu, 04 Feb 2021 10:11:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7f0f:: with SMTP id a15ls1548605ild.8.gmail; Thu, 04 Feb
 2021 10:11:21 -0800 (PST)
X-Received: by 2002:a05:6e02:1bec:: with SMTP id y12mr326617ilv.214.1612462281165;
        Thu, 04 Feb 2021 10:11:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612462281; cv=none;
        d=google.com; s=arc-20160816;
        b=mG7x6wzFQujvP+Y94Ri7K2Exzb+tmh2lHhZEZMngw+SSkegcgxfej9iA7KfgvYlQ40
         IF4mc+mEKpUTO5PfyOqX67QfLHVHCYpq/qUqZwX2k7pmMAutHGSMPbmabOQXD5o9gfSk
         8SzshIPyekbODpqUxauErTKmBorK9NDPsbTO1wUS9rn/2PSGJIA7K8yw9OFLMhp5ToB7
         hdlGUUC3KeYxUwisiyUMi7Cyeqxxn6Xu0D5q+KpDZbfRkdY61jyKTXGhquPCzeaf7Zmg
         2IQBB3hI2xiISPMKQtbO2ZbsoGwyIvqlO2GryAVwxTnu3/ANK3cLIuIv0VcVzJIgaI90
         ejrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QVv//CYZSXiBN5UcV29TpUtrmWjnzVRxC11QeFUTVws=;
        b=NHX+LEP4jp/k/ApneboJNnUuaNqrfm2/e8z60vGh7FTUmbtCJNUcF+TZNBHvCr+mU1
         boBAYYnghhXo3RcchtMnILV7wmXkANtBLyWUTEe4W0rG/KYw2vzpgBg0sTL5eDwHPcyZ
         vjVghh/bUD81ggQG+y2BjaI/C+sF3GqEeZ6qkzxnHExDmka4fVyi59a1fdIVV0MUI45Y
         4coYwH1kSX/6LI9LIOdCxH/oXwQMFXYvtYEC4H4/u4FriYygOSOQum929s77kfez9ZeA
         eRbF8AWEyiBwAeDwoA2FOI//Nk0GckMWF1Gycuh9xOBSNti3B0Xes3I2Hp4M2esOyu/M
         rnRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cZCZYndl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si231939ill.1.2021.02.04.10.11.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:11:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5FD1D64F44;
	Thu,  4 Feb 2021 18:11:19 +0000 (UTC)
Date: Thu, 4 Feb 2021 11:11:17 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Rachel Sibley <rasibley@redhat.com>,
	CKI Project <cki-project@redhat.com>,
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>,
	Filip Suba <fsuba@redhat.com>, Memory Management <mm-qe@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	skt-results-master@redhat.com,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Jan Stancek <jstancek@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210204181117.GA2989696@localhost>
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com>
 <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost>
 <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost>
 <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cZCZYndl;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 04, 2021 at 06:59:49PM +0100, Sedat Dilek wrote:
> On Thu, Feb 4, 2021 at 6:50 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Thu, Feb 04, 2021 at 07:07:49AM +0100, Sedat Dilek wrote:
> > > On Wed, Feb 3, 2021 at 11:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > >
> > > > On Wed, Feb 03, 2021 at 10:36:32PM +0100, Sedat Dilek wrote:
> > > > > On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:
> > > >
> > > > [snip]
> > > >
> > > > > > As far as the panic, it was was triggered on our upstream LTP test, I
> > > > > > don't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > > > > > bug which is causing our jobs to abort while updating the kernel for x86.
> > > > > > You will see the following in the logs:
> > > > > >
> > > > > > 'failed to validate module [something] BTF: -22 '
> > > > > >
> > > > >
> > > > > Guess this is with CONFIG_DEBUG_INFO_BTF=y and LLVM/Clang?
> > > >
> > > > I read that sentence as there are issues with BPF issues with GCC, not
> > > > LLVM/Clang.
> > > >
> > > > CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:
> > > >
> > > > https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369
> > > >
> > >
> > > OK, Thanks.
> > >
> > > Can you give me the link of your (above) response in the
> > > ClangBuiltLinux mailing-list?
> > >
> > > - Sedat -
> > >
> >
> > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/oNIZyE6fBQAJ
> >
> 
> Thanks for the link.
> 
> You need a Gmail-account to be able to read the mailing-list?
> Asking for offline readers.
> 
> - Sedat -
> 
> [1] https://groups.google.com/g/clang-built-linux/

It should not require a Gmail account. I can view that link no problem
in incognito mode in Chrome.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204181117.GA2989696%40localhost.
