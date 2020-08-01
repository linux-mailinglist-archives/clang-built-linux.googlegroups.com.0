Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM4SST4QKGQEQRLMYNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFAC2350C8
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 08:18:28 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id c2sf11617144plo.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 23:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596262707; cv=pass;
        d=google.com; s=arc-20160816;
        b=UL+Uvcreh3qKMfFYFcV7L0l75VJ6PmGYP8fJThv4HFRZC3uJ0fMb4FUH22oLjrQ7nB
         dFJt89+p7X4csiZ8SkK6W+FpN89SclDEiaW6lbTHJEjlyOsdT2OA9f/xXlgokrUUIEDk
         TdWhYyT7eIt941dVlG4GTC2NH+Os6qEzbLQ9ZG/O6nPyixoYcRIhpozpStbmgaUJHY+O
         oIPeIP2OHdLvwTUXcAw/L/Cdq2NZ06EMp/B1OuMxt5+J/Z14vENh0D1EYpyJ9YepWJuI
         ELLvyyDvzr+F8Z7C6SM7JPQuAN5hLrUifJfC2O1QKMcMIXE59RaRVaMrKzPVq2zquovu
         e3YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ctw1LmdpxHZWP9UQaxPu7NXmZACIOsT9sTXdpyBbfFE=;
        b=pGA88fF/RL5QPdnyfwAQhPG1YklXWHnoS9lN5cOgeWuVZuS6wjBnE/8JlX9NJN7m/2
         dwETtC7jMCnJJtpeA/0GQAVkznZ1Qj4t5cvdUH+Ez+cF6OEKky+uLn4aee8GsPJkr92S
         YmkUx6NMpUA5rI7gZJv/Vyqpr49kU2pzFGtOswSa148tM96qDIChm/dezeb4fVFzvqYY
         Gs1BbJ53K+MfnNsVg+lqb7EKAxV0EoFbvku2Ec1XXWIbNVlvDq6xj00Y1CZkDjYO7A9j
         NcslO3MwImm0bMDSc0n/cPGx3o5g8Lg71AgvuEtHK1LqPrDyJj4cIx+jDWgutVlEg7s6
         HcLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QM4N1rEE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ctw1LmdpxHZWP9UQaxPu7NXmZACIOsT9sTXdpyBbfFE=;
        b=ekrPHLKIDJ5s9Wce7YpweixN2thSPrjZGAGnQOSPv5alXBFI7HAQJDE35xyAm1ItWk
         GCMaX+nEeTgeFz9Pt9CT5EfutaVMfJJhC6RtcTwns5duKM5zcx31/MyngwYV4DlWCd68
         v3i+GZflPMpNN7l9uzP4DgHJIHxQJVigFOQ1IiPSbgNWpucpFddI9atUVp+dqMjckyih
         IBga0yqGhWI1PU9lYpN4reszOCX15HscmwSYNnN02L1tEkvuYf7BP9HwgJs+W4KKpP6C
         p4Z1nECGXVU839pul8Dz7+IoCdrYBQ77uUZx7AXfTsAXMvTS0r3802YjDULjzRhSJs/y
         HvsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ctw1LmdpxHZWP9UQaxPu7NXmZACIOsT9sTXdpyBbfFE=;
        b=gDpsrYmqf6mmf4moIXq+PX/sfG6vOUz2+eEgS4CGOjODdviDL1pVzOKBP/OHQ3waqf
         gw4766MvFh0ELXsAu7J8lTo6XOqOu5xTLF1MNfHdSxMT9ERTzbF6lgWPBrMJ/ybe+x3/
         /wjikBULYGUzOfPyFOyWmpjRhuz9wsRqUJmDSNB6878Kx64IT6A0rNz/EagW/aH+oi4/
         8iFz7a4bV0+QdlbmaTWM2UstdKgwVEaJzrTUMSPqjN3eIRDl+/D9FhUbY0T9MVA5iUNq
         WKO1AB0tJ2reqdTh7k2nXtBcnSX2Tg8uCbsPn/49CToNyt0xH0rTs1GJTklS2ieDw9zs
         cAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ctw1LmdpxHZWP9UQaxPu7NXmZACIOsT9sTXdpyBbfFE=;
        b=f4xe6TVvqkOV2sIoRtGb+OGaCdI/VdDlj3831pBBsnP5Zm9dYNOlUSouTvfwVPAsVn
         +h5deEAwN3pGoGlRC2+sHHyiAV6c7lcK9WNd5SJY617QoR+0UeVsxpZ8YKCRT1rASB1f
         kggBzvX5Qla4LcwHamPu7DKCwKyaOf/4A3rTfgc1IWZ++l8uJdq9By+s/0TkHX2VGQ6L
         49eI2ij9+rwSZLrI8TLIzGsHhJ8QSp7IZRB9NoIVuJDbyM9lS08odzuJcTTIGULmxqzu
         XO1RAdvI2OF5GQvlIKfI8zokkefzJH6ADpI0uW5HQxwrIzWvK7g3MZIYfxd6RiMhRecG
         BHDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NdwhgwIa50kNLQwY0D+QaKSTtKlsRzj61wekngXxr/tsQkJip
	ep8sYdKjfZB/zPG7XEFeKcA=
X-Google-Smtp-Source: ABdhPJywR1liq09/HmW4FRXNtm8lCiPVmf5KCDxC+8BdxpGDdaBqA2eFa+UjnoACQDJqWbeRBy8mOw==
X-Received: by 2002:a63:1452:: with SMTP id 18mr6154062pgu.400.1596262707256;
        Fri, 31 Jul 2020 23:18:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c8:: with SMTP id j8ls4585319plt.8.gmail; Fri, 31
 Jul 2020 23:18:26 -0700 (PDT)
X-Received: by 2002:a17:90b:ed1:: with SMTP id gz17mr7657273pjb.52.1596262706500;
        Fri, 31 Jul 2020 23:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596262706; cv=none;
        d=google.com; s=arc-20160816;
        b=DSgQDPKuzilH/EEtDjYxTDxZPGEqLC/5BuUbKmdTWnAw/MG+fEvHGrT9cbCdezgJdn
         LTWMFAiYz9WdCz+LVx8+R1S4K/4pEWp+vjKZKhr8CM83Au6ek4qABKsaavXdenWFGAc9
         NoRfXwdaMC7x7ooAiQboRdLnaJ8rDx2ELOMaXujL3KmeZ0VOsTqbNfWjZwaL7zQ5nCnL
         i2NpziSqE6Bj4XSQJsoec8OkA+227w12rwcbI/XuOGTfQAGhXJIYRs4E7EMFiK600D9G
         HO3m33twIXT8QO3dMpvGaRxmLVzI2LQaQfF/rgXI09Hf87d4ywamruqhBQOzT6J6YhLZ
         KUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hL7iClcdKqXOYN9Q1q8I16zmxPOQCdI5xIXQVS9HUT4=;
        b=dVp2URBq457tVGkas6r/VRdyj8tAQVQlT69f5UpbkG0aETybOCDysX4RiC3b9MBL0n
         5isRuBoWyASZn8hVqkGaO3gI/T1kKpTzZNiciUj0IkSbq6UoU4d0ICxyHtp8AhQFS8GI
         xvuAzIxHYi/e5hDSHnptxAt812N2eQg+KVBvaQ+QCS46rWZ/igPJCT7JvxodyYF1CpKl
         9GFcv+W8gCIib8flJwGC2cbPQkYopM9Cd6omoWkWUf/RHQuSBWM3XWfYxzQt30r5p0gj
         zyv9KV4lXxxrMvP/kSop6/aENQpUls5HYTwmzRv6UkGEFGKKuLk2nIksarRkpbL8vcnK
         WkwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QM4N1rEE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id l35si121937pgm.4.2020.07.31.23.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 23:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id j187so30861877qke.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 23:18:26 -0700 (PDT)
X-Received: by 2002:a05:620a:a05:: with SMTP id i5mr6966677qka.444.1596262705443;
        Fri, 31 Jul 2020 23:18:25 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id t127sm11062953qkc.100.2020.07.31.23.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 23:18:24 -0700 (PDT)
Date: Fri, 31 Jul 2020 23:18:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Oliver O'Halloran <oohall@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 15/16] powerpc/powernv/sriov: Make single PE mode a
 per-BAR setting
Message-ID: <20200801061823.GA1203340@ubuntu-n2-xlarge-x86>
References: <20200722065715.1432738-1-oohall@gmail.com>
 <20200722065715.1432738-15-oohall@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200722065715.1432738-15-oohall@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QM4N1rEE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jul 22, 2020 at 04:57:14PM +1000, Oliver O'Halloran wrote:
> Using single PE BARs to map an SR-IOV BAR is really a choice about what
> strategy to use when mapping a BAR. It doesn't make much sense for this to
> be a global setting since a device might have one large BAR which needs to
> be mapped with single PE windows and another smaller BAR that can be mapped
> with a regular segmented window. Make the segmented vs single decision a
> per-BAR setting and clean up the logic that decides which mode to use.
> 
> Signed-off-by: Oliver O'Halloran <oohall@gmail.com>
> ---
> v2: Dropped unused total_vfs variables in pnv_pci_ioda_fixup_iov_resources()
>     Dropped bar_no from pnv_pci_iov_resource_alignment()
>     Minor re-wording of comments.
> ---
>  arch/powerpc/platforms/powernv/pci-sriov.c | 131 ++++++++++-----------
>  arch/powerpc/platforms/powernv/pci.h       |  11 +-
>  2 files changed, 73 insertions(+), 69 deletions(-)
> 
> diff --git a/arch/powerpc/platforms/powernv/pci-sriov.c b/arch/powerpc/platforms/powernv/pci-sriov.c
> index ce8ad6851d73..76215d01405b 100644
> --- a/arch/powerpc/platforms/powernv/pci-sriov.c
> +++ b/arch/powerpc/platforms/powernv/pci-sriov.c
> @@ -146,21 +146,17 @@
>  static void pnv_pci_ioda_fixup_iov_resources(struct pci_dev *pdev)
>  {
>  	struct pnv_phb *phb = pci_bus_to_pnvhb(pdev->bus);
> -	const resource_size_t gate = phb->ioda.m64_segsize >> 2;
>  	struct resource *res;
>  	int i;
> -	resource_size_t size, total_vf_bar_sz;
> +	resource_size_t vf_bar_sz;
>  	struct pnv_iov_data *iov;
> -	int mul, total_vfs;
> +	int mul;
>  
>  	iov = kzalloc(sizeof(*iov), GFP_KERNEL);
>  	if (!iov)
>  		goto disable_iov;
>  	pdev->dev.archdata.iov_data = iov;
> -
> -	total_vfs = pci_sriov_get_totalvfs(pdev);
>  	mul = phb->ioda.total_pe_num;
> -	total_vf_bar_sz = 0;
>  
>  	for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
>  		res = &pdev->resource[i + PCI_IOV_RESOURCES];
> @@ -173,50 +169,50 @@ static void pnv_pci_ioda_fixup_iov_resources(struct pci_dev *pdev)
>  			goto disable_iov;
>  		}
>  
> -		total_vf_bar_sz += pci_iov_resource_size(pdev,
> -				i + PCI_IOV_RESOURCES);
> +		vf_bar_sz = pci_iov_resource_size(pdev, i + PCI_IOV_RESOURCES);
>  
>  		/*
> -		 * If bigger than quarter of M64 segment size, just round up
> -		 * power of two.
> +		 * Generally, one segmented M64 BAR maps one IOV BAR. However,
> +		 * if a VF BAR is too large we end up wasting a lot of space.
> +		 * If each VF needs more than 1/4 of the default m64 segment
> +		 * then each VF BAR should be mapped in single-PE mode to reduce
> +		 * the amount of space required. This does however limit the
> +		 * number of VFs we can support.
>  		 *
> -		 * Generally, one M64 BAR maps one IOV BAR. To avoid conflict
> -		 * with other devices, IOV BAR size is expanded to be
> -		 * (total_pe * VF_BAR_size).  When VF_BAR_size is half of M64
> -		 * segment size , the expanded size would equal to half of the
> -		 * whole M64 space size, which will exhaust the M64 Space and
> -		 * limit the system flexibility.  This is a design decision to
> -		 * set the boundary to quarter of the M64 segment size.
> +		 * The 1/4 limit is arbitrary and can be tweaked.
>  		 */
> -		if (total_vf_bar_sz > gate) {
> -			mul = roundup_pow_of_two(total_vfs);
> -			dev_info(&pdev->dev,
> -				"VF BAR Total IOV size %llx > %llx, roundup to %d VFs\n",
> -				total_vf_bar_sz, gate, mul);
> -			iov->m64_single_mode = true;
> -			break;
> -		}
> -	}
> +		if (vf_bar_sz > (phb->ioda.m64_segsize >> 2)) {
> +			/*
> +			 * On PHB3, the minimum size alignment of M64 BAR in
> +			 * single mode is 32MB. If this VF BAR is smaller than
> +			 * 32MB, but still too large for a segmented window
> +			 * then we can't map it and need to disable SR-IOV for
> +			 * this device.
> +			 */
> +			if (vf_bar_sz < SZ_32M) {
> +				pci_err(pdev, "VF BAR%d: %pR can't be mapped in single PE mode\n",
> +					i, res);
> +				goto disable_iov;
> +			}
>  
> -	for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
> -		res = &pdev->resource[i + PCI_IOV_RESOURCES];
> -		if (!res->flags || res->parent)
> +			iov->m64_single_mode[i] = true;
>  			continue;
> +		}
>  
> -		size = pci_iov_resource_size(pdev, i + PCI_IOV_RESOURCES);
>  		/*
> -		 * On PHB3, the minimum size alignment of M64 BAR in single
> -		 * mode is 32MB.
> +		 * This BAR can be mapped with one segmented window, so adjust
> +		 * te resource size to accommodate.
>  		 */
> -		if (iov->m64_single_mode && (size < SZ_32M))
> -			goto disable_iov;
> +		pci_dbg(pdev, " Fixing VF BAR%d: %pR to\n", i, res);
> +		res->end = res->start + vf_bar_sz * mul - 1;
> +		pci_dbg(pdev, "                       %pR\n", res);
>  
> -		dev_dbg(&pdev->dev, " Fixing VF BAR%d: %pR to\n", i, res);
> -		res->end = res->start + size * mul - 1;
> -		dev_dbg(&pdev->dev, "                       %pR\n", res);
> -		dev_info(&pdev->dev, "VF BAR%d: %pR (expanded to %d VFs for PE alignment)",
> +		pci_info(pdev, "VF BAR%d: %pR (expanded to %d VFs for PE alignment)",
>  			 i, res, mul);
> +
> +		iov->need_shift = true;
>  	}
> +
>  	iov->vfs_expanded = mul;
>  
>  	return;
> @@ -260,42 +256,40 @@ void pnv_pci_ioda_fixup_iov(struct pci_dev *pdev)
>  resource_size_t pnv_pci_iov_resource_alignment(struct pci_dev *pdev,
>  						      int resno)
>  {
> -	struct pnv_phb *phb = pci_bus_to_pnvhb(pdev->bus);
>  	struct pnv_iov_data *iov = pnv_iov_get(pdev);
>  	resource_size_t align;
>  
> +	/*
> +	 * iov can be null if we have an SR-IOV device with IOV BAR that can't
> +	 * be placed in the m64 space (i.e. The BAR is 32bit or non-prefetch).
> +	 * In that case we don't allow VFs to be enabled since one of their
> +	 * BARs would not be placed in the correct PE.
> +	 */
> +	if (!iov)
> +		return align;
> +	if (!iov->vfs_expanded)
> +		return align;
> +
> +	align = pci_iov_resource_size(pdev, resno);

I am not sure if it has been reported yet but clang points out that
align is initialized after its use:

arch/powerpc/platforms/powernv/pci-sriov.c:267:10: warning: variable 'align' is uninitialized when used here [-Wuninitialized]
                return align;
                       ^~~~~
arch/powerpc/platforms/powernv/pci-sriov.c:258:23: note: initialize the variable 'align' to silence this warning
        resource_size_t align;
                             ^
                              = 0
1 warning generated.

> +	/*
> +	 * If we're using single mode then we can just use the native VF BAR
> +	 * alignment. We validated that it's possible to use a single PE
> +	 * window above when we did the fixup.
> +	 */
> +	if (iov->m64_single_mode[resno - PCI_IOV_RESOURCES])
> +		return align;
> +
>  	/*
>  	 * On PowerNV platform, IOV BAR is mapped by M64 BAR to enable the
>  	 * SR-IOV. While from hardware perspective, the range mapped by M64
>  	 * BAR should be size aligned.
>  	 *
> -	 * When IOV BAR is mapped with M64 BAR in Single PE mode, the extra
> -	 * powernv-specific hardware restriction is gone. But if just use the
> -	 * VF BAR size as the alignment, PF BAR / VF BAR may be allocated with
> -	 * in one segment of M64 #15, which introduces the PE conflict between
> -	 * PF and VF. Based on this, the minimum alignment of an IOV BAR is
> -	 * m64_segsize.
> -	 *
>  	 * This function returns the total IOV BAR size if M64 BAR is in
>  	 * Shared PE mode or just VF BAR size if not.
>  	 * If the M64 BAR is in Single PE mode, return the VF BAR size or
>  	 * M64 segment size if IOV BAR size is less.
>  	 */
> -	align = pci_iov_resource_size(pdev, resno);
> -
> -	/*
> -	 * iov can be null if we have an SR-IOV device with IOV BAR that can't
> -	 * be placed in the m64 space (i.e. The BAR is 32bit or non-prefetch).
> -	 * In that case we don't allow VFs to be enabled so just return the
> -	 * default alignment.
> -	 */
> -	if (!iov)
> -		return align;
> -	if (!iov->vfs_expanded)
> -		return align;
> -	if (iov->m64_single_mode)
> -		return max(align, (resource_size_t)phb->ioda.m64_segsize);
> -
>  	return iov->vfs_expanded * align;
>  }
>  
> @@ -450,7 +444,7 @@ static int pnv_pci_vf_assign_m64(struct pci_dev *pdev, u16 num_vfs)
>  			continue;
>  
>  		/* don't need single mode? map everything in one go! */
> -		if (!iov->m64_single_mode) {
> +		if (!iov->m64_single_mode[i]) {
>  			win = pnv_pci_alloc_m64_bar(phb, iov);
>  			if (win < 0)
>  				goto m64_failed;
> @@ -543,6 +537,8 @@ static int pnv_pci_vf_resource_shift(struct pci_dev *dev, int offset)
>  		res = &dev->resource[i + PCI_IOV_RESOURCES];
>  		if (!res->flags || !res->parent)
>  			continue;
> +		if (iov->m64_single_mode[i])
> +			continue;
>  
>  		/*
>  		 * The actual IOV BAR range is determined by the start address
> @@ -574,6 +570,8 @@ static int pnv_pci_vf_resource_shift(struct pci_dev *dev, int offset)
>  		res = &dev->resource[i + PCI_IOV_RESOURCES];
>  		if (!res->flags || !res->parent)
>  			continue;
> +		if (iov->m64_single_mode[i])
> +			continue;
>  
>  		size = pci_iov_resource_size(dev, i + PCI_IOV_RESOURCES);
>  		res2 = *res;
> @@ -619,8 +617,8 @@ static void pnv_pci_sriov_disable(struct pci_dev *pdev)
>  	/* Release VF PEs */
>  	pnv_ioda_release_vf_PE(pdev);
>  
> -	/* Un-shift the IOV BAR resources */
> -	if (!iov->m64_single_mode)
> +	/* Un-shift the IOV BARs if we need to */
> +	if (iov->need_shift)
>  		pnv_pci_vf_resource_shift(pdev, -base_pe);
>  
>  	/* Release M64 windows */
> @@ -738,9 +736,8 @@ static int pnv_pci_sriov_enable(struct pci_dev *pdev, u16 num_vfs)
>  	 * the IOV BAR according to the PE# allocated to the VFs.
>  	 * Otherwise, the PE# for the VF will conflict with others.
>  	 */
> -	if (!iov->m64_single_mode) {
> -		ret = pnv_pci_vf_resource_shift(pdev,
> -						base_pe->pe_number);
> +	if (iov->need_shift) {
> +		ret = pnv_pci_vf_resource_shift(pdev, base_pe->pe_number);
>  		if (ret)
>  			goto shift_failed;
>  	}
> diff --git a/arch/powerpc/platforms/powernv/pci.h b/arch/powerpc/platforms/powernv/pci.h
> index 41a6f4e938e4..902e928c7c22 100644
> --- a/arch/powerpc/platforms/powernv/pci.h
> +++ b/arch/powerpc/platforms/powernv/pci.h
> @@ -243,8 +243,15 @@ struct pnv_iov_data {
>  	/* pointer to the array of VF PEs. num_vfs long*/
>  	struct pnv_ioda_pe *vf_pe_arr;
>  
> -	/* Did we map the VF BARs with single-PE IODA BARs? */
> -	bool    m64_single_mode;
> +	/* Did we map the VF BAR with single-PE IODA BARs? */
> +	bool    m64_single_mode[PCI_SRIOV_NUM_BARS];
> +
> +	/*
> +	 * True if we're using any segmented windows. In that case we need
> +	 * shift the start of the IOV resource the segment corresponding to
> +	 * the allocated PE.
> +	 */
> +	bool    need_shift;
>  
>  	/*
>  	 * Bit mask used to track which m64 windows are used to map the
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801061823.GA1203340%40ubuntu-n2-xlarge-x86.
