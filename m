Return-Path: <clang-built-linux+bncBCIO53XE7YHBBB6PTXWQKGQEF6244ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id E0027D999C
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 20:55:04 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id a22sf39010749ioq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 11:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571252104; cv=pass;
        d=google.com; s=arc-20160816;
        b=vu3ucQs0J3dhOKkSYlOo0rVKGEs3QVnVMpunwjt6SUrvdGxBymMD1K8q4uv65FhoZ+
         rKySJgpI+C0o+J/HOcNBxNeCqyx/dIZOJ+istQvc0C8f9K4lrn05nmiHwxixL4fRvG1+
         yzGywoGPL4YHSodxCNTqsZxRFiIU7Sc7EAhY/DN41Zy2u1HDeWDCXyoPNSeNoMT4xSlU
         TWfC79oEPJkUVP4cOCsWcXjQOTIUEsFUPDIrSgNRDNHSJHHowiTnF+SNxhI6X7Q7qa0Q
         i6v/4/5gbV35jdbWrDkS8fGbHm+LMryHi008QheJxLZW+OzRe+qycXmqj980LfW3P9q/
         vpGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=+zUeX3hFlTLYYgvAsVRlPuZSTdpcBZq1zenW6sAeduw=;
        b=SKB9b7MAn90KuztwET45/xmeMyE/RVVi9KJx8YmOaXB66EjqQJbeppHViWli+X70nx
         lKHKeCodBjIs+wZjpGZNkE7ACHoLdyHxvebWmgCWk0c5Rg6H+YWQnAgjroi92LoEGwN+
         NSSHDbrFKLtlA+QjdpXHLBu/Y6ZAB4nQkvGOvUxKE+l4qwlVSBREhp1+pWhM2vNkdyMK
         dT25bG8bHeBJBC4hEe+MkEiQbRhRWlk3sQIiTlz5BZ3/YnLTtqSpPFGiq8IC9PocdNA9
         ijyWcWV5tsBglxKFQ57XupTmKu1JHZCRrESJkwByFWY70Jiuk6TcVO4BZtk0JPzx+VgI
         ghIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dFNgX47+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+zUeX3hFlTLYYgvAsVRlPuZSTdpcBZq1zenW6sAeduw=;
        b=fqF8xblKa8W0vh7kY5kCjw38neeV7O7jbnHl5UXXrI9TGXLGRE9l5eZ+Eq9S1uhTeQ
         Oj4B2ZG3aP3EYj9+dUXdGoIixXcQi7JUsqsRgmRgnB5eqL2Wh1F/laCYSm0cQeQsClSy
         eOHn3Z/pDjlcniUxw2bxoqp7t9wm/UR0rp+wHt3lteztA8n0lXtWZ3c3nCg5m+58wZ4U
         qqdcQzlw7jOlS//IXxKnSJqLl9TdxSfjViWFDC/7dRnNJDerdzeXTPv6LQ1ZIRd1QlEu
         XIyDfFD6VyEsoWlZ5uSYlq0HCLy+7gnmdCSIwme9nAfoq9gb2BXNhE+rtUUH2SVAD7Sd
         EgiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+zUeX3hFlTLYYgvAsVRlPuZSTdpcBZq1zenW6sAeduw=;
        b=LMP77Yj0ehFaxz3GlRaMBzknolcpuAke2CQgiBQIedMZ2gYvNtlb3SzW6mCqKEvSWz
         4O24y13VpUmECzU1C8wy9P0zBqHFO5UsZ790UDFbf4aFdczyr8NMxI8Gm6uOzQdlo27x
         P0cr5Ee48wKaUxQUXnLEgkwcGyPqw3I6BSbwu1hqdn//rg1OGeHJJCzz8n85DsTErn5/
         Ad165yRwjgqR6HrlXfbIBcuuJAgQPGSdTHMyxsCDrZaQVUKLa1mEbhcz21l9nWL4L2Ez
         w40rERxQGBPyBrfvRkLhoq/gmsVbKieSOoxx19ZHaoC1C/cDIgvmMfxq7prSJa7nCVJT
         mpeg==
X-Gm-Message-State: APjAAAXIMDLzrxwagttrwre4pCfCvuh6g39I4OVH6WAZr2Thzj+XbrK5
	zm72JgzJU4/juK+Luu1H6Z0=
X-Google-Smtp-Source: APXvYqwlyS7FGcCh1+WO+riqOP1LsJrRRD+JwDLs6HKeTex5xgIIyt96v3IRrqxJIRlvrnN9gY5ekg==
X-Received: by 2002:a6b:6c13:: with SMTP id a19mr7468497ioh.206.1571252103813;
        Wed, 16 Oct 2019 11:55:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b9c4:: with SMTP id j187ls6508922iof.5.gmail; Wed, 16
 Oct 2019 11:55:03 -0700 (PDT)
X-Received: by 2002:a6b:c90b:: with SMTP id z11mr2743975iof.189.1571252103403;
        Wed, 16 Oct 2019 11:55:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571252103; cv=none;
        d=google.com; s=arc-20160816;
        b=OJtnN0TFU/oO2h08okfTlNtXkCgPdxhA5RADH/hfMowmTTs4M7KieTPqlYuzwv1Ulf
         zP+7bhKxXxdX/hIVJYomAM7uNNm2ybLNBJAgurGb2ejsLva0B4voEBtp5L6ombK/ZOmW
         pP6qdopeMjVfuKxKSC9jSJZIiW99hWu3NzCwZgfZ3wckta/O3R2xmv6NXFU69AClkWjm
         TD+f/VJl7qorMM+pY+4k8E5+iA5oJgqUqwk6AF4VuOfXlTGoxx/+w3bDsGL024YQ6i9t
         LGvALLMTSzt1Y2LzrcQP473aZEXE0C8d0b7JbGa6DRv+SAfjlLAiLaqyf8hMoVROACVb
         OxpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=215ZBerRTMMvl/Ijng0HKjRnsXOqsXt0a9H0WhV1Gdk=;
        b=vbjJ9adgFobExgN9oqh1LKpDhkq85kAoh9yvoN710gcA4AMpPtLgppqDON5gegP2t4
         RZDIpArXp9nwX9lqbCimFmGiMgD3FCqm46161ie0c1zOWl0Cs4bHk+Ad8u65h6pfwCI1
         31GzBkrVjHUaQbQlLWgW0AVBddZgkPUBLiJWn6P2eT6SxVa4VTK+mhmDEc7D6bgEGn4b
         JXe6HMM5e3voMKeSF8DgWg6HpTPFy2pEX5MfKNCR2XH9kyJgjx+E71eh9krouZXIbfFf
         XYdEqW288GKvhRjXPzN1zaMgQgpXfzIK3/12fHeItgpaUFjo33yi+/9Plr5SA7zyUPrA
         4cyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dFNgX47+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id n201si1616993iod.3.2019.10.16.11.55.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 11:55:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id m61so37685745qte.7
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 11:55:03 -0700 (PDT)
X-Received: by 2002:a0c:f787:: with SMTP id s7mr43874485qvn.221.1571252102649;
        Wed, 16 Oct 2019 11:55:02 -0700 (PDT)
Received: from rani ([2001:470:1f07:5f3:9e5c:8eff:fe50:ac29])
        by smtp.gmail.com with ESMTPSA id z6sm11165855qkf.125.2019.10.16.11.55.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Oct 2019 11:55:02 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 16 Oct 2019 14:55:00 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Arnd Bergmann <arnd@arndb.de>,
	"S, Shirish" <sshankar@amd.com>,
	"Wentland, Harry" <Harry.Wentland@amd.com>,
	"Deucher, Alexander" <Alexander.Deucher@amd.com>,
	"yshuiv7@gmail.com" <yshuiv7@gmail.com>,
	"andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Matthias Kaehlcke <mka@google.com>,
	"S, Shirish" <Shirish.S@amd.com>,
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	"Koenig, Christian" <Christian.Koenig@amd.com>,
	amd-gfx list <amd-gfx@lists.freedesktop.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: AMDGPU and 16B stack alignment
Message-ID: <20191016185500.GA2674383@rani>
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com>
 <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
 <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
 <20191015202636.GA1671072@rani>
 <CAKwvOd=yGXMwdoxKCD2gcEgevozf41jVmqCkW7CU=Xvd7mqtjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=yGXMwdoxKCD2gcEgevozf41jVmqCkW7CU=Xvd7mqtjw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dFNgX47+;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
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

On Tue, Oct 15, 2019 at 06:51:26PM -0700, Nick Desaulniers wrote:
> On Tue, Oct 15, 2019 at 1:26 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Oct 15, 2019 at 11:05:56AM -0700, Nick Desaulniers wrote:
> > > Hmmm...I would have liked to remove it outright, as it is an ABI
> > > mismatch that is likely to result in instability and non-fun-to-debug
> > > runtime issues in the future.  I suspect my patch does work for GCC
> > > 7.1+.  The question is: Do we want to either:
> > > 1. mark AMDGPU broken for GCC < 7.1, or
> > > 2. continue supporting it via stack alignment mismatch?
> > >
> > > 2 is brittle, and may break at any point in the future, but if it's
> > > working for someone it does make me feel bad to outright disable it.
> > > What I'd image 2 looks like is (psuedo code in a Makefile):
> > >
> > > if CC_IS_GCC && GCC_VERSION < 7.1:
> > >   set stack alignment to 16B and hope for the best
> > >
> > > So my diff would be amended to keep the stack alignment flags, but
> > > only to support GCC < 7.1.  And that assumes my change compiles with
> > > GCC 7.1+. (Looks like it does for me locally with GCC 8.3, but I would
> > > feel even more confident if someone with hardware to test on and GCC
> > > 7.1+ could boot test).
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> >
> > If we do keep it, would adding -mstackrealign make it more robust?
> > That's simple and will only add the alignment to functions that require
> > 16-byte alignment (at least on gcc).
> 
> I think there's also `-mincoming-stack-boundary=`.
> https://github.com/ClangBuiltLinux/linux/issues/735#issuecomment-540038017

Yes, but -mstackrealign looks like it's supported by clang as well.
> 
> >
> > Alternative is to use
> > __attribute__((force_align_arg_pointer)) on functions that might be
> > called from 8-byte-aligned code.
> 
> Which is hard to automate and easy to forget.  Likely a large diff to fix today.

Right, this is a no-go, esp to just fix old compilers.
> 
> >
> > It looks like -mstackrealign should work from gcc 5.3 onwards.
> 
> The kernel would generally like to support GCC 4.9+.
> 
> There's plenty of different ways to keep layering on duct tape and
> bailing wire to support differing ABIs, but that's just adding
> technical debt that will have to be repaid one day.  That's why the
> cleanest solution IMO is mark the driver broken for old toolchains,
> and use a code-base-consistent stack alignment.  Bending over
> backwards to support old toolchains means accepting stack alignment
> mismatches, which is in the "unspecified behavior" ring of the
> "undefined behavior" Venn diagram.  I have the same opinion on relying
> on explicitly undefined behavior.
> 
> I'll send patches for fixing up Clang, but please consider my strong
> advice to generally avoid stack alignment mismatches, regardless of
> compiler.
> --
> Thanks,
> ~Nick Desaulniers

What I suggested was in reference to your proposal for dropping the
-mpreferred-stack-boundary=4 for modern compilers, but keeping it for
<7.1. -mstackrealign would at least let 5.3 onwards be less likely to
break (and it doesn't error before then, I think it just doesn't
actually do anything, so no worse than now at least).

Simply dropping support for <7.1 would be cleanest, yes, but it sounds
like people don't want to go that far.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191016185500.GA2674383%40rani.
