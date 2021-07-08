Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR42TWDQMGQEKVGNODI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A673C199C
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 21:08:56 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id v25-20020a1cf7190000b0290197a4be97b7sf2786635wmh.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 12:08:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625771336; cv=pass;
        d=google.com; s=arc-20160816;
        b=GxIcqxWiF82AB7+cllJben0YbRFq34xetYKE7GR7HRSfU6oYXTsDeeisZcMo+pMYyG
         Z+OANDmYl4TzisGoqIvD8kQpma1dI5m01DP2NOFTKzDsYU9/GGf5toGUAUI2kNFtf/2v
         hKmWbzgj+UsoXJ7vaqMtLIHzPPB6SXBZw3KFJnlEmtbhKE4iWB9rc/bPxV6RPFgbLu0V
         GZTopRGHPthAe395ob5wuD+PVWOSSz7db7BFAaq3L6w7+SmYJ/l+MqA3u/aN9c9XL5lx
         s3sQeHI1+iLWstCUDhZv/1w5xj7grs0qBYB1lddC2Gj/MjBy09JG1kdWZLxUd5XYNfXL
         4saw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m2XhZ8PqHgfL1KZSJK81XTLsu7LiOK0YLoZY7qy0JhE=;
        b=JBAHaJLQPO2Cs4bjK4GMIHibs87NJFT3lvXvRaUFR7nXvPi5xFoSvgmvjx7wRZfKdA
         9wXjF4FopQ9DyhKImuVw+INi+RUoLDsLKjgGGeepMy75N8BenD5r6Bv8vbzM18KOFc7F
         XRRosFibevXLowoBjsWLRFxhbdtm9Nv2K2Q4CdcNRpoRmZV4AQoS0LW9Zij4M4WBDwoM
         NEOhPujyx6KSPClQ5kCd2XSw4/mhhq5dZs5SDFTVfvVkhfJscVy37I/LYMFFoPEbo8HJ
         aJb9JquXqNTlSIO0VeiWQD14INA4/RcK5kl6gw0px1zpzKYDpWK5y9v5Defpfqa5Rzvo
         jPFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CS3c/rCT";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2XhZ8PqHgfL1KZSJK81XTLsu7LiOK0YLoZY7qy0JhE=;
        b=SJJ4tkr2C30h/fUBquj6trIu9nqIVewi9RM0VYUVc2Cx91ryW1I8nT2GwvT1S5ERap
         RgJEgeNLUrg1yAFxB14S46atkU6tprhwyMrBDC6iwdx1+CWzBsmz6zJoxKmUkynuEabp
         pxQix52tF3b/hBDZKOKrUEHWJqimRh9KwbqJELqR1DsqwkoFKtHoC/Tl7QhF8ysYigei
         FLiSPV+Hm8BKMPjh2Zrnupi7Qf/OmSN5WcHJZE6UZyAnLcPxSGP+UlLNXTALPOQ7VHMJ
         FHaNutVovsFS2p3uD3GyEr6+B9y1y5xRUDE+Oclj5jM9uEmu8Cfi5BF29P9XJJ+O2K4Z
         josQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m2XhZ8PqHgfL1KZSJK81XTLsu7LiOK0YLoZY7qy0JhE=;
        b=c56thjYGO5BRwov0+WUpM61pqtiunFJFKu0X8gbVw5RNpiiVx+PiRmJ+UUsGo5uEUd
         /iGYtVWzYJEjn+1hgELmRLzZMPIyvl5MHeIcDOIOx+rdLbEu4Q/uhj7AkxWEh3/0wxOj
         myx1cZQT4FEcbv634W4PbHh4KOx5NupJK85ZvxOLbUxc4Lyk7j+sEwlFB8DrkFLlZ5r4
         W9PwkwC88BBeWGMyDWxZl+48O3n3hxmzQwF7w55IquXF8SskVSvhm5nG5daaCcea/379
         hJ6E4If7rv+Hedr6KP1jvWd3XT0Kb2ECXQp2HKS7rHGqTJlbxaAxt6jHY9bjekp5eK4+
         lThw==
X-Gm-Message-State: AOAM533FutEFf31UMLgDfc8YhZPjPYNQVklXQW10uJzIcrk+MbQwADcO
	boH86Fd6G/DeL/JqR+Z8qRs=
X-Google-Smtp-Source: ABdhPJwTtB5oqRB5UDhvRBa1jViZC2N2OpgMENWI4hYvQ4X+u7XIhsPsCnQyTLFlOnKCgMpXYxRmLg==
X-Received: by 2002:a7b:ce05:: with SMTP id m5mr7224605wmc.64.1625771336043;
        Thu, 08 Jul 2021 12:08:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:3544:: with SMTP id i4ls5983876wmq.1.canary-gmail;
 Thu, 08 Jul 2021 12:08:55 -0700 (PDT)
X-Received: by 2002:a05:600c:2189:: with SMTP id e9mr6372596wme.35.1625771335254;
        Thu, 08 Jul 2021 12:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625771335; cv=none;
        d=google.com; s=arc-20160816;
        b=aoDVY7imXfpcaYFvuQ9G80lOsKYbpwPKcQLxvrHSd0GotaZrGen/x/7WoMOXEnrqJx
         d+W6U49Qt3zEKY9d3dOTm/KCaBmS4vD7mvS1CoEtG15j0T8IlgINj1gr9D0vNFVbdYOz
         juyGHbAYNcQ5Ct+b1KnWi2cJPLTCQBAwuZmv9UvIY36FMClIHTDXY0lNasNPj+eaYPtr
         HnImau+RbJ8BsV8RBHj82WYnXrXhUecaXKsLd5Sm4aitOcEx76eheeXKNH3g8S3Z5Jl+
         k3jx8Aen45UX0h+cjYpZSM5gAGFzxz/tLXORVuCew9WrpKNlyG8mTnLObnZV0v715xjd
         nGWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yxq/oYeE5el0szoQlSwnFi3D5C8UV0iamECRppUCTb8=;
        b=jWxI/48FC2qpSNPYEakoki1CQJyYw4fqdqWotkgkdvzSpIsnsvtmCKM+ERc0Zw0YbK
         N3wuRdqcKTMwshIMNf2Tbk/MaHUI3WqVnXO8IqvbxsCZge8Uf0EH/SWJzbimAifVTiTk
         I+Cho0XisecHgOLdUHkmJofLAj85g11K7J55hdWda6riO5CpCagMFsAUHmPaYXqsburE
         sTuN4F4hNB1uiAUNKdE3Z4RXUd0xEBFkPr6VsinqwjQzi3DKYUzPHvdPfWN7sHSF3Vzj
         Pn8TpsfTPYIw9pIEux/S7XkDqccRThazr8MtLtVGsxL2OEr0ZwhFMsMd4GOkazNghQLC
         b3Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CS3c/rCT";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id z14si125555wrs.0.2021.07.08.12.08.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 12:08:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id u18so8552889lfl.2
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 12:08:55 -0700 (PDT)
X-Received: by 2002:ac2:4c55:: with SMTP id o21mr21895033lfk.122.1625771334722;
 Thu, 08 Jul 2021 12:08:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210623141854.GA32155@lst.de> <08df01d7683d$8f5b7b70$ae127250$@codeaurora.org>
 <CAK8P3a28_0KJpcLRQrDhFk8-ndxmfk7-Q2_qcRRiYkyh-NNZUQ@mail.gmail.com>
 <08e101d76842$94f78a60$bee69f20$@codeaurora.org> <20210623151746.GA4247@lst.de>
 <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com>
 <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain> <20210707141054.GA24828@lst.de>
 <1ee8fc44-3e8c-91c0-7909-a636757dbda4@kernel.org> <20210708052751.GA18789@lst.de>
 <CAKwvOd=iRLQPum8-jaCG90TPyxDptNB31yRHMEWgSMxjv=KuHA@mail.gmail.com> <0a6801d77428$13c88060$3b598120$@codeaurora.org>
In-Reply-To: <0a6801d77428$13c88060$3b598120$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Jul 2021 12:08:44 -0700
Message-ID: <CAKwvOdkQhq-hPr=S52D=kJVPGP507F78hY2PbC+hbuq3MZUkDw@mail.gmail.com>
Subject: Re: how can we test the hexagon port in mainline
To: bcain@codeaurora.org
Cc: Christoph Hellwig <hch@lst.de>, "Manning, Sid" <sidneym@quicinc.com>, 
	Nathan Chancellor <nathan@kernel.org>, Sid Manning <sidneym@codeaurora.org>, 
	Arnd Bergmann <arnd@arndb.de>, linux-hexagon@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="CS3c/rCT";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jul 8, 2021 at 11:36 AM Brian Cain <bcain@codeaurora.org> wrote:
>
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > We're looking into statically linked images of clang to prevent these
> > kinds of games.
>
> Statically linking against libc++/libc++abi at least seems like a good idea.  Let me know if we can help.

Consider subscribing/reading/posting to
https://github.com/ClangBuiltLinux/tc-build/issues/150.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkQhq-hPr%3DS52D%3DkJVPGP507F78hY2PbC%2Bhbuq3MZUkDw%40mail.gmail.com.
