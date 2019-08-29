Return-Path: <clang-built-linux+bncBDRZHGH43YJRBNV3T7VQKGQEIIZ7RIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 069A3A1C79
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 16:14:15 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id u3sf2256964edm.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 07:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567088054; cv=pass;
        d=google.com; s=arc-20160816;
        b=aEujpBy0mHGlb9HrbeRLDzunTc53TU1XgIoYdQFVIv7lacsiXtSXcHIcPS4xWy7tpB
         K6KlAiXXt+TIHmu8ohKwBlLQ9UkJsSJDkCo5HTozld7DZTfHK9XOe6aPY73wjHyoPSjc
         +2WAk6flVngsr9r/2ue2DqrYSQL1FKP/lfnaUcdnRKcj77eGx2W2RPrMInBXUBeST68s
         JhqDPbOl8rD/dSOtYtlszVQDX0Dos2HJ6NzgaqUG/I2J3FdShbUVpQAboplaxfZWA+5V
         WnQeH0kmIz0cjrQvhp269YVfWkGY5wXPNs3XMD1X+yE0SIlVVsophedAEmwTgtbI2NWC
         jcsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7X3PVrPt5Cqdmb4U8j1ypuF5wTi5GAd7d5tDECkXDEo=;
        b=k4PGuoB4UUfogsyjfOwuG/+Wu8AuoyDikIlL6D2kiDIXbpmGsGnQvlEUnab4llb7jW
         T/qA0fE7GYFjV9WtPcplkObFQT/ppJSP033gFFWzH7UVU57GosUyGIa/W+8Z39wKFDko
         aPVwsc8TexxSz9Gjw/txM+ll7cQRTDVQCKM1ygG8vFn2PKBztD+G4CD5PKbriBLDmvgt
         r83+P5SeUfQF5btxP7IS85/KOPCDrQy/oq6Vqk16GV/qafal5PJjr4/U/XiRJKpCgI0d
         2x5S1z1A1mZKjkBgDWYZCOiqQNuYqiZ0rWzJcABWwhJFfetC0PTtCe9nGGQSfmyOtnt8
         s7pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KlL2hAot;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7X3PVrPt5Cqdmb4U8j1ypuF5wTi5GAd7d5tDECkXDEo=;
        b=LECL34+KHz9FXoDZkIe4WbALk7y3jkyZuoasfXG8R3fFO96WBw2nLceYQGRFhhR1JE
         3BCWWazmJdJrLWO0IDbUlTC0O+6f0vxqjfYZsM9YDe8csKKp4FpkScxuyNhDqaHqUn6d
         VwPhwoDcvVGtKCX6tY5nf8b5+O3MpcZtmWkOzOM0Uglw5hBqEDbASEt/q64QueMJCRFP
         A6ZkxhqvD7Z8P8mLKgip9clSVcavmk3WWytTrq2NaKFVbyKUD/BvRD9qqIfZU/k2eR9A
         pCjAObpKfFNJQMBad1vtpU94plBlBsZukA+KeZPEQvNZ7902TBCXkIkwWx9q7iSm2vk6
         Gk6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7X3PVrPt5Cqdmb4U8j1ypuF5wTi5GAd7d5tDECkXDEo=;
        b=ZyK0fkpW9IwtwfjOyCAU6Oh4dKlh5hVwKoWwQBr6KjYs4cWU14ztdlqRsEzID50qe2
         W69vbSZAjetX/MJoToWgnvO8UVvlUWz6yXGSSD29XFzojVUEuaNKLbDeMfSryczjE7+e
         FS2BTbBpfmrep9MTJfvkJPWnZ2EgBYatqEQyA0HKnvPyAlhyNpO0Q3weXZC8gi5WUsBv
         Z9e+CKFCz7d+eYlQOM4EzgFDRPMQqxbO4WoF6e8OXkWfTaMVwwEDp9HO9+g6eB7Xju+O
         Z0i0PPU0rniSEDx0A2CTtjKGMKCSriw68PnNS+QMQTbrLGuPx5gg8RbGzEurYyhkWBc1
         2MVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7X3PVrPt5Cqdmb4U8j1ypuF5wTi5GAd7d5tDECkXDEo=;
        b=eFI0p82GZZ6M9mjFCX0NEJbcGldHFbKrkTKGTPhTmKgygA06E6vdSv1uoKXjoQNUOI
         qAAf0rDhueKydrNr5uuojREuCBF4jxmJeeHuommIorA/jhM2zefd0Z16FaT9DvDjv1vz
         FtSLOR2sa8va1SNUlPxK4ACIvH7fPkDYEPrsTXzZj44xY3Hltgx0hsP41UZ6HiZSu8uj
         pOohm+Bzw7Dk92BXBf2V+jqYtNqxAennCBx/mmH4rx1bCwaDxuz9srASqf1pf/xqlDnm
         TNyseELFM0zgAlyiSCWc5fgZ/vbJ/XJYzzp0T7EcW0KrrQl1Djmu5p0dTS6Ouut6h4E0
         pSBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWYftTGKetdnnhT724KoXOrq5vOw+B2r91ogNfX1pvuzdhyEml7
	BaYm8s0XvmV/Py0T6oZAGl4=
X-Google-Smtp-Source: APXvYqwphQqax/mn4ALK7t8Z6tF0PvYMAYy6Cbn5LYOnnQDLobMeVLMoIzNQLnX+VuJfipcnPFQgfQ==
X-Received: by 2002:a17:906:4b13:: with SMTP id y19mr8421096eju.145.1567088054647;
        Thu, 29 Aug 2019 07:14:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:9616:: with SMTP id s22ls819803ejx.7.gmail; Thu, 29
 Aug 2019 07:14:14 -0700 (PDT)
X-Received: by 2002:a17:906:fc06:: with SMTP id ov6mr8305918ejb.226.1567088054054;
        Thu, 29 Aug 2019 07:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567088054; cv=none;
        d=google.com; s=arc-20160816;
        b=cFtf8+B4CnqvjhjlDegptaw4cM81yrQ4Ajj7mViMb7ky9SXl6waDX06oaK7xiY7Fcg
         ZXOp82aX8QqauEbGRUqXPuEBZwwbeJB5/9aG7UI4Qf7ukQFgFKfUhFucaYlE1fwgiRiv
         271HYf7N+0AURTyB1AEW0uCmFpgIOd2/X+Hu2U8n+Q/IPR6CyvQnMZsDeSrXWLcvbzDE
         kopuEcH1f/gA+xpgQ9cMTxRERQ6152yyvALKu9BmokO4+IlOmupQSrwCr8MEJg/ubPVM
         yn0vlFe6aUT/bRuiabt6ATt/OBM3UD9SEcgyesmq/nQDQ97Hiz98PpwTjxEKfZBSCbUD
         FrHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZZPXqqYLvYN4nDDMAMbMyVJNvSWypAmknhRGtnG9An0=;
        b=bVA/FAAeGep9DtmkQvOvF2OJI0TSOpzEqcYzp8QZ4yr7PhkjbmzplpTZ8jrflGXGvM
         THe+YQ50mDIfHGXllw1ABAyojd67yeKbG2ReiIpuEQcFg+WRhE4w7a27jCN1t+l6tN3C
         AHWScist4wEFVcKQyUWE0Z9ak8CZKdsZgU4FDHBqEljitgFhPgiPydApgUQc2L/QuNFt
         cjf63VkrJGA7h8ifWunEu1nAtpSi1zW/emuII4TehtIfyQSJTKwjt97+6VqE8thEIFL9
         0GeC7kogl4p8gSSPe18ZLxeEzSKxeI4DHx5lvVcUia71shxwNpLKLecB5wxFSsOkJdlk
         YlMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KlL2hAot;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m3si180812edq.0.2019.08.29.07.14.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 07:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id l14so3223798lje.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 07:14:14 -0700 (PDT)
X-Received: by 2002:a2e:2b0a:: with SMTP id q10mr5433518lje.203.1567088053585;
 Thu, 29 Aug 2019 07:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com> <20190828225535.49592-11-ndesaulniers@google.com>
In-Reply-To: <20190828225535.49592-11-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 29 Aug 2019 16:14:02 +0200
Message-ID: <CANiq72mQihii6xaP1pBfyDin3wZOOuMdh9PGAKbmuAPovhV7gQ@mail.gmail.com>
Subject: Re: [PATCH v3 10/14] x86: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, naveen.n.rao@linux.vnet.ibm.com, 
	David Miller <davem@davemloft.net>, Paul Burton <paul.burton@mips.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KlL2hAot;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Aug 29, 2019 at 12:56 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> diff --git a/arch/x86/include/asm/iommu_table.h b/arch/x86/include/asm/iommu_table.h
> index 1fb3fd1a83c2..7d190710eb92 100644
> --- a/arch/x86/include/asm/iommu_table.h
> +++ b/arch/x86/include/asm/iommu_table.h
> @@ -50,9 +50,8 @@ struct iommu_table_entry {
>
>  #define __IOMMU_INIT(_detect, _depend, _early_init, _late_init, _finish)\
>         static const struct iommu_table_entry                           \
> -               __iommu_entry_##_detect __used                          \
> -       __attribute__ ((unused, __section__(".iommu_table"),            \
> -                       aligned((sizeof(void *)))))     \
> +               __iommu_entry_##_detect __used __section(.iommu_table)  \
> +               __aligned((sizeof(void *)))                             \
>         = {_detect, _depend, _early_init, _late_init,                   \
>            _finish ? IOMMU_FINISH_IF_DETECTED : 0}
>  /*

I see other patches that reduce unused -> to __unused, but is this
unused -> __used intended?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mQihii6xaP1pBfyDin3wZOOuMdh9PGAKbmuAPovhV7gQ%40mail.gmail.com.
