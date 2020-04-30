Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOMBVH2QKGQERUOG2SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0D61BEE82
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 05:06:35 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id r3sf283421pjq.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 20:06:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588215994; cv=pass;
        d=google.com; s=arc-20160816;
        b=LiIJW82a20MHtZ5+m0msDNb6l5jDGmfbEmhf1peRNSS/g8gHzaoSAG2vdvZT06PG7b
         re8+HmqAcihhPEIBbLoYTMzg1hvSyLSh8Hjwue62tzK9gpApA+6fKfNfhYTRAAxeO5mC
         tpcg1CfIj9TVnWtN+HTlFoO3frTfnzEe2WRUEzvtvuoIGyypwMW2fY9exOTF71DUAwIx
         NF+u/Mac1uq8bBy950shdUq1Y1lhukARVjr80WfBF4Y4eAEcf9q9q80lxaJae39M/x2G
         QXaAYLYVCYgW2/LQ5H0kYTfdcwEqAHwRXEvaFEC/UW2uuR/LF4fdQvG4JYCGTxvjGYfO
         RhrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=MGJjUhY0SHmNQUibcOaZt32XomAJmVMnG5GPLkoDtHQ=;
        b=mz9BGp6jhSPXjhTBNA5hbwGJpoIq/xM55y7njrV/zNooa2Gm9Nv0mdvx0zZeQm9vYF
         9mxOWRCFkTyLNIS53BP9GKccgDHghfnJk0kZAHpnJPyO8xVP6GSnGCCFNhEWGsysD2tZ
         M2AlbTiikIT0ViEE9r99YIcklwFHHzipzkLXDvx73rgh/eir6G4FVTgc/NQpeX9jCMNU
         Cxvj499ghH98ByeAzdXksrg8zygl98qPKrco9Bq4BR0yBA7bmEoIHZ1EGmiQTxYvdr6r
         eblBJzahIkr4afQ//j3ym12UVZu+hUZfYD+v8jBd7ylktA2B8TPqdMUnuuQwn6+lh/m/
         7t6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mZoGzVoK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MGJjUhY0SHmNQUibcOaZt32XomAJmVMnG5GPLkoDtHQ=;
        b=U7cNWJyeO+833ud2mvfV7Amws7KUXc+NY0B4KD9YsiKIT3bzF494/d7pObvf8AUlSn
         M+gbGAs1GEytsfd01D1NH4AOyyfVjLcy1fNNms01j7b8mlxzT0E6ZTo88XbrEyUZ5QA4
         lwBSOlBIU2LiSPhgz95KSg0IJSFJ++CyHIIj5pbilC0GxQ2Xd8UPuv0qvDsxorsn5NZJ
         3YITv2aYBzpBYK6MogHTjyQLLqfjSOXlL6prz35oJbc2/cVECCzL51SJtLJU352LcWKi
         iR/SyowOlOM63Ykboo5/z0j3/+fw1bIZnTylbKA/HVd2FDI2yXMXBDF7sNCLHx//8TDr
         aiFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MGJjUhY0SHmNQUibcOaZt32XomAJmVMnG5GPLkoDtHQ=;
        b=GPM+fH5nfOo0MyZeBwtWVnYXQ2z8GeL40IIoDyPoezUH0DDElzIBi2dLQoO0RE97DN
         b1WJwdvgG1qIlrHLou+gyQAhMoRxzSmBh2NjZfO2QYLbZvdJybSo284/JGIuk7amDPUX
         KkNMDm7V0V4DxkP8aLsO+RQy4xqLr9EbyOUZwglTkRFOXczHBjgawbOfSs5F5aKdk6S/
         oFgu32FE3QWg2YQTntBNr4FCRYpJdWgBMNHS4rg+7/isJBJ/JjWwUIhHxrIEe/ae0YZq
         +vwYfFflP2oleOQoDbcnvAYtrO0rXuytxyujUH6nKfrmW6K7j3GE1j3G99/SgKf8zO8H
         c1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MGJjUhY0SHmNQUibcOaZt32XomAJmVMnG5GPLkoDtHQ=;
        b=dNDQ+6NrWg8RKA2V4ykxizBR5UvzbFfBqvWBGGcnELq/r7J6yWnSeHlk8n3E0t8oDD
         6hLhv27MoK5Etdz1kPg/tYzIzb6f6l7MMrlGQrt83no8a/qjSscMK9PKxwt/FptaXa68
         +yHY2kxQEAmPZ/GDenl9oBIgKut6Q465Q+NKN508Z1mXr8H7jMxzEN6TfXJQIixPyO8e
         WYfNdlaHOpv0BAA6oRKP6LVopmh1DWRkxYH76zX4v1M6M44T+qqCIweKAU0Xmj9Srwuv
         aJcc1sgdoEBxIR2SuMHvUhs+VVGyaWFHKehmt9TI4X3iGBhmAHjSJRCTLuTrjcxCxXm8
         vYYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYWYB1abaSVwnnegVAR/cis+oebedXio/j50I471uaNqSWR0PlE
	BHk2eBHODwzsc/B5JW5AZcs=
X-Google-Smtp-Source: APiQypJ7g5dqFwsFihgTG1a43E8bNWZLJpJ+fYzmHK7PggDP6YpgoZJcMy/zKq910TmQRbiiwT8T3w==
X-Received: by 2002:a17:90b:3110:: with SMTP id gc16mr471897pjb.155.1588215993795;
        Wed, 29 Apr 2020 20:06:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls2202968plp.11.gmail; Wed, 29
 Apr 2020 20:06:33 -0700 (PDT)
X-Received: by 2002:a17:90b:3887:: with SMTP id mu7mr521014pjb.168.1588215993363;
        Wed, 29 Apr 2020 20:06:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588215993; cv=none;
        d=google.com; s=arc-20160816;
        b=Jd5hLjOdHXq/4Ve6DUEC2CzoDZnrN2orZ7MuAmrofFYV1LLMDRwzL1WNAzSX1fDw05
         3UjMI3Ofz3oKnu5fObzMRl3hHYiAnYSeJ0qBHz/JdhGSrSJ2DoP6/CG7BpM7JyXGB8ip
         a+1fu+oF1dVoixv4BXLukPSrTxjY5MBMG34UTZGA7xgbd2U4Uax8LEV+B6C+eQZj3978
         8rBIeDvoxmzaXYoRue/gv/C9HVGf+cAWrZjX3M7MHXHWoqU0NjIttkiKpHgqV8muDqz5
         LR6nSGSuRci5124EeimPL+SdyWHuCjSx/EeS7nRnUammWKM9ZBP65MUnj2pfsGPvZUfw
         qw9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ABv9ETxmWVKZEO3VSo8L3zhU3G/XlY5BsKo9f2kZ5Yk=;
        b=tUUNO6v/T/a5F/fke66EihJNMkC+G9Vo1sDLMe1tk5sZr4x1grmGRZq6SBqV8IDeDa
         sQk1YO8BRErlX+FYNPWSk23lpcWBKRUcepea81yvQdIS5+0f0R3L0K8cr8NG87kyxRul
         uspVQwYYGFGQHbZ0dsof/7YvTaum2NbcCezWs6WLnENpMUWfTzPW0Zg1PWijeGq0Dqcy
         e9aEapjmX6iSSaizYJ7Ur6yW7X1C5YUytxUHEraVRQuCmDU7fS+wjTkPwtfn6oZc607i
         NG5X/jd/fB751YhpIO3FzkrC8mvP29/pU+Y+ncRJNSVUBGj3pB0pa14/vEgXn9ApGFXW
         84+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mZoGzVoK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u18si73473plq.0.2020.04.29.20.06.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 20:06:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id j4so3680540otr.11
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 20:06:33 -0700 (PDT)
X-Received: by 2002:a9d:2622:: with SMTP id a31mr926767otb.231.1588215992718;
        Wed, 29 Apr 2020 20:06:32 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 94sm878669otc.72.2020.04.29.20.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 20:06:32 -0700 (PDT)
Date: Wed, 29 Apr 2020 20:06:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>
Subject: Re: [PATCH v5 0/5] Allow ld.lld to link the MIPS VDSO
Message-ID: <20200430030630.GB3546299@ubuntu-s3-xlarge-x86>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
 <CA+icZUVz8zYVY3rgT4hS6a11+1Pw6y_Du-hkPra1PkgtLWgRbA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVz8zYVY3rgT4hS6a11+1Pw6y_Du-hkPra1PkgtLWgRbA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mZoGzVoK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Apr 29, 2020 at 09:04:42AM +0200, Sedat Dilek wrote:
> On Wed, Apr 29, 2020 at 12:14 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> 
> > Patch 1 adds ld.lld support to Kconfig so that we can avoid certain
> > ld.bfd checks.
> >
> 
> Is it possible to introduce and add LD_IS_BFD Kconfig for ld.bfd in this series?
> Most people agreed on this name AFAICS.
> What do people think?
> 
> - Sedat -

What is the use case for LD_IS_BFD right now? I am not sure I see a
reason to add a CONFIG value that won't see any immediate use.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200430030630.GB3546299%40ubuntu-s3-xlarge-x86.
