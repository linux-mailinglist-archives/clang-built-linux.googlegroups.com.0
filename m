Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSPCQHXAKGQEY2EQGSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 65274EE78F
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 19:43:22 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id n15sf13990038ybp.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 10:43:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572893001; cv=pass;
        d=google.com; s=arc-20160816;
        b=El8QpIEZ2/3fqOHRLWOERubLe+AQ/vGbpeCkEiETIhy830GrcYWHd6taAr2+sMrc5J
         etryWx0z6pds5AoaO7hK2etikw1K647rNIj/aO4emlllZ2uRbKeSWZ1SIAiYPeU777MN
         BemozF253uDsWVHwyrOR+T461TYs8ThkPfKLlrZv4n1mAZZUAicGMnZzliwSOf2/YDsb
         jWlPfxUq9GNGBHs1SmVVQYnBNvqkmomo2c8AFA5vltMeFkdEVW59ZJDx7Mje0LuPdCDc
         QWw9dB7G8MKw+H+8SNB/5mirMaRpFrRPMOHjClt+DsD1OU/CCrqe5X8z4A2uhW6zHG64
         C86Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6dlE5hcq5KJlZk9cqdMDaj0Wqz7vRdnvtCZqdOXsRCc=;
        b=SoAmkVkuyxrMkr8cJqmKaPcTXfKvhzeg5G+LcHrQp+z7fy5FD/5PiLNHjvA66irt1H
         +ms00NGPCHh2C27/SBhJL9DShxD3wMZqXaOCilvmyVhVbkicZEjNoPl55mPHo1T+DP18
         VMKZWNF8VhSnDXnYMOfKTkVLTNITHQXlBp0LsnS4q+EumRLo4AGJj64N3b6Yr74Ls1pS
         kwW9xMO07WptN4wFlm5IWMsssom9w/9tpUlsHPWA6KMVKa/EfyF69nRmcI0BQG5s8vpr
         UtVSMYQ6++lFD/sS0pflgYEbNwRnqR/YPJirQwMAjxqaSt3PPKfHhZguftkD7DAud9Rn
         b5jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FO4ChYOq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6dlE5hcq5KJlZk9cqdMDaj0Wqz7vRdnvtCZqdOXsRCc=;
        b=n/bi64LjupZ9uMjQpaVFmwh1nPPNPI+luKJ1+fzJPhF0fG14xTthHvCEC6vKcvDHg3
         9Aotg734l00G3nUuq3E1JChHkhIIuHizRzeEeVGMZ9JNvovGNKxujvYf2liIXOSO9ViR
         FqEptF0DMx/OKsdkzKZ/AJ+MMf1kGb3RhbYVodLFyNAzGBrtE+mccxesVYAlV6aRHWaA
         VTRdWrlB59Moz1paVlhCac4UhgMfHCOgvPL1ZJeMMX7NVwHJYVyvoGdeL3FUM43wjjKn
         l79qILMpYe1dafUDHA5BjX8+P7AU6oLmtGtqSdz2v+p2mNqcGmtO61WxghAcyUdF3p1r
         k5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6dlE5hcq5KJlZk9cqdMDaj0Wqz7vRdnvtCZqdOXsRCc=;
        b=dkBdj3QtuzMLqXNhoclsQMMpyZ99zXO1V8cXLuvC3S8ni8upiOdk1Azzl+5YBlSSvf
         Fz44WJWmCIhlCv1YS9e5kd7svjGHSSgTGGxxWZE2+21OV6yDPApphGRcMZ4GU7ZZAQs9
         TB737ombdYRYjNUWzdLl4Uh9qXvdcpJHR5XJ6IjXmPJ97sicqIqiCNTJCZWiHf/HvdKw
         vj42nDpA+7Zi2v/m9rtj7MBulBmAX2MBzyNeX0l6SJoxWam4ZNCeEDi2ECRmjf6moA51
         rMEdcASen+9GydCwfFQ5jEXDkiM4axWh8agiVENs9QY28DLxBz5k21JORj0US8yRYPk3
         U2Vg==
X-Gm-Message-State: APjAAAWQV4fYcLnKgDczNdk+kQH/Rrj8eBH/dbVc7QT9K8DnR0zP2cFu
	ctu0jnffHC88D/7EZ2Mqc7s=
X-Google-Smtp-Source: APXvYqziVeD98Y8Dv+C8+ElrxYnQH7Z0LcLMop8Va4iQf04fd8KIgVWSSz7Bb+a5uOV0K0VyCgsIRw==
X-Received: by 2002:a81:db45:: with SMTP id b5mr21932140ywn.378.1572893001429;
        Mon, 04 Nov 2019 10:43:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f686:: with SMTP id g128ls2307205ywf.1.gmail; Mon, 04
 Nov 2019 10:43:21 -0800 (PST)
X-Received: by 2002:a81:25d7:: with SMTP id l206mr20941693ywl.36.1572893000999;
        Mon, 04 Nov 2019 10:43:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572893000; cv=none;
        d=google.com; s=arc-20160816;
        b=hiwaiYGUxGIIfRAyvxnF3oLT/7jHRFfi4tgEU4bJRM4cu1iV2+YUgYgcSLyVi5Qvfi
         /iEaLaHPDkGuLckmSRUOEK2UCg5rEcsQt30ZuTg6g58Lmp1hLGQ+M7z05TghIs8RYF88
         2R3Z9DqZElw4wlm+oNVhvmaDAu+5/EJ82+I3o1Z2u7UFdLTi8WmyIa3vdH+NRywmmNgG
         ZUYXnJObyfU4elqB7f4FHHhutx54E16ropcjiFz+JNwgPYbwn60u2I5vcx+uZyNOZcD2
         oWvuxaQclmgi2cTVSKI/dcOkl/8lsP3TdsDwwX4tbjr1PGf3WKqvBw34SfO8EI3cnMF8
         PHZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cyveooZxsbFfSYt42gpZZRf9Ppul5ahlN5Luw1xLEm4=;
        b=iY45S5hvTBcLcyD4p72snikVSH0O+jFKFyYuyxeBiYY2plpMCtlD7Aa50kn1xnNa4w
         lBgf8QoN7gf4bLJxOsqs4W2q/L6VmQgWSMaNzauYQR12UtUS9ot1z+PemvLoihF+bvGL
         VWk7QdEgFfJH28sw6I5nTPNYxQGsZWseC0y8X73KLeSVs0JHBdgM8VwE0uVtv9Jo+wOv
         9MSgNKajF9fs3GZdRLf6YJY0aO4yIjXpiBAQ/IQP9YHWWHGtaDoKqqQkTzVXNp5iI4b1
         7QFAU7qJz4aPx42tD/taUImReH51Qs7fbxQqgsF8l2GOrXCPmKgprBLrws3YuVnuy406
         sQVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FO4ChYOq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c5si1044792ywn.5.2019.11.04.10.43.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 10:43:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id z4so6893186pfn.12
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 10:43:20 -0800 (PST)
X-Received: by 2002:a63:d70e:: with SMTP id d14mr31076676pgg.10.1572893000068;
 Mon, 04 Nov 2019 10:43:20 -0800 (PST)
MIME-Version: 1.0
References: <20191030174429.248697-1-ndesaulniers@google.com> <fa4e28a9a16c54319916be005159e250@agner.ch>
In-Reply-To: <fa4e28a9a16c54319916be005159e250@agner.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 10:43:08 -0800
Message-ID: <CAKwvOd==f801+AfJWwrO3tbSRoizCa2HV7pViOqedJbipN9nOw@mail.gmail.com>
Subject: Re: [PATCH] arm: replace Sun/Solaris style flag on section directive
To: Stefan Agner <stefan@agner.ch>
Cc: Russell King <linux@armlinux.org.uk>, Fangrui Song <maskray@google.com>, 
	Jian Cai <jiancai@google.com>, Peter Smith <peter.smith@linaro.org>, 
	Hans Ulli Kroll <ulli.kroll@googlemail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nicolas Pitre <nico@fluxnic.net>, Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>, 
	Roy Franz <rfranz@marvell.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Allison Randal <allison@lohutok.net>, 
	Richard Fontana <rfontana@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Dave Martin <Dave.Martin@arm.com>, Sonny Rao <sonnyrao@chromium.org>, 
	Doug Anderson <armlinux@m.disordat.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FO4ChYOq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Fri, Nov 1, 2019 at 2:05 PM Stefan Agner <stefan@agner.ch> wrote:
>
> Hi Nick,
>
> On 2019-10-30 18:44, Nick Desaulniers wrote:
> > It looks like a section directive was using "Solaris style" to declare
> > the section flags. Replace this with the GNU style so that Clang's
> > integrated assembler can assemble this directive.
> >
> > The modified instances were identified via:
> > $ ag \\.section | grep \#

Submitted: https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8933/1

>
> I actually have the *very same* patch on my tree, just did not cleanup
> the commit message and submit :-(

Send in those patches!

>
> Anyways, this looks good to me:
>
> Reviewed-by: Stefan Agner <stefan@agner.ch>


Thanks all for those reviews.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3Df801%2BAfJWwrO3tbSRoizCa2HV7pViOqedJbipN9nOw%40mail.gmail.com.
