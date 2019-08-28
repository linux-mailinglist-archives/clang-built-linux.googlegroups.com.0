Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP72TPVQKGQEGMWDRLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 29285A0D57
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:16:33 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id m198sf1502966qke.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567030592; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5S6fiCe7Aceoizwh7ITyScgokyItS56sy3OBIZi8nSztXeLG8Ht0VbzXw4km5Ap8v
         0apcvnKFvj4Qbz11xldDjWcCgz4puPhkkoQC9yqNZYJP98NI0GgVstpFRfpaXXFje0VG
         tHTYV76Jf1/sWP+VWtozA18DSDrakCX7JK44CWFYo6f9x4nGvrl2q93d9mPJ1/9aW1yI
         cZ4n4u5ErcQadyo3lyYyM7hLq190347kU9hMNUj+LrZp1dBmP4cGNuB0eD3LWlqWIMdx
         UVE6wXIDo6I1u2Ne2AoF5m2AAJPhSXQg9iTfuXAzwp/swy66QrVr2AJQjqXTMHxCQGyG
         Tlhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cVLQrzj1UTQRwHVvXJ2ibxMsuRbeemGvLLVKEP/h9hg=;
        b=Hd5kd5dDq/PnmfDEX0kIViOxT15/xMbr2V/b5y3D9cJ+TnJFpUAkbOP3SmixVeZWZs
         5dGqty4FtO9YxLsH4PzTmauOucb+wwCWKtPelLH5NaPtBi5PRaHPX2m6iMUpSVOVHvKX
         vNrNSf5rH48FyEXaHZsko3JRL15N2XyidHSVWDRs8YBSfivu5vfunkSw2QReFzrkckT4
         rNJc3/7Lh+Q9RvnPntU4VzhxBbPsIba0BlP4d6LaKtKaTgROEmjbBqr6hCALxcAuxsaw
         UWNYnnIvHfCRev5QQ6d+unx1TqfRLgFUjl3VNS1TUY+6QoggECv5ZHGJupeW30N/y4zq
         KvLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jXn6+gJp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cVLQrzj1UTQRwHVvXJ2ibxMsuRbeemGvLLVKEP/h9hg=;
        b=NpXCP0C71I56cS+e2AAQDcbTgqTdtBc77me0QQVw2irty54AEGZSGBQS7NQeYmMPm7
         zOEqOhOC2kyBji1U0uz0WDTsKqFzV49jh9N/08ORAOAk8YvnHfD4YMJ8QmPEZ1F75Z/S
         Ae5+f9MGzMErMNd/NT0+3/MzCrTOxfd3tP/heTT5r+K6CzVpnKJIF2k3XnYih8Crs7Pl
         sbR55mCM32Ofo8bPcZZOhR+eqCyQbyeM3q/AbsTPjLrQmF2m8EcJCxndBfRtxdf/HS8T
         plba2wLlYFx7KvXkGiLDu7HMPArkTQkeYH0/vq+OGc6gCbbHIGCQg9k3oi3T4jmPP97K
         n8Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cVLQrzj1UTQRwHVvXJ2ibxMsuRbeemGvLLVKEP/h9hg=;
        b=HMgXGdaMWH9duu/Y4Pnoll76oiPDCLwynCmzFMm2CN3/+0vzUDAuQrLn7vm/KTpwWO
         V4dI9jWnbkBc0iTuNtBAU+H65Fmb/uSJQeExEufRPP9O+5aWhsudwEpEOi4VsGzqw5Ov
         bf6jXAT+Kn+mY/ju267cdWcx1nrhVgSSCMiymrHS5Td1m4Cj6V+WkoVp5YnKfSFn+UGW
         eBRuhj3vxQNWTZGOOg2XLkKKY9D6xBNOHZxG4yhYINmEPQtjqHS3AjrG1u5W0U+4HbbN
         XmC4/MUIrgoYXKbwbAA4eAUseodpnhlAfBGybaduE52AowSXgOduB/m+A3uy2h9AniLu
         PIFQ==
X-Gm-Message-State: APjAAAVYR0GwWtwooY4ZSVBqX+51QTb7LxiR87U+g1glftWvNC8rql03
	FbqS1CAYlmAlZP1m6gplBrk=
X-Google-Smtp-Source: APXvYqzPelViJlehg3Q6uR3ophD/IAJnQQ1hgRHpOGSQl0g0gPxLQonr7XUWhjBiMudTnQsrtv4y9w==
X-Received: by 2002:ac8:524a:: with SMTP id y10mr6977830qtn.100.1567030591967;
        Wed, 28 Aug 2019 15:16:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8aaf:: with SMTP id 44ls59714qvv.3.gmail; Wed, 28 Aug
 2019 15:16:31 -0700 (PDT)
X-Received: by 2002:a0c:8c8f:: with SMTP id p15mr4504556qvb.57.1567030591734;
        Wed, 28 Aug 2019 15:16:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567030591; cv=none;
        d=google.com; s=arc-20160816;
        b=nsoTLLEAuMr85R65ceh6W3kQQposHV1SxzolwNv6MjFtQ8+colet8ZLvIYAhtp1UTe
         0UGvN1bwb+qr1AV0lRRv4nYFOz78EfyObioZGx3SIcpUfbEJh/EZ1EwJUrXvyEA+66Um
         S87wIn7ny6pR3uDT38vkZf9JLMf3dQI1kcZy5FuQYX3B+58CGbJfVE6tG/aZGL2t5wDl
         TaNVPcIPQb5KyWvXMsuoMOGUDN9QSHpsNcs0dltd131okxUfW0hn/mYmek7TFsO3AJwc
         icPF2rGpHUOCdcVuC56fU3X7jXDlXX9hCXJqP25GN+dZaahmwRailnjhQe96xW2GbsKn
         h7jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cI7lPiUMiKomeyCUPJV8+wea36GrOdMvUW16YwohpL4=;
        b=aaQzamvyn5BnxiDu2pZadKCOyKiFZACXfMAHWYPxTdeHClVXAcBDNgpPbuCZoA9ty/
         uh8yU/T5H9Tq7Q9fOB9I8vGtU0Z2WvC5/DqaH6QJ/tSS/7zD/UW5W+y97FsG8NUqEcKq
         v4cz/6BnbhCQUVZn7CDlyEJa/AMZyBC9gty8LTtBPIRWJHX7pFS1aTcex5S43+/DK0jq
         eZxTIgjtwGQkiMcofq1Xau9ut0YJRrgkZarTHB8rkvJn6kYaWsdmNGR46rTvmkHcsHtW
         aQARO4OP607/4EJpIGgvUb+JVPs46Z7XL6g3IPB18U35Kep5HilGOMR4Tt9MudFjTMgV
         Gteg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jXn6+gJp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v3si13879qki.4.2019.08.28.15.16.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:16:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p3so435422pgb.9
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:16:31 -0700 (PDT)
X-Received: by 2002:a65:690b:: with SMTP id s11mr3546456pgq.10.1567030590292;
 Wed, 28 Aug 2019 15:16:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au> <20190828175322.GA121833@archlinux-threadripper>
 <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com> <20190828184529.GC127646@archlinux-threadripper>
In-Reply-To: <20190828184529.GC127646@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 15:16:19 -0700
Message-ID: <CAKwvOd=wdscd7smcKZk40zD_n1OUVkhYYd7ZnoK8r1Y+pkvYVg@mail.gmail.com>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jXn6+gJp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Aug 28, 2019 at 11:45 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 11:01:14AM -0700, Nick Desaulniers wrote:
> > On Wed, Aug 28, 2019 at 10:53 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Yes, I don't think this would be unreasonable. Are you referring to the
> > > cc-disable-warning flags or the -fno-builtin flags? I personally think
> > > the -fno-builtin flags convey to clang what the kernel is intending to
> > > do better than disabling the warnings outright.
> >
> > The `-f` family of flags have dire implications for codegen, I'd
> > really prefer we think long and hard before adding/removing them to
> > suppress warnings.  I don't think it's a solution for this particular
> > problem.
>
> I am fine with whatever approach gets this warning fixed to the
> maintainer's satisfaction...
>
> However, I think that -fno-builtin-* would be appropriate here because
> we are providing our own setjmp implementation, meaning clang should not
> be trying to do anything with the builtin implementation like building a
> declaration for it.

That's a good reason IMO.  IIRC, the -fno-builtin-* flags don't warn
if * is some unrecognized value, so -fno-builtin-setjmp may not
actually do anything, and you may need to scan the source (of clang or
llvm).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dwdscd7smcKZk40zD_n1OUVkhYYd7ZnoK8r1Y%2BpkvYVg%40mail.gmail.com.
