Return-Path: <clang-built-linux+bncBD4LX4523YGBBWHSQHVAKGQEIBXEFII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBAD7AEEA
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 19:07:37 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id h47sf58981167qtc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 10:07:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564506456; cv=pass;
        d=google.com; s=arc-20160816;
        b=WlcVan9HZ9auB7vvje7EW1rQn30ql3laPthJTKW6ljBw8KArS56nK8xdaDrm31jB8w
         d9PVG539u1rdfwTXE7TVWzoScGkoh8QFFP7PVt8x9KANjWHkj3Z2/jMm29JpaX77KmmT
         9RY1rHglM6ZsqegS9MYULVNGCbrnfCDALcTFVv2ZlqvVMYWcTCPxu2pmSz+JAHX3dNht
         Gd+brj7DHK3xkJgIqoHflAFwjY29mHc23RZlxGBs28JMJow6p7lWzlQQnGLq2DQBKuYc
         w3N0ls0wgxM87sQKLMOx1dt03gUHa4TZQz5XcBWMnruqFDqnZ9k1NvrBUQdiYi/ofaNf
         rb9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=92jXzTGtURq4RX1qu6M3WTrGfE7Gmx5cMjbgSjTregA=;
        b=CMz3+YTAPilC5VvKIwCF1wN8SsI5b6yloTWALH4MnoWpca8ocTZdVxZQ9I6MaXPlCp
         iqAu7nqEi1BvOyyYxPubg/qXtP79er5qoSkXgEDylBcEMmtqMDiJyffWO8Y76E1L40yj
         g7sAFI41vnLNrEOGY+rUrUVTuwsaakIbmv6l9mldaQbvIJ/3YV8Cz9FsJxOQpUyGZ/SI
         3+AVGaOuRDqImDX9P6vNFgj+F5fNpJRTa6knwaBluJ+FkjDq9xUCj3mHSjz1qvp0PnhJ
         4B8+xCploM9V3oYFmadYxu+KAPM1/zcCXM6dqPZiJJpRth0mjjwH9xJ61+BXhP3hDEI3
         6PQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=92jXzTGtURq4RX1qu6M3WTrGfE7Gmx5cMjbgSjTregA=;
        b=hS8i5At0lvaQEuZ2MTKVdV+ZWpgQBMhcuYeiSIO/tGRkdjX7vJKdV43yFlx7PEq8OD
         V2yDZKi5soSjoLjaTaKqWLqrnFKpHpDSdMDQFXU33aQqhKjBWYG0w+jXeOYEqA3AndLx
         lOOawStp38BCODWMvcT9GG2fZ27aZHSCnhptriDC5Wqi3asWkfxN45n1ggRJccrW1I8a
         mESv1KI5srUBZqU6FaiOlpwh0mwQ76hRaSZsNlqXjqu4UKazPX9CSTLNVaLaSTWw1L8n
         Wz9OPDpFm78XjW7czW2PiarhPDLClZIrV3vv8NnbLr2Isbg91JCoIpDWaeoYgzATds6W
         oQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=92jXzTGtURq4RX1qu6M3WTrGfE7Gmx5cMjbgSjTregA=;
        b=S9TDRFtppBDjbbZ/hDzODKHJ+8mAP3wGeWngdszYk6twc91MnJC4s3G/JKKiE6EZ25
         hBSmCSYzaVJRN8i81tHUEsTav04mh4e6AjWryUNMTsllc7jG5LRsIwyUok/Xd/SMeDX/
         BGwY93KoMk+mBRQJXIFdDMRnGEzlrVGIe+aZa+rlR8OR15B9oRT2lyKIGtN4YHGEqYij
         HmVfIe9gwH7TZ5NadhJa2nt5D+V5Ralh4Nb9iVZgisQ3AsauqiL5PIQtMJa9+HKekBQg
         N1E3n3+33HqTwO46ijFMBxI0yK3NAeD/Nt5u+MHxfLFobUhgVdKP+mcKWHuJkA/DDpDN
         lHCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvEaX1NJTCAn216/me/geJL0at1+OMkBKZ0u3QZyl1PszA7Bx0
	S/A5EU1QelIk38XeqIapggc=
X-Google-Smtp-Source: APXvYqwKyUeXNra3yeofVGE8BMPon3sS0RrKUXiC5XuxwLLxr2SLFpB3pCxg9Lq5UabZ3/jqAnpd/w==
X-Received: by 2002:a37:86c4:: with SMTP id i187mr77972292qkd.464.1564506456373;
        Tue, 30 Jul 2019 10:07:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4d83:: with SMTP id a125ls4864889qkb.9.gmail; Tue, 30
 Jul 2019 10:07:36 -0700 (PDT)
X-Received: by 2002:a37:4d16:: with SMTP id a22mr79125389qkb.103.1564506456090;
        Tue, 30 Jul 2019 10:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564506456; cv=none;
        d=google.com; s=arc-20160816;
        b=zGS91gDzOnu34K7Z9iURjsR3yQhs8y1j8RXxrqW8LTHhUHJQ2bT/PThjSsMkMT3xaA
         d8JXJq46Jlpx4KWE5W5PvtCuR4n5pk1EWFkV/rAY5ym37VRNlLD0HfrGf6g5JTpd7VOA
         TGfhMbr/8plySKDgMKcbjMfZy+5a9a/C4DgsY3z1nS496RtrE2Bcmfw1zTDp26LefvV5
         7XD3MCGAPbCX51dkynd1unQq4G7x+om1rJmj+gl83tKbNYBvlFZb959KjHjq3NjXrhbE
         S58H6ZrhYRDiZMYFQzrhgGD+L+HEfP5kJEIf0cJlE7NxgItFtOid+9YF0ZsUrZSWad4k
         AbTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=PrvKKWGAGw91M3/+ujJPFfON9/lJZ6mRvC+QTBvVd4U=;
        b=0B4yRGZnX56bOwwy4X2TB8WUV2ACQLLIzNBHA4IGchmYwhD7kmc2qiAJA0GcMUvaD+
         74EzJvrOQItbInrjUHwCw7tVnROiBCvzVNF8ujSkoXlzlBdSB6Hz76knK4g6lc80e8mp
         zYlHPZJEkH7x55sw2lfAjsUn1E+YooDsnAgpEEpFU9UGRDzjzntuj7QPoDKiyyl7S4NK
         5iQg4AF20rkCwP9DP9AtNNSVyIqs6xKoZcNPjsQ2qQL43Y1sU9TMcU8c6FFnwpXIIhBp
         B/FoBXtMOhz5SBKR1DegIyTlVC5v/n4oA5hw/EMiAbX1CV3ptgQAtJMvZKtNtgk/mJpZ
         +UWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id w82si2737155qka.7.2019.07.30.10.07.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 30 Jul 2019 10:07:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6UH7TlS016550;
	Tue, 30 Jul 2019 12:07:29 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6UH7SxN016549;
	Tue, 30 Jul 2019 12:07:28 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 30 Jul 2019 12:07:28 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild test robot <lkp@intel.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Paul Mackerras <paulus@samba.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
Message-ID: <20190730170728.GQ31406@gate.crashing.org>
References: <20190729202542.205309-1-ndesaulniers@google.com> <20190729203246.GA117371@archlinux-threadripper> <20190729215200.GN31406@gate.crashing.org> <CAK8P3a1GQSyCj1L8fFG4Pah8dr5Lanw=1yuimX1o+53ARzOX+Q@mail.gmail.com> <20190730134856.GO31406@gate.crashing.org> <CAK8P3a2755_6xq453C2AePLW8BeQk_Jg=HfjB_F-zyVMnQDfdg@mail.gmail.com> <20190730161637.GP31406@gate.crashing.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190730161637.GP31406@gate.crashing.org>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Jul 30, 2019 at 11:16:37AM -0500, Segher Boessenkool wrote:
> in_le32 and friends?  Yeah, huh.  If LLVM copies that to the stack as
> well, its (not byte reversing) read will be atomic just fine, so things
> will still work correctly.
> 
> The things defined with DEF_MMIO_IN_D (instead of DEF_MMIO_IN_X) do not
> look like they will work correctly if an update form address is chosen,
> but that won't happen because the constraint is "m" instead of "m<>",
> making the %Un pretty useless (it will always be the empty string).

Btw, this is true since GCC 4.8; before 4.8, plain "m" *could* have an
automodify (autoinc, autodec, etc.) side effect.  What is the minimum
GCC version required, these days?

https://gcc.gnu.org/PR44492
https://gcc.gnu.org/r161328


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730170728.GQ31406%40gate.crashing.org.
