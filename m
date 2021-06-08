Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDHV72CQMGQELNHHXLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AA339FFE2
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:44:29 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id s3-20020ac246430000b02902f4a79c5c14sf6954660lfo.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623177868; cv=pass;
        d=google.com; s=arc-20160816;
        b=rIVUq5zHGaZSMf7Z0ngt3TWY+0XoPuEopM9ZKw2gm8AK3dGQpeFIh5Aax1TuBhfLjE
         f6pYsGM/Zty8WBQOmbdOcQNPh93s6WO4s6y2bpjhAzA+ZE9QMiu11vxBoon+0VMI6sBk
         EAtAmrR/GYBn7+u5EcQuTjVfKit01w2TuMfhAQvjlnU2q9k7qAQTjgO4w8EqT+sFdmka
         kR5ir4LJLgjneibHLis4TVIRBvfQersuusW1/UJhN3HSTLAAOoaNUG1gzaUJdsogcbDb
         lW7hE2XvK8yU/c5Lnh352fSu0Uu756chkxK6f84Pka/gPnv4OQZHD97107RMsAtt4xzM
         9qdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ACPHv8RIU2FZWbAF+jf6kKpaKbN2eHtfnMGuGHSQbiM=;
        b=ubV8czsbeJu9camXZWAHvV+reO6trUNK6LLrcWYQIC7AtszrQt0gtoSJQw2/xG58fA
         1SK5jfGcBvz8hesa2NvPXMmnbSI7B0q8CBEIXZVxL8RpW5a0l99pufQ+7XFijYRYcn7V
         Oy0P2A1hFPnGkyGiLuOxniYrnQyEdqnntL/lld/hYEywp7qUGq2dFp89fkpcEwK5WdOo
         3yfzolIo2pIygxRjwFtUeWUn03OEpZYIp5J5m4y9Xk3aH6dshrP4iQdH/9MKEwER9Hwa
         P611P5ssQZP0HdLZWhVBpO1dZX0ps/WSsm4maSbQXsv9hGjqTb3L+qiS9ZlkFdI0TW8v
         gxAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mLCpYalD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACPHv8RIU2FZWbAF+jf6kKpaKbN2eHtfnMGuGHSQbiM=;
        b=P9cZsUSgLnis+PD6hR3uPB+sETtzmy2CUI6YfkCqb4x8mseP8G5fPfYacO/BT/XymV
         VoUC+/PzNVAX4vsE8gUi0Erf1sohRzEh3DT9D0vFV8B9arDoNblOBjG/uGD+uLei1K/q
         +d/O+j02HNdlJObYMKA4Wwo+VAQ2U4szBmtUxL0/JKfuYwLorSbd5jUei2rimsYhUCnh
         qIW+CB3XJ0z43APJYzA4j9p/oB5Gn772dEtpPaLzKsoFdqLJgvI5Y7vg/WWOChlkqSDa
         zH23ASWluD5yz82YeCVW40dxeQcBH1hZzLkbwyBVqBgopAkn6S4hhzxiaDXcQbrn7sKV
         HzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACPHv8RIU2FZWbAF+jf6kKpaKbN2eHtfnMGuGHSQbiM=;
        b=ccfgPHDZhz2q5wkvMHgHMDm3gEZS5IUeqyN3SP8F42NI9DvLWB6ZpxcclQwsQHkdqa
         IW3I4O/3THyPCsgGNF9mXdDa/Uliz2dPu1rX5AFE4jqnAFxBSzBjNVd6RQVcRbotCVZ1
         +w2d6xQM+jVeR3GKfso3UKFmXWfmotOaGS5sX/F5kArWfWztZukiQ7QD8deFwXtmPdgk
         gj07IACuhzLD/IaS+S4DFdCVewdOTZpcbRwuUjXQWQrAM5O4J59/useARpC/hVoSmDXK
         W3jsHcfBg1xtvI/xrnI8dGI9O0fBbwmii4UhYDJd1EuJXZzQhV/2vA9G9ftUmsMUT75w
         9G/A==
X-Gm-Message-State: AOAM532MPBuVG6vW+VzZiANZiFuL3OS4pcTDv0wNh7sNu968sK6d+oWj
	K5kki1VQhoPj3BWVPAzC5+g=
X-Google-Smtp-Source: ABdhPJx+UB1qKB0KCCIv6Q2UDUlhR8fawyhPEfvJ1tU/ybzYIgpXJUSh3j1jPpkdsDVbirlPltIQvQ==
X-Received: by 2002:ac2:5936:: with SMTP id v22mr16526048lfi.130.1623177868651;
        Tue, 08 Jun 2021 11:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls1592004lfa.0.gmail; Tue,
 08 Jun 2021 11:44:27 -0700 (PDT)
X-Received: by 2002:a05:6512:3588:: with SMTP id m8mr16872445lfr.309.1623177867672;
        Tue, 08 Jun 2021 11:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623177867; cv=none;
        d=google.com; s=arc-20160816;
        b=lgMcZBiM6K8VqpH6O6Tlr9P5BU8Yeul3MGEJ+f9PB6f+jdJjed9WGCcsKHxjp4g8El
         hYMJRhB2plnESKFhY+DA8R2mLwcSnmzMpCCFNXB5zKJgAGE7fP1Wzy3apeERGlkE3z++
         LL1Lm9LUQ48ZSeLKso6kkzDC1m7ANfQe3g9Nq/v505+jJShjljf3vYeanCL2w7BSpt16
         PFpjQHiikQn4URsa2f4zo1hsyGgslXmNK2JQKZNNC/HTK5pV4mnPVcRg7jJMxzZhm4z3
         tPNIk4f3JNeOvRNRvQoT5J8sbhFeF18Nh+CjrP9TtHhVl2uDzN+SN6fushgEeII+q2D+
         nkFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n/n2yUEViCmlCbkWm7ppXR+v3Z2ScShTqfIirUWpY1w=;
        b=oAXUxi7ywNdnQ3yK19Ew2tBBOzWYMhjvQePZb6CvPy71N1h/nc2lMfbTSf5CAz/cBL
         +kC10qONUxQq5SEXFIyZEM8d3qpmtNqfDWQvSbeCXAfgX5NwWoR8m++hE0wAG6vfrHRW
         gFZXRqmCsHrTGJ5ri2JykXftp7cPfXCPotOUgVOJIdjI/SQfxXpAT1QPjcNrm3fMYwT9
         WwN9Ywd2oumFFDACTiKUCRSSjwAUW2vhBi/jVHQWoOVBIenLYWCjF20xrdR0jjzDl2nX
         mEO+wlDix0A35ffMpcEwIxf3UNT40dGLlnhdVwJShyb3rIJ29q/uC57Ng2Fvt7YyeWVC
         h8LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mLCpYalD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id c6si20043ljf.3.2021.06.08.11.44.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id n12so26692659lft.10
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 11:44:27 -0700 (PDT)
X-Received: by 2002:a05:6512:51c:: with SMTP id o28mr9020454lfb.297.1623177867232;
 Tue, 08 Jun 2021 11:44:27 -0700 (PDT)
MIME-Version: 1.0
References: <1623145017-104752-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1623145017-104752-1-git-send-email-yang.lee@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Jun 2021 11:44:16 -0700
Message-ID: <CAKwvOdkhQrnunYDtGPvyfMcjW-yMihQQZY_8VYLbD3+Y5pHryA@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: xilinx: dpdma: fix kernel-doc
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: hyun.kwon@xilinx.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Vinod Koul <vkoul@kernel.org>, Michal Simek <michal.simek@xilinx.com>, 
	Nathan Chancellor <nathan@kernel.org>, dmaengine@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mLCpYalD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Tue, Jun 8, 2021 at 2:38 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Fix function name in xilinx/xilinx_dpdma.c kernel-doc comment
> to remove a warning found by clang(make W=1 LLVM=1).
>
> drivers/dma/xilinx/xilinx_dpdma.c:935: warning: expecting prototype for
> xilinx_dpdma_chan_no_ostand(). Prototype was for
> xilinx_dpdma_chan_notify_no_ostand() instead.

xilinx_dpdma_chan_notify_no_ostand has static linkage, clang shouldn't
be emitting such a warning for this function.  Which tree was Abaci
run on? Do you have the original report? This warning doesn't look
right to me.

Again, the diff seems fine, but the commit message does not.

>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/dma/xilinx/xilinx_dpdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma/xilinx/xilinx_dpdma.c b/drivers/dma/xilinx/xilinx_dpdma.c
> index 70b29bd..0c8739a 100644
> --- a/drivers/dma/xilinx/xilinx_dpdma.c
> +++ b/drivers/dma/xilinx/xilinx_dpdma.c
> @@ -915,7 +915,7 @@ static u32 xilinx_dpdma_chan_ostand(struct xilinx_dpdma_chan *chan)
>  }
>
>  /**
> - * xilinx_dpdma_chan_no_ostand - Notify no outstanding transaction event
> + * xilinx_dpdma_chan_notify_no_ostand - Notify no outstanding transaction event
>   * @chan: DPDMA channel
>   *
>   * Notify waiters for no outstanding event, so waiters can stop the channel
> --
> 1.8.3.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhQrnunYDtGPvyfMcjW-yMihQQZY_8VYLbD3%2BY5pHryA%40mail.gmail.com.
