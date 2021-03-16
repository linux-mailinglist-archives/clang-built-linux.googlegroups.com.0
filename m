Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBZ7UYKBAMGQEZEVGLRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC7933D553
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 15:02:17 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id u126sf6411944pfc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 07:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615903336; cv=pass;
        d=google.com; s=arc-20160816;
        b=chERXiOr+0XH+UztRk5uVq10oByHhv65U4WxQmwAlgzcitEveYHQK92Qnfvu4Z8BF7
         VJBMXtZwd/ZS4zepx6feZ2pNocB4tUNizhR0WjqWCBDRS+LuggE9Z1kmsxd89giUmxHJ
         4obrf2dMAy5AwxTWWhyBgHXS8/EX5RIPiK6exJGqvYYhw8uDamfM+pdlZHH8g39LZYjM
         AZUeIT6imoeRVhCQC+MrJGjZlJTRm8OTqS6af8i6W96f3Gzx/gvPaR0aaodmFxppHZyd
         wZOIP4sUo9F1mfIoOGmhnrI+sa5IXU8o9/79jGruQrNqa2Y9UKPGML3HycGZ6j84r65i
         VBYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xo8xB8FQ8N5S0uYSQKt1APiFnhXAj2xvuW5f83hlPUE=;
        b=oiWJ+ovHuzhTgG9uf27jxlROhGJFvDR3G9XanihbRiEsHjhCeA6pGbYmLGMKAS41GG
         VIEoTfNZnquG/NHj1oTd8yejpn7U6Cd7jKsYkYPppjKfwI0ZvDB8W9kqBPX5BfCUMk+m
         AwQ0Tgr+xsQ6RqCSSw4anQIOy7hFPtgcQvBaiGDCSf5RJUJy8bjLJegMD41icWpaUiLB
         l5EWVGhcS1O9dGV8SV6HyCGVLMf7d22P6hyh+5xgCbRv4RuVt2yzRcTqhsOyqRcZJL+f
         aLN12o/sXC6d2pA3qf3Pt1zTwAhDa2iVs+OSAMV8dJLZ2cj0yB+Ka12higcSXhOhgEX7
         3iAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oFwZBmek;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xo8xB8FQ8N5S0uYSQKt1APiFnhXAj2xvuW5f83hlPUE=;
        b=Njo3SqjelAsmbSq2B5/RxGgdaM7bdSYAzxoaVm7xhEXMUm3RovPtdHoywCt6WMXDIA
         zOs/BdLZ2ylKMED3b0CG73TbW1uvOXEcnC/MHcBFTnIJIZd3myg2Z9bbQvwRUZV3J0yR
         C66adGnJA360ALcpshn2tG+Rayv7W6Eob02L4lOEKPj99Isz1dBSMOqV0OrDK1YPlYqO
         hQLIDVMRlI3lIFPIB56EwyQ0qWm3kRdT2Q+53i7R/RwHmqUTaXEjun8tn2MwwROxBHYp
         kfLqoef4Bhu2i+e6v4IlIrJ88TreBA2v3SEYLXoaTGbCx8c53h0Ur86azDmoikyi5Lx5
         gSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xo8xB8FQ8N5S0uYSQKt1APiFnhXAj2xvuW5f83hlPUE=;
        b=SFvDPShaoKbY+D02iZ373/Uq9qiSVIAzoFJTgPHwbjW3Ct791iEoLv2pRnbslWlJV4
         87oeSwGxS7GP1etoLYYmOJ/VF/C3AxuMAMHjaO9e/966xTnA+FnI3bjssXtPpZcLcGvk
         YzjoY/+DXvp0COD7uu/7KD++sMALkpkLTcj2ZO90moyYqOfmzBmcvpmQmWyO4N9ciRV4
         sd3TbkvHDn7UYhVozOLZ3R3kUtRd2G8Og5tI0GOFykeOWIDHJWpsouo2f1dS03UoJuOJ
         aJu3SWKbXlojbjIRZVvChivaQRm4HCl+gcSSPyb0QkO1eqQrbT142dSF+Oaio1tEQN/u
         mmRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533c4QM7mme1U5AAmXxZHxhZNMBmoz0OAMoxZqkGIqBQVp3LJk3d
	RD0QxMnv9R1yPaQF4smTE1k=
X-Google-Smtp-Source: ABdhPJz83uOJrgVeGVQuLG6+V17l0Eod/w66fsP8X8CsaF4hDsx5W+6MfX3+hbq88RURDZxXLBqW8w==
X-Received: by 2002:a17:902:a412:b029:e5:d7dd:9e41 with SMTP id p18-20020a170902a412b02900e5d7dd9e41mr16672192plq.78.1615903335871;
        Tue, 16 Mar 2021 07:02:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ce8f:: with SMTP id f15ls10566550plg.5.gmail; Tue,
 16 Mar 2021 07:02:15 -0700 (PDT)
X-Received: by 2002:a17:903:31ca:b029:e6:65f:ca87 with SMTP id v10-20020a17090331cab02900e6065fca87mr16580143ple.85.1615903335274;
        Tue, 16 Mar 2021 07:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615903335; cv=none;
        d=google.com; s=arc-20160816;
        b=sdc8C6BADmJw8+3UQgzrtSLiuR7clE09zdgSp4ENkV/2oDwgnYiyriXUlyZEG1xpiU
         KFXGNrzSE6l9B4LoB9Jo8Gaz3Jcjr9ARjxko5qWcFPqfOloMdqsazh+9GPQbqxnDdQ7J
         RzNq0gkgRdsljKU+0NcsqDbdayRneZMNe1YEz3u/ZqlyfUBBrc73tFXgvglN+sst7eJL
         D6j4stAmOcypUFILIScineDHDHqnh/B09Io1VZAaJHfFkQ1P8DNTfNZaPDJqcOLMhEdL
         IT0GIZNcjmMsqChx1HvxoObjAT+sxNf1L+e+c2fZcvpT7XlHQcAk3Ve9Kqpub1wlPlq9
         8Ciw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aTOnHhGV4MCQt1DhBzjjF8eU08csFv7xFE0HYmr0vtw=;
        b=nV/VtTdtIe8EkgqDx2vtPezlQ9HS/Ria0B6BFGbFmb4RN+S2e0jwsY7qv/VAVi5hXR
         uF1pdA3m8SE01ioKoILZ3mdzVOL00ApxigmfQwvcgtI9j6YW0PZON2oPDAznhGAaF8fA
         fYDjfySzjwVm2niIBwI8vrQVm3+95QjvTWQm7AQRoSj/D9mQKjiJjCNZOV0M7DQbV5PS
         f7UKaJnxJFOQD+DrExEj/b+MG8MvsFcSAVvzvn7s6ke2wh7K6JDA59gvxuK1fYePr6+j
         OdOwVKe6A7tmcLP+fzlvhUPkzAVQjZrT/egm/wgMTVoZZf/RPEMoWrAoct8cMPNZWrcg
         4fFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oFwZBmek;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ft8si7080pjb.0.2021.03.16.07.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 07:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C9FF26506A;
	Tue, 16 Mar 2021 14:02:14 +0000 (UTC)
Date: Tue, 16 Mar 2021 10:02:13 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>, Marc Zyngier <maz@kernel.org>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YFC6ZYvBfI/mFvaV@sashalap>
References: <YEs+iaQzEQYNgXcw@kroah.com>
 <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap>
 <YE8kIbyWKSojC1SV@kroah.com>
 <YE8k/2WTPFGwMpHk@kroah.com>
 <YE8l2qhycaGPYdNn@kroah.com>
 <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
 <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com>
 <CAMj1kXHfQmObPZaVOZu+0M3SKFKNg5vcKmyJMXQ3RTBCqho9WQ@mail.gmail.com>
 <CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUxsO2vDcnQA@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oFwZBmek;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Mar 15, 2021 at 03:58:07PM -0700, Nick Desaulniers wrote:
>On Mon, Mar 15, 2021 at 10:53 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>> You haven't explained why all this effort is justified to begin with.
>>
>> Who cares about being able to build 4.19 or 5.4 mainline with Clang 12
>> and IAS?
>
>Ah, sorry, ChromeOS and Android very much do so.  (Google's production
>kernels as well, though I don't think they have any 32b ARM machines).
>Android is already building 4.19+ with LLVM_IAS=1 for
>ARCH=arm64,x86_64,i686. ChromeOS is doing so for 5.4+ for
>ARCH=arm64,x86_64 as well.  I'm not sure precisely what's going on in
>prodkernel land, but I know they have LLVM_IAS=1 enabled for x86_64.
>So when Greg says this is "for no real users" I disagree.  Maybe no
>one is using LLVM_IAS=1 for ARCH=arm at this moment, but that was the
>point of the backports, to enable more distros to do so.

You can't both stay on a "stable" kernel because it's "stable", but
then expect a flow of new features. The users which you've mentioned
should be migrating to newer kernels instead of attempting to backport
features they care about to stable kernels.

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFC6ZYvBfI/mFvaV%40sashalap.
