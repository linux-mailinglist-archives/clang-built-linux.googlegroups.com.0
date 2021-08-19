Return-Path: <clang-built-linux+bncBCK2XL5R4APRBRGA7CEAMGQEBNV63KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9F03F15E2
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 11:11:32 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id h24-20020adfa4d8000000b00156d9931072sf1476516wrb.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:11:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629364292; cv=pass;
        d=google.com; s=arc-20160816;
        b=aZCgyx0kguDc1/VY3nrnVHLhhHOzeqomLRrnJfhOc5zUyypnItU5UsclazN5lKPNgk
         h87qqaCrX0AdCrwwNo+0WatTSDPzn9zxBoF30nWoMDK86EqtdzJ2PQQa1wORJnpnb9qn
         jmEDWFrvtop/GuAZc6Ol+77KmnN9ylPYqs7WhfoXeqFiFf02MrRCG9A5UD6OgVnW/uUz
         a4G2yyM4fAAWE/iK+Ixr4JZTamhRwpAA7Iz+1d5XY3FIcbvvJPaCzwWk1OE3uZE8EAiO
         2KOi8wgMqTdu9zEEh7yOKp5IOspSLkgiGFYnsIPsgeiSQaF2F7FdLWqJeDjK1lMn3Psw
         Meqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=28UDJ3lrEVdKr1rKH2/0Db7ZzybF/pe28AWzF8OsMDs=;
        b=QpAc9ckuxnlwfIxRBJycsz+kOhGYDmTyQNL6zBXDJAmcLdKSr2GRsXcSA0JNA7KYdq
         3Ct8dPIkGlO2jalkAGUbqFADrCJKLzrY2rAPuFBuwGUlBezDjaifgNAiDGX/ZPDHCxWC
         gS89Zf4/LvN0Ed+cndn7S7qOBDdt7p71Af9l1qWXtygHxO00JeYuu8hOxor5ssaTuPKj
         HsD6F5VnElzHlNZ8dLDvLE3Z+xUihKSmGEwTCVTaSy9e6W0LH9wzOKCQLQ5FN0XVqnNe
         Nei/MAOmbI3KnO6UPZj1lNVb4sLwuA9T/9Nf/F5Gq5lrti6+7M4xFCM1lHMELJacg710
         Yw3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=tp3WS7v9;
       spf=pass (google.com: best guess record for domain of batv+308e20cad7c5f5b5e2f7+6570+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+308e20cad7c5f5b5e2f7+6570+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=28UDJ3lrEVdKr1rKH2/0Db7ZzybF/pe28AWzF8OsMDs=;
        b=HUZ+IUe3pRlibsQsquDYCeuEY7GwL/UyhGDXcVpdY/42fzfkyO1osGyitDc/RyubZa
         6abisPl7k49c614H3fQyMz3Xdsol03aNUJdSQGZro07i8mz6+OSynCO6ffjM97AwowP5
         IW9NSb0kBVcm7Ho0JgIfq4hvgxrgEoMAErcp01IIici7vvIKTs65PAgQUVCp2dXyVBXu
         Hq9yB/kqGtZX99o7bMIbTbDkj5i7jryR8Q0D17SN6HslI1CY5E5L1VX6gtiuvX9s7URE
         chH6p1H03oD5qaAsXIx5EJ5mgog6d1LzD+mBysXTZDQdugReBWgfnTNKPey1NMNKdGcf
         FF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=28UDJ3lrEVdKr1rKH2/0Db7ZzybF/pe28AWzF8OsMDs=;
        b=FNv1AHkDYitcd3ZqXjVJWlH2z8efiqst58Tccbq9LN4+DEUUkFu/X8Ic3vXBwWAlWd
         7+sn95c9gCYvYaR/jqEpeHxRYcefvzGvGVz02CeYK3Gfn5O3aMDILldXNprd8o4TIrB1
         hOtIf2gRYN7qY/RW2/8i45T+aW77Nt82O/jjY1KU+4APuiNQuosFzvsPfPrR2WvHfRh2
         WQ+4eVmRw5XpdY9n1wRGL7pv/Keda6miX5pUSc3qrM839UbvbtNI3PXNRa0hsXZq6lxj
         0uLLCPuvNwiDq75DbrocILLBSDzfS/s8y0b77OVMBvg33G1mrakaitKQqwjZo+XE9u+y
         NKwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323MMK9HC7QYUtdAQZGPBAtjnc3gMwXvyg1rEUqJCn+474Jat2N
	9R1r9WaQh+ZelUizTVooCUA=
X-Google-Smtp-Source: ABdhPJz7sx9JTgXcLnoyg/CDaYd84y3c0xb2dXKjRWc8nxLv0CMemeeTAVmGeoXfbRKDLj+Ncm4xNQ==
X-Received: by 2002:adf:e845:: with SMTP id d5mr2586091wrn.228.1629364292742;
        Thu, 19 Aug 2021 02:11:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a191:: with SMTP id u17ls804108wru.3.gmail; Thu, 19 Aug
 2021 02:11:31 -0700 (PDT)
X-Received: by 2002:a05:6000:1b8d:: with SMTP id r13mr2477954wru.230.1629364291824;
        Thu, 19 Aug 2021 02:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629364291; cv=none;
        d=google.com; s=arc-20160816;
        b=U7ojDXSJQppFmN4goA2VBHDSBWceyNl6M9E3RspLhWoEkgYU6Al8nMaZC7poCjI7mo
         TFoJCdkPv17J2YLZMHbIGURgpukLd3Q0+RIBxFulshBHiU3WKYWoGTMA7LWPK+j0JSlu
         hkUWjwYjBwl4fTjb9En6CYur60UK3C0NlFohabq+adhr1Cx1i10a0ALRYnzEOK61KwLO
         VFJ4WfJCN43qQ49G9ppV4zmDLosiE34x+byRc39/x6rY47Crr489dLfgdfQY/li3b3Tt
         PYOqvY6+BYX2GwBznyv6sItmJjMgENnJyulvJgMm7klILqaXTARPTB91WTqdMhQup8sA
         xGNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BB3eovbADGqKgiTpHYPV8MhbF7KZE2vZESe22SutjKY=;
        b=H3dX2PidiCkNddBS4gj6M6e8xEjxO3z6iiDB96wrhmOzm2ooGztCh4vfabPNtmBkmf
         ytE89AKphitnWpAhDGrdvJ3BPpZPp8AQ/MZ59mH6M1EU+mZ2u0kLL4lKrsW4DDmxi/P8
         oYNs1tP2PP7tfwgHnTlq0L8zr/Be3Mn4vtvSSlYHmmkQx5PSUUTFjUcdcLaO/QwnRtPU
         hV6QREHBoAhzIWVNfdG3vVwgB/F5YERkiOqQKl0rKQQXG1wa5J8aS9TrHIq+LS7JM+UV
         F6oT0DN91VY7JgIjNJ6OQWDs6Pb4bPNG2XOGkHLvJ0O8w0QO2xSujm4uye9M077lac1t
         KKTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=tp3WS7v9;
       spf=pass (google.com: best guess record for domain of batv+308e20cad7c5f5b5e2f7+6570+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+308e20cad7c5f5b5e2f7+6570+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id c18si130448wru.3.2021.08.19.02.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 02:11:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+308e20cad7c5f5b5e2f7+6570+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGe2o-004qz3-9B; Thu, 19 Aug 2021 09:09:24 +0000
Date: Thu, 19 Aug 2021 10:09:02 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>, Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-mm@kvack.org,
	linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 0/5] Add __alloc_size() for better bounds checking
Message-ID: <YR4frlpfJQonPuKp@infradead.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818050841.2226600-1-keescook@chromium.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=tp3WS7v9;
       spf=pass (google.com: best guess record for domain of
 batv+308e20cad7c5f5b5e2f7+6570+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+308e20cad7c5f5b5e2f7+6570+infradead.org+hch@casper.srs.infradead.org
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

On Tue, Aug 17, 2021 at 10:08:36PM -0700, Kees Cook wrote:
> Hi,
> 
> GCC and Clang both use the "alloc_size" attribute to assist with bounds
> checking around the use of allocation functions. Add the attribute,
> adjust the Makefile to silence needless warnings, and add the hints to
> the allocators where possible. These changes have been in use for a
> while now in GrapheneOS.

Can you explain how this attribute helps?  Should we flow it through
other allocating functions?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR4frlpfJQonPuKp%40infradead.org.
