Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBAGKXT6AKGQET25KDLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id C84B12941C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 19:57:21 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id v190sf2488549qki.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 10:57:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603216640; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDUICAHW2RxUqFglGQ65Bl8brEqYtbLS/OGhmru9iIGwOD5+jl7ESDj3q4FtKTE2ma
         TxGRtECVDCntFz+yqEh+64e8eqF8N1DvLort05vq8knAJghFT6ktink9zp5+xIDbwuJW
         C3bIHMpiToGprl3nOQ6pScVvA66l6af3tfUr46Agx6dq+DGQPE2eC4Lyk0rMFO/7xg+D
         YRySvp1xAvkq7KDL7aW5gcCCejK82vqi9rVlRV/6d0mB5WIGHqXMs3w79t34o8iaylsq
         OecY9WvdWQwXjlqQrk/7lRoioRNg/w9ywAkK8kemRqihz6rOrPkI16HMtWh+3XHR6/Qc
         mTXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=81J/gLdi4rL0rgCoWuLUmy3RWx9hyvzkVY5LqlwybW4=;
        b=wG3Nd04QuRkp5IVC7EYmbGQQGeIBW9rUiPAQFiuwyell1cVfYFoQtZdH/pX3BFXQ2y
         MB2pOhCSSfgTz6sj+LSxgVL1rVtYC9JzYCt8ASuu7UP1C46Ts2FryGtLt+DlRZAMdgcl
         mMfINBdGC4K6wzSom/TWcY9r+MaVUohEsgMy7hUmmE1rwlzFW/smewlkkHQTNkRNIeWr
         UVFZvh0NObD9SqWPqpJSv6wXqJ0x4JLfb1lzgkrdeINGr6p6NInJ6PIg7baQoAe5llnv
         TD1XelKUPKQpAZS5zdVCduiw7mDb3iZezp00pTmzsHRXx2p3FiKB3qp7EWrPitlA+5lh
         Z2GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DRCtLH5e;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=81J/gLdi4rL0rgCoWuLUmy3RWx9hyvzkVY5LqlwybW4=;
        b=J1teBtmeO88AeqhBi7ZtSkWIqR5Hqs8eNnrRYROWDhL8RjTGcNqkZSIPVgX3EwRzhA
         9om2A+9t4tubwhGvGZsNvad95MqZBpGfqSa/WmEIBkVGeRHq/2zIjkiK48dm6BbZoRF1
         iZf8y4zIQCtE8UTkq1t+YdqzSPw3rgPLAa0TrwPiGm5gc8OwWNyyzplQyesb5OwmpGeN
         LLtRoy11SSdvSi8i/fbRxYbsvKA00Da4dQO5SWgU5Jp3ZCfeK4efn3TCVoazlf0iZsrG
         zlJxY1mbAdiwGp+5Obztn/sC8WgI4/9Alllk6oO3Hd26MqNbQc5tR/jPudtTg4NNqriC
         esVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=81J/gLdi4rL0rgCoWuLUmy3RWx9hyvzkVY5LqlwybW4=;
        b=UXkH01rfz7gy1/Lli+l14P3v6Uzc5ilCHXtvTjm8HOCPskvdug4Yojaja41llPsCNt
         u4k/lVnlg7kps/mEZRt0KyfwTG43iuuXJE3RQ+pXI+qax+MQ/Mfxqpv8MySZZhUMXJ+c
         l6rxSVGKPbAeExhRiCYap/iMDWGOBh1yaoe6DKc2hplShNfnWWa3WdjAROlmeKWAJi+x
         8to4bt9NEgzPKVFxgSOYlH8SqsrkyDTwopuorbo+t/Y1MYjvStNouj5PMNgf0X56Y1i0
         4Wl5ij/VPRCM2QDjhj/u7hoU3L2gpeEXR7bLW8n3+RriFPvWqkgdBBIGM1+GC4FrbM5k
         kGjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oeoj5BJj8AinFQdmY29BfGXX/1sNHbrihIXqbG7usB8G1SUmJ
	M6nhFQ51pySpssbokftC6P0=
X-Google-Smtp-Source: ABdhPJyWlxpQcOctLhy8ejdl2CM7JjSWa5oFxgyAVoLyYd1dV/7MqpxePJEDnLVP+5OxuVKQz6NTDQ==
X-Received: by 2002:ac8:5793:: with SMTP id v19mr3307123qta.83.1603216640467;
        Tue, 20 Oct 2020 10:57:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4a21:: with SMTP id n1ls738587qvz.11.gmail; Tue, 20 Oct
 2020 10:57:20 -0700 (PDT)
X-Received: by 2002:ad4:4e73:: with SMTP id ec19mr4658267qvb.58.1603216639938;
        Tue, 20 Oct 2020 10:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603216639; cv=none;
        d=google.com; s=arc-20160816;
        b=jlBmorOkKfcTeCXCLaRx5k8BtaVayJIqT9cIHKMLUETyNH5gavHn5a31TWSwawKTKs
         l460Me7WA7dun8blsbA/bzkYLCGhMcsrkWTZH6LfWvZNDssPG3sxxipePb/KTy0Kngmr
         LmcO3lHftxlJ+mc1lLjB22nb7LyIa53skwn2em8TPzSGS9IB8bYPKZio5JEK6zN9ApJe
         nyzJkEKs45Y0GVKhY42YLXjCngoYSZVa1Ln+bvZWO1LVHYHtuRaME6ctGzt4K/70dTG0
         7gfQZqLHU181xe93RFAe7Dpso/YCs9KpYxvRWYlQ9Zjo8FTA2g1sp5b4vFO5NGd3Fagu
         GNvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Yuo6SMWvF+TjKF/EEXqa7aqr6Ufcw+oSf4KwLjznBpg=;
        b=vjokQ2mIksQUr9pn1FuuPwM/xNwhJDtHRuMFALWzZ8lQ7dqRXIkm2L7sVFvZgt0NPP
         13rXj1h/wZ+07XqieRyrhUe3vafTcGNkVnyl0Z4djbeF5HimWIVABE+D7N65KL8c82G8
         niGcMTt4mNvDSzV4e3EEPMp+GN7r0WDY1OXJu4c/Je0YR9wlA4a5SXwvWzvbTeYBdaI+
         IKBLmizFLZXw+c8quENv5vm9qKJa6LzEmfoO8CO1thBMq9I+eV511SE0qO8IZqOoIDPr
         uw1enhf1Aj/dRUu2BORGaEB/hPIYLWjZZyWJMhRDnp0Pqw8R+lHZfy+DmWHvMTF30sRB
         GCjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DRCtLH5e;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j14si100417qko.4.2020.10.20.10.57.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 10:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 875A62223C;
	Tue, 20 Oct 2020 17:57:16 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	linux-kernel@vger.kernel.org,
	Peter Smith <Peter.Smith@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Ard Biesheuvel <ardb@kernel.org>,
	=?UTF-8?q?F=C4=81ng-ru=C3=AC=20S=C3=B2ng?= <maskray@google.com>
Subject: Re: [PATCH] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
Date: Tue, 20 Oct 2020 18:57:10 +0100
Message-Id: <160319373854.2175971.17968938488121846972.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201016175339.2429280-1-ndesaulniers@google.com>
References: <20201016175339.2429280-1-ndesaulniers@google.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DRCtLH5e;       spf=pass
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

On Fri, 16 Oct 2020 10:53:39 -0700, Nick Desaulniers wrote:
> With CONFIG_EXPERT=y, CONFIG_KASAN=y, CONFIG_RANDOMIZE_BASE=n,
> CONFIG_RELOCATABLE=n, we observe the following failure when trying to
> link the kernel image with LD=ld.lld:
> 
> error: section: .exit.data is not contiguous with other relro sections
> 
> ld.lld defaults to -z relro while ld.bfd defaults to -z norelro. This
> was previously fixed, but only for CONFIG_RELOCATABLE=y.

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
      https://git.kernel.org/arm64/c/3b92fa7485eb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160319373854.2175971.17968938488121846972.b4-ty%40kernel.org.
