Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBHVEZ72QKGQEFKBELGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id D56051C858B
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 11:17:19 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id ev2sf5336686pjb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 02:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588843038; cv=pass;
        d=google.com; s=arc-20160816;
        b=cZ6va1ikPBYCHqnWU4n9b1D5RyoJZ7+fsRNM7gXeyawndTxbjHAw5KcpWDqlbpTOJ1
         Sx7neu+CXK2kot+PI7bzXUm8ftmgc+KShf/WmuGCECXetU8cYKzGJoDhBA4h8bERJUtC
         2x5dOBm0xl5IMmS8QgLtU8gMq3zn0GEH1pE38GFZBeUXmWrFsYzm7bKUsNyLzdlyeGvD
         PC1GM8PEe1HTE/yEkpYNxKuULi5ISK+iG0TDeZnX4c1ZSEGkEpv4cR31OIR+bJqyR9HZ
         9oSRd74sFEWO6RAWF8kGmqrL63FX4eP+44TxXHAZlXed37i+NnAY099Fu8vh4dXySksx
         K3sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RaGkU3psyfmFYr+X/8xRJC2RFw7aFlEmJWdFcI67c6A=;
        b=KbCICHYBjdF4r/oo1p3+3iAyZE7WmKzoVWRvv09GM+8h2iXp1aLErCbsuP7EWXsB1Q
         ctVQYySFSoHI/SqZy5UEPsyp2SuHYoE45JWb+z47W8tYtiBUz3BMOXGasOtJQ6doNxam
         lCxTKugzkv9sPWky3qRmS2NqVJGSAET5Rx9xNzyocMd3CwbMKIEoXZdMZLhPyjKApLxb
         zn2LfhqrHovOJs2ZtjzlyhA68Oq7h5mwbZQUEul1T23A6cJ2/lzPe3SmElJpoEWY+Dg6
         P1fcbuZ9PeBh1wPgsAxNBxaaqMgLy2iEgfPG1cqetiBrCYODWqavxMWPqFm+L87IFPsu
         JwoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDHCH5FQ;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaGkU3psyfmFYr+X/8xRJC2RFw7aFlEmJWdFcI67c6A=;
        b=leEsewrIzjg+YaLgcH34+Azi3TRQ4j09JTgVG6IfxtUIllRB4wMgPZYpLySdUVsPTf
         dXjbXjTxEHUMnYDlueDkdK3s86ZokrUytQgbFTJG9CgO7HuhGxmKq5LW3PNuWwnMJgU3
         zhfe6hKOsLpDMt76F9FPDpOvM7vfAwyHZG//FRSkXRwD7ylp5F1QU5Ww4RmjB0/FivdN
         ouksCvrFSJA0RLVX1SpXqAiwVa5U7M70lcOKMAjSMJhPS6Zb/PnAgyhJdy+2GPJvDi/K
         PNXr6lQNYlTJqnTZJoHFDNY/Zw+Dchzf0S9kTAyQe9nh56HUCiTsXEw/eNpNFZ5GpHup
         fOYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaGkU3psyfmFYr+X/8xRJC2RFw7aFlEmJWdFcI67c6A=;
        b=p3HDjYGiwrCiyE98piWnJLrLCx75Q7F31tRBHSyHDHH+w1wz3q1m9YeH6JM8AKvU2q
         X7+Wr5/lb+gqs6gcPQPk3pFHeaLqtUNHqL/iiG0QB6Gjl/1YkZ2ty0tKCNBPr88UqYus
         b2ti26/YMeW7QRzP7t6AHVF9fT2zKuHdQlYsJxUy6QXc6leXX6eL7+Bu4H4rtNp01k5A
         vissdPjfXxP797p26BmzJoyDUOGAXZyRoEfLYsdAMoDdCm+tiUpBlsjOGn89fl96C/J7
         zpuMZVLj7Mq8wYz2eEe4P6shKc8oT1f866+41P1qmgddcRqq3HuRR0d10Ch/kJOsAcj1
         r3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaGkU3psyfmFYr+X/8xRJC2RFw7aFlEmJWdFcI67c6A=;
        b=M+FBpthrLUSl8+2bM5zVNyQFrS2cBIz7UXwIy3HXp+f9ja8UWteXMs3sVVgwHXBF4T
         NR22zSJNx+KOHhxgUqzqG6XpAEFQYtNKu5fO8R60gNvsE26u+8dfXsbkggK4Tjmkhse9
         2c83nnGhNlmEHk6dOcdrrWKiVt6Gv0fipZYAXsLuF02ZdU9Ei56qXf65dVltQJ9DeYKS
         G97ssbvGM9vFAVAtXXtesUQZpQZyIR/iOv/hYTvaQh0F9DzcVQJ7cf6EOXAZbkVGaF6W
         jNPLDQhkpQkx6yrkqufKak1fapssZh+W2QbMT6M1g/rQ73BFYbi3sqt3HaXX5qs6gyRV
         SO1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaBVcdPAlXPjZci1m++v0GyWKY4U1Z7g9GL/bXSmNROz7MlJJmv
	D9qdacPjB332xnuNgHeFZ/g=
X-Google-Smtp-Source: APiQypJ2QgC0Y2Br/t7pllXzZK3K1mqvfMC7TBaYc6Glt59Rb0Jeo+yeabmIVSkXuthm0zNGG70sGQ==
X-Received: by 2002:a17:90a:21ee:: with SMTP id q101mr14990414pjc.24.1588843038252;
        Thu, 07 May 2020 02:17:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:48:: with SMTP id 66ls6545314pla.0.gmail; Thu, 07
 May 2020 02:17:17 -0700 (PDT)
X-Received: by 2002:a17:902:fe06:: with SMTP id g6mr12780697plj.105.1588843037784;
        Thu, 07 May 2020 02:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588843037; cv=none;
        d=google.com; s=arc-20160816;
        b=Q9gDpmmvHlH+3Zi6i+bsDuLhTJyOuEWUO+1NDUTHfH5ucU6eEpMCBpEr32V4EpjX7e
         iW2+aS6jQZ3Xo4Qh6lqmLoXZLO4F4uyJVhFvvVQeBm8xJ1d9y2G+AX3lSSs07aTliRMQ
         D1pcsHR72VvffqwCxZ3foZZhxQ0nVs1ExbfpzRh1AEa6j770Ugq0NmpznZB/OjA5iqWY
         rPeLDH93QudxbstietejYDsAJiLNGDRSu6HWSQlBH7L1XGI5Q/1Gr1cPT8oIYCuI+8Ll
         qpfyq/fUfWrtw3tbCKe/Z6XW8Y1jCUF9sIzJ98JsDllg4jr28D7VoNzhgd7eDuYrgQ2i
         ggzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NsGXZKVjnwITEukQUNn3zovirkspDit08UiRlVwi+Ws=;
        b=XEi+rErPMHI9qJrIGxZ9LQDG1CiKZHQvoJYoG2Btqua/GH5ZJnwY1KevwDCLLhICjQ
         OJ3+SBOupRIYv4wspokcyqcmVGNRFNkLE3dCl1lZ7Kl2tazOUetAM33GAsaPnsZkY0op
         4FWAb2WNnpU5U+4/SITW70LA+C4+yOWcTF3bWUwYVUoPHt+sJEnWBdYZ+xCoAZGOTWED
         09FJkIFiJP+OCMFTLfuRn17zu/OBun8x6YTBl8FRqXNL0yVr3cfGDqeIVWCsFZzVTdv3
         VmFo6RgdBt/W2YfUvxzYF9YStgiG0H71SThpHLvrPPkg24FKonBYA7J7VaAV0aYjLdbT
         moJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDHCH5FQ;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id g23si178339pgi.5.2020.05.07.02.17.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 02:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id a5so2385641pjh.2
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 02:17:17 -0700 (PDT)
X-Received: by 2002:a17:90a:fa81:: with SMTP id cu1mr14735775pjb.25.1588843037478;
 Thu, 07 May 2020 02:17:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com> <60b16c05ca9e4954a7e4fcdd3075e23d@AcuMS.aculab.com>
In-Reply-To: <60b16c05ca9e4954a7e4fcdd3075e23d@AcuMS.aculab.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 7 May 2020 12:17:05 +0300
Message-ID: <CAHp75VceSvk25rbbS-hmJKAgP4Xe+U6tFQDHBEA=9EHnzBH5+g@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: David Laight <David.Laight@aculab.com>
Cc: Brian Gerst <brgerst@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, stable <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jDHCH5FQ;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 7, 2020 at 10:50 AM David Laight <David.Laight@aculab.com> wrote:
> From: Brian Gerst
> > Sent: 07 May 2020 07:18

> > I think a better fix would be to make CONST_MASK() return a u8 value
> > rather than have to cast on every use.
>
> Or assign to a local variable - then it doesn't matter how
> the value is actually calculated. So:
>                         u8 mask = CONST_MASK(nr);

Another case with negation won't work like this I believe.
So, I thin kthe patch we have is good enough, no need to seek for an evil.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VceSvk25rbbS-hmJKAgP4Xe%2BU6tFQDHBEA%3D9EHnzBH5%2Bg%40mail.gmail.com.
