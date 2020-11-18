Return-Path: <clang-built-linux+bncBCT4XGV33UIBB34R2L6QKGQETJ3SIHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 627CC2B7438
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 03:37:36 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id n18sf328731otf.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 18:37:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605667055; cv=pass;
        d=google.com; s=arc-20160816;
        b=JoXrYI/yr1fC9CyP8xJDaQ0vFW/4KqduNGF7HpTjxzbX5sKQ05t58qVXcK9wmWnAOP
         kjf6hrdcJn9lcBN7zdQRK8VbLkxhYOQj9Jq0DapDyY/OXcMIbMaDmcqcG3YnZGGn/ujv
         RgXzJYrE9ZuHJv3S2r4ATgBg++tmsf9rzuiKMa0Fu4CHTzF3f2T7rVHLxQcw/65iYWVH
         MEtdz339y4bMs4JlV/XKtpHtbjwm5XzGCpcXesQ8DQ76Hs+wvFRFHXCTyvhJTd8FDBvp
         tgZY9u1bomitYj3pnZLkU2Re8tz4Ic95IE34J8ra6RdE0I4fyoSVCMAuMcbaO4VB+fS4
         UCnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=8vHpHffMAQu0rB2NDl5PhYemlZMWP2EY+9xRIqx4sKI=;
        b=H2pLZZOTA9cmtF5DlvQXyFTbybxQWYX7NXEvBBL2RlPibPUtjJMJdk7OFDKa0oeq22
         ig8XNlrNj4ecbMIQs5OxH9ROEHZWapLqXjQReN2AUKBKFY53lvQ3kqAN37jRI6tgcAUh
         IDqjMOjefhrm/w+biYdMkE7Bosshmthzf3YqQ+wlKkz5hHAMbhRD4bI4+d68kg+GSzax
         wZtHPC79jato+C74E+hSsl3HilH6Cywo2LlMtRhHxIkMHnmKt7qclIUiQyOCvbYyxCA4
         zg9kcbeIie7NIFH7Efj5R/IktszazFzu9RwL27mrTXFBCVVk1/TkXNDA9SxH+SMzoJTW
         1uNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=baGCU4yW;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vHpHffMAQu0rB2NDl5PhYemlZMWP2EY+9xRIqx4sKI=;
        b=fp3uiFptBWKvRAynkx2XEFoVVtFy/e1GiWjY+8OoOWV9Jr9gmNbSrmau2BG2D22+3F
         DGd63en36qJVcZPPNpeAbuDkzRAvEYVb7QO3PLxkWr8WUc/D1o71mfVzjbXr12iwmPWJ
         kRxuuXM74t6PRKVgBzan1hlo2h2Z9PIBpmHcSFBTJVanogtqqmJJweW3P71URpyx+f/S
         VoChPXzhQPNkpDfDdSyPJ+ovCOMkQBLIOpkTIGZTbQB/xJSbYHmWaWsgMUWoP25U89j/
         TYNhoRSAW2k//HAY10Ql2NO0v4yEdsgomVWrQFVWsyx0dQFtDF+hZLFehrQ3JdFuSmKG
         +Q4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8vHpHffMAQu0rB2NDl5PhYemlZMWP2EY+9xRIqx4sKI=;
        b=eRpPLV1SnRlZt2N3c32fIgK6Ii5fPEqyyEhsAD9zLfyNGhXldeuLD8Dc1uKS2ub7Kf
         VGQ+gipE07YZVcnmdH1I4+uJuSoe8CO1zHeVgnxBf81sFg0UdEwJ2q5grlqnm/gxeT6o
         j0tGyUYKRmE+35UsT8sCKAO+5vQ6LgVeVZixy+YxQyefCE0yV+jUwqlx2bC3EG8z4RsT
         p88JlB/XX+TqFDQxmF0DeUZkMcs4CdZpYcB1jDV+OwdGVlIDdV0PbSrIhrOtMrOeXnD4
         NiovjFG5e8eoVydmjl7ywaYpPttvLxXM4ZyFheeiwch4vs15HSbpcLqvmddiuTpUxdAy
         j0HQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NQRDWvZReK7r1nWOoF34bt7eWYDlS2jPN9TRIvRQn7wSqp4km
	tpQ5EXw3t55xkNf6ah2S/sE=
X-Google-Smtp-Source: ABdhPJzqt7NrLDSP91ixnKMz/2VjmztZAEuLhpRgWtDv0mzpg4o3ybLEInoIlXquV0Ml5lSLGlqQrw==
X-Received: by 2002:aca:5015:: with SMTP id e21mr1429591oib.41.1605667055368;
        Tue, 17 Nov 2020 18:37:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4e8d:: with SMTP id c13ls4490421oiy.8.gmail; Tue, 17 Nov
 2020 18:37:35 -0800 (PST)
X-Received: by 2002:aca:d03:: with SMTP id 3mr1448434oin.75.1605667054936;
        Tue, 17 Nov 2020 18:37:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605667054; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVDf3s38gn8tZNvWDdYhmiaYW3R5/aleT/T9cd/ssyL+6lcEtHEFa9fgUEYXgNyY2d
         5Go/3znMRWoNLZXLKh8D3QinxJRcFbNb5xMggUex7lgASSo6pEJDtFBveuR2PrurYcyS
         WAjdv73XXvjITkgeMcOP5m/a3kmM1kiz55UCj4p4ixNxb5ofA3EaHjikb+zmEDoxuEKR
         pjLBDYxb5GZP0L25Bkm6BBBwavnJzQRBUAv7E1+1t0SXfIUz3BN+vhECmezNIt6Rs69z
         wAezNxagtLTHUwC8T0kqyFqE/F37VwxOEz3S0jHjSlUaZy5hwDJMMj+y9aiwdx+ujUzE
         LXRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=h4q2HeSStsl3/FUkavQ7BwnikAM7b9mAoy7V/pQiafI=;
        b=CvWcAtX0ClHvYVqBptCliWqjfAs0RXGtoAEaAY71IefLOHJ6YYyndeKOkiW3J+7dK/
         Aia5V9iGx/2F8Na6tvh3k9He5339cJgM76wMPouzN58CdEiXFEC9EWwerXaNIWgA+xX+
         MV+bYrLoJZeYLLG9fiOoSRuEyj8kCCYOvLrl2VgGi2G8ygh1jJb+IdmJjJd2HpA5Qcx9
         vX6y7KU6tCVJSGKDk/F/wqCMRy4uRcIxQkJWOBWt++Q6BpoFmZo1twC1jgKGMRlKc0CE
         oHjF2IZvrIO43RjQdNgYZSroDTIiIAEHlQxlm+3QAQYpOVWIQSn5V4PDH93vEqAS/9VJ
         abuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=baGCU4yW;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e13si2053382oth.3.2020.11.17.18.37.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 18:37:34 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A1D2620DD4;
	Wed, 18 Nov 2020 02:37:32 +0000 (UTC)
Date: Tue, 17 Nov 2020 18:37:31 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, John Hubbard
 <jhubbard@nvidia.com>, jarkko.sakkinen@iki.fi, Andrey Konovalov
 <andreyknvl@google.com>, Alexei Starovoitov <ast@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Borkmann
 <daniel@iogearbox.net>, Marco Elver <elver@google.com>, Jarkko Sakkinen
 <jarkko@kernel.org>, Kees Cook <keescook@chromium.org>, LKML
 <linux-kernel@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Message-Id: <20201117183731.a3ee0b2d8e4cd81f8825d189@linux-foundation.org>
In-Reply-To: <20201118023118.GA1069826@ubuntu-m3-large-x86>
References: <20201104013447.GA21728@kapsi.fi>
	<20201117030427.61981-1-jhubbard@nvidia.com>
	<CAKwvOdkEFPYmH+JFC5a0+whb_1H84gS1WU5FVpV071Bc4mhiCQ@mail.gmail.com>
	<20201118023118.GA1069826@ubuntu-m3-large-x86>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=baGCU4yW;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Tue, 17 Nov 2020 19:31:18 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:

> On Tue, Nov 17, 2020 at 10:46:29AM -0800, Nick Desaulniers wrote:
> > On Mon, Nov 16, 2020 at 7:04 PM John Hubbard <jhubbard@nvidia.com> wrote:
> > >
> > > Hi,
> > >
> > > I just ran into this and it's a real pain to figure out, because even
> > > with the very latest Fedora 33 on my test machine, which provides clang
> > > version 11.0.0:
> > 
> > Hi John,
> > Thanks for the report.  The patch was picked up by AKPM and is in the -mm tree:
> > https://ozlabs.org/~akpm/mmots/broken-out/compiler-clang-remove-version-check-for-bpf-tracing.patch
> 
> This should probably go to Linus as a regression fix in the next wave,
> if that is possible.

Yes, I'll sent it along later this week.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117183731.a3ee0b2d8e4cd81f8825d189%40linux-foundation.org.
