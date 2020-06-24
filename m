Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOPSZ33QKGQEJ4ZYI2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id E1877207D53
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:36:10 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id x6sf2258247pjg.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:36:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030969; cv=pass;
        d=google.com; s=arc-20160816;
        b=oqLzUHT5ZEA31QSoAXUxwpPPtX5snXbHE+7Q+0YOL2v90uDlBpWQmJjXbfxSk5orCo
         PzFcC89GvUGaEOceeDH+CxYNFEXxSe6rLWSjB1C5SNvVgcG6qXC9BF6bkZ8FG0oUSkuL
         1QQEt+eFhkD3Vg8ZDs0gr9v6aN2mxNYkTXmhDxu/phRDJJDzFeDYFI2PapYngTsGN4nY
         wnBx/rXk3y9zdZYzNSoOx3IPtl+VUprVskYDzNjZXoOiiLCt3oaHaXsDedtK9WbQT2OK
         yLKnHOjX9xq8n4eYRRZDdLDprqq3UqfJtxz8CO+uf7XBp95gSvsNs0UahB4GtAsj7B8h
         MNtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=RmzJyjUi552datf8hCiUeaP/6lc1L/Gdjvqt8YSqrmE=;
        b=fx5lXIxE8c/Vk0t57Jateb6D4aVmFz035tkZVX66SnU1nwzGfiDMUYiAKl9/pf2ltq
         TXcm9aMGukn084XtI/7fLDcZ2+siRabeFtGddlIcV19TfyIydZeWabKkne06r/lT2dEZ
         9bJnc7y++mohn7kMes0VKRnKrvPujLwN9J/HZJbG/Iz3x1OKA2k6kSbn+LH5yZGY+L6r
         q5iXDiNOAufdh2hQz3LQzs2Zn71xy6zUC2eR4rSV2U6M0LkGaGwhYWgZwLjqU6GBDwh9
         28iZoX3tgpeSnx9r5IAWNSbjNkB8PGDUP8h7rDD9StYiwOXnm3M1H9Pgc7qDTwrUA9jk
         766Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y1j+29kx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RmzJyjUi552datf8hCiUeaP/6lc1L/Gdjvqt8YSqrmE=;
        b=JHIfln+/rocOfroHv94lr4kUz04lWjtnZqWIadwL0yf+akW2uclmZXteEc5i516Dmf
         tMVL2K1xiwta58tDmSpDgHafIHC37I/3OHs2h00wmCt/qHsFOtQ7WO/gDZB+6rfl3Pl+
         /qKLVfV2yUMIccZ/pKaot0vlJ2tCoxObeHHoCmPusJy7h2kPAGfVgnoSwVT29IJe05yT
         ZrWK1VMDW5L2xTWEfHcxM5lnny+NpejzEwJxPYq43kt1vkeLbqTIbayApuk1PlL45FdK
         6TkmecOI0GDIQV8qMTr//g5bf327SF1c3PCMvy3Spl3C+OfwGHYKa1X1gCLU/GlKlziN
         UsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RmzJyjUi552datf8hCiUeaP/6lc1L/Gdjvqt8YSqrmE=;
        b=JVqe80d8oby76Y09FrKTa3lgefqSNIFW6LCWKkJxe22iY5gUWAhbhNbVlj3QVRZeJu
         M3xwW3jZ7lGwyoy5z673n/QRs3CSncqSR4zb44SoekvrjbDMBkSfgYZYUsyKoVJDf3C0
         KumwRyGsXXUzC4JvJrjsiYU7W/AnfSIsQxINdUACkw76499uYMF+lyErAPoRpuwKxDUG
         s2xMenN8uq5I8YUngUZKsI0sbxNWRwfBa287EYzLNnrDpEB2i+ofhE5MZIoG/V2tJ+Jz
         c6WOktNBZtEAbgDowddgxn45lLngdNYtAeCEid+pKLir0AtHLVkNJNsQPDSJXhYmZgQV
         2t8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OI/K4PgJjjBwSwFQJCBCl16TOZODtkVEryKopEPfJ16+/VFQH
	Xqo5RtUSOX4SYJoVE6o25Qg=
X-Google-Smtp-Source: ABdhPJyjRup8MMcNlILohOrtc23DVGyx9kbFrZaxEmhvhEb3zeBmCpr5pmdzHIOCwhipbF6Ph3Er0g==
X-Received: by 2002:a17:902:7043:: with SMTP id h3mr30636114plt.200.1593030969655;
        Wed, 24 Jun 2020 13:36:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8306:: with SMTP id h6ls1132612pfe.1.gmail; Wed, 24 Jun
 2020 13:36:09 -0700 (PDT)
X-Received: by 2002:a63:fc01:: with SMTP id j1mr12003481pgi.0.1593030969219;
        Wed, 24 Jun 2020 13:36:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030969; cv=none;
        d=google.com; s=arc-20160816;
        b=XEXpwv6weL6ZATWMP4Xoy8kiVtFWb1yCw/cTerJCPH5SHehm4SuAcmZJDPoLTjxS4v
         bnTrtKrrYisRqttaVC3j2ArAOhoid+WIyGZ48V2tpcRuOEmE3ovEDwn97WNVetImkMWy
         yIdwV4DUFNHjhFVk3u5FD/470cKEGNs38dQGrCZXGmX5jt+lQ+HvxwsJywHcMjk3rpR3
         2sS5PvelFL5TBiZ//YlxjdCCTKWN/yXXbJvrDKPVRm3qhEcNLFJTcxwN9jK7++Mda8gt
         wgRlljj2W6ohuyl/us40n20mpinUbIfztfeVHqc7FQGLSBsuEStlRO0qDCGKOPnenw8M
         Y6yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=pgO1m61KHUuX3PlQgWsNmv+WwHbeWP7bfAQiG1GvUW4=;
        b=ctM1zJ/7CW34OcoOujn/ADoasv+5+2TtLVlEcgcXLtDFQwdC/qF7Jdof3AH9lryZo3
         7Vu6HXt8xswlnCsEtXAY0z99TsNzoRqyBaXdKPG5V6n8uIlCrk268VgKsXs4MzzCaljF
         JJv2kheZboR2hz1YEpr0zsGW8Cm66Hmfnkmom+4SdB6KeqD7oVd6qTQWlJVL45axUQlP
         62f5WGBwXumYAYnJOkikDOJgcs/H4CF1Rd7YIlyyXC6FWPs/rvEaRLDSIcognX4/+a9h
         LyG24XXAvf0jJZWW7Tr19tWtiVlZNLm60OeF6mtlR8Lu6RQrbsjo4NvR21D1fd2sD5lH
         ciOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y1j+29kx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id n68si742995pgn.1.2020.06.24.13.36.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:36:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id q90so1175431pjh.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:36:09 -0700 (PDT)
X-Received: by 2002:a17:90a:55c7:: with SMTP id o7mr27620634pjm.205.1593030968933;
        Wed, 24 Jun 2020 13:36:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j19sm20510490pfn.109.2020.06.24.13.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 13:36:08 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:36:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Richard Weinberger <richard@nod.at>
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
Message-ID: <202006241335.2C0FB5DF90@keescook>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
 <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
 <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Y1j+29kx;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

On Wed, Jun 24, 2020 at 09:23:25AM +0200, Richard Weinberger wrote:
> ----- Urspr=C3=BCngliche Mail -----
> >>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more?
> >=20
> >> True that, we can rip the file.
> >=20
> > Has anyone fixed the uml build errors?
>=20
> I didn't realize that this is a super urgent issue. ;-)
>=20
> Kees, if you want you can carry a patch in your series, I'll ack it.
> Otherwise I can also do a patch and bring it via the uml tree upstream
> as soon more fixes queued up.

I think the lkdtm change will tweak this bug, so I'm happy to carry the
patch (I just haven't had time to create and test one). Is it really
just as simple as removing arch/x86/um/asm/desc.h?

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202006241335.2C0FB5DF90%40keescook.
