Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWN5TL7AKGQERNBQLAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 147012CACB5
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 20:51:55 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id o7sf1493136oom.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 11:51:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606852314; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZFsZPTHRfhTT6DTs9TMErXB59q3zn1ta6hkkXlq6jJgbW7N8QIL1j4UlKhsGGUa0RZ
         ONWi7+ECvH0hKIWJVk6MwWEcxUFMF3W0u6abxFzII0EQwpvRMWaWGB+R+uVP5j/H5W7E
         A90HZc+GrjwxHLDDGgXZeTZBb/1QOfA0DxH/+t9bxYqxnPnZ2fvZP1/hXNYcsVEUcxyF
         GVoZaxBJsdH4GZEsktXIMZ2cq3+jjBFQCdcKLenAiaAB/cT7js2CQ22R4E6uOGPXDzLN
         gpw2T5RvfrpXEy0RterpTwsENtxJnxeRSg3qzBPIfWkj66geORqTcMIEIdjeZySVKdA9
         wpDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XEzJmyo27mR1+DOWC9x/5cM7FKahGBHXU3WIiR70SwU=;
        b=MUAWrbEPNqAXByKbFnQEv5xlvmrwHrST3oIEHsMguN1uAu7HIYnyd5nit6aqFoFcrB
         ejhgXShxsLB3Or9T/ixcHjwGTs5IPWauZC8Ozk6QdvsVIkISXWwBBzuXo3MyRsanQ6FO
         gfisqBIjb5zTtEwyME60+ehXy7dEcADcMlVU5FRZnhe9ZZu3JLz49S2M+Dpgg7OxMPcy
         eLf23LxPCrAINnw2Q66VsDuXnoqfu3bQIlw5a2M5V+MHnBtIVwBBxerzSAv0aeoFY4tN
         fenQ3LKAwkPnBZxaF8EbFzO8q1pem2nZ0pZup/RmLoPgs91cUSKbX0uUhf2c/usWBHSP
         SDNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MU1J+Qtj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XEzJmyo27mR1+DOWC9x/5cM7FKahGBHXU3WIiR70SwU=;
        b=EVyRaHpc1tlT/nas9qWzWvXKyFxTHeDKGUAmhblIbTZr4T7CUFQZbqJryzsuMe75YX
         arJXm1/A45wUDqu3OLlOuJryaIQyDacBAPTPMITuMxD8g3l+Vs/Br8lU3MZ1+iRzViHC
         iGVgTYNbi0+w8b1yCZnA88cc2WA2nsLo5CRV5G1AioO8MQ0fOUNb5WTeUrITrGgEr+0T
         51k/0rLT20kT9eXCNaB6hQy5czvAM+WuA0HQVFdoh9BLsge8OZs3i1dmoSfmb2V7w+r/
         esQ+0E8GLBlVw6Mj2sSQLBxXioLzkY2cuURH2OjyvSEnWEhWqKcEAY8WG5LYHhWnjdpW
         vEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XEzJmyo27mR1+DOWC9x/5cM7FKahGBHXU3WIiR70SwU=;
        b=gT6jvH5PoOMl3YGB3KcutiA3ctjxgMdG+xC1T6lCnvxu3mPmM6NIiuvey5glDstEX8
         pZ2fKA/r0nkyMKaNFb6gc5bHf9RwaBlxgQGvvojleR+fE9e3LqKN9LZNFyWVL7WPkHsE
         ukqu88LcroPSetvCWC61yAyoFp6fXJQeyQ7f3Tz7kg+RSx2qbhoDVsqAL+EGsiAP3SLV
         BerMwOukbE+BH48SjDAmbB+LZVBSkQmTJmNrLbTADnHt/iegYOfdu1ROkF7VLR3hj+Zn
         OwuxsjUdNF2ERi/o1Je8xaV+zncNxV6rAzOOVEbdbBDIZQvLVXQIGiGCep9DHhqURXkF
         KgnQ==
X-Gm-Message-State: AOAM530IJwoPynj97M8psOWD6LXWA8XdLbz/s8DJxiVplxWnv2ut/eDI
	Tj8SuJVbSvhHxoAs72whTLc=
X-Google-Smtp-Source: ABdhPJyzn7yNrnm8Ncb7onw1dxWn8zmVPT+0ZTdNM+MLmFq7ObbE+1RxlzjuC4SDo/Vr4F7uZs9fWw==
X-Received: by 2002:a4a:338d:: with SMTP id q135mr3054284ooq.21.1606852313879;
        Tue, 01 Dec 2020 11:51:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1118:: with SMTP id 24ls759349oir.10.gmail; Tue, 01 Dec
 2020 11:51:53 -0800 (PST)
X-Received: by 2002:aca:b806:: with SMTP id i6mr2897972oif.115.1606852313500;
        Tue, 01 Dec 2020 11:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606852313; cv=none;
        d=google.com; s=arc-20160816;
        b=h9bJOEK0NT3/BFtZBSoHGr6zKdDdhNuc5U6w0nmNFAeWn+OArLUqwAD7V7ddyx8hUW
         eNj2lYFLUC8/NHP97IHdX3wJLsJmdpOgBa4EBgnZvPcMSE960eo5fQTCLxDdqWOzlZOj
         GIymEtxTBWzuu+JL5N5G6txxWE9rWGJkj4dCu3CXEN6MRCcPBzV4yyyC51K8x+NAadIS
         qaGpNleXKNR17L7j7Qw2qOfUKRUzKvmA0KX3JAOFNGKF+/HrQGKRUaSaXss1QSapthZc
         wnnCTUvDvLiZjUvCvQxhfxmT6HCrDUDq4/2fCKS022CgJvaAAPa3rHD+W66/1KLEeBjG
         Nw3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zJhY8u/xgI3NwUsMsFhtkWUYc2YVhnaebCX5nl2Ru6Q=;
        b=LTDpk560rGo2G7rEL+tqOH+vCVxlzxxsO+gMhj+pDYsfSnNLe2MkPWBZPC9utQNSVm
         ombQJSbGL4PUx5gjtEfEJ6ngoboftx7RPlZuubkDUIs6XsdJCLfdCMFqYGQUL5C9yRRq
         4aBi0NoGrRGPQ0tlP6kG8S+AXk9YesOWv2QOirwu3Jcbteufs5SU7j8gh59/+YvJSgFS
         rrDLO/Tkrms1K8VILDHzh+/NMPffWU2/J3efTKulg+CNW2XC9O9yFT7qeAS4/L26bcJU
         SdMgOQmqbiCN8kz4IlxZ2Ndu1PsAQJ2rzZCIuF0FpZy/0GC8c7ZYHycI7Q2yJlwQui8F
         fjyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MU1J+Qtj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id e1si103773oti.2.2020.12.01.11.51.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 11:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s63so1825364pgc.8
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 11:51:53 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr3997304pfy.15.1606852312900; Tue, 01
 Dec 2020 11:51:52 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201130120130.GF24563@willie-the-truck> <202012010929.3788AF5@keescook>
In-Reply-To: <202012010929.3788AF5@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Dec 2020 11:51:41 -0800
Message-ID: <CAKwvOdkcfg9ae_NyctS+3E8Ka5XqHXXAMJ4aUYHiC=BSph9E2A@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MU1J+Qtj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Dec 1, 2020 at 9:31 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Nov 30, 2020 at 12:01:31PM +0000, Will Deacon wrote:
> > Hi Sami,
> >
> > On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> > > This patch series adds support for building the kernel with Clang's
> > > Link Time Optimization (LTO). In addition to performance, the primary
> > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > > be used in the kernel. Google has shipped millions of Pixel devices
> > > running three major kernel versions with LTO+CFI since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM bitcode,
> > > which Clang produces with LTO instead of ELF object files, postponing
> > > ELF processing until a later stage, and ensuring initcall ordering.
> > >
> > > Note that v7 brings back arm64 support as Will has now staged the
> > > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > > on fixing the remaining objtool warnings [2].
> >
> > Sounds like you're going to post a v8, but that's the plan for merging
> > that? The arm64 parts look pretty good to me now.
>
> I haven't seen Masahiro comment on this in a while, so given the review
> history and its use (for years now) in Android, I will carry v8 (assuming
> all is fine with it) it in -next unless there are objections.

I had some minor stylistic feedback on the Kconfig changes; I'm happy
for you to land the bulk of the changes and then I follow up with
patches to the Kconfig after.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcfg9ae_NyctS%2B3E8Ka5XqHXXAMJ4aUYHiC%3DBSph9E2A%40mail.gmail.com.
