Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHMUZH3QKGQEPSYP6TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B5505205A99
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 20:29:50 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id o15sf6691799pgn.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 11:29:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592936989; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z8jirnePwZxYymsIccPOiTlkoa5ELt+4KAhzR0L92aznQ+JpcJ/0/ncF7KlCedM9Xu
         BsMYhiUU12UH/gB+Z2gZIXa0Yi+6giJqKmRoqTfBTcQWBXEpMqGrf/9d5pOBToibpoPI
         AsjPUGVQYPf5yqW0GMlabsvdAnz9osE0YmWdU4UNpaK7ymLS3EarVAWM9D6mfAovjm6A
         Rp2iKse4QTCYknkpFxxl9iUTo/dKeXBTUFNzeyy8ixqPuYp4TAR7G2lbZyBoqitKuXi+
         4DQkUwJ2LImlQNL0c27EB32Ki8lIftMcoMwC8XDrO9QNQ3xdNU4DP5ydn/n7CTwokNri
         L5wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Vqy4so8dcOcI03A6zWNbWefzQxamG1h7GnW5ZNVngYE=;
        b=r5b2HyVUdBYhrNj8nKfx44W6hEV7wMBrx1QDEPpD48v16vhv5sAsySvkmReQ9NTuPq
         fcaLXWIE2beY0FSg09FQ4qR5wF8YFgIlWnx8jM4EyIpEbwxydVn3XyLGly0TcIHCRMic
         GHD+JFXleW+sZYMgu9VOIOaY4+v/dBH7dbl1b3CiXTCoNbBhspkAaEbSvXEDMGFT3NwD
         vEPKNOzmTKAaK0Gw+wpsrYuc0s6m4jG5b5MqET5YxyPzm0up2A8rfvwMKq9Z58M6XzOS
         MAfqziWrXzbG9dMsQ55eBPw3TiMyy3Q9HarWDdLUMXytDC5bfgVNHSU5vim0lKrHI6Ma
         sELQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VRPOqKgX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vqy4so8dcOcI03A6zWNbWefzQxamG1h7GnW5ZNVngYE=;
        b=tEbo89zqzjTUHWgBxyonBk1487i+Pn8HWk/pnGARZwH6Nv/3U/Y/85zvetsfAgEmQi
         +R1DwfIUxb91RY+Kc0j5dHhXf7XzR4A829YbnuNqxV2ttbmuFaBDRfcHPMnmGBiO3TZE
         Vo/b3RaJReBeh21Vw1zQ8ZUWlyQzmFsHQALdRWrXtVwHRX0NxQkTBLfkQvyFYPbSZdeU
         7W0KhX6MAoHGZmZb7cyGdj5vJXIfBVrGDoV+nWaEKDO0UY53+b4vyM1KH03PRH7M49UV
         obXJGhHXVez6FUEwFbedh1Ciwkm9WN3lz71MxDWj9WE3W7mziDtBmA+gLtO9bufbiFKL
         6AcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vqy4so8dcOcI03A6zWNbWefzQxamG1h7GnW5ZNVngYE=;
        b=aBEF9eCe2KxHZ5ApNfDLFl918RSPbuu/4ZEYwYjUj4YcUMD/+w9nAC8U4Ta87O68gG
         rfLS5OLpQw9yNLYoOA/7X3XJEqm129l9muLBZbCXEmtMB1eJowCwEP8dSm2m1RVIVhlI
         QlWYOvwA4Fhna48VIMscK/tsFl2e5aLs8P9YhDq5hIDa3U1h9GbEDJfAOma9o0Hce/AS
         ZhO/mAXFLeTZIohdoJVUsKXG0MiZ1DNwK6ck6D0y41M3rIMvmxjRDKQQmCpb9M2atf1r
         SYh/Rt0iEvbOqwo/Kn+jAPZ0CPC+LNaRd8JgAikeSEIe31s3wTBwIYsan2xQw9td8jUo
         xj+A==
X-Gm-Message-State: AOAM533w00Cf9VpLRaZUjjTpNkmwCVfKpceNYlHgE/Y4Iige21a9FBbF
	ezbio7baL9QIM27Uu26PDtg=
X-Google-Smtp-Source: ABdhPJw4ysp+M6CK7blSu/X1z2DuLMwf6/6Ueclo0GHzBfSTirGOAGrsFNt2ngu8bD0+SU+wATB7rA==
X-Received: by 2002:a63:5961:: with SMTP id j33mr18535333pgm.372.1592936989349;
        Tue, 23 Jun 2020 11:29:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls4195203pgf.6.gmail; Tue, 23 Jun
 2020 11:29:49 -0700 (PDT)
X-Received: by 2002:a63:3508:: with SMTP id c8mr18984654pga.9.1592936988987;
        Tue, 23 Jun 2020 11:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592936988; cv=none;
        d=google.com; s=arc-20160816;
        b=PBb/97mYmnwQjibuxJIVW8/fCbdfLEbZgrqn3PtS8fVUo+DII4OyZHbi9SPSWi1lcs
         u1EHcY+pdkkcVyBqt8LpwE7P+lN9nPlbYt5yUfajD2DLRJR+p2SUGyCyAeR8xcRWtqaZ
         0qI6VnaZdaanD7gGVipwjS15HCpS3OQ6wH7pBs4HDPH1ttQxJbbIufvwnDoEqvsKm5eJ
         hDMn7Hj2kHis+jhfil5de2v5sWfj4mSXsiMOuR3lDPbB4zd3DSKGiqjOIgWCx3KG+U7F
         0wf5CAbBTHkxxMgoqvs/epj/dBou2QjeZZ/fNCpiH+sokYrrNjg79+KnkaIW0W3AfF3w
         k5vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JXkDSAr5/uPdypFT+vPhb9QM0XECCw1QogkIjza9trI=;
        b=HFcd8ePHwqWRoL3JnIJcq87LgFXnjbvYoM58OUiJ/pqkDxR2cnn+nxWBU3yIkULimA
         WaRz1YY2j6ODVbLVgXCUswmpZ+3yrLsECr94ZvVh6uR+JjI0nFhRUb877gKLmyVds+4j
         fwysQFT2ViV9ujJgLMuWdMqtD+uq8OW3Q1Y5+4GQZt6eoM3QE/eNLoY+P5e9pu+NGIul
         kAtRcAXsHqE3XCmk3ACxwrqfOpR41j7YIWuvzjSuTvAk7lf/wlk8rf13rIrnIUTD4SQh
         1wONX1IPnhAUBacCXXDDFoXkHpM+a8jL0cBlw8mLSO7c52IykLhWePmhdJY9eS2J+lc4
         zOfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VRPOqKgX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id ds21si106733pjb.3.2020.06.23.11.29.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 11:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id u8so1834422pje.4
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 11:29:48 -0700 (PDT)
X-Received: by 2002:a17:902:fe8b:: with SMTP id x11mr24842368plm.179.1592936988375;
 Tue, 23 Jun 2020 11:29:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-5-keescook@chromium.org> <CAKwvOdmsXuqx-3Rt_KNFq4psAeFjG2-7qQaqkJ7dDqqmscUFNw@mail.gmail.com>
 <202006221403.EEAD37E94B@keescook>
In-Reply-To: <202006221403.EEAD37E94B@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Jun 2020 11:29:38 -0700
Message-ID: <CAKwvOdmr0dmC7UtL9Qcgm9Ue_Q2mhKzYiHcXpaB=LpMKpYeYqA@mail.gmail.com>
Subject: Re: [PATCH v2 04/16] b43: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VRPOqKgX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Mon, Jun 22, 2020 at 2:04 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Jun 22, 2020 at 10:04:18AM -0700, Nick Desaulniers wrote:
> > On Fri, Jun 19, 2020 at 8:30 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > simply initialize the variable or make compiler changes. As a precursor
> > > to removing[2] this[3] macro[4], just initialize this variable to NULL.
> > > No later NULL deref is possible due to the early returns outside of the
> > > (phy->rev >= 7 && phy->rev < 19) case, which explicitly tests for NULL.
> > >
> > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > >
> > > Fixes: 58619b14d106 ("b43: move under broadcom vendor directory")
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > I see three total uses of uninitialized_var() in this file, do we want
> > to eliminate all of them?
>
> This is the only one that needed an explicit initialization -- all the
> others are handled in the treewide patch. I *could* split it out here,
> but I found it easier to keep the "no op" changes together in the
> treewide patch.

Ah, got it.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> -Kees
>
> >
> > > ---
> > >  drivers/net/wireless/broadcom/b43/phy_n.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> > > index c33b4235839d..46db91846007 100644
> > > --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> > > +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> > > @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> > >         u32 rfpwr_offset;
> > >         u8 pga_gain, pad_gain;
> > >         int i;
> > > -       const s16 *uninitialized_var(rf_pwr_offset_table);
> > > +       const s16 *rf_pwr_offset_table = NULL;
> > >
> > >         table = b43_nphy_get_tx_gain_table(dev);
> > >         if (!table)
> > > --
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmr0dmC7UtL9Qcgm9Ue_Q2mhKzYiHcXpaB%3DLpMKpYeYqA%40mail.gmail.com.
