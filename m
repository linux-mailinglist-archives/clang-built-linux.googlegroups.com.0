Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL4GQT3QKGQERJSQFXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D0A1F5876
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 17:58:40 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id d190sf2462938qkc.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 08:58:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591804719; cv=pass;
        d=google.com; s=arc-20160816;
        b=G7EVaJK+oDTbkCaBMUs8fPjSSYWNs2mlmj7xfdjFpoxLFOWs0u8M8usOYpxdQaaHeF
         E5MXi5Av8TPcnp99eD1FTco4yvk+131geegCYslAPt3rB4zFaXIuSRltSfUWYKpxhvEl
         89B9knljFjjpe6qvUU6Is+wfiMdYZOUuqecLHJwPVGCmc7PEjblkidRebIl5F+dY//LA
         g8Gg1L8+kb+k3nsL51U9exLNP3d/IRBEuexWuEsc05LOpU5HW3dwzrGbRpnPsxX8CpSI
         HN5/Ih5GYkGqsWWaOypvPagKia9Pgk/hAi6JiZXGaYtjqjv+ig1EOGh7NaPR13tVo7jW
         tZKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=fsXFtwO173m5oPkdJ8o8QL7GidavNBHV+hTx7VZBVOs=;
        b=T66nVacp6ik2jMHOj5SBreVoMMl/SsSLWopM9Xe52S+wJpBen1L263ITV3BExag+fP
         coExgj4LmWoiraXagFsauMnrfQaaccAb/trDaWqKBIJbILtdViS5LbBozKytPUMXD6g2
         Lkt51cIVqQTDhvrRFRPlld5Rdz/rDiPNmyJB5JdGnp+bIp3Hary7aLep9x0ZcN+KzOax
         1aekQJ2M5cEJ1CIc71ukRQwi3yhtNMs6ojc8uQB9iN+teAJwilr8OL8bj0ta7mZvcGcG
         V6B6EojFTJDvdxR4ibbRwDKw0gJLZm1LMTev/4xRxVS6sw9+ibh7mLHIcCKISKyRawjb
         Mszw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GR/SWSFR";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fsXFtwO173m5oPkdJ8o8QL7GidavNBHV+hTx7VZBVOs=;
        b=ls8aeA8ujevZkOZ2ic7Q/yk0+1JzQSK32Nq10fZ/XHy/45hpNVvhL2fKGRcRwuhG/g
         +0Y9A1ESBxJppbK6zZWouTaXdOZ5pQaBgMv/BrqN8yW6mSPHF7TQzeOFEx4ow7wdqJn9
         IrvBmKQZdiD32Wg3jmV6p9anhcpR0oXoHVAkIXdz8FEMneZ2b2N+9YZSKOGGyPF2nuKH
         jyAzRsgrh0WDLL2ALoq5riYci1kH+xbvmm+f+a40hoLw+tgAtVjqi7JETAVGUfVnYmwd
         15sjd4nj1bdIWEUSRGvaJoocpA9LAo4jVcq/Yuq91SBr1yRipuKLs1qFkBF42ZMK6NG0
         0vIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fsXFtwO173m5oPkdJ8o8QL7GidavNBHV+hTx7VZBVOs=;
        b=XZrZ0n41cLszKKHGyHHrvqckFJO6zR9/HLmDVw4lrNDUzp2h7ZihYeMWlgbd0lWGVq
         g9bJxhBQK9Bw7k0NV42KFNVXnugSlDbhcmLCtqur4G+r/hb7+fuxA29b8pngQWCMwTdM
         8rgQhBctiwcZnUQrNxzNoER+mXtVZn2P3Bck1I+X/dpbPc2K1pikj7m1Id7yLpYExnca
         YVrMKD3cm3ChmxHk+Ygrj6UuASWE1WqmO376HLLc5bOvzWuEtd0/Cov4yzccnUaW09Oc
         OUQMy10zzRbASN91wq5lv+Qio6nBZc8VaQxecXQZFGFOaUpJu3c0hU93tUp8IXjjXscC
         1R4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fsXFtwO173m5oPkdJ8o8QL7GidavNBHV+hTx7VZBVOs=;
        b=BOZ1D40cPOWP1Oc931hCw4YW2N/dSU/f2CWwmxiB42EtcGTgvOCj1zo8ljQOEkB3lU
         V4iinVSLqKB6VT90QCLtXAiNkc+JX6+lSujWLrEgaVNeBzHPktvsdTGIE96b771Spfid
         yhn/mnHn9mxQnV8LfzjJ5TXfNtkWuvWcai/YQc9kmszRtNUSolBQjAMW3UfVRpRA3QOn
         x3ChKks1E4eaB93WQP1ip0wiQQAEGJkcDQyOD6bQ8svBIJD3yVY7ULRvgnO4f3MSH6Wb
         wUBVrszZfo++cV4fKzf4RtoX9i9yg46trioisBxjC9s1bSY5omP3oal+m8PJOjJ/bgv1
         LdAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LnCio7YAfQ3i/UGtSMGyf7m1cQDT6+pSCebEEYmaxHIoM1wc+
	5G7WbTHdyb9bpnPCmR5k5tw=
X-Google-Smtp-Source: ABdhPJxa2qsLsFpu9+ykqEIWN13UzRC/osTl43SPLiVddc6xFPNlfDMnuMCywKAJJAyDI/b5EM8KgA==
X-Received: by 2002:a05:6214:5a4:: with SMTP id by4mr3743977qvb.40.1591804719216;
        Wed, 10 Jun 2020 08:58:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1917:: with SMTP id t23ls3323610qtj.0.gmail; Wed, 10 Jun
 2020 08:58:38 -0700 (PDT)
X-Received: by 2002:ac8:748:: with SMTP id k8mr4063490qth.122.1591804718910;
        Wed, 10 Jun 2020 08:58:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591804718; cv=none;
        d=google.com; s=arc-20160816;
        b=vS3vZ90mcGUmhPWqSeGY8y8GfamGF5XbXdVryIx8ze8jzAAnIy2nHPsEh9BQliC5jS
         0duNa4lkRUW2U82aqiPXuWthNOBu+eHzToZznYFOg45x71zXXIeBwAzxIGTuq2mkIpve
         MGoCp7SFjqVQDk6d3hrDJeBuimGVnvWVBE1h/vpzbrSU+4x0KWozH5Ifgng4aw9JO3Gp
         FwYQWrrq3Q99fGTcgAi+e3Bl/B5jYtIj6rZRuCZDB/PZpzoancD9jfkYaMszBO0WgJNV
         Noda2hQo7bH8EiJadrvDcpocyf0x2vxfXC7Z/ZJo2av1fIJLSCBKnsWYzn8JLI7XO+E6
         1/jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0SN+q6mCsu4s+N1LLrzuE4p100GHqHC1FGVfTGwaqXU=;
        b=bNaRCbM6BiJrHEuhLOYtgp/sy2xAsDYY8xh6fmGBwKmGOYcWNqDAGx9OUei9RBnxbE
         SBh/sbWEqe6fnTBZb8HfEtjvL0TesZ0V7YzS0IGUO1lg61ZGszlpeUV4GWpBdyW6l/fw
         fg5ygfYxNhUp7ByotvWeRyYY4lV4z0zaUMuBk52v1nrHMilJy+WrplZ3jaFXtRO0LPnr
         KqyE4oNX4OxWf8tcyL+igt9NLgRdSDrGtRmoqTj6R5nEoUvHFigGLZFl1WXahdbdn4ym
         /OjrlQxc4gRs7CH3WY6Vr0EmzhI1rppptVIogoesMuhYX4MEPqEHPSqQr0qvcVlVZJAH
         3mqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GR/SWSFR";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com. [2607:f8b0:4864:20::331])
        by gmr-mx.google.com with ESMTPS id f23si5797qtm.4.2020.06.10.08.58.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 08:58:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) client-ip=2607:f8b0:4864:20::331;
Received: by mail-ot1-x331.google.com with SMTP id 69so2109364otv.2
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 08:58:38 -0700 (PDT)
X-Received: by 2002:a05:6830:2151:: with SMTP id r17mr2874415otd.254.1591804718359;
        Wed, 10 Jun 2020 08:58:38 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id 126sm30622oii.39.2020.06.10.08.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 08:58:37 -0700 (PDT)
Date: Wed, 10 Jun 2020 08:58:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] .clang-format: update column limit
Message-ID: <20200610155836.GA2360592@ubuntu-n2-xlarge-x86>
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
 <CANiq72m_p2BRXswCGhUZi-Nta2y0uNXDQLRjPUFydB7YGV-6HQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72m_p2BRXswCGhUZi-Nta2y0uNXDQLRjPUFydB7YGV-6HQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="GR/SWSFR";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jun 10, 2020 at 05:55:14PM +0200, Miguel Ojeda wrote:
> Hi Christian,
> 
> On Wed, Jun 10, 2020 at 2:51 PM Christian Brauner
> <christian.brauner@ubuntu.com> wrote:
> >
> > The provided clang-format file wraps at 80 chars. If no one minds, I'd like
> > to adjust this limit to 100 similar to what checkpatch (cf. [1]) uses now.
> 
> Thanks! Picking this up with a few changes to the commit message.
> 
> Cheers,
> Miguel
> 

If it isn't too late:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610155836.GA2360592%40ubuntu-n2-xlarge-x86.
