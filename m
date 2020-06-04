Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWXE4H3AKGQE5THJ73Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D82C1EDC00
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 06:02:36 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id a20sf3973566pfa.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 21:02:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591243354; cv=pass;
        d=google.com; s=arc-20160816;
        b=da8Zu2xAR/UDBnP2ovQgYNAUVLYCa+Q1h01QTP2/6iqqUtyhzxW0XVrTWfAxSddw01
         +mvjuMrBj0chzRrMmx+uahmquDlGOyv0drn1bH1edVhgO/XJjuQcG7FN+t6wQDOdy406
         KnvPS6E+naLNO97+PWoxHQ7foVdlyTU7AKO+17YsjLdBkf3+PS1bT27avJwCwK22MztL
         uW6bsiWMXqIBOEJYLWziZx4Nq2wHz8Argb9zKXDt8srzRXD9omU01V4S0eTW33SCejyV
         OWZ5iDIKdx7mC7eTq0gfgm7TPF/BPANFhdZ6bEB+SRZqIopozThE9qpRiICw6Kq5hIbi
         tHBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YLRhmJp1hVWhTGfDxyRYM530YAdobTtjOpNCEZJ4ZlQ=;
        b=pIbOQXYoIfTjdbPc5F0lOd2/b5Fe7NIyxmbai81gJdSCLHFc/lH7D9/07jic+fscVM
         C+my4w9xPzP9A/Z746qjy/lU4iXDlz67e9J40x+aJbndv0u9aipagvJtvLOwcnaJ71q/
         HsGl0fkTf70sWAKjM9zi9489q4CBardp/rU7brmz4DS8gg3t+aWlMGiTnRib91JjQzlL
         hv3AwxeEdgUr95CJegPUmGzCSogHqoXLfppdoQMvnbSu9XilRyU1KOxrjKLTiyOriBdF
         vxPRqTC5ljnvUoVY9hNJnRMlN6OuxA+lLZJ32mFS0d946V/PfUxYBmY7d5+lWmerZz3a
         OdaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nmlYusCX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YLRhmJp1hVWhTGfDxyRYM530YAdobTtjOpNCEZJ4ZlQ=;
        b=HDHEi9p96nDwnlnZQUvjCfILFWlq5kBj0Hn3msu5E96npzOFAj8gQpDdmbBwyhMVP/
         O6VHqm/VDy3z6LD406W1y6zT9sL3IR7TZZqNu6j1K+YxKjESFJvO/KoNy+qDIbtM0BoY
         BwJO2uqS9BTq/NYpj+p4atSpU57syseT93/SztaWicpBIisexRfEIGeqwti55Vdf7xNE
         QUKbngG+oj4I1l2aOZY6RMkoEefmAHDVbesEatGtkfbpJxY11WK59A48+Fz5sqIX3vfd
         9xdp5eLhxFV/RYZJrMxCb67WjahcIqsQudXrylju71C8YA2FUKpnY1KQHXRe86qHpnZh
         ZV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YLRhmJp1hVWhTGfDxyRYM530YAdobTtjOpNCEZJ4ZlQ=;
        b=d9rPV2+L8dgctcBukbtt3thVbl2kweV+N9zNcDlEbqbbYZZDt0QxKLdOaYLVHeb9Dc
         4URM4s4sHcQIoll5tovihx+AKXhobvIxn9N++BAtW16YRhKsbpwfmCKSz7Yd5PdK8CrM
         yEzqeYUMGUBXS2643+50mhYKaQpnskePALGQYqs/hoPwssE4HoiUR0DERucxqY9nOwcR
         marCaH0/pypMXdtfMCAwCE4k0WNSC3fHKzy2g+M4x0R1W8loLYzShvw7jHY+uXdgKYyV
         KRyMZhOuPaqIsPWzdVGW9mMG/5D6LOcduTLGNkRSkEWWlmJWkOQN+Gad7UBidfNpj0hV
         wC0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ecy4iz3gAqG6V2QyXfBuQC6buhO24W+EWalrzFKdayxi+UwS6
	MnvogESpaGMJfUlHuFzOkKM=
X-Google-Smtp-Source: ABdhPJw6PydQeXbPyGAmn01bcf98kDks+ngtwJ5PpPP6sSHCmIg84xgY+b0kDo/eXmU3Gcqqp2eZUA==
X-Received: by 2002:a17:90b:3651:: with SMTP id nh17mr3686864pjb.4.1591243354518;
        Wed, 03 Jun 2020 21:02:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8548:: with SMTP id d8ls1618059plo.11.gmail; Wed, 03
 Jun 2020 21:02:34 -0700 (PDT)
X-Received: by 2002:a17:90a:f8e:: with SMTP id 14mr3885829pjz.172.1591243354099;
        Wed, 03 Jun 2020 21:02:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591243354; cv=none;
        d=google.com; s=arc-20160816;
        b=Me2cTQDjFcLLFZU44HgD7PY9yt+0MEDiWU2io6bwwhUGitGjFphY4bY2znKbj3b8xA
         ppzBdyPYjIRzfpzbhlEazKRrvAGNBB4CvTMufX2De2CarYdVWZmDYDv9KW60jbw3PSBd
         Xxbki9+/nnA9njzNuPPEQFDPLlWBPYvj1yx5fvXDpxGsxZbHvCvcYLT6OF0CpTzY48ql
         7wY58Do5MG09+6h8nWsBMHoO8jlVe5zgUWvBTUanhSdIHZnjHXyDrc4rwINmXBLjiOCP
         XUc/HOZYq0lIrnrGcc9hhkY3gN33eavOelHMxS2BpReA030EKUjg6vuYUdOEelcVehLZ
         coHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dDMZ76EfQNqsSp5sb7mLI8JiO94mOeQpyrT6zdtd3HQ=;
        b=Fi6PWNnurY5stwqa1pc5xlkOpf6Fqryv9Y9S44zvKzsEYw+oeDZm4oqeeeTF6PDIje
         21/81cTd2ycLb25nXk8totIjmuD3udfvFWMDoQvM9eoaYt/6FmrUBRPTU+TrqdY+s8Jq
         5utqH2nLHykO49GG2UO2Buh9w+Vd/zLy5psy/xt57uv+/+VA4B1cn5V39P1ToPanz1oE
         36baH8a6U3WsZDCwLJYgM87ktp6aNfghBGqLX9S2OsewW0t6TUh54bbMmipkn5mqr6/1
         ULFHzku5e+DwRE10PhwoHqP0NgZW6c9RMIvxuVRHwjnq1sdMEeNpIZSOauH4YhTmsCrG
         FgGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nmlYusCX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g6si351179pjl.1.2020.06.03.21.02.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 21:02:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y11so1595806plt.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 21:02:34 -0700 (PDT)
X-Received: by 2002:a17:902:b710:: with SMTP id d16mr2968382pls.28.1591243353758;
        Wed, 03 Jun 2020 21:02:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q6sm1193902pff.163.2020.06.03.21.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 21:02:32 -0700 (PDT)
Date: Wed, 3 Jun 2020 21:02:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <202006032048.E7B1D18A1@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
 <20200604033315.GA1131596@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200604033315.GA1131596@ubuntu-n2-xlarge-x86>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nmlYusCX;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

On Wed, Jun 03, 2020 at 08:33:15PM -0700, Nathan Chancellor wrote:
> On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> > 
> > I preparation for removing[2] the[3] macro[4], remove all remaining
> > needless uses with the following script:
> > 
> > git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> > 	xargs perl -pi -e \
> > 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> > 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> > 
> > drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> > pathological white-space.
> > 
> > No outstanding warnings were found building allmodconfig with GCC 9.3.0
> > for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> > alpha, and m68k.
> > 
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> <snip>
> 
> > diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
> > index a0f6813f4560..a71fa7204882 100644
> > --- a/arch/powerpc/kvm/book3s_pr.c
> > +++ b/arch/powerpc/kvm/book3s_pr.c
> > @@ -1829,7 +1829,7 @@ static int kvmppc_vcpu_run_pr(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
> >  {
> >  	int ret;
> >  #ifdef CONFIG_ALTIVEC
> > -	unsigned long uninitialized_var(vrsave);
> > +	unsigned long vrsave;
> >  #endif
> 
> This variable is actually unused:
> 
> ../arch/powerpc/kvm/book3s_pr.c:1832:16: warning: unused variable 'vrsave' [-Wunused-variable]
>         unsigned long vrsave;
>                       ^
> 1 warning generated.
> 
> It has been unused since commit 99dae3bad28d ("KVM: PPC: Load/save
> FP/VMX/VSX state directly to/from vcpu struct").
> 
> $ git grep vrsave 99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d arch/powerpc/kvm/book3s_pr.c
> 99dae3bad28d8fdd32b7bfdd5e2ec7bb2d4d019d:arch/powerpc/kvm/book3s_pr.c:  unsigned long uninitialized_var(vrsave);
> 
> I would nuke the whole '#ifdef' block.

Ah, thanks! I wonder why I don't have CONFIG_ALTIVEC in any of my ppc
builds. Hmmm.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006032048.E7B1D18A1%40keescook.
