Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE5NT34QKGQECYBYZLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id E759D239E6B
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 06:46:12 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id f4sf26886805plo.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 21:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596429971; cv=pass;
        d=google.com; s=arc-20160816;
        b=MolZFf4XZwOZ8murDhwTRrhyzILKuq6qGcG/8qtsvF0HxPK2dv637VuKrs1YonhF9b
         AMRAEPgQvLVBKieQitZee/5+LMgXCRULai1dxHn0LH5aIzspq9abRZFhSubpwZat7G84
         VXaJi0w97nfCX0iiBPzaVehzF13LZ2HJPyIrwL2KhNv/TyIWsiOpCAGM+q8PXURz7MdM
         XWYJwKcCn8fMGAOMM1IhGYQSzzYVcve0cbBLApHO6V9TrUjYEc8FkuDWittUPTnuZBv6
         L96smY2rPxW0S5WfqUp1MFwW6xAJTZJebYms/5e+Sv2A3pm+Wa+Uv0d1Xc9HJxNo8W+m
         IaAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=/JPWOzef1OulT7IcKW/TKuQq1kH+7XCwLBePAHfEp/Q=;
        b=Lv/VJIU8IcquV4uRDccywmdFSr35MBupOqm6MVYLwlD2M9ARs75pGbKHMmKhw3UKVT
         +LCCQVP3KpTYL7+PITsgvhOMnYzfFoPaPSFcTtWzBqKhejh2YiGgcgHGXjo44cq5AlY/
         g46My7ZlAglrsxCMiPcrDalTE8SMJ2GcrYEUksOGHXBRLdv2XMS1PuVX1YbZLKN6+6mm
         RCReXOTT0Fgx95SL0y6GEexpsafaFsAt8ffEIUTwk/hZz1kgwtao14SxyzRwBpeiv32a
         ntjC5eMQ/raYHL28SjNusQDsyoXd9SjGrtfGK7GP57PA4lL1wtNcp7wTF1n9CADWz1G9
         zEhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jPM8pxVG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/JPWOzef1OulT7IcKW/TKuQq1kH+7XCwLBePAHfEp/Q=;
        b=kjSupnsXON+Fhsc60B0P3Zg9zOTrXP/J+CqDsB6XL8fLuAuwEuD6Gi8j68sJK3pCmX
         3XFCFgbqwmu79P6dlbMlljncksijUZgiV0jqgsiojM5OTfvZP8avk7h9KP50mPIUUymq
         pDZfX/kqB86Hn0pCVJcBgigwl+JdHoCHYwRlwGyTawz9foCg7MtL6Dl31SqGvI2LlDR0
         TRv1QYlmNLXCKHDkzQFmMzS6DECboWlDRy8H0VQRHrRK/4JbOliQVuzZd/z8pbq3ahhs
         EBW/Wz+q1IN7H5dwgYuthFgIUKJOFYKV9rClA8/QAfOuCJ18WTZLSuVdlNOQuiOFyuyJ
         X6zQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/JPWOzef1OulT7IcKW/TKuQq1kH+7XCwLBePAHfEp/Q=;
        b=Hk8DVCNNgQq48/cDCRELCMXkrj+vadKW/aRvPth9503Bte661mUlr3buc2hPqcTYJY
         UJRwwjvAzjII3cq8VvuAw3R/SX4GxRO1InvQQvOAuLZ75QZFUM3JIAEFScBx7ojktxFq
         hqGBbRzwYVUSbXtvpObtWNj017FVXRe99S1Aij5dVjrMqsXL2Fs4ywcPtAE3DkuHmzaB
         I7hYVVWhucGFuS+ysU6bTOIHNJR1En7OFpPypBZqrbyw2fv1w2hwpFfct+6jB/YOYx9B
         XeJBItBCnqpV1nVGV9S+6wOTGPSGknPQK5Nc+SPwHj1hRn1b3B09alPnXrunEhil3b+y
         PmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/JPWOzef1OulT7IcKW/TKuQq1kH+7XCwLBePAHfEp/Q=;
        b=Fc1H4nt1SU7v+Wej4q00TfgGmmj7dNiCRhtQTzkSXwvmK2pGDDrCPLcjEhdNP8l6OQ
         ZV4bxBgX0I2Wu2rP81LwUSJjzMXD86TGUEpIE3o6iF+QNjI/2R5MI4yea6x/h1nCOFJ1
         q3aMUDT821LaBrHjDK7KUkP8twENKALFHqHqvhO9CbKvoRCEkRbGy7wMZ1/N3jxRfZQb
         AhpDKg1wmlZ+qR0AotVB5s6kerY4/bqgFv5xXBZHgkoygIBr+3215xY8HRkBVgZVEbd5
         okNiSHOo5L7d9kDvfFwvC/whbevSwbIH6dYzPqVqSq2zts8ZCeWqMBTbKU2/yuDtIeWV
         8Oww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530S05dDkrPOWEYYpnqmjud1UGZ0YIOkRp8eSYezdnwRBd4WarUx
	PC2/lg650vRox95KcjrtM9I=
X-Google-Smtp-Source: ABdhPJx4eO+v5KUbBDHX0OimTpPFwp9N2sNOhg15miS2VpRo9/mkZ68Ngavp/GMDhGyPZlq7jhHVJg==
X-Received: by 2002:a17:902:8f95:: with SMTP id z21mr3761944plo.32.1596429971125;
        Sun, 02 Aug 2020 21:46:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls4071832plb.9.gmail; Sun, 02
 Aug 2020 21:46:10 -0700 (PDT)
X-Received: by 2002:a17:90b:816:: with SMTP id bk22mr15686351pjb.185.1596429970695;
        Sun, 02 Aug 2020 21:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596429970; cv=none;
        d=google.com; s=arc-20160816;
        b=BUK/SF3FaFUHn2eTAlYailbSvK9+CgTfGfLbW70leND/x2FVXFLnSpKQDWwh7qRFbj
         wXcboXJ+yfCVYfByNLeJ8VGXruYyb9zohFT4AxTwHUrqQv92brsI+vpRcUHtnl9SP5Qm
         eoK6YekgPMsu6di7voUmPXjlGEo/NM25vohCzxO55Su9Ih2tS6Cse5mhhx+ZaPnQgwX3
         DdIB2b/IgvNMmjyRFwpUacXs68+fFun1LV5qbU6ZLGRF7dgbovR0Kr4v+oUeiNejSKSj
         G7IIw/WGE+480laTa3wWdhRBRlrZn7ZxJBIv5soinmBN0TvX7sBdGlGkuEKpctfwZkyN
         iwWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=M0EXqVvvU7EURtyvH7wo3HHy7rzmVEpMvCzVpEfbXzU=;
        b=twHp+8S+HEJWFzE7/61lK7gFdtHULG4V2mTF4JUJsldMyWEBNLYRTikbmfk5iLYize
         kIb3FfBQm3NshdnHja72lM1IrE2dd9xBsST5rpq+Jv+zzzTl08JVrZ4HmQGz/YXr6HV5
         p5DFI9nhLhrhgXYo0I1W21vbv+9aCMotxl88U0PIJZ71mR2+xlWS116RdEwxZt6eQEi6
         /CWOdAa1RqVchrwXK2gpcUKv/sJ7FC2YvsjNNXu3v4o0jDkFh57piuVtfSR4/dIX5mxP
         AIqO8zR3xsV3hK5VWsSvS9OoTXITfa1j/J9msXwftKpOwQ/uStDy4+6fhPEzCMX8rnuE
         IXcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jPM8pxVG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x17si667006pll.0.2020.08.02.21.46.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2020 21:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id r11so9621704pfl.11
        for <clang-built-linux@googlegroups.com>; Sun, 02 Aug 2020 21:46:10 -0700 (PDT)
X-Received: by 2002:a62:387:: with SMTP id 129mr14750803pfd.187.1596429970262;
        Sun, 02 Aug 2020 21:46:10 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([89.46.114.147])
        by smtp.gmail.com with ESMTPSA id v77sm15947707pfc.137.2020.08.02.21.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2020 21:46:09 -0700 (PDT)
Date: Sun, 2 Aug 2020 21:46:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Oliver O'Halloran <oohall@gmail.com>, linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 15/16] powerpc/powernv/sriov: Make single PE mode a
 per-BAR setting
Message-ID: <20200803044609.GB195@Ryzen-9-3900X.localdomain>
References: <20200722065715.1432738-1-oohall@gmail.com>
 <20200722065715.1432738-15-oohall@gmail.com>
 <20200801061823.GA1203340@ubuntu-n2-xlarge-x86>
 <87r1sp19ag.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87r1sp19ag.fsf@mpe.ellerman.id.au>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jPM8pxVG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Aug 02, 2020 at 11:12:23PM +1000, Michael Ellerman wrote:
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > On Wed, Jul 22, 2020 at 04:57:14PM +1000, Oliver O'Halloran wrote:
> >> Using single PE BARs to map an SR-IOV BAR is really a choice about what
> >> strategy to use when mapping a BAR. It doesn't make much sense for this to
> >> be a global setting since a device might have one large BAR which needs to
> >> be mapped with single PE windows and another smaller BAR that can be mapped
> >> with a regular segmented window. Make the segmented vs single decision a
> >> per-BAR setting and clean up the logic that decides which mode to use.
> >> 
> >> Signed-off-by: Oliver O'Halloran <oohall@gmail.com>
> >> ---
> >> v2: Dropped unused total_vfs variables in pnv_pci_ioda_fixup_iov_resources()
> >>     Dropped bar_no from pnv_pci_iov_resource_alignment()
> >>     Minor re-wording of comments.
> >> ---
> >>  arch/powerpc/platforms/powernv/pci-sriov.c | 131 ++++++++++-----------
> >>  arch/powerpc/platforms/powernv/pci.h       |  11 +-
> >>  2 files changed, 73 insertions(+), 69 deletions(-)
> >> 
> >> diff --git a/arch/powerpc/platforms/powernv/pci-sriov.c b/arch/powerpc/platforms/powernv/pci-sriov.c
> >> index ce8ad6851d73..76215d01405b 100644
> >> --- a/arch/powerpc/platforms/powernv/pci-sriov.c
> >> +++ b/arch/powerpc/platforms/powernv/pci-sriov.c
> >> @@ -260,42 +256,40 @@ void pnv_pci_ioda_fixup_iov(struct pci_dev *pdev)
> >>  resource_size_t pnv_pci_iov_resource_alignment(struct pci_dev *pdev,
> >>  						      int resno)
> >>  {
> >> -	struct pnv_phb *phb = pci_bus_to_pnvhb(pdev->bus);
> >>  	struct pnv_iov_data *iov = pnv_iov_get(pdev);
> >>  	resource_size_t align;
> >>  
> >> +	/*
> >> +	 * iov can be null if we have an SR-IOV device with IOV BAR that can't
> >> +	 * be placed in the m64 space (i.e. The BAR is 32bit or non-prefetch).
> >> +	 * In that case we don't allow VFs to be enabled since one of their
> >> +	 * BARs would not be placed in the correct PE.
> >> +	 */
> >> +	if (!iov)
> >> +		return align;
> >> +	if (!iov->vfs_expanded)
> >> +		return align;
> >> +
> >> +	align = pci_iov_resource_size(pdev, resno);
> 
> That's, oof.
> 
> > I am not sure if it has been reported yet but clang points out that
> > align is initialized after its use:
> >
> > arch/powerpc/platforms/powernv/pci-sriov.c:267:10: warning: variable 'align' is uninitialized when used here [-Wuninitialized]
> >                 return align;
> >                        ^~~~~
> > arch/powerpc/platforms/powernv/pci-sriov.c:258:23: note: initialize the variable 'align' to silence this warning
> >         resource_size_t align;
> >                              ^
> >                               = 0
> > 1 warning generated.
> 
> But I can't get gcc to warn about it?
> 
> It produces some code, so it's not like the whole function has been
> elided or something. I'm confused.
> 
> cheers

-Wmaybe-uninitialized was disabled in commit 78a5255ffb6a ("Stop the
ad-hoc games with -Wno-maybe-initialized") upstream so GCC won't warn on
stuff like this anymore.

I would assume the function should still be generated since those checks
are relevant, just the return value is bogus.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200803044609.GB195%40Ryzen-9-3900X.localdomain.
