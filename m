Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBC7QYTUQKGQEXZXF4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C736D954
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 05:25:00 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id g2sf14667291wrq.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 20:25:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563506699; cv=pass;
        d=google.com; s=arc-20160816;
        b=SHeZE5cpW8pyoA7qhE12REjf7unZAY0TxMPZ6s77/1u3BWuh0s2XIv9lDc5AQ+7j4q
         7+PVHoEDwpc9oDURQpdunqqKTPDvahaUN4jeuYmExAsT9j1bVCatY2rdRwx+wWNgOhAs
         ypNUari2tmboCp+8HR5zZrI467gAWthy2LmOkQXDINvF9j9hjIHTSroELRVdYKnlZCmR
         G+PL8W2oljozCT6eRV0Eko1QHmUBS5y8F8AW4pfH0Y3p0+jO7lBISlpLjdxLak/8HHA6
         E85//EuPVa172iQ1cdIjeRj7PJquMvNk6hi89gSf058Hm60tB3p5vAc0wtzas/qcehM9
         ZsEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=aUyF/CQaRf86EtTr2izCxAVqLCjcC7Xu3LfJNCg4lfw=;
        b=icr/MUc8rcRWap48VnfCgRsXdQ3WUe9zBk9HE03IBuacG7ydsONAmd0Tlnv4GGcxwk
         /8TBxQD/0mNW150cLuJ6JPIvrbDBynG1U1386GzLAIoej/aVBJMyAzI0OAIZftSj1oud
         4dYW/lyq3ro1AuMcgNgReNEKAfba3UlCbcs2HYFfsbbzbT/mOmiV1yJX/ctKEr5PrLFq
         WTP8B4fDFSq+MR1n7oA5PkThcOCQ7RGiaLyzvDLgD8K19tVVhl4xshOVey2AIEFnb0Tu
         Dmk7wdO857UJy7C1OcgySmRVWfcBn2tbEea7vKYgA5cfCvJr4Cmg/sHjt8RdOIHbUd3v
         NVZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uAzd3DTO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aUyF/CQaRf86EtTr2izCxAVqLCjcC7Xu3LfJNCg4lfw=;
        b=RfYiGD08ZsMRu6MHqXKfByywHcMOrdUm1SplfwElT5LoXieeZma4p3q4C/22LwTz0z
         stoaWtlySPI68f/McKPUPMsWJOSy5tOLaqndxyYm4+7kywfj2whz424fhgfJLD7yAb6P
         EwmxAAdEEY2+8mPGy7O5xTb9W0iA6UzjFPeGm3eGONCg352s5r/SMTxNxF6yH9AFXxsl
         O5jDMjNTTnKz5WWjb6GJ6tWfIDO5HMsZnNc9Rfqux/nQtjsCixY2WM6+PkYrA3Ib/G68
         5nuQDzkEc+chK6STIocYDFpGsObzZP6T2Gq2zclqiIg+aCKqdMgSgUcyKl1jIrdgMFNr
         nYMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aUyF/CQaRf86EtTr2izCxAVqLCjcC7Xu3LfJNCg4lfw=;
        b=IMPqG+PthytIXNe94b3nsJ0N3hYwIvphbY6UV7monauVUIfYQpcl5w2Rh9+RQ9bBDo
         8hIFHPBwbSKDCNo1OnUYaNtqCqjE1bnhC6JB+NcnZ3IOw5jGbfxjuSemDrzc/mssTC5x
         zRNf1G2Pohhsj6cxOw9BUGgeOxTybuNHFqovHZIQXok422TizG7Eff/wvBOP1q1mdbXW
         5SXjG779wLyoMCvzptcdYnHXbPKm33BqBmZ4fzZc5y5xImE7oawxRFBfu5aYRTCM6pF2
         mW03g0zyeg4wgGyXNmjG3+xQZqx62oMRpgUC+AXB9P3hzro6AEvwQcGeZJRbovbOSCs6
         qxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aUyF/CQaRf86EtTr2izCxAVqLCjcC7Xu3LfJNCg4lfw=;
        b=NDZ1qXyBV+G5itOZGjWdRpScrJhDsNdqNN3kJpDb0VlHe9IaRimypzzz6q1LfnCqzU
         fxi8WTcoF4/eTBahMuJUGUeul0TwgBFJ9MoTX+Xs73l63Bua7teBNSJazYbezYVcO9H9
         qXILRZbvS+sNyEnRZeBfMqzjx9eWF4RWnlUF8bT0BDAz4ZqWtf5a29DnJHHy8Pw6N0oz
         ScDYD6H9bx0nZOm7JN2Y+//fhlEI5POhX94PcxOXX0bITyzSL5CUbVdCbF9YEqpWVcKc
         RQcur0T2h/61ve4lO3tZ0nXD3BDbOuQy9N/Mh6bJGmttp+aMN22kupDXnN6VJXwCAFKb
         wj4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTHTVV11RnjSl/jJ0VZylyOL4tqALU9gnvdpfrkgtjh+E8FpWR
	eKiiENPOozDKWAz2eXUBJKo=
X-Google-Smtp-Source: APXvYqyiv/WUFRp6c6K1BF3TdG/RiDaxzPOdXRFwKo7NVk7L2yRX18HYLNFbpGLCUKaBETL0unIR3Q==
X-Received: by 2002:a05:6000:12c8:: with SMTP id l8mr107052wrx.72.1563506699818;
        Thu, 18 Jul 2019 20:24:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c411:: with SMTP id k17ls11106004wmi.1.gmail; Thu, 18
 Jul 2019 20:24:59 -0700 (PDT)
X-Received: by 2002:a7b:c247:: with SMTP id b7mr46952096wmj.13.1563506699405;
        Thu, 18 Jul 2019 20:24:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563506699; cv=none;
        d=google.com; s=arc-20160816;
        b=y/rnyJzHQY3UDtG71HBx8vOugoizCHhb2ROPOMvOGAaGhV4RK5Fci2whmdMDpJNNk6
         NmXIW/u5VA4mWLss6zvKZFPRMN0+aODNx9PusRYtR+3tVI33C7HFgDj+z79PKwa8SszX
         /skKZfljNpv+dGEunL882Xf+Mxq3fqQnt8mdehX6a3TwfMJ4LLPZZm3zPKdEI1qG3cGX
         V/fr3kDlqYl7EAp4mSMKYFB5Vf4w4xB2o07nFVZoGa63+j63Ku0TIJ63wnMOm5x91qyh
         auCNXyBRgXEDCFfTKMr5l9+fK0/5abaCeKaPeK1LTqLhPg/bMhai5irL6nlJCJlRKyif
         AynA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jIYPnkgBs5i86rbWUSwNdiw65NtG6kE0hp4IepPNimw=;
        b=y5jiUl7GdgHdwEIPWJwb++d9Oq3z6DIPLOEn6SbXHHS9o7ESdAS1R3Rfax1sEozHAj
         8xiPONnPNiBeKeifI6lP5Xe72K+/1TQzDwFizCoYEWWd2XM9diy8v7bHSe5BL8Q9DDW0
         q8Ez/+WHLvUDecwljlA0a31y3A/Pb2Q0PkUWfaKRe/cjNN7N6no15lhtvKzXi74026s8
         /xXWxLKsg4p48kOZUOEVZ4loSjZeVpcHxuW2Chs+XSJvUnOhv7vuWZ14T3gL6ASQ3bPI
         m9Mm4fLKAs/kC0bCWr6qZwJAa3Z4zGKPYiGI1+7GrHqLOErZwTiFWADUs4pqD+ukoT7v
         GIjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uAzd3DTO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a10si1705784wmm.2.2019.07.18.20.24.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 20:24:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id f9so30693194wre.12
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 20:24:59 -0700 (PDT)
X-Received: by 2002:adf:f883:: with SMTP id u3mr52455389wrp.0.1563506698857;
        Thu, 18 Jul 2019 20:24:58 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r14sm27007800wrx.57.2019.07.18.20.24.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 18 Jul 2019 20:24:58 -0700 (PDT)
Date: Thu, 18 Jul 2019 20:24:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190719032456.GA14108@archlinux-threadripper>
References: <c6ff2faba7fbb56a7f5b5f08cd3453f89fc0aaf4.1557480165.git.christophe.leroy@c-s.fr>
 <45hnfp6SlLz9sP0@ozlabs.org>
 <20190708191416.GA21442@archlinux-threadripper>
 <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr>
 <20190709064952.GA40851@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190709064952.GA40851@archlinux-threadripper>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uAzd3DTO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jul 08, 2019 at 11:49:52PM -0700, Nathan Chancellor wrote:
> On Tue, Jul 09, 2019 at 07:04:43AM +0200, Christophe Leroy wrote:
> > Is that a Clang bug ?
> 
> No idea, it happens with clang-8 and clang-9 though (pretty sure there
> were fixes for PowerPC in clang-8 so something before it probably won't
> work but I haven't tried).
> 
> > 
> > Do you have a disassembly of the code both with and without this patch in
> > order to compare ?
> 
> I can give you whatever disassembly you want (or I can upload the raw
> files if that is easier).
> 
> Cheers,
> Nathan

Hi Christophe and Segher,

What disassembly/files did you need to start taking a look at this? I
can upload/send whatever you need.

If it is easier, we have a self contained clang build script available
to make it easier to reproduce this on your side (does assume an x86_64
host):

https://github.com/ClangBuiltLinux/tc-build

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719032456.GA14108%40archlinux-threadripper.
