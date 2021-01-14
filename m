Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEXMQGAAMGQEPZIQWIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F222F6643
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 17:49:23 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id a11sf4943327qto.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:49:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610642963; cv=pass;
        d=google.com; s=arc-20160816;
        b=bdH6u08KHfGQu1V8ALRfKGwHYZnvzAE7rYrrzFpPV1p7SsHMq/vyRd4OWuX35uCnJ8
         ARuXPpp2vykZK07FxwaIzuICEZD/nTIWzP1OnR+exHGW5/PbPtX06gZTEPSJ27sRhz8n
         zdf2gc0+m5KQ6yI5qMTf3cagc3sf1dbKV38TvvXo8FBrbrjc8izW1ddjB36HqqZiszEs
         fRsnF7GJdD99H+yQWdJkD93doCzMWAZ1AoYT5nzyBJP5nlPvCvHdHtxwbBa/QppkbPqs
         yFtqmbQBqOyOG43o5MXukY3QedRNyYxlfDO++KA/w7iD/NR1VmbU3TmTtwCz5wBmTvbu
         4nJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=0HXSvH7dyeCU7QcAfrDJiShtEGlgWLnWaJ70KW1T1Zw=;
        b=AYpHlTLbAtk55FykWDl72M4RbPdkzu8fQntg8wKcerJKPOdJMcQBLoM9CH60ZUyucW
         zSCSNKFs9CDzPMWrCQ143cozxr/XHvEpI6iUJL4bWktZqA9tAUOSPROOC8Vq9nFR8OoW
         Nc3JyTvdWUfvobMYCS1vuNsBiuxCEdpppqd+pLTJe6IqC6/9s0cdv8uanj83mzXHDM/q
         hppV6vr8zQpl9zPJW5fQ0LvHViS/JYzhqoarD7QEdh+/6mLU1gL4Vn6ePy7/XQ2YFJCv
         B2L0iHBJ9JJUZgg9W9nH9mzvEFTRhI12x3Jh9gmn8LXE97SP97UAS+fz0YC7CeDgwH9w
         Eb4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GaUR9vgA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HXSvH7dyeCU7QcAfrDJiShtEGlgWLnWaJ70KW1T1Zw=;
        b=KECHSxz5FZtKOj5sn3OORB10WUaewRGSjW8S/kPXMk0ugtj7O6bbZNHzc7gmZPljW0
         UXi/AE7UgyuigBHMDwl71d5D+LdpxJS9v092rHxqqXTgG+nprouwuypVQvuz5beyHlDR
         GliTDkHrQTGrigdo4s/APci2LvbKcG0JJ6CxYgZc/zVGqbgqs/rtCK+zn14TAhB7zMbJ
         rWIT6sVT9f/XxgjTawmUQwBeaAgFjYJAfbdEveW0C12K6EMC6Y2VFWAtzBfoeVL0fH4U
         v0mcMj67THDjJPSXFl3pvuzP0GtFKNkbtV/B+X3ad3/7byMqPkjWlyWb6X60g9qpCfec
         Gk9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HXSvH7dyeCU7QcAfrDJiShtEGlgWLnWaJ70KW1T1Zw=;
        b=fLnUNXEiNovK1PUvDKWfGQaRNxoBIhA9UyvjF+m/gXQHVzkK4WMJtlJSBe4iWXZoSC
         o+S+rmb+TxjwON5xGHX01JGnfMdYYvr5w4ZrYlNROf39BQgikuvKz3xa8xe1efc66AyL
         SiiCcODgijkdggTPEQCplLA9bsGY3devdBy9muoat6HNxQjaQTyCy3DxAz1yLchc+Dcu
         uApoutxbh3iK4L/ArQA8PMndw2LrloP4UITFSJI+RDMaaaPkYNPqxhfW0NTUDDIegSvA
         OEk1harVR/z83FsLNu0LODoH92tSLIFCX8Gyp1OaaD1nxsb3N0ny4c+oCudeS0GvEueb
         u+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0HXSvH7dyeCU7QcAfrDJiShtEGlgWLnWaJ70KW1T1Zw=;
        b=W96YMw/CDLNTO2BWVkPLU+AEgm/q+QqM2sXdHd8MmQsGCrbn1JRY2W3gh80ehpseZe
         6FOZ48Fp6eNVekyuY5Mv7tkycPJXaSOQ2em5fC7NSDlzbv9McWKZgfiWB23UsGW6zsi6
         LbwBAeVoESaAY3T399RS1jUOe2rL0fwauxPLJvFVfZQhmU5wweVoFqUDh2Wkwf/xbEtn
         /RiQrMy+8wIOqFiKTayhcQ9MkGhX2eny0WNuIh11CCMFJsuvMPAFT2khEb18ILQn0kt5
         vkjP5kgy1VUUEGILnDvTUqPtcWdleKOV+H432A5/mWEMzjRFoZQ8Pd0TsiDm9w0ZBCB+
         9wig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Yesr/sV+iuEuUJ4ckHlmcH/Nqx+Y6+GUDrJ2g3TLadN9qAPpE
	Y94KUhjB8XzWMN+L4f66T6k=
X-Google-Smtp-Source: ABdhPJzb+dmMJDbjngOV4PKr9yMO6ei47k20zvertH7pl5mKSVMpcYVqTshMYjaLZkeqtjMYINNv4w==
X-Received: by 2002:ad4:4b72:: with SMTP id m18mr7768002qvx.10.1610642962800;
        Thu, 14 Jan 2021 08:49:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3763:: with SMTP id p32ls2794861qtb.11.gmail; Thu, 14
 Jan 2021 08:49:22 -0800 (PST)
X-Received: by 2002:ac8:7655:: with SMTP id i21mr7721452qtr.315.1610642962482;
        Thu, 14 Jan 2021 08:49:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610642962; cv=none;
        d=google.com; s=arc-20160816;
        b=IdIYbieYLHoaUVdhglLniYWBlC4EwJdxFqDCkLMhWjxzatFlRfiES2P0MSAi7vrf55
         m2qJFfubq0fhli+vmXDFDJgOLjR44yw0nZLIMharcCrjyOdi+vaLKo4xke4GecNRcBpB
         adxoYVziR5BdgbOq2sa7BoZj1w3f5CghDeSOsQdBZ/JZKNbriY4HTCMN4yJEtJ6mM7SX
         l/E9B3Z/ZsYOhmv29fTKznSrDQ/XH1BrCp0eyrbtC/zTF4g18Q/sCZWANFFFz22KeBtU
         HGyNJhPbLjjGpjCgGwsotR0a+TWMwLgv1DNWohtDQZnLUzuMMa9o3azXj7DHqs9KGYvw
         oxUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=23Gq+U8tqRW6jTOvnenkJZDTDWUxbLpLE/rkMRigKH8=;
        b=d/LL5jhtnV/uMHtMSXeVIUeOdTxPV/4i/BjtcO2k6lX9gyPE5Np1ce1+HnD95Oxe1/
         FCSfw2W0koGZSpFEZNP/w0WkL+i+hHkISjzAnTThieq1SlUqkDNT4iVedO2h3y9d8nAg
         +mlCXguy5YhRjhuhOa0xtDZaxHV9yNPt4PDe0J2WG6DNWKyKcZX3STpz54aDvmN7oNCL
         0Wl45IJCZsjVEPiMJOzHiSKXRaDM91PB5naupbltYQlq8h4u66e4cqflzloQw6QhaSnt
         h/zPrR+i32Kj8e2jMCZx2c33n2hFRbn71Vzxp5DcctZUns+YYsVMmFpCWbbtCFewATvi
         kCEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GaUR9vgA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id p6si394759qti.1.2021.01.14.08.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 08:49:22 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Received: by mail-qk1-x730.google.com with SMTP id 143so8809302qke.10
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 08:49:22 -0800 (PST)
X-Received: by 2002:a05:620a:1239:: with SMTP id v25mr7727606qkj.91.1610642962085;
        Thu, 14 Jan 2021 08:49:22 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q3sm3288275qkb.73.2021.01.14.08.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 08:49:21 -0800 (PST)
Date: Thu, 14 Jan 2021 09:49:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Paul Gortmaker <paul.gortmaker@windriver.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
Message-ID: <20210114164920.GA258518@ubuntu-m3-large-x86>
References: <20210114042420.229524-1-masahiroy@kernel.org>
 <CAHFW8PRr6kjEE=7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g@mail.gmail.com>
 <CAK7LNAQHA7FpYfdDaOuf+t+nMCtLH=Z7cdoK+3z3ScZ3Fn9Xww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQHA7FpYfdDaOuf+t+nMCtLH=Z7cdoK+3z3ScZ3Fn9Xww@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GaUR9vgA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 14, 2021 at 06:20:15PM +0900, Masahiro Yamada wrote:
> BTW, when I tried ICC a few years ago,
> I could not build the kernel with it.

Looking at the history behind include/linux/compiler-intel.h, the last
time I see a change that actually references building a kernel with icc
was 503cf95c061a ("x86, build, icc: Remove uninitialized_var() from
compiler-intel.h"), all the way back in 2013. Since then, there do not
appear to be any meaningful changes; every change is basically doing
something for clang or gcc and not wanting to leave icc behind. It might
be worth considering tearing it out.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114164920.GA258518%40ubuntu-m3-large-x86.
