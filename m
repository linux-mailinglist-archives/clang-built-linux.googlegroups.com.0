Return-Path: <clang-built-linux+bncBCRIBEM7SMBBB6G6272QKGQEHD7GRUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E621CBB5F
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 01:47:06 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id l40sf10620478pjb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 16:47:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588981625; cv=pass;
        d=google.com; s=arc-20160816;
        b=JW3ccpQLt0y0U2M7UzLCSjG6TgGIbnRvijmXifgbC2VvqZh2JJl6tCp5F0oHysB3hY
         XBqMhOVfPt0I4mljRkZ1fM9a/Ckfrbva763ONTVw1Elgy3uCpQtCCDwUQFk25EGqLcav
         0TCstic0AeuuJJFT+A5JOkheiCTUSFurQ+utG+YyBypA3wFjzd+FzEb1bHV7UeANkAr9
         YLTynMsUE9GG2ofaJoniVqcACgMF8PlNXoJiiJ4uBbbQOg8CIcxqqZwVy9T3GO01mNME
         pJanyRbXJTLnDk6jihqY6VMBfB49Mo5mZvZLTXFXyn/UDvnw+g+6BbHLACueMpaUGhT9
         EAWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=PNC6An7k0sv+4TeXBgvBhNZqr6QHfMbvusPtBHRHuB4=;
        b=PtjoFrf6SIgM4jMw4GohhG5K4gL6wWbS2rj8qlgWgj164u9PCPfXGd+xaE0eP6TA8A
         pD+c3Nh+a+gcdDXon+EULE+47w4Gly0wzCPzUdUyVwDlLwjxK/RCtskVK4MTDBfUwizK
         csIlrM3tmshVFGqyLfYKe8fRCKd5bQF0ShjT6NL9yBy8XRIRMb0zP5lmlE1AEyJZp6jU
         09GT6Bbub4O8aK+iFMg7tymvrFpw7BBuEZyv7FgFVUVREhvDKMh/AdqUKgnzMRkYPfMv
         rJ3hCCgO3GpJ+mgKKZMuJOHTF+C/DJtjSL5UNlbbVyU119ZULGmYYmn4nqoz8/NkeNG7
         h1Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jesse.brandeburg@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PNC6An7k0sv+4TeXBgvBhNZqr6QHfMbvusPtBHRHuB4=;
        b=potJlGQtKrRwNEmOjUQvIJ4Sq8czuz6eJ8ELO8G8Z1sap7tCHfgWAVcbdDUqYvROTm
         +dY6CXjr8E+wWWEDMEU6du85Uxckp1KSPk90Oq4f49AFUDDqCpT01AXTiFxxVDunzrgm
         8MabAtbpJFpSeMaTGhxGgN04rnxYFKjdHfuF+j8ismuzO2koU0sUMjv67B0wfQAU5N9T
         f/mPQ6fJFNkE1BKSIsCcwM0NdeZ+CwIpUtQnV2aKC0+Dxdzh6DgBlbn3xawi5lzUJZb/
         WJAFUifKA1dE668kKdSBDE97rQWce9Wjj5FT+5vu5qh1l6LZ7/hjaR6lPOpBIyUMuzNL
         u2Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:in-reply-to:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PNC6An7k0sv+4TeXBgvBhNZqr6QHfMbvusPtBHRHuB4=;
        b=ifb9TWH8LevOZiuCT1F+70Egrvy+J/Ce/eBYKC1zi21q56oCoUy4otgjllGs6nYX6u
         E64FYTe16IWMKX9Jza7loDo/PWn5L9kw+NHn8NROOEadXnxKYRhRHwa7uOC5Iyoz3kXX
         hXTrfmQ3t5wxvIJqln9JxNgLyuC40QEZkv+QUNlwvgZ+KCpA9UCGBIEurELGXXJnlVtk
         jFO7fXphxlmPqeOXT7Tgb/A00kocU2QAKy2I5xU6Xu7bsy9ldnfbqXiFk9IboxinYcYl
         zRuC+s5y82a+8zHDpy+FI5JvWS05CM4ICuaoWB8uovvYJbjzjX6shcmJAY5eddtrL8wO
         Y8cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubNcP4lLYVGtkebY4wkYgamNXHG9AoNMbMxNXwtCUHDue1iAFVz
	hVEJ0Hf2t6xJuzsv/s0woZ8=
X-Google-Smtp-Source: APiQypIrn7yDwUfMLJHlKkXfg4nHYWHdSdOKPE5/CLn6E8gWs56ot1WlgrHCYj3saqqcNRPXa/E+lw==
X-Received: by 2002:a63:f90a:: with SMTP id h10mr4202410pgi.57.1588981624913;
        Fri, 08 May 2020 16:47:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7203:: with SMTP id ba3ls2751800plb.4.gmail; Fri, 08
 May 2020 16:47:04 -0700 (PDT)
X-Received: by 2002:a17:902:9a03:: with SMTP id v3mr4557935plp.272.1588981624533;
        Fri, 08 May 2020 16:47:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588981624; cv=none;
        d=google.com; s=arc-20160816;
        b=e0ZjpQqau1SC/CPz+oIxSMN1SlenyA2Z4NTFfIXeTp7Eo0Qghsg4P6xxH7E1jQ9Exh
         /5Uk/NCSDPRRZzsQhsTxcaCczcgT5gY9QPodIFqy6PSzJLDtx0oOMQFxtgmH8M+L5wj5
         ergtW1vGzVkTvy1Mep/wC3/NTGm0x538U5JLy6wuUKjNIJ8IRiovgZGCfL7SJ7EKPsxv
         p1kvWIhcNRv+mky7C1A6f1YUVT07UcUYJeeXSLosaQgF7VXHVXooYhuWpVvI7Sn3j6UR
         rE/CccIsu4VRb1PZkn9nTF+eOdGKmTxQhsz282Vji5l5mHnGU4YgjKUPvkMdZFzbBgTE
         S19g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Y0MPFE86YI3RBO0lK66R+fdU6zv8BYRhaifnG1fnmhc=;
        b=MVf8Ev5txycXmb5lLvnzBea6CGSCzw+j5xpTmnnu/nL4Qk1f7lhSPwFQtmmII3FIEf
         CS9qMoEune/umrXWhoXqu22BCmOnOG6/T68y+FcXVejcK4F04Va5TFWnUK55EwaAMER9
         eniK488kGrb0ZPrUAq6T2Tp6sRIWigKQgl/9yz7pvg4TknZHlq2ieMi6sKLUrpN0zSon
         5jeXOpyHMZ4x5Psvgjk8dx+3y64km9pghJkmKCqTZlCqo9m2Nbaa5ZXkT4L4T6wgkFHO
         mDNVyZemlzZvtz/5ec7T2KbtbmNIObqwfEFIU73ToWYqhbujTfEP5sOnWa1Uc6tQ8SX5
         85AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jesse.brandeburg@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id g11si204173pgj.2.2020.05.08.16.47.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 May 2020 16:47:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: VVSZP0qg7JrgUHHsnN+1q3He5mZMg0YhJoCAf4Z5iksgCFnxpM7GueZKO3a+vvUemtChV+wEjT
 W4VonMJP1bVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 May 2020 16:47:04 -0700
IronPort-SDR: IgmrIChEafSOPxXY/UYw1Y2kWVyxeCtNJby66alTB8gI1u7A6peCARaxk9T6+QycGiiMk5J9/a
 peFREwyRD8Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,369,1583222400"; 
   d="scan'208";a="279186642"
Received: from jbrandeb-mobl2.amr.corp.intel.com (HELO localhost) ([10.212.217.221])
  by orsmga002.jf.intel.com with SMTP; 08 May 2020 16:47:03 -0700
Date: Fri, 8 May 2020 16:47:03 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>, "kernelci . org bot"
 <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, Brian
 Gerst <brgerst@gmail.com>, "H . Peter Anvin" <hpa@zytor.com>, "Ilie Halip"
 <ilie.halip@gmail.com>, <x86@kernel.org>, Marco Elver <elver@google.com>,
 "Paul E. McKenney" <paulmck@kernel.org>, Andrey Ryabinin
 <aryabinin@virtuozzo.com>, Luc Van Oostenryck
 <luc.vanoostenryck@gmail.com>, Andrew Morton <akpm@linux-foundation.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Axtens
 <dja@axtens.net>, "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 <linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v5] x86: bitops: fix build regression
Message-ID: <20200508164703.0000481d@intel.com>
In-Reply-To: <20200508202835.GA550540@ubuntu-s3-xlarge-x86>
References: <20200508182835.228107-1-ndesaulniers@google.com>
	<20200508183230.229464-1-ndesaulniers@google.com>
	<20200508202835.GA550540@ubuntu-s3-xlarge-x86>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jesse.brandeburg@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.31
 as permitted sender) smtp.mailfrom=jesse.brandeburg@intel.com;
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

On Fri, 8 May 2020 13:28:35 -0700
Nathan Chancellor <natechancellor@gmail.com> wrote:

> On Fri, May 08, 2020 at 11:32:29AM -0700, Nick Desaulniers wrote:
> > Use the `%b` "x86 Operand Modifier" to instead force register allocation
> > to select a lower-8-bit GPR operand.

This looks OK to me, I appreciate the work done to find the right
fix and clean up the code while not breaking sparse! I had a look at
the assembly from gcc 9.3.1 and it looks good. Thanks!

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508164703.0000481d%40intel.com.
