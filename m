Return-Path: <clang-built-linux+bncBAABBFEYR6BQMGQEFCV4XTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3475434F5CA
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 03:10:46 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 17sf277126plj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 18:10:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617153044; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xy5ioaiv+diByA3OqBTeWETG85yJ/OxvowR3EMJncHK/7qel8/JZxv9Nky5BgWOGuq
         jgaPiyFfAS50OZawXTUG/5mcXQQhE2AEWy1RAF1Bd4nEppGuDyhLwbKykuQcU0/YXmiV
         VSsI8JfYdY5PlBBr17rV/AKBMhoXSLp5vJmMpFlloFMaFXfM/83cKfP6gbgQ7+839Sbg
         fPePKmTRuyI21OZU9fOSFRmM16nHJjtqZ3xvXwWK4AmdqlDv4GkBYYBqPS14yvT0i64E
         RjwBlkTQbl17hZOxTD/kLNYgE8D/BqcyY069fauWOPHJiHjhHzcidbBJRP+R5G2fryU6
         9oiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=DlV8168keM69pQkJWxQUoKk4hPriiNGdIrtz2vQWolg=;
        b=oOejLCPCl8obtxpRman9BD7aouPAHHQf/GXUUN5h4y+idH5MDncz9oq9tP8igtpnTW
         Gsd2//Gwirk/C66dwUc7Wj5jdLmJh3mLWlwnkmnWMvVEKB3YQIG92VtvoJ4yzRJdyn/v
         yVg7YHk94mlpMAPeThZ3NX7XI2B6fRG33p6n/8M7CJd8WW+xM15z5XGRjw9NuNDvx6Yy
         LS4hoaEsHrfVrq36sxbNnYBf9qN7+A9qxUSTWMLFBqRqEhQeBlM4Or61V6gCq7c4IQEm
         eo6apI2S9BzevudOZvq0yQldGpavpN44nDSam9Q+V/yqf7OUaUBetukMpZ2n3Du/k05k
         d8eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DlV8168keM69pQkJWxQUoKk4hPriiNGdIrtz2vQWolg=;
        b=FQaJ20mYj/A7e8AK9VKIuvSHTNw+Jd9Qwbc/Wu6i2/+yY592y6h42GfqS5UWlgmSik
         e/U3yQGXccs3EOQM+oUZNXKzxAqEY96mlzVOGwVEWrcu0r33iw6iSaDJ/fCG/8mZC1z9
         wcBOS9IjM0+E+3nZR4Tb9o7hBONxWKZF6euHudgspdEUpaYuauhOHCpTiPRAuE9dhMfM
         Alre5th3ZVvV+7lBWB9spjkqvHsbSwtQD2K86gTz1XXOEz1u1ERHpWdLW71eFCkx7EPQ
         WTKj99f/ReFEuk19EZ+vItX/lRuOakOrU/WS/il8w7mwhLRbBLPcdmX/XIwTq6rc6Zb+
         yyMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DlV8168keM69pQkJWxQUoKk4hPriiNGdIrtz2vQWolg=;
        b=UyANpeYdhn2RyejTsnmg8jWrtimuT8pnuNhBxDkpvp0eymjVWzemE5zd4Q8jb70FD6
         Ps0JciSuqHhm/ZHxoqt/B6rBTFEh+tXIoeA9CWBww2H9pYZIuuVCESlRZBxLfoe/1fDf
         WP0+84m0sfd8p5TueJmNhw6ay6Zv0RZTgXzVkVxT0Td9lwWCO5mwZgcDqHdRpAM7Bp4r
         Lu51NIExVlxUdf87achJre+4WC28L9g5eUzVCDk6qBvQ74GK67zmIQv3HRd/PqAc7f4N
         P5uEzSe07+QmkFFqkOtBR3ZtR0A6s47QpKYrim6FdO9I9G42vTUyF+DBDAuoDWEX6J64
         9z0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533m2sM0tWpaIYdAB7N1Gv9dKoNVnKFqwxNO1zLB2M6tIqUIaycw
	TXeSWbqHROsrRgA+aHNy1Jw=
X-Google-Smtp-Source: ABdhPJwzIGmCeKybOb5EbiYoRgpWp1jQPF+PMsSVMJb2fBxkrkySXqu8FXhvhAgfOyfgk8uFMltNXA==
X-Received: by 2002:a17:90a:9312:: with SMTP id p18mr964559pjo.171.1617153044777;
        Tue, 30 Mar 2021 18:10:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls248482ple.9.gmail; Tue, 30
 Mar 2021 18:10:44 -0700 (PDT)
X-Received: by 2002:a17:902:b68c:b029:e6:bb9f:7577 with SMTP id c12-20020a170902b68cb02900e6bb9f7577mr751848pls.0.1617153044355;
        Tue, 30 Mar 2021 18:10:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617153044; cv=none;
        d=google.com; s=arc-20160816;
        b=nBhi7S+acnYY/Hlk6kLpDFVe98eSWi6y5s+7oyd7H1kM2jeof3NtkLzwgK/upHEyGD
         PN1eOLq8TnOKVUFrH4fbeJqtrzj1RxI0iERtCnXDamhgQy+BOBvoUUBUnvNpMrxlNGWh
         cnLHUNYpi6Tk0qBmy5/f9yeBurKGcPFHq1CZqz1IXJ7l0P5EzFENTYbms/qBMgInu30T
         2fslSkEyhMVtwus9qWg8nqPKMOtjSxLZTIcIBBEDaL7bE+AimW9e5OKtiibuOl+Qr5VD
         Skii16h+xgzjEPbbPljHiOs3RcpnbtpoNWio3uFzgmUmgF0Ov/aTeO+xf6vd9Agc2avW
         xK1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=sv3OB8/XlURbFgjqeXRjQ+CF0dCIRsuNZvyOgZALcUc=;
        b=rwjSDZHg9OPm5Ir0VSU6K+OmN1UBIsuoY7oCATxVNVwOaw1RSPf5CdD5LcLh2jsY38
         A+NJJj76jLHwfOgKgyC/zGPzq5fwkT9SJDrcikCpBLyV/FkXsCCy+7nqRc4zbwAzSNJm
         YKqv6TazNtBPyobloCJRrut15KciN7//yiIOculivIiC8s7gLwrXXjsbdK21qwGUbaeg
         yvfSBwJ0mAxiLkA8RbpFvRjdfQD3gY+EM6FcsYcu0TUDKjqpXn/eYHwtomhlUutJ+28n
         Z1pP/5eCVSDjBBD2SBrTCTJW4mLSOxKtEjVM4b+dgoEpAydu9JEjpqrasEg1RB2sBTxA
         zDNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id mj5si312719pjb.2.2021.03.30.18.10.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 18:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4F97Xr3S33z9t0G; Wed, 31 Mar 2021 12:10:31 +1100 (AEDT)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <nathan@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org, Paul Mackerras <paulus@samba.org>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>
In-Reply-To: <20210302200829.2680663-1-nathan@kernel.org>
References: <20210302200829.2680663-1-nathan@kernel.org>
Subject: Re: [PATCH] powerpc/prom: Mark identical_pvr_fixup as __init
Message-Id: <161715296566.226945.1083928509084280457.b4-ty@ellerman.id.au>
Date: Wed, 31 Mar 2021 12:09:25 +1100
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
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

On Tue, 2 Mar 2021 13:08:29 -0700, Nathan Chancellor wrote:
> If identical_pvr_fixup() is not inlined, there are two modpost warnings:
> 
> WARNING: modpost: vmlinux.o(.text+0x54e8): Section mismatch in reference
> from the function identical_pvr_fixup() to the function
> .init.text:of_get_flat_dt_prop()
> The function identical_pvr_fixup() references
> the function __init of_get_flat_dt_prop().
> This is often because identical_pvr_fixup lacks a __init
> annotation or the annotation of of_get_flat_dt_prop is wrong.
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc/prom: Mark identical_pvr_fixup as __init
      https://git.kernel.org/powerpc/c/1ef1dd9c7ed27b080445e1576e8a05957e0e4dfc

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161715296566.226945.1083928509084280457.b4-ty%40ellerman.id.au.
