Return-Path: <clang-built-linux+bncBDN5FEVB5YIRBV6SU7WQKGQE6QNDFZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id D039FDCB18
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:33:28 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id 99sf4055728plc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:33:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571416407; cv=pass;
        d=google.com; s=arc-20160816;
        b=G5RuesJq08TpBjojOK63Bx7eRG9ML7d0TTZLW0MTdqKoDNZ+dOj/chiiLzBwyKt4Bg
         uaizE7SmZlg0miSn4XMT/WHQzbZVckY/w1wb0pI1EOFNa4YTmgGrTQZcHMSYWbDO2vQg
         q8iO56qGlVkQP7tEpnuOrlP+BIT76UwwQmXu7BjJuoMTZn17Dp+9a0R/VraR10wok1w/
         lJjzG4NjOPzVr4TEP1CAN7n3TF7yD+nrY+Ciis+nXF3AZgaWcMYniqN7MDTODufjr2W4
         0QsAN4IsoTKWBugXKhIqE78rTp1egi2XE0C5Rfc5DRXGNzxZdKQh4WZ+DJ0qpjZy5nJW
         wRcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=rexSOZmPF2Rx5E/kMVp7kS055f9OEM0j8k1pd/5sbhQ=;
        b=NExoqg3pMk2Clzg5EV1rgGSMGMzZNdl/W7/Geb3yllcf8dTB0EzHXBznc2wifzsozW
         bRPV8ECfN8KcyEpMDv3BUMcJSeM9WBK7WL7QE9ys5+LO1yyc7tVt8DBS/9rAt+gqPi2X
         /X5uFZAuGSNFaGdQR+8Az6bXDm64Cv86grdhvbT+M69yyXHUugtRRlvgJ9ZH0yAyoNQn
         CU5cqxjcYjJj0c8Ha418TySjnWQmWRR9XJG1p6r8g2KLsUQwvEwWTexMYsKDnYzKgFBW
         WiP8BJ93oTaffuXTskBxVMDO7fIRs/TWSTHDFgVUYc5efR0YTUYiWEzWPHq9GRWq3H4p
         8tWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sean.j.christopherson@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rexSOZmPF2Rx5E/kMVp7kS055f9OEM0j8k1pd/5sbhQ=;
        b=dtZ2L3/75nT/HKLCqIKGOL6+KRmrVXaShJXRDev8MIiTynHF+iWuO6WZaUbOOMI1UZ
         ryi5nsuBwnJbkopFbST0gXbFk+ScEfILjctOiGtQAaL5t2PR2QB9J3vGbv5xbLRuwH4T
         ZeV11P/3AfGQOxtnWvORV6iq8GPexN+BYzr/cfNLsHHOfSRFq3b+UZwBpJEFmfB5El3I
         3RyPqeEO+s209yGmJGs26p2innBdYfd88jNjNuy+XkU92YfVFPGH9Z+irNTWr8Aeb2KU
         BOTkk31kMhjoHdsZcrfA4PLu/4vo4aCqkW1GXoJ6C30LAMuM+Aoo5AstvpaaHgtCEOQV
         5VLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rexSOZmPF2Rx5E/kMVp7kS055f9OEM0j8k1pd/5sbhQ=;
        b=jajos/0f0olGnI4FnxJXwCgPvdKeGD6scpNPxeE3vxh5OtZIviHXm8Y0ikHur/gawu
         3QyqOTgaej0/nqQdFwJweiavCLmhhbleOTk+lutXCkgEHSIspZ2c54zdBOck2v5p6aqP
         a8AP90pIcW8mP0ZeREtrB98+pCgmzPzzevZhyDTd2zuCmeALvp2SKWkNcXHVVAFHHZV8
         yVwkh+K8PgPS+5HC81ykaxMu3NmFZ1ZI1s40ldEYjn7jLWo05rOBO4Oyw9kmhGkoVFIh
         oXCda9omODCDqEwsxJfz5zt3JJg/tM+0zF3dopxAl6L56OadrrfpWyxEesf1ieVgwXmN
         joJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWie5sHBHgZUdAdjtNJ1LTS/XapYEVwJwKL8bm+L+uizTxw5SSC
	v+xEO1lBjnJnhVQkSNvHFvE=
X-Google-Smtp-Source: APXvYqx1xgQjZLRfU036ODgwbLjCrV0oIEGjJhKhKmTgQzhmy1W3ZyaeKgmPqRltweBaQvMxGsutWw==
X-Received: by 2002:a17:902:76c4:: with SMTP id j4mr11053242plt.9.1571416407536;
        Fri, 18 Oct 2019 09:33:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:76d1:: with SMTP id r200ls2093839pfc.3.gmail; Fri, 18
 Oct 2019 09:33:27 -0700 (PDT)
X-Received: by 2002:a63:6a03:: with SMTP id f3mr11454341pgc.167.1571416407169;
        Fri, 18 Oct 2019 09:33:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571416407; cv=none;
        d=google.com; s=arc-20160816;
        b=kDadHkzDFB0Dc2EOlXgxfNPTN5PI0nu7ahFZUOkdgwe/MVOna1d9GKk1dXA+Js1Y2x
         Xmnlykf64BvUFY0GQTXl/yFuGortZo/0p+R55J4mMUPWHMs6uBCQPUcT+NWqHuHRmBhZ
         jHPMXpMRRCzreczVbC4kBIajQpm3yG99YEEsg9xj893dcpFP/STZJEmKHQLQv9R0p0Tg
         4s3nxQ+618e97CV7kT5vqXBU0XmNrHHm8KEiMqKRWALGWyNtWDbkcx7y1mbm/LHJ2f2i
         Uy/LVUxK+qUBxrGpQr1zXilznibx3Hwl4i3q1Ttbt7joDnaD+GgzWOeG7pud2nMCNYC6
         1irA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=O9TRgkM5xs6CjeneqZ/DOD6WDCOWb0wdxcxuFk2cG1g=;
        b=PVmkSQy+UKe3Usf9mAuHSLdTZIvB65eUc8CKmhHj5iaXldKoDLEU7a1DBARzIns+xP
         g3zk1ukjyDS7utR3H4l+k/nZyQUlLjWe0flluAXCj6vpKy9tMEq20xcNZwJ8jI9AVrw6
         W726Uj5FoRv8XIBXuQeSVslDEcrl4mFJEdDt+OgYu6QPSGE77TGTE0NR8SAdXwwAzQ9l
         ge2bsJEw2ceqSHUqcgJ6LNsyiVcqR1jYuqex0335B81Be/Cokxi9XBQvWjv4HnzN+Hw6
         o8iDwSS7z7afXvY7Li1GvYBr8ekPPFWtre349he97R28W99wqxVcg/C6JHvrpVvhwsgQ
         8k/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sean.j.christopherson@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id z22si864960pju.2.2019.10.18.09.33.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean.j.christopherson@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 09:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; 
   d="scan'208";a="199757212"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com) ([10.54.74.41])
  by orsmga003.jf.intel.com with ESMTP; 18 Oct 2019 09:33:11 -0700
Date: Fri, 18 Oct 2019 09:33:10 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28VMware=29?= <thomas_os@shipmail.org>
Cc: linux-kernel@vger.kernel.org, Thomas Hellstrom <thellstrom@vmware.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux@googlegroups.com,
	"H. Peter Anvin" <hpa@zytor.com>, Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>, x86-ml <x86@kernel.org>,
	Borislav Petkov <bp@suse.de>
Subject: Re: [PATCH 1/2] x86/cpu/vmware: Use the full form of INL in
 VMWARE_HYPERCALL
Message-ID: <20191018163310.GB26319@linux.intel.com>
References: <20191018134052.3023-1-thomas_os@shipmail.org>
 <20191018134052.3023-2-thomas_os@shipmail.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191018134052.3023-2-thomas_os@shipmail.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: sean.j.christopherson@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sean.j.christopherson@intel.com designates
 134.134.136.100 as permitted sender) smtp.mailfrom=sean.j.christopherson@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Fri, Oct 18, 2019 at 03:40:51PM +0200, Thomas Hellstr=C3=B6m (VMware) wr=
ote:
> From: Thomas Hellstrom <thellstrom@vmware.com>
>=20
> LLVM's assembler doesn't accept the short form INL instruction:
>=20
>   inl (%%dx)
>=20
> but instead insists on the output register to be explicitly specified.
>=20
> This was previously fixed for the VMWARE_PORT macro. Fix it also for
> the VMWARE_HYPERCALL macro.
>=20
> Fixes: b4dd4f6e3648 ("Add a header file for hypercall definitions")
> Suggested-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
> Cc: clang-built-linux@googlegroups.com
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: x86-ml <x86@kernel.org>
> Cc: Borislav Petkov <bp@suse.de>
> ---
>  arch/x86/include/asm/vmware.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/x86/include/asm/vmware.h b/arch/x86/include/asm/vmware.=
h
> index e00c9e875933..f5fbe3778aef 100644
> --- a/arch/x86/include/asm/vmware.h
> +++ b/arch/x86/include/asm/vmware.h
> @@ -29,7 +29,8 @@
> =20
>  /* The low bandwidth call. The low word of edx is presumed clear. */
>  #define VMWARE_HYPERCALL						\
> -	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; inl (%%dx)", \
> +	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT			\
> +		      ", %%dx; inl (%%dx), %%eax",			\

Why wrap in the middle of movw?  Wrapping between instructions or letting
the line poke out is more readable IMO, e.g.

	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; "	\
		      "inl (%%dx), %%eax",				\

or

	ALTERNATIVE_2("movw $" VMWARE_HYPERVISOR_PORT ", %%dx; inl (%%dx), %%eax",=
 \

>  		      "vmcall", X86_FEATURE_VMCALL,			\
>  		      "vmmcall", X86_FEATURE_VMW_VMMCALL)
> =20
> --=20
> 2.21.0
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191018163310.GB26319%40linux.intel.com.
