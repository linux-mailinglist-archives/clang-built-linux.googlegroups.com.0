Return-Path: <clang-built-linux+bncBDY3NC743AGBB4XJY7VAKGQEQVK7YDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB0E8AB11
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:23:31 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id r4sf44882822vkr.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 16:23:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565652210; cv=pass;
        d=google.com; s=arc-20160816;
        b=rv6NYTspQv+48Owep9gtlG/ylNa+523uVQKc80aisjT4sOuyWwegGapiqoPihQ1LB5
         PW7UEYdhGSVd3FoF39UFNW8UACwzvoJRTEfDsCEVEJnz6kkL5a1K2tVo4GhS5Uw0leVH
         rUaW3sfPylxOxx1qUVUrFkdpOOmoyT78/dEus3ll8MO44rMNttIXeOcHBvQgHfnfk37l
         NoeasrXsS6o3+S+USecOt2hxLUSRMqY7v3g4RQ/gaaXK+i4pIytrDWXVQmrJUibMZWwU
         wdhSuY/ujPNVTqpES9PumDWYY8bN1YykgH1l1NP1CGAEO+WAIRB3W3HCBnyRYJBWQCB/
         HYSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=hvGKVilkcpzQTYJqille5+iOd1o5akljHRwlFODSfYI=;
        b=Tg33O/nDSPXrjRWkkFxeHjMHem8Fnxv/95ZmdV3C9mb4V8ycR02mv8YTk+8Mt1aO/i
         tN5BwWcguZNxBKFtoOvY/J+XM+1hNNTSvJNRQPlpiLSoL5ba7CyPUD8Xh3YLHHrsxe3j
         ubrFG+dkegCq8f9iteLIoteiPOsXKAH/grTfISgEfrO4D/fMTUZeiW5MYTqjHMjmZHOf
         3GQge+DEdqD+fYnR3yne2N0ZgHgQvBYYQUZJCF+pdyE2iDqaVBo6jDap1f2qeCmWO3N3
         D2xrhqNikhLRmYuc6I511Q9UV1PBkaobyf//Kgk4vlg1lfKgAEzb8U937d3Dnm4rkOIA
         w40Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.34 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hvGKVilkcpzQTYJqille5+iOd1o5akljHRwlFODSfYI=;
        b=qKNBdF+mkurAmX5w2IvpQoeE+w69yEq9tZnu/ki5HQbutPayWMyauRddofWW+n4JQy
         1l5BXnL0cubqL/fKq/9vkh255jUPnUaEQDNJbLt1UU6aRgPDSlCmwnoG0ppTyA3Y9EvZ
         LqWoegTdiLmgzZ8JFublLExpLHOTU+KulTg2k3OePjACzm2FdI8ZUp1015HWSAwH5yp4
         g+2pAvUtG48SYNjHDvt1CXqRFR+Y7YSM5HBWwoJP8xcRkW0WtJwfW8b23z7ZzmKDOH9U
         naGv6WHqeVFsWo7XcnzVm9aRiWcelrUUmiRrZmMM7VOc/fSrYXLrhAFMUswrvlowUEKR
         9ZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hvGKVilkcpzQTYJqille5+iOd1o5akljHRwlFODSfYI=;
        b=MXQEV0ToKexKlzpKFGY/iDrcKfosN0yohxqnyZF3YQD7cCdrmtlKhMWalOCkT5Mgw/
         /iD50apkFlIq5IES5KLBaPTe9xx7Mli/qngAymeLibij42Fk1yrsEwX0A0mOhOc67b79
         y86Jb8v0Di4nu7Z/GhxCq6nSqC7LOLmLyp9+x0SjMJIw9+6it6FO5SSFWK069iF7axuY
         /PiWLwVez1rld6Kopqtoa/kRIOAPhN+yj/1vzwAcqKHUw1ZVq1+6+tC1gLObgLo+0nd7
         9Smk+rbMm9LzuUXox1EC5FfddAMfzW2E9Pk1RH1yPG/XJ8/Of2bbypmV9y4a64i8fvkQ
         Sh/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUDF757oaALM/AXrDjEd5WV206TOtVtocLEjw79lPTJNiXXh9fx
	4A/9lmkQuHcotkg6HM72hbQ=
X-Google-Smtp-Source: APXvYqyZO8E+uOsdIMELWMuu4UXOJpzngj8Klw3D5RY4w5rc8W7iX63w9CzTMiJyG6r1ziyGn5rRNA==
X-Received: by 2002:a67:7f85:: with SMTP id a127mr24425456vsd.8.1565652210671;
        Mon, 12 Aug 2019 16:23:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7a41:: with SMTP id v62ls13266157vsc.6.gmail; Mon, 12
 Aug 2019 16:23:30 -0700 (PDT)
X-Received: by 2002:a67:5f45:: with SMTP id t66mr13837302vsb.233.1565652210459;
        Mon, 12 Aug 2019 16:23:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565652210; cv=none;
        d=google.com; s=arc-20160816;
        b=AfJNG2FypBWg4yxV3I75m8MiETEM7VlRnHBwtPgCVmh2NRtTXdxHPKbCRfej6XDZfA
         z1WuIxPA2u4G4XaI5IpYHjjARUx77qV48Pe6K1sorlvGsgbdRJ4rfabutavkJJe8INYS
         bf0UjSrDZTPNq3xr+4Fuf/mlJbTz0bBnNYG5zlprBGhnuud9h3ssW+0qK+JvZlNBzm/u
         XgSLkOlNTOZQujGvff9PtYSDBl8J08UFaRdx1coRErWKBna7zQMJRWGk4dJrmxIDVVE8
         q50Lr+PAA42lz+1LTbR4SCHoXeF3cZPqg1gUIBhXy1kBQE1J85U4GcHAQer0+A0xDWu8
         KQ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=c2EAyLyo/gqt2XU9uy5WSbnyDFDXlnpFwV0hlAWHAzY=;
        b=jRQKOtL90RqW03+HA243b9NokQSaIEDINOCA8gbSjdJc+rggqGUxszKNvxZg9k1FHq
         2DiToUOLwA33a4anKwZ875p/Bd0Hs+mpejRS1EdE+lSzlLw+0j19ntdqVsapFbhPrvY3
         6JvQOLuaZEgPoqTAPNLEFpxCzuqLj2ufWgmEDARWu5yqWmUkt1s6MoHluoC3HVYk1OIJ
         Q0/5kfnzVT4791mqlSifk6jD53mUYBC4y59c5ScOLzTEoSOY/vNLX0/jo5vWXP238/VO
         QBl/uxsDtzv9f3V77+5TxXHFcCzJlcAHnsu+/YtZrqueqJlQG/csqUQGpNgDFimO1o+X
         qHLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.34 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0034.hostedemail.com. [216.40.44.34])
        by gmr-mx.google.com with ESMTPS id a128si4890707vkh.1.2019.08.12.16.23.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 16:23:30 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.34 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.34;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id C1578182CED2A;
	Mon, 12 Aug 2019 23:23:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1543:1593:1594:1605:1711:1730:1747:1777:1792:1801:2198:2199:2393:2525:2553:2560:2566:2682:2685:2731:2828:2859:2906:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4387:4605:5007:6119:7903:7904:8660:8985:9025:10004:10394:10400:10848:11026:11232:11233:11473:11657:11658:11914:12043:12296:12297:12438:12555:12663:12679:12740:12760:12895:13019:13148:13161:13229:13230:13439:14096:14097:14181:14659:14721:21080:21366:21433:21451:21627:21740:21788:21789:21811:21819:30022:30034:30054:30060:30070:30083:30090:30091,0,RBL:error,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: leaf22_1e480bf41a219
X-Filterd-Recvd-Size: 5199
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Mon, 12 Aug 2019 23:23:27 +0000 (UTC)
Message-ID: <058c848ef329fa68ef40ca58fa6bbd65b97de0e1.camel@perches.com>
Subject: Re: [PATCH v2] kbuild: Change fallthrough comments to attributes
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
 Nathan Chancellor <natechancellor@gmail.com>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Linux
 Memory Management List <linux-mm@kvack.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>,  "Gustavo A. R. Silva"
 <gustavo@embeddedor.com>
Date: Mon, 12 Aug 2019 16:23:26 -0700
In-Reply-To: <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
References: <20190812214711.83710-1-nhuck@google.com>
	 <20190812221416.139678-1-nhuck@google.com>
	 <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
	 <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.34 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2019-08-12 at 16:11 -0700, Nick Desaulniers wrote:
> On Mon, Aug 12, 2019 at 3:40 PM Joe Perches <joe@perches.com> wrote:
> > On Mon, 2019-08-12 at 15:14 -0700, Nathan Huckleberry wrote:
> > > Clang does not support the use of comments to label
> > > intentional fallthrough. This patch replaces some uses
> > > of comments to attributesto cut down a significant number
> > > of warnings on clang (from ~50000 to ~200). Only comments
> > > in commonly used header files have been replaced.
> > > 
> > > Since there is still quite a bit of noise, this
> > > patch moves -Wimplicit-fallthrough to
> > > Makefile.extrawarn if you are compiling with
> > > clang.
> > 
> > Unmodified clang does not emit this warning without a patch.
> 
> Correct, Nathan is currently implementing support for attribute
> fallthrough in Clang in:
> https://reviews.llvm.org/D64838
> 
> I asked him in person to evaluate how many warnings we'd see in an
> arm64 defconfig with his patch applied.  There were on the order of
> 50k warnings, mostly from these headers.  I asked him to send these
> patches, then land support in the compiler, that way should our CI
> catch fire overnight, we can carry out of tree fixes until they land.
> With the changes here to Makefile.extrawarn, we should not need to
> carry any out of tree patches.
> 
> > > diff --git a/Makefile b/Makefile
> > []
> > > @@ -846,7 +846,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
> > >  KBUILD_CFLAGS += -Wdeclaration-after-statement
> > > 
> > >  # Warn about unmarked fall-throughs in switch statement.
> > > +# If the compiler is clang, this warning is only enabled if W=1 in
> > > +# Makefile.extrawarn
> > > +ifndef CONFIG_CC_IS_CLANG
> > >  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> > > +endif
> > 
> > It'd be better to remove CONFIG_CC_IS_CLANG everywhere
> > eventually as it adds complexity and makes .config files
> > not portable to multiple systems.
> > 
> > > diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> > []
> > > @@ -253,4 +253,8 @@
> > >   */
> > >  #define __weak                          __attribute__((__weak__))
> > > 
> > > +#if __has_attribute(fallthrough)
> > > +#define __fallthrough                   __attribute__((fallthrough))
> > 
> > This should be __attribute__((__fallthrough__))
> 
> Agreed.  I think the GCC documentation on attributes had a point about
> why the __ prefix/suffix was important, which is why we went with that
> in Miguel's original patchset.
> 
> > And there is still no agreement about whether this should
> > be #define fallthrough or #define __fallthrough
> > 
> > https://lore.kernel.org/patchwork/patch/1108577/
> > 
> > > diff --git a/include/linux/jhash.h b/include/linux/jhash.h
> > []
> > > @@ -86,19 +86,43 @@ static inline u32 jhash(const void *key, u32 length, u32 initval)
> > []
> > > +     case 12:
> > > +             c += (u32)k[11]<<24;
> > > +             __fallthrough;
> > 
> > You might consider trying out the scripted conversion tool
> > attached to this email:
> > 
> > https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/
> 
> I guess the thing I'm curious about is why /* fall through */ is being
> used vs __attribute__((__fallthrough__))?  Surely there's some
> discussion someone can point me to?

AFAIK:

It's historic.

https://lkml.org/lkml/2019/8/4/83

coverity and lint do not support __attribute__((__fallthrough__))
but do support /* fallthrough */ comments in their analysis output.

I prefer converting all the comments to a macro / pseudo keyword.

The cvt_style.pl script does a reasonable job of conversion.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/058c848ef329fa68ef40ca58fa6bbd65b97de0e1.camel%40perches.com.
