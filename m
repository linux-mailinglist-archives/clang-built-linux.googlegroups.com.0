Return-Path: <clang-built-linux+bncBC2ORX645YPRBE4Y375AKGQEPVIINUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 194432619A3
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 20:23:17 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id j19sf86272qtp.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 11:23:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599589396; cv=pass;
        d=google.com; s=arc-20160816;
        b=bH5PgzwoOLmTEBTooF38HHsI2YEtJlrqxDagJuLyMSHd4ohpsRG7Ay11//Y0gCIf5G
         4OwDl563DeCjvSOzVeQgR6FwGnTG9hGURIG1YvRXRsXneXev34xRVr37UPvhaKACzNxq
         jGb3hEgCU6MP5M0j+YBSKs0ZaFyIzExdDRgLmU4tMbT0J8hZDELs3p5QzFd2Fu94CtB4
         gIRzB3WYU9UsQMRm0YNr4j340DkyAbRIPs+/vsYFSMBe0BoXm2lraAP2YFWjdDwJzUP4
         xe2UotypkwPP+gRHwDZlLCLMNcXK6hB5VM8/cMXNprhWIvu5wL8bX1yDefqqVX9kwRQX
         lgSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=m8gYQ7RKDmh1IDjV1Sk1ygoFiaCKFCMHpHVLcyWlTj8=;
        b=W6LRhzu0pdiCXWRJ8Mzkjy1sCuxGgFlNmch1LbFEAYpkkC68BXvV1Mqmo4Ecne8E++
         f7BICKLxZyjL+fYKqDFTYBt84vsle4OSbg07eM9LNgE3i04MKvB33Qc9Bl2QEXj+ndDP
         jlAV7JEGs88IvNHbetXwpXsVLVMDKbYfySjpxt9Lc3WaXEYDYSUCtKZBnKZkIqVfi92P
         8TE6afOmaWEEFE9jx2GCjQ720ALFRsqwbsecwzxWrvKpdFtQBsDLjBmB8c6holeVKjl0
         6R3ohZDc5q0AGKlJg6mSAtZ8vlPeWkL+AV0O6AnjBGIVKDYmWusaDzUvIUFqb4GYtNRp
         2AOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Oo/DQrZC";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=m8gYQ7RKDmh1IDjV1Sk1ygoFiaCKFCMHpHVLcyWlTj8=;
        b=B+hPr3RA1RFMnWs6KFFq5c8c1NSEmjRtwvruqSuXhzE7wfJx5WT2RtHBMh43zmly0m
         HAFHlLVIgQYI0bbLW+a+Xd9UDJZzJIP0fp0WfU6oKAPnjIX3lNxKbWHNBze79iB7AfbN
         Qss0tqO8FpVbdx92MdiP5FC0pFQvCCFI55SbGCcvd1z60zRUbYHE28EHGpUh3X40XSQe
         78hAloU0rxM1Dqi9jDZJ8r0EBVcjCVOyKo4V4Z4Ap15QlbVuc3Bh/k3WYCDHDxsA5pct
         zhFHZmcihKq55hJpWiNgRlqFwycNAcpvEGVNqpduXazvLxmnz52LKQvPE81H6dj/mqom
         VY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8gYQ7RKDmh1IDjV1Sk1ygoFiaCKFCMHpHVLcyWlTj8=;
        b=aY3gGrJYVQD468Yojme5AZx/n8qCncfDir2bv4OF9cvq11auM3tHGeNEtpj9m51V3f
         J8hXz8S0kOGyZRgrF/m4ZbQYzqV3fofAqP8GAUrSS15tb644udy7W7tewqavYoOX90cG
         9XX4RrbriXx0uHcAZDnKiNWXiuvI43GIYPISpo9W9BxLdeGhuqc+4j03p4xDvGlfpI/o
         V8MVHG1IRd9e4BP98zjGp54vv+n2dzGTtkJ1V0dle8R/N2hMRZFp3vu/6D20TUk2x8og
         3Dmalytj2Dx+5QyL/Jo2opShkZf1IzFAQhj1oOrINaWduTCqFpg6WaKAged0dDblUsHD
         dwbw==
X-Gm-Message-State: AOAM533JMLgve73UsNlUxFoxq5KF41lIJadKo9pb+pbzSegZLS98i8gu
	Wi4s7cwAFxzok5uosGjo9cY=
X-Google-Smtp-Source: ABdhPJxA+5+IYm7211argHsmQhADaarkz+StFB91YI8Q4fwpfcqFhWYObHLyPnolF6fjmZ2VPwss/g==
X-Received: by 2002:a37:ba06:: with SMTP id k6mr1379156qkf.64.1599589396058;
        Tue, 08 Sep 2020 11:23:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls62960qkf.11.gmail; Tue, 08 Sep
 2020 11:23:15 -0700 (PDT)
X-Received: by 2002:a37:8902:: with SMTP id l2mr1299834qkd.415.1599589395615;
        Tue, 08 Sep 2020 11:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599589395; cv=none;
        d=google.com; s=arc-20160816;
        b=VOmX3fkpseP5aPNy89FBX+qsIkJE68wd27M0DVnWWgRVUA2h/81Cy+bImLLe5u7REa
         l9Q4wSVfBFtNXA5Fin3rWb3XORE1Z14W0ncpfogPg48DXa1N0/ykmhZMGvWR10EiZEfT
         aFHcNO3en0Fz8oKj/G2cMwROyAwaC4bfk7Hkc98KquO1XA2eEGoVMAyasPQDFDbaAl9y
         G5+NTCrLQ5EAiHmW6mcDv6KpcW57VISG5+4TimGqhw7ZPcdhei0sc3OCKtv7xkPSc74f
         zs3fdJz7InwIXz3O8BExX6CnDBHQxH/sAw3ckQyFBSsnEcXopfwmrP8RuvV7zjwyy+YQ
         DUZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mfB0S2TmcGDxX8xZkZ/chTU0dmPHOOO8nuKSmYrB2mM=;
        b=rg4c8vdaDFAS71ZQkc/2i7GVnRx9mzW2HwXK2/3PKwtDTuZoWJdKXN+I3Z5pntDGJq
         IOGg1lD4tBfixuM++CmaoKXv156JamEy3/sYARQEqP5qWg+CT5D4kaIW4GhOTG1zeG3B
         WnoDyBEBqd7cVFwf6Jz69TMV50ZAmTV9lCcHqATKCBDgscTq96d95QVvLSjmLsW1oY98
         mXFvVf2ZkUfwQFPqAnEASJZjPesrhlDE+ztu8VPoKrsrTqVze3kKOtlhDwmkCfNtFYCI
         lvDbJTt1PWi9QRV9dNhiNkEXBme9nUaGfvXCdpCuxxdwAa+NtIINxIx2rzSG7hp4UloU
         hy0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Oo/DQrZC";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h17si8953qtu.2.2020.09.08.11.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 11:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id f18so11651041pfa.10
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 11:23:15 -0700 (PDT)
X-Received: by 2002:a17:902:10f:: with SMTP id 15mr24890192plb.121.1599589394447;
        Tue, 08 Sep 2020 11:23:14 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id h11sm108910pfe.185.2020.09.08.11.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 11:23:13 -0700 (PDT)
Date: Tue, 8 Sep 2020 11:23:08 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 10/28] kbuild: lto: fix module versioning
Message-ID: <20200908182308.GA1227805@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-11-samitolvanen@google.com>
 <202009031510.32523E45EC@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031510.32523E45EC@keescook>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Oo/DQrZC";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Sep 03, 2020 at 03:11:54PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:35PM -0700, Sami Tolvanen wrote:
> > With CONFIG_MODVERSIONS, version information is linked into each
> > compilation unit that exports symbols. With LTO, we cannot use this
> > method as all C code is compiled into LLVM bitcode instead. This
> > change collects symbol versions into .symversions files and merges
> > them in link-vmlinux.sh where they are all linked into vmlinux.o at
> > the same time.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> The only thought I have here is I wonder if this change could be made
> universally instead of gating on LTO? (i.e. is it noticeably slower to
> do it this way under non-LTO?)

I don't think it's noticeably slower, but keeping the version information
in object files when possible is cleaner, in my opinion.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908182308.GA1227805%40google.com.
