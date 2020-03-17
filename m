Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQFNYXZQKGQEFJFDMMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D681891B6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 00:01:21 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id a30sf4459104uae.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:01:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584486080; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFjubJ6IGp0E3nmBCDcSzG/c5jgBBF2hcNB/nG0BbFUyIqUR17t0AuPKrieDvld38J
         NVvJp3+aGXEWUNRfY7+C/5BUX0ZgSXzATQcX2o85aOU/vIl7ktUcAPfwtvB/JvRrczfZ
         PoVoQJCpUtxYMPXNtuc2MLBh5dLLrEdkw1CcSGx969h3HfN8QcUPkT0xI64WFglxrtii
         1KqvYqdGhZzfrh/HnjR2w+1smU8YujpaKvCFTACr+KvQ4DLmbMhAN4H3n245oNhKFqbc
         fsZKqnGxzlKyzUiPFyBq7/YcFyQE5v58zafCzkNv+4KYxupHo/pv57WotY+eakM53yug
         O4/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6FaE5HNjOm/F9z0OzJWNPSyWMAQzVErUblP9wmNGtow=;
        b=dB1IHTyHNnG1onoqcEgKZzArhJ3kfKquGuMdEpEPEMRJoJc7OM+NWM1WcnDzWd+mw7
         Ez57KhRMFnDGKIWAHyS3acPnIHwC+Q2nablOTTN5onCZ6E1gggR+iidEI0ms11jrIBmA
         43sZCOjhe5vZBn6eQTv0eZTE4P+gp/whmeOUHX52mrAWIVG5T9xBQBuYJDx32LIpfiCs
         L9VRtQpNfgdDmuOyoVpmerLqXYvtfrVuLNYE5meHyms6O30SHVWJ3wJAzyzALqK/CmCd
         7ilD8hQaUC96KIUmqWu94M13+PKljmka4/Z/Qm/w9syJV/cBdaVgLCYbQUtQtLJmmfVh
         nf4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nHn8XPpj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6FaE5HNjOm/F9z0OzJWNPSyWMAQzVErUblP9wmNGtow=;
        b=FRPWQYfvL/5nuBrion49cmKweq88EqQPlS6fNEnosrDUbDdimwGv3vNQcEhTCGu8eM
         r9nSUmn0Kdm54MNq3pC5zUfF1EFimOu5C709hr+JHk/yY7lmFFQLlj7Uc2kPAIbg4ed8
         NbSwjaMJVBb5s9Cir4f89BmdRYD4TZiA62Qb8ND1in3biUhVV9+xFiCwlue1gxdotcIS
         k3YZnQvN7A7i6TcBXqGfJYtFGH18abEZPgK5sxqigz0APINeGq0LPlg2sgrD84+YhDWP
         1yTlwJf9VCQDCIEQ2WRECA55jwVGmgnUP80c6NFddE3Eag2dXgswiC2FY/LdXbrq2uI7
         H0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6FaE5HNjOm/F9z0OzJWNPSyWMAQzVErUblP9wmNGtow=;
        b=R8O/lZfAeZJzTVrnSZp7YmWstR/mS2ryZMYO2poVe2qAXjPP+X3S0Zewo/MEZBJyc1
         csfm29uVVGFTs8wEo/TtGx9GXd0w3UP7/VrEBeMP3Tydowc1a6QQJi8VPBmV5qwTOAzU
         vOhs8FOMyGWxxLUAN+1oCiep4k4g+LOo8GGa/UV4+wdGV+if19McVzDWXg5sqAr3G+Zc
         +EhnYMC/qRgXK63kowg5wCukYktVl0TXyiArWNqE4DatdIC3/24YkmqReNSUYjcvzOpl
         PtfpHWTzjbhuFOli1k2G4fL6OM8/KdjTbHNkf1ghYFzK2wcDSDAMl2hidmWKOu/F6/md
         lUCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ04YK+EtfmlBAzbTY1M7PMK7UPfC2GtKsz+7sIOEBfW/dtga5+Q
	ZGTKr8cv+3kE0C+3zW32bGE=
X-Google-Smtp-Source: ADFU+vvj9cZhkg9Bb4A6uvKlALRPxkRC37F7fxCgQkPenc1aKF0TyzggXn0A2BP5UqF+FvCWWcx6xw==
X-Received: by 2002:ab0:630b:: with SMTP id a11mr977234uap.133.1584486080117;
        Tue, 17 Mar 2020 16:01:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls423878vsd.3.gmail; Tue, 17 Mar
 2020 16:01:19 -0700 (PDT)
X-Received: by 2002:a67:2701:: with SMTP id n1mr1066794vsn.103.1584486079792;
        Tue, 17 Mar 2020 16:01:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584486079; cv=none;
        d=google.com; s=arc-20160816;
        b=NREkPA12K19cjAXN0MOypBCBCtCRMmoW2z8mxF+lxkg7y1zzd82tz01DcMCIisRfmx
         MdFqBbl/NlNsl0UxQhVeMWSuIEL96ep6ZjUfjByxRcP/tOX+HO3E2T5zt1zh7MPbFjEZ
         Is5OunpFk4G6ZV6PceA4Go4Sx5K+gCK0+PCsDSXNLa8rzDIS5e8sX0g+1+mPTRZzW/dN
         MC1d1icv2XUgpgYZ3Z/1+KWcwKFhaLIO3MihHrnYzk+L4EFBQyOo+Hzpnbd2nShbKS0G
         9FJu2k6urPBXNN6OPrP1pToVZyv6efteA3OBo+xvnkZfb9/EQ2ii+wXh1H9Mqn2HQk7Y
         VUBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CLAXJR/m1S5mvbxDH/gOJKQ31fTpJSMrQ/dm5IseVLo=;
        b=gN8oRP8FEb0nhSz2jSRdk6PTmvarnThs/4tZuwJNe/+Xo5RQdTY4BqZ0xQCEJiOLcW
         OGdkYVSFqOAfCxdGRlaJx7iBXxT0yIKCk2jYcPURdZYWS1hnx9MPigvRBliwcc1Skfz9
         1pJdvDllXaKiWWXRgM6yGSx6FZ8MCpe1niYeCtdjM4kKOR83RNAfWzytjuhSLC67ye2L
         F6bKuFMoBSNuchZwZQPhAGTL/CF7m54fv85aGhlP9foruNT3UOA7t6dT9+m8oBZvjKb8
         mJtqxXWINC1pntS2Ky/zz7z4ZGJDqXcg6jY1T2NcERtkdyUaffqDVtT9xc7MrwTYxbGD
         mFPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nHn8XPpj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c3si207511uam.1.2020.03.17.16.01.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 16:01:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 7so12556655pgr.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 16:01:19 -0700 (PDT)
X-Received: by 2002:a63:1245:: with SMTP id 5mr1481307pgs.55.1584486078671;
        Tue, 17 Mar 2020 16:01:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w15sm1772273pfj.28.2020.03.17.16.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 16:01:17 -0700 (PDT)
Date: Tue, 17 Mar 2020 16:01:16 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/9] arm64/build: Warn on orphan section placement
Message-ID: <202003171558.7E1D46AED6@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-8-keescook@chromium.org>
 <20200317215614.GB20788@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200317215614.GB20788@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nHn8XPpj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Tue, Mar 17, 2020 at 09:56:14PM +0000, Will Deacon wrote:
> On Thu, Feb 27, 2020 at 04:22:42PM -0800, Kees Cook wrote:
> > We don't want to depend on the linker's orphan section placement
> > heuristics as these can vary between linkers, and may change between
> > versions. All sections need to be explicitly named in the linker
> > script.
> > 
> > Explicitly include debug sections when they're present. Add .eh_frame*
> > to discard as it seems that these are still generated even though
> > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > to the image as it does appear to be mapped near .data. Finally enable
> > orphan section warnings.
> 
> Hmm, I don't understand what .got.plt is doing here. Please can you
> elaborate?

I didn't track it down, but it seems to have been present (and merged
into the kernel .data) for a while now. I can try to track this down if
you want?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003171558.7E1D46AED6%40keescook.
