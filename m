Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGOTTX2QKGQEMGZOLHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE4C1BB1F8
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 01:24:10 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id m7sf17898320ooa.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 16:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588029849; cv=pass;
        d=google.com; s=arc-20160816;
        b=P8xvfGUSGGgIDeuc2l7UDlpLzJeoV5ilbsyB8XC+gwxaFSUpPj/lpZ93cuMbJgEmYU
         N1iYsJHXAtBgCQsUr1YV2ed/pokA4n1j36E3mqfWaiekFWm+KgJGe9IRR4/BpvLKfd3H
         tWD47tq3MNxqC1iY2MmB59jPhoFd43QMiS2Ue9T4ZoYIdrKN50JRlMt7gg00Hf4rjBdj
         s1M31up3sEgiXr7FbYHJANDwQ3yXvJ4hO0tcICFSHFV9iY2kmL/b6BZSftG6yiDibo7j
         5gKXxZ3syj18kf4tgw9vlwlqtBNeNcYfZU6pOH36bQPusOw/WRHfwtqtYztsoWrIrzuP
         W4MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=vlJzqdlYccR2ezb88SJYgmgp4Zgk5FIIb4jwyKK6qxo=;
        b=n9vwPWyGK7RLZOOmrHrtYeAJGm4YMZixB4VcKNHyuAJw9JwC3rzCHSormMBk3Admld
         NCiANbopNyS8jtoQdkTUkSnKq0uYIWoMkneJNv1ecJ73SV+TpK02ZEP/M+CNVceoA6h6
         MlMCiG9L9bGIO84QsTMpJdgJfEK3/HzmPGYYdwDtE5Ne527bl3ee56eHZd9j0LsdkdBa
         6IOnvCxNWcmED/6kJGSEsXaPpNbV9g2qzULUVRP034eA66l8U8CYjsyE+xpQOlmLwsxf
         aFEXEXN2XJqLVq4eytNHGYhsUahyVxB15VPkscz2yU4n7qw644x9/mKhwDG9r0rQ6BJ4
         jfvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SIcBei/I";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vlJzqdlYccR2ezb88SJYgmgp4Zgk5FIIb4jwyKK6qxo=;
        b=RZqd+hA0Br0UZTBK99hqaaaqIjPauLJMExAPdfeqoRp/n/Ja3L1FFBzxmiQnxUXDVM
         82pSAUKoEjozIZMRpW2bC1BUqX9mokCkoZrLfUa84ZNk4T2SDqqQPmoip9fSR23EpXKk
         o+43YP22W0U/wW4LBwhRVsgbXxjTykpH9V1rNVPomEDmDl2oUqaIMb8AUjq7GEjsmCyg
         YA+W0xHj3qPgUzBbUB6+PwEQ32QXTTwSw5J25iF7QK1R5YjGXa38pNZK1Utten+fAiBj
         NdrWZfjPs5/fqqNwIwQyAmR/xlulqptqoEkRXN+Fw9OB7WW38VIuTH3fyFM6SWZJDSVe
         sW/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vlJzqdlYccR2ezb88SJYgmgp4Zgk5FIIb4jwyKK6qxo=;
        b=F89Y1C/0RdSdvXl4MLOKkY/TfYNVu8Ds1mMMNVIAK4GSmqa4xgzxChtVvnnSHGuOf9
         vrnQt4EHQ4Ovu/zyFuI54TCuGKFDXKLwHbuhmYzlRPIqpsQg8WlZOflNNvbkuMUdMGfp
         TFCnfZlNrS881CAXfQTgV7WQDuqArFh631f9YZzNaj8zsVDwTbR1PKNn1gbQ7Cau3UJy
         6DRz1YOV0V2GVoxGb5DwmRlJTOMzqUWPE7Q5GvUmN5bdB37nuRfD6ExoifoeBqZuxB3i
         nQEG83I4G0xTtQ01N+eK89wHGrxkZUnEHANCu15YciMNZ1BufkF+JlG2dGG/wPzrTjy9
         lw7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vlJzqdlYccR2ezb88SJYgmgp4Zgk5FIIb4jwyKK6qxo=;
        b=VFXhFM7wxYvhjEvLK6yW6p63amPPjm95uKoiPhVG3vp8gfo4w6gAL+6VuM3fszlx5f
         qq1gmrkr/SsDQ6yPnK0Yg3HCIS1dTHys30OtO/nZo/CiyCdXj8Lv3lonV14g/bV9Quy5
         A8IK21fiVkcuVlHYnAt7OjX+iSihlUVJS89hMjQzbDxlooZyewAnR1LXgGuJtoROLc/Z
         fqOijNPl19tiIlEFX0dSS/CQH2/tOBUBeeYWEpOCEsSo/HckKafHZheK8WvpnfdjQ092
         fV57dxzl+dMjiy7yr2SEKC/PfP87d+iBE3WRkLkEeyxkdpsr2I83d641ifw8L4AlWRUG
         L8GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubOpmgb+Q9GTqZAid6eQD3MccHyRuOEaoCBFbsdhvkst077uABE
	Fc9KgDv+8+arKKmuBFK2CkA=
X-Google-Smtp-Source: APiQypLDf8qoqqRm9sP2GALk1u5P1DVAgjyFkZTGUmH24vaeZ9oNKVfHQYT+adYcULAe1jmuz5i5uQ==
X-Received: by 2002:aca:dc44:: with SMTP id t65mr971310oig.176.1588029849613;
        Mon, 27 Apr 2020 16:24:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69d7:: with SMTP id v23ls5100977oto.0.gmail; Mon, 27 Apr
 2020 16:24:09 -0700 (PDT)
X-Received: by 2002:a05:6830:1ac6:: with SMTP id r6mr21116443otc.311.1588029849295;
        Mon, 27 Apr 2020 16:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588029849; cv=none;
        d=google.com; s=arc-20160816;
        b=X18Sb6RDc7IPBU5E6+Nm0MKRapDU1LiRc50ChSpthwCyTJB+cis2CO0QfzBjqYSKyv
         vf5V6V2ZzQ6wxrYoVpkSZAQn2i6rxuLEFe/eW1FJeMJv3V8UmMhwyws5s14wQbu89U7S
         CbqhPQzrpawivXx/7CllNWfFgj58AVxlaZdkFcpl8W1JHeIq/lEmgq8yEleWBf12csBx
         F9A3icH+yrBEh+9+bcFDTs3aKKZqQR9LF/T1r75G38wnybSriohN5LKoBrNn2RNmN3xX
         80e+G1K6YrIP1YMgcJMTXlIVV0eReHh19WPe+Px5t/P1vfCZbgsMdRDAVz/aluB+NFRd
         HaGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3NvGKWCvX9120+4SFSj7x6CopUI9oxRRZeaZqM3V8Fs=;
        b=vsndLHbqW3VMM75rUHq4rCLHmDkgJHDipOsOyvXw67Fme9TqYA8fLE6UrTKh/YdJyf
         zG9g8cfnAe0mMj9Yohyhk5fDa1ZBgBIFcrkY1b8KXCJI2cthG+sW5Y5GfxnsF+yPyqHl
         V8rZ9OgwVCxIBzAEBpcpzO3VD+TJkrwFUZKkHEyK9uGWtXltzxw0XpSm2L7Gf1jUBT+v
         fVPwgGpdB1y75i99xmGwYL7X8y+6Ik+4c61QzbjdcAyguJ/St9iLQ6Z54Nbho0NBDE2r
         rVnD70d17g4w3qNAznaFOELEK5lJl80UIC+n3MkidcbZlBCJJ2+pz6fC2e67XfCxMyW8
         QwAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="SIcBei/I";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id w11si184909ooc.0.2020.04.27.16.24.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 16:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id g19so29423818otk.5
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 16:24:09 -0700 (PDT)
X-Received: by 2002:aca:4dca:: with SMTP id a193mr939911oib.90.1588029848995;
        Mon, 27 Apr 2020 16:24:08 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id u9sm3613337ote.47.2020.04.27.16.24.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 27 Apr 2020 16:24:08 -0700 (PDT)
Date: Mon, 27 Apr 2020 16:24:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200427232406.GA8226@ubuntu-s3-xlarge-x86>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
 <20200423171807.29713-3-natechancellor@gmail.com>
 <20200426162737.GA9322@alpha.franken.de>
 <20200427020830.GA260@Ryzen-7-3700X.localdomain>
 <alpine.LFD.2.21.2004271712130.851719@eddie.linux-mips.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.2004271712130.851719@eddie.linux-mips.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="SIcBei/I";       spf=pass
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

On Mon, Apr 27, 2020 at 05:22:53PM +0100, Maciej W. Rozycki wrote:
> On Sun, 26 Apr 2020, Nathan Chancellor wrote:
> 
> > > this causes build errors for me when (cross) compiling a big endian target:
> > > 
> > > target is little endian
> > > mips64-linux-gnu-ld: arch/mips/vdso/elf.o: endianness incompatible with that of the selected emulation
> > > mips64-linux-gnu-ld: failed to merge target specific data of file arch/mips/vdso/elf.o
> > 
> > Thanks for the report. I will look into it tomorrow and hopefully have a
> > v4 by then.
> 
>  Can you actually record in the change description what the difference in 
> the relevant link command is, as shown where `V=1' has been used with 
> `make' invocation?

That will be rather unweildy to put in the commit message since
currently, $(CC) + $(KBUILD_CFLAGS) is being used but I can if it is
really desired. Otherwise, I can just put it where I put the changelog.

>  Actually running `diff -bu' on the whole `V=1' build log obtained without 
> and with your proposed change applied and ensuring there are no unwanted 
> changes elsewhere will be a good measure of the correctness of your patch. 
> You may have to prepare to be patient and run with `-j1' to make sure any 
> `make' parallelism does not interfere with the order of commands printed.
> 
>   Maciej
> 

Thanks for the input, I will take a look.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427232406.GA8226%40ubuntu-s3-xlarge-x86.
