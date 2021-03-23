Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBH7H46BAMGQESRIGFAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC7434606A
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 14:56:48 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id u5sf1987109qkj.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 06:56:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616507807; cv=pass;
        d=google.com; s=arc-20160816;
        b=SpiIUtWkXPng7qFXHwH0iL2lxAL1+vls9eqjvFP2A+XFCb7c4NHjwcSkSnX4V20hra
         KV8m6q1KJWJ9fdsX8jszXqwQ5kdiVvvsJxAs5GhNQy7aCFN7eKJrA8fz6sL0ZGT2Fg6a
         fBvZLs4addWqBLFJuhcPuJQZfpyJNEMsFPRnHvrrqhmqCrbuWjVJtIGLWSo6npF0zHcY
         Qkg3Ke2GpxLZ/rW37jq/NsERuuxrx8l1jIVZLJjkr1Rhf0NmkyRsnY9w2XKccmRwDeoi
         9YZC8Tqh8LOzqZ1y68f6YEm1C2z1D/Uq5REfcvZ2UXTw32TbzYE8KLQQF9ICzq94XhuB
         F7fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NwxWNNaK0kqtayozd01m46Rzykg7uGs78LDbXXN7Kms=;
        b=og63QgM9eHzY3ZNJn6g1WmaNU7r2qN7UBRrhrMpZr0ON3d1du4ffMGTNajYXo/1VCs
         S9MU5ReQqX55/s97UF4hn8M72P46sjCmk900uZeO8wHZUb/C/SNIborHfAM63NFRupPp
         P5vmfH7qsV4E4FBogwifsjDeNy3td+pkKZ5g48gaYNk4TV5NZqDu8KpiaSAmPwd4zi2m
         LRnX+/W//KVnp6Gke1D8sWEFLe94FgJSHtYM56LAgaHotfq9Y/XjRhZ1jAnkhS/MgERa
         JhnxFkdenfm8ynk31OLWcMg+KfB3fUHvCo+yP45sj1piXJFxrgCpunCF407HsFc6I7Qj
         EXSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=le8IZ6Ol;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NwxWNNaK0kqtayozd01m46Rzykg7uGs78LDbXXN7Kms=;
        b=qqlAMoYDsB8cD45kJeAsqkBIffl5qlmr1XdGAWdY+Xs8CqylR6NT9PZbunkcnWxFHh
         vOUp5CfLv+7490t9NFVSnzLyDlmLtPHUS4WpiAv8o+NxXq+cp22/6hGFvHzzww1zrLh+
         f/5FZ47INwA/6TUtxLdsjXazFFMxTkweez4V+UbZ1L4hpQEj3EdSeG5rmdeJ48PoH354
         8FWF5I0Nh1OHmrwDw39BoTAeM9KFnmVo/qHj06CHyxwmzdtMMm7+skslpSlrTn1461iR
         5Sm42Sb+sL9VR3pgpFTglNBJGIXVWgj5/NH2eH6lEwuuFogz387Yc+4zzeY/JKrmnrxS
         0jWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NwxWNNaK0kqtayozd01m46Rzykg7uGs78LDbXXN7Kms=;
        b=syyNaxZsg3wwlxEix9m/EZVJx5J+UMREHPMVjzo2VHUR8IEl5n2QkICiRTvHGInycI
         aBHXIzJMpjZkcnVrGhrRRTKpi/dRCM1FspW5nxX8fyyiUQEZn1l6REYa0b50bdsfp06C
         3hfmowkhcHt11SA1DklbSL+Vlbmia+uI1kS5j4dxL7ERaXPRPT4u/KuoYnFrBhMJ5coU
         r97bQhk5OLNd5NGL9JRzsdGQzLujtL5L9Smd2Inp1OKieW+jA94bi8dVpZ+I1VJyANF3
         kmrfPvCle8kacxs6KAzZ3RgyCHckdwI+a7OxBGzzqnrHMJoitFnd4W2jk4ebXYnDuCaX
         RlVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+gTisACu25J3I1w5aXuxq5+GMNRjc/M/1gM1Jaqd63IqQMxjv
	P2KgmvhwtMqTk2mMu35IGtg=
X-Google-Smtp-Source: ABdhPJx1K4e1oHJJ84TGOeCm9F6aH/ATpLPbqKl4aCiSZDarlhw3ATtDR+tUs1pOEc8dbeo70Ofn3Q==
X-Received: by 2002:ae9:f818:: with SMTP id x24mr5423576qkh.101.1616507807709;
        Tue, 23 Mar 2021 06:56:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4c6:: with SMTP id q6ls6170180qtx.6.gmail; Tue, 23
 Mar 2021 06:56:47 -0700 (PDT)
X-Received: by 2002:ac8:109a:: with SMTP id a26mr4362614qtj.156.1616507807298;
        Tue, 23 Mar 2021 06:56:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616507807; cv=none;
        d=google.com; s=arc-20160816;
        b=hcOQKxVnO26Ov0ELWrbCWb2IqWkYG4s9pXkJwe+5sRRWQ72Kw4NDaqK0qPYmeP3rMs
         EnPZYiZlsVMuCVhj0Lp/tObToNYsglgPxdmKXzTUqt8L0HbZ9GJLKdTxOF/eGryYKDHE
         YypzHKRjoqRSdz2RM28QDPEu/DVw2PNRICvFdjj/MJ9DmnAjuwgfY5Z+3N58zAaMJVGp
         9tI2QvFqBxx+WwkePnn+ybAxBqUcXzRhuclGROnZRz2KjHjDU/7vp/77cE938OuAk3r/
         8Z8gp6MlWNWqSIOKFVOXn9860KPHlV62ZBlGQYDfy74ClfLS6ToNq6OhShJWURxvfCxR
         71AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=j3mXP4S9KOlh1bl8aoXVRKw88IIOU9/7kJaQJkz/Hu8=;
        b=yM0P0BwGsCvfEHtFI5Q9CcEWTsgE8dL99EKyfd0Nn2ngwWN+8jqF2r/RMImO9zG6pz
         WiBsWwEg0P/ksnq1rk7okHGIWT+N93Q9kQ3MOdDZ+RoUp1hlI63WabLamFD7Iz/uVVxa
         GyS8DLJAxZaWourNAdb0qmKwhvJTrdoNZmTGKlhoHt5dJG5J9Jv/U5lyQldKAuIaCTHT
         WYGqcxdL6atSBKnaOdUfaRFX+gXCyWUnGkEMklgF+Tni1IiFpuNG+h/hq9lq2KiPe0vD
         pG/bXq1uWqOvp/PM6quNegy0PmCd86O/DOpXPXwy11Ufw2X1hJ3re/BdleM1p4b18uiA
         HDMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=le8IZ6Ol;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r24si904260qtp.1.2021.03.23.06.56.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 06:56:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 774A061994;
	Tue, 23 Mar 2021 13:56:45 +0000 (UTC)
Date: Tue, 23 Mar 2021 14:50:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] scripts: stable: add script to validate backports
Message-ID: <YFnyHaVyvgYl/qWg@kroah.com>
References: <20210316213136.1866983-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210316213136.1866983-1-ndesaulniers@google.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=le8IZ6Ol;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Mar 16, 2021 at 02:31:33PM -0700, Nick Desaulniers wrote:
> A common recurring mistake made when backporting patches to stable is
> forgetting to check for additional commits tagged with `Fixes:`. This
> script validates that local commits have a `commit <sha40> upstream.`
> line in their commit message, and whether any additional `Fixes:` shas
> exist in the `master` branch but were not included. It can not know
> about fixes yet to be discovered, or fixes sent to the mailing list but
> not yet in mainline.
> 
> To save time, it avoids checking all of `master`, stopping early once
> we've reached the commit time of the earliest backport. It takes 0.5s to
> validate 2 patches to linux-5.4.y when master is v5.12-rc3 and 5s to
> validate 27 patches to linux-4.19.y. It does not recheck dependencies of
> found fixes; the user is expected to run this script to a fixed point.
> It depnds on pygit2 python library for working with git, which can be
> installed via:
> $ pip3 install pygit2
> 
> It's expected to be run from a stable tree with commits applied.  For
> example, consider 3cce9d44321e which is a fix for f77ac2e378be. Let's
> say I cherry picked f77ac2e378be into linux-5.4.y but forgot
> 3cce9d44321e (true story). If I ran:
> 
> $ ./scripts/stable/check_backports.py
> Checking 1 local commits for additional Fixes: in master
> Please consider backporting 3cce9d44321e as a fix for f77ac2e378be

While interesting, I don't use a git tree for the stable queue, so this
doesn't really fit into my workflow, sorry.

And we do have other "stable tree helper" scripts in the
stable-queue.git repo, perhaps that's a better place for this than the
main kernel repo?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFnyHaVyvgYl/qWg%40kroah.com.
