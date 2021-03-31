Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUU3SOBQMGQEJXOJITQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9AE35075E
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 21:30:28 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id j18sf2296995ila.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 12:30:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617219027; cv=pass;
        d=google.com; s=arc-20160816;
        b=jGd4DW+qwke8YUH5MGH8YJBXrVcObFRHbw1Kw1c/rLo9lQNbo/S4l0q2xoeiF/dY6J
         MegK10c4TRQDU+ZpP+vlBqBDhbAzfG5d+A//4HF0dzCcl1gUN5ua/tni37x2KntS8c1F
         5PvSmdanLrLnaaLS4xePGKObQgdpD2jfgoPEUun+bYeF7CQLkDnPOpSeiyfv/KhngQ5g
         Fe6PGAgZvqg/vdnzyo4ighngMPLSptYQITVJB7v6WTKKsEtAzdBVANO5Xa9TJIEtgcPe
         ys1hhuLdkDbTIlUd244CVRku+kKMTCzilNkxH4hsW1A6h+v3o0QZM2L4c30c/MZX5iIl
         UKcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CfvbIPYRV52xRU1RrRKWMzgkS0Nnrt/1By3tDmJ/4dg=;
        b=LJ4Q5kjroCMB9vKu70Ho+S9POVcwdkTCLCJFXGCDOHz3udwtV4XVdHf279Y76oVNHj
         RpUTCzBwh5b0fI2+UyBOE9vX7sp32C2wF6Juy7MQuCHghNpEhknukTeUMl5svJuwapyM
         RBOyarIPqccpqRfC9V9j5fG83agTqitX2GY8XEJjTG4ZOx6YbmXV7h+WZ0E4+gy0EJ05
         D9nfclRNzPJa/UnP/JM82KUucTOZi5tsIR08kJ8Q0NfltwRfQkAc9e/zpXhTl8b0pIV5
         h4PmnkLDinfu/i4AoHnrYEkKLTpzSbRPw/2uRwvT43tI28syoYCdvuMO+dTt1803PY+p
         zX5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E3OLd99V;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CfvbIPYRV52xRU1RrRKWMzgkS0Nnrt/1By3tDmJ/4dg=;
        b=fUj8MUG5HqrEmkEYGqwW/f5Sgprs/mlZRiSukFNPLDC7kUVbh1BRtRYPy9EbF2H75Q
         SRaOGU10N2HrODg6F14bAiviKRu2PEufJHJGQd7DnlvRDGwFjHgt3Ak5p8sDVoFaa/6E
         IisTcH1qo0jra1ruM/nz/CIznNRkJktKKTiT/fRJaJNaPag+H3RiGA7HjC4SA5fDsOnu
         goWf5PUJoqW4rXMjM1Y1ZyIh4FYIvURP2jOjtItSWXKCyN8Z56wTEs3+yNqrNMGeGPbE
         N9IoYTt+umJA2bAKj3a7P34Da8MCzqKmEUtS6Mn0oDV3FCj+CP3eDjQb6YNq7ZfbEjTo
         yFBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CfvbIPYRV52xRU1RrRKWMzgkS0Nnrt/1By3tDmJ/4dg=;
        b=Eo05DOYzuXd3OYgulbsftpiHLEONRU4IymwZ2nY3mMzuDm+rhIVZ5tbFZhk5xWZMof
         YUTvsrsf6imMrfo0aGM+O7ag1bPGl8fBNl10xWfluY6/bqXMmevR8tETtNgqUKtVKCf9
         yh1nntoaVWUIgiVpcEyYU0G3xvatX2w4EEG9Xkfg/mYns8VOIXzPCX62KrD8vycZUl12
         DBKBdhzDRVin3x3WuywNyP88YS6/2EfRwHVIbm/VevOCSNj0fdaJtFaKUFlP519GiLt1
         5N7xuW3A+1yFucnO/5p77VsTeJ6aFgcDVvtLV1ftIw6shaDdQNyJVX8HBKAS7ptFwbWm
         +bMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325kNyfI4rY/eFtBsWvpJfdUd3A7pRF5t1+Zysd6p6iszy8v3QS
	GxlqmkvM92NkOx+MXuDM0Ew=
X-Google-Smtp-Source: ABdhPJzzNM80BJFol5d2JUlPi90xTjn7xdLI4aQSi5BKaEw3aZSn6s3eHjBJV2+vosEspVnGHPsZvA==
X-Received: by 2002:a92:de42:: with SMTP id e2mr3673056ilr.278.1617219026795;
        Wed, 31 Mar 2021 12:30:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9501:: with SMTP id d1ls489156iom.5.gmail; Wed, 31 Mar
 2021 12:30:26 -0700 (PDT)
X-Received: by 2002:a6b:5002:: with SMTP id e2mr3501722iob.43.1617219026381;
        Wed, 31 Mar 2021 12:30:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617219026; cv=none;
        d=google.com; s=arc-20160816;
        b=OxKRAdX+wvHqr/TvM/8qe2H40zZB/+I8BDEfhFxbi4/46mOSJwYDq9KglY42L4LSOZ
         cgGFZkdT0MqLB+nrI3NWUsuFik7V1wTYKpLrnRY8tIZmiaF38q/XryLv/A/6dJ9QJbKf
         k/HE1UkM4g4Xz/gm+9Jdz/9wU5I2ztMUKHLcYmyNafiNt0gUPrcJs1zHqGF1sLFho1t5
         bzQ6b2Lvfh2pg08hyft1iiEozV9NAe668g+JqJqyBFHDc6IDNWcMgmoQiaQoWw9/EXfp
         zO5wpjSNmTEnM4AgN/vcfEZRFEeEjdNriSiheYqTEW7n5ucFatHTXNvROkNx4nsDCWe5
         F/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w3ch1ntrOHueZWUkcKNLTeORdSBJtecK/4DUp+1n9aE=;
        b=mR25MmJjaeA6RuCApAbmfV0HBycOUEkwlVy6y24FFHzL3t8ndXYP1JSIL58imblY+c
         amn+NUJBEcBWTYY6iYJSl4oXhc/EzNH3llxlpWlG3lNu6hjulMiT7rva+LUxdXN73SRz
         c807jaJrFfhgaPYM5lnRYwqsK3T/U2q2pmcxomulfmaDbv0prR42HncsAprYQ/K3kUyt
         m937jPPUBv1KXvwGLRJUVL+HskvqBpXCxZ8CkNaSQZhCEe8seq21JF95cjbPKydSI7X0
         zEkfoH9Jf6X5EXsPA3hhklSvB9yMmffQUEK77gL8qKpV/OA9bptpU9fCWu52pi4+mur3
         qhAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E3OLd99V;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id u17si211727ilk.5.2021.03.31.12.30.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 12:30:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id y32so4847pga.11
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 12:30:26 -0700 (PDT)
X-Received: by 2002:a62:1c8f:0:b029:209:7eb2:748f with SMTP id c137-20020a621c8f0000b02902097eb2748fmr4444943pfc.79.1617219025781;
        Wed, 31 Mar 2021 12:30:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r9sm3302345pgg.12.2021.03.31.12.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 12:30:25 -0700 (PDT)
Date: Wed, 31 Mar 2021 12:30:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Sean Christopherson <seanjc@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kbuild: Merge module sections if and only if
 CONFIG_LTO_CLANG is enabled
Message-ID: <202103311228.D42822B@keescook>
References: <20210322234438.502582-1-seanjc@google.com>
 <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
 <YFoZBY1SqilWAmx4@google.com>
 <CABCJKucYHQ893LS1iCHXivPS05RMDN2BpDFou306jOEbWnt1Dg@mail.gmail.com>
 <YFvBEIkuFY2ajNlG@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YFvBEIkuFY2ajNlG@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=E3OLd99V;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b
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

On Wed, Mar 24, 2021 at 10:45:36PM +0000, Sean Christopherson wrote:
> On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > On Tue, Mar 23, 2021 at 9:36 AM Sean Christopherson <seanjc@google.com> wrote:
> > >
> > > On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > > > On Mon, Mar 22, 2021 at 4:44 PM Sean Christopherson <seanjc@google.com> wrote:
> > > > >
> > > > > Merge module sections only when using Clang LTO.  With gcc-10, merging
> > > > > sections does not appear to update the symbol tables for the module,
> > > > > e.g. 'readelf -s' shows the value that a symbol would have had, if
> > > > > sections were not merged.
> > > >
> > > > I'm fine with limiting this to LTO only, but it would be helpful to
> > > > understand which sections are actually getting merged here.
> > >
> > > It doesn't appear to matter which sections get merged, the tables only show the
> > > correct data if there is no merging whatsoever, e.g. allowing merging for any
> > > one of the four types (.bss, .data, .rodata and .text) results in breakage.
> > > AFAICT, merging any sections causes the layout to change and throw off the
> > > symbol tables.
> > 
> > Thanks for the clarification. I can reproduce this issue with gcc +
> > bfd if any of the sections are merged, but gcc + lld produces valid
> > symbol tables.
> 
> FWIW, clang + bfd also produces mangled tables, so it does appear to be bfd
> specific.

Are you able to open a bug against bfd for this?

> > Perhaps someone more familiar with bfd can comment on whether this is
> > a bug or a feature, and if there's a flag we can pass to bfd that
> > would fix the issue. In the meanwhile, this patch looks like a
> > reasonable workaround to me.
> > 
> > Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
> > Tested-by: Sami Tolvanen <samitolvanen@google.com>

Thanks, I'll get this sent to Linus.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103311228.D42822B%40keescook.
