Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6OPYT3QKGQEA644XQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 233DA204300
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 23:51:54 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id s9sf13581948ybj.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 14:51:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592862713; cv=pass;
        d=google.com; s=arc-20160816;
        b=ja0NY0reILLcG2qtctQun6aNYJNo5NCwNURonecIfszOjw83OGjsJ1TNOhHZXyMCwX
         xADCEv1h/ssdvi54ejnj1hPcgD6692R1Q07qLEiCLb8vOrTzicnjjtiUY7yLMN4lmewg
         FhzMAR5Qq+ixJO/Su2TKf9YZbi0OL7viv+y3Qsr7cMxwEMQqosNzO3vK7eQI+EUrj5xB
         GE+s1mhsp6zhiZXHvFTkoZ/62RVjj/f8pW7l2oa2ekTLnMlMYramo1UX2EzpAuRv9X8a
         wriIDviFe838SyoS2B9lyJG6RycmnRQFv5uSnwyQz8WbCE/eYGTnM1eUqQCQBO7923r9
         +o0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3zxho9dGCAsdXFZ77MFDa220fUGA6GU3/uLsWz7dREw=;
        b=ZBKQ6BpBRVz2ZWK7YfNKQcIVKlEDVvMNw2ax0x28NB+CgAhfA3AxQuP4VwDf8ZEstJ
         DEksBDY7W3e/ObRt7tzLLljfPZ57mH3lPWWzCeWT8S+Twvat+exaIj5C7NFYuEEf6kf3
         HJXlw9o31qorzVgNFf9qhVZXDEngpFXw/ryox75FxpgKJyb5e5S/QaOYxIzaXB6zU+C/
         JxTzXVEXWIOui2Hpw7+ZNzTIAGz7xYnkst/pvMQ/fNLcRxhp0AZCdoI4Ih4iVj3vWSdQ
         DFQEDS11yicWQcQ/ZO4a6qwD/Y16QhTXuiIaJoNbIrW+7P4MmwEASuF4opkSxw6Ssn1u
         ffYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uu67yW6Q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3zxho9dGCAsdXFZ77MFDa220fUGA6GU3/uLsWz7dREw=;
        b=Ofwe3AqtD4vZTubsaqXEuJd1CvxUyApdc2mbWWTbihqXIYN+AEt5wKnbN0Wlnksifu
         KzbwO5bEW0Vjh9S0kdx5/H7KkXwllXTTxkSyfaGqqeYyOoQRIal142Q750iMk/j2ZQuo
         Z2Sub5fD6ni5dP5kaqa0J+ki4eaqU10xxGPNbd1ASOtYL0cIz3VSe4lHbHYd2wS5u0yx
         kFlyDXcb7ZOB1Hto+fDQkj67KBrCryciMX0RMJnPvGljtyShrzfM/h4xWRbBPw4FV9Ao
         kIzQEB/kzRzRYfHCna+j4mNinJSvd2apUa/e8/FeAEaJeBg47E5g9LDHZBWaw8b/rbpA
         vQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3zxho9dGCAsdXFZ77MFDa220fUGA6GU3/uLsWz7dREw=;
        b=Nh5NSX35sc748cyPzaby0iGhK1piQDE7WIw2rUWNo/0EMWOf/gvydDqUkmm0KryaBe
         ees/W0nKcfq+h45Qw6EKbrnNWYizW8zSAtvoRB9bQBoH7x1b4MzaZ8rWCjH7FNfigd3u
         w+4OGhNdLNdr4iHoLUrdY+lazftkg5zL7tKwELz6iIKt/fL7oYO29nMs/ZObpXUajMU6
         dQiQScshZrrFalXSv4uZcoqbk++ah7m4WoyJjftecwyNXvuwOQKOvOE7RO4XJpu+V8dO
         Cs2BiK/LC7/Y+5qAcSuP/eaf9PbNieXVBZxz+Ww3uMR30SBEB6AzphfLVVJzBbr3Xy1o
         yEGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307uryWmnxJPy9/6+qNsZUjBJwToxIZcrfwvhRQgdWOqLIAUOUe
	0UBuo3mJ/hffu4Hh4QBni30=
X-Google-Smtp-Source: ABdhPJxFLd+Z4I4e83Bp3895ntJIrTMHph7pIis1EPlxUW3vbRB51bTTYo9eWQjpFpWriHYvDN+ToQ==
X-Received: by 2002:a05:6902:1007:: with SMTP id w7mr36062879ybt.217.1592862713169;
        Mon, 22 Jun 2020 14:51:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls7013532ybj.4.gmail; Mon, 22 Jun
 2020 14:51:52 -0700 (PDT)
X-Received: by 2002:a25:3782:: with SMTP id e124mr31832038yba.403.1592862712795;
        Mon, 22 Jun 2020 14:51:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592862712; cv=none;
        d=google.com; s=arc-20160816;
        b=jRPGT/MgNC7NJUOFd8Xf3Vpn/Yskh2sZnTJ8YeOKiRy0ErT1bPWnZPnGOJuM6JckB8
         wRovCLisnb/g2TV/z72FlK7wl3+HpUA/eqZYRHbblvE+5QT3Ex9IwQPNKO7TB98TY1mD
         4iD0h2WXvUd7o6CyZfrrMs9tqW/Ld13r3QBmQhZOwFdqmoIdPcfQG1TckoWlTNxj4x5D
         zbQrJwa766fBKu/aR9Jq2laU6cTFSoJkBATaEpI51rQ9HwNdAKuV5tAHxHNvs+bsaarO
         EdVZqeSwRylikVH/84o1qxOenPL6wXkK6PFbo935Hpbjgj9k678Lg9kIn8yKwGuxUPCO
         Gdpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hDgYPVbWdOqi9Z95ySvOWrMnpiPd3B+usihlUMNcXV4=;
        b=aCtL2CAMtN/eS4nFKcpVJ+Bqx5+EBqvtaUW1kW7OvVYU51+A6fVY5harerJ+q4bXRP
         AgcMRmH9672ezm+06fLSGE7Y6+hfk6BNNdeQgRrH0GwVKFQvTe6LRR4Vaz26FbV5NtE9
         HKu4QD+KBXVzYaf3As7+dHDyR3u6+aYs1BXYITWAOtjuLDW6mm5aCn0JzmeidY2Vpu9N
         wdWq+MyipP0KAW5MDduc2FuW5YoIekO/UUj82obOEHKJSQa9aCWB3+Wv3g+29fwEwCcA
         6mBeGik68Cf7rMDqCxT8Ta8aqIOao6PFi/mIYkYe3gt13u4/vpTcMjgvaL32y40ZOXql
         jY6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uu67yW6Q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k75si436408ybk.0.2020.06.22.14.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 14:51:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 77B482073E;
	Mon, 22 Jun 2020 21:51:51 +0000 (UTC)
Date: Mon, 22 Jun 2020 17:51:50 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH 5.4] x86/boot/compressed: Relax sed symbol type regex for
 LLVM ld.lld
Message-ID: <20200622215150.GM1931@sasha-vm>
References: <20200622195639.2670308-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200622195639.2670308-1-natechancellor@gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uu67yW6Q;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

On Mon, Jun 22, 2020 at 07:56:39PM +0000, Nathan Chancellor wrote:
>From: Ard Biesheuvel <ardb@kernel.org>
>
>commit bc310baf2ba381c648983c7f4748327f17324562 upstream.
>
>The final build stage of the x86 kernel captures some symbol
>addresses from the decompressor binary and copies them into zoffset.h.
>It uses sed with a regular expression that matches the address, symbol
>type and symbol name, and mangles the captured addresses and the names
>of symbols of interest into #define directives that are added to
>zoffset.h
>
>The symbol type is indicated by a single letter, which we match
>strictly: only letters in the set 'ABCDGRSTVW' are matched, even
>though the actual symbol type is relevant and therefore ignored.
>
>Commit bc7c9d620 ("efi/libstub/x86: Force 'hidden' visibility for
>extern declarations") made a change to the way external symbol
>references are classified, resulting in 'startup_32' now being
>emitted as a hidden symbol. This prevents the use of GOT entries to
>refer to this symbol via its absolute address, which recent toolchains
>(including Clang based ones) already avoid by default, making this
>change a no-op in the majority of cases.
>
>However, as it turns out, the LLVM linker classifies such hidden
>symbols as symbols with static linkage in fully linked ELF binaries,
>causing tools such as NM to output a lowercase 't' rather than an upper
>case 'T' for the type of such symbols. Since our sed expression only
>matches upper case letters for the symbol type, the line describing
>startup_32 is disregarded, resulting in a build error like the following
>
>  arch/x86/boot/header.S:568:18: error: symbol 'ZO_startup_32' can not be
>                                        undefined in a subtraction expression
>  init_size: .long (0x00000000008fd000 - ZO_startup_32 +
>                    (((0x0000000001f6361c + ((0x0000000001f6361c >> 8) + 65536)
>                     - 0x00000000008c32e5) + 4095) & ~4095)) # kernel initialization size
>
>Given that we are only interested in the value of the symbol, let's match
>any character in the set 'a-zA-Z' instead.
>
>Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>Signed-off-by: Ingo Molnar <mingo@kernel.org>
>Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>---
>
>Hi all,
>
>Please apply this patch to 5.4 (and older releases if you feel it
>necessary), as it fixes a build error that I see when linking with
>ld.lld on certain distribution configurations after upstream commit
>5214028dd89e ("x86/boot: Correct relocation destination on old linkers")
>was applied in 5.4.48.
>
>$ make -skj"$(nproc)" CC=clang LD=ld.lld O=out/x86_64 olddefconfig bzImage
>...
>ld.lld: error: undefined symbol: ZO__end
>>>> referenced by arch/x86/boot/header.o:(.header+0x71)
>...
>
>While the commit message references bc7c9d620 as the first problematic
>commit, I see the same behavior of capital versus lowercase letters from
>nm here too. I assume this is not seen in mainline because this commit
>was already in the tree when 5214028dd89e was applied.

I've queued this for 5.4-4.9, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622215150.GM1931%40sasha-vm.
