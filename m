Return-Path: <clang-built-linux+bncBCIO53XE7YHBBEHH53WAKGQEUIJ6KLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE2ECEEA1
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 23:52:17 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id w198sf16499275qka.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 14:52:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570485136; cv=pass;
        d=google.com; s=arc-20160816;
        b=uSLvRTcS2sx787q1rUfMzCAOoweRunZD+34myMytl3jxmMuh6NccXtU50p/vtPWZ1+
         Q6ztAyrS7hqd/t0Z+xJI9neuA4s2vxULYFTgLpGqGaJDcn2X6MtCWM01PQbVo1q27LGs
         GB2+ZdGGWPz6aYnp0cFQU5p5MaTa9D+bHHvWPBXYTvtfihakSkpPOG2+8V3vBTnxmUVJ
         cA3UMXfw2CuOyhoT7NL894777f7m039i/tdXCyeJNnBvfwNHHp8bHHcMEngx+I3maQSw
         RehC2ipWBcoWLgw8lTNDhtcH4W6c9PnXdqEpV7zO/pu/D97LS+6URKOci7IZ23j2Cpkk
         i1gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=O35q5gBFgtOfcYxh4ll/8D/1ieFZ7jgKsnLqFm2LpiI=;
        b=G9U7bA4mckNFkzf1SYlfcB+8MIlBy6bhkzezSE8b5JL/3V4wO05XigRG1mC6WVOqPJ
         cTEWXzVi4kijb7gmNyx8m1yuPKE9FLQjvAKBBPjK0fXt81gzPD9Cw+pdBULR2a9W/qx3
         U6JtHg2Ia7/HSoMJUR8ZH+K6jW1lr9pRD8PgZmzpio0uG2PMYH0x6MCSnL1Mr5IFaM3Z
         Ikug0e10GdOEIwyWcjTxUQ7MXZwZaN3Yi3iseeKIeWKPwsYYCO5VIe7DyaQ84tkIixrH
         1CXShP2hLp7BAXD+4I6J4PuR3f6Lng7evm6Ael20siqHuHipv4tG3y9XBafa3uCZAheg
         0e1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SUSSXO9K;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O35q5gBFgtOfcYxh4ll/8D/1ieFZ7jgKsnLqFm2LpiI=;
        b=CI9HG0Qml8OXBUokk/Z3qQzZDKmPvaGRdtSaNg3FjXuVzLcFeZFg6sOkpIsNnIxmWE
         iSQTZfc/+yBFSMaR1j/Wdct9n3iazSXPVrTwa9wEFw6HuH+RCDj/oa3Y8d62IN70gp1O
         bnxDg+o0Kfd+i5EOzjVjHvtXPLZbn7IGR/Wm0YKhvBKsjShw4lJaY5ElVxDH9BM9TQXZ
         43n4daJMTz/y0s7xVEwIiOGJhERRl7Mx28DhgghdRLgn8JwF4CJz4cOnIHd6xDckpths
         loHRX09uDl52WoxnEcMpT0Y07LZpkgDaGBJYjxCx9hzV6hPG1ijkOE8wI9N5xZJtXpAl
         Byrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O35q5gBFgtOfcYxh4ll/8D/1ieFZ7jgKsnLqFm2LpiI=;
        b=Z3WuF9ODuBDE5VFm3RBbWu6ReLYja7Bh7dx8DjETbnwxXrlCfepQIerv4w50NVIWAD
         x283CkUaoUma4S0XSKJ6LAcyILF0zVv1pJgTNmG2I0VdGSGnby9PgZAgrLziltrZymtZ
         tLL9tVYRUVuA1RGxEr0uAihlL9QPPmCobuOP/y0nkgHQV2koIwTAw0e+gjqNCiq2IA6B
         lp2cPc2cW7QaxfJgXpVL5Ws55WvXhNw9w+QzXmITHtD3LHHngj2scm73dqJHR5VaChGV
         Q/0X6P8T7QU9auivVQHOVOvj09RJzhrgWZlcSPNiIoBAof/v/5IhR1jzcI5ligVJokkI
         Xarg==
X-Gm-Message-State: APjAAAX0RrARw1iv48pKY1GGsZpX0uuwTWKVj00RW1J28KTmyFtfiDU1
	qbl/Ol6VsLdm4gqDfwjquOc=
X-Google-Smtp-Source: APXvYqzyIhPOD1OI3UKFrYQsq389cTTQSSKtbuNQIYzJkI87bwEIlhklewd3QhIDM1he4dCfoSRCOA==
X-Received: by 2002:a37:a409:: with SMTP id n9mr4132114qke.485.1570485136714;
        Mon, 07 Oct 2019 14:52:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:131b:: with SMTP id o27ls491099qkj.12.gmail; Mon,
 07 Oct 2019 14:52:16 -0700 (PDT)
X-Received: by 2002:a37:a1cd:: with SMTP id k196mr26227325qke.189.1570485136352;
        Mon, 07 Oct 2019 14:52:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570485136; cv=none;
        d=google.com; s=arc-20160816;
        b=FD0XDnoUeSAxEZdQvKV6xSYwq6I9ZAj6J+1Bdql4Zd/6lHatujtpopAH1ZpDndhttx
         MuQBWdIitVlbP9OiTJSLhxEPxtbwtfKEmfaKgz/cikDsl2fkVXXOf2RTel/pTOvnmdDb
         J2GgkLkRpLJYI3Oda4Gt+h2ex21aVEzXwhvByyhQRBsW/5x7+/E8AjD/YqFXtcN7QoD5
         FrQCpPWDn7Vk3SLpvJA+bsfidx3b+jkaDQWAvRCkYRaZRDyURiVYrvdHI6VjvX+Y98eW
         3bz0DdxLWT3ps72y8W9H9lTwtwq/0DEFENA1zbtpao874qNlEtCki2DgCddWobuSemOc
         W1Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=Yj0XbGw7Bq6WSvRBmShSEs1vB7x0y/JZH0AJjB3HNM4=;
        b=tahE8LCOLxpsNjW+297YZruLylrPjITZINtDR41Lim5ozixi7WdYXo0EuqUxR1fMoc
         uOB/ojYgf6esfBQH2oEPxQDgwBbeU0QE/GhGYlmbGHNSqQBLxxT4oMjzK/dljExzyY7W
         RiybAtYxJPEXnd/fTjHHJJYHPvw4vahDvXd8bf4yp3bCU013zY0rKQrVqbfofaNxppk/
         w1adkEPzgak883D24sNA21l4thDpEyXGMUyqdoAeXRl/NNRYWpgK7IfUN8hYsbMSeAd9
         J8fOvxFW4RyjZhAZa4+gJ8aI94RjEWp6IRocAI5huGAAPaeD/3H8vCKwgOfDJH+ZT7zs
         lS5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SUSSXO9K;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id h4si504086qkm.2.2019.10.07.14.52.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 14:52:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id f16so14220814qkl.9
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 14:52:16 -0700 (PDT)
X-Received: by 2002:a05:620a:15db:: with SMTP id o27mr3876369qkm.368.1570485135906;
        Mon, 07 Oct 2019 14:52:15 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c18sm7012800qkk.17.2019.10.07.14.52.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 14:52:15 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 7 Oct 2019 17:52:13 -0400
To: Hans de Goede <hdegoede@redhat.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	Arvind Sankar <nivedita@alum.mit.edu>, x86@kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/purgatory: Make sure we fail the build if
 purgatory.ro has missing symbols
Message-ID: <20191007215213.GA405660@rani.riverdale.lan>
References: <20191007175546.3395-1-hdegoede@redhat.com>
 <20191007200529.GA716619@archlinux-threadripper>
 <c24d8bef-ad76-4986-0c16-268e7d09bf7c@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c24d8bef-ad76-4986-0c16-268e7d09bf7c@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SUSSXO9K;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Oct 07, 2019 at 10:31:49PM +0200, Hans de Goede wrote:
> HI,
> 
> On 07-10-2019 22:05, Nathan Chancellor wrote:
> > On Mon, Oct 07, 2019 at 07:55:46PM +0200, Hans de Goede wrote:
> >> Since we link purgatory.ro with -r aka we enable "incremental linking"
> >> no checks for unresolved symbols is done while linking purgatory.ro.
> >>
> >> Changes to the sha256 code has caused the purgatory in 5.4-rc1 to have
> >> a missing symbol on memzero_explicit, yet things still happily build.
> >>
> >> This commit adds an extra check for unresolved symbols by calling ld
> >> without -r before running bin2c to generate kexec-purgatory.c.
> >>
> >> This causes a build of 5.4-rc1 with this patch added to fail as it should:
> >>
> >>    CHK     arch/x86/purgatory/purgatory.ro
> >> ld: arch/x86/purgatory/purgatory.ro: in function `sha256_transform':
> >> sha256.c:(.text+0x1c0c): undefined reference to `memzero_explicit'
> >> make[2]: *** [arch/x86/purgatory/Makefile:72:
> >>      arch/x86/purgatory/kexec-purgatory.c] Error 1
> >> make[1]: *** [scripts/Makefile.build:509: arch/x86/purgatory] Error 2
> >> make: *** [Makefile:1650: arch/x86] Error 2
> >>
> >> This will help us catch missing symbols in the purgatory sooner.
> >>
> >> Note this commit also removes --no-undefined from LDFLAGS_purgatory.ro
> >> as that has no effect.
> >>
> >> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> >> ---
> >>   arch/x86/purgatory/Makefile | 8 +++++++-
> >>   1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> >> index fb4ee5444379..0da0794ef1f0 100644
> >> --- a/arch/x86/purgatory/Makefile
> >> +++ b/arch/x86/purgatory/Makefile
> >> @@ -14,7 +14,7 @@ $(obj)/sha256.o: $(srctree)/lib/crypto/sha256.c FORCE
> >>   
> >>   CFLAGS_sha256.o := -D__DISABLE_EXPORTS
> >>   
> >> -LDFLAGS_purgatory.ro := -e purgatory_start -r --no-undefined -nostdlib -z nodefaultlib
> >> +LDFLAGS_purgatory.ro := -e purgatory_start -r -nostdlib -z nodefaultlib
> >>   targets += purgatory.ro
> >>   
> >>   KASAN_SANITIZE	:= n
> >> @@ -60,10 +60,16 @@ $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
> >>   
> >>   targets += kexec-purgatory.c
> >>   
> >> +# Since we link purgatory.ro with -r unresolved symbols are not checked,
> >> +# so we check this before generating kexec-purgatory.c instead
> >> +quiet_cmd_check_purgatory = CHK     $<
> >> +      cmd_check_purgatory = ld -e purgatory_start $<
> > 
> > I think this should be $(LD) -e ... so that using a cross compile prefix
> > (like x86_64-linux-) or an alternative linker like ld.lld works properly.
> 
> Good point, also the ld command is actually outputting an a.out file
> which is also something which we do not want.
> 
> I will prepare a new version fixing both.
> 
> Regards,
> 
> Hans

We could just use $(NM) -u, right?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007215213.GA405660%40rani.riverdale.lan.
