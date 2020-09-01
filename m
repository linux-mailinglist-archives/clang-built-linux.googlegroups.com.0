Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJOMXH5AKGQEWR2T3GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B15352592DB
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 17:17:58 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id x124sf588071oif.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 08:17:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598973477; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqYQ5UxUy9all0Lc3uj94tZncvpv4nWL7e+ohf3bJvfarC6NeDXU0kZc98woZ1pDhZ
         ozHgyPmtb4ndQ1BwSC7/q7+MNMY7ulukwsCLgKi4Vd+4km+slz3XlQ9Ykwl4dB8v39fu
         uQZgogye5p9l1yKn8cbLuMkycXP7okqLxLtVHd5XiThYr/5uUU/mdcKD9qEflm73UMo1
         j9AvG/9GOr6ENZUb9WEuM7a6ANhSLI2EApuxpkTUNsPXaitAw374vU/p30OfNbWmOptB
         Qo01ixHRNc8YiGRXbRbkPJ3UVZOOMMTaHEiuXRiw6XnBuP9fTdFFpTdCbOvYN7Nm02hf
         juXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jhdnVkTS2O/mtJ9djXM4fQDTA5X/aoNq/mHMlb5Chg8=;
        b=Twtzo1iQA5HvleuvlDUHH278u5o1BxnPnEp8Ow9g8Ar+z3MQArDIH+tCzr51kNp2WV
         oBtHn6/8B2aXrRmIk+SeyAW5WP9C0ZzuoLz0n/2DLflVgmJleLbx1cY3iWNh533t/ITh
         t5TTWo8ufPgiOZLJG2ckBgIYbUTSWoJrZRSBfUOfOrJqa6a1IRA74Pe/tdIOxYQjKOlI
         GRpSZEMyxxsO9hRriqLkOHwaQQvycMLs4QG4YdBz0gQoUEJMb/pd1ThzUO6RomlwELn2
         wU23KBg728NlT/+pMqDgpFH/lmMWoUREbOhVuQggR0adYCErkEIT4I+M1TZSVr2vpCbB
         BzNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QNwyUWGq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jhdnVkTS2O/mtJ9djXM4fQDTA5X/aoNq/mHMlb5Chg8=;
        b=QQ7GYKxxl1r65UnldTUVM2pxaZWlfTE+eil3qqV2/rxZrjZcjD9Kzhs6nsKoBSnWZg
         KI6WdcD6qZW+3wvP525YakkA724koABL5DTV5Y2eXOmtfsLebyfgiOOlHYCC1sbK/FfF
         dCaI7arypiKKwUC3IGsTGbMU7yNJ2UtW13QxSjwboFLQYAfF/3/YLVmMLwJcgCZxx9Zl
         8vF8kEhKUvNYdIC+ExLjxe8jZtDx/jxq09lPWIMLrY0ETi3QyniaqQ6d8XfQafhcrz8d
         WlGQXsfN8cChnGbQmsPLuKQDw7rTkXGmozOvA4T5SJM6Vd5k9x1VWd85dDLIZ7OeQe5Z
         xxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jhdnVkTS2O/mtJ9djXM4fQDTA5X/aoNq/mHMlb5Chg8=;
        b=Wgki0L34AVNXs/7YPoOcCUd6p+jTDx8m/r1Z+ucfWR5o4DeFbyezflRbBneTIq82+Y
         Yd2N//ez+sn8qvznYwLUuTa/pQol0stlq6WeRlPBTtZM0BIrVBPpIP44QollTV/FNEHW
         gy85cD5SOfBOjMoSJr7HJTMqlv0YVnnqIuIBJBNfMpP6QdJsEzeehHhGgDRQ9MqHoy2b
         E7EUsW6r6+vC0uHU8o71IZxRu5ezJHdcm4XuEdk/EnzqMf6dLAokHROu2vqLLxTpsyRr
         Cp2z8zrFj+e2n69cYr7WE8EX4gBMwHJf0ckdK1PCw+uBmeKT5NnLzLurOVijox/p//D2
         Ftkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hV0QSyBGJ9AgVhKWPgxQu/JEf+D86nYUKAG1LpgiXiSXo8IDB
	IFVgsEKEZC+9UI6moA8SlRQ=
X-Google-Smtp-Source: ABdhPJwt1eNyVAVWGcmIq+fkR/L6OIWyeAPqS6B9v9lWApVX4rs+Rxwx1FF01lzBsFZzlTzppI5l6g==
X-Received: by 2002:a05:6830:1e0c:: with SMTP id s12mr1868530otr.7.1598973477628;
        Tue, 01 Sep 2020 08:17:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bc3:: with SMTP id 61ls413616oth.0.gmail; Tue, 01 Sep
 2020 08:17:57 -0700 (PDT)
X-Received: by 2002:a9d:7a52:: with SMTP id z18mr447364otm.281.1598973477249;
        Tue, 01 Sep 2020 08:17:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598973477; cv=none;
        d=google.com; s=arc-20160816;
        b=RW87OICbHPNV+HCfJSFU319fWkC26ClMIeNniz1DQbUVzsKv9TJ3C/+rlJ9nRKEKeO
         3qjqHTCIPoulLuljO1ITtvyUBInHhSdHbKQ43tU9EB2W37TbN0mVdPq44W3/wDJspRa5
         1CojjXmW1bmq7mIq1x4cb5Y4+5hLl7fLLoecv4hQQl8vTqvM+DnSWZ1MKQrpk89SvnhM
         hGEsskeEBSrRjpEU3SoCDkyTdHMym+q33UkIlTnG1NZxo5DEXPJHkZOau98kH+eGcNn6
         HsqaAiXo1LGwfbB5H56939tcMq7WqY1+vcR9kZ+N75g0eSIXs2PNN96T3dHBwlHgMuOm
         PBHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jN9lhIYk+vgw0Ck0cVCcWxfdMAHspCt08b10OTqq50Y=;
        b=DS3nnXyt8e0XdXpgyLUZHL2Ez4lT68CcwVA+82gCDI9aFkSIpvQlpo/qWfz9zCwEFs
         1p5SXW/R564L90QMR1OAhaG+l5bjg1CEh0vKaA4W0vDeu/8TlYMKiUFzOGKKtr+pBvNT
         Y6qy3gcA/5cCGbrxZtEEcbQN6LdFU/nRF3whr1p+K59UWJk3zYZFfAJFkcKCo1pBYHKV
         x6PUcLN0+dPx4jtnYM4KrPltR7NP7e0x02jhzwYH2JPSoVNV4GTXv/mEx7kHvN2KumbB
         BturP1kiuc4S3+SgSpVHgC15Smd4puQv/pKGAmop+rEQZIL684bQFGIMRK1GBFwIrAOx
         eNrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QNwyUWGq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 71si101609oie.0.2020.09.01.08.17.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 08:17:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id x18so684636pll.6
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 08:17:57 -0700 (PDT)
X-Received: by 2002:a17:90a:8a0d:: with SMTP id w13mr2008556pjn.218.1598973476573;
        Tue, 01 Sep 2020 08:17:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a12sm2324629pfr.217.2020.09.01.08.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 08:17:55 -0700 (PDT)
Date: Tue, 1 Sep 2020 08:17:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Borislav Petkov <bp@suse.de>, Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
Message-ID: <202009010816.80F4692@keescook>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <202008311240.9F94A39@keescook>
 <20200901071133.GA3577996@gmail.com>
 <20200901075937.GA3602433@gmail.com>
 <20200901081647.GB3602433@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901081647.GB3602433@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QNwyUWGq;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Tue, Sep 01, 2020 at 10:16:47AM +0200, Ingo Molnar wrote:
> 
> * Ingo Molnar <mingo@kernel.org> wrote:
> 
> > 
> > * Ingo Molnar <mingo@kernel.org> wrote:
> > 
> > > 
> > > * Kees Cook <keescook@chromium.org> wrote:
> > > 
> > > > On Fri, Aug 21, 2020 at 12:42:41PM -0700, Kees Cook wrote:
> > > > > Hi Ingo,
> > > > > 
> > > > > Based on my testing, this is ready to go. I've reviewed the feedback on
> > > > > v5 and made a few small changes, noted below.
> > > > 
> > > > If no one objects, I'll pop this into my tree for -next. I'd prefer it
> > > > go via -tip though! :)
> > > > 
> > > > Thanks!
> > > 
> > > I'll pick it up today, it all looks very good now!
> > 
> > One thing I found in testing is that it doesn't handler older LD 
> > versions well enough:
> > 
> >   ld: unrecognized option '--orphan-handling=warn'

Oh! Uhm, yikes. Thanks for noticing this.

> > Could we just detect the availability of this flag, and emit a warning 
> > if it doesn't exist but otherwise not abort the build?

Yeah, I'll respin those patches.

> > This is with:
> > 
> >   GNU ld version 2.25-17.fc23

(At best, this is from 2015 ... but yes, min binutils in 2.23.)

> 
> I've resolved this for now by not applying the 5 patches that add the 
> actual orphan section warnings:
> 
>   arm64/build: Warn on orphan section placement
>   arm/build: Warn on orphan section placement
>   arm/boot: Warn on orphan section placement
>   x86/build: Warn on orphan section placement
>   x86/boot/compressed: Warn on orphan section placement
> 
> The new asserts plus the actual fixes/enhancements are enough changes 
> to test for now in any case. :-)

Yup! I'll respin the enabling patches. Thanks again!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009010816.80F4692%40keescook.
