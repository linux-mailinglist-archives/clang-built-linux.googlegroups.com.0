Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWMU2TZQKGQE32H2RJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C518D6C2
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 19:24:27 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id t4sf4390235plz.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 11:24:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584728665; cv=pass;
        d=google.com; s=arc-20160816;
        b=hEoBa8jRZLQcrpFVuUELN5XiIVDMSnda3irUekmc6NCuBby4dhLe5RkAqQgl86aZyc
         5cVNjWOgiOAqrUcml6uSqgp/TTZyuMVtcb1E8Qr1OEsKLa3fOjufCmsau2N4o3Gj0gMs
         cdpBhx5Siw0XPH+jUI3YIcBRffQctOZaBV/zB19tG0gp5br+12Fubb3IyyNgKD2ExkwT
         sCLBVi9rBs+Ky2govBS8RYFwN5HyNphu0ivlyYsqYfhIt42OYe7xpUeya/Fyv6Ox6reo
         LG91TEv1BiPwNT7XqiYTRqvgKkX4Bvlf4hZmGckzV/q37c2bjxffQJVIq+XJUj9gPRGb
         x1wA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Iin12TwkqNxXqjkDQ51UD0V7AZbRvt92VuWsrtDp5OQ=;
        b=NN/q4zz39EN0bH1I9CVb/4oGxoLW1N4lblCNoVCmVH/spCSGRWOdWNbAAOlyfpa6rh
         +p0xabpeLNlfNucgdWXFkgt/i8QT4tN7K7vOOKRMIqg05frCLyJRCHarw9vpbC/P0SaM
         W/2E/vrjXwxYDBveMY5kqFANWLlNdoBViNI1or+5C7a98euFb4ICQ7yzAy6BWhB1YmUn
         QXK6d4DV7foR7EtUo+74e5Uswvfdt0b97OusLODgxOzBqf38ffZDt2ugYBbMmot63tBF
         /++X/iwOJFD7xjki6POZomEeXMKv2qk3bFbL7hPg7yaG1i1LRfY68WpMTQz9yZiwXwqx
         WmGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=egxARSlF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iin12TwkqNxXqjkDQ51UD0V7AZbRvt92VuWsrtDp5OQ=;
        b=aHZr0KXbdaxPLwwwNbdoUC/xXoilgxCPGTJWAIlXDu7aA0SQYmtn+DZ35eKXN2OmuD
         3K+MShzkQ9iAwVQnZf3cJ2qLA5OTw581/MjvwCs83rS/lcXv+AZ4WNFKZV7b3EgxTfvD
         sAdIbz0zfwSmyzzjVaN9DymvPmRug0Crkgi2lTOBNBfngUNo5r8dvBveSZrBXjS+cJz4
         wESGiLoWBhE8nTuKsghPRy0sXJ3Ng7z7yfDnWC2ZQuWTsgpzlL5vtY9qzfjapKxdYqOO
         uOTozmI/SS4miO1bUIRuKl9x8nPdzWfOVTtXwHy7rQK7n8L0JZXeJMHwUe2tT/3P+dBK
         n5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Iin12TwkqNxXqjkDQ51UD0V7AZbRvt92VuWsrtDp5OQ=;
        b=oCiWhACwuyc7jSLh6Mx+DJdObl9+uu4PJKZlMFxE0ta/sOW8Hcuz8MWvle5gzSiyDl
         Ml8DMfL/SROBqUoYDVx0qNglWHmc7iNAl55Ljtk1ZZ6gRm6YTrBfl8Y5ooK2lb6ybjQk
         eQfQfyVBfTeI1jN5pvePK+PuZqkjOHWCNW9i1g0GUTsSaEGRqEnlg48Ru4/LjmpwMMkR
         iamjNO8xXwdSF9houdf8ftwoERkt0glYLmplh+Y3BurhMb1SyvZ730DLepc4o/BZT0F9
         SzApOQGAuIhLD5ysYMGTOIHfOBzmt3PZtzEnL4SYwvUIOVyLO95+BufSnYvrpUWhRpKX
         32vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3KlyNyNk1tt82f/PVQuJrMbt2XPXcoDIjdiUifD/PpGIm+9XOZ
	szuhM4y9bFj2/RGa6PvFGUA=
X-Google-Smtp-Source: ADFU+vtqZDHphvN1tq1cZXCDCOVThWOC7jVcFTu4BvyK3YSJzVi1ThunqWfbCu9j/vlOOI2mgkgJuw==
X-Received: by 2002:a63:f60e:: with SMTP id m14mr9629908pgh.342.1584728665345;
        Fri, 20 Mar 2020 11:24:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:684:: with SMTP id 126ls3526897pgg.9.gmail; Fri, 20 Mar
 2020 11:24:25 -0700 (PDT)
X-Received: by 2002:a63:6f0c:: with SMTP id k12mr10016938pgc.142.1584728664988;
        Fri, 20 Mar 2020 11:24:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584728664; cv=none;
        d=google.com; s=arc-20160816;
        b=qB+2RCE18YlB1aX2eWUKUkHpdN1j7j2byQOFTxE8RuCT9H+QTdpo633xWWxqbfs9kC
         +x/Cy/GAX0OBF4jQFMwFXNXTA9NaceAV/41LksmSR8a3kTbQrtgCbGBtKha5VXIh5eAk
         /TuEABWRJwWQFFA0qDt70rPsaI6H3PU7H0LbM1Gx7v6HnmkTTC7aPzy0q6bp54x7upa3
         Se95Ue7rXoXm6V+HXqZNjE8XwMSjjjicOjFz0uMXeJI/PRQtaoWcvOUw5o3spG1XN98p
         ZoDFUnU/P5i3B1OQmOOEOQ6C5I7PvShllDFnzF6PLAtJvw3Kr5jkEkydLqEgRm3894hf
         hg8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2xWVMcAkfq5ne45p4xyMZVZzHfwNqETngAro5lkreP4=;
        b=y6J8V0CxsuIcA+uwWRts2/01KZWgjMXoytnJ3VUQJC1IE9msfP3Uz3Veccy/x0o12Q
         mDzZ/zbHxLSTLdteYMbGD371PHGMXq0oy/l4Pwbyyl+QTROqm1PraUCIjlrQfdqEqkEg
         V3JBppXnju1J8c1W+yLQG6SQkOygfaiaSalfXGzovXwrD4pRLcTCfU6dBinSRHsLdPAl
         NMXBFMYX81pt0nN23tLeGzO1PNnDi5uU8cVXhqYgvg14NTkjcoawwXmXBv83J8mvbqWr
         e8C0nN/FyfHanS1zTPPgjTK17qzvtt9EWlqeH4R8wwNQ+FY6mZWWB2vdcdjLcUM1nq8z
         emjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=egxARSlF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id x12si447430plv.3.2020.03.20.11.24.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 11:24:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 37so3482169pgm.11
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 11:24:24 -0700 (PDT)
X-Received: by 2002:a63:b706:: with SMTP id t6mr9859014pgf.329.1584728664667;
        Fri, 20 Mar 2020 11:24:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w205sm6244774pfc.75.2020.03.20.11.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 11:24:23 -0700 (PDT)
Date: Fri, 20 Mar 2020 11:24:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Nicholas Piggin <npiggin@gmail.com>
Cc: Borislav Petkov <bp@suse.de>, Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com, "H.J. Lu" <hjl.tools@gmail.com>,
	James Morse <james.morse@arm.com>, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Peter Collingbourne <pcc@google.com>, Will Deacon <will@kernel.org>,
	x86@kernel.org
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
Message-ID: <202003201121.8CBD96451B@keescook>
References: <20200228002244.15240-1-keescook@chromium.org>
 <20200228002244.15240-2-keescook@chromium.org>
 <1584672297.mudnpz3ir9.astroid@bobo.none>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1584672297.mudnpz3ir9.astroid@bobo.none>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=egxARSlF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Fri, Mar 20, 2020 at 12:47:54PM +1000, Nicholas Piggin wrote:
> Kees Cook's on February 28, 2020 10:22 am:
> > Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
> > to detect when there are unexpected sections getting added to the kernel
> > image. There is no need to report these warnings more than once, so it
> > can be removed until the final link stage.
> > 
> > This helps pave the way for other architectures to enable this, with the
> > end goal of enabling this warning by default for vmlinux for all
> > architectures.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  scripts/link-vmlinux.sh | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> > index 1919c311c149..416968fea685 100755
> > --- a/scripts/link-vmlinux.sh
> > +++ b/scripts/link-vmlinux.sh
> > @@ -255,6 +255,11 @@ info GEN modules.builtin
> >  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
> >  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
> >  
> > +
> > +# Do not warn about orphan sections until the final link stage.
> > +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
> > +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
> > +
> >  btf_vmlinux_bin_o=""
> >  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
> >  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
> > @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
> >  	fi
> >  fi
> >  
> > +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
> >  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
> >  
> >  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
> 
> That's ugly. Why not just enable it for all archs?

It is ugly; I agree.

I can try to do this for all architectures, but I worry there are a
bunch I can't test. But I guess it would stand out. ;)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003201121.8CBD96451B%40keescook.
