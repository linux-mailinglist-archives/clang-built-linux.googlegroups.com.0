Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBIWNSX3AKGQEIEXK7UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D53C41DBB0A
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:19:30 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id e14sf1664072wrv.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 10:19:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589995170; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2NjC/EprsJgqD74eXkKa6lElR/XOhatd1FQFCeJ/xlHPHsVdkLgAPriAkrIVVt493
         xTREZRtHd60iJfZd8LMy03HVW6ggf03La94GECuGdrZWpzji2N3hlg59elZNzjppdua3
         FsLyHQ61aFuGxorKORl9XHjZvD2SEcVCkkeYwQ8RxjhXFU6R0mNfmfwFSYggvIcmHLz8
         uYKfznSRdiZ0+O0r3wqXzrrNM2oCgLivlQLQgLgJ8vn/j5GVdGR+raLOUZz1Eii9A4jt
         pi+5pLyjcZUME4BNNfSX4ju1Nb2C8BkFvsDTw6NmASh5UmCChVEFOIp09H0KH+4Pbzgq
         yQ5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dLQyv5AQ/datM86mhSbzl29yXfLGeakEIHzAy0vNCD4=;
        b=KbCUfIhjY7XX3U/oo+39zR4SUz9EfeBAg55SF0OEGV7KvpcU1531ri643M2UEGkokd
         a7VN+FC2i+ACuyUpI6qn1vaKWy5KJCQPlSIhKuXD0VpRzIZUiSm9xOF91CpznUWXHK/p
         U1yPBDFYEmw9IW3CeIBbFCw+mEj2cZ5shRsPPJq+kl2u4MHkUzSl0ediY5MOgCjEj7fP
         3QbqVsjS2WU7oguXNBTSD3O5Zj4JBvsieWuHC61EFx2O2DK1e2IpXWi9yvHUanbaGaeD
         Wdm3mC4Zw+HYAdYLs3QAR3K9DFeSvQxv2EvdH7UFyUZ6oG3wjOVt2128wffbXIVu/aXM
         gHHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=in49gkq3;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dLQyv5AQ/datM86mhSbzl29yXfLGeakEIHzAy0vNCD4=;
        b=DCa/sMTuMBc3CnYwTf/KQxPyLKtq0MxhLmnpNzamwwTGmrgx4c7/P9saHd6RSq6ff5
         WXL9arMbt36P++zUsWv6jYl34w2+MYzMWh2u/dlTtJGdKFBLa3Pfs1g6kvc0RFOKW1mZ
         h1Wii99UEU8XjZtSR9VhIQ34zryGO+/Utl3WgxUwI5YhbL5ZYXWj45C5jfukei3bwcd8
         lYlqZxJDkny3pL5zxnSrJCqZCacyElsaZ/yySwxAcMSl5mpLXthWZTbzpjFhcg4Cq/Wr
         Woh4GVxUr/jhWaAk1Aksy+F2oRDDB504qDbMJ3HT9eihApOZ/SYHqNPQaP3tRxQ5nA1b
         YwcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dLQyv5AQ/datM86mhSbzl29yXfLGeakEIHzAy0vNCD4=;
        b=TYXklMZt6E5msWNauFg+RB2LwURdY/XnmqtAAlwvRo73BUXXWI8MsYE4TpGaG6Prt2
         ksM6VgvFDgz6k8MQt8iOqyq/Y3o7TNMtirkPlkxGZwTa0d7lKEoNuQDAh3IelBDb7hTc
         jiWe/OraRbof08INbVbWcRN29nj/Uoq0yJ6M+lc7b0BfYYBsggs7MmpXdP5RQ+SMA7Ao
         1csbrmFscRpUn/YLcs3rSaBa/w7ht7pc+pC8W8RZ46nCWxE+anRQu+W34hOyhHXizQ/t
         fGUxt+ab9dCACvoLJwz2BrCgzw7/MgaclUIx1z7XpKT3qKA8VA6CySLMdaTiz7Or9ldf
         JoGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZCbWjV2X7ZkhaxZSlTh0eYEBnTF/vt9/OnUY7QyCORurzGNe9
	YOJviFhuiIRPX6cEGnCYdYw=
X-Google-Smtp-Source: ABdhPJzmmElGbfOplaaoRpk0/9ngwoSNQmq+27jsnMcbFYxnr4oSgNOXE/5GzX6kIMPV6CXQB/pUGA==
X-Received: by 2002:a1c:a557:: with SMTP id o84mr5696207wme.165.1589995170601;
        Wed, 20 May 2020 10:19:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a544:: with SMTP id o65ls2137820wme.2.canary-gmail; Wed,
 20 May 2020 10:19:30 -0700 (PDT)
X-Received: by 2002:a05:600c:2255:: with SMTP id a21mr5612905wmm.67.1589995170144;
        Wed, 20 May 2020 10:19:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589995170; cv=none;
        d=google.com; s=arc-20160816;
        b=vfEHRL/19pC+RBl0+nQfqhBEZdJPkvoqt4L87kIQ1S6Poltjr6H2Anahm9nFQUSE7m
         S6IUsNFy1wnEDIM5jS9z1kWIeq4UPGwWGQOX5/ZX1JjBe25ksVbnIhjXbYHb//NBwTpK
         037GtC+b1PdS8oKQ6NjSJ+67ZUQUFbJJiIR/uE3XopmPV33zsTKuTCbT10p88fZT1w0e
         A8eUbmnpJUICsUsRk/7vUvM1qSajnH3lKwtv65ShpSm7kEYj4uqUYILeG80Yibjcflx+
         Xz64GHmZmETMGHQCrlwlbojU46V9x+KCx75A4Ykfj+S3b14BbuH/5dTeVWKn/tqKYQtp
         xcBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zhU45fI/CA3wuFt48B50fMgYqlagkSqzGMK7oqHwFsU=;
        b=a0dwdMvBYfLSEu4Q0fNGXWgrVJ4ljIL42/0r/Uti+sG7tEENbxSrX4mvCXbA35R+YR
         8qyk7XyBoyupuUp3KkN7ScB+fjJPGcYOvLg4Dct7gHGgMmyarm8YxS8j/cKmjamO3fT6
         W2WAYLhgWCMP7SOJ6DvjqbTAZ6WOzFV2y+C0bpvo1NPSg7kpoic9xxf8h3H6XoOFEPEW
         wfWbrEdMWjycSr0Q57Fj5viO8SwCSN6v7wTDFX9dcFKctuWBxn9DsJ3AtxLdpaOp9WWt
         CLVM5B/k1YixKUykoNwa6QPKbHediSefIpl400961raGIMg56EZE2fwpOoOQIOAClwk/
         nuYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=in49gkq3;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id v11si182255wrp.5.2020.05.20.10.19.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 10:19:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0bab0091014823f6ed2297.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:ab00:9101:4823:f6ed:2297])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id A646E1EC02CF;
	Wed, 20 May 2020 19:19:28 +0200 (CEST)
Date: Wed, 20 May 2020 19:19:22 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Philip Li <philip.li@intel.com>, Masahiro Yamada <masahiroy@kernel.org>,
	lkp <lkp@intel.com>, Christoph Hellwig <hch@lst.de>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Benjamin Thiel <b.thiel@posteo.de>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
Message-ID: <20200520171922.GH1457@zn.tnic>
References: <202005200123.gFjGzJEH%lkp@intel.com>
 <20200519205505.GD444@zn.tnic>
 <20200519212541.GA3580016@ubuntu-s3-xlarge-x86>
 <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
 <831EE4E5E37DCC428EB295A351E6624952648ACF@shsmsx102.ccr.corp.intel.com>
 <CAKwvOdmoA5ZFCiUQ5fVf7+970Y4bxvU=kYWb49NENQzxdm7F1Q@mail.gmail.com>
 <20200520005218.GA3101@intel.com>
 <CAKwvOdkPW2p-4fDUNT6so3DrxiJgtUNEFPJcHNf7VROozc4wjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkPW2p-4fDUNT6so3DrxiJgtUNEFPJcHNf7VROozc4wjQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=in49gkq3;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Tue, May 19, 2020 at 06:07:14PM -0700, Nick Desaulniers wrote:
> It may be time to consider "promoting" some warnings from W=1 to be on
> by default.

That's the end goal with -Wmissing-prototypes for arch/x86/ at least.
We'll turn that on once all current warnings are fixed and won't allow
any more patches with it.

This is where the 0day bot would help with testing this but it really
should say that it is a W=1 build and should tone down the message
frequency as we're still very noisy.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520171922.GH1457%40zn.tnic.
