Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBCUISL4AKGQE2VAAQPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5715D216E82
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 16:17:48 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id v13sf13004064oor.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 07:17:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594131467; cv=pass;
        d=google.com; s=arc-20160816;
        b=CVxvaQnEDn6RFCeFjiHOynXRW7zNue+Sso5MP7+9m5bjhsi5lNfamYkxonSKorkImI
         kM3Fp0jfg9iMuclBev6+EddHNACHrMF6rSXNFGw5AVsgDTV0Q0DIeKm4co195WwADw2M
         +336n4riNnfAgOG3ji032EGlZssJ0CSxtkTleUjen69kSX2bpei85izpkEhyHqB/mZTW
         YGSIFtcE1Nqvs+qZgATqeG8TAG32OSne8KbJkEaRyHt627Q4RzwT5aQnFCP98rtXoVEG
         p1odiipEYkr6O6DdzfTEm9UL7gjUKdSJFqWhDebe74wyx3C8JtyzCtHutfle9CZ3BohP
         dubA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:subject:references
         :in-reply-to:cc:to:from:date:mime-version:sender:dkim-signature;
        bh=jTwABXGs0HqjYDqV+X2KoPNU+HvOLv1f0AfgbO+b34k=;
        b=SJ2G3Q1zaa5SnvktLEyJsjP8I1wDgV4XIEbF1xmpfYoin1F75IlNxkNs8+embzLEdD
         Vz2AmzsLbxr1TFlZHu08vbJn3biSauBwUxihRMc/JCxQAebAS5HCQhfoaimw1OK0o/Pb
         iWcRmaYagcnLl0mRs4bZJz8Q+iPEo2TCnPJGiT2H+hprQhDS1EsyE8IMVsdBIYXSmmT2
         AjTHvnFqMOQuAWcE/+2tB8udxlnA6wkmSgoIU5pnxXeyIwqERlReol6vDsuMQ1CYVgii
         rGDXcIJnrY1kaOIGugrq+TxryOXA+ZSBKO8PqDsRfsHTTeWb/cTkmSh+6VKuVTNMFPZC
         B/Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fPQD2I9Z;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:in-reply-to:references:subject
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jTwABXGs0HqjYDqV+X2KoPNU+HvOLv1f0AfgbO+b34k=;
        b=FkTOCJ8jmwR8mrwrnBvrXUkMUtGlJ0SZAR55kEh5w8uCBYG3vZ7g67iFhYktHYN18K
         4NGmsT8QaQbRpxVd+b6xmqNt/ZBuH4aWw2O/ShdCsIY6IX+ETzF5BsncUKdBdP4ZLbGd
         gF/qnX6Gn3g7ZTA2UBK4a4uaGfEgexM+j/L0T43fxE9ZuX1kpfhIDzPT2ejY2jSzqbG8
         tV9UKYxCXZX4d1+/G1kPNdoXTLdppNy/psH56MPorDsIj2elLFXUdVtLlzDwNm0f/bYe
         GVor3s6Yf6YJE3mre4+h75jSwbxFA4qP/CzmWi8wXFnsijekT/G2GzVEO9KyUHH6Ls9S
         T34g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:in-reply-to
         :references:subject:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jTwABXGs0HqjYDqV+X2KoPNU+HvOLv1f0AfgbO+b34k=;
        b=fhJZ1A0thq1/GpAqEImahf+RtByhtF7GIShAt7YeAFIM4D4aS9qA+Jj7PhunU1HTx2
         l5xkDVZ9OplmyIm4XxQ6PZmofI+nCRDXowNecq/T2IrYJ63ZvGHIEe3G6UHjl1hTOyDZ
         35mhBo2q5QndzkRf/jYhk3S3S20SwnzeYlWdgVJrbQrjymDfEWZzRDJsCcY8A/P5x3Rf
         jrYUGX4Of84XbjWSXrKTZjlPd0Ztuoobh7XrX2OLygAvGLRZfwyW5Uo66w3+Rep6MSdS
         KhTVWnsD+E0hkHjrslYop+IVcxUHkLpx586QDmE4I5wPKaA7Ojd2qmlkt70r54oglzyw
         /w2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PrJVe+uBBFVyl8vP/Wzjh8cP9bU//RGYdvLYheeJ42+6HVC/X
	X+hyKVAPmUBgjGPdHNVUqXY=
X-Google-Smtp-Source: ABdhPJylmwakkVeSJ1DM3Lh8jNR7TtBFkBzTkUGDqnvypAWcMswTICeCR5pcxQ6LKJQeo/GCXZyuiQ==
X-Received: by 2002:a05:6830:14d4:: with SMTP id t20mr20942552otq.166.1594131466738;
        Tue, 07 Jul 2020 07:17:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3116:: with SMTP id b22ls4313121ots.6.gmail; Tue,
 07 Jul 2020 07:17:46 -0700 (PDT)
X-Received: by 2002:a9d:bca:: with SMTP id 68mr47434357oth.194.1594131466424;
        Tue, 07 Jul 2020 07:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594131466; cv=none;
        d=google.com; s=arc-20160816;
        b=pWTPNgBl2P5VsI7EW3MC+9f/xh/txHWNpptB/8ySzzdPHxn3jSXXe4MkJKYQgUWaGI
         ijyh83uUHl2UQ286ilur8iJun9rt0et1x6vn0REwvswnLJtn/mNwgKT19hPV0HJx4KKy
         jZX3sRgrhwHU/n2ew0AFunMZFjopUL9kZN0whT8sBqp+Etx7EtcUS5Qz4VpVAgSX+sbF
         sGHtf8+FOwXxq6sCFZxotU1Efr6JUebEd1b6U4V9Cd/c3vC6cEcZqIbsokUIcR6p+90D
         l7RWUBvIk/TR5FZ+NJtSxD9oqw+UGx/4MJmRx0dQ0K/CUxpQwXNz+uj/GhIommotJ3Fe
         thJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:subject:references:in-reply-to:cc:to:from:date
         :dkim-signature;
        bh=waCMQP/ztx99GfEOwBtKIa+D6zSA4rgMqnnVXp/4t2A=;
        b=XdzfOwwPpOAML7bILfZXHWmI2SMMHPurzsMQU7pjpHIwvZtp4YxnBhy+4Agyfiz98W
         twBZ8c5GCDJpYoGB6tph2wcigq+SAEyQjng3Y9FnAihWIaWWgAycjlSbug0guljfsp2K
         0wCUimNszYkmezErRgFzzZbOwf6XUrT4+qlsi3NDJreGZtAca2lYUQyfcZMdQhMA/w7Z
         A9FTBBaHPV4cscW6CLocIFVsSlO9l0rI1jOU4q2qgIz8KteJ4B0wtwC341b/tqdrnw/e
         3HnMfnXV8nggWtHtWoM4X4wpS9WXEoIznm0me4uOf81/vyZwKTEwVcsVKVikh9XFhSM2
         c5aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fPQD2I9Z;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j2si1110990otr.0.2020.07.07.07.17.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 07:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31E7720771;
	Tue,  7 Jul 2020 14:17:45 +0000 (UTC)
Date: Tue, 07 Jul 2020 15:17:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: clang-built-linux@googlegroups.com, Liam Girdwood <lgirdwood@gmail.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, linux-kernel <linux-kernel@vger.kernel.org>
In-Reply-To: <1c437154873ace65ff738a0ebca511308f1cecc1.camel@googlemail.com>
References: <202007071433.Z3bmcgjU%lkp@intel.com> <da3aece9abd23b12837e9abf908ee67f0c2c988c.camel@googlemail.com> <20200707102042.GD4870@sirena.org.uk> <1c437154873ace65ff738a0ebca511308f1cecc1.camel@googlemail.com>
Subject: Re: [PATCH] regulator: fan53880: Add support for COMPILE_TEST
Message-Id: <159413146113.34914.999828290847057133.b4-ty@kernel.org>
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fPQD2I9Z;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, 07 Jul 2020 12:57:31 +0200, Christoph Fritz wrote:
> This patch adds support for COMPILE_TEST while fixing a warning when
> no support for device tree is there.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: fan53880: Add support for COMPILE_TEST
      commit: 318b8a09f295cbf86fd504bcff3769b1fc4a936b

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159413146113.34914.999828290847057133.b4-ty%40kernel.org.
