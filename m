Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRHR2XZAKGQE34M26IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC9B16EF34
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 20:43:02 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id w6sf273422ill.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 11:43:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582659781; cv=pass;
        d=google.com; s=arc-20160816;
        b=N9YmC6Ula4CXMAWxeCcae9xpc63Ss5BgRPVcWJdyWqr7k46qSJ+xE12wJtaVRBih+F
         1cMqqjA2bfyKLGeePSPPwS0Ok82gzdP6ThiIJ8nmicXRE+MfSNZjG06LyMLw8NSxRWvA
         kgi8HTutScS2toVIeenNmXZars0FJVpT3rJTXMgVQvogasv/MjLiiDLOJh03AV7R8AIF
         e5EbS4WvYIrgyFgJ3ZIYB91lkiMT641cqMar8gqscx1wCNPuaTNn6fpAe6mKWTwB9tyM
         kAc7HNPdSlEkuxBpi7zaACFdFaCBM/k/hNgJpwlgpGbXhedHAU6liLrnsWCailfW4b7N
         1sfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DABfn9+FOX81+Oc2zUUMP3dEIzQNJrb3zDqcGARQkMw=;
        b=gQU8H7UgkLNES+iUmE1GTUUGDiuaHHsoaoPjXPKJxSCXSvL4WUN1PPa7/9cSRCNLy0
         4XoDaV34VrDE1L0YH+vJdBPktJAWtn12tgZ5LTNFvPi+SKNgvABfs67Eyp1YpbqWL64x
         kNJqGg0j5ZfT0e0hg/RXV+E0dawgzbGpPVp5M49qbxPzpA/6wAvVWYwMJbOsj2CZNO1u
         k+xrccyCuCknZoG41f+H3myOxGUHmwnYjeHlya4E2pNlYbjtX9borCZM1+vunjiFf5F9
         o3EG2meLb4r+ezTj92msJDAgfMNlAfcjwJ21O4Zusonh3K8rtHC3aK0q7CBgoNtpvXIr
         COSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RrJsXoLA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DABfn9+FOX81+Oc2zUUMP3dEIzQNJrb3zDqcGARQkMw=;
        b=CQCiD+eqW+zhC5E5Gcl9kuUC4/ofHLMEjv7V/4wpjELLlpsXMvuRFhbhT0J33tyAom
         gIErdLEnJLdmB99qWk2j4z2zXaDV+7shXmTYemhqRROjTPZKM/kCWORD+VGTRIXkQfhO
         PhCgBAHsEFkkG1jgGKfLj1j0Lh2Y5df7v1qvH5fInrqDBvqtsz9jcEGbVpS8fT0oKQsY
         sOIH8HG8eSOVzu37/wJRvfYQj3pdjWjr4Gu4Gi6lLmKV0qHfDvN9U68If0Wnvfh5JAcj
         djwfc+5Dl3p98g/Oa72muVG1ng+AtledD54OMjCuhyaA+EP5VH0rfZzHCimcjjMlFT9L
         SW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DABfn9+FOX81+Oc2zUUMP3dEIzQNJrb3zDqcGARQkMw=;
        b=IY1L1K4JsUej12VZFQcFTT8SPZ3SOHeOMXhAcgKLYZ7BOEE3miB5Uo4KdW4PlBI/Np
         VK/yb4KSB2tb6p+0J0AkeU4mZwGQOkmCVEC1+Ncqm3BqtXD723IHe32+zhDhOaAA/4gk
         rl2lAp3vWFPw0ObnjKcdCvXce/JtZ+04K3mLeN6EBDZwju1BA+fKs3EJsqIpx8kiOYKM
         o8T/BH5JzSQtogjRAtZw8zntejg70qmJfeMyiPImOwl+AnzK1YLBt5TUFxHFWc+KRQnG
         dBVDPehfO65qnVQdth+52DK3/jSZfctDnYtGExsekTWvCQinXJytpZmj5uEHuKgX3K06
         By5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrPD0cRA4PSmNneklMKRoVbbHIFdvmucoIo/VXoS7ukDzqyl3T
	5ZkwW97K0/9UGA4S/tzRbHo=
X-Google-Smtp-Source: APXvYqzBlN20e13U/gn18UcPvG7YGvdXJu1cPE56648+aCelTka+Xnn9o6GttAJyN/ABJoCHyTfJvA==
X-Received: by 2002:a05:6602:235b:: with SMTP id r27mr562040iot.51.1582659781034;
        Tue, 25 Feb 2020 11:43:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8c10:: with SMTP id o16ls160805ild.6.gmail; Tue, 25 Feb
 2020 11:43:00 -0800 (PST)
X-Received: by 2002:a92:5889:: with SMTP id z9mr269114ilf.268.1582659780722;
        Tue, 25 Feb 2020 11:43:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582659780; cv=none;
        d=google.com; s=arc-20160816;
        b=sfbzKQSQmhBJge3Ldokgv8Cw/a7Tx/aPuIERAJPH89gWbIRU/cReVdvM+pdpzY/rkA
         AR2COWT715yQF7rpUicepY0s+VJYA+2cvk4NVdckH3JnwDVE4RZtFKLdmc7I9j3pDrpc
         j2lmbzEDBGe3pArfUD8XDg+OtoZm4xkqmvHqCIjb9ZlU3DaZSfU39WGkw4taOYE++Cs0
         Gtrcy/YHzaoPa3+O2af0cEYFRA5IHT7o2RBgfOPnC6RGfk1fRKILBDsEHxwW1okdZj2P
         53hcYvcPr7DSsHv+iiNog4YApH9Tu7pnXsH4o61PFwP1eUdx/VzTjEUiLSHHd8tE3982
         9KNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=B3YfOF9RdWClbkrgasFARaQYtBEE4BEedB2tPnWISAw=;
        b=jL9F915+2iY4LpdroTMvx5XHkA3Xb9+nYg05UD2ImKaaEQF4tHnqbeBhFspx97dvwl
         bszBdz+GJE4pIOO+ufys2kpG/f+sjaOJjQUs79KKEK0fi6+ZHp417zhzdHY2PI7MXClW
         E/xB18j3egyyCDnXtnnr7oWpajx1Jg6OMKaNxmozQtx/IlVsyWZ0LkG4CecqIy2I0MKy
         uuJwm7UB74mwWUHDft7OR+8tQXVSDwd7tAKEwrgsRKMffjrw8lTQf31o8MWwHE39uOCf
         2lLp4Eq/di427bBG1WRgB46bYkZVIVbwaFdBFJ99yG5RyZNgtF0WJkFTG4lreBKW2Ygj
         Dbig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RrJsXoLA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id u22si24934ioc.3.2020.02.25.11.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 11:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id t14so213180plr.8
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 11:43:00 -0800 (PST)
X-Received: by 2002:a17:902:b089:: with SMTP id p9mr157561plr.42.1582659779668;
        Tue, 25 Feb 2020 11:42:59 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w18sm17647703pge.4.2020.02.25.11.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 11:42:58 -0800 (PST)
Date: Tue, 25 Feb 2020 11:42:58 -0800
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>,
	Kristen Carlson Accardi <kristen@linux.intel.com>
Subject: Re: --orphan-handling=warn
Message-ID: <202002251140.4F28F0A4F@keescook>
References: <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook>
 <20200225182951.GA1179890@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200225182951.GA1179890@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RrJsXoLA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

On Tue, Feb 25, 2020 at 01:29:51PM -0500, Arvind Sankar wrote:
> On Mon, Feb 24, 2020 at 09:35:04PM -0800, Kees Cook wrote:
> > Actually, it's rather opposed to the FGKASLR series, as for that, I need
> > some kind of linker script directive like this:
> > 
> > 	/PASSTHRU/ : {
> > 		*(.text.*)
> > 	}
> > 
> > Where "PASSTHRU" would create a 1-to-1 input-section to output-section
> > with the same name, flags, etc.
> > 
> > ld.bfd's handling of orphan sections named .text.* is to put them each
> > as a separate output section, after the existing .text output section.
> > 
> > ld.lld's handling of orphan sections named .text.* is to put them into
> > the .text output section.
> 
> This doesn't match ld's documentation [1] of how orphan sections are to
> be handled, it's supposed to append it into an existing output section
> only if the names match exactly, creating a new one if that isn't so. If
> ld.lld is to be a drop-in replacement for ld.bfd, this probably needs to
> change?

That would be lovely! :P

> Also ld.lld doesn't seem to support the --unique option, I think you'll
> also want that for FGKASLR to avoid merging static functions with the
> same name from unrelated source files.

Right, yes, that seems like something we have to depend on.

> 
> [1] https://sourceware.org/binutils/docs/ld/Orphan-Sections.html
> 
> > 
> > For FGKASLR (as it is currently implemented[2]), the sections need to be
> > individually named output sections (as bfd does it). *However*, with the
> > "warn on orphans" patch, FGKASLR's intentional orphaning will backfire
> > (I guess the warning could be turned off, but I'd like lld to handle
> > FGKASLR at some point.)
> > 
> > Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
> > entry linker script ... made ld.lld take about 15 minutes to do the
> > final link. :(
> 
> Out of curiosity, how long does ld.bfd take on that linker script :)

A single CPU at 100% for 15 minutes. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002251140.4F28F0A4F%40keescook.
