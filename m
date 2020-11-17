Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBN5X2H6QKGQE52CUCVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF2D2B7225
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 00:24:40 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id 25sf66723oip.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 15:24:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605655479; cv=pass;
        d=google.com; s=arc-20160816;
        b=iwMSsMilfWp/bvgtvXv7Nygdx5ZwA7kSNCh/WQDNvoLx7cNTwzYCSGYDPmzRGumr+O
         hAHy+FmlYt7oib46pJBrMq0D92ZX0byF9Rt8Df6x0tf/ZcQ8ytaRXjnRz3EGYGNzmqF1
         F5afwc6lhizwtKzT++n2fe4WqBPWGCRzXceaZhcK/DVGfySEG5F71dli9oU5iqzJ8yVc
         XQRPg674pOIpiAT1LQ8YYvgvqp4o528vZ2Te5Jq3QHNfYMGJJPBsb1PI9veDpCCVSXNb
         +11+cI20GfxvfeT46dI24/MfrHMU1VwopgpWmUBuwJKbR8XC+lmxiC87a73Yvt5asv4B
         I54w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vgqJQUSzBDGNGfNUFJvl0tZy9OXbwea9E7Apdx6l1As=;
        b=L7K7ZwByIOhBN/k8eFfTKn7qKXGBXxjDSWmQj785Fxc5Qa3L9ORKPGpt2TSScGoTCY
         aSjVs4aNDOAUQvLi4hKPk+3i7x5zeXayaMaTUGyLFUMIij8jsiw2DC9NDtslkBSwdtk8
         ZNM255KtdHYveP/6I4Xm/iUP0n4h45KckK9DckaySSZ5HmU8rIbRlxAR+S1/2+ez5nrb
         7A0ocub3wHmjZVfFo11k0V758FM7IRZ4jpDNpikfAZ5sX0M9cXqJg/rLuboMknU0dGae
         4EZx3R2/Q6Y2nEUp3l50Y7DMawx/6lX8E3Is0kFj+q1BDFvq57jOw8gLyBU3tz65Kb5v
         IlnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hJ5yCFwn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vgqJQUSzBDGNGfNUFJvl0tZy9OXbwea9E7Apdx6l1As=;
        b=ppHW02LwIZ26o3I/A67mUYAXbdExLu9dGD+Eg43CebUBxiBg5mNufMgI589VDrZqzi
         DLxWmEyuwA1F3fB1rf/az+YXD/XEcxLIuYrYHHmxK1C6/HIPhC14WLfQPSedEqghr9EL
         c0Lm1nCHFWUr5D/WSJ7LmZsuqTQlTasnS9GgKFuTNf2ovpQWsKd3ZInqABWy32xhjmCo
         /xF7s5jGIu7Ju99kdFO6y3I/cLAG/+w4qJ50hXy9zzAtr1B1l/67XQCW9Ynz79dgessE
         ExW93CyJKH6w7XQMUhJptktwZuEK1wb4kG8Vhk5vtde+WyOtpbU5FqP4lQwD0rRGUvZA
         C7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vgqJQUSzBDGNGfNUFJvl0tZy9OXbwea9E7Apdx6l1As=;
        b=fVvk5GiQUL+C61OewwOK99DD5aAux2xWFyldk/3TculDQuoO0FGxfEeU6kcXeg9d6g
         o337sqmdzXqC3V17rRnkVtCOYeK9R6CBedgGv3U978HkSWvDvCWO9MnA187EWE65ozI4
         RpRp8EfzbM30Ykn+1pM1K/FhofkphCkTjQI4oZdPS0btkQl64DZ26w/H047dsB/zkh7y
         rhFL7Dru22GujViLSvGgEt9YBXLF7liNy0w5cR6YJWmEZtmLPYfS79QoKmOp/Xf8FMEK
         F2fya73cwUOWGdPZjvrLuAf+xNTOALP0NM92diYwMndataCRMQErwsU4m6lYxzPsr5Ca
         +RjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LmbvkIO7jmSKV3fi2A4ZvH5L/WWFUcdQdxIX/vI/Tv2mIkqqO
	Mmx9+K5WFDvWe+7M4LS+jC4=
X-Google-Smtp-Source: ABdhPJx69PSCmIsMFhDxLZTvxzSuG00qoM3NgXC4GZtW2cjReNjeZc9kehUJXATs7l096KAVeDNKoA==
X-Received: by 2002:a9d:6343:: with SMTP id y3mr4949137otk.78.1605655479698;
        Tue, 17 Nov 2020 15:24:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls4405007oib.0.gmail; Tue, 17
 Nov 2020 15:24:39 -0800 (PST)
X-Received: by 2002:aca:4a51:: with SMTP id x78mr1076243oia.86.1605655479294;
        Tue, 17 Nov 2020 15:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605655479; cv=none;
        d=google.com; s=arc-20160816;
        b=DEewUUfIZ/HYXftWr1FL9F8vGYS+gpRGJ+25qyiVs8Sf3s4lpIJcxu+aaIqrnLpbpE
         hAFWBi8TlEY0GYDJLMPXEMpTGxMM5KCxprdKTUZCPaSayOvOj/OhtBdJqu6b1S6rD5Cb
         8XSED/YF8xzsRXTAlAfUajYv/ZEoAImLwkKxIUgLbfYEumTglmnjodN2QewZD5Ll6kWF
         cKdzjuSwR02ghGFbeZ9BnD8GqYy+P6VUTD28bhSX8uuf+rQkCVZKEugMgryjkQ0PsB9I
         UX/bz0xB99/X02TLbyFpBnldY/XmEO5n8kUu1vN/cXuEC/Xk2RGRMgmZOPahR8O9OwK9
         xxsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rlohrkJrT+GLD/VGilzAAOZ5xQPvBP74n0iLrtxJgXE=;
        b=h6HSO9niOBTP2UNgXeMYLxJX9qoFIVxWwVjchY4y9cWuqpX/dicyXv52/WS4S+eVwC
         VL+6TgWxDYzhZ25lgNVKw/QBDhrN2MmKICyJvY9R2L/yHclyTOsQj/EUqUg2AG33tNtx
         lu7cI/MVovoUTiGk76ObI1Be3OJ579HCF2CiBWa9K3urFUHnQ7OCuRiWSfxktEm/5N/x
         tGN3qcoe+9kgQ05Na7i77+2wIb/4TodofHy2cVFkOeJOYAZ6e5WD+5NJnfZRmRayzfK1
         9vtVqsiY4rTnCEMq4QYuSNC4S/2PuW0G/6Mt+P6DQZabykKqxZZUG4eZ7L3TsKNyiUZ0
         VatQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hJ5yCFwn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si2198513otc.0.2020.11.17.15.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 15:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 406D720E65;
	Tue, 17 Nov 2020 23:24:35 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Lu Baolu <baolu.lu@linux.intel.com>,
	Joerg Roedel <joro@8bytes.org>,
	Liu Yi L <yi.l.liu@intel.com>,
	David Woodhouse <dwmw2@infradead.org>,
	iommu@lists.linux-foundation.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Jacob Pan <jacob.jun.pan@linux.intel.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] iommu/vt-d: include conditionally on CONFIG_INTEL_IOMMU_SVM
Date: Tue, 17 Nov 2020 23:24:28 +0000
Message-Id: <160565219047.2773717.5820442945194882017.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201115205951.20698-1-lukas.bulwahn@gmail.com>
References: <20201115205951.20698-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hJ5yCFwn;       spf=pass
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

On Sun, 15 Nov 2020 21:59:51 +0100, Lukas Bulwahn wrote:
> Commit 6ee1b77ba3ac ("iommu/vt-d: Add svm/sva invalidate function")
> introduced intel_iommu_sva_invalidate() when CONFIG_INTEL_IOMMU_SVM.
> This function uses the dedicated static variable inv_type_granu_table
> and functions to_vtd_granularity() and to_vtd_size().
> 
> These parts are unused when !CONFIG_INTEL_IOMMU_SVM, and hence,
> make CC=clang W=1 warns with an -Wunused-function warning.
> 
> [...]

Applied to arm64 (for-next/iommu/vt-d), thanks!

[1/1] iommu/vt-d: include conditionally on CONFIG_INTEL_IOMMU_SVM
      https://git.kernel.org/arm64/c/68dd9d89eaf5

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160565219047.2773717.5820442945194882017.b4-ty%40kernel.org.
