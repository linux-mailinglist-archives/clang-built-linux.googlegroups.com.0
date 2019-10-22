Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAG4XTWQKGQE7E5AWEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D8EE08C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 18:27:45 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id l2sf3870593vsj.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 09:27:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571761664; cv=pass;
        d=google.com; s=arc-20160816;
        b=tVO5ayNAXmdEkrwxTNh7B4a4y2Gj1GmCKEE+UFyhaaJQYey59KPHuLeT5+I0R7SzjH
         k1usBOUaQ9jRVaYvTXDJ6qxzagh1f0jJY842NJioT7bEh9qKDKojUDUdayUfPSrpz2+S
         Xg4Ht6c3u2YACWGZh7oAzMcBdg46CXVSiTp7Y8VkKW7rjF+k48/BUVziVn1p9sutw2+o
         U7HSs4iU9rzkZAB002xvJdWPaKQDSRRkkIYu+DdVV4EE+OyP493T8QSnxPrgqpatGTTD
         utp04F/F67S4jzAlVNBySdZ8Pjv1x/04/4ud7kqys9Gcskr/djrvtfIm4ya3xsuwQaJp
         k/dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MD80taaL8HVfGrRZ4t8ZHEuHEyRA0EVb/ytrPPF/whE=;
        b=bM8c439AGTnxG0nG5hugjUOLp5QxT6eITpE4x8A+anwAKA2kt4KTFA9DuIsSMBsDyz
         lnANoAetcpAVMxHbeHVXGgBdD6Xtcmm/NjPobwcG5FcWmRQr8RHJixZcimabw04Y5VZW
         NNKoiFjEtY7ekak8+UbSDrVG/JBdDNEDcUnGO+8WJ/1OICzCba5JvW/6GM4WBcuQYr8k
         UHeSt9w/jCK0BQmdmJaz5c6YciFFE/BRny5JJ5mQB3WEL1n5Nh5FlxrtvpZfNmFg0AA+
         rRnlYrN3GexmsnEJkomqcgjXq5NTV7f3iXZT/lAaD/WNapbA0s5kxSG2k+MJaNSXt+K0
         1+pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Akp0RE/L";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MD80taaL8HVfGrRZ4t8ZHEuHEyRA0EVb/ytrPPF/whE=;
        b=g7+WM+Dk+XXiaqeo44IbBVAav2+sotzqW6v7z6MYHiLTL8pk0IDOLh2uxYzRrtY0d/
         ZxbYHCFKIxKSNxQrWjsYhLkVvS7gr0K/SF9z0nm99j+kxvJgRBkPuxq1PfOxo4Ffqzi3
         LAga1DEuRVwTKKto/Jev9MgiugewRPZqZpnl7zgF+pYm7V91NYokrVErAQc4id3qsPtA
         VPxgtwJAzruTM0Ev03K/Oz6GSn6La8EA9vO/RPOP/L4Iy6JPAuA8e30d8l1LxD1gZbGx
         FLKrYW+ia+JXqZEk6bqn8D6T1tUNshkMg3JhNmUUGUD8/naOqeazEAtMpC/OzQ6zp4vu
         iSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MD80taaL8HVfGrRZ4t8ZHEuHEyRA0EVb/ytrPPF/whE=;
        b=YBQd8EOmIti9PcFrrV9Vikr1sp8RuGpSUnib8bdskEZ8noDrsVsbjs+vIEjOuAdbaA
         FLDonap0hsgLxxQNLhMUeUy9NkA7yO5k1/E3Hzp2ZOgptDEHfFcPa3wVX/sLYnLKAWf4
         fXtuEP7xI3gpL3m2lNG+4L+FL7+Z/wHkc36LvH20z/EEyUYFRDKRmMX83ARlBG2TcL5p
         Htebrb0gUES2D2jGfKF78D7nO7LD9TXl+egu6DIhsBvAohF2PrvySbGM3nPamRiWFt7z
         3JzE0BTqPxsMd/z2sYtzIEC6JdpIaFFAXMoYmMfB1gnMwLgjNtbJtOsXxcbuxDLAVjUj
         UEQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRmXkdczw6PFZoFrWFzDBFAlaxzL57/o9bYsUy3RAOGy2m8o95
	LjYh7Jhy7oJSeGMMrvDRubU=
X-Google-Smtp-Source: APXvYqz8sjBmi3PaQ1jYM4xWA4XG2tXBSS7DMV6/8PnRjD9LaVsd8DLeiZHyDV2QBEEciJQDoBlANA==
X-Received: by 2002:a67:d007:: with SMTP id r7mr2337296vsi.137.1571761664052;
        Tue, 22 Oct 2019 09:27:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:7d4:: with SMTP id y20ls1723429vsg.7.gmail; Tue, 22
 Oct 2019 09:27:43 -0700 (PDT)
X-Received: by 2002:a67:6242:: with SMTP id w63mr2347676vsb.233.1571761663782;
        Tue, 22 Oct 2019 09:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571761663; cv=none;
        d=google.com; s=arc-20160816;
        b=v2ju57h5CkIxiZBtQg6OmN1YTemUr2HO+IIHwTE6CVXgNcOCR/d6kcKw3g1B+XLplI
         1xZwdNdQZ6aOBJTfr6jq73W2GzlAVhnXMbThn5qdnK6xDgycfTZ+vltTsZghq3VEdjnf
         EerYhJu68ZeV3fliWu+XuvwH2apb2wkvaKXHgt88tfPvRVb1lNdnIw1zyOgkfEfdTlsF
         vx5lgTbXvcWyG7oTKESxWwumhQfzChPiUz0olLI6OEJGPewUD7iNaTRn/OIw870QXOJK
         g3atrp4K/cfDxZaw9I5D1l1TL1oxtsVXCkYGItaifiAGZlltwH+5lg2u458ijwspflhu
         As6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yCqef9gQT6nmyTqqGL+wlHZ1CGtJs3cHNc9rYV1fhGQ=;
        b=Kp+cKcBd9Je9U7exqrGoLv8v28ENy0jLMKGOwKc12ZT4r8W6CRWnkZWcgNPGq67vp8
         buvYS1jP9ssFgB5M1VSLsefPn3l4luADIlOAgJEUAy7ylamvwaKZjRAU2PPv2ra3yQCs
         KFqyDWcP/vBTLaA0AcWX7uxvCHsCJONiVm0VLdQpd2DbQYb/J++MdxhNQpOt1dmUDale
         itm2T9nYV/DsWKAPISGWEa0oy2f4nZQE0jSZRQJhSNltnUooFI+mwGrBvnqQkcLBEEVK
         jHbConYSNaZ4EblEcWO5cscX8XJvb5UZQoBi63CFnysGlXX9dm0J6rO2l3tO2o9K5cm9
         sfcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Akp0RE/L";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p18si970156vsn.1.2019.10.22.09.27.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 09:27:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id b128so10984836pfa.1
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 09:27:43 -0700 (PDT)
X-Received: by 2002:a63:68c8:: with SMTP id d191mr4555216pgc.197.1571761662807;
        Tue, 22 Oct 2019 09:27:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r30sm20868424pfl.42.2019.10.22.09.27.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 09:27:42 -0700 (PDT)
Date: Tue, 22 Oct 2019 09:27:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
Message-ID: <201910220926.B78C4D88@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-13-samitolvanen@google.com>
 <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
 <20191022160010.GB699@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191022160010.GB699@lakrids.cambridge.arm.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Akp0RE/L";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Oct 22, 2019 at 05:00:10PM +0100, Mark Rutland wrote:
> If we wanted to, we could periodically grep for x18 to find any illicit
> usage.

Now we need objtool for arm64! :) (It seems CONFIG_HAVE_STACK_VALIDATION
is rather a narrow description for what objtool does now...)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910220926.B78C4D88%40keescook.
