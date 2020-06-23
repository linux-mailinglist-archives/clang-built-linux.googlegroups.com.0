Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBUN6ZD3QKGQE2K4OGFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A152055DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 17:27:14 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id q5sf15115680qvp.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 08:27:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592926033; cv=pass;
        d=google.com; s=arc-20160816;
        b=lWUbQL3dFxQeq7Nv279HOx4pBPz/dy9AxFJktEVxGfjrIFJBz7HVuWue77Eg2U2RhJ
         /LTq0BzMLRMrRhxWLkniP2gvlofjdGe+O6TpiPAzQjGkgzavYnwccdojOlR2rbbzlULA
         BKJEvWCJ5173tqmsui/BdXAVc2A7RKS4VxJ9SOzylKPOau8Ak8zD3G8OIPQZO6dKD9O5
         ewZ8f8p/uZQz7xxH7En++K2A6+S419m0/4NAQQ2H9nDYtqVqnrJ5IBmJ4tY1CiU/St+j
         qlYj/pLDqHfiDbv4shkuFb3deRa49GSQRJZ4V9KVME+hnQv6ci102nhNFvWRfAinCJ6y
         PjSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3y/XhGLw8tFsNzHWmsJt9EddOqJumZ5mWR9BtyUaAas=;
        b=0gYrdnjGdnJT6IzU4yLBhwKjWLnF7mJNCTA0D87ts4w6jgrfD3gQ8AtAXmEpmwuZ8D
         2ocFDRldn+GCLFo4JC2Xiil4VdvT+JyZlVf6vt4f0S40Kxh27yDQnsiRNgsuXB53aQl1
         ziC+FUdQDZu0V1anSdluAR8zOgqRnIlLXm2jGJvBm3MoXjob9nDNvECHjgjoCgz3cOOh
         tdE4cE6EfXbPxF7QrS6YcnelMvdnTbLwIUdR1OsOmTvfpHUjkgu33J1LckSe3CI5uMLf
         mKoWtpAfG9UOVV5p9k3fCOBvSVUa8Lj5nhlenzGXCf/DIGsf8hkxQse+usbn4aE6kRyJ
         vEBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="J7V/u4LP";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3y/XhGLw8tFsNzHWmsJt9EddOqJumZ5mWR9BtyUaAas=;
        b=EerqFuAe8h2gdWK7Ee2inRP8p2OnaouVs/apOfl1YQsKoxYCES41kMtIzslfcX1jPa
         ohHHUzkV3VVIjKu3qtNUezf2xvtI9aHBdwxEPz/GqIU09HUf4DiFRUmNZauoA81dB443
         /opg+YsTIuDjVJeHiDOWnNpjdZdOniB/Z7CoDixyd5a3UtIBMqB+fMPeViefa3D3vN09
         2BF8BxFGgb8Tri7FiJEuHoputVy6T54ZUEYFBWVAZNQvyRpG1uQE2Ox0k9CNP/ZHMbFI
         /y1RTVGLtSozcqGZtJzPzXCl40Cvl3B5ZbEjq6jzDogeqUJX6dTXRZT+7vLXq8PbRs2v
         aK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3y/XhGLw8tFsNzHWmsJt9EddOqJumZ5mWR9BtyUaAas=;
        b=cAL3O0RVrk0QNNfO3Kiar1TO4pucvdvGunvpv68kb7v4xGvGzxGuw2hy+4EOaggLu9
         Lk2gIUF1rnz8CBWiZ9bG6aaLHMaiO2KQIe6/5ntuvlMZzTn0gWhM3zSHDDpRes8n7pDJ
         UCm6Ncjd6tYrn4Ki+9QeXjUXPscriI9lgb8wlGetcG5CnWn9WNxFKh8wpq2/iYSTowf2
         1xMp+lPHCQUjC5R9bUBlsb1fWCjWwwDNKfTf0lRc9FI2B2VhYnski8flYPQfZsMVLnKc
         Cqn1Ql3CsCPvz33RXvxYMrfEe4e9Qw5NZMFlxiYcb/bAW2JYKEmLg4wnEb0gNMjHqf+P
         kADA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531j/ihuyuKD8oactxB+cKZ5kt7DNfu+XYaPSD8ood6/FWBi8ROB
	tuqUxxafhnThefTDHS3xPXs=
X-Google-Smtp-Source: ABdhPJxnGfYuMmPwt1BbqieBKco8sp7ZFhN6qwLoZG0hfVWwLSif/TqxTlyZO0PeVTxMZouwoMSwow==
X-Received: by 2002:a37:4a0c:: with SMTP id x12mr21736481qka.229.1592926033100;
        Tue, 23 Jun 2020 08:27:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6809:: with SMTP id d9ls6295849qkc.3.gmail; Tue, 23 Jun
 2020 08:27:12 -0700 (PDT)
X-Received: by 2002:a05:620a:85c:: with SMTP id u28mr21467292qku.246.1592926032771;
        Tue, 23 Jun 2020 08:27:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592926032; cv=none;
        d=google.com; s=arc-20160816;
        b=WXYTcPbakOh2Nowd8uHYfsx4i8uCiTr/stS2otMWbbBuTJ8gVbuaXtmVfuF+91c2GJ
         4vZZtU9tGj2tMZJSKZBh3BPQxEWgtutqLRW1FvP7cWJ9ZyZFDuc9K5/ytboHnHn5T+5W
         Ju5b6AyQFlUAy3q6FFEHty5x1ADmKEF8oU/ziWrnggfvstZYh+zMrSYQfq72hiWzLHGF
         Cx0ni1hqHkINTUnn3hndhiEIiegDCqx0RiOZ2/4KQYduARffho+270Vm8hohvRaKUpPt
         LrJr9VNjjY3xYI1zDkv1LApfKHevuwlOI5C48vZGF02jbIF297z7WRQ1LgPDEGLTGnuI
         QbJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hGjRVVoWUpua6fgZWmSbDBya1NIvVNJ0rH/zFUDP/m0=;
        b=f33Vl4zm3hBekXneRf58QJN96KkGCgoFU2ZVfSqq5/GupUhcJTitZWA445krGQlaNn
         gR738xYiQ6Ptjw6oDNrwCNsXqwqyghh82tGKvHwRo+xwC/GFKM4AkKReNbFthjHTFEKb
         kwiyXoF7Ptor9NpnD+EVWj2YVA2SDBqx1JeL7jUVIbo2WNJTLawbJAqDW+90figMarDT
         EJO733l4X5Ip68/AKL6ptn4M+RSgNNGE/U6eCdSR47Dz+kZDSK6j6+zucNdstqSs2qMR
         X9+4oSqSmFBpCBdA6ZdOFwh5oRGVD5Pd278JRG5CO4SziAQaz44ryqBqenPu8dX2T0ja
         PoFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="J7V/u4LP";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q14si91590qtn.4.2020.06.23.08.27.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 08:27:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DB0E52070E;
	Tue, 23 Jun 2020 15:27:09 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>,
	Daniel Kiss <Daniel.Kiss@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	Anshuman Khandual <anshuman.khandual@arm.com>,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	KernelCI <bot@kernelci.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2] arm64: Depend on newer binutils when building PAC
Date: Tue, 23 Jun 2020 16:24:42 +0100
Message-Id: <159292549820.26857.14651271105479538770.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619123550.48098-1-broonie@kernel.org>
References: <20200619123550.48098-1-broonie@kernel.org>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="J7V/u4LP";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Fri, 19 Jun 2020 13:35:50 +0100, Mark Brown wrote:
> Versions of binutils prior to 2.33.1 don't understand the ELF notes that
> are added by modern compilers to indicate the PAC and BTI options used
> to build the code. This causes them to emit large numbers of warnings in
> the form:
> 
> aarch64-linux-gnu-nm: warning: .tmp_vmlinux.kallsyms2: unsupported GNU_PROPERTY_TYPE (5) type: 0xc0000000
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: Depend on newer binutils when building PAC
      https://git.kernel.org/arm64/c/4dc9b282bf5f

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159292549820.26857.14651271105479538770.b4-ty%40kernel.org.
