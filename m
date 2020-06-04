Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGVO4X3AKGQESN5CNSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 223A41EEBB6
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:18:36 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id k4sf2931510pjo.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:18:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591301914; cv=pass;
        d=google.com; s=arc-20160816;
        b=DD1fhi6xnhI7XmtUYnnzlh5QrJ9d7oPf9XjcEPcLxI3trS1MlimA0qAldsqGyF31RS
         kCyIIfKFGGBeGL37/EW/I8hcRxB8nBgdOQxul9KCPe71CquZmNIMWwjUMIuQf11s9dWL
         o9aMi0id5aKxggVRQRp1o4IEmGgA22/p2+SO1wOigfXIHhQN/cV5yZxvfaMF0JbgDiDd
         qGwNrr6crPy1vjIeNHqnBph8zNIakknLemE2EWmITPhPptmB36S2F/CeDFXv4pcH8SQL
         ZnRuj4Krh2X3Doo6NNGCzf/Kru0YQffYWXua5ADGy7ZervEwiIL3RJltHnwNKcXmU+nI
         1xPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=o24Gl/jHgJqURE0eiaNQxB5XlOMfzL0YYACOvX4v0iE=;
        b=u2ajLRLlydIZZnyA3laDZ8+IUeBH0XiOTSvR+QythsPVBwFU1wlk1ema0YwmyzLzyx
         S9UrqRuIUmMl+Ii9IpuuYE8y9k6DjALc5npTv3qAlb2qZtfA0nprQcw75hqb0riquK/j
         5mDWnSDVylq/a4XqvNX0Ui+vi7QlL1bIaYb9DdQWO5cLS36dgu7CZ5RldecRy4isxFQ9
         9tSjY075wJfp9FKk9fBGqC3RQS5SsLAqdl6ngQePlKkJONOfzZkNSVUN1StLMAemwh1y
         YIyj0VCrMlvjKCtEYSluLwBPGmcQCtY35fJ8yybuylzgIgo8jWJnPsOVlomk5LhyNalK
         VZGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iwsRqxQE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o24Gl/jHgJqURE0eiaNQxB5XlOMfzL0YYACOvX4v0iE=;
        b=mHLeW5jYbwQSh9NQLtviFU0AuxnwAQPKSUs1I+XbcI2gLHC4xoI1odPwLJ+Sh2HFZT
         Rg5g4Yp20PcKwlhxrRiugMIYEf57pPZzJGLVrQ5Fj9hpqfunZ1lcGl5SFURuEIo7YumO
         Ep/Snv/a79LK8z//I6Txk9QAB9wt1wtBhojm70O+9ky3IoK/5kxBWnYaMNqwLNTdlyyM
         ZlOnXExELPSwMy46Gfl2U9YHI1ZeIW6pewydmxSStADNWRrrnEOVNAenF3am19NBKydc
         M1lmNlbNNhyiNffO0El+23aYvLDT/NcHzV2rWLSa5ptxXfKy85bcK5Ar4D1eHQl4HCXr
         6tCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o24Gl/jHgJqURE0eiaNQxB5XlOMfzL0YYACOvX4v0iE=;
        b=FBOrQRcDDjq4FJ9Y/dcfP8wgV4J89oRmSLuVkiUKTnpnv7zXAgIGMRwkY3M59j2O4c
         dstqWhQL8EV5bbNaYbF7vH9NnC+4fbYNqLevmcfpwosyqpHWSrcKardHhTyYTDMsX/ri
         H2nazFpGjGkabj747IH9ZlIACX10tqqq7aCb6CBp+ACXCKFVNnY1zEqXmj4lqsOLqWID
         DY3fdNBNy/Q+CpgK9A7f7BgLdq4ex72Ug1bKvdFk4CX2N9+j6fm+lGbQRRPexrjDuQNW
         efN2Or36/SDVUudQQGXEO/62ebxcbDvcU/h+m+GfAETFmVpLbl5rb9kyp20l0JEcn8qH
         Chlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301YAOgBhYZYY9rrqtAS8y8pTooV+Bq/ndBuB8K/38eJw/6MoG1
	+KniSkTkh3iZhlirKxfw78U=
X-Google-Smtp-Source: ABdhPJycMelWY9pKQJyHjY6nGVtkgvrELErBgyXR6HXvGvWkJW1DD0v2LIIFYfNy8ovyDYZ71CjnNw==
X-Received: by 2002:a63:f856:: with SMTP id v22mr6278016pgj.64.1591301914669;
        Thu, 04 Jun 2020 13:18:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:384f:: with SMTP id h15ls1909880pgn.0.gmail; Thu, 04 Jun
 2020 13:18:34 -0700 (PDT)
X-Received: by 2002:a62:fccb:: with SMTP id e194mr6077012pfh.159.1591301914260;
        Thu, 04 Jun 2020 13:18:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591301914; cv=none;
        d=google.com; s=arc-20160816;
        b=zoTS2YMr6dkYLOcxCEr5dztKxbP/Dt2VE5v0A6bX6znCQHIRUhkHgr9VjIcLqFGNRD
         YmmdSjcRCEJrzKTHRIVDt3O/9nrwjpBZLjc7IpqZD+zJqcSBBfu1xbkaelrnuhpXZpKT
         Ef/Km3WNVzfZKdlQYF01J3xTze6cES4952OpS8VWHnITeV+ijplBUx/QfZuycRgxvIbN
         C3vNdX19FE2oR8sBPnPrhEiFAypXA1BnmDM2/fcV9udONmWa9t+MHgTx4TW/fnmwCNNT
         dpNegDF8on92r+QHWjC7cAi7ZUNvXihCQzYI8sZgzkDnXQXfk+A7jKQAI8hpoSjKeM81
         BPcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KSgduwKhAGu1Me5hdrsNlT/LSTVts5IMrrdQbnnmgtM=;
        b=Oay9iOhZdy7gR5xYVmvy4Sdpb/JJN2dxZjWfMNkSn8hRYJZpPMOJ4lMa4jBQB1lqUp
         Go3oI8IytsofobTJZYoESI36EDjos4jimMpKCr9x5hcv8VY5Jr7RwZTteGv1IAC59Wd/
         0yZS1uZNW5wmfak2Sc0Q4zoCR6ldjh0TGfHrCB//eAjcCGYhIwIjaVazBvGV4XAiBMRI
         FWfGwote46A5SmXHD4kwGqQKBdSu1iPmKsOWCPZvkRKOj0chpE0bkTBXYT/lRDX0tG4a
         tcLWQOEiPK6ZEmhues3yCiR6OofiBdnakDhFwIjQsW+k/XAb+yEX03G9z/4IyltR4N1l
         eaKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iwsRqxQE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i17si902185pjv.1.2020.06.04.13.18.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 13:18:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 23so2896550pfw.10
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 13:18:34 -0700 (PDT)
X-Received: by 2002:a63:c58:: with SMTP id 24mr6232804pgm.246.1591301913875;
        Thu, 04 Jun 2020 13:18:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r5sm5581320pji.20.2020.06.04.13.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 13:18:33 -0700 (PDT)
Date: Thu, 4 Jun 2020 13:18:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	Network Development <netdev@vger.kernel.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 03/10] b43: Remove uninitialized_var() usage
Message-ID: <202006041316.A15D952@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-4-keescook@chromium.org>
 <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iwsRqxQE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Thu, Jun 04, 2020 at 01:08:44PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > "unused variable"). If the compiler thinks it is uninitialized, either
> > simply initialize the variable or make compiler changes. As a precursor
> > to removing[2] this[3] macro[4], just initialize this variable to NULL,
> > and make the (unreachable!) code do a conditional test.
> >
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/net/wireless/broadcom/b43/phy_n.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> > index d3c001fa8eb4..88cdcea10d61 100644
> > --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> > +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> > @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> 
> The TODOs and `#if 0` in this function are concerning.  It looks like
> `rf_pwr_offset_table` is only used when `phy->rev` is >=7 && < 19.
> 
> Further, the loop has a case for `phy->rev >= 19` but we would have
> returned earlier if that was the case.

Yeah, that's why I put the "(unreachable!)" note in the commit log. ;)

> 
> >         u32 rfpwr_offset;
> >         u8 pga_gain, pad_gain;
> >         int i;
> > -       const s16 *uninitialized_var(rf_pwr_offset_table);
> > +       const s16 *rf_pwr_offset_table = NULL;
> >
> >         table = b43_nphy_get_tx_gain_table(dev);
> >         if (!table)
> > @@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
> >                         pga_gain = (table[i] >> 24) & 0xf;
> >                         pad_gain = (table[i] >> 19) & 0x1f;
> >                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> > -                               rfpwr_offset = rf_pwr_offset_table[pad_gain];
> > +                               rfpwr_offset = rf_pwr_offset_table
> > +                                               ? rf_pwr_offset_table[pad_gain]
> > +                                               : 0;
> >                         else
> > -                               rfpwr_offset = rf_pwr_offset_table[pga_gain];
> > +                               rfpwr_offset = rf_pwr_offset_table
> > +                                               ? rf_pwr_offset_table[pga_gain]
> > +                                               : 0;
> 
> 
> The code is trying to check `phy->rev >= 7 && phy->rev < 19` once
> before the loop, then set `rf_pwr_offset_table`, so having another
> conditional on `rf_pwr_offset_table` in the loop is unnecessary. I'm
> ok with initializing it to `NULL`, but I'm not sure the conditional
> check is necessary.  Do you get a compiler warning otherwise?

I mean, sort of the best thing to do is just remove nearly everything
here since it's actually unreachable. But it is commented as "when
supported ..." etc, so I figured I'd leave it. As part of that I didn't
want to leave any chance of a NULL deref, so I added the explicit tests
just for robustness.

*shrug*

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006041316.A15D952%40keescook.
