Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBKPIW75AKGQEU7Z3T7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id D94412588CB
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 09:11:37 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id s24sf68187wmh.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 00:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598944297; cv=pass;
        d=google.com; s=arc-20160816;
        b=HolOoZa2atsc5mK3wemuFZP4VRa8K8QkvyFNFcZgqeY2CjdS10EKPOsYBldR1hFDB/
         oDm/WRYwHbxGpWYEPF6M8Tk/d+/ZUZpNfF/JUsySnK9mU/ALFnR+8HbZpdz9k3f5jlDJ
         Deszdas9LGkunoi/m9bLmZNd2K+0UQDznZR0clDQ4Ff7qeHWBa/kP8U36ffdEFjgA3t6
         Sn4avXvx1FPex3AEbQM398RX1Kshlm6ZfrKfEMep+kNCVrdmXkxUZs9Bu80OzxvJOjgs
         nvRdfb02b/Jyc9AXbsLgNQ1XjGaBJQTIl7VkdVOfDVPGXIn25udWdJ+je2EO2oEJ/LQ6
         jgSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8zznPH7XR3qfegHQxR44P/tDayjtNswO5XRmaJ2Yy+A=;
        b=pC3f5kOKFU0Eu5y+G3pGsgBSr/qTAQo+mGaTEt+bzV8xydcfK309QDbHIDI39tDO67
         9HWHoX4lEJBL2iqD1cL3DUJxCv4KPKJayXbtEOj/GGQhxEpvfiS/3ZZLGZHkuVd4I4Eb
         kozm7riZjcL6aEmdsWfhAb5j/G71yc7vOBZ4cziXRjFmWAAswx2bcsX/vi6p4uEz8rFm
         4Ob+jPDg4hBFFVWBvacaW09PF2bBx5rSytel+CLYDzRbKgv+y7wbsi2u5S1tWvtdA63k
         EWvEZTXlwj1WKH5DlDABGF9PZX5kMMMgTsSzIUkXvLFdAA8y7hyjLp8Eixn7E+IoOp4A
         WvKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LWm1kQ+7;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8zznPH7XR3qfegHQxR44P/tDayjtNswO5XRmaJ2Yy+A=;
        b=ujii/e23e52iEcG+TWoi3q3rohn/aZa+Z7nQCBH8whvfZUWcY5uRz9VN/Zd6aV6+y0
         EP3Zlx9lxgdk0ZGF+FwGu7wbDJEGdlrmPSvlllmXYvXOrwWaBSkVpdCiz1XABOTWkNDb
         ese6u9f/2DTiWAcENaH2D6GpSToRFI+tU9T5QXnFxS+TOx204wUvLixQiBFwWWaaFdGY
         uCZxkOVWcqg2nveRuIN1VNWEcuiws5GQfCdFrtyZVYeDBEpM7fSg6+m3wjFQc0bzbYI5
         colfL5RUCYP87gKXtMnPq5MbExORM+1wRj421/+x8XPf+SZL2zV+hbBtyADNdc+LCAIQ
         hBLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8zznPH7XR3qfegHQxR44P/tDayjtNswO5XRmaJ2Yy+A=;
        b=i1fqNgzThlCyww03Z5MNF0pfRnoknEsxZHagDdJDxNPtHw2kSIEoodoKS3aWUfnkbX
         DMBlmnI9oa0fCiWF+ibQ85t7HvfDIoKv6F28Y6FsCs+tMLpxEjRGhgeI1ECKbiGdX8tn
         K4Be+P2VKdMe5lphVa5axushLeDZa6TaCnmUTI0qg6eGoDwdOlI7C8DHcoYFGSjmA1ov
         NsgUy3GQB44Hln8VRCmQAZ3hkq8IfeQcM9xV4L5osMd68uS1bl3PQpxieHYax6E8aEFg
         quzz4u2M9RIpPFDG4y6HmHj1LU/ubPltTsIhoR41k5xjaCPX8TDSwATQPjnZ8eg9Jlt6
         +L0Q==
X-Gm-Message-State: AOAM530ZMZ7YG0S0b+2fNRZT8aY9TR0iRVUO5Zqw+i9s7L/Cmq5WKKJk
	Hn/1qh07vwMtfdkfJyYi04U=
X-Google-Smtp-Source: ABdhPJznvtzOsdagTMb2Ja/I2DZME+ALe6exbsKnAX0cUJZIY5tk3ReZcRpEfIPdRPCTyJ4mRs/4mw==
X-Received: by 2002:a1c:4e0a:: with SMTP id g10mr358422wmh.71.1598944297612;
        Tue, 01 Sep 2020 00:11:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls540452wrx.3.gmail; Tue, 01 Sep
 2020 00:11:36 -0700 (PDT)
X-Received: by 2002:adf:eb0a:: with SMTP id s10mr271423wrn.83.1598944296816;
        Tue, 01 Sep 2020 00:11:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598944296; cv=none;
        d=google.com; s=arc-20160816;
        b=d0Gfk2DJgIMxmtOfu+SQUDsSr07ZEzEEm6iP6Cb9Ie05r73l0P5pceyqCxYycXU2Kh
         ra06vgp04TAwS3M3/affq71TEemswfbcYbbThf0hzK3l/HjjT+AXRubfzYaeF5jDFJ18
         /iEkAD6LuXEaC1pRZh/WRhZsQ4RHmlHToQisX7EDfdC3dcxU4Zu0C+8o3/rkh/Ti5beQ
         EdNgKhpJbyHCSNKHnGZkb55AXK0hzW9QGylRVm7Gk3TAgggbM/tFPezH2/5O08KN1a24
         DTpVbnbc2+M1nBZ2/AxZ8l1MQskGN50rDQm+32Kq+3fSETpkmwWLIdwfqs67dPm6M+Nw
         jY6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=xaw2TkC7UXssyjmtWIo7YhjBKV91Ck2RloWS+iSdWXc=;
        b=STNR+CBN0eWxL9Ux939JkZs4F4BHCoipevD3EFEwycudQdZwr7tmGpNse+8ZUQjegO
         lnvBkv6kVUtB6FscxFwKJdSUUGeYyklA6xMQnu1KtPLeBMaKuMu92/2Hy850ZCHjlLnD
         0zMWU54vYH0Z24LSa3asQoP/dYSv3uwlJFxeVmVE+8S5ALsreEklJx3Eo1OZzFQH2fQq
         4+qLBqs551y02zP+mokcrgr1YoZgHVBOsSZpVDBSyyrKBDW1dnbROlAIqnk/wf8aqhh8
         g01z2ZnDwAWjJi6D3JuwLrQmg4cXOxMd/gKoO/ZkJx1pADEHChECypmbBJV4RHdPw3mO
         bW0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LWm1kQ+7;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w2si10538wrr.5.2020.09.01.00.11.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 00:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id c8so412093edv.5
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 00:11:36 -0700 (PDT)
X-Received: by 2002:a50:fb15:: with SMTP id d21mr595347edq.150.1598944296562;
        Tue, 01 Sep 2020 00:11:36 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id i25sm303304edt.1.2020.09.01.00.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 00:11:35 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Tue, 1 Sep 2020 09:11:33 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
Message-ID: <20200901071133.GA3577996@gmail.com>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <202008311240.9F94A39@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202008311240.9F94A39@keescook>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LWm1kQ+7;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Kees Cook <keescook@chromium.org> wrote:

> On Fri, Aug 21, 2020 at 12:42:41PM -0700, Kees Cook wrote:
> > Hi Ingo,
> > 
> > Based on my testing, this is ready to go. I've reviewed the feedback on
> > v5 and made a few small changes, noted below.
> 
> If no one objects, I'll pop this into my tree for -next. I'd prefer it
> go via -tip though! :)
> 
> Thanks!

I'll pick it up today, it all looks very good now!

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901071133.GA3577996%40gmail.com.
