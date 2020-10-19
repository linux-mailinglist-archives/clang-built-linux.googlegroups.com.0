Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJGYW76AKGQEKOBL7DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 89820292E92
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 21:42:29 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id o17sf401423oic.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 12:42:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603136548; cv=pass;
        d=google.com; s=arc-20160816;
        b=kXSH27u22v2QeGGGp5ITGeRCdf8Nyi+a0vsuQ1RP2iaUMR6Mbq61R+UMNs5wlyYJ//
         oXoFlf9/UkTM0EJm9EZii5bYBjiWSKMVew+qY8vDFQhnM8N8065noLmnV/7W/6uS8BxX
         GQ5eDDgskOsKG0uEaVzvrRARvu1LNKdIcJQJL81LV+GN1PXA646Qz/nJtms3Ah945My7
         DlOll8eYTijcs3yu2b104HFszP7895+CVCGVksm7f5C81/zn2/OIy4nvPsOpSj+XLxdZ
         2i+16nZswjoX3ntxHaXf2pjC2iT501umIXA4mrKXvKRifxdV01nST3X5dpET1Le3NxWY
         Z8Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lp4WCJlztCETjidqnfy3Edrfz+fwwI4kD4PZd8EcK60=;
        b=hKMG9cc/BMqBOsKkuSkcv8pcV/mlcLD3EpC/8i5TfiMtYSmProV7gVYZujG3dciqmO
         vwZKgD6ck36owCLBrxNYxpT9X8J/Jt9/Fkfr0QxqYtWp+3kHx/nY515+octWR/yz8CWv
         8znZjO4NDYQhXfIEokv6uZPwtKVhmbXaCej+KHrJKy9rcjTj7CxiK8ZuHtq4tzeZVfwz
         bHVs/2SxE1yCEJserFeZ13Z2wN4lpdz7m4MEcpFDATGlD9EOOwX2YKfeMGYOieeFatRc
         LeymKPkuxTT9IT+N6qLoPQv6VCQp+9Xy+NTddw/BRWr6ikoBPekvuw/8ECP+XJTYb751
         9xig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqIoQqfP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lp4WCJlztCETjidqnfy3Edrfz+fwwI4kD4PZd8EcK60=;
        b=aO6EeAEjqOIN+n/dPI4wWAThqitWZDLz5MC1THrMslrtiHV43HMsv8uR2TWMlMgmLw
         nuagNuLkK78uAES09JzhfluMmERiP/kBCDijkGCrNJSLHulJlSBfs8JyfGhOcLb2wscj
         eNyUiANAmpJVUL0ujAjX0CfVxmz/nLZTupK6YxJam/AL+wqJKyNTTUgbsOYPg59ykzqo
         k1XWlkPahTP15CWLEx7Cu+DULdERkTMDYrrwx5MM8MQoy2hVQ0kD6VDOze4LpkYjPnfr
         oj3WgRKDruzx3B/V8SABlA9OVkzKASS1du8viZWyvCYMcyE1P3iX9vZ4dShOeEscVWIM
         /LUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lp4WCJlztCETjidqnfy3Edrfz+fwwI4kD4PZd8EcK60=;
        b=qOqf+185G3Dly1ySIUml6JzMQq4tJ4L4z0YxQesXUAC2CFB6rWeAFPOC8AD/20YliQ
         hHIgi55dBD/D4qaWg46GFLV3/0MonNItaPCIyqZNFjZS4iJU8h5xy/uduMpl8UGAH7th
         zgJ7hf9TdDt9aJXFmdNCh+1PLo+viHcDWHeoVmDh6mEXr5ajsryRZMNYK3yQ0k7gsuFx
         phcky7H7oE8IRFpHJHxK5uZ3pG0/5TqRntZi6E2A7TKpn9yoObW3FuUW4BNiZNmBVzCZ
         mJoC6Sc+yO+2TR34ynrA9mczYfYVrkgMXOThCV+0DgtZi/2vQvFvoAsy8P1LibTTI1mG
         CgyQ==
X-Gm-Message-State: AOAM531cWINz9FaHGarpus9tnzdstxTtXhqLj5VOg5VCjt3OQy2YvY1n
	pJ23kVyMK4Ht10yuVRzjnaA=
X-Google-Smtp-Source: ABdhPJwBtNNLIIprDE0gKAR+71ZPl0fdm9YkahlkxHEumGYoQdvk/FFloTs6Khq/PROVYpJzUZegGQ==
X-Received: by 2002:aca:50d4:: with SMTP id e203mr642404oib.131.1603136548199;
        Mon, 19 Oct 2020 12:42:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls150340otq.9.gmail; Mon, 19
 Oct 2020 12:42:27 -0700 (PDT)
X-Received: by 2002:a9d:682:: with SMTP id 2mr1115574otx.317.1603136547821;
        Mon, 19 Oct 2020 12:42:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603136547; cv=none;
        d=google.com; s=arc-20160816;
        b=NZpk1TAk19IfzHhbM1Dyw19uSLxEa7XmNOa07cWdgyJETgCByd2JK7wDApXyeqKDSP
         mJP3GwdH9Pzb+pQNoyyPh70aiKHZpb1Xb5HjARKukFxninmQU4WCxOhWSAXqelWXCxgS
         POeqIbd4KabpTGCNEZGOX+o4TbaPbRA5Umyeu+wSHNEQw3Pk5AOVMa8jecDIvp9d5wqx
         gMU9uu+xq9gnKgLoFLGuOUQzFUWP011oJHSzVOjWAkYLXIOahseEaaI13pmyDww16qIc
         kHXW2cagbDIHkaI8aebNQraXFDTlYXl0NINegMqyhxQ+rIXuAlkPz8nz1PNj4mO1J59o
         r1hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=no6WOfZDuAXhTDfVia9Vunkz4L7BthY0F8m0jo4//vs=;
        b=yibKNRNei1aQ+AuMDp575C4MexuG365tJ230lhqu2/yGAJDFztLAiK79QOxlAH2ImU
         Br8mXNqAwHL41C/ysoV+3aJj/wsoZymUyUfLPZXFJBiA6/4P0Ujst7NEQFzFrYYxUqdB
         uFaY+JdAW9M6dZjPTXbQVveeZPpMUP7EO0tctjstiM41vA7kx8j1NhTR1ks0VphAEd6d
         V09eDgFTrAQRihM6ZJ4wqnPIHAiZ7RxI8MJjg4Qal7HvToq4sJZnBOAl4wkNSDx7cq4v
         E/kC2c7c2PH0HPB8xHIPgiLXzq3XBww9ObTCh0SQFveKgyjiM5lr7ITk9tGVATinGp4+
         Q+sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vqIoQqfP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id f16si100135otc.0.2020.10.19.12.42.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 12:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id hk7so375114pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 12:42:27 -0700 (PDT)
X-Received: by 2002:a17:90a:ee87:: with SMTP id i7mr921476pjz.25.1603136546933;
 Mon, 19 Oct 2020 12:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <20201017160928.12698-1-trix@redhat.com> <20201018054332.GB593954@kroah.com>
In-Reply-To: <20201018054332.GB593954@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Oct 2020 12:42:15 -0700
Message-ID: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
Subject: Re: [RFC] treewide: cleanup unreachable breaks
To: Tom Rix <trix@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org, 
	xen-devel@lists.xenproject.org, linux-block@vger.kernel.org, 
	openipmi-developer@lists.sourceforge.net, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-power@fi.rohmeurope.com, 
	linux-gpio@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, 
	linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, linux-media@vger.kernel.org, 
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org, 
	linux-mtd@lists.infradead.org, linux-can@vger.kernel.org, 
	Network Development <netdev@vger.kernel.org>, intel-wired-lan@lists.osuosl.org, 
	ath10k@lists.infradead.org, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org, 
	linux-nvdimm <linux-nvdimm@lists.01.org>, linux-pci@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
	patches@opensource.cirrus.com, storagedev@microchip.com, 
	devel@driverdev.osuosl.org, linux-serial@vger.kernel.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com, 
	bpf <bpf@vger.kernel.org>, linux-integrity@vger.kernel.org, 
	linux-security-module@vger.kernel.org, keyrings@vger.kernel.org, 
	alsa-devel@alsa-project.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>, 
	George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vqIoQqfP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> >
> > This is a upcoming change to clean up a new warning treewide.
> > I am wondering if the change could be one mega patch (see below) or
> > normal patch per file about 100 patches or somewhere half way by collecting
> > early acks.
>
> Please break it up into one-patch-per-subsystem, like normal, and get it
> merged that way.
>
> Sending us a patch, without even a diffstat to review, isn't going to
> get you very far...

Tom,
If you're able to automate this cleanup, I suggest checking in a
script that can be run on a directory.  Then for each subsystem you
can say in your commit "I ran scripts/fix_whatever.py on this subdir."
 Then others can help you drive the tree wide cleanup.  Then we can
enable -Wunreachable-code-break either by default, or W=2 right now
might be a good idea.

Ah, George (gbiv@, cc'ed), did an analysis recently of
`-Wunreachable-code-loop-increment`, `-Wunreachable-code-break`, and
`-Wunreachable-code-return` for Android userspace.  From the review:
```
Spoilers: of these, it seems useful to turn on
-Wunreachable-code-loop-increment and -Wunreachable-code-return by
default for Android
...
While these conventions about always having break arguably became
obsolete when we enabled -Wfallthrough, my sample turned up zero
potential bugs caught by this warning, and we'd need to put a lot of
effort into getting a clean tree. So this warning doesn't seem to be
worth it.
```
Looks like there's an order of magnitude of `-Wunreachable-code-break`
than the other two.

We probably should add all 3 to W=2 builds (wrapped in cc-option).
I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
follow up on.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkR_Ttfo7_JKUiZFVqr%3DUh%3D4b05KCPCSuzwk%3DzaWtA2_Q%40mail.gmail.com.
